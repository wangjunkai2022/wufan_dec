package io.netty.channel.nio;

import io.netty.channel.ChannelException;
import io.netty.channel.EventLoopException;
import io.netty.channel.EventLoopTaskQueueFactory;
import io.netty.channel.SelectStrategy;
import io.netty.channel.SingleThreadEventLoop;
import io.netty.channel.nio.AbstractNioChannel;
import io.netty.util.IntSupplier;
import io.netty.util.concurrent.AbstractScheduledEventExecutor;
import io.netty.util.concurrent.RejectedExecutionHandler;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.ReflectionUtil;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.IOException;
import java.lang.reflect.Field;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.spi.AbstractSelector;
import java.nio.channels.spi.SelectorProvider;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public final class NioEventLoop extends SingleThreadEventLoop {
    private static final long AWAKE = -1;
    private static final int CLEANUP_INTERVAL = 256;
    private static final int MIN_PREMATURE_SELECTOR_RETURNS = 3;
    private static final long NONE = Long.MAX_VALUE;
    private static final int SELECTOR_AUTO_REBUILD_THRESHOLD;
    private int cancelledKeys;
    private volatile int ioRatio;
    private boolean needsToSelectAgain;
    private final AtomicLong nextWakeupNanos;
    private final SelectorProvider provider;
    private final IntSupplier selectNowSupplier;
    private final SelectStrategy selectStrategy;
    private SelectedSelectionKeySet selectedKeys;
    private Selector selector;
    private Selector unwrappedSelector;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(NioEventLoop.class);
    private static final boolean DISABLE_KEY_SET_OPTIMIZATION = SystemPropertyUtil.getBoolean("io.netty.noKeySetOptimization", false);

    static {
        if (SystemPropertyUtil.get("sun.nio.ch.bugLevel") == null) {
            try {
                AccessController.doPrivileged(new PrivilegedAction<Void>() { // from class: io.netty.channel.nio.NioEventLoop.2
                    @Override // java.security.PrivilegedAction
                    public Void run() {
                        System.setProperty("sun.nio.ch.bugLevel", "");
                        return null;
                    }
                });
            } catch (SecurityException e4) {
                logger.debug("Unable to get/set System Property: sun.nio.ch.bugLevel", (Throwable) e4);
            }
        }
        int i2 = SystemPropertyUtil.getInt("io.netty.selectorAutoRebuildThreshold", 512);
        int i4 = i2 >= 3 ? i2 : 0;
        SELECTOR_AUTO_REBUILD_THRESHOLD = i4;
        InternalLogger internalLogger = logger;
        if (internalLogger.isDebugEnabled()) {
            internalLogger.debug("-Dio.netty.noKeySetOptimization: {}", Boolean.valueOf(DISABLE_KEY_SET_OPTIMIZATION));
            internalLogger.debug("-Dio.netty.selectorAutoRebuildThreshold: {}", Integer.valueOf(i4));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NioEventLoop(NioEventLoopGroup nioEventLoopGroup, Executor executor, SelectorProvider selectorProvider, SelectStrategy selectStrategy, RejectedExecutionHandler rejectedExecutionHandler, EventLoopTaskQueueFactory eventLoopTaskQueueFactory) {
        super(nioEventLoopGroup, executor, false, newTaskQueue(eventLoopTaskQueueFactory), newTaskQueue(eventLoopTaskQueueFactory), rejectedExecutionHandler);
        this.selectNowSupplier = new IntSupplier() { // from class: io.netty.channel.nio.NioEventLoop.1
            @Override // io.netty.util.IntSupplier
            public int get() throws Exception {
                return NioEventLoop.this.selectNow();
            }
        };
        this.nextWakeupNanos = new AtomicLong(-1L);
        this.ioRatio = 50;
        this.provider = (SelectorProvider) ObjectUtil.checkNotNull(selectorProvider, "selectorProvider");
        this.selectStrategy = (SelectStrategy) ObjectUtil.checkNotNull(selectStrategy, "selectStrategy");
        SelectorTuple openSelector = openSelector();
        this.selector = openSelector.selector;
        this.unwrappedSelector = openSelector.unwrappedSelector;
    }

    private void closeAll() {
        selectAgain();
        Set<SelectionKey> keys = this.selector.keys();
        ArrayList<AbstractNioChannel> arrayList = new ArrayList(keys.size());
        for (SelectionKey selectionKey : keys) {
            Object attachment = selectionKey.attachment();
            if (attachment instanceof AbstractNioChannel) {
                arrayList.add((AbstractNioChannel) attachment);
            } else {
                selectionKey.cancel();
                invokeChannelUnregistered((NioTask) attachment, selectionKey, null);
            }
        }
        for (AbstractNioChannel abstractNioChannel : arrayList) {
            abstractNioChannel.unsafe().close(abstractNioChannel.unsafe().voidPromise());
        }
    }

    private static void handleLoopException(Throwable th) {
        logger.warn("Unexpected exception in the selector loop.", th);
        try {
            Thread.sleep(1000L);
        } catch (InterruptedException unused) {
        }
    }

    private static void invokeChannelUnregistered(NioTask<SelectableChannel> nioTask, SelectionKey selectionKey, Throwable th) {
        try {
            nioTask.channelUnregistered(selectionKey.channel(), th);
        } catch (Exception e4) {
            logger.warn("Unexpected exception while running NioTask.channelUnregistered()", (Throwable) e4);
        }
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

    private SelectorTuple openSelector() {
        try {
            final AbstractSelector openSelector = this.provider.openSelector();
            if (DISABLE_KEY_SET_OPTIMIZATION) {
                return new SelectorTuple(openSelector);
            }
            Object doPrivileged = AccessController.doPrivileged(new PrivilegedAction<Object>() { // from class: io.netty.channel.nio.NioEventLoop.3
                @Override // java.security.PrivilegedAction
                public Object run() {
                    try {
                        return Class.forName("sun.nio.ch.SelectorImpl", false, PlatformDependent.getSystemClassLoader());
                    } catch (Throwable th) {
                        return th;
                    }
                }
            });
            if (doPrivileged instanceof Class) {
                final Class cls = (Class) doPrivileged;
                if (cls.isAssignableFrom(openSelector.getClass())) {
                    final SelectedSelectionKeySet selectedSelectionKeySet = new SelectedSelectionKeySet();
                    Object doPrivileged2 = AccessController.doPrivileged(new PrivilegedAction<Object>() { // from class: io.netty.channel.nio.NioEventLoop.4
                        @Override // java.security.PrivilegedAction
                        public Object run() {
                            try {
                                Field declaredField = cls.getDeclaredField("selectedKeys");
                                Field declaredField2 = cls.getDeclaredField("publicSelectedKeys");
                                if (PlatformDependent.javaVersion() >= 9 && PlatformDependent.hasUnsafe()) {
                                    long objectFieldOffset = PlatformDependent.objectFieldOffset(declaredField);
                                    long objectFieldOffset2 = PlatformDependent.objectFieldOffset(declaredField2);
                                    if (objectFieldOffset != -1 && objectFieldOffset2 != -1) {
                                        PlatformDependent.putObject(openSelector, objectFieldOffset, selectedSelectionKeySet);
                                        PlatformDependent.putObject(openSelector, objectFieldOffset2, selectedSelectionKeySet);
                                        return null;
                                    }
                                }
                                Throwable trySetAccessible = ReflectionUtil.trySetAccessible(declaredField, true);
                                if (trySetAccessible != null) {
                                    return trySetAccessible;
                                }
                                Throwable trySetAccessible2 = ReflectionUtil.trySetAccessible(declaredField2, true);
                                if (trySetAccessible2 != null) {
                                    return trySetAccessible2;
                                }
                                declaredField.set(openSelector, selectedSelectionKeySet);
                                declaredField2.set(openSelector, selectedSelectionKeySet);
                                return null;
                            } catch (IllegalAccessException e4) {
                                return e4;
                            } catch (NoSuchFieldException e5) {
                                return e5;
                            }
                        }
                    });
                    if (doPrivileged2 instanceof Exception) {
                        this.selectedKeys = null;
                        logger.trace("failed to instrument a special java.util.Set into: {}", openSelector, (Exception) doPrivileged2);
                        return new SelectorTuple(openSelector);
                    }
                    this.selectedKeys = selectedSelectionKeySet;
                    logger.trace("instrumented a special java.util.Set into: {}", openSelector);
                    return new SelectorTuple(openSelector, new SelectedSelectionKeySetSelector(openSelector, selectedSelectionKeySet));
                }
            }
            if (doPrivileged instanceof Throwable) {
                logger.trace("failed to instrument a special java.util.Set into: {}", openSelector, (Throwable) doPrivileged);
            }
            return new SelectorTuple(openSelector);
        } catch (IOException e4) {
            throw new ChannelException("failed to open a new selector", e4);
        }
    }

    private void processSelectedKey(SelectionKey selectionKey, AbstractNioChannel abstractNioChannel) {
        AbstractNioChannel.NioUnsafe unsafe = abstractNioChannel.unsafe();
        if (!selectionKey.isValid()) {
            try {
                if (abstractNioChannel.eventLoop() == this) {
                    unsafe.close(unsafe.voidPromise());
                    return;
                }
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        try {
            int readyOps = selectionKey.readyOps();
            if ((readyOps & 8) != 0) {
                selectionKey.interestOps(selectionKey.interestOps() & (-9));
                unsafe.finishConnect();
            }
            if ((readyOps & 4) != 0) {
                abstractNioChannel.unsafe().forceFlush();
            }
            if ((readyOps & 17) != 0 || readyOps == 0) {
                unsafe.read();
            }
        } catch (CancelledKeyException unused2) {
            unsafe.close(unsafe.voidPromise());
        }
    }

    private void processSelectedKeys() {
        if (this.selectedKeys != null) {
            processSelectedKeysOptimized();
        } else {
            processSelectedKeysPlain(this.selector.selectedKeys());
        }
    }

    private void processSelectedKeysOptimized() {
        int i2 = 0;
        while (true) {
            SelectedSelectionKeySet selectedSelectionKeySet = this.selectedKeys;
            if (i2 >= selectedSelectionKeySet.size) {
                return;
            }
            SelectionKey[] selectionKeyArr = selectedSelectionKeySet.keys;
            SelectionKey selectionKey = selectionKeyArr[i2];
            selectionKeyArr[i2] = null;
            Object attachment = selectionKey.attachment();
            if (attachment instanceof AbstractNioChannel) {
                processSelectedKey(selectionKey, (AbstractNioChannel) attachment);
            } else {
                processSelectedKey(selectionKey, (NioTask) attachment);
            }
            if (this.needsToSelectAgain) {
                this.selectedKeys.reset(i2 + 1);
                selectAgain();
                i2 = -1;
            }
            i2++;
        }
    }

    private void processSelectedKeysPlain(Set<SelectionKey> set) {
        if (set.isEmpty()) {
            return;
        }
        Iterator<SelectionKey> it2 = set.iterator();
        while (true) {
            SelectionKey next = it2.next();
            Object attachment = next.attachment();
            it2.remove();
            if (attachment instanceof AbstractNioChannel) {
                processSelectedKey(next, (AbstractNioChannel) attachment);
            } else {
                processSelectedKey(next, (NioTask) attachment);
            }
            if (!it2.hasNext()) {
                return;
            }
            if (this.needsToSelectAgain) {
                selectAgain();
                Set<SelectionKey> selectedKeys = this.selector.selectedKeys();
                if (selectedKeys.isEmpty()) {
                    return;
                }
                it2 = selectedKeys.iterator();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rebuildSelector0() {
        Selector selector = this.selector;
        if (selector == null) {
            return;
        }
        try {
            SelectorTuple openSelector = openSelector();
            int i2 = 0;
            for (SelectionKey selectionKey : selector.keys()) {
                Object attachment = selectionKey.attachment();
                try {
                    if (selectionKey.isValid() && selectionKey.channel().keyFor(openSelector.unwrappedSelector) == null) {
                        int interestOps = selectionKey.interestOps();
                        selectionKey.cancel();
                        SelectionKey register = selectionKey.channel().register(openSelector.unwrappedSelector, interestOps, attachment);
                        if (attachment instanceof AbstractNioChannel) {
                            ((AbstractNioChannel) attachment).selectionKey = register;
                        }
                        i2++;
                    }
                } catch (Exception e4) {
                    logger.warn("Failed to re-register a Channel to the new Selector.", (Throwable) e4);
                    if (attachment instanceof AbstractNioChannel) {
                        AbstractNioChannel abstractNioChannel = (AbstractNioChannel) attachment;
                        abstractNioChannel.unsafe().close(abstractNioChannel.unsafe().voidPromise());
                    } else {
                        invokeChannelUnregistered((NioTask) attachment, selectionKey, e4);
                    }
                }
            }
            this.selector = openSelector.selector;
            this.unwrappedSelector = openSelector.unwrappedSelector;
            try {
                selector.close();
            } catch (Throwable th) {
                if (logger.isWarnEnabled()) {
                    logger.warn("Failed to close the old Selector.", th);
                }
            }
            InternalLogger internalLogger = logger;
            if (internalLogger.isInfoEnabled()) {
                internalLogger.info("Migrated " + i2 + " channel(s) to the new Selector.");
            }
        } catch (Exception e5) {
            logger.warn("Failed to create a new Selector.", (Throwable) e5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void register0(SelectableChannel selectableChannel, int i2, NioTask<?> nioTask) {
        try {
            selectableChannel.register(this.unwrappedSelector, i2, nioTask);
        } catch (Exception e4) {
            throw new EventLoopException("failed to register a channel", e4);
        }
    }

    private int select(long j4) throws IOException {
        if (j4 == Long.MAX_VALUE) {
            return this.selector.select();
        }
        long deadlineToDelayNanos = AbstractScheduledEventExecutor.deadlineToDelayNanos(j4 + 995000) / 1000000;
        return deadlineToDelayNanos <= 0 ? this.selector.selectNow() : this.selector.select(deadlineToDelayNanos);
    }

    private void selectAgain() {
        this.needsToSelectAgain = false;
        try {
            this.selector.selectNow();
        } catch (Throwable th) {
            logger.warn("Failed to update SelectionKeys.", th);
        }
    }

    private boolean unexpectedSelectorWakeup(int i2) {
        if (Thread.interrupted()) {
            InternalLogger internalLogger = logger;
            if (internalLogger.isDebugEnabled()) {
                internalLogger.debug("Selector.select() returned prematurely because Thread.currentThread().interrupt() was called. Use NioEventLoop.shutdownGracefully() to shutdown the NioEventLoop.");
            }
            return true;
        }
        int i4 = SELECTOR_AUTO_REBUILD_THRESHOLD;
        if (i4 <= 0 || i2 < i4) {
            return false;
        }
        logger.warn("Selector.select() returned prematurely {} times in a row; rebuilding Selector {}.", Integer.valueOf(i2), this.selector);
        rebuildSelector();
        return true;
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
    public void cancel(SelectionKey selectionKey) {
        selectionKey.cancel();
        int i2 = this.cancelledKeys + 1;
        this.cancelledKeys = i2;
        if (i2 >= 256) {
            this.cancelledKeys = 0;
            this.needsToSelectAgain = true;
        }
    }

    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    protected void cleanup() {
        try {
            this.selector.close();
        } catch (IOException e4) {
            logger.warn("Failed to close a selector.", (Throwable) e4);
        }
    }

    public int getIoRatio() {
        return this.ioRatio;
    }

    public void rebuildSelector() {
        if (!inEventLoop()) {
            execute(new Runnable() { // from class: io.netty.channel.nio.NioEventLoop.6
                @Override // java.lang.Runnable
                public void run() {
                    NioEventLoop.this.rebuildSelector0();
                }
            });
        } else {
            rebuildSelector0();
        }
    }

    public void register(final SelectableChannel selectableChannel, final int i2, final NioTask<?> nioTask) {
        ObjectUtil.checkNotNull(selectableChannel, "ch");
        if (i2 != 0) {
            if (((selectableChannel.validOps() ^ (-1)) & i2) == 0) {
                ObjectUtil.checkNotNull(nioTask, "task");
                if (!isShutdown()) {
                    if (inEventLoop()) {
                        register0(selectableChannel, i2, nioTask);
                        return;
                    }
                    try {
                        submit(new Runnable() { // from class: io.netty.channel.nio.NioEventLoop.5
                            @Override // java.lang.Runnable
                            public void run() {
                                NioEventLoop.this.register0(selectableChannel, i2, nioTask);
                            }
                        }).sync();
                        return;
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                }
                throw new IllegalStateException("event loop shut down");
            }
            throw new IllegalArgumentException("invalid interestOps: " + i2 + "(validOps: " + selectableChannel.validOps() + ')');
        }
        throw new IllegalArgumentException("interestOps must be non-zero.");
    }

    @Override // io.netty.channel.SingleThreadEventLoop
    public int registeredChannels() {
        return this.selector.keys().size() - this.cancelledKeys;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(19:(2:3|4)|(1:79)(2:6|(2:78|37)(3:8|9|(14:11|12|13|14|(2:(2:47|48)|17)(1:(4:54|55|56|57)(1:62))|(7:21|(2:23|24)|25|26|28|(3:30|31|(2:33|34)(1:36))(1:38)|37)|42|(2:44|(1:46))|24|25|26|28|(0)(0)|37)))|67|68|(1:70)|71|12|13|14|(0)(0)|(7:21|(0)|25|26|28|(0)(0)|37)|42|(0)|24|25|26|28|(0)(0)|37) */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0100, code lost:
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0101, code lost:
        handleLoopException(r2);
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0097 A[Catch: all -> 0x00b5, CancelledKeyException -> 0x00b7, TryCatch #8 {CancelledKeyException -> 0x00b7, all -> 0x00b5, blocks: (B:4:0x0002, B:20:0x003d, B:29:0x0052, B:41:0x008d, B:46:0x0097, B:48:0x009f, B:27:0x004e, B:28:0x0051, B:31:0x0059, B:33:0x0060, B:35:0x0072, B:36:0x0081, B:37:0x0082, B:11:0x0018, B:14:0x0027, B:18:0x0036, B:51:0x00af, B:52:0x00b4, B:58:0x00ba), top: B:78:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x00f6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0002 A[SYNTHETIC] */
    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void run() {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.channel.nio.NioEventLoop.run():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int selectNow() throws IOException {
        return this.selector.selectNow();
    }

    public SelectorProvider selectorProvider() {
        return this.provider;
    }

    public void setIoRatio(int i2) {
        if (i2 > 0 && i2 <= 100) {
            this.ioRatio = i2;
            return;
        }
        throw new IllegalArgumentException("ioRatio: " + i2 + " (expected: 0 < ioRatio <= 100)");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Selector unwrappedSelector() {
        return this.unwrappedSelector;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    public void wakeup(boolean z3) {
        if (z3 || this.nextWakeupNanos.getAndSet(-1L) == -1) {
            return;
        }
        this.selector.wakeup();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class SelectorTuple {
        final Selector selector;
        final Selector unwrappedSelector;

        SelectorTuple(Selector selector) {
            this.unwrappedSelector = selector;
            this.selector = selector;
        }

        SelectorTuple(Selector selector, Selector selector2) {
            this.unwrappedSelector = selector;
            this.selector = selector2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    public Queue<Runnable> newTaskQueue(int i2) {
        return newTaskQueue0(i2);
    }

    private static void processSelectedKey(SelectionKey selectionKey, NioTask<SelectableChannel> nioTask) {
        try {
            try {
                nioTask.channelReady(selectionKey.channel(), selectionKey);
                if (selectionKey.isValid()) {
                    return;
                }
                invokeChannelUnregistered(nioTask, selectionKey, null);
            } catch (Exception e4) {
                selectionKey.cancel();
                invokeChannelUnregistered(nioTask, selectionKey, e4);
            }
        } catch (Throwable th) {
            selectionKey.cancel();
            invokeChannelUnregistered(nioTask, selectionKey, null);
            throw th;
        }
    }
}
