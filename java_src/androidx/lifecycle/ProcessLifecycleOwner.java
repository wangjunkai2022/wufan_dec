package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ReportFragment;
/* loaded from: classes.dex */
public class ProcessLifecycleOwner implements LifecycleOwner {
    @VisibleForTesting

    /* renamed from: i  reason: collision with root package name */
    static final long f6279i = 700;

    /* renamed from: j  reason: collision with root package name */
    private static final ProcessLifecycleOwner f6280j = new ProcessLifecycleOwner();

    /* renamed from: e  reason: collision with root package name */
    private Handler f6285e;

    /* renamed from: a  reason: collision with root package name */
    private int f6281a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f6282b = 0;

    /* renamed from: c  reason: collision with root package name */
    private boolean f6283c = true;

    /* renamed from: d  reason: collision with root package name */
    private boolean f6284d = true;

    /* renamed from: f  reason: collision with root package name */
    private final LifecycleRegistry f6286f = new LifecycleRegistry(this);

    /* renamed from: g  reason: collision with root package name */
    private Runnable f6287g = new Runnable() { // from class: androidx.lifecycle.ProcessLifecycleOwner.1
        @Override // java.lang.Runnable
        public void run() {
            ProcessLifecycleOwner.this.f();
            ProcessLifecycleOwner.this.g();
        }
    };

    /* renamed from: h  reason: collision with root package name */
    ReportFragment.ActivityInitializationListener f6288h = new ReportFragment.ActivityInitializationListener() { // from class: androidx.lifecycle.ProcessLifecycleOwner.2
        @Override // androidx.lifecycle.ReportFragment.ActivityInitializationListener
        public void onCreate() {
        }

        @Override // androidx.lifecycle.ReportFragment.ActivityInitializationListener
        public void onResume() {
            ProcessLifecycleOwner.this.b();
        }

        @Override // androidx.lifecycle.ReportFragment.ActivityInitializationListener
        public void onStart() {
            ProcessLifecycleOwner.this.c();
        }
    };

    private ProcessLifecycleOwner() {
    }

    @NonNull
    public static LifecycleOwner get() {
        return f6280j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void h(Context context) {
        f6280j.e(context);
    }

    void a() {
        int i2 = this.f6282b - 1;
        this.f6282b = i2;
        if (i2 == 0) {
            this.f6285e.postDelayed(this.f6287g, f6279i);
        }
    }

    void b() {
        int i2 = this.f6282b + 1;
        this.f6282b = i2;
        if (i2 == 1) {
            if (this.f6283c) {
                this.f6286f.handleLifecycleEvent(Lifecycle.Event.ON_RESUME);
                this.f6283c = false;
                return;
            }
            this.f6285e.removeCallbacks(this.f6287g);
        }
    }

    void c() {
        int i2 = this.f6281a + 1;
        this.f6281a = i2;
        if (i2 == 1 && this.f6284d) {
            this.f6286f.handleLifecycleEvent(Lifecycle.Event.ON_START);
            this.f6284d = false;
        }
    }

    void d() {
        this.f6281a--;
        g();
    }

    void e(Context context) {
        this.f6285e = new Handler();
        this.f6286f.handleLifecycleEvent(Lifecycle.Event.ON_CREATE);
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new EmptyActivityLifecycleCallbacks() { // from class: androidx.lifecycle.ProcessLifecycleOwner.3
            @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                if (Build.VERSION.SDK_INT < 29) {
                    ReportFragment.f(activity).g(ProcessLifecycleOwner.this.f6288h);
                }
            }

            @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                ProcessLifecycleOwner.this.a();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            @RequiresApi(29)
            public void onActivityPreCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
                activity.registerActivityLifecycleCallbacks(new EmptyActivityLifecycleCallbacks() { // from class: androidx.lifecycle.ProcessLifecycleOwner.3.1
                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPostResumed(@NonNull Activity activity2) {
                        ProcessLifecycleOwner.this.b();
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPostStarted(@NonNull Activity activity2) {
                        ProcessLifecycleOwner.this.c();
                    }
                });
            }

            @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                ProcessLifecycleOwner.this.d();
            }
        });
    }

    void f() {
        if (this.f6282b == 0) {
            this.f6283c = true;
            this.f6286f.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE);
        }
    }

    void g() {
        if (this.f6281a == 0 && this.f6283c) {
            this.f6286f.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
            this.f6284d = true;
        }
    }

    @Override // androidx.lifecycle.LifecycleOwner
    @NonNull
    public Lifecycle getLifecycle() {
        return this.f6286f;
    }
}
