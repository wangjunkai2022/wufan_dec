package notchtools.geek.com.notchtools.helper;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* compiled from: ThreadUtils.java */
/* loaded from: classes5.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static Handler f73103a;

    /* renamed from: c  reason: collision with root package name */
    private static Handler f73105c;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f73104b = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static final Object f73106d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private static final Executor f73107e = Executors.newFixedThreadPool(4, new b());

    /* compiled from: ThreadUtils.java */
    /* loaded from: classes5.dex */
    static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f73108a;

        a(Object obj) {
            this.f73108a = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.a().removeCallbacksAndMessages(this.f73108a);
        }
    }

    /* compiled from: ThreadUtils.java */
    /* loaded from: classes5.dex */
    static class b implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private int f73109a = -1;

        b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            this.f73109a++;
            return new Thread(runnable, "ThreadUtils: " + this.f73109a);
        }
    }

    /* compiled from: ThreadUtils.java */
    /* loaded from: classes5.dex */
    static class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e f73110a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ InterfaceC0485d f73111b;

        /* compiled from: ThreadUtils.java */
        /* loaded from: classes5.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Object f73112a;

            a(Object obj) {
                this.f73112a = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    c.this.f73111b.a(this.f73112a);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }

        c(e eVar, InterfaceC0485d interfaceC0485d) {
            this.f73110a = eVar;
            this.f73111b = interfaceC0485d;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            try {
                obj = this.f73110a.a();
            } catch (Throwable th) {
                th.printStackTrace();
                obj = null;
            }
            if (this.f73111b == null) {
                return;
            }
            d.p(new a(obj));
        }
    }

    /* compiled from: ThreadUtils.java */
    /* renamed from: notchtools.geek.com.notchtools.helper.d$d  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public interface InterfaceC0485d<T> {
        void a(@Nullable T t3);
    }

    /* compiled from: ThreadUtils.java */
    /* loaded from: classes5.dex */
    public interface e<T> {
        @Nullable
        T a();
    }

    static /* synthetic */ Handler a() {
        return i();
    }

    public static void b(Context context) {
        if (context != null) {
            i().removeCallbacksAndMessages(Integer.valueOf(context.hashCode()));
        }
    }

    public static void c(Runnable runnable) {
        i().removeCallbacks(runnable);
    }

    public static void d(Context context) {
        if (context != null) {
            k().removeCallbacksAndMessages(Integer.valueOf(context.hashCode()));
        }
    }

    public static void e(Runnable runnable) {
        k().removeCallbacks(runnable);
    }

    public static void f(Context context, long j4) {
        if (context != null) {
            r(new a(Integer.valueOf(context.hashCode())), j4);
        }
    }

    public static void g(Runnable runnable) {
        if (runnable != null) {
            try {
                f73107e.execute(runnable);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static <T> void h(e<T> eVar, InterfaceC0485d<T> interfaceC0485d) {
        if (eVar == null) {
            return;
        }
        f73107e.execute(new c(eVar, interfaceC0485d));
    }

    private static Handler i() {
        Handler handler;
        synchronized (f73106d) {
            if (f73105c == null) {
                HandlerThread handlerThread = new HandlerThread("daemon-handler-thread");
                handlerThread.start();
                f73105c = new Handler(handlerThread.getLooper());
            }
            handler = f73105c;
        }
        return handler;
    }

    public static String j() {
        return Thread.currentThread().getName() + " : " + Thread.currentThread().getId();
    }

    private static Handler k() {
        Handler handler;
        synchronized (f73104b) {
            if (f73103a == null) {
                f73103a = new Handler(Looper.getMainLooper());
            }
            handler = f73103a;
        }
        return handler;
    }

    public static boolean l() {
        return Thread.currentThread().getId() == Looper.getMainLooper().getThread().getId();
    }

    public static boolean m(Context context, Runnable runnable) {
        if (context == null) {
            return n(runnable);
        }
        return i().postAtTime(runnable, Integer.valueOf(context.hashCode()), SystemClock.uptimeMillis());
    }

    public static boolean n(Runnable runnable) {
        return i().post(runnable);
    }

    public static boolean o(Context context, Runnable runnable) {
        if (context == null) {
            return p(runnable);
        }
        return k().postAtTime(runnable, Integer.valueOf(context.hashCode()), SystemClock.uptimeMillis());
    }

    public static boolean p(Runnable runnable) {
        return k().post(runnable);
    }

    public static boolean q(Context context, Runnable runnable, long j4) {
        if (context == null) {
            return r(runnable, j4);
        }
        return i().postAtTime(runnable, Integer.valueOf(context.hashCode()), SystemClock.uptimeMillis() + j4);
    }

    private static boolean r(Runnable runnable, long j4) {
        return i().postDelayed(runnable, j4);
    }

    public static boolean s(Context context, Runnable runnable, long j4) {
        if (context == null) {
            return t(runnable, j4);
        }
        return k().postAtTime(runnable, Integer.valueOf(context.hashCode()), SystemClock.uptimeMillis() + j4);
    }

    public static boolean t(Runnable runnable, long j4) {
        return k().postDelayed(runnable, j4);
    }

    public static boolean u() {
        return i().getLooper() == Looper.myLooper();
    }

    private static boolean v() {
        return k().getLooper() == Looper.myLooper();
    }

    public static void w(String str) {
        if (v()) {
            return;
        }
        throw new RuntimeException("ThreadUtils safeCheck alert " + str);
    }
}
