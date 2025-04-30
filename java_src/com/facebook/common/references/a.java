package com.facebook.common.references;

import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.internal.h;
import com.facebook.infer.annotation.PropagatesNullable;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* compiled from: CloseableReference.java */
/* loaded from: classes.dex */
public final class a<T> implements Cloneable, Closeable {

    /* renamed from: c  reason: collision with root package name */
    private static Class<a> f11734c = a.class;

    /* renamed from: d  reason: collision with root package name */
    private static final c<Closeable> f11735d = new C0063a();
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    private boolean f11736a = false;

    /* renamed from: b  reason: collision with root package name */
    private final SharedReference<T> f11737b;

    /* compiled from: CloseableReference.java */
    /* renamed from: com.facebook.common.references.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static class C0063a implements c<Closeable> {
        C0063a() {
        }

        @Override // com.facebook.common.references.c
        /* renamed from: a */
        public void release(Closeable closeable) {
            try {
                com.facebook.common.internal.c.a(closeable, true);
            } catch (IOException unused) {
            }
        }
    }

    private a(SharedReference<T> sharedReference) {
        this.f11737b = (SharedReference) h.i(sharedReference);
        sharedReference.b();
    }

    @Nullable
    public static <T> a<T> d(@Nullable a<T> aVar) {
        if (aVar != null) {
            return aVar.b();
        }
        return null;
    }

    public static <T> List<a<T>> e(@PropagatesNullable Collection<a<T>> collection) {
        if (collection == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (a<T> aVar : collection) {
            arrayList.add(d(aVar));
        }
        return arrayList;
    }

    public static void g(@Nullable a<?> aVar) {
        if (aVar != null) {
            aVar.close();
        }
    }

    public static void h(@Nullable Iterable<? extends a<?>> iterable) {
        if (iterable != null) {
            for (a<?> aVar : iterable) {
                g(aVar);
            }
        }
    }

    public static boolean o(@Nullable a<?> aVar) {
        return aVar != null && aVar.n();
    }

    /* JADX WARN: Incorrect types in method signature: <T::Ljava/io/Closeable;>(TT;)Lcom/facebook/common/references/a<TT;>; */
    public static a p(@PropagatesNullable Closeable closeable) {
        if (closeable == null) {
            return null;
        }
        return new a(closeable, f11735d);
    }

    public static <T> a<T> q(@PropagatesNullable T t3, c<T> cVar) {
        if (t3 == null) {
            return null;
        }
        return new a<>(t3, cVar);
    }

    /* renamed from: a */
    public synchronized a<T> clone() {
        h.o(n());
        return new a<>(this.f11737b);
    }

    @Nullable
    public synchronized a<T> b() {
        if (n()) {
            return clone();
        }
        return null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (this.f11736a) {
                return;
            }
            this.f11736a = true;
            this.f11737b.d();
        }
    }

    protected void finalize() throws Throwable {
        try {
            synchronized (this) {
                if (this.f11736a) {
                    return;
                }
                com.facebook.common.logging.a.m0(f11734c, "Finalized without closing: %x %x (type = %s)", Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(System.identityHashCode(this.f11737b)), this.f11737b.f().getClass().getName());
                close();
            }
        } finally {
            super.finalize();
        }
    }

    public synchronized T i() {
        h.o(!this.f11736a);
        return this.f11737b.f();
    }

    @VisibleForTesting
    public synchronized SharedReference<T> k() {
        return this.f11737b;
    }

    public int m() {
        if (n()) {
            return System.identityHashCode(this.f11737b.f());
        }
        return 0;
    }

    public synchronized boolean n() {
        return !this.f11736a;
    }

    private a(T t3, c<T> cVar) {
        this.f11737b = new SharedReference<>(t3, cVar);
    }
}
