package io.netty.channel;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufHolder;
import io.netty.buffer.Unpooled;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.concurrent.FastThreadLocal;
import io.netty.util.internal.InternalThreadLocalMap;
import io.netty.util.internal.ObjectPool;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PromiseNotificationUtil;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
/* loaded from: classes5.dex */
public final class ChannelOutboundBuffer {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final Channel channel;
    private volatile Runnable fireChannelWritabilityChangedTask;
    private int flushed;
    private Entry flushedEntry;
    private boolean inFail;
    private int nioBufferCount;
    private long nioBufferSize;
    private Entry tailEntry;
    private volatile long totalPendingSize;
    private Entry unflushedEntry;
    private volatile int unwritable;
    static final int CHANNEL_OUTBOUND_BUFFER_ENTRY_OVERHEAD = SystemPropertyUtil.getInt("io.netty.transport.outboundBufferEntrySizeOverhead", 96);
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(ChannelOutboundBuffer.class);
    private static final FastThreadLocal<ByteBuffer[]> NIO_BUFFERS = new FastThreadLocal<ByteBuffer[]>() { // from class: io.netty.channel.ChannelOutboundBuffer.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.netty.util.concurrent.FastThreadLocal
        public ByteBuffer[] initialValue() throws Exception {
            return new ByteBuffer[1024];
        }
    };
    private static final AtomicLongFieldUpdater<ChannelOutboundBuffer> TOTAL_PENDING_SIZE_UPDATER = AtomicLongFieldUpdater.newUpdater(ChannelOutboundBuffer.class, "totalPendingSize");
    private static final AtomicIntegerFieldUpdater<ChannelOutboundBuffer> UNWRITABLE_UPDATER = AtomicIntegerFieldUpdater.newUpdater(ChannelOutboundBuffer.class, "unwritable");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class Entry {
        private static final ObjectPool<Entry> RECYCLER = ObjectPool.newPool(new ObjectPool.ObjectCreator<Entry>() { // from class: io.netty.channel.ChannelOutboundBuffer.Entry.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.netty.util.internal.ObjectPool.ObjectCreator
            public Entry newObject(ObjectPool.Handle<Entry> handle) {
                return new Entry(handle);
            }
        });
        ByteBuffer buf;
        ByteBuffer[] bufs;
        boolean cancelled;
        int count;
        private final ObjectPool.Handle<Entry> handle;
        Object msg;
        Entry next;
        int pendingSize;
        long progress;
        ChannelPromise promise;
        long total;

        static Entry newInstance(Object obj, int i2, long j4, ChannelPromise channelPromise) {
            Entry entry = RECYCLER.get();
            entry.msg = obj;
            entry.pendingSize = i2 + ChannelOutboundBuffer.CHANNEL_OUTBOUND_BUFFER_ENTRY_OVERHEAD;
            entry.total = j4;
            entry.promise = channelPromise;
            return entry;
        }

        int cancel() {
            if (this.cancelled) {
                return 0;
            }
            this.cancelled = true;
            int i2 = this.pendingSize;
            ReferenceCountUtil.safeRelease(this.msg);
            this.msg = Unpooled.EMPTY_BUFFER;
            this.pendingSize = 0;
            this.total = 0L;
            this.progress = 0L;
            this.bufs = null;
            this.buf = null;
            return i2;
        }

        void recycle() {
            this.next = null;
            this.bufs = null;
            this.buf = null;
            this.msg = null;
            this.promise = null;
            this.progress = 0L;
            this.total = 0L;
            this.pendingSize = 0;
            this.count = -1;
            this.cancelled = false;
            this.handle.recycle(this);
        }

        Entry recycleAndGetNext() {
            Entry entry = this.next;
            recycle();
            return entry;
        }

        private Entry(ObjectPool.Handle<Entry> handle) {
            this.count = -1;
            this.handle = handle;
        }
    }

    /* loaded from: classes5.dex */
    public interface MessageProcessor {
        boolean processMessage(Object obj) throws Exception;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelOutboundBuffer(AbstractChannel abstractChannel) {
        this.channel = abstractChannel;
    }

    private void clearNioBuffers() {
        int i2 = this.nioBufferCount;
        if (i2 > 0) {
            this.nioBufferCount = 0;
            Arrays.fill(NIO_BUFFERS.get(), 0, i2, (Object) null);
        }
    }

    private void clearUserDefinedWritability(int i2) {
        int i4;
        int i5;
        int writabilityMask = writabilityMask(i2);
        do {
            i4 = this.unwritable;
            i5 = i4 | writabilityMask;
        } while (!UNWRITABLE_UPDATER.compareAndSet(this, i4, i5));
        if (i4 != 0 || i5 == 0) {
            return;
        }
        fireChannelWritabilityChanged(true);
    }

