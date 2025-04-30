package com.facebook.datasource;

import com.facebook.common.internal.k;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
/* compiled from: DataSources.java */
/* loaded from: classes.dex */
public class d {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: DataSources.java */
    /* loaded from: classes2.dex */
    static class a<T> implements k<com.facebook.datasource.c<T>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Throwable f11799a;

        a(Throwable th) {
            this.f11799a = th;
        }

        @Override // com.facebook.common.internal.k
        /* renamed from: a */
        public com.facebook.datasource.c<T> get() {
            return d.c(this.f11799a);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: DataSources.java */
    /* loaded from: classes2.dex */
    static class b<T> implements e<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0064d f11800a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CountDownLatch f11801b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ C0064d f11802c;

        b(C0064d c0064d, CountDownLatch countDownLatch, C0064d c0064d2) {
            this.f11800a = c0064d;
            this.f11801b = countDownLatch;
            this.f11802c = c0064d2;
        }

        @Override // com.facebook.datasource.e
        public void a(com.facebook.datasource.c<T> cVar) {
            this.f11801b.countDown();
        }

        @Override // com.facebook.datasource.e
        public void b(com.facebook.datasource.c<T> cVar) {
            try {
                this.f11802c.f11803a = (T) cVar.d();
            } finally {
                this.f11801b.countDown();
            }
        }

        @Override // com.facebook.datasource.e
        public void c(com.facebook.datasource.c<T> cVar) {
            if (cVar.c()) {
                try {
                    this.f11800a.f11803a = cVar.g();
                } finally {
                    this.f11801b.countDown();
                }
            }
        }

        @Override // com.facebook.datasource.e
        public void d(com.facebook.datasource.c<T> cVar) {
        }
    }

    /* compiled from: DataSources.java */
    /* loaded from: classes2.dex */
    static class c implements Executor {
        c() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            runnable.run();
        }
    }

    private d() {
    }

    public static <T> k<com.facebook.datasource.c<T>> a(Throwable th) {
        return new a(th);
    }

    public static <T> com.facebook.datasource.c<T> b(T t3) {
        i s3 = i.s();
        s3.setResult(t3);
        return s3;
    }

    public static <T> com.facebook.datasource.c<T> c(Throwable th) {
        i s3 = i.s();
        s3.m(th);
        return s3;
    }

    @Nullable
    public static <T> T d(com.facebook.datasource.c<T> cVar) throws Throwable {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        C0064d c0064d = new C0064d(null);
        C0064d c0064d2 = new C0064d(null);
        cVar.e(new b(c0064d, countDownLatch, c0064d2), new c());
        countDownLatch.await();
        T t3 = c0064d2.f11803a;
        if (t3 == null) {
            return c0064d.f11803a;
        }
        throw ((Throwable) t3);
    }

    /* compiled from: DataSources.java */
    /* renamed from: com.facebook.datasource.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class C0064d<T> {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public T f11803a;

        private C0064d() {
            this.f11803a = null;
        }

        /* synthetic */ C0064d(a aVar) {
            this();
        }
    }
}
