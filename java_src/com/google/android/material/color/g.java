package com.google.android.material.color;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import com.google.android.material.R;
import com.google.android.material.color.h;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: DynamicColors.java */
/* loaded from: classes2.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f14582a = {R.attr.dynamicColorThemeOverlay};

    /* renamed from: b  reason: collision with root package name */
    private static final c f14583b;
    @SuppressLint({"PrivateApi"})

    /* renamed from: c  reason: collision with root package name */
    private static final c f14584c;

    /* renamed from: d  reason: collision with root package name */
    private static final Map<String, c> f14585d;

    /* renamed from: e  reason: collision with root package name */
    private static final Map<String, c> f14586e;

    /* renamed from: f  reason: collision with root package name */
    private static final int f14587f = 0;

    /* compiled from: DynamicColors.java */
    /* loaded from: classes2.dex */
    class a implements c {
        a() {
        }

        @Override // com.google.android.material.color.g.c
        public boolean isSupported() {
            return true;
        }
    }

    /* compiled from: DynamicColors.java */
    /* loaded from: classes2.dex */
    class b implements c {

        /* renamed from: a  reason: collision with root package name */
        private Long f14588a;

        b() {
        }

        @Override // com.google.android.material.color.g.c
        public boolean isSupported() {
            if (this.f14588a == null) {
                try {
                    Method declaredMethod = Build.class.getDeclaredMethod("getLong", String.class);
                    declaredMethod.setAccessible(true);
                    this.f14588a = Long.valueOf(((Long) declaredMethod.invoke(null, "ro.build.version.oneui")).longValue());
                } catch (Exception unused) {
                    this.f14588a = -1L;
                }
            }
            return this.f14588a.longValue() >= 40100;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DynamicColors.java */
    /* loaded from: classes2.dex */
    public interface c {
        boolean isSupported();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DynamicColors.java */
    /* loaded from: classes2.dex */
    public static class d implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a  reason: collision with root package name */
        private final h f14589a;

        d(@NonNull h hVar) {
            this.f14589a = hVar;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
            g.k(activity, this.f14589a.e(), this.f14589a.d(), this.f14589a.c());
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(@NonNull Activity activity) {
        }
    }

    /* compiled from: DynamicColors.java */
    /* loaded from: classes2.dex */
    public interface e {
        void a(@NonNull Activity activity);
    }

    /* compiled from: DynamicColors.java */
    /* loaded from: classes2.dex */
    public interface f {
        boolean a(@NonNull Activity activity, @StyleRes int i2);
    }

    static {
        a aVar = new a();
        f14583b = aVar;
        b bVar = new b();
        f14584c = bVar;
        HashMap hashMap = new HashMap();
        hashMap.put("google", aVar);
        hashMap.put("hmd global", aVar);
        hashMap.put("infinix", aVar);
        hashMap.put("infinix mobility limited", aVar);
        hashMap.put("itel", aVar);
        hashMap.put("kyocera", aVar);
        hashMap.put("lenovo", aVar);
        hashMap.put("lge", aVar);
        hashMap.put("motorola", aVar);
        hashMap.put("nothing", aVar);
        hashMap.put("oneplus", aVar);
        hashMap.put("oppo", aVar);
        hashMap.put("realme", aVar);
        hashMap.put("robolectric", aVar);
        hashMap.put("samsung", bVar);
        hashMap.put("sharp", aVar);
        hashMap.put("sony", aVar);
        hashMap.put("tcl", aVar);
        hashMap.put("tecno", aVar);
        hashMap.put("tecno mobile limited", aVar);
        hashMap.put("vivo", aVar);
        hashMap.put("xiaomi", aVar);
        f14585d = Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("asus", aVar);
        hashMap2.put("jio", aVar);
        f14586e = Collections.unmodifiableMap(hashMap2);
    }

    private g() {
    }

    @Deprecated
    public static void b(@NonNull Activity activity) {
        j(activity);
    }

    @Deprecated
    public static void c(@NonNull Activity activity, @StyleRes int i2) {
        l(activity, new h.c().g(i2).d());
    }

    @Deprecated
    public static void d(@NonNull Activity activity, @NonNull f fVar) {
        l(activity, new h.c().f(fVar).d());
    }

    public static void e(@NonNull Application application) {
        i(application, new h.c().d());
    }

    @Deprecated
    public static void f(@NonNull Application application, @StyleRes int i2) {
        i(application, new h.c().g(i2).d());
    }

    @Deprecated
    public static void g(@NonNull Application application, @StyleRes int i2, @NonNull f fVar) {
        i(application, new h.c().g(i2).f(fVar).d());
    }

    @Deprecated
    public static void h(@NonNull Application application, @NonNull f fVar) {
        i(application, new h.c().f(fVar).d());
    }

    public static void i(@NonNull Application application, @NonNull h hVar) {
        application.registerActivityLifecycleCallbacks(new d(hVar));
    }

    public static void j(@NonNull Activity activity) {
        l(activity, new h.c().d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void k(@NonNull Activity activity, @StyleRes int i2, @NonNull f fVar, @NonNull e eVar) {
        if (n()) {
            if (i2 == 0) {
                i2 = m(activity);
            }
            if (i2 == 0 || !fVar.a(activity, i2)) {
                return;
            }
            o.a(activity, i2);
            eVar.a(activity);
        }
    }

    public static void l(@NonNull Activity activity, @NonNull h hVar) {
        k(activity, hVar.e(), hVar.d(), hVar.c());
    }

    private static int m(@NonNull Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f14582a);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    @ChecksSdkIntAtLeast(api = 31)
    @SuppressLint({"DefaultLocale"})
    public static boolean n() {
        if (Build.VERSION.SDK_INT < 31) {
            return false;
        }
        c cVar = f14585d.get(Build.MANUFACTURER.toLowerCase());
        if (cVar == null) {
            cVar = f14586e.get(Build.BRAND.toLowerCase());
        }
        return cVar != null && cVar.isSupported();
    }

    @NonNull
    public static Context o(@NonNull Context context) {
        return p(context, 0);
    }

    @NonNull
    public static Context p(@NonNull Context context, @StyleRes int i2) {
        if (n()) {
            if (i2 == 0) {
                i2 = m(context);
            }
            return i2 == 0 ? context : new ContextThemeWrapper(context, i2);
        }
        return context;
    }
}
