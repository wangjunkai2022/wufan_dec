package io.reactivex.internal.schedulers;

import io.reactivex.internal.functions.Functions;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
abstract class AbstractDirectTask extends AtomicReference<Future<?>> implements io.reactivex.disposables.b, io.reactivex.schedulers.a {

    /* renamed from: c  reason: collision with root package name */
    protected static final FutureTask<Void> f69831c;

    /* renamed from: d  reason: collision with root package name */
    protected static final FutureTask<Void> f69832d;
    private static final long serialVersionUID = 1811839108042568751L;

    /* renamed from: a  reason: collision with root package name */
    protected final Runnable f69833a;

    /* renamed from: b  reason: collision with root package name */
    protected Thread f69834b;

    static {
        Runnable runnable = Functions.f65823b;
        f69831c = new FutureTask<>(runnable, null);
        f69832d = new FutureTask<>(runnable, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractDirectTask(Runnable runnable) {
        this.f69833a = runnable;
    }

    @Override // io.reactivex.schedulers.a
    public Runnable a() {
        return this.f69833a;
    }

    public final void b(Future<?> future) {
        Future<?> future2;
        do {
            future2 = get();
            if (future2 == f69831c) {
                return;
            }
            if (future2 == f69832d) {
                future.cancel(this.f69834b != Thread.currentThread());
                return;
            }
        } while (!compareAndSet(future2, future));
    }

    @Override // io.reactivex.disposables.b
    public final void dispose() {
        FutureTask<Void> futureTask;
        Future<?> future = get();
        if (future == f69831c || future == (futureTask = f69832d) || !compareAndSet(future, futureTask) || future == null) {
            return;
        }
        future.cancel(this.f69834b != Thread.currentThread());
    }

    @Override // io.reactivex.disposables.b
    public final boolean isDisposed() {
        Future<?> future = get();
        return future == f69831c || future == f69832d;
    }
}