    private static ByteBuffer[] expandNioBufferArray(ByteBuffer[] byteBufferArr, int i2, int i4) {
        int length = byteBufferArr.length;
        do {
            length <<= 1;
            if (length < 0) {
                throw new IllegalStateException();
            }
        } while (i2 > length);
        ByteBuffer[] byteBufferArr2 = new ByteBuffer[length];
        System.arraycopy(byteBufferArr, 0, byteBufferArr2, 0, i4);
        return byteBufferArr2;
    }

    private void fireChannelWritabilityChanged(boolean z3) {
        final ChannelPipeline pipeline = this.channel.pipeline();
        if (z3) {
            Runnable runnable = this.fireChannelWritabilityChangedTask;
            if (runnable == null) {
                runnable = new Runnable() { // from class: io.netty.channel.ChannelOutboundBuffer.2
                    @Override // java.lang.Runnable
                    public void run() {
                        pipeline.fireChannelWritabilityChanged();
                    }
                };
                this.fireChannelWritabilityChangedTask = runnable;
            }
            this.channel.eventLoop().execute(runnable);
            return;
        }
        pipeline.fireChannelWritabilityChanged();
    }

    private boolean isFlushedEntry(Entry entry) {
        return (entry == null || entry == this.unflushedEntry) ? false : true;
    }

    private boolean remove0(Throwable th, boolean z3) {
        Entry entry = this.flushedEntry;
        if (entry == null) {
            clearNioBuffers();
            return false;
        }
        Object obj = entry.msg;
        ChannelPromise channelPromise = entry.promise;
        int i2 = entry.pendingSize;
        removeEntry(entry);
        if (!entry.cancelled) {
            ReferenceCountUtil.safeRelease(obj);
            safeFail(channelPromise, th);
            decrementPendingOutboundBytes(i2, false, z3);
        }
        entry.recycle();
        return true;
    }

    private void removeEntry(Entry entry) {
        int i2 = this.flushed - 1;
        this.flushed = i2;
        if (i2 == 0) {
            this.flushedEntry = null;
            if (entry == this.tailEntry) {
                this.tailEntry = null;
                this.unflushedEntry = null;
                return;
            }
            return;
        }
        this.flushedEntry = entry.next;
    }

    private static void safeFail(ChannelPromise channelPromise, Throwable th) {
        PromiseNotificationUtil.tryFailure(channelPromise, th, channelPromise instanceof VoidChannelPromise ? null : logger);
    }

    private static void safeSuccess(ChannelPromise channelPromise) {
        PromiseNotificationUtil.trySuccess(channelPromise, null, channelPromise instanceof VoidChannelPromise ? null : logger);
    }

    private void setUnwritable(boolean z3) {
        int i2;
        int i4;
        do {
            i2 = this.unwritable;
            i4 = i2 | 1;
        } while (!UNWRITABLE_UPDATER.compareAndSet(this, i2, i4));
        if (i2 != 0 || i4 == 0) {
            return;
        }
        fireChannelWritabilityChanged(z3);
    }

    private void setWritable(boolean z3) {
        int i2;
        int i4;
        do {
            i2 = this.unwritable;
            i4 = i2 & (-2);
        } while (!UNWRITABLE_UPDATER.compareAndSet(this, i2, i4));
        if (i2 == 0 || i4 != 0) {
            return;
        }
        fireChannelWritabilityChanged(z3);
    }

    private static long total(Object obj) {
        if (obj instanceof ByteBuf) {
            return ((ByteBuf) obj).readableBytes();
        }
        if (obj instanceof FileRegion) {
            return ((FileRegion) obj).count();
        }
        if (obj instanceof ByteBufHolder) {
            return ((ByteBufHolder) obj).content().readableBytes();
        }
        return -1L;
    }

    private static int writabilityMask(int i2) {
        if (i2 < 1 || i2 > 31) {
            throw new IllegalArgumentException("index: " + i2 + " (expected: 1~31)");
        }
        return 1 << i2;
    }

    public void addFlush() {
        Entry entry = this.unflushedEntry;
        if (entry != null) {
            if (this.flushedEntry == null) {
                this.flushedEntry = entry;
            }
            do {
                this.flushed++;
                if (!entry.promise.setUncancellable()) {
                    decrementPendingOutboundBytes(entry.cancel(), false, true);
                }
                entry = entry.next;
            } while (entry != null);
            this.unflushedEntry = null;
        }
    }

    public void addMessage(Object obj, int i2, ChannelPromise channelPromise) {
        Entry newInstance = Entry.newInstance(obj, i2, total(obj), channelPromise);
        Entry entry = this.tailEntry;
        if (entry == null) {
            this.flushedEntry = null;
        } else {
            entry.next = newInstance;
        }
        this.tailEntry = newInstance;
        if (this.unflushedEntry == null) {
            this.unflushedEntry = newInstance;
        }
        incrementPendingOutboundBytes(newInstance.pendingSize, false);
    }

