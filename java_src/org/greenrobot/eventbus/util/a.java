package org.greenrobot.eventbus.util;

import android.app.Activity;
import java.lang.reflect.Constructor;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* compiled from: AsyncExecutor.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f73319a;

    /* renamed from: b  reason: collision with root package name */
    private final Constructor<?> f73320b;

    /* renamed from: c  reason: collision with root package name */
    private final org.greenrobot.eventbus.c f73321c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f73322d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AsyncExecutor.java */
    /* renamed from: org.greenrobot.eventbus.util.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class RunnableC0490a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f73323a;

        RunnableC0490a(c cVar) {
            this.f73323a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f73323a.run();
            } catch (Exception e4) {
                try {
                    Object newInstance = a.this.f73320b.newInstance(e4);
                    if (newInstance instanceof e) {
                        ((e) newInstance).b(a.this.f73322d);
                    }
                    a.this.f73321c.o(newInstance);
                } catch (Exception e5) {
                    String str = org.greenrobot.eventbus.c.f73209q;
                    throw new RuntimeException("Could not create failure event", e5);
                }
            }
        }
    }

    /* compiled from: AsyncExecutor.java */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private Executor f73325a;

        /* renamed from: b  reason: collision with root package name */
        private Class<?> f73326b;

        /* renamed from: c  reason: collision with root package name */
        private org.greenrobot.eventbus.c f73327c;

        /* synthetic */ b(RunnableC0490a runnableC0490a) {
            this();
        }

        public a a() {
            return c(null);
        }

        public a b(Activity activity) {
            return c(activity.getClass());
        }

        public a c(Object obj) {
            if (this.f73327c == null) {
                this.f73327c = org.greenrobot.eventbus.c.f();
            }
            if (this.f73325a == null) {
                this.f73325a = Executors.newCachedThreadPool();
            }
            if (this.f73326b == null) {
                this.f73326b = f.class;
            }
            return new a(this.f73325a, this.f73327c, this.f73326b, obj, null);
        }

        public b d(org.greenrobot.eventbus.c cVar) {
            this.f73327c = cVar;
            return this;
        }

        public b e(Class<?> cls) {
            this.f73326b = cls;
            return this;
        }

        public b f(Executor executor) {
            this.f73325a = executor;
            return this;
        }

        private b() {
        }
    }

    /* compiled from: AsyncExecutor.java */
    /* loaded from: classes5.dex */
    public interface c {
        void run() throws Exception;
    }

    /* synthetic */ a(Executor executor, org.greenrobot.eventbus.c cVar, Class cls, Object obj, RunnableC0490a runnableC0490a) {
        this(executor, cVar, cls, obj);
    }

    public static b d() {
        return new b(null);
    }

    public static a e() {
        return new b(null).a();
    }

    public void f(c cVar) {
        this.f73319a.execute(new RunnableC0490a(cVar));
    }

    private a(Executor executor, org.greenrobot.eventbus.c cVar, Class<?> cls, Object obj) {
        this.f73319a = executor;
        this.f73321c = cVar;
        this.f73322d = obj;
        try {
            this.f73320b = cls.getConstructor(Throwable.class);
        } catch (NoSuchMethodException e4) {
            throw new RuntimeException("Failure event class must have a constructor with one parameter of type Throwable", e4);
        }
    }
}
