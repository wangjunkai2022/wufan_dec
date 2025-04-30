package com.xinzhu.haunted.android.content.res;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtAssetManager.java */
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63250b = "b";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63251c = com.xinzhu.haunted.d.b("android.content.res.AssetManager");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Method> f63252d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63253e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Method> f63254f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f63255g = false;

    /* renamed from: h  reason: collision with root package name */
    private static AtomicReference<Constructor> f63256h = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    private static boolean f63257i = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63258a;

    public b(Object egoInstance) {
        this.f63258a = egoInstance;
    }

    public static boolean b() {
        if (f63256h.get() == null) {
            if (f63257i) {
                return false;
            }
            f63256h.compareAndSet(null, com.xinzhu.haunted.d.d(f63251c, "HtAssetManager", new Object[0]));
            f63257i = true;
            return f63256h.get() != null;
        }
        return true;
    }

    public static b e() {
        if (b()) {
            try {
                b bVar = new b();
                bVar.f63258a = f63256h.get().newInstance(new Object[0]);
                return bVar;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            } catch (InstantiationException e5) {
                e5.printStackTrace();
                return null;
            } catch (InvocationTargetException e6) {
                e6.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public Integer a(String arg0) {
        if (c(arg0)) {
            try {
                return (Integer) f63254f.get().invoke(this.f63258a, arg0);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean c(String arg0) {
        if (f63254f.get() == null) {
            if (f63255g) {
                return false;
            }
            f63254f.compareAndSet(null, com.xinzhu.haunted.d.g(f63251c, "addAssetPath", String.class));
            f63255g = true;
            return f63254f.get() != null;
        }
        return true;
    }

    public boolean d(Object arg0, boolean arg1) {
        if (f63252d.get() == null) {
            if (f63253e) {
                return false;
            }
            f63252d.compareAndSet(null, com.xinzhu.haunted.d.g(f63251c, "setApkAssets", "[Landroid.content.res.ApkAssets;", Boolean.TYPE));
            f63253e = true;
            return f63252d.get() != null;
        }
        return true;
    }

    public void f(Object arg0, boolean arg1) {
        if (d(arg0, arg1)) {
            try {
                f63252d.get().invoke(this.f63258a, arg0, Boolean.valueOf(arg1));
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
        }
    }

    private b() {
    }
}
