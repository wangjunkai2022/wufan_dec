package com.facebook.imagepipeline.bitmaps;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.util.DisplayMetrics;
import javax.annotation.Nullable;
/* compiled from: PlatformBitmapFactory.java */
/* loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlatformBitmapFactory.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12458a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f12458a = iArr;
            try {
                iArr[Bitmap.Config.RGB_565.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12458a[Bitmap.Config.ALPHA_8.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12458a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12458a[Bitmap.Config.ARGB_8888.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private static Bitmap.Config C(Bitmap bitmap) {
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
        Bitmap.Config config2 = bitmap.getConfig();
        if (config2 != null) {
            int i2 = a.f12458a[config2.ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    return Bitmap.Config.ARGB_8888;
                }
                return Bitmap.Config.ALPHA_8;
            }
            return Bitmap.Config.RGB_565;
        }
        return config;
    }

    private static void D(Bitmap bitmap, Bitmap bitmap2) {
        bitmap2.setDensity(bitmap.getDensity());
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 12) {
            bitmap2.setHasAlpha(bitmap.hasAlpha());
        }
        if (i2 >= 19) {
            bitmap2.setPremultiplied(bitmap.isPremultiplied());
        }
    }

    private static void a(Bitmap bitmap, int i2, int i4, int i5, int i6) {
        com.facebook.common.internal.h.e(i2 + i5 <= bitmap.getWidth(), "x + width must be <= bitmap.width()");
        com.facebook.common.internal.h.e(i4 + i6 <= bitmap.getHeight(), "y + height must be <= bitmap.height()");
    }

    private static void b(int i2, int i4) {
        com.facebook.common.internal.h.e(i2 > 0, "width must be > 0");
        com.facebook.common.internal.h.e(i4 > 0, "height must be > 0");
    }

    private static void c(int i2, int i4) {
        com.facebook.common.internal.h.e(i2 >= 0, "x must be >= 0");
        com.facebook.common.internal.h.e(i4 >= 0, "y must be >= 0");
    }

    private com.facebook.common.references.a<Bitmap> g(int i2, int i4, Bitmap.Config config, boolean z3) {
        return h(i2, i4, config, z3, null);
    }

    private com.facebook.common.references.a<Bitmap> h(int i2, int i4, Bitmap.Config config, boolean z3, @Nullable Object obj) {
        return s(null, i2, i4, config, z3, obj);
    }

    private com.facebook.common.references.a<Bitmap> r(DisplayMetrics displayMetrics, int i2, int i4, Bitmap.Config config, boolean z3) {
        return s(displayMetrics, i2, i4, config, z3, null);
    }

    private com.facebook.common.references.a<Bitmap> s(DisplayMetrics displayMetrics, int i2, int i4, Bitmap.Config config, boolean z3, @Nullable Object obj) {
        b(i2, i4);
        com.facebook.common.references.a<Bitmap> z4 = z(i2, i4, config);
        Bitmap i5 = z4.i();
        if (displayMetrics != null) {
            i5.setDensity(displayMetrics.densityDpi);
        }
        if (Build.VERSION.SDK_INT >= 12) {
            i5.setHasAlpha(z3);
        }
        if (config == Bitmap.Config.ARGB_8888 && !z3) {
            i5.eraseColor(-16777216);
        }
        return z4;
    }

    public com.facebook.common.references.a<Bitmap> A(Bitmap bitmap, int i2, int i4, boolean z3) {
        return B(bitmap, i2, i4, z3, null);
    }

    public com.facebook.common.references.a<Bitmap> B(Bitmap bitmap, int i2, int i4, boolean z3, @Nullable Object obj) {
        b(i2, i4);
        Matrix matrix = new Matrix();
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        matrix.setScale(i2 / width, i4 / height);
        return m(bitmap, 0, 0, width, height, matrix, z3, obj);
    }

    public com.facebook.common.references.a<Bitmap> d(int i2, int i4) {
        return e(i2, i4, Bitmap.Config.ARGB_8888);
    }

    public com.facebook.common.references.a<Bitmap> e(int i2, int i4, Bitmap.Config config) {
        return f(i2, i4, config, null);
    }

    public com.facebook.common.references.a<Bitmap> f(int i2, int i4, Bitmap.Config config, @Nullable Object obj) {
        return z(i2, i4, config);
    }

    public com.facebook.common.references.a<Bitmap> i(int i2, int i4, @Nullable Object obj) {
        return f(i2, i4, Bitmap.Config.ARGB_8888, obj);
    }

    public com.facebook.common.references.a<Bitmap> j(Bitmap bitmap) {
        return o(bitmap, null);
    }

    public com.facebook.common.references.a<Bitmap> k(Bitmap bitmap, int i2, int i4, int i5, int i6) {
        return n(bitmap, i2, i4, i5, i6, null);
    }

    public com.facebook.common.references.a<Bitmap> l(Bitmap bitmap, int i2, int i4, int i5, int i6, @Nullable Matrix matrix, boolean z3) {
        return m(bitmap, i2, i4, i5, i6, matrix, z3, null);
    }

    public com.facebook.common.references.a<Bitmap> m(Bitmap bitmap, int i2, int i4, int i5, int i6, @Nullable Matrix matrix, boolean z3, @Nullable Object obj) {
        com.facebook.common.references.a<Bitmap> h4;
        Canvas canvas;
        Paint paint;
        com.facebook.common.internal.h.j(bitmap, "Source bitmap cannot be null");
        c(i2, i4);
        b(i5, i6);
        a(bitmap, i2, i4, i5, i6);
        Rect rect = new Rect(i2, i4, i2 + i5, i4 + i6);
        RectF rectF = new RectF(0.0f, 0.0f, i5, i6);
        Bitmap.Config C = C(bitmap);
        if (matrix != null && !matrix.isIdentity()) {
            boolean z4 = !matrix.rectStaysRect();
            RectF rectF2 = new RectF();
            matrix.mapRect(rectF2, rectF);
            int round = Math.round(rectF2.width());
            int round2 = Math.round(rectF2.height());
            if (z4) {
                C = Bitmap.Config.ARGB_8888;
            }
            h4 = h(round, round2, C, z4 || bitmap.hasAlpha(), obj);
            D(bitmap, h4.i());
            canvas = new Canvas(h4.i());
            canvas.translate(-rectF2.left, -rectF2.top);
            canvas.concat(matrix);
            paint = new Paint();
            paint.setFilterBitmap(z3);
            if (z4) {
                paint.setAntiAlias(true);
            }
        } else {
            h4 = h(i5, i6, C, bitmap.hasAlpha(), obj);
            D(bitmap, h4.i());
            canvas = new Canvas(h4.i());
            paint = null;
        }
        canvas.drawBitmap(bitmap, rect, rectF, paint);
        canvas.setBitmap(null);
        return h4;
    }

    public com.facebook.common.references.a<Bitmap> n(Bitmap bitmap, int i2, int i4, int i5, int i6, @Nullable Object obj) {
        return m(bitmap, i2, i4, i5, i6, null, false, obj);
    }

    public com.facebook.common.references.a<Bitmap> o(Bitmap bitmap, @Nullable Object obj) {
        return n(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), obj);
    }

    public com.facebook.common.references.a<Bitmap> p(DisplayMetrics displayMetrics, int i2, int i4, Bitmap.Config config) {
        return q(displayMetrics, i2, i4, config, null);
    }

    public com.facebook.common.references.a<Bitmap> q(DisplayMetrics displayMetrics, int i2, int i4, Bitmap.Config config, @Nullable Object obj) {
        return s(displayMetrics, i2, i4, config, true, obj);
    }

    public com.facebook.common.references.a<Bitmap> t(DisplayMetrics displayMetrics, int[] iArr, int i2, int i4, int i5, int i6, Bitmap.Config config) {
        return u(displayMetrics, iArr, i2, i4, i5, i6, config, null);
    }

    public com.facebook.common.references.a<Bitmap> u(DisplayMetrics displayMetrics, int[] iArr, int i2, int i4, int i5, int i6, Bitmap.Config config, @Nullable Object obj) {
        com.facebook.common.references.a<Bitmap> q3 = q(displayMetrics, i5, i6, config, obj);
        q3.i().setPixels(iArr, i2, i4, 0, 0, i5, i6);
        return q3;
    }

    public com.facebook.common.references.a<Bitmap> v(DisplayMetrics displayMetrics, int[] iArr, int i2, int i4, Bitmap.Config config) {
        return w(displayMetrics, iArr, i2, i4, config, null);
    }

    public com.facebook.common.references.a<Bitmap> w(DisplayMetrics displayMetrics, int[] iArr, int i2, int i4, Bitmap.Config config, @Nullable Object obj) {
        return u(displayMetrics, iArr, 0, i2, i2, i4, config, obj);
    }

    public com.facebook.common.references.a<Bitmap> x(int[] iArr, int i2, int i4, Bitmap.Config config) {
        return y(iArr, i2, i4, config, null);
    }

    public com.facebook.common.references.a<Bitmap> y(int[] iArr, int i2, int i4, Bitmap.Config config, @Nullable Object obj) {
        com.facebook.common.references.a<Bitmap> z3 = z(i2, i4, config);
        z3.i().setPixels(iArr, 0, i2, 0, 0, i2, i4);
        return z3;
    }

    public abstract com.facebook.common.references.a<Bitmap> z(int i2, int i4, Bitmap.Config config);
}
