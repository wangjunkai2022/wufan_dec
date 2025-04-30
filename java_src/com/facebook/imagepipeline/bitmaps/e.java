package com.facebook.imagepipeline.bitmaps;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import com.facebook.common.memory.PooledByteBuffer;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: HoneycombBitmapFactory.java */
@ThreadSafe
@TargetApi(11)
/* loaded from: classes2.dex */
public class e extends f {

    /* renamed from: d  reason: collision with root package name */
    private static final String f12454d = "e";

    /* renamed from: a  reason: collision with root package name */
    private final b f12455a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.platform.f f12456b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f12457c;

    public e(b bVar, com.facebook.imagepipeline.platform.f fVar) {
        this.f12455a = bVar;
        this.f12456b = fVar;
    }

    private static com.facebook.common.references.a<Bitmap> E(int i2, int i4, Bitmap.Config config) {
        return com.facebook.common.references.a.q(Bitmap.createBitmap(i2, i4, config), h.a());
    }

    @Override // com.facebook.imagepipeline.bitmaps.f
    @TargetApi(12)
    public com.facebook.common.references.a<Bitmap> z(int i2, int i4, Bitmap.Config config) {
        if (this.f12457c) {
            return E(i2, i4, config);
        }
        com.facebook.common.references.a<PooledByteBuffer> a4 = this.f12455a.a((short) i2, (short) i4);
        try {
            com.facebook.imagepipeline.image.e eVar = new com.facebook.imagepipeline.image.e(a4);
            eVar.G(com.facebook.imageformat.b.f12372a);
            com.facebook.common.references.a<Bitmap> d4 = this.f12456b.d(eVar, config, null, a4.i().size());
            if (!d4.i().isMutable()) {
                com.facebook.common.references.a.g(d4);
                this.f12457c = true;
                com.facebook.common.logging.a.w0(f12454d, "Immutable bitmap returned by decoder");
                com.facebook.common.references.a<Bitmap> E = E(i2, i4, config);
                com.facebook.imagepipeline.image.e.d(eVar);
                return E;
            }
            d4.i().setHasAlpha(true);
            d4.i().eraseColor(0);
            com.facebook.imagepipeline.image.e.d(eVar);
            return d4;
        } finally {
            a4.close();
        }
    }
}
