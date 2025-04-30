package org.greenrobot.eventbus;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
/* compiled from: HandlerPoster.java */
/* loaded from: classes5.dex */
final class e extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private final h f73249a;

    /* renamed from: b  reason: collision with root package name */
    private final int f73250b;

    /* renamed from: c  reason: collision with root package name */
    private final c f73251c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f73252d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(c cVar, Looper looper, int i2) {
        super(looper);
        this.f73251c = cVar;
        this.f73250b = i2;
        this.f73249a = new h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(l lVar, Object obj) {
        g a4 = g.a(lVar, obj);
        synchronized (this) {
            this.f73249a.a(a4);
            if (!this.f73252d) {
                this.f73252d = true;
                if (!sendMessage(obtainMessage())) {
                    throw new EventBusException("Could not send handler message");
                }
            }
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            long uptimeMillis = SystemClock.uptimeMillis();
            do {
                g b4 = this.f73249a.b();
                if (b4 == null) {
                    synchronized (this) {
                        b4 = this.f73249a.b();
                        if (b4 == null) {
                            this.f73252d = false;
                            return;
                        }
                    }
                }
                this.f73251c.k(b4);
            } while (SystemClock.uptimeMillis() - uptimeMillis < this.f73250b);
            if (sendMessage(obtainMessage())) {
                this.f73252d = true;
                return;
            }
            throw new EventBusException("Could not send handler message");
        } finally {
            this.f73252d = false;
        }
    }
}
