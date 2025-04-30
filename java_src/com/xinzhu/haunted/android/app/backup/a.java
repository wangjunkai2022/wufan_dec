package com.xinzhu.haunted.android.app.backup;

import android.os.IBinder;
import android.os.IInterface;
import com.xinzhu.haunted.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIBackupManager.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f62446a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f62447b = d.b("android.app.backup.IBackupManager");

    /* compiled from: HtIBackupManager.java */
    /* renamed from: com.xinzhu.haunted.android.app.backup.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0370a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f62448a = d.b("android.app.backup.IBackupManager$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f62449b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f62450c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f62449b.get().invoke(null, arg0);
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

        public static boolean b(IBinder arg0) {
            if (f62449b.get() == null) {
                if (f62450c) {
                    return false;
                }
                f62449b.compareAndSet(null, d.g(f62448a, "asInterface", IBinder.class));
                f62450c = true;
                return f62449b.get() != null;
            }
            return true;
        }
    }
}
