package com.xinzhu.haunted.android.os;

import android.os.WorkSource;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtWorkSource.java */
/* loaded from: classes3.dex */
public final class w {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63552b = "w";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63553c = com.xinzhu.haunted.d.a(WorkSource.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Constructor> f63554d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63555e = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63556a;

    public w(Object egoInstance) {
        this.f63556a = egoInstance;
    }

    public static boolean a(WorkSource arg0) {
        if (f63554d.get() == null) {
            if (f63555e) {
                return false;
            }
            f63554d.compareAndSet(null, com.xinzhu.haunted.d.d(f63553c, "HtWorkSource", WorkSource.class));
            f63555e = true;
            return f63554d.get() != null;
        }
        return true;
    }

    public static w b(WorkSource arg0) {
        if (a(arg0)) {
            try {
                w wVar = new w();
                wVar.f63556a = f63554d.get().newInstance(arg0);
                return wVar;
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

    private w() {
    }
}
