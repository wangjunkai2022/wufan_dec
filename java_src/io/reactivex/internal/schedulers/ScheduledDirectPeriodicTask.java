package io.reactivex.internal.schedulers;
/* loaded from: classes5.dex */
public final class ScheduledDirectPeriodicTask extends AbstractDirectTask implements Runnable {
    private static final long serialVersionUID = 1811839108042568751L;

    public ScheduledDirectPeriodicTask(Runnable runnable) {
        super(runnable);
    }

    @Override // io.reactivex.internal.schedulers.AbstractDirectTask, io.reactivex.schedulers.a
    public /* bridge */ /* synthetic */ Runnable a() {
        return super.a();
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f69834b = Thread.currentThread();
        try {
            this.f69833a.run();
            this.f69834b = null;
        } catch (Throwable th) {
            this.f69834b = null;
            lazySet(AbstractDirectTask.f69831c);
            io.reactivex.plugins.a.Y(th);
        }
    }
}
