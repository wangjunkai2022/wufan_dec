package com.xinzhu.haunted.android.content;

import android.content.SyncAdapterType;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtSyncAdapterType.java */
/* loaded from: classes3.dex */
public final class q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63228b = "q";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63229c = com.xinzhu.haunted.d.a(SyncAdapterType.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Constructor> f63230d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63231e = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63232a;

    public q(Object egoInstance) {
        this.f63232a = egoInstance;
    }

    public static boolean a(String arg0, String arg1, boolean arg2, boolean arg3, boolean arg4, boolean arg5, String arg6, String arg7) {
        if (f63230d.get() == null) {
            if (f63231e) {
                return false;
            }
            AtomicReference<Constructor> atomicReference = f63230d;
            Class<?> cls = f63229c;
            Class cls2 = Boolean.TYPE;
            atomicReference.compareAndSet(null, com.xinzhu.haunted.d.d(cls, "HtSyncAdapterType", String.class, String.class, cls2, cls2, cls2, cls2, String.class, String.class));
            f63231e = true;
            return f63230d.get() != null;
        }
        return true;
    }

    public static q b(String arg0, String arg1, boolean arg2, boolean arg3, boolean arg4, boolean arg5, String arg6, String arg7) {
        if (a(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)) {
            try {
                q qVar = new q();
                qVar.f63232a = f63230d.get().newInstance(arg0, arg1, Boolean.valueOf(arg2), Boolean.valueOf(arg3), Boolean.valueOf(arg4), Boolean.valueOf(arg5), arg6, arg7);
                return qVar;
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

    private q() {
    }
}
