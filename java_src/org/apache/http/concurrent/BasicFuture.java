package org.apache.http.concurrent;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.apache.http.util.Args;
/* loaded from: classes5.dex */
public class BasicFuture<T> implements Future<T>, Cancellable {
    private final FutureCallback<T> callback;
    private volatile boolean cancelled;
    private volatile boolean completed;
    private volatile Exception ex;
    private volatile T result;

    public BasicFuture(FutureCallback<T> futureCallback) {
        this.callback = futureCallback;
    }

    private T getResult() throws ExecutionException {
        if (this.ex == null) {
            return this.result;
        }
        throw new ExecutionException(this.ex);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z3) {
        synchronized (this) {
            if (this.completed) {
                return false;
            }
            this.completed = true;
            this.cancelled = true;
            notifyAll();
            FutureCallback<T> futureCallback = this.callback;
            if (futureCallback != null) {
                futureCallback.cancelled();
            }
            return true;
        }
    }

    public boolean completed(T t3) {
        synchronized (this) {
            if (this.completed) {
                return false;
            }
            this.completed = true;
            this.result = t3;
            notifyAll();
            FutureCallback<T> futureCallback = this.callback;
            if (futureCallback != null) {
                futureCallback.completed(t3);
            }
            return true;
        }
    }

    public boolean failed(Exception exc) {
        synchronized (this) {
            if (this.completed) {
                return false;
            }
            this.completed = true;
            this.ex = exc;
            notifyAll();
            FutureCallback<T> futureCallback = this.callback;
            if (futureCallback != null) {
                futureCallback.failed(exc);
            }
            return true;
        }
    }

    @Override // java.util.concurrent.Future
    public synchronized T get() throws InterruptedException, ExecutionException {
        while (!this.completed) {
            wait();
        }
        return getResult();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.cancelled;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.completed;
    }

    @Override // java.util.concurrent.Future
    public synchronized T get(long j4, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        Args.notNull(timeUnit, "Time unit");
        long millis = timeUnit.toMillis(j4);
        long currentTimeMillis = millis <= 0 ? 0L : System.currentTimeMillis();
        if (this.completed) {
            return getResult();
        } else if (millis <= 0) {
            throw new TimeoutException();
        } else {
            long j5 = millis;
            while (true) {
                wait(j5);
                if (this.completed) {
                    return getResult();
                }
                j5 = millis - (System.currentTimeMillis() - currentTimeMillis);
                if (j5 <= 0) {
                    throw new TimeoutException();
                }
            }
        }
    }

    @Override // org.apache.http.concurrent.Cancellable
    public boolean cancel() {
        return cancel(true);
    }
}
