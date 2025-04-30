package com.facebook.imagepipeline.animated.factory;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.os.Build;
import com.facebook.common.internal.h;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor;
import com.facebook.imagepipeline.bitmaps.f;
import com.facebook.imagepipeline.image.g;
import java.util.ArrayList;
import java.util.List;
/* compiled from: AnimatedImageFactoryImpl.java */
/* loaded from: classes2.dex */
public class e implements d {

    /* renamed from: c  reason: collision with root package name */
    static c f12419c = g("com.facebook.animated.gif.GifImage");

    /* renamed from: d  reason: collision with root package name */
    static c f12420d = g("com.facebook.animated.webp.WebPImage");

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.animated.impl.b f12421a;

    /* renamed from: b  reason: collision with root package name */
    private final f f12422b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnimatedImageFactoryImpl.java */
    /* loaded from: classes2.dex */
    public class a implements AnimatedImageCompositor.b {
        a() {
        }

        @Override // com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor.b
        public void a(int i2, Bitmap bitmap) {
        }

        @Override // com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor.b
        public com.facebook.common.references.a<Bitmap> b(int i2) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnimatedImageFactoryImpl.java */
    /* loaded from: classes2.dex */
    public class b implements AnimatedImageCompositor.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f12424a;

        b(List list) {
            this.f12424a = list;
        }

        @Override // com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor.b
        public void a(int i2, Bitmap bitmap) {
        }

        @Override // com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor.b
        public com.facebook.common.references.a<Bitmap> b(int i2) {
            return com.facebook.common.references.a.d((com.facebook.common.references.a) this.f12424a.get(i2));
        }
    }

    public e(com.facebook.imagepipeline.animated.impl.b bVar, f fVar) {
        this.f12421a = bVar;
        this.f12422b = fVar;
    }

    @SuppressLint({"NewApi"})
    private com.facebook.common.references.a<Bitmap> c(int i2, int i4, Bitmap.Config config) {
        com.facebook.common.references.a<Bitmap> z3 = this.f12422b.z(i2, i4, config);
        z3.i().eraseColor(0);
        if (Build.VERSION.SDK_INT >= 12) {
            z3.i().setHasAlpha(true);
        }
        return z3;
    }

    private com.facebook.common.references.a<Bitmap> d(com.facebook.imagepipeline.animated.base.d dVar, Bitmap.Config config, int i2) {
        com.facebook.common.references.a<Bitmap> c4 = c(dVar.a(), dVar.getHeight(), config);
        new AnimatedImageCompositor(this.f12421a.a(com.facebook.imagepipeline.animated.base.f.b(dVar), null), new a()).f(i2, c4.i());
        return c4;
    }

    private List<com.facebook.common.references.a<Bitmap>> e(com.facebook.imagepipeline.animated.base.d dVar, Bitmap.Config config) {
        com.facebook.imagepipeline.animated.base.a a4 = this.f12421a.a(com.facebook.imagepipeline.animated.base.f.b(dVar), null);
        ArrayList arrayList = new ArrayList(a4.b());
        AnimatedImageCompositor animatedImageCompositor = new AnimatedImageCompositor(a4, new b(arrayList));
        for (int i2 = 0; i2 < a4.b(); i2++) {
            com.facebook.common.references.a<Bitmap> c4 = c(a4.a(), a4.getHeight(), config);
            animatedImageCompositor.f(i2, c4.i());
            arrayList.add(c4);
        }
        return arrayList;
    }

    private com.facebook.imagepipeline.image.c f(com.facebook.imagepipeline.common.b bVar, com.facebook.imagepipeline.animated.base.d dVar, Bitmap.Config config) {
        List<com.facebook.common.references.a<Bitmap>> list;
        com.facebook.common.references.a<Bitmap> aVar = null;
        try {
            int b4 = bVar.f12553c ? dVar.b() - 1 : 0;
            if (bVar.f12555e) {
                com.facebook.imagepipeline.image.d dVar2 = new com.facebook.imagepipeline.image.d(d(dVar, config, b4), g.f12777d, 0);
                com.facebook.common.references.a.g(null);
                com.facebook.common.references.a.h(null);
                return dVar2;
            }
            if (bVar.f12554d) {
                list = e(dVar, config);
                try {
                    aVar = com.facebook.common.references.a.d(list.get(b4));
                } catch (Throwable th) {
                    th = th;
                    com.facebook.common.references.a.g(aVar);
                    com.facebook.common.references.a.h(list);
                    throw th;
                }
            } else {
                list = null;
            }
            if (bVar.f12552b && aVar == null) {
                aVar = d(dVar, config, b4);
            }
            com.facebook.imagepipeline.image.a aVar2 = new com.facebook.imagepipeline.image.a(com.facebook.imagepipeline.animated.base.f.h(dVar).h(aVar).g(b4).f(list).a());
            com.facebook.common.references.a.g(aVar);
            com.facebook.common.references.a.h(list);
            return aVar2;
        } catch (Throwable th2) {
            th = th2;
            list = null;
        }
    }

    private static c g(String str) {
        try {
            return (c) Class.forName(str).newInstance();
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.facebook.imagepipeline.animated.factory.d
    public com.facebook.imagepipeline.image.c a(com.facebook.imagepipeline.image.e eVar, com.facebook.imagepipeline.common.b bVar, Bitmap.Config config) {
        com.facebook.imagepipeline.animated.base.d h4;
        if (f12419c != null) {
            com.facebook.common.references.a<PooledByteBuffer> g4 = eVar.g();
            h.i(g4);
            try {
                PooledByteBuffer i2 = g4.i();
                if (i2.f() != null) {
                    h4 = f12419c.i(i2.f());
                } else {
                    h4 = f12419c.h(i2.l(), i2.size());
                }
                return f(bVar, h4, config);
            } finally {
                com.facebook.common.references.a.g(g4);
            }
        }
        throw new UnsupportedOperationException("To encode animated gif please add the dependency to the animated-gif module");
    }

    @Override // com.facebook.imagepipeline.animated.factory.d
    public com.facebook.imagepipeline.image.c b(com.facebook.imagepipeline.image.e eVar, com.facebook.imagepipeline.common.b bVar, Bitmap.Config config) {
        com.facebook.imagepipeline.animated.base.d h4;
        if (f12420d != null) {
            com.facebook.common.references.a<PooledByteBuffer> g4 = eVar.g();
            h.i(g4);
            try {
                PooledByteBuffer i2 = g4.i();
                if (i2.f() != null) {
                    h4 = f12420d.i(i2.f());
                } else {
                    h4 = f12420d.h(i2.l(), i2.size());
                }
                return f(bVar, h4, config);
            } finally {
                com.facebook.common.references.a.g(g4);
            }
        }
        throw new UnsupportedOperationException("To encode animated webp please add the dependency to the animated-webp module");
    }
}
