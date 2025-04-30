package com.facebook.imagepipeline.producers;

import android.util.Pair;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.imagepipeline.common.Priority;
import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: MultiplexProducer.java */
@ThreadSafe
/* loaded from: classes2.dex */
public abstract class b0<K, T extends Closeable> implements i0<T> {
    @VisibleForTesting
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    final Map<K, b0<K, T>.b> f12990a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final i0<T> f12991b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MultiplexProducer.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        private final K f12992a;

        /* renamed from: b  reason: collision with root package name */
        private final CopyOnWriteArraySet<Pair<Consumer<T>, k0>> f12993b = com.facebook.common.internal.j.a();
        @GuardedBy("Multiplexer.this")
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private T f12994c;
        @GuardedBy("Multiplexer.this")

        /* renamed from: d  reason: collision with root package name */
        private float f12995d;
        @GuardedBy("Multiplexer.this")

        /* renamed from: e  reason: collision with root package name */
        private int f12996e;
        @GuardedBy("Multiplexer.this")
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private d f12997f;
        @GuardedBy("Multiplexer.this")
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private b0<K, T>.b.C0083b f12998g;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MultiplexProducer.java */
        /* loaded from: classes2.dex */
        public class a extends e {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Pair f13000a;

            a(Pair pair) {
                this.f13000a = pair;
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.l0
            public void a() {
                d.i(b.this.r());
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.l0
            public void b() {
                boolean remove;
                List list;
                d dVar;
                List list2;
                List list3;
                synchronized (b.this) {
                    remove = b.this.f12993b.remove(this.f13000a);
                    list = null;
                    if (!remove) {
                        dVar = null;
                        list2 = null;
                    } else if (b.this.f12993b.isEmpty()) {
                        dVar = b.this.f12997f;
                        list2 = null;
                    } else {
                        List s3 = b.this.s();
                        list2 = b.this.t();
                        list3 = b.this.r();
                        dVar = null;
                        list = s3;
                    }
                    list3 = list2;
                }
                d.j(list);
                d.k(list2);
                d.i(list3);
                if (dVar != null) {
                    dVar.l();
                }
                if (remove) {
                    ((Consumer) this.f13000a.first).a();
                }
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.l0
            public void c() {
                d.k(b.this.t());
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.l0
            public void d() {
                d.j(b.this.s());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: MultiplexProducer.java */
        /* renamed from: com.facebook.imagepipeline.producers.b0$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0083b extends com.facebook.imagepipeline.producers.b<T> {
            private C0083b() {
            }

            @Override // com.facebook.imagepipeline.producers.b
            protected void f() {
                try {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.a("MultiplexProducer#onCancellation");
                    }
                    b.this.m(this);
                } finally {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                    }
                }
            }

            @Override // com.facebook.imagepipeline.producers.b
            protected void g(Throwable th) {
                try {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.a("MultiplexProducer#onFailure");
                    }
                    b.this.n(this, th);
                } finally {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                    }
                }
            }

            @Override // com.facebook.imagepipeline.producers.b
            protected void i(float f4) {
                try {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.a("MultiplexProducer#onProgressUpdate");
                    }
                    b.this.p(this, f4);
                } finally {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.facebook.imagepipeline.producers.b
            /* renamed from: p */
            public void h(T t3, int i2) {
                try {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.a("MultiplexProducer#onNewResult");
                    }
                    b.this.o(this, t3, i2);
                } finally {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                    }
                }
            }
        }

        public b(K k4) {
            this.f12992a = k4;
        }

        private void g(Pair<Consumer<T>, k0> pair, k0 k0Var) {
            k0Var.d(new a(pair));
        }

        private void i(Closeable closeable) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (IOException e4) {
                    throw new RuntimeException(e4);
                }
            }
        }

        private synchronized boolean j() {
            Iterator<Pair<Consumer<T>, k0>> it2 = this.f12993b.iterator();
            while (it2.hasNext()) {
                if (((k0) it2.next().second).e()) {
                    return true;
                }
            }
            return false;
        }

        private synchronized boolean k() {
            Iterator<Pair<Consumer<T>, k0>> it2 = this.f12993b.iterator();
            while (it2.hasNext()) {
                if (!((k0) it2.next().second).f()) {
                    return false;
                }
            }
            return true;
        }

