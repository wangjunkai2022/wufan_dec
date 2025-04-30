package k3;

import org.jboss.netty.channel.w;
/* compiled from: ChannelRunnableWrapper.java */
/* loaded from: classes5.dex */
public class a extends w implements Runnable {

    /* renamed from: l  reason: collision with root package name */
    private final Runnable f70692l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f70693m;

    public a(org.jboss.netty.channel.e eVar, Runnable runnable) {
        super(eVar, true);
        this.f70692l = runnable;
    }

    @Override // org.jboss.netty.channel.w, org.jboss.netty.channel.j
    public synchronized boolean cancel() {
        if (this.f70693m) {
            return false;
        }
        return super.cancel();
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this) {
            if (isCancelled()) {
                return;
            }
            this.f70693m = true;
            try {
                this.f70692l.run();
                setSuccess();
            } catch (Throwable th) {
                setFailure(th);
            }
        }
    }
}
