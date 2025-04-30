package cn.com.chinatelecom.account.api.c;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes2.dex */
public abstract class e implements Runnable {

    /* renamed from: c  reason: collision with root package name */
    private static Handler f8573c = new Handler(Looper.getMainLooper());

    /* renamed from: a  reason: collision with root package name */
    private boolean f8574a = false;

    /* renamed from: b  reason: collision with root package name */
    private long f8575b;

    /* renamed from: d  reason: collision with root package name */
    private a f8576d;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private e f8577a;

        public a(e eVar) {
            this.f8577a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            e eVar = this.f8577a;
            if (eVar != null) {
                eVar.b();
            }
        }
    }

    public e() {
    }

    public e(long j4) {
        this.f8575b = j4;
    }

    private void e() {
        a aVar = new a(this);
        this.f8576d = aVar;
        f8573c.postDelayed(aVar, this.f8575b);
    }

    public abstract void a();

    public void a(boolean z3) {
        this.f8574a = z3;
    }

    public void b() {
    }

    public boolean c() {
        return this.f8574a;
    }

    public void d() {
        try {
            a aVar = this.f8576d;
            if (aVar != null) {
                f8573c.removeCallbacks(aVar);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f8575b > 0) {
            e();
        }
        a();
    }
}
