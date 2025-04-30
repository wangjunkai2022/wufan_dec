package com.xinzhu.overmind.client.hook.delegate;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.Instrumentation;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.UserHandle;
import com.xinzhu.haunted.android.app.g;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.e;
import com.xinzhu.overmind.client.hook.fixer.ActivityFixer;
import com.xinzhu.overmind.client.hook.fixer.ContextFixer;
import java.lang.reflect.Field;
/* compiled from: AppInstrumentation.java */
/* loaded from: classes.dex */
public final class b extends InstrumentationDelegate implements e {

    /* renamed from: a  reason: collision with root package name */
    private static final String f64099a = b.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private static b f64100b;

    private void b() {
        com.xinzhu.overmind.client.hook.d.c().b(com.xinzhu.overmind.client.hook.proxies.app.b.class);
        com.xinzhu.overmind.client.hook.d.c().b(b.class);
    }

    private boolean d(Instrumentation instrumentation) {
        if (instrumentation instanceof b) {
            return true;
        }
        Class<?> cls = instrumentation.getClass();
        if (Instrumentation.class.equals(cls)) {
            return false;
        }
        do {
            Field[] declaredFields = cls.getDeclaredFields();
            if (declaredFields != null) {
                for (Field field : declaredFields) {
                    if (Instrumentation.class.isAssignableFrom(field.getType())) {
                        field.setAccessible(true);
                        try {
                            if (field.get(instrumentation) instanceof b) {
                                return true;
                            }
                        } catch (IllegalAccessException unused) {
                            return false;
                        }
                    }
                }
            }
            cls = cls.getSuperclass();
        } while (!Instrumentation.class.equals(cls));
        return false;
    }

    public static b e() {
        if (f64100b == null) {
            synchronized (b.class) {
                if (f64100b == null) {
                    f64100b = new b();
                }
            }
        }
        return f64100b;
    }

    private Instrumentation f() {
        return new g(Overmind.mainThread()).U();
    }

    private boolean g(int requestedOrientation) {
        return Build.VERSION.SDK_INT >= 18 ? requestedOrientation == 0 || requestedOrientation == 6 || requestedOrientation == 8 || requestedOrientation == 11 : requestedOrientation == 0 || requestedOrientation == 6 || requestedOrientation == 8;
    }

    private void h(Instrumentation target) {
        Field[] declaredFields;
        try {
            for (Field field : target.getClass().getDeclaredFields()) {
                if (field.getType().isAssignableFrom(Instrumentation.class)) {
                    field.setAccessible(true);
                    field.set(target, this.root);
                    com.xinzhu.overmind.b.c(f64099a, "resolve third party conflict instrumentation" + target.getClass().getName());
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return !(f() instanceof b);
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public void c() {
        try {
            Instrumentation f4 = f();
            if (f4 == this) {
                return;
            }
            if (this.root != null) {
                h(f4);
            }
            this.root = f4;
            new g(Overmind.mainThread()).k0(this);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate, android.app.Instrumentation
    public void callActivityOnCreate(Activity activity, Bundle icicle) {
        b();
        StringBuilder sb = new StringBuilder();
        sb.append("callActivityOnCreate: ");
        sb.append(activity.getClass().getName());
        ActivityInfo h4 = new com.xinzhu.haunted.android.app.a(activity).h();
        ContextFixer.fix(activity);
        ActivityFixer.fix(activity);
        int i2 = h4.theme;
        if (i2 != 0) {
            activity.setTheme(i2);
        }
        activity.setRequestedOrientation(h4.screenOrientation);
        super.callActivityOnCreate(activity, icicle);
        Overmind.get().getActivityLifecycleCallback().onActivityCreated(activity, icicle);
    }

    @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate, android.app.Instrumentation
    public void callActivityOnDestroy(Activity activity) {
        super.callActivityOnDestroy(activity);
        Overmind.get().getActivityLifecycleCallback().onActivityDestroyed(activity);
    }

    @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate, android.app.Instrumentation
    public void callActivityOnPause(Activity activity) {
        super.callActivityOnPause(activity);
        Overmind.get().getActivityLifecycleCallback().onActivityPaused(activity);
    }

    @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate, android.app.Instrumentation
    public void callActivityOnResume(Activity activity) {
        super.callActivityOnResume(activity);
        Overmind.get().getActivityLifecycleCallback().onActivityResumed(activity);
    }

    @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate, android.app.Instrumentation
    public void callActivityOnStart(Activity activity) {
        super.callActivityOnStart(activity);
        Overmind.get().getActivityLifecycleCallback().onActivityStarted(activity);
    }

    @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate, android.app.Instrumentation
    public void callActivityOnStop(Activity activity) {
        super.callActivityOnStop(activity);
        Overmind.get().getActivityLifecycleCallback().onActivityStopped(activity);
    }

    @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate, android.app.Instrumentation
    public void callApplicationOnCreate(Application app2) {
        b();
        super.callApplicationOnCreate(app2);
    }

    @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate
    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Activity activity, Intent intent, int i2, Bundle bundle) throws Throwable {
        return super.execStartActivity(context, iBinder, iBinder2, activity, intent, i2, bundle);
    }

    @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate, android.app.Instrumentation
    public Activity newActivity(ClassLoader cl, String className, Intent intent) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        try {
            return super.newActivity(cl, className, intent);
        } catch (ClassNotFoundException unused) {
            return this.root.newActivity(cl, className, intent);
        }
    }

    @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate, android.app.Instrumentation
    public Application newApplication(ClassLoader cl, String className, Context context) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        ContextFixer.fix(context);
        com.xinzhu.overmind.client.e.getClient().loadXposed(context);
        return super.newApplication(cl, className, context);
    }

    @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate
    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, String str, Intent intent, int i2, Bundle bundle) throws Throwable {
        return super.execStartActivity(context, iBinder, iBinder2, str, intent, i2, bundle);
    }

    @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate
    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Fragment fragment, Intent intent, int i2) throws Throwable {
        return super.execStartActivity(context, iBinder, iBinder2, fragment, intent, i2);
    }

    @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate
    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Activity activity, Intent intent, int i2) throws Throwable {
        return super.execStartActivity(context, iBinder, iBinder2, activity, intent, i2);
    }

    @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate
    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Fragment fragment, Intent intent, int i2, Bundle bundle) throws Throwable {
        return super.execStartActivity(context, iBinder, iBinder2, fragment, intent, i2, bundle);
    }

    @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate
    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Activity activity, Intent intent, int i2, Bundle bundle, UserHandle userHandle) throws Throwable {
        return super.execStartActivity(context, iBinder, iBinder2, activity, intent, i2, bundle, userHandle);
    }
}
