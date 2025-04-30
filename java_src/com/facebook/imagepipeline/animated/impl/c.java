package com.facebook.imagepipeline.animated.impl;

import android.net.Uri;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.internal.g;
import com.facebook.imagepipeline.cache.h;
import java.util.Iterator;
import java.util.LinkedHashSet;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* compiled from: AnimatedFrameCache.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.cache.common.c f12441a;

    /* renamed from: b  reason: collision with root package name */
    private final h<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f12442b;
    @GuardedBy("this")

    /* renamed from: d  reason: collision with root package name */
    private final LinkedHashSet<com.facebook.cache.common.c> f12444d = new LinkedHashSet<>();

    /* renamed from: c  reason: collision with root package name */
    private final h.e<com.facebook.cache.common.c> f12443c = new a();

    /* compiled from: AnimatedFrameCache.java */
    /* loaded from: classes2.dex */
    class a implements h.e<com.facebook.cache.common.c> {
        a() {
        }

        @Override // com.facebook.imagepipeline.cache.h.e
        /* renamed from: b */
        public void a(com.facebook.cache.common.c cVar, boolean z3) {
            c.this.f(cVar, z3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnimatedFrameCache.java */
    @VisibleForTesting
    /* loaded from: classes2.dex */
    public static class b implements com.facebook.cache.common.c {

        /* renamed from: a  reason: collision with root package name */
        private final com.facebook.cache.common.c f12446a;

        /* renamed from: b  reason: collision with root package name */
        private final int f12447b;

        public b(com.facebook.cache.common.c cVar, int i2) {
            this.f12446a = cVar;
            this.f12447b = i2;
        }

        @Override // com.facebook.cache.common.c
        public String a() {
            return null;
        }

        @Override // com.facebook.cache.common.c
        public boolean b(Uri uri) {
            return this.f12446a.b(uri);
        }

        @Override // com.facebook.cache.common.c
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof b) {
                b bVar = (b) obj;
                return this.f12447b == bVar.f12447b && this.f12446a.equals(bVar.f12446a);
            }
            return false;
        }

        @Override // com.facebook.cache.common.c
        public int hashCode() {
            return (this.f12446a.hashCode() * 1013) + this.f12447b;
        }

        @Override // com.facebook.cache.common.c
        public String toString() {
            return g.f(this).f("imageCacheKey", this.f12446a).d("frameIndex", this.f12447b).toString();
        }
    }

    public c(com.facebook.cache.common.c cVar, h<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> hVar) {
        this.f12441a = cVar;
        this.f12442b = hVar;
    }

    private b e(int i2) {
        return new b(this.f12441a, i2);
    }

    @Nullable
    private synchronized com.facebook.cache.common.c g() {
        com.facebook.cache.common.c cVar;
        cVar = null;
        Iterator<com.facebook.cache.common.c> it2 = this.f12444d.iterator();
        if (it2.hasNext()) {
            cVar = it2.next();
            it2.remove();
        }
        return cVar;
    }

    @Nullable
    public com.facebook.common.references.a<com.facebook.imagepipeline.image.c> a(int i2, com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar) {
        return this.f12442b.f(e(i2), aVar, this.f12443c);
    }

    public boolean b(int i2) {
        return this.f12442b.i(e(i2));
    }

    @Nullable
    public com.facebook.common.references.a<com.facebook.imagepipeline.image.c> c(int i2) {
        return this.f12442b.get(e(i2));
    }

    @Nullable
    public com.facebook.common.references.a<com.facebook.imagepipeline.image.c> d() {
        com.facebook.common.references.a<com.facebook.imagepipeline.image.c> D;
        do {
            com.facebook.cache.common.c g4 = g();
            if (g4 == null) {
                return null;
            }
            D = this.f12442b.D(g4);
        } while (D == null);
        return D;
    }

    public synchronized void f(com.facebook.cache.common.c cVar, boolean z3) {
        if (z3) {
            this.f12444d.add(cVar);
        } else {
            this.f12444d.remove(cVar);
        }
    }
}
