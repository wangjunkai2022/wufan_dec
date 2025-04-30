package com.facebook.imagepipeline.transcoder;

import com.facebook.common.internal.VisibleForTesting;
import com.facebook.imagepipeline.common.RotationOptions;
import javax.annotation.Nullable;
/* compiled from: DownsampleUtil.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final int f13341a = 1;

    /* renamed from: b  reason: collision with root package name */
    private static final float f13342b = 0.33333334f;

    private a() {
    }

    @VisibleForTesting
    public static float a(RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.d dVar, com.facebook.imagepipeline.image.e eVar) {
        com.facebook.common.internal.h.d(com.facebook.imagepipeline.image.e.w(eVar));
        if (dVar == null || dVar.f12571b <= 0 || dVar.f12570a <= 0 || eVar.u() == 0 || eVar.n() == 0) {
            return 1.0f;
        }
        int c4 = c(rotationOptions, eVar);
        boolean z3 = c4 == 90 || c4 == 270;
        int n4 = z3 ? eVar.n() : eVar.u();
        int u3 = z3 ? eVar.u() : eVar.n();
        float f4 = dVar.f12570a / n4;
        float f5 = dVar.f12571b / u3;
        float max = Math.max(f4, f5);
        com.facebook.common.logging.a.i0("DownsampleUtil", "Downsample - Specified size: %dx%d, image size: %dx%d ratio: %.1f x %.1f, ratio: %.3f", Integer.valueOf(dVar.f12570a), Integer.valueOf(dVar.f12571b), Integer.valueOf(n4), Integer.valueOf(u3), Float.valueOf(f4), Float.valueOf(f5), Float.valueOf(max));
        return max;
    }

    public static int b(RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.d dVar, com.facebook.imagepipeline.image.e eVar, int i2) {
        int d4;
        if (com.facebook.imagepipeline.image.e.w(eVar)) {
            float a4 = a(rotationOptions, dVar, eVar);
            if (eVar.o() == com.facebook.imageformat.b.f12372a) {
                d4 = e(a4);
            } else {
                d4 = d(a4);
            }
            int max = Math.max(eVar.n(), eVar.u());
            float f4 = dVar != null ? dVar.f12572c : i2;
            while (max / d4 > f4) {
                d4 = eVar.o() == com.facebook.imageformat.b.f12372a ? d4 * 2 : d4 + 1;
            }
            return d4;
        }
        return 1;
    }

    private static int c(RotationOptions rotationOptions, com.facebook.imagepipeline.image.e eVar) {
        boolean z3 = false;
        if (rotationOptions.h()) {
            int q3 = eVar.q();
            com.facebook.common.internal.h.d((q3 == 0 || q3 == 90 || q3 == 180 || q3 == 270) ? true : true);
            return q3;
        }
        return 0;
    }

    @VisibleForTesting
    public static int d(float f4) {
        if (f4 > 0.6666667f) {
            return 1;
        }
        int i2 = 2;
        while (true) {
            double d4 = i2;
            double pow = Math.pow(d4, 2.0d);
            Double.isNaN(d4);
            Double.isNaN(d4);
            if ((1.0d / d4) + ((1.0d / (pow - d4)) * 0.3333333432674408d) <= f4) {
                return i2 - 1;
            }
            i2++;
        }
    }

    @VisibleForTesting
    public static int e(float f4) {
        if (f4 > 0.6666667f) {
            return 1;
        }
        int i2 = 2;
        while (true) {
            int i4 = i2 * 2;
            double d4 = i4;
            Double.isNaN(d4);
            double d5 = 1.0d / d4;
            if (d5 + (0.3333333432674408d * d5) <= f4) {
                return i2;
            }
            i2 = i4;
        }
    }

    @VisibleForTesting
    public static int f(int i2) {
        int i4 = 1;
        while (i4 < i2) {
            i4 *= 2;
        }
        return i4;
    }
}
