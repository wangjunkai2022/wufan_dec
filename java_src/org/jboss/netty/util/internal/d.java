package org.jboss.netty.util.internal;

import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Queue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: DetectionUtil.java */
/* loaded from: classes5.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final int f73733a = f();

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f73734b = b(AtomicInteger.class.getClassLoader());

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f73735c = j.c("os.name", "").toLowerCase().contains("win");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DetectionUtil.java */
    /* loaded from: classes5.dex */
    public static class a implements PrivilegedExceptionAction<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Class f73736a;

        a(Class cls) {
            this.f73736a = cls;
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Boolean run() throws Exception {
            this.f73736a.getDeclaredField("theUnsafe");
            return Boolean.TRUE;
        }
    }

    private d() {
    }

    public static boolean a() {
        return f73734b;
    }

    private static boolean b(ClassLoader classLoader) {
        boolean d4;
        if (j.d("io.netty.noUnsafe", false)) {
            return false;
        }
        if (j.a("io.netty.tryUnsafe")) {
            d4 = j.d("io.netty.tryUnsafe", true);
        } else {
            d4 = j.d("org.jboss.netty.tryUnsafe", true);
        }
        if (d4) {
            try {
                return c(Class.forName("sun.misc.Unsafe", true, classLoader));
            } catch (Exception unused) {
                return false;
            }
        }
        return false;
    }

    private static boolean c(Class<?> cls) throws PrivilegedActionException {
        return ((Boolean) AccessController.doPrivileged(new a(cls))).booleanValue();
    }

    public static boolean d() {
        return f73735c;
    }

    public static int e() {
        return f73733a;
    }

    private static int f() {
        try {
            Class.forName("android.app.Application");
            return 6;
        } catch (ClassNotFoundException unused) {
            try {
                try {
                    Class.forName("java.util.concurrent.LinkedTransferQueue", false, BlockingQueue.class.getClassLoader());
                    return 7;
                } catch (Exception unused2) {
                    Class.forName("java.util.ArrayDeque", false, Queue.class.getClassLoader());
                    return 6;
                }
            } catch (Exception unused3) {
                return 5;
            }
        }
    }
}
