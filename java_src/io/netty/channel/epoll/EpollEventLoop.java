package io.netty.channel.epoll;

import com.squareup.wire.internal.k;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.EventLoopTaskQueueFactory;
import io.netty.channel.SelectStrategy;
import io.netty.channel.SingleThreadEventLoop;
import io.netty.channel.epoll.AbstractEpollChannel;
import io.netty.channel.unix.FileDescriptor;
import io.netty.channel.unix.IovArray;
import io.netty.util.IntSupplier;
import io.netty.util.collection.IntObjectHashMap;
import io.netty.util.collection.IntObjectMap;
import io.netty.util.concurrent.AbstractScheduledEventExecutor;
import io.netty.util.concurrent.RejectedExecutionHandler;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.IOException;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
class EpollEventLoop extends SingleThreadEventLoop {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final long AWAKE = -1;
    private static final long MAX_SCHEDULED_TIMERFD_NS = 999999999;
    private static final long NONE = Long.MAX_VALUE;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(EpollEventLoop.class);
    private final boolean allowGrowing;
    private final IntObjectMap<AbstractEpollChannel> channels;
    private NativeDatagramPacketArray datagramPacketArray;
    private final FileDescriptor epollFd;
    private final FileDescriptor eventFd;
    private final EpollEventArray events;
    private volatile int ioRatio;
    private IovArray iovArray;
    private final AtomicLong nextWakeupNanos;
    private boolean pendingWakeup;
    private final IntSupplier selectNowSupplier;
    private final SelectStrategy selectStrategy;
    private final FileDescriptor timerFd;

