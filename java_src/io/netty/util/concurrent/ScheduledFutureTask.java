package io.netty.util.concurrent;

import io.netty.util.internal.DefaultPriorityQueue;
import io.netty.util.internal.PriorityQueueNode;
import io.netty.util.internal.StringUtil;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class ScheduledFutureTask<V> extends PromiseTask<V> implements c<V>, PriorityQueueNode {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final long START_TIME = System.nanoTime();
    private long deadlineNanos;
    private long id;
    private final long periodNanos;
    private int queueIndex;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ScheduledFutureTask(AbstractScheduledEventExecutor abstractScheduledEventExecutor, Runnable runnable, long j4) {
        super(abstractScheduledEventExecutor, runnable);
        this.queueIndex = -1;
        this.deadlineNanos = j4;
        this.periodNanos = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long deadlineNanos(long j4) {
        long nanoTime = nanoTime() + j4;
        if (nanoTime < 0) {
            return Long.MAX_VALUE;
        }
        return nanoTime;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long deadlineToDelayNanos(long j4) {
        if (j4 == 0) {
            return 0L;
        }
        return Math.max(0L, j4 - nanoTime());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long initialNanoTime() {
        return START_TIME;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long nanoTime() {
        return System.nanoTime() - START_TIME;
    }

    private AbstractScheduledEventExecutor scheduledExecutor() {
        return (AbstractScheduledEventExecutor) executor();
    }

    private static long validatePeriod(long j4) {
        if (j4 != 0) {
            return j4;
        }
        throw new IllegalArgumentException("period: 0 (expected: != 0)");
    }

    @Override // io.netty.util.concurrent.PromiseTask, io.netty.util.concurrent.DefaultPromise, io.netty.util.concurrent.Future, java.util.concurrent.Future
    public boolean cancel(boolean z3) {
        boolean cancel = super.cancel(z3);
        if (cancel) {
            scheduledExecutor().removeScheduled(this);
        }
        return cancel;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean cancelWithoutRemove(boolean z3) {
        return super.cancel(z3);
    }

    public long delayNanos() {
        return deadlineToDelayNanos(deadlineNanos());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.util.concurrent.DefaultPromise
    public EventExecutor executor() {
        return super.executor();
    }

    @Override // java.util.concurrent.Delayed
    public long getDelay(TimeUnit timeUnit) {
        return timeUnit.convert(delayNanos(), TimeUnit.NANOSECONDS);
    }

    @Override // io.netty.util.internal.PriorityQueueNode
    public int priorityQueueIndex(DefaultPriorityQueue<?> defaultPriorityQueue) {
        return this.queueIndex;
    }

    @Override // io.netty.util.concurrent.PromiseTask, java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        try {
            if (delayNanos() > 0) {
                if (isCancelled()) {
                    scheduledExecutor().scheduledTaskQueue().removeTyped(this);
                } else {
                    scheduledExecutor().scheduleFromEventLoop(this);
                }
            } else if (this.periodNanos == 0) {
                if (setUncancellableInternal()) {
                    setSuccessInternal(runTask());
                }
            } else if (isCancelled()) {
            } else {
                runTask();
                if (executor().isShutdown()) {
                    return;
                }
                long j4 = this.periodNanos;
                if (j4 > 0) {
                    this.deadlineNanos += j4;
                } else {
                    this.deadlineNanos = nanoTime() - this.periodNanos;
                }
                if (isCancelled()) {
                    return;
                }
                scheduledExecutor().scheduledTaskQueue().add(this);
            }
        } catch (Throwable th) {
            setFailureInternal(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setConsumed() {
        if (this.periodNanos == 0) {
            this.deadlineNanos = 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ScheduledFutureTask<V> setId(long j4) {
        if (this.id == 0) {
            this.id = j4;
        }
        return this;
    }

    @Override // io.netty.util.concurrent.PromiseTask, io.netty.util.concurrent.DefaultPromise
    protected StringBuilder toStringBuilder() {
        StringBuilder stringBuilder = super.toStringBuilder();
        stringBuilder.setCharAt(stringBuilder.length() - 1, StringUtil.COMMA);
        stringBuilder.append(" deadline: ");
        stringBuilder.append(this.deadlineNanos);
        stringBuilder.append(", period: ");
        stringBuilder.append(this.periodNanos);
        stringBuilder.append(')');
        return stringBuilder;
    }

    @Override // java.lang.Comparable
    public int compareTo(Delayed delayed) {
        if (this == delayed) {
            return 0;
        }
        ScheduledFutureTask scheduledFutureTask = (ScheduledFutureTask) delayed;
        long deadlineNanos = deadlineNanos() - scheduledFutureTask.deadlineNanos();
        if (deadlineNanos < 0) {
            return -1;
        }
        return (deadlineNanos <= 0 && this.id < scheduledFutureTask.id) ? -1 : 1;
    }

    public long deadlineNanos() {
        return this.deadlineNanos;
    }

    public long delayNanos(long j4) {
        if (this.deadlineNanos == 0) {
            return 0L;
        }
        return Math.max(0L, deadlineNanos() - (j4 - START_TIME));
    }

    @Override // io.netty.util.internal.PriorityQueueNode
    public void priorityQueueIndex(DefaultPriorityQueue<?> defaultPriorityQueue, int i2) {
        this.queueIndex = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ScheduledFutureTask(AbstractScheduledEventExecutor abstractScheduledEventExecutor, Runnable runnable, long j4, long j5) {
        super(abstractScheduledEventExecutor, runnable);
        this.queueIndex = -1;
        this.deadlineNanos = j4;
        this.periodNanos = validatePeriod(j5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ScheduledFutureTask(AbstractScheduledEventExecutor abstractScheduledEventExecutor, Callable<V> callable, long j4, long j5) {
        super(abstractScheduledEventExecutor, callable);
        this.queueIndex = -1;
        this.deadlineNanos = j4;
        this.periodNanos = validatePeriod(j5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ScheduledFutureTask(AbstractScheduledEventExecutor abstractScheduledEventExecutor, Callable<V> callable, long j4) {
        super(abstractScheduledEventExecutor, callable);
        this.queueIndex = -1;
        this.deadlineNanos = j4;
        this.periodNanos = 0L;
    }
}
