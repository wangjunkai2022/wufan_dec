package com.facebook.imagepipeline.bitmaps;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.memory.d0;
import com.facebook.imagepipeline.memory.p;
/* compiled from: HoneycombBitmapCreator.java */
/* loaded from: classes2.dex */
public class d implements com.facebook.common.webp.a {

    /* renamed from: a  reason: collision with root package name */
    private final b f12452a;

    /* renamed from: b  reason: collision with root package name */
    private final p f12453b;

    public d(d0 d0Var) {
        this.f12453b = d0Var.c();
        this.f12452a = new b(d0Var.g());
    }

    private static BitmapFactory.Options b(int i2, Bitmap.Config config) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDither = true;
        options.inPreferredConfig = config;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inSampleSize = i2;
        if (Build.VERSION.SDK_INT >= 11) {
            options.inMutable = true;
        }
        return options;
    }

    @Override // com.facebook.common.webp.a
    @TargetApi(12)
    public Bitmap a(int i2, int i4, Bitmap.Config config) {
        com.facebook.imagepipeline.image.e eVar;
        com.facebook.common.references.a<PooledByteBuffer> a4 = this.f12452a.a((short) i2, (short) i4);
        com.facebook.common.references.a<byte[]> aVar = null;
        try {
            eVar = new com.facebook.imagepipeline.image.e(a4);
            try {
                eVar.G(com.facebook.imageformat.b.f12372a);
                BitmapFactory.Options b4 = b(eVar.r(), config);
                int size = a4.i().size();
                aVar = this.f12453b.a(size + 2);
                byte[] i5 = aVar.i();
                a4.i().c(0, i5, 0, size);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(i5, 0, size, b4);
                decodeByteArray.setHasAlpha(true);
                decodeByteArray.eraseColor(0);
                com.facebook.common.references.a.g(aVar);
                com.facebook.imagepipeline.image.e.d(eVar);
                com.facebook.common.references.a.g(a4);
                return decodeByteArray;
            } catch (Throwable th) {
                th = th;
                com.facebook.common.references.a.g(aVar);
                com.facebook.imagepipeline.image.e.d(eVar);
                com.facebook.common.references.a.g(a4);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            eVar = null;
        }
    }
}
