package com.facebook.imagepipeline.nativecode;

import com.facebook.common.internal.DoNotStrip;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.internal.h;
import com.facebook.imagepipeline.common.RotationOptions;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.annotation.Nullable;
@DoNotStrip
/* loaded from: classes.dex */
public class NativeJpegTranscoder implements com.facebook.imagepipeline.transcoder.c {

    /* renamed from: d  reason: collision with root package name */
    public static final String f12920d = "NativeJpegTranscoder";

    /* renamed from: a  reason: collision with root package name */
    private boolean f12921a;

    /* renamed from: b  reason: collision with root package name */
    private int f12922b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f12923c;

    static {
        d.a();
    }

    public NativeJpegTranscoder(boolean z3, int i2, boolean z4) {
        this.f12921a = z3;
        this.f12922b = i2;
        this.f12923c = z4;
    }

    @VisibleForTesting
    public static void d(InputStream inputStream, OutputStream outputStream, int i2, int i4, int i5) throws IOException {
        d.a();
        boolean z3 = false;
        h.d(i4 >= 1);
        h.d(i4 <= 16);
        h.d(i5 >= 0);
        h.d(i5 <= 100);
        h.d(com.facebook.imagepipeline.transcoder.e.j(i2));
        h.e((i4 == 8 && i2 == 0) ? true : true, "no transformation requested");
        nativeTranscodeJpeg((InputStream) h.i(inputStream), (OutputStream) h.i(outputStream), i2, i4, i5);
    }

    @VisibleForTesting
    public static void e(InputStream inputStream, OutputStream outputStream, int i2, int i4, int i5) throws IOException {
        d.a();
        boolean z3 = false;
        h.d(i4 >= 1);
        h.d(i4 <= 16);
        h.d(i5 >= 0);
        h.d(i5 <= 100);
        h.d(com.facebook.imagepipeline.transcoder.e.i(i2));
        h.e((i4 == 8 && i2 == 1) ? true : true, "no transformation requested");
        nativeTranscodeJpegWithExifOrientation((InputStream) h.i(inputStream), (OutputStream) h.i(outputStream), i2, i4, i5);
    }

    @DoNotStrip
    private static native void nativeTranscodeJpeg(InputStream inputStream, OutputStream outputStream, int i2, int i4, int i5) throws IOException;

    @DoNotStrip
    private static native void nativeTranscodeJpegWithExifOrientation(InputStream inputStream, OutputStream outputStream, int i2, int i4, int i5) throws IOException;

    @Override // com.facebook.imagepipeline.transcoder.c
    public boolean a(com.facebook.imagepipeline.image.e eVar, @Nullable RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.d dVar) {
        if (rotationOptions == null) {
            rotationOptions = RotationOptions.a();
        }
        return com.facebook.imagepipeline.transcoder.e.f(rotationOptions, dVar, eVar, this.f12921a) < 8;
    }

    @Override // com.facebook.imagepipeline.transcoder.c
    public com.facebook.imagepipeline.transcoder.b b(com.facebook.imagepipeline.image.e eVar, OutputStream outputStream, @Nullable RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.d dVar, @Nullable com.facebook.imageformat.c cVar, @Nullable Integer num) throws IOException {
        if (num == null) {
            num = 85;
        }
        if (rotationOptions == null) {
            rotationOptions = RotationOptions.a();
        }
        int b4 = com.facebook.imagepipeline.transcoder.a.b(rotationOptions, dVar, eVar, this.f12922b);
        try {
            int f4 = com.facebook.imagepipeline.transcoder.e.f(rotationOptions, dVar, eVar, this.f12921a);
            int a4 = com.facebook.imagepipeline.transcoder.e.a(b4);
            if (this.f12923c) {
                f4 = a4;
            }
            InputStream p3 = eVar.p();
            if (com.facebook.imagepipeline.transcoder.e.f13350g.contains(Integer.valueOf(eVar.k()))) {
                e(p3, outputStream, com.facebook.imagepipeline.transcoder.e.d(rotationOptions, eVar), f4, num.intValue());
            } else {
                d(p3, outputStream, com.facebook.imagepipeline.transcoder.e.e(rotationOptions, eVar), f4, num.intValue());
            }
            com.facebook.common.internal.c.b(p3);
            return new com.facebook.imagepipeline.transcoder.b(b4 != 1 ? 0 : 1);
        } catch (Throwable th) {
            com.facebook.common.internal.c.b(null);
            throw th;
        }
    }

    @Override // com.facebook.imagepipeline.transcoder.c
    public boolean c(com.facebook.imageformat.c cVar) {
        return cVar == com.facebook.imageformat.b.f12372a;
    }

    @Override // com.facebook.imagepipeline.transcoder.c
    public String getIdentifier() {
        return f12920d;
    }
}
