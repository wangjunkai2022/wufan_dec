package androidx.core.app;

import android.app.Activity;
import android.app.Application;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
final class ActivityRecreator {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3725a = "ActivityRecreator";

    /* renamed from: b  reason: collision with root package name */
    protected static final Class<?> f3726b;

    /* renamed from: c  reason: collision with root package name */
    protected static final Field f3727c;

    /* renamed from: d  reason: collision with root package name */
    protected static final Field f3728d;

    /* renamed from: e  reason: collision with root package name */
    protected static final Method f3729e;

    /* renamed from: f  reason: collision with root package name */
    protected static final Method f3730f;

    /* renamed from: g  reason: collision with root package name */
    protected static final Method f3731g;

    /* renamed from: h  reason: collision with root package name */
    private static final Handler f3732h = new Handler(Looper.getMainLooper());

    /* loaded from: classes.dex */
    private static final class LifecycleCheckCallbacks implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a  reason: collision with root package name */
        Object f3739a;

        /* renamed from: b  reason: collision with root package name */
        private Activity f3740b;

        /* renamed from: c  reason: collision with root package name */
        private final int f3741c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f3742d = false;

        /* renamed from: e  reason: collision with root package name */
        private boolean f3743e = false;

        /* renamed from: f  reason: collision with root package name */
        private boolean f3744f = false;

        LifecycleCheckCallbacks(@NonNull Activity activity) {
            this.f3740b = activity;
            this.f3741c = activity.hashCode();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.f3740b == activity) {
                this.f3740b = null;
                this.f3743e = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (!this.f3743e || this.f3744f || this.f3742d || !ActivityRecreator.h(this.f3739a, this.f3741c, activity)) {
                return;
            }
            this.f3744f = true;
            this.f3739a = null;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (this.f3740b == activity) {
                this.f3742d = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    static {
        Class<?> a4 = a();
        f3726b = a4;
        f3727c = b();
        f3728d = f();
        f3729e = d(a4);
        f3730f = c(a4);
        f3731g = e(a4);
    }

    private ActivityRecreator() {
    }

    private static Class<?> a() {
        try {
            return Class.forName("android.app.ActivityThread");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Field b() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method c(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method d(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE, String.class);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method e(Class<?> cls) {
        if (g() && cls != null) {
            try {
                Class<?> cls2 = Boolean.TYPE;
                Method declaredMethod = cls.getDeclaredMethod("requestRelaunchActivity", IBinder.class, List.class, List.class, Integer.TYPE, cls2, Configuration.class, Configuration.class, cls2, cls2);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    private static Field f() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mToken");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static boolean g() {
        int i2 = Build.VERSION.SDK_INT;
        return i2 == 26 || i2 == 27;
    }

    protected static boolean h(Object obj, int i2, Activity activity) {
        try {
            final Object obj2 = f3728d.get(activity);
            if (obj2 == obj && activity.hashCode() == i2) {
                final Object obj3 = f3727c.get(activity);
                f3732h.postAtFrontOfQueue(new Runnable() { // from class: androidx.core.app.ActivityRecreator.3
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            Method method = ActivityRecreator.f3729e;
                            if (method != null) {
                                method.invoke(obj3, obj2, Boolean.FALSE, "AppCompat recreation");
                            } else {
                                ActivityRecreator.f3730f.invoke(obj3, obj2, Boolean.FALSE);
                            }
                        } catch (RuntimeException e4) {
                            if (e4.getClass() == RuntimeException.class && e4.getMessage() != null && e4.getMessage().startsWith("Unable to stop")) {
                                throw e4;
                            }
                        } catch (Throwable unused) {
                        }
                    }
                });
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean i(@NonNull Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        } else if (g() && f3731g == null) {
            return false;
        } else {
            if (f3730f == null && f3729e == null) {
                return false;
            }
            try {
                final Object obj2 = f3728d.get(activity);
                if (obj2 == null || (obj = f3727c.get(activity)) == null) {
                    return false;
                }
                final Application application = activity.getApplication();
                final LifecycleCheckCallbacks lifecycleCheckCallbacks = new LifecycleCheckCallbacks(activity);
                application.registerActivityLifecycleCallbacks(lifecycleCheckCallbacks);
                Handler handler = f3732h;
                handler.post(new Runnable() { // from class: androidx.core.app.ActivityRecreator.1
                    @Override // java.lang.Runnable
                    public void run() {
                        LifecycleCheckCallbacks.this.f3739a = obj2;
                    }
                });
                if (g()) {
                    Method method = f3731g;
                    Boolean bool = Boolean.FALSE;
                    method.invoke(obj, obj2, null, null, 0, bool, null, null, bool, bool);
                } else {
                    activity.recreate();
                }
                handler.post(new Runnable() { // from class: androidx.core.app.ActivityRecreator.2
                    @Override // java.lang.Runnable
                    public void run() {
                        application.unregisterActivityLifecycleCallbacks(lifecycleCheckCallbacks);
                    }
                });
                return true;
            } catch (Throwable unused) {
                return false;
            }
        }
    }
}
