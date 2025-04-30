package c1;
/* compiled from: MathUtils.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final float f8295a = 1.0E-4f;

    private a() {
    }

    public static float a(float f4, float f5, float f6, float f7) {
        return (float) Math.hypot(f6 - f4, f7 - f5);
    }

    public static float b(float f4, float f5, float f6, float f7, float f8, float f9) {
        return g(a(f4, f5, f6, f7), a(f4, f5, f8, f7), a(f4, f5, f8, f9), a(f4, f5, f6, f9));
    }

    public static float c(float f4, int i2) {
        float f5 = i2;
        int i4 = (int) (f4 / f5);
        if (Math.signum(f4) * f5 < 0.0f && i4 * i2 != f4) {
            i4--;
        }
        return f4 - (i4 * i2);
    }

    public static int d(int i2, int i4) {
        int i5 = i2 / i4;
        if ((i2 ^ i4) < 0 && i5 * i4 != i2) {
            i5--;
        }
        return i2 - (i5 * i4);
    }

    public static boolean e(float f4, float f5, float f6) {
        return f4 + f6 >= f5;
    }

    public static float f(float f4, float f5, float f6) {
        return ((1.0f - f6) * f4) + (f6 * f5);
    }

    private static float g(float f4, float f5, float f6, float f7) {
        return (f4 <= f5 || f4 <= f6 || f4 <= f7) ? (f5 <= f6 || f5 <= f7) ? f6 > f7 ? f6 : f7 : f5 : f4;
    }
}
