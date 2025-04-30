package com.ss.android.socialbase.downloader.a;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.MainThread;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* compiled from: AppStatusManager.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private Application f57765a;

    /* renamed from: b  reason: collision with root package name */
    private c f57766b;

    /* renamed from: c  reason: collision with root package name */
    private final List<InterfaceC0308a> f57767c;

    /* renamed from: d  reason: collision with root package name */
    private int f57768d;

    /* renamed from: e  reason: collision with root package name */
    private WeakReference<Activity> f57769e;

    /* renamed from: f  reason: collision with root package name */
    private volatile int f57770f;

    /* renamed from: g  reason: collision with root package name */
    private volatile boolean f57771g;

    /* renamed from: h  reason: collision with root package name */
    private final Application.ActivityLifecycleCallbacks f57772h;

    /* compiled from: AppStatusManager.java */
    /* renamed from: com.ss.android.socialbase.downloader.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0308a {
        @MainThread
        void b();

        @MainThread
        void c();
    }

    /* compiled from: AppStatusManager.java */
    /* loaded from: classes4.dex */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        private static final a f57774a = new a();
    }

    /* compiled from: AppStatusManager.java */
    /* loaded from: classes4.dex */
    public interface c {
    }

    private Object[] d() {
        Object[] array;
        synchronized (this.f57767c) {
            array = this.f57767c.size() > 0 ? this.f57767c.toArray() : null;
        }
        return array;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        this.f57770f = 1;
        Object[] d4 = d();
        if (d4 != null) {
            for (Object obj : d4) {
                ((InterfaceC0308a) obj).b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.f57770f = 0;
        Object[] d4 = d();
        if (d4 != null) {
            for (Object obj : d4) {
                ((InterfaceC0308a) obj).c();
            }
        }
    }

    private boolean g() {
        try {
            Application application = this.f57765a;
            if (application == null) {
                return false;
            }
            String packageName = application.getPackageName();
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) application.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningAppProcesses();
            if (runningAppProcesses != null && !runningAppProcesses.isEmpty()) {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (runningAppProcessInfo.importance == 100 && TextUtils.equals(runningAppProcessInfo.processName, packageName)) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    private a() {
        this.f57767c = new ArrayList();
        this.f57770f = -1;
        this.f57771g = false;
        this.f57772h = new Application.ActivityLifecycleCallbacks() { // from class: com.ss.android.socialbase.downloader.a.a.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                a.this.f57771g = true;
                if (a.this.f57768d != 0 || activity == null) {
                    return;
                }
                a.this.f57768d = activity.hashCode();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                int i2 = a.this.f57768d;
                a.this.f57771g = false;
                a.this.f57768d = activity != null ? activity.hashCode() : i2;
                if (i2 == 0) {
                    a.this.e();
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                a.this.f57769e = new WeakReference(activity);
                int i2 = a.this.f57768d;
                a.this.f57768d = activity != null ? activity.hashCode() : i2;
                a.this.f57771g = false;
                if (i2 == 0) {
                    a.this.e();
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                if (activity != null && activity.hashCode() == a.this.f57768d) {
                    a.this.f57768d = 0;
                    a.this.f();
                }
                a.this.f57771g = false;
            }
        };
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [int, boolean] */
    public boolean b() {
        int i2 = this.f57770f;
        int i4 = i2;
        if (i2 == -1) {
            ?? g4 = g();
            this.f57770f = g4;
            i4 = g4;
        }
        return i4 == 1;
    }

    public boolean c() {
        return b() && !this.f57771g;
    }

    public static a a() {
        return b.f57774a;
    }

    public void b(InterfaceC0308a interfaceC0308a) {
        synchronized (this.f57767c) {
            this.f57767c.remove(interfaceC0308a);
        }
    }

    public void a(Context context) {
        if (this.f57765a == null && (context instanceof Application)) {
            synchronized (this) {
                if (this.f57765a == null) {
                    Application application = (Application) context;
                    this.f57765a = application;
                    application.registerActivityLifecycleCallbacks(this.f57772h);
                }
            }
        }
    }

    public void a(c cVar) {
        this.f57766b = cVar;
    }

    public void a(InterfaceC0308a interfaceC0308a) {
        if (interfaceC0308a == null) {
            return;
        }
        synchronized (this.f57767c) {
            if (!this.f57767c.contains(interfaceC0308a)) {
                this.f57767c.add(interfaceC0308a);
            }
        }
    }
}
