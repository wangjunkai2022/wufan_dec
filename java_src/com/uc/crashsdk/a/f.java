package com.uc.crashsdk.a;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.HashMap;
/* compiled from: ProGuard */
/* loaded from: classes4.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f60189a = true;

    /* renamed from: b  reason: collision with root package name */
    private static volatile HandlerThread f60190b;

    /* renamed from: c  reason: collision with root package name */
    private static volatile HandlerThread f60191c;

    /* renamed from: d  reason: collision with root package name */
    private static volatile HandlerThread f60192d;

    /* renamed from: e  reason: collision with root package name */
    private static Handler f60193e;

    /* renamed from: f  reason: collision with root package name */
    private static Handler f60194f;

    /* renamed from: g  reason: collision with root package name */
    private static Handler f60195g;

    /* renamed from: h  reason: collision with root package name */
    private static Handler f60196h;

    /* renamed from: i  reason: collision with root package name */
    private static final HashMap<Object, Object[]> f60197i = new HashMap<>();

    public static Handler a(int i2) {
        if (i2 == 0) {
            if (f60190b == null) {
                a();
            }
            return f60193e;
        } else if (i2 == 1) {
            if (f60191c == null) {
                b();
            }
            return f60194f;
        } else if (i2 == 2) {
            if (f60195g == null) {
                f60195g = new Handler(Looper.getMainLooper());
            }
            return f60195g;
        } else if (i2 == 3) {
            if (f60196h == null) {
                c();
            }
            return f60196h;
        } else {
            throw new RuntimeException("unknown thread type: " + i2);
        }
    }

    public static boolean b(Runnable runnable) {
        Object[] objArr;
        if (runnable == null) {
            return false;
        }
        HashMap<Object, Object[]> hashMap = f60197i;
        synchronized (hashMap) {
            objArr = hashMap.get(runnable);
        }
        return objArr != null;
    }

    private static synchronized void c() {
        synchronized (f.class) {
            if (f60192d == null) {
                HandlerThread handlerThread = new HandlerThread("CrashSDKAnrHandler", 0);
                f60192d = handlerThread;
                handlerThread.start();
                f60196h = new Handler(f60192d.getLooper());
            }
        }
    }

    private static synchronized void b() {
        synchronized (f.class) {
            if (f60191c == null) {
                HandlerThread handlerThread = new HandlerThread("CrashSDKNormalHandler", 0);
                f60191c = handlerThread;
                handlerThread.start();
                f60194f = new Handler(f60191c.getLooper());
            }
        }
    }

    public static boolean a(int i2, Runnable runnable, long j4) {
        Handler a4;
        if (runnable == null || (a4 = a(i2)) == null) {
            return false;
        }
        e eVar = new e(10, new Object[]{runnable});
        HashMap<Object, Object[]> hashMap = f60197i;
        synchronized (hashMap) {
            hashMap.put(runnable, new Object[]{eVar, Integer.valueOf(i2)});
        }
        return a4.postDelayed(eVar, j4);
    }

    public static void a(int i2, Object[] objArr) {
        if (i2 != 10) {
            if (!f60189a) {
                throw new AssertionError();
            }
        } else if (!f60189a && objArr == null) {
            throw new AssertionError();
        } else {
            Runnable runnable = (Runnable) objArr[0];
            HashMap<Object, Object[]> hashMap = f60197i;
            synchronized (hashMap) {
                if (hashMap.get(runnable) != null) {
                    hashMap.remove(runnable);
                }
            }
            runnable.run();
        }
    }

    public static boolean a(int i2, Runnable runnable) {
        return a(i2, runnable, 0L);
    }

    public static void a(Runnable runnable) {
        Object[] objArr;
        if (runnable == null) {
            return;
        }
        HashMap<Object, Object[]> hashMap = f60197i;
        synchronized (hashMap) {
            objArr = hashMap.get(runnable);
        }
        if (objArr == null) {
            return;
        }
        int intValue = ((Integer) objArr[1]).intValue();
        Handler handler = null;
        if (intValue == 0) {
            handler = f60193e;
        } else if (intValue == 1) {
            handler = f60194f;
        } else if (intValue == 2) {
            handler = f60195g;
        }
        if (handler != null) {
            handler.removeCallbacks((Runnable) objArr[0]);
        }
        synchronized (hashMap) {
            if (hashMap.get(runnable) != null) {
                hashMap.remove(runnable);
            }
        }
    }

    private static synchronized void a() {
        synchronized (f.class) {
            if (f60190b == null) {
                HandlerThread handlerThread = new HandlerThread("CrashSDKBkgdHandler", 10);
                f60190b = handlerThread;
                handlerThread.start();
                f60193e = new Handler(f60190b.getLooper());
            }
        }
    }
}