    static {
        Epoll.ensureAvailability();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public EpollEventLoop(EventLoopGroup eventLoopGroup, Executor executor, int i2, SelectStrategy selectStrategy, RejectedExecutionHandler rejectedExecutionHandler, EventLoopTaskQueueFactory eventLoopTaskQueueFactory) {
        super(eventLoopGroup, executor, false, newTaskQueue(eventLoopTaskQueueFactory), newTaskQueue(eventLoopTaskQueueFactory), rejectedExecutionHandler);
        FileDescriptor fileDescriptor;
        FileDescriptor fileDescriptor2;
        this.channels = new IntObjectHashMap(4096);
        this.selectNowSupplier = new IntSupplier() { // from class: io.netty.channel.epoll.EpollEventLoop.1
            @Override // io.netty.util.IntSupplier
            public int get() throws Exception {
                return EpollEventLoop.this.epollWaitNow();
            }
        };
        this.nextWakeupNanos = new AtomicLong(-1L);
        this.ioRatio = 50;
        this.selectStrategy = (SelectStrategy) ObjectUtil.checkNotNull(selectStrategy, "strategy");
        if (i2 == 0) {
            this.allowGrowing = true;
            this.events = new EpollEventArray(4096);
        } else {
            this.allowGrowing = false;
            this.events = new EpollEventArray(i2);
        }
        FileDescriptor fileDescriptor3 = null;
        try {
            FileDescriptor newEpollCreate = Native.newEpollCreate();
            try {
                this.epollFd = newEpollCreate;
                fileDescriptor2 = Native.newEventFd();
                try {
                    this.eventFd = fileDescriptor2;
                    try {
                        int intValue = newEpollCreate.intValue();
                        int intValue2 = fileDescriptor2.intValue();
                        int i4 = Native.EPOLLIN;
                        int i5 = Native.EPOLLET;
                        Native.epollCtlAdd(intValue, intValue2, i4 | i5);
                        fileDescriptor3 = Native.newTimerFd();
                        this.timerFd = fileDescriptor3;
                        try {
                            Native.epollCtlAdd(newEpollCreate.intValue(), fileDescriptor3.intValue(), i4 | i5);
                        } catch (IOException e4) {
                            throw new IllegalStateException("Unable to add timerFd filedescriptor to epoll", e4);
                        }
                    } catch (IOException e5) {
                        throw new IllegalStateException("Unable to add eventFd filedescriptor to epoll", e5);
                    }
                } catch (Throwable th) {
                    th = th;
                    fileDescriptor = fileDescriptor3;
                    fileDescriptor3 = newEpollCreate;
                    if (fileDescriptor3 != null) {
                        try {
                            fileDescriptor3.close();
                        } catch (Exception unused) {
                        }
                    }
                    if (fileDescriptor2 != null) {
                        try {
                            fileDescriptor2.close();
                        } catch (Exception unused2) {
                        }
                    }
                    if (fileDescriptor != null) {
                        try {
                            fileDescriptor.close();
                        } catch (Exception unused3) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                fileDescriptor2 = null;
                fileDescriptor3 = newEpollCreate;
                fileDescriptor = null;
            }
        } catch (Throwable th3) {
            th = th3;
            fileDescriptor = null;
            fileDescriptor2 = null;
        }
    }

    private void closeAll() {
        AbstractEpollChannel[] abstractEpollChannelArr;
        for (AbstractEpollChannel abstractEpollChannel : (AbstractEpollChannel[]) this.channels.values().toArray(new AbstractEpollChannel[0])) {
            abstractEpollChannel.unsafe().close(abstractEpollChannel.unsafe().voidPromise());
        }
    }

    private int epollBusyWait() throws IOException {
        return Native.epollBusyWait(this.epollFd, this.events);
    }

    private int epollWait(long j4) throws IOException {
        if (j4 == Long.MAX_VALUE) {
            return Native.epollWait(this.epollFd, this.events, this.timerFd, Integer.MAX_VALUE, 0);
        }
        long deadlineToDelayNanos = AbstractScheduledEventExecutor.deadlineToDelayNanos(j4);
        int min = (int) Math.min(deadlineToDelayNanos / k.f56834a, 2147483647L);
        return Native.epollWait(this.epollFd, this.events, this.timerFd, min, (int) Math.min(deadlineToDelayNanos - (min * k.f56834a), (long) MAX_SCHEDULED_TIMERFD_NS));
    }

    private int epollWaitNoTimerChange() throws IOException {
        return Native.epollWait(this.epollFd, this.events, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int epollWaitNow() throws IOException {
        return Native.epollWait(this.epollFd, this.events, true);
    }

    private int epollWaitTimeboxed() throws IOException {
        return Native.epollWait(this.epollFd, this.events, 1000);
    }

    private static Queue<Runnable> newTaskQueue(EventLoopTaskQueueFactory eventLoopTaskQueueFactory) {
        if (eventLoopTaskQueueFactory == null) {
            return newTaskQueue0(SingleThreadEventLoop.DEFAULT_MAX_PENDING_TASKS);
        }
        return eventLoopTaskQueueFactory.newTaskQueue(SingleThreadEventLoop.DEFAULT_MAX_PENDING_TASKS);
    }

    private static Queue<Runnable> newTaskQueue0(int i2) {
        if (i2 == Integer.MAX_VALUE) {
            return PlatformDependent.newMpscQueue();
        }
        return PlatformDependent.newMpscQueue(i2);
    }

    private boolean processReady(EpollEventArray epollEventArray, int i2) {
        boolean z3 = false;
        for (int i4 = 0; i4 < i2; i4++) {
            int fd = epollEventArray.fd(i4);
            if (fd == this.eventFd.intValue()) {
                this.pendingWakeup = false;
            } else if (fd == this.timerFd.intValue()) {
                z3 = true;
            } else {
                long events = epollEventArray.events(i4);
                AbstractEpollChannel abstractEpollChannel = this.channels.get(fd);
                if (abstractEpollChannel != null) {
                    AbstractEpollChannel.AbstractEpollUnsafe abstractEpollUnsafe = (AbstractEpollChannel.AbstractEpollUnsafe) abstractEpollChannel.unsafe();
                    int i5 = Native.EPOLLERR;
                    if (((Native.EPOLLOUT | i5) & events) != 0) {
                        abstractEpollUnsafe.epollOutReady();
                    }
                    if (((i5 | Native.EPOLLIN) & events) != 0) {
                        abstractEpollUnsafe.epollInReady();
                    }
                    if ((events & Native.EPOLLRDHUP) != 0) {
                        abstractEpollUnsafe.epollRdHupReady();
                    }
                } else {
                    try {
                        Native.epollCtlDel(this.epollFd.intValue(), fd);
                    } catch (IOException unused) {
                    }
                }
            }
        }
        return z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void add(AbstractEpollChannel abstractEpollChannel) throws IOException {
        int intValue = abstractEpollChannel.socket.intValue();
        Native.epollCtlAdd(this.epollFd.intValue(), intValue, abstractEpollChannel.flags);
        this.channels.put(intValue, (int) abstractEpollChannel);
    }

    @Override // io.netty.util.concurrent.AbstractScheduledEventExecutor
    protected boolean afterScheduledTaskSubmitted(long j4) {
        return j4 < this.nextWakeupNanos.get();
    }

    @Override // io.netty.util.concurrent.AbstractScheduledEventExecutor
    protected boolean beforeScheduledTaskSubmitted(long j4) {
        return j4 < this.nextWakeupNanos.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeDatagramPacketArray cleanDatagramPacketArray() {
        NativeDatagramPacketArray nativeDatagramPacketArray = this.datagramPacketArray;
        if (nativeDatagramPacketArray == null) {
            this.datagramPacketArray = new NativeDatagramPacketArray();
        } else {
            nativeDatagramPacketArray.clear();
        }
        return this.datagramPacketArray;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IovArray cleanIovArray() {
        IovArray iovArray = this.iovArray;
        if (iovArray == null) {
            this.iovArray = new IovArray();
        } else {
            iovArray.clear();
        }
        return this.iovArray;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [io.netty.channel.epoll.NativeDatagramPacketArray, io.netty.channel.unix.IovArray] */
    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    protected void cleanup() {
        int epollWaitTimeboxed;
        while (true) {
            try {
                if (this.pendingWakeup) {
                    try {
                        epollWaitTimeboxed = epollWaitTimeboxed();
                    } catch (IOException unused) {
                    }
                    if (epollWaitTimeboxed == 0) {
                        break;
                    }
                    int i2 = 0;
                    while (true) {
                        if (i2 >= epollWaitTimeboxed) {
                            break;
                        } else if (this.events.fd(i2) == this.eventFd.intValue()) {
                            this.pendingWakeup = false;
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
            } finally {
                IovArray iovArray = this.iovArray;
                if (iovArray != null) {
                    iovArray.release();
                    this.iovArray = null;
                }
                NativeDatagramPacketArray nativeDatagramPacketArray = this.datagramPacketArray;
                if (nativeDatagramPacketArray != null) {
                    nativeDatagramPacketArray.release();
                    this.datagramPacketArray = null;
                }
                this.events.free();
            }
        }
        try {
            this.eventFd.close();
        } catch (IOException e4) {
            logger.warn("Failed to close the event fd.", (Throwable) e4);
        }
        try {
            this.timerFd.close();
        } catch (IOException e5) {
            logger.warn("Failed to close the timer fd.", (Throwable) e5);
        }
        try {
            this.epollFd.close();
        } catch (IOException e6) {
            logger.warn("Failed to close the epoll fd.", (Throwable) e6);
        }
    }

    public int getIoRatio() {
        return this.ioRatio;
    }

    void handleLoopException(Throwable th) {
        logger.warn("Unexpected exception in the selector loop.", th);
        try {
            Thread.sleep(1000L);
        } catch (InterruptedException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void modify(AbstractEpollChannel abstractEpollChannel) throws IOException {
        Native.epollCtlMod(this.epollFd.intValue(), abstractEpollChannel.socket.intValue(), abstractEpollChannel.flags);
    }

    @Override // io.netty.channel.SingleThreadEventLoop
    public int registeredChannels() {
        return this.channels.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void remove(AbstractEpollChannel abstractEpollChannel) throws IOException {
        int intValue = abstractEpollChannel.socket.intValue();
        AbstractEpollChannel remove = this.channels.remove(intValue);
        if (remove != null && remove != abstractEpollChannel) {
            this.channels.put(intValue, (int) remove);
        } else if (abstractEpollChannel.isOpen()) {
            Native.epollCtlDel(this.epollFd.intValue(), intValue);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:2|3|(2:5|(2:88|36)(3:7|8|(11:48|(2:50|(1:52)(2:53|(1:55)))|56|(1:58)|59|60|61|62|(2:64|(1:66)(3:67|68|69))|81|(1:85))(1:10)))(2:89|90)|11|12|(2:(1:17)|18)(1:(4:42|43|(1:45)|46)(1:47))|19|(1:23)|24|25|27|(3:29|30|(2:32|33)(1:35))(1:37)|36) */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x010d, code lost:
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x010e, code lost:
        handleLoopException(r4);
     */
    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void run() {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.channel.epoll.EpollEventLoop.run():void");
    }

    public void setIoRatio(int i2) {
        if (i2 > 0 && i2 <= 100) {
            this.ioRatio = i2;
            return;
        }
        throw new IllegalArgumentException("ioRatio: " + i2 + " (expected: 0 < ioRatio <= 100)");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    public void wakeup(boolean z3) {
        if (z3 || this.nextWakeupNanos.getAndSet(-1L) == -1) {
            return;
        }
        Native.eventFdWrite(this.eventFd.intValue(), 1L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    public Queue<Runnable> newTaskQueue(int i2) {
        return newTaskQueue0(i2);
    }
}
