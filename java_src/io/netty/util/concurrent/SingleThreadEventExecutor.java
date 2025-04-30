package io.netty.util.concurrent;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import io.netty.util.concurrent.AbstractEventExecutor;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.PriorityQueue;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.ThreadExecutorMap;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes5.dex */
public abstract class SingleThreadEventExecutor extends AbstractScheduledEventExecutor implements b {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int ST_NOT_STARTED = 1;
    private static final int ST_SHUTDOWN = 4;
    private static final int ST_SHUTTING_DOWN = 3;
    private static final int ST_STARTED = 2;
    private static final int ST_TERMINATED = 5;
    private final boolean addTaskWakesUp;
    private final Executor executor;
    private volatile long gracefulShutdownQuietPeriod;
    private long gracefulShutdownStartTime;
    private volatile long gracefulShutdownTimeout;
    private volatile boolean interrupted;
    private long lastExecutionTime;
    private final int maxPendingTasks;
    private final RejectedExecutionHandler rejectedExecutionHandler;
    private final Set<Runnable> shutdownHooks;
    private volatile int state;
    private final Queue<Runnable> taskQueue;
    private final Promise<?> terminationFuture;
    private volatile Thread thread;
    private final CountDownLatch threadLock;
    private volatile ThreadProperties threadProperties;
    static final int DEFAULT_MAX_PENDING_EXECUTOR_TASKS = Math.max(16, SystemPropertyUtil.getInt("io.netty.eventexecutor.maxPendingTasks", Integer.MAX_VALUE));
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(SingleThreadEventExecutor.class);
    private static final Runnable NOOP_TASK = new Runnable() { // from class: io.netty.util.concurrent.SingleThreadEventExecutor.1
        @Override // java.lang.Runnable
        public void run() {
        }
    };
    private static final AtomicIntegerFieldUpdater<SingleThreadEventExecutor> STATE_UPDATER = AtomicIntegerFieldUpdater.newUpdater(SingleThreadEventExecutor.class, NoticeTopAnimActivityDialog_.f34402n);
    private static final AtomicReferenceFieldUpdater<SingleThreadEventExecutor, ThreadProperties> PROPERTIES_UPDATER = AtomicReferenceFieldUpdater.newUpdater(SingleThreadEventExecutor.class, ThreadProperties.class, "threadProperties");
    private static final long SCHEDULE_PURGE_INTERVAL = TimeUnit.SECONDS.toNanos(1);

    /* loaded from: classes5.dex */
    private static final class DefaultThreadProperties implements ThreadProperties {

        /* renamed from: t  reason: collision with root package name */
        private final Thread f65776t;

        DefaultThreadProperties(Thread thread) {
            this.f65776t = thread;
        }

        @Override // io.netty.util.concurrent.ThreadProperties
        public long id() {
            return this.f65776t.getId();
        }

        @Override // io.netty.util.concurrent.ThreadProperties
        public boolean isAlive() {
            return this.f65776t.isAlive();
        }

        @Override // io.netty.util.concurrent.ThreadProperties
        public boolean isDaemon() {
            return this.f65776t.isDaemon();
        }

        @Override // io.netty.util.concurrent.ThreadProperties
        public boolean isInterrupted() {
            return this.f65776t.isInterrupted();
        }

        @Override // io.netty.util.concurrent.ThreadProperties
        public String name() {
            return this.f65776t.getName();
        }

        @Override // io.netty.util.concurrent.ThreadProperties
        public int priority() {
            return this.f65776t.getPriority();
        }

        @Override // io.netty.util.concurrent.ThreadProperties
        public StackTraceElement[] stackTrace() {
            return this.f65776t.getStackTrace();
        }

        @Override // io.netty.util.concurrent.ThreadProperties
        public Thread.State state() {
            return this.f65776t.getState();
        }
    }

    @Deprecated
    /* loaded from: classes5.dex */
    protected interface a extends AbstractEventExecutor.a {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SingleThreadEventExecutor(EventExecutorGroup eventExecutorGroup, ThreadFactory threadFactory, boolean z3) {
        this(eventExecutorGroup, new ThreadPerTaskExecutor(threadFactory), z3);
    }

    static /* synthetic */ Thread access$100(SingleThreadEventExecutor singleThreadEventExecutor) {
        return singleThreadEventExecutor.thread;
    }

