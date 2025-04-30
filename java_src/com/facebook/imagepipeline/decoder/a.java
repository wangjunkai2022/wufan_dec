package com.facebook.imagepipeline.decoder;

import android.graphics.Bitmap;
import android.os.Build;
import com.facebook.imagepipeline.image.g;
import com.facebook.imagepipeline.image.h;
import java.util.Map;
import javax.annotation.Nullable;
/* compiled from: DefaultImageDecoder.java */
/* loaded from: classes.dex */
public class a implements b {

    /* renamed from: a  reason: collision with root package name */
    private final b f12727a;

    /* renamed from: b  reason: collision with root package name */
    private final b f12728b;

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.imagepipeline.platform.f f12729c;

    /* renamed from: d  reason: collision with root package name */
    private final b f12730d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final Map<com.facebook.imageformat.c, b> f12731e;

    /* compiled from: DefaultImageDecoder.java */
    /* renamed from: com.facebook.imagepipeline.decoder.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0079a implements b {
        C0079a() {
        }

        @Override // com.facebook.imagepipeline.decoder.b
        public com.facebook.imagepipeline.image.c a(com.facebook.imagepipeline.image.e eVar, int i2, h hVar, com.facebook.imagepipeline.common.b bVar) {
            com.facebook.imageformat.c o3 = eVar.o();
            if (o3 == com.facebook.imageformat.b.f12372a) {
                return a.this.d(eVar, i2, hVar, bVar);
            }
            if (o3 == com.facebook.imageformat.b.f12374c) {
                return a.this.c(eVar, i2, hVar, bVar);
            }
            if (o3 == com.facebook.imageformat.b.f12381j) {
                return a.this.b(eVar, i2, hVar, bVar);
            }
            if (o3 != com.facebook.imageformat.c.f12384c) {
                return a.this.e(eVar, bVar);
            }
            throw new DecodeException("unknown image format", eVar);
        }
    }

    public a(b bVar, b bVar2, com.facebook.imagepipeline.platform.f fVar) {
        this(bVar, bVar2, fVar, null);
    }

    private void f(@Nullable s0.a aVar, com.facebook.common.references.a<Bitmap> aVar2) {
        if (aVar == null) {
            return;
        }
        Bitmap i2 = aVar2.i();
        if (Build.VERSION.SDK_INT >= 12 && aVar.a()) {
            i2.setHasAlpha(true);
        }
        aVar.b(i2);
    }

    @Override // com.facebook.imagepipeline.decoder.b
    public com.facebook.imagepipeline.image.c a(com.facebook.imagepipeline.image.e eVar, int i2, h hVar, com.facebook.imagepipeline.common.b bVar) {
        b bVar2;
        b bVar3 = bVar.f12558h;
        if (bVar3 != null) {
            return bVar3.a(eVar, i2, hVar, bVar);
        }
        com.facebook.imageformat.c o3 = eVar.o();
        if (o3 == null || o3 == com.facebook.imageformat.c.f12384c) {
            o3 = com.facebook.imageformat.d.d(eVar.p());
            eVar.G(o3);
        }
        Map<com.facebook.imageformat.c, b> map = this.f12731e;
        if (map != null && (bVar2 = map.get(o3)) != null) {
            return bVar2.a(eVar, i2, hVar, bVar);
        }
        return this.f12730d.a(eVar, i2, hVar, bVar);
    }

    public com.facebook.imagepipeline.image.c b(com.facebook.imagepipeline.image.e eVar, int i2, h hVar, com.facebook.imagepipeline.common.b bVar) {
        return this.f12728b.a(eVar, i2, hVar, bVar);
    }

    public com.facebook.imagepipeline.image.c c(com.facebook.imagepipeline.image.e eVar, int i2, h hVar, com.facebook.imagepipeline.common.b bVar) {
        b bVar2;
        if (!bVar.f12555e && (bVar2 = this.f12727a) != null) {
            return bVar2.a(eVar, i2, hVar, bVar);
        }
        return e(eVar, bVar);
    }

    public com.facebook.imagepipeline.image.d d(com.facebook.imagepipeline.image.e eVar, int i2, h hVar, com.facebook.imagepipeline.common.b bVar) {
        com.facebook.common.references.a<Bitmap> c4 = this.f12729c.c(eVar, bVar.f12557g, null, i2, bVar.f12556f);
        try {
            f(bVar.f12559i, c4);
            return new com.facebook.imagepipeline.image.d(c4, hVar, eVar.q(), eVar.k());
        } finally {
            c4.close();
        }
    }

    public com.facebook.imagepipeline.image.d e(com.facebook.imagepipeline.image.e eVar, com.facebook.imagepipeline.common.b bVar) {
        com.facebook.common.references.a<Bitmap> b4 = this.f12729c.b(eVar, bVar.f12557g, null, bVar.f12556f);
        try {
            f(bVar.f12559i, b4);
            return new com.facebook.imagepipeline.image.d(b4, g.f12777d, eVar.q(), eVar.k());
        } finally {
            b4.close();
        }
    }

    public a(b bVar, b bVar2, com.facebook.imagepipeline.platform.f fVar, @Nullable Map<com.facebook.imageformat.c, b> map) {
        this.f12730d = new C0079a();
        this.f12727a = bVar;
        this.f12728b = bVar2;
        this.f12729c = fVar;
        this.f12731e = map;
    }
}
