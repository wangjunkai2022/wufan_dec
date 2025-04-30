package com.facebook.imagepipeline.transcoder;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.os.Build;
import com.facebook.imagepipeline.common.RotationOptions;
import java.io.OutputStream;
import javax.annotation.Nullable;
/* compiled from: SimpleImageTranscoder.java */
/* loaded from: classes.dex */
public class g implements c {

    /* renamed from: c  reason: collision with root package name */
    private static final String f13356c = "SimpleImageTranscoder";

    /* renamed from: a  reason: collision with root package name */
    private final boolean f13357a;

    /* renamed from: b  reason: collision with root package name */
    private final int f13358b;

    public g(boolean z3, int i2) {
        this.f13357a = z3;
        this.f13358b = i2;
    }

    private static Bitmap.CompressFormat d(@Nullable com.facebook.imageformat.c cVar) {
        if (cVar == null) {
            return Bitmap.CompressFormat.JPEG;
        }
        if (cVar == com.facebook.imageformat.b.f12372a) {
            return Bitmap.CompressFormat.JPEG;
        }
        if (cVar == com.facebook.imageformat.b.f12373b) {
            return Bitmap.CompressFormat.PNG;
        }
        if (Build.VERSION.SDK_INT >= 14 && com.facebook.imageformat.b.b(cVar)) {
            return Bitmap.CompressFormat.WEBP;
        }
        return Bitmap.CompressFormat.JPEG;
    }

    private int e(com.facebook.imagepipeline.image.e eVar, RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.d dVar) {
        if (this.f13357a) {
            return a.b(rotationOptions, dVar, eVar, this.f13358b);
        }
        return 1;
    }

    @Override // com.facebook.imagepipeline.transcoder.c
    public boolean a(com.facebook.imagepipeline.image.e eVar, @Nullable RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.d dVar) {
        if (rotationOptions == null) {
            rotationOptions = RotationOptions.a();
        }
        return this.f13357a && a.b(rotationOptions, dVar, eVar, this.f13358b) > 1;
    }

    @Override // com.facebook.imagepipeline.transcoder.c
    public b b(com.facebook.imagepipeline.image.e eVar, OutputStream outputStream, @Nullable RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.d dVar, @Nullable com.facebook.imageformat.c cVar, @Nullable Integer num) {
        g gVar;
        RotationOptions rotationOptions2;
        Bitmap bitmap;
        Throwable th;
        OutOfMemoryError e4;
        Integer num2 = num == null ? 85 : num;
        if (rotationOptions == null) {
            rotationOptions2 = RotationOptions.a();
            gVar = this;
        } else {
            gVar = this;
            rotationOptions2 = rotationOptions;
        }
        int e5 = gVar.e(eVar, rotationOptions2, dVar);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = e5;
        try {
            Bitmap decodeStream = BitmapFactory.decodeStream(eVar.p(), null, options);
            if (decodeStream == null) {
                com.facebook.common.logging.a.u(f13356c, "Couldn't decode the EncodedImage InputStream ! ");
                return new b(2);
            }
            Matrix g4 = e.g(eVar, rotationOptions2);
            if (g4 != null) {
                try {
                    bitmap = Bitmap.createBitmap(decodeStream, 0, 0, decodeStream.getWidth(), decodeStream.getHeight(), g4, false);
                } catch (OutOfMemoryError e6) {
                    e4 = e6;
                    bitmap = decodeStream;
                    com.facebook.common.logging.a.v(f13356c, "Out-Of-Memory during transcode", e4);
                    b bVar = new b(2);
                    bitmap.recycle();
                    decodeStream.recycle();
                    return bVar;
                } catch (Throwable th2) {
                    th = th2;
                    bitmap = decodeStream;
                    bitmap.recycle();
                    decodeStream.recycle();
                    throw th;
                }
            } else {
                bitmap = decodeStream;
            }
            try {
                try {
                    bitmap.compress(d(cVar), num2.intValue(), outputStream);
                    b bVar2 = new b(e5 > 1 ? 0 : 1);
                    bitmap.recycle();
                    decodeStream.recycle();
                    return bVar2;
                } catch (OutOfMemoryError e7) {
                    e4 = e7;
                    com.facebook.common.logging.a.v(f13356c, "Out-Of-Memory during transcode", e4);
                    b bVar3 = new b(2);
                    bitmap.recycle();
                    decodeStream.recycle();
                    return bVar3;
                }
            } catch (Throwable th3) {
                th = th3;
                bitmap.recycle();
                decodeStream.recycle();
                throw th;
            }
        } catch (OutOfMemoryError e8) {
            com.facebook.common.logging.a.v(f13356c, "Out-Of-Memory during transcode", e8);
            return new b(2);
        }
    }

    @Override // com.facebook.imagepipeline.transcoder.c
    public boolean c(com.facebook.imageformat.c cVar) {
        return cVar == com.facebook.imageformat.b.f12382k || cVar == com.facebook.imageformat.b.f12372a;
    }

    @Override // com.facebook.imagepipeline.transcoder.c
    public String getIdentifier() {
        return f13356c;
    }
}
