package notchtools.geek.com.notchtools;

import android.app.Activity;
import android.os.Build;
import android.view.Window;
import notchtools.geek.com.notchtools.core.d;
import notchtools.geek.com.notchtools.phone.c;
import notchtools.geek.com.notchtools.phone.e;
import notchtools.geek.com.notchtools.phone.f;
/* compiled from: NotchTools.java */
/* loaded from: classes5.dex */
public class b implements notchtools.geek.com.notchtools.core.b {

    /* renamed from: d  reason: collision with root package name */
    private static b f73083d = null;

    /* renamed from: e  reason: collision with root package name */
    public static final String f73084e = "notch_container";

    /* renamed from: f  reason: collision with root package name */
    private static final int f73085f = Build.VERSION.SDK_INT;

    /* renamed from: g  reason: collision with root package name */
    public static final int f73086g = 28;

    /* renamed from: a  reason: collision with root package name */
    private notchtools.geek.com.notchtools.core.b f73087a = null;

    /* renamed from: b  reason: collision with root package name */
    private boolean f73088b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f73089c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NotchTools.java */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f73090a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ d f73091b;

        a(Activity activity, d dVar) {
            this.f73090a = activity;
            this.f73091b = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f73087a == null) {
                b.this.j(this.f73090a.getWindow());
            }
            if (b.this.f73087a != null) {
                b.this.f73087a.f(this.f73090a, this.f73091b);
            }
        }
    }

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(Window window) {
        if (this.f73087a != null) {
            return;
        }
        int i2 = f73085f;
        if (i2 < 26) {
            this.f73087a = new notchtools.geek.com.notchtools.phone.a();
        } else if (i2 >= 28) {
            if (i2 >= 28) {
                this.f73087a = new e();
            }
        } else {
            notchtools.geek.com.notchtools.helper.a a4 = notchtools.geek.com.notchtools.helper.a.a();
            if (a4.c()) {
                this.f73087a = new notchtools.geek.com.notchtools.phone.b();
            } else if (a4.d()) {
                this.f73087a = new c();
            } else if (a4.f()) {
                this.f73087a = new f();
            } else if (a4.e()) {
                this.f73087a = new notchtools.geek.com.notchtools.phone.d();
            } else {
                this.f73087a = new notchtools.geek.com.notchtools.phone.a();
            }
        }
    }

    public static b o() {
        if (f73083d == null) {
            synchronized (b.class) {
                if (f73083d == null) {
                    f73083d = new b();
                }
            }
        }
        return f73083d;
    }

    @Override // notchtools.geek.com.notchtools.core.b
    public void a(Activity activity, d dVar) {
        if (this.f73087a == null) {
            j(activity.getWindow());
        }
        notchtools.geek.com.notchtools.core.b bVar = this.f73087a;
        if (bVar != null) {
            bVar.a(activity, dVar);
        }
    }

    @Override // notchtools.geek.com.notchtools.core.b
    public void b(Activity activity, d dVar) {
        g(activity, dVar);
    }

    @Override // notchtools.geek.com.notchtools.core.b
    public boolean c(Window window) {
        if (!this.f73088b) {
            if (this.f73087a == null) {
                j(window);
            }
            notchtools.geek.com.notchtools.core.b bVar = this.f73087a;
            if (bVar == null) {
                this.f73088b = true;
                this.f73089c = false;
            } else {
                this.f73089c = bVar.c(window);
            }
        }
        return this.f73089c;
    }

    @Override // notchtools.geek.com.notchtools.core.b
    public int d(Window window) {
        if (this.f73087a == null) {
            j(window);
        }
        notchtools.geek.com.notchtools.core.b bVar = this.f73087a;
        if (bVar == null) {
            return 0;
        }
        return bVar.d(window);
    }

    @Override // notchtools.geek.com.notchtools.core.b
    public int e(Window window) {
        return notchtools.geek.com.notchtools.helper.b.b(window.getContext());
    }

    @Override // notchtools.geek.com.notchtools.core.b
    public void f(Activity activity, d dVar) {
        notchtools.geek.com.notchtools.helper.d.p(new a(activity, dVar));
    }

    @Override // notchtools.geek.com.notchtools.core.b
    public void g(Activity activity, d dVar) {
        if (this.f73087a == null) {
            j(activity.getWindow());
        }
        notchtools.geek.com.notchtools.core.b bVar = this.f73087a;
        if (bVar != null) {
            bVar.g(activity, dVar);
        }
    }

    public void k(Activity activity) {
        g(activity, null);
    }

    public void l(Activity activity) {
        f(activity, null);
    }

    public void m(Activity activity) {
        b(activity, null);
    }

    public void n(Activity activity) {
        a(activity, null);
    }

    public b p(boolean z3) {
        notchtools.geek.com.notchtools.helper.b.f73098b = z3;
        return this;
    }
}
