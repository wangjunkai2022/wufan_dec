package com.facebook.imagepipeline.transcoder;

import android.graphics.Matrix;
import com.facebook.common.internal.ImmutableList;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.imagepipeline.common.RotationOptions;
import javax.annotation.Nullable;
/* compiled from: JpegTranscoderUtils.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final int f13344a = 360;

    /* renamed from: b  reason: collision with root package name */
    public static final int f13345b = 0;

    /* renamed from: c  reason: collision with root package name */
    public static final int f13346c = 100;

    /* renamed from: d  reason: collision with root package name */
    public static final int f13347d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f13348e = 16;

    /* renamed from: f  reason: collision with root package name */
    public static final int f13349f = 8;

    /* renamed from: g  reason: collision with root package name */
    public static final ImmutableList<Integer> f13350g = ImmutableList.b(2, 7, 4, 5);
    @VisibleForTesting

    /* renamed from: h  reason: collision with root package name */
    public static final int f13351h = 85;

    @VisibleForTesting
    public static int a(int i2) {
        return Math.max(1, 8 / i2);
    }

    @VisibleForTesting
    public static float b(com.facebook.imagepipeline.common.d dVar, int i2, int i4) {
        if (dVar == null) {
            return 1.0f;
        }
        float f4 = i2;
        float f5 = i4;
        float max = Math.max(dVar.f12570a / f4, dVar.f12571b / f5);
        float f6 = dVar.f12572c;
        if (f4 * max > f6) {
            max = f6 / f4;
        }
        return f5 * max > f6 ? f6 / f5 : max;
    }

    private static int c(com.facebook.imagepipeline.image.e eVar) {
        int q3 = eVar.q();
        if (q3 == 90 || q3 == 180 || q3 == 270) {
            return eVar.q();
        }
        return 0;
    }

    public static int d(RotationOptions rotationOptions, com.facebook.imagepipeline.image.e eVar) {
        int k4 = eVar.k();
        ImmutableList<Integer> immutableList = f13350g;
        int indexOf = immutableList.indexOf(Integer.valueOf(k4));
        if (indexOf >= 0) {
            return immutableList.get((indexOf + ((rotationOptions.h() ? 0 : rotationOptions.f()) / 90)) % immutableList.size()).intValue();
        }
        throw new IllegalArgumentException("Only accepts inverted exif orientations");
    }

    public static int e(RotationOptions rotationOptions, com.facebook.imagepipeline.image.e eVar) {
        if (rotationOptions.g()) {
            int c4 = c(eVar);
            return rotationOptions.h() ? c4 : (c4 + rotationOptions.f()) % f13344a;
        }
        return 0;
    }

    public static int f(RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.d dVar, com.facebook.imagepipeline.image.e eVar, boolean z3) {
        if (z3 && dVar != null) {
            int e4 = e(rotationOptions, eVar);
            boolean z4 = false;
            int d4 = f13350g.contains(Integer.valueOf(eVar.k())) ? d(rotationOptions, eVar) : 0;
            z4 = (e4 == 90 || e4 == 270 || d4 == 5 || d4 == 7) ? true : true;
            int k4 = k(b(dVar, z4 ? eVar.n() : eVar.u(), z4 ? eVar.u() : eVar.n()), dVar.f12573d);
            if (k4 > 8) {
                return 8;
            }
            if (k4 < 1) {
                return 1;
            }
            return k4;
        }
        return 8;
    }

    @Nullable
    public static Matrix g(com.facebook.imagepipeline.image.e eVar, RotationOptions rotationOptions) {
        if (f13350g.contains(Integer.valueOf(eVar.k()))) {
            return h(d(rotationOptions, eVar));
        }
        int e4 = e(rotationOptions, eVar);
        if (e4 != 0) {
            Matrix matrix = new Matrix();
            matrix.setRotate(e4);
            return matrix;
        }
        return null;
    }

    @Nullable
    private static Matrix h(int i2) {
        Matrix matrix = new Matrix();
        if (i2 == 2) {
            matrix.setScale(-1.0f, 1.0f);
        } else if (i2 == 7) {
            matrix.setRotate(-90.0f);
            matrix.postScale(-1.0f, 1.0f);
        } else if (i2 == 4) {
            matrix.setRotate(180.0f);
            matrix.postScale(-1.0f, 1.0f);
        } else if (i2 != 5) {
            return null;
        } else {
            matrix.setRotate(90.0f);
            matrix.postScale(-1.0f, 1.0f);
        }
        return matrix;
    }

    public static boolean i(int i2) {
        switch (i2) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public static boolean j(int i2) {
        return i2 >= 0 && i2 <= 270 && i2 % 90 == 0;
    }

    @VisibleForTesting
    public static int k(float f4, float f5) {
        return (int) (f5 + (f4 * 8.0f));
    }
}