    public long bytesBeforeUnwritable() {
        long writeBufferHighWaterMark = this.channel.config().getWriteBufferHighWaterMark() - this.totalPendingSize;
        if (writeBufferHighWaterMark <= 0 || !isWritable()) {
            return 0L;
        }
        return writeBufferHighWaterMark;
    }

    public long bytesBeforeWritable() {
        long writeBufferLowWaterMark = this.totalPendingSize - this.channel.config().getWriteBufferLowWaterMark();
        if (writeBufferLowWaterMark <= 0 || isWritable()) {
            return 0L;
        }
        return writeBufferLowWaterMark;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void close(final Throwable th, final boolean z3) {
        if (this.inFail) {
            this.channel.eventLoop().execute(new Runnable() { // from class: io.netty.channel.ChannelOutboundBuffer.3
                @Override // java.lang.Runnable
                public void run() {
                    ChannelOutboundBuffer.this.close(th, z3);
                }
            });
            return;
        }
        this.inFail = true;
        if (!z3 && this.channel.isOpen()) {
            throw new IllegalStateException("close() must be invoked after the channel is closed.");
        }
        if (isEmpty()) {
            try {
                for (Entry entry = this.unflushedEntry; entry != null; entry = entry.recycleAndGetNext()) {
                    TOTAL_PENDING_SIZE_UPDATER.addAndGet(this, -entry.pendingSize);
                    if (!entry.cancelled) {
                        ReferenceCountUtil.safeRelease(entry.msg);
                        safeFail(entry.promise, th);
                    }
                }
                this.inFail = false;
                clearNioBuffers();
                return;
            } catch (Throwable th2) {
                this.inFail = false;
                throw th2;
            }
        }
        throw new IllegalStateException("close() must be invoked after all flushed writes are handled.");
    }

    public Object current() {
        Entry entry = this.flushedEntry;
        if (entry == null) {
            return null;
        }
        return entry.msg;
    }

    public long currentProgress() {
        Entry entry = this.flushedEntry;
        if (entry == null) {
            return 0L;
        }
        return entry.progress;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void decrementPendingOutboundBytes(long j4) {
        decrementPendingOutboundBytes(j4, true, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void failFlushed(Throwable th, boolean z3) {
        if (this.inFail) {
            return;
        }
        try {
            this.inFail = true;
            do {
            } while (remove0(th, z3));
        } finally {
            this.inFail = false;
        }
    }

    public void forEachFlushedMessage(MessageProcessor messageProcessor) throws Exception {
        ObjectUtil.checkNotNull(messageProcessor, "processor");
        Entry entry = this.flushedEntry;
        if (entry == null) {
            return;
        }
        do {
            if (!entry.cancelled && !messageProcessor.processMessage(entry.msg)) {
                return;
            }
            entry = entry.next;
        } while (isFlushedEntry(entry));
    }

    public boolean getUserDefinedWritability(int i2) {
        return (writabilityMask(i2) & this.unwritable) == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void incrementPendingOutboundBytes(long j4) {
        incrementPendingOutboundBytes(j4, true);
    }

    public boolean isEmpty() {
        return this.flushed == 0;
    }

    public boolean isWritable() {
        return this.unwritable == 0;
    }

    public int nioBufferCount() {
        return this.nioBufferCount;
    }

    public long nioBufferSize() {
        return this.nioBufferSize;
    }

    public ByteBuffer[] nioBuffers() {
        return nioBuffers(Integer.MAX_VALUE, 2147483647L);
    }

    public void progress(long j4) {
        Entry entry = this.flushedEntry;
        ChannelPromise channelPromise = entry.promise;
        long j5 = entry.progress + j4;
        entry.progress = j5;
        if (channelPromise instanceof ChannelProgressivePromise) {
            ((ChannelProgressivePromise) channelPromise).tryProgress(j5, entry.total);
        }
    }

    @Deprecated
    public void recycle() {
    }

    public boolean remove() {
        Entry entry = this.flushedEntry;
        if (entry == null) {
            clearNioBuffers();
            return false;
        }
        Object obj = entry.msg;
        ChannelPromise channelPromise = entry.promise;
        int i2 = entry.pendingSize;
        removeEntry(entry);
        if (!entry.cancelled) {
            ReferenceCountUtil.safeRelease(obj);
            safeSuccess(channelPromise);
            decrementPendingOutboundBytes(i2, false, true);
        }
        entry.recycle();
        return true;
    }

    public void removeBytes(long j4) {
        while (true) {
            Object current = current();
            if (!(current instanceof ByteBuf)) {
                break;
            }
            ByteBuf byteBuf = (ByteBuf) current;
            int readerIndex = byteBuf.readerIndex();
            long writerIndex = byteBuf.writerIndex() - readerIndex;
            if (writerIndex <= j4) {
                if (j4 != 0) {
                    progress(writerIndex);
                    j4 -= writerIndex;
                }
                remove();
            } else if (j4 != 0) {
                byteBuf.readerIndex(readerIndex + ((int) j4));
                progress(j4);
            }
        }
        clearNioBuffers();
    }

    public void setUserDefinedWritability(int i2, boolean z3) {
        if (z3) {
            setUserDefinedWritability(i2);
        } else {
            clearUserDefinedWritability(i2);
        }
    }

    public int size() {
        return this.flushed;
    }

    public long totalPendingWriteBytes() {
        return this.totalPendingSize;
    }

    private void decrementPendingOutboundBytes(long j4, boolean z3, boolean z4) {
        if (j4 == 0) {
            return;
        }
        long addAndGet = TOTAL_PENDING_SIZE_UPDATER.addAndGet(this, -j4);
        if (!z4 || addAndGet >= this.channel.config().getWriteBufferLowWaterMark()) {
            return;
        }
        setWritable(z3);
    }

    private void incrementPendingOutboundBytes(long j4, boolean z3) {
        if (j4 != 0 && TOTAL_PENDING_SIZE_UPDATER.addAndGet(this, j4) > this.channel.config().getWriteBufferHighWaterMark()) {
            setUnwritable(z3);
        }
    }

    public ByteBuffer[] nioBuffers(int i2, long j4) {
        ByteBuf byteBuf;
        int readerIndex;
        int writerIndex;
        long j5 = 0;
        int i4 = 0;
        InternalThreadLocalMap internalThreadLocalMap = InternalThreadLocalMap.get();
        ByteBuffer[] byteBufferArr = NIO_BUFFERS.get(internalThreadLocalMap);
        for (Entry entry = this.flushedEntry; isFlushedEntry(entry); entry = entry.next) {
            Object obj = entry.msg;
            if (!(obj instanceof ByteBuf)) {
                break;
            }
            if (!entry.cancelled && (writerIndex = byteBuf.writerIndex() - (readerIndex = (byteBuf = (ByteBuf) obj).readerIndex())) > 0) {
                long j6 = writerIndex;
                if (j4 - j6 < j5 && i4 != 0) {
                    break;
                }
                j5 += j6;
                int i5 = entry.count;
                if (i5 == -1) {
                    i5 = byteBuf.nioBufferCount();
                    entry.count = i5;
                }
                int min = Math.min(i2, i4 + i5);
                if (min > byteBufferArr.length) {
                    byteBufferArr = expandNioBufferArray(byteBufferArr, min, i4);
                    NIO_BUFFERS.set(internalThreadLocalMap, byteBufferArr);
                }
                if (i5 == 1) {
                    ByteBuffer byteBuffer = entry.buf;
                    if (byteBuffer == null) {
                        byteBuffer = byteBuf.internalNioBuffer(readerIndex, writerIndex);
                        entry.buf = byteBuffer;
                    }
                    byteBufferArr[i4] = byteBuffer;
                    i4++;
                } else {
                    i4 = nioBuffers(entry, byteBuf, byteBufferArr, i4, i2);
                }
                if (i4 == i2) {
                    break;
                }
            }
        }
        this.nioBufferCount = i4;
        this.nioBufferSize = j5;
        return byteBufferArr;
    }

    private void setUserDefinedWritability(int i2) {
        int i4;
        int i5;
        int writabilityMask = writabilityMask(i2) ^ (-1);
        do {
            i4 = this.unwritable;
            i5 = i4 & writabilityMask;
        } while (!UNWRITABLE_UPDATER.compareAndSet(this, i4, i5));
        if (i4 == 0 || i5 != 0) {
            return;
        }
        fireChannelWritabilityChanged(true);
    }

    public boolean remove(Throwable th) {
        return remove0(th, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void close(ClosedChannelException closedChannelException) {
        close(closedChannelException, false);
    }

    private static int nioBuffers(Entry entry, ByteBuf byteBuf, ByteBuffer[] byteBufferArr, int i2, int i4) {
        ByteBuffer byteBuffer;
        ByteBuffer[] byteBufferArr2 = entry.bufs;
        if (byteBufferArr2 == null) {
            byteBufferArr2 = byteBuf.nioBuffers();
            entry.bufs = byteBufferArr2;
        }
        for (int i5 = 0; i5 < byteBufferArr2.length && i2 < i4 && (byteBuffer = byteBufferArr2[i5]) != null; i5++) {
            if (byteBuffer.hasRemaining()) {
                byteBufferArr[i2] = byteBuffer;
                i2++;
            }
        }
        return i2;
    }
}
