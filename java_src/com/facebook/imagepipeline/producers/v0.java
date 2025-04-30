package com.facebook.imagepipeline.producers;

import android.util.Pair;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* compiled from: ThrottlingProducer.java */
/* loaded from: classes2.dex */
public class v0<T> implements i0<T> {

    /* renamed from: f  reason: collision with root package name */
    public static final String f13254f = "ThrottlingProducer";

    /* renamed from: a  reason: collision with root package name */
    private final i0<T> f13255a;

    /* renamed from: b  reason: collision with root package name */
    private final int f13256b;

    /* renamed from: e  reason: collision with root package name */
    private final Executor f13259e;
    @GuardedBy("this")

    /* renamed from: d  reason: collision with root package name */
    private final ConcurrentLinkedQueue<Pair<Consumer<T>, k0>> f13258d = new ConcurrentLinkedQueue<>();
    @GuardedBy("this")

    /* renamed from: c  reason: collision with root package name */
    private int f13257c = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ThrottlingProducer.java */
    /* loaded from: classes2.dex */
    public class b extends m<T, T> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ThrottlingProducer.java */
        /* loaded from: classes2.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Pair f13261a;

            a(Pair pair) {
                this.f13261a = pair;
            }

            @Override // java.lang.Runnable
            public void run() {
                v0 v0Var = v0.this;
                Pair pair = this.f13261a;
                v0Var.f((Consumer) pair.first, (k0) pair.second);
            }
        }

        private void q() {
            Pair pair;
            synchronized (v0.this) {
                pair = (Pair) v0.this.f13258d.poll();
                if (pair == null) {
                    v0.d(v0.this);
                }
            }
            if (pair != null) {
                v0.this.f13259e.execute(new a(pair));
            }
        }

        @Override // com.facebook.imagepipeline.producers.m, com.facebook.imagepipeline.producers.b
        protected void f() {
            p().a();
            q();
        }

        @Override // com.facebook.imagepipeline.producers.m, com.facebook.imagepipeline.producers.b
        protected void g(Throwable th) {
            p().onFailure(th);
            q();
        }

        @Override // com.facebook.imagepipeline.producers.b
        protected void h(T t3, int i2) {
            p().b(t3, i2);
            if (com.facebook.imagepipeline.producers.b.d(i2)) {
                q();
            }
        }

        private b(Consumer<T> consumer) {
            super(consumer);
        }
    }

    public v0(int i2, Executor executor, i0<T> i0Var) {
        this.f13256b = i2;
        this.f13259e = (Executor) com.facebook.common.internal.h.i(executor);
        this.f13255a = (i0) com.facebook.common.internal.h.i(i0Var);
    }

    static /* synthetic */ int d(v0 v0Var) {
        int i2 = v0Var.f13257c;
        v0Var.f13257c = i2 - 1;
        return i2;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void b(Consumer<T> consumer, k0 k0Var) {
        boolean z3;
        k0Var.getListener().b(k0Var.getId(), f13254f);
        synchronized (this) {
            int i2 = this.f13257c;
            z3 = true;
            if (i2 >= this.f13256b) {
                this.f13258d.add(Pair.create(consumer, k0Var));
            } else {
                this.f13257c = i2 + 1;
                z3 = false;
            }
        }
        if (z3) {
            return;
        }
        f(consumer, k0Var);
    }

    void f(Consumer<T> consumer, k0 k0Var) {
        k0Var.getListener().e(k0Var.getId(), f13254f, null);
        this.f13255a.b(new b(consumer), k0Var);
    }
}
