package it.sephiroth.android.library.util;

import java.util.Random;
/* compiled from: MathUtils.java */
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Random f70411a = new Random();

    /* renamed from: b  reason: collision with root package name */
    private static final float f70412b = 0.017453292f;

    /* renamed from: c  reason: collision with root package name */
    private static final float f70413c = 57.295784f;

    private a() {
    }

    public static float A(float f4, float f5) {
        return (float) Math.pow(f4, f5);
    }

    public static float B(float f4) {
        return f4 * f70412b;
    }

    public static float C(float f4) {
        return f70411a.nextFloat() * f4;
    }

    public static float D(float f4, float f5) {
        return f4 >= f5 ? f4 : (f70411a.nextFloat() * (f5 - f4)) + f4;
    }

    public static int E(int i2) {
        return (int) (f70411a.nextFloat() * i2);
    }

    public static int F(int i2, int i4) {
        return i2 >= i4 ? i2 : (int) ((f70411a.nextFloat() * (i4 - i2)) + i2);
    }

    public static void G(long j4) {
        f70411a.setSeed(j4);
    }

    public static float H(float f4) {
        return f4 * f4;
    }

    public static float I(float f4) {
        return (float) Math.tan(f4);
    }

    public static float a(float f4) {
        return f4 > 0.0f ? f4 : -f4;
    }

    public static float b(float f4) {
        return (float) Math.acos(f4);
    }

    public static float c(float f4) {
        return (float) Math.asin(f4);
    }

    public static float d(float f4) {
        return (float) Math.atan(f4);
    }

    public static float e(float f4, float f5) {
        return (float) Math.atan2(f4, f5);
    }

    public static float f(float f4, float f5, float f6) {
        return f4 < f5 ? f5 : f4 > f6 ? f6 : f4;
    }

    public static int g(int i2, int i4, int i5) {
        return i2 < i4 ? i4 : i2 > i5 ? i5 : i2;
    }

    public static long h(long j4, long j5, long j6) {
        return j4 < j5 ? j5 : j4 > j6 ? j6 : j4;
    }

    public static float i(float f4) {
        return f4 * f70413c;
    }

    public static float j(float f4, float f5, float f6, float f7) {
        float f8 = f6 - f4;
        float f9 = f7 - f5;
        return (float) Math.sqrt((f8 * f8) + (f9 * f9));
    }

    public static float k(float f4, float f5, float f6, float f7, float f8, float f9) {
        float f10 = f7 - f4;
        float f11 = f8 - f5;
        float f12 = f9 - f6;
        return (float) Math.sqrt((f10 * f10) + (f11 * f11) + (f12 * f12));
    }

    public static float l(float f4) {
        return (float) Math.exp(f4);
    }

    public static float m(float f4, float f5, float f6) {
        return f4 + ((f5 - f4) * f6);
    }

    public static float n(float f4) {
        return (float) Math.log(f4);
    }

    public static float o(float f4, float f5) {
        return (float) Math.sqrt((f4 * f4) + (f5 * f5));
    }

    public static float p(float f4, float f5, float f6) {
        return (float) Math.sqrt((f4 * f4) + (f5 * f5) + (f6 * f6));
    }

    public static float q(float f4, float f5, float f6, float f7, float f8) {
        return f6 + ((f6 - f7) * ((f8 - f4) / (f5 - f4)));
    }

    public static float r(float f4, float f5) {
        return f4 > f5 ? f4 : f5;
    }

    public static float s(float f4, float f5, float f6) {
        if (f4 > f5) {
            if (f4 > f6) {
                return f4;
            }
        } else if (f5 > f6) {
            return f5;
        }
        return f6;
    }

    public static float t(int i2, int i4) {
        return i2 > i4 ? i2 : i4;
    }

    public static float u(int i2, int i4, int i5) {
        if (i2 > i4) {
            if (i2 <= i5) {
                i2 = i5;
            }
            return i2;
        }
        if (i4 <= i5) {
            i4 = i5;
        }
        return i4;
    }

    public static float v(float f4, float f5) {
        return f4 < f5 ? f4 : f5;
    }

    public static float w(float f4, float f5, float f6) {
        if (f4 < f5) {
            if (f4 < f6) {
                return f4;
            }
        } else if (f5 < f6) {
            return f5;
        }
        return f6;
    }

    public static float x(int i2, int i4) {
        return i2 < i4 ? i2 : i4;
    }

    public static float y(int i2, int i4, int i5) {
        if (i2 < i4) {
            if (i2 >= i5) {
                i2 = i5;
            }
            return i2;
        }
        if (i4 >= i5) {
            i4 = i5;
        }
        return i4;
    }

    public static float z(float f4, float f5, float f6) {
        return (f6 - f4) / (f5 - f4);
    }
}