    static /* synthetic */ Thread access$102(SingleThreadEventExecutor singleThreadEventExecutor, Thread thread) {
        singleThreadEventExecutor.thread = thread;
        return thread;
    }

    static /* synthetic */ boolean access$200(SingleThreadEventExecutor singleThreadEventExecutor) {
        return singleThreadEventExecutor.interrupted;
    }

    static /* synthetic */ InternalLogger access$300() {
        return logger;
    }

    static /* synthetic */ int access$400(SingleThreadEventExecutor singleThreadEventExecutor) {
        return singleThreadEventExecutor.state;
    }

    static /* synthetic */ AtomicIntegerFieldUpdater access$500() {
        return STATE_UPDATER;
    }

    static /* synthetic */ long access$600(SingleThreadEventExecutor singleThreadEventExecutor) {
        return singleThreadEventExecutor.gracefulShutdownStartTime;
    }

    static /* synthetic */ CountDownLatch access$700(SingleThreadEventExecutor singleThreadEventExecutor) {
        return singleThreadEventExecutor.threadLock;
    }

    static /* synthetic */ Promise access$800(SingleThreadEventExecutor singleThreadEventExecutor) {
        return singleThreadEventExecutor.terminationFuture;
    }

    private void doStartThread() {
        this.executor.execute(new Runnable() { // from class: io.netty.util.concurrent.SingleThreadEventExecutor.4
            /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
                jadx.core.utils.exceptions.JadxRuntimeException: CFG modification limit reached, blocks count: 272
                	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:59)
                	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
                */
            @Override // java.lang.Runnable
            public void run() {
                /*
                    Method dump skipped, instructions count: 1192
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: io.netty.util.concurrent.SingleThreadEventExecutor.AnonymousClass4.run():void");
            }
        });
    }

    private boolean ensureThreadStarted(int i2) {
        if (i2 == 1) {
            try {
                doStartThread();
                return false;
            } catch (Throwable th) {
                STATE_UPDATER.set(this, 5);
                this.terminationFuture.tryFailure(th);
                if (!(th instanceof Exception)) {
                    PlatformDependent.throwException(th);
                }
                return true;
            }
        }
        return false;
    }

    private boolean executeExpiredScheduledTasks() {
        long nanoTime;
        Runnable pollScheduledTask;
        PriorityQueue<ScheduledFutureTask<?>> priorityQueue = this.scheduledTaskQueue;
        if (priorityQueue == null || priorityQueue.isEmpty() || (pollScheduledTask = pollScheduledTask((nanoTime = AbstractScheduledEventExecutor.nanoTime()))) == null) {
            return false;
        }
        do {
            AbstractEventExecutor.safeExecute(pollScheduledTask);
            pollScheduledTask = pollScheduledTask(nanoTime);
        } while (pollScheduledTask != null);
        return true;
    }

    private boolean fetchFromScheduledTaskQueue() {
        Runnable pollScheduledTask;
        PriorityQueue<ScheduledFutureTask<?>> priorityQueue = this.scheduledTaskQueue;
        if (priorityQueue == null || priorityQueue.isEmpty()) {
            return true;
        }
        long nanoTime = AbstractScheduledEventExecutor.nanoTime();
        do {
            pollScheduledTask = pollScheduledTask(nanoTime);
            if (pollScheduledTask == null) {
                return true;
            }
        } while (this.taskQueue.offer(pollScheduledTask));
        this.scheduledTaskQueue.add((ScheduledFutureTask) pollScheduledTask);
        return false;
    }

    protected static Runnable pollTaskFrom(Queue<Runnable> queue) {
        Runnable poll;
        do {
            poll = queue.poll();
        } while (poll == AbstractScheduledEventExecutor.WAKEUP_TASK);
        return poll;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void reject() {
        throw new RejectedExecutionException("event executor terminated");
    }

    private boolean runExistingTasksFrom(Queue<Runnable> queue) {
        Runnable poll;
        Runnable pollTaskFrom = pollTaskFrom(queue);
        if (pollTaskFrom == null) {
            return false;
        }
        int min = Math.min(this.maxPendingTasks, queue.size());
        AbstractEventExecutor.safeExecute(pollTaskFrom);
        while (true) {
            int i2 = min - 1;
            if (min <= 0 || (poll = queue.poll()) == null) {
                return true;
            }
            AbstractEventExecutor.safeExecute(poll);
            min = i2;
        }
    }

    private boolean runShutdownHooks() {
        boolean z3 = false;
        while (!this.shutdownHooks.isEmpty()) {
            ArrayList<Runnable> arrayList = new ArrayList(this.shutdownHooks);
            this.shutdownHooks.clear();
            for (Runnable runnable : arrayList) {
                try {
                    runnable.run();
                } finally {
                    z3 = true;
                }
                z3 = true;
            }
        }
        if (z3) {
            this.lastExecutionTime = ScheduledFutureTask.nanoTime();
        }
        return z3;
    }

    private void startThread() {
        if (this.state == 1 && STATE_UPDATER.compareAndSet(this, 1, 2)) {
            try {
                doStartThread();
            } catch (Throwable th) {
                STATE_UPDATER.compareAndSet(this, 2, 1);
                throw th;
            }
        }
    }

    private void throwIfInEventLoop(String str) {
        if (inEventLoop()) {
            throw new RejectedExecutionException("Calling " + str + " from within the EventLoop is not allowed");
        }
    }

    public void addShutdownHook(final Runnable runnable) {
        if (inEventLoop()) {
            this.shutdownHooks.add(runnable);
        } else {
            execute(new Runnable() { // from class: io.netty.util.concurrent.SingleThreadEventExecutor.2
                @Override // java.lang.Runnable
                public void run() {
                    SingleThreadEventExecutor.this.shutdownHooks.add(runnable);
                }
            });
        }
    }

    protected void addTask(Runnable runnable) {
        ObjectUtil.checkNotNull(runnable, "task");
        if (offerTask(runnable)) {
            return;
        }
        reject(runnable);
    }

    protected void afterRunningAllTasks() {
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j4, TimeUnit timeUnit) throws InterruptedException {
        ObjectUtil.checkNotNull(timeUnit, "unit");
        if (!inEventLoop()) {
            this.threadLock.await(j4, timeUnit);
            return isTerminated();
        }
        throw new IllegalStateException("cannot await termination of the current thread");
    }

    protected void cleanup() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean confirmShutdown() {
        if (isShuttingDown()) {
            if (inEventLoop()) {
                cancelScheduledTasks();
                if (this.gracefulShutdownStartTime == 0) {
                    this.gracefulShutdownStartTime = ScheduledFutureTask.nanoTime();
                }
                if (!runAllTasks() && !runShutdownHooks()) {
                    long nanoTime = ScheduledFutureTask.nanoTime();
                    if (isShutdown() || nanoTime - this.gracefulShutdownStartTime > this.gracefulShutdownTimeout || nanoTime - this.lastExecutionTime > this.gracefulShutdownQuietPeriod) {
                        return true;
                    }
                    this.taskQueue.offer(AbstractScheduledEventExecutor.WAKEUP_TASK);
                    try {
                        Thread.sleep(100L);
                    } catch (InterruptedException unused) {
                    }
                    return false;
                } else if (isShutdown() || this.gracefulShutdownQuietPeriod == 0) {
                    return true;
                } else {
                    this.taskQueue.offer(AbstractScheduledEventExecutor.WAKEUP_TASK);
                    return false;
                }
            }
            throw new IllegalStateException("must be invoked from an event loop");
        }
        return false;
    }

    protected long deadlineNanos() {
        ScheduledFutureTask<?> peekScheduledTask = peekScheduledTask();
        if (peekScheduledTask == null) {
            return AbstractScheduledEventExecutor.nanoTime() + SCHEDULE_PURGE_INTERVAL;
        }
        return peekScheduledTask.deadlineNanos();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long delayNanos(long j4) {
        ScheduledFutureTask<?> peekScheduledTask = peekScheduledTask();
        if (peekScheduledTask == null) {
            return SCHEDULE_PURGE_INTERVAL;
        }
        return peekScheduledTask.delayNanos(j4);
    }

    final int drainTasks() {
        int i2 = 0;
        while (true) {
            Runnable poll = this.taskQueue.poll();
            if (poll == null) {
                return i2;
            }
            if (AbstractScheduledEventExecutor.WAKEUP_TASK != poll) {
                i2++;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        ObjectUtil.checkNotNull(runnable, "task");
        execute(runnable, !(runnable instanceof AbstractEventExecutor.a) && wakesUpForTask(runnable));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean hasTasks() {
        return !this.taskQueue.isEmpty();
    }

    @Override // io.netty.util.concurrent.EventExecutor
    public boolean inEventLoop(Thread thread) {
        return thread == this.thread;
    }

    protected void interruptThread() {
        Thread thread = this.thread;
        if (thread == null) {
            this.interrupted = true;
        } else {
            thread.interrupt();
        }
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public <T> List<java.util.concurrent.Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
        throwIfInEventLoop("invokeAll");
        return super.invokeAll(collection);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
        throwIfInEventLoop("invokeAny");
        return (T) super.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return this.state >= 4;
    }

    @Override // io.netty.util.concurrent.EventExecutorGroup
    public boolean isShuttingDown() {
        return this.state >= 3;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return this.state == 5;
    }

    @Override // io.netty.util.concurrent.AbstractEventExecutor
    public void lazyExecute(Runnable runnable) {
        execute((Runnable) ObjectUtil.checkNotNull(runnable, "task"), false);
    }

    @Deprecated
    protected Queue<Runnable> newTaskQueue() {
        return newTaskQueue(this.maxPendingTasks);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean offerTask(Runnable runnable) {
        if (isShutdown()) {
            reject();
        }
        return this.taskQueue.offer(runnable);
    }

    protected Runnable peekTask() {
        return this.taskQueue.peek();
    }

    public int pendingTasks() {
        return this.taskQueue.size();
    }

    protected Runnable pollTask() {
        return pollTaskFrom(this.taskQueue);
    }

    public void removeShutdownHook(final Runnable runnable) {
        if (inEventLoop()) {
            this.shutdownHooks.remove(runnable);
        } else {
            execute(new Runnable() { // from class: io.netty.util.concurrent.SingleThreadEventExecutor.3
                @Override // java.lang.Runnable
                public void run() {
                    SingleThreadEventExecutor.this.shutdownHooks.remove(runnable);
                }
            });
        }
    }

    protected boolean removeTask(Runnable runnable) {
        return this.taskQueue.remove(ObjectUtil.checkNotNull(runnable, "task"));
    }

    protected abstract void run();

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean runAllTasks() {
        boolean fetchFromScheduledTaskQueue;
        boolean z3 = false;
        do {
            fetchFromScheduledTaskQueue = fetchFromScheduledTaskQueue();
            if (runAllTasksFrom(this.taskQueue)) {
                z3 = true;
                continue;
            }
        } while (!fetchFromScheduledTaskQueue);
        if (z3) {
            this.lastExecutionTime = ScheduledFutureTask.nanoTime();
        }
        afterRunningAllTasks();
        return z3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean runAllTasksFrom(Queue<Runnable> queue) {
        Runnable pollTaskFrom = pollTaskFrom(queue);
        if (pollTaskFrom == null) {
            return false;
        }
        do {
            AbstractEventExecutor.safeExecute(pollTaskFrom);
            pollTaskFrom = pollTaskFrom(queue);
        } while (pollTaskFrom != null);
        return true;
    }

    protected final boolean runScheduledAndExecutorTasks(int i2) {
        int i4 = 0;
        while ((runExistingTasksFrom(this.taskQueue) | executeExpiredScheduledTasks()) && (i4 = i4 + 1) < i2) {
        }
        if (i4 > 0) {
            this.lastExecutionTime = ScheduledFutureTask.nanoTime();
        }
        afterRunningAllTasks();
        return i4 > 0;
    }

    @Override // io.netty.util.concurrent.AbstractEventExecutor, java.util.concurrent.ExecutorService, io.netty.util.concurrent.EventExecutorGroup
    @Deprecated
    public void shutdown() {
        if (isShutdown()) {
            return;
        }
        boolean inEventLoop = inEventLoop();
        while (!isShuttingDown()) {
            int i2 = this.state;
            int i4 = 4;
            boolean z3 = true;
            if (!inEventLoop && i2 != 1 && i2 != 2 && i2 != 3) {
                z3 = false;
                i4 = i2;
            }
            if (STATE_UPDATER.compareAndSet(this, i2, i4)) {
                if (!ensureThreadStarted(i2) && z3) {
                    this.taskQueue.offer(AbstractScheduledEventExecutor.WAKEUP_TASK);
                    if (this.addTaskWakesUp) {
                        return;
                    }
                    wakeup(inEventLoop);
                    return;
                }
                return;
            }
        }
    }

    @Override // io.netty.util.concurrent.EventExecutorGroup
    public Future<?> shutdownGracefully(long j4, long j5, TimeUnit timeUnit) {
        ObjectUtil.checkPositiveOrZero(j4, "quietPeriod");
        if (j5 >= j4) {
            ObjectUtil.checkNotNull(timeUnit, "unit");
            if (isShuttingDown()) {
                return terminationFuture();
            }
            boolean inEventLoop = inEventLoop();
            while (!isShuttingDown()) {
                int i2 = this.state;
                int i4 = 3;
                boolean z3 = true;
                if (!inEventLoop && i2 != 1 && i2 != 2) {
                    z3 = false;
                    i4 = i2;
                }
                if (STATE_UPDATER.compareAndSet(this, i2, i4)) {
                    this.gracefulShutdownQuietPeriod = timeUnit.toNanos(j4);
                    this.gracefulShutdownTimeout = timeUnit.toNanos(j5);
                    if (ensureThreadStarted(i2)) {
                        return this.terminationFuture;
                    }
                    if (z3) {
                        this.taskQueue.offer(AbstractScheduledEventExecutor.WAKEUP_TASK);
                        if (!this.addTaskWakesUp) {
                            wakeup(inEventLoop);
                        }
                    }
                    return terminationFuture();
                }
            }
            return terminationFuture();
        }
        throw new IllegalArgumentException("timeout: " + j5 + " (expected >= quietPeriod (" + j4 + "))");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Runnable takeTask() {
        Runnable runnable;
        Queue<Runnable> queue = this.taskQueue;
        if (queue instanceof BlockingQueue) {
            BlockingQueue blockingQueue = (BlockingQueue) queue;
            do {
                ScheduledFutureTask<?> peekScheduledTask = peekScheduledTask();
                runnable = null;
                if (peekScheduledTask == null) {
                    try {
                        Runnable runnable2 = (Runnable) blockingQueue.take();
                        try {
                            if (runnable2 == AbstractScheduledEventExecutor.WAKEUP_TASK) {
                                return null;
                            }
                        } catch (InterruptedException unused) {
                        }
                        return runnable2;
                    } catch (InterruptedException unused2) {
                        return null;
                    }
                }
                long delayNanos = peekScheduledTask.delayNanos();
                if (delayNanos > 0) {
                    try {
                        runnable = (Runnable) blockingQueue.poll(delayNanos, TimeUnit.NANOSECONDS);
                    } catch (InterruptedException unused3) {
                        return null;
                    }
                }
                if (runnable == null) {
                    fetchFromScheduledTaskQueue();
                    runnable = (Runnable) blockingQueue.poll();
                    continue;
                }
            } while (runnable == null);
            return runnable;
        }
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.util.concurrent.EventExecutorGroup
    public Future<?> terminationFuture() {
        return this.terminationFuture;
    }

    public final ThreadProperties threadProperties() {
        ThreadProperties threadProperties = this.threadProperties;
        if (threadProperties == null) {
            Thread thread = this.thread;
            if (thread == null) {
                submit(NOOP_TASK).syncUninterruptibly();
                thread = this.thread;
            }
            DefaultThreadProperties defaultThreadProperties = new DefaultThreadProperties(thread);
            return !PROPERTIES_UPDATER.compareAndSet(this, null, defaultThreadProperties) ? this.threadProperties : defaultThreadProperties;
        }
        return threadProperties;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateLastExecutionTime() {
        this.lastExecutionTime = ScheduledFutureTask.nanoTime();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean wakesUpForTask(Runnable runnable) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void wakeup(boolean z3) {
        if (z3) {
            return;
        }
        this.taskQueue.offer(AbstractScheduledEventExecutor.WAKEUP_TASK);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SingleThreadEventExecutor(EventExecutorGroup eventExecutorGroup, ThreadFactory threadFactory, boolean z3, int i2, RejectedExecutionHandler rejectedExecutionHandler) {
        this(eventExecutorGroup, new ThreadPerTaskExecutor(threadFactory), z3, i2, rejectedExecutionHandler);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Queue<Runnable> newTaskQueue(int i2) {
        return new LinkedBlockingQueue(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void reject(Runnable runnable) {
        this.rejectedExecutionHandler.rejected(runnable, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SingleThreadEventExecutor(EventExecutorGroup eventExecutorGroup, Executor executor, boolean z3) {
        this(eventExecutorGroup, executor, z3, DEFAULT_MAX_PENDING_EXECUTOR_TASKS, RejectedExecutionHandlers.reject());
    }

    private void execute(Runnable runnable, boolean z3) {
        boolean inEventLoop = inEventLoop();
        addTask(runnable);
        if (!inEventLoop) {
            startThread();
            if (isShutdown()) {
                boolean z4 = false;
                try {
                    z4 = removeTask(runnable);
                } catch (UnsupportedOperationException unused) {
                }
                if (z4) {
                    reject();
                }
            }
        }
        if (this.addTaskWakesUp || !z3) {
            return;
        }
        wakeup(inEventLoop);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public <T> List<java.util.concurrent.Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j4, TimeUnit timeUnit) throws InterruptedException {
        throwIfInEventLoop("invokeAll");
        return super.invokeAll(collection, j4, timeUnit);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j4, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        throwIfInEventLoop("invokeAny");
        return (T) super.invokeAny(collection, j4, timeUnit);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SingleThreadEventExecutor(EventExecutorGroup eventExecutorGroup, Executor executor, boolean z3, int i2, RejectedExecutionHandler rejectedExecutionHandler) {
        super(eventExecutorGroup);
        this.threadLock = new CountDownLatch(1);
        this.shutdownHooks = new LinkedHashSet();
        this.state = 1;
        this.terminationFuture = new DefaultPromise(GlobalEventExecutor.INSTANCE);
        this.addTaskWakesUp = z3;
        int max = Math.max(16, i2);
        this.maxPendingTasks = max;
        this.executor = ThreadExecutorMap.apply(executor, this);
        this.taskQueue = newTaskQueue(max);
        this.rejectedExecutionHandler = (RejectedExecutionHandler) ObjectUtil.checkNotNull(rejectedExecutionHandler, "rejectedHandler");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean runAllTasks(long j4) {
        long nanoTime;
        fetchFromScheduledTaskQueue();
        Runnable pollTask = pollTask();
        if (pollTask == null) {
            afterRunningAllTasks();
            return false;
        }
        long nanoTime2 = j4 > 0 ? ScheduledFutureTask.nanoTime() + j4 : 0L;
        long j5 = 0;
        while (true) {
            AbstractEventExecutor.safeExecute(pollTask);
            j5++;
            if ((63 & j5) == 0) {
                nanoTime = ScheduledFutureTask.nanoTime();
                if (nanoTime >= nanoTime2) {
                    break;
                }
            }
            pollTask = pollTask();
            if (pollTask == null) {
                nanoTime = ScheduledFutureTask.nanoTime();
                break;
            }
        }
        afterRunningAllTasks();
        this.lastExecutionTime = nanoTime;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SingleThreadEventExecutor(EventExecutorGroup eventExecutorGroup, Executor executor, boolean z3, Queue<Runnable> queue, RejectedExecutionHandler rejectedExecutionHandler) {
        super(eventExecutorGroup);
        this.threadLock = new CountDownLatch(1);
        this.shutdownHooks = new LinkedHashSet();
        this.state = 1;
        this.terminationFuture = new DefaultPromise(GlobalEventExecutor.INSTANCE);
        this.addTaskWakesUp = z3;
        this.maxPendingTasks = DEFAULT_MAX_PENDING_EXECUTOR_TASKS;
        this.executor = ThreadExecutorMap.apply(executor, this);
        this.taskQueue = (Queue) ObjectUtil.checkNotNull(queue, "taskQueue");
        this.rejectedExecutionHandler = (RejectedExecutionHandler) ObjectUtil.checkNotNull(rejectedExecutionHandler, "rejectedHandler");
    }
}
