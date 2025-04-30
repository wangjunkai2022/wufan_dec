package io.netty.util.concurrent;

import io.netty.util.internal.StringUtil;
import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class PromiseTask<V> extends DefaultPromise<V> implements RunnableFuture<V> {
    private Object task;
    private static final Runnable COMPLETED = new SentinelRunnable("COMPLETED");
    private static final Runnable CANCELLED = new SentinelRunnable("CANCELLED");
    private static final Runnable FAILED = new SentinelRunnable("FAILED");

    /* loaded from: classes5.dex */
    private static final class RunnableAdapter<T> implements Callable<T> {
        final T result;
        final Runnable task;

        RunnableAdapter(Runnable runnable, T t3) {
            this.task = runnable;
            this.result = t3;
        }

        @Override // java.util.concurrent.Callable
        public T call() {
            this.task.run();
            return this.result;
        }

        public String toString() {
            return "Callable(task: " + this.task + ", result: " + this.result + ')';
        }
    }

    /* loaded from: classes5.dex */
    private static class SentinelRunnable implements Runnable {
        private final String name;

        SentinelRunnable(String str) {
            this.name = str;
        }

        @Override // java.lang.Runnable
        public void run() {
        }

        public String toString() {
            return this.name;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [io.netty.util.concurrent.PromiseTask$RunnableAdapter] */
    public PromiseTask(EventExecutor eventExecutor, Runnable runnable, V v3) {
        super(eventExecutor);
        this.task = v3 != null ? new RunnableAdapter(runnable, v3) : runnable;
    }

    private boolean clearTaskAfterCompletion(boolean z3, Runnable runnable) {
        if (z3) {
            this.task = runnable;
        }
        return z3;
    }

    @Override // io.netty.util.concurrent.DefaultPromise, io.netty.util.concurrent.Future, java.util.concurrent.Future
    public boolean cancel(boolean z3) {
        return clearTaskAfterCompletion(super.cancel(z3), CANCELLED);
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final int hashCode() {
        return System.identityHashCode(this);
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        try {
            if (setUncancellableInternal()) {
                setSuccessInternal(runTask());
            }
        } catch (Throwable th) {
            setFailureInternal(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final V runTask() throws Exception {
        Object obj = this.task;
        if (obj instanceof Callable) {
            return (V) ((Callable) obj).call();
        }
        ((Runnable) obj).run();
        return null;
    }

    @Override // io.netty.util.concurrent.DefaultPromise, io.netty.util.concurrent.Promise, io.netty.channel.ChannelPromise
    public final Promise<V> setFailure(Throwable th) {
        throw new IllegalStateException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Promise<V> setFailureInternal(Throwable th) {
        super.setFailure(th);
        clearTaskAfterCompletion(true, FAILED);
        return this;
    }

    @Override // io.netty.util.concurrent.DefaultPromise, io.netty.util.concurrent.Promise, io.netty.util.concurrent.ProgressivePromise
    public final Promise<V> setSuccess(V v3) {
        throw new IllegalStateException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Promise<V> setSuccessInternal(V v3) {
        super.setSuccess(v3);
        clearTaskAfterCompletion(true, COMPLETED);
        return this;
    }

    @Override // io.netty.util.concurrent.DefaultPromise, io.netty.util.concurrent.Promise
    public final boolean setUncancellable() {
        throw new IllegalStateException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean setUncancellableInternal() {
        return super.setUncancellable();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.util.concurrent.DefaultPromise
    public StringBuilder toStringBuilder() {
        StringBuilder stringBuilder = super.toStringBuilder();
        stringBuilder.setCharAt(stringBuilder.length() - 1, StringUtil.COMMA);
        stringBuilder.append(" task: ");
        stringBuilder.append(this.task);
        stringBuilder.append(')');
        return stringBuilder;
    }

    @Override // io.netty.util.concurrent.DefaultPromise, io.netty.util.concurrent.Promise
    public final boolean tryFailure(Throwable th) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean tryFailureInternal(Throwable th) {
        return clearTaskAfterCompletion(super.tryFailure(th), FAILED);
    }

    @Override // io.netty.util.concurrent.DefaultPromise, io.netty.util.concurrent.Promise
    public final boolean trySuccess(V v3) {
        return false;
    }

    protected final boolean trySuccessInternal(V v3) {
        return clearTaskAfterCompletion(super.trySuccess(v3), COMPLETED);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PromiseTask(EventExecutor eventExecutor, Runnable runnable) {
        super(eventExecutor);
        this.task = runnable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PromiseTask(EventExecutor eventExecutor, Callable<V> callable) {
        super(eventExecutor);
        this.task = callable;
    }
}