        private synchronized Priority l() {
            Priority priority;
            priority = Priority.LOW;
            Iterator<Pair<Consumer<T>, k0>> it2 = this.f12993b.iterator();
            while (it2.hasNext()) {
                priority = Priority.getHigherPriority(priority, ((k0) it2.next().second).a());
            }
            return priority;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void q() {
            synchronized (this) {
                boolean z3 = true;
                com.facebook.common.internal.h.d(this.f12997f == null);
                if (this.f12998g != null) {
                    z3 = false;
                }
                com.facebook.common.internal.h.d(z3);
                if (this.f12993b.isEmpty()) {
                    b0.this.j(this.f12992a, this);
                    return;
                }
                k0 k0Var = (k0) this.f12993b.iterator().next().second;
                this.f12997f = new d(k0Var.b(), k0Var.getId(), k0Var.getListener(), k0Var.c(), k0Var.g(), k(), j(), l());
                b0<K, T>.b.C0083b c0083b = new C0083b();
                this.f12998g = c0083b;
                b0.this.f12991b.b(c0083b, this.f12997f);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public synchronized List<l0> r() {
            d dVar = this.f12997f;
            if (dVar == null) {
                return null;
            }
            return dVar.o(j());
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public synchronized List<l0> s() {
            d dVar = this.f12997f;
            if (dVar == null) {
                return null;
            }
            return dVar.p(k());
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public synchronized List<l0> t() {
            d dVar = this.f12997f;
            if (dVar == null) {
                return null;
            }
            return dVar.q(l());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean h(Consumer<T> consumer, k0 k0Var) {
            Pair<Consumer<T>, k0> create = Pair.create(consumer, k0Var);
            synchronized (this) {
                if (b0.this.h(this.f12992a) != this) {
                    return false;
                }
                this.f12993b.add(create);
                List<l0> s3 = s();
                List<l0> t3 = t();
                List<l0> r3 = r();
                Closeable closeable = this.f12994c;
                float f4 = this.f12995d;
                int i2 = this.f12996e;
                d.j(s3);
                d.k(t3);
                d.i(r3);
                synchronized (create) {
                    synchronized (this) {
                        if (closeable != this.f12994c) {
                            closeable = null;
                        } else if (closeable != null) {
                            closeable = b0.this.f(closeable);
                        }
                    }
                    if (closeable != null) {
                        if (f4 > 0.0f) {
                            consumer.c(f4);
                        }
                        consumer.b(closeable, i2);
                        i(closeable);
                    }
                }
                g(create, k0Var);
                return true;
            }
        }

        public void m(b0<K, T>.b.C0083b c0083b) {
            synchronized (this) {
                if (this.f12998g != c0083b) {
                    return;
                }
                this.f12998g = null;
                this.f12997f = null;
                i(this.f12994c);
                this.f12994c = null;
                q();
            }
        }

        public void n(b0<K, T>.b.C0083b c0083b, Throwable th) {
            synchronized (this) {
                if (this.f12998g != c0083b) {
                    return;
                }
                Iterator<Pair<Consumer<T>, k0>> it2 = this.f12993b.iterator();
                this.f12993b.clear();
                b0.this.j(this.f12992a, this);
                i(this.f12994c);
                this.f12994c = null;
                while (it2.hasNext()) {
                    Pair<Consumer<T>, k0> next = it2.next();
                    synchronized (next) {
                        ((Consumer) next.first).onFailure(th);
                    }
                }
            }
        }

        public void o(b0<K, T>.b.C0083b c0083b, T t3, int i2) {
            synchronized (this) {
                if (this.f12998g != c0083b) {
                    return;
                }
                i(this.f12994c);
                this.f12994c = null;
                Iterator<Pair<Consumer<T>, k0>> it2 = this.f12993b.iterator();
                if (com.facebook.imagepipeline.producers.b.e(i2)) {
                    this.f12994c = (T) b0.this.f(t3);
                    this.f12996e = i2;
                } else {
                    this.f12993b.clear();
                    b0.this.j(this.f12992a, this);
                }
                while (it2.hasNext()) {
                    Pair<Consumer<T>, k0> next = it2.next();
                    synchronized (next) {
                        ((Consumer) next.first).b(t3, i2);
                    }
                }
            }
        }

        public void p(b0<K, T>.b.C0083b c0083b, float f4) {
            synchronized (this) {
                if (this.f12998g != c0083b) {
                    return;
                }
                this.f12995d = f4;
                Iterator<Pair<Consumer<T>, k0>> it2 = this.f12993b.iterator();
                while (it2.hasNext()) {
                    Pair<Consumer<T>, k0> next = it2.next();
                    synchronized (next) {
                        ((Consumer) next.first).c(f4);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b0(i0<T> i0Var) {
        this.f12991b = i0Var;
    }

    private synchronized b0<K, T>.b g(K k4) {
        b0<K, T>.b bVar;
        bVar = new b(k4);
        this.f12990a.put(k4, bVar);
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized b0<K, T>.b h(K k4) {
        return this.f12990a.get(k4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void j(K k4, b0<K, T>.b bVar) {
        if (this.f12990a.get(k4) == bVar) {
            this.f12990a.remove(k4);
        }
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void b(Consumer<T> consumer, k0 k0Var) {
        boolean z3;
        b0<K, T>.b h4;
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("MultiplexProducer#produceResults");
            }
            K i2 = i(k0Var);
            do {
                z3 = false;
                synchronized (this) {
                    h4 = h(i2);
                    if (h4 == null) {
                        h4 = g(i2);
                        z3 = true;
                    }
                }
            } while (!h4.h(consumer, k0Var));
            if (z3) {
                h4.q();
            }
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    protected abstract T f(T t3);

    protected abstract K i(k0 k0Var);
}
