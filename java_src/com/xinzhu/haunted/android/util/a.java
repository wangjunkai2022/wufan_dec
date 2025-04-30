package com.xinzhu.haunted.android.util;

import android.util.AtomicFile;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtAtomicFile.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63613b = "a";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63614c = com.xinzhu.haunted.d.a(AtomicFile.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Method> f63615d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63616e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Constructor> f63617f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f63618g = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63619a;

    public a(Object egoInstance) {
        this.f63619a = egoInstance;
    }

    public static boolean a(File arg0, String arg1) {
        if (f63617f.get() == null) {
            if (f63618g) {
                return false;
            }
            f63617f.compareAndSet(null, com.xinzhu.haunted.d.d(f63614c, "HtAtomicFile", File.class, String.class));
            f63618g = true;
            return f63617f.get() != null;
        }
        return true;
    }

    public static a c(File arg0, String arg1) {
        if (a(arg0, arg1)) {
            try {
                a aVar = new a();
                aVar.f63619a = f63617f.get().newInstance(arg0, arg1);
                return aVar;
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

    public boolean b() {
        if (f63615d.get() == null) {
            if (f63616e) {
                return false;
            }
            f63615d.compareAndSet(null, com.xinzhu.haunted.d.g(f63614c, "exists", new Object[0]));
            f63616e = true;
            return f63615d.get() != null;
        }
        return true;
    }

    public boolean d() {
        if (b()) {
            try {
                return ((Boolean) f63615d.get().invoke(this.f63619a, new Object[0])).booleanValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private a() {
    }
}
