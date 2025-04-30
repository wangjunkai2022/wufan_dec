package io.reactivex.internal.schedulers;

import java.util.concurrent.Callable;
/* loaded from: classes5.dex */
public final class ScheduledDirectTask extends AbstractDirectTask implements Callable<Void> {
    private static final long serialVersionUID = 1811839108042568751L;

    public ScheduledDirectTask(Runnable runnable) {
        super(runnable);
    }

    @Override // io.reactivex.internal.schedulers.AbstractDirectTask, io.reactivex.schedulers.a
    public /* bridge */ /* synthetic */ Runnable a() {
        return super.a();
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        this.f69834b = Thread.currentThread();
        try {
            this.f69833a.run();
            return null;
        } finally {
            lazySet(AbstractDirectTask.f69831c);
            this.f69834b = null;
        }
    }
}
