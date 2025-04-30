package androidx.constraintlayout.core.motion.utils;
/* loaded from: classes.dex */
public class Schlick extends Easing {

    /* renamed from: r  reason: collision with root package name */
    private static final boolean f2185r = false;

    /* renamed from: o  reason: collision with root package name */
    double f2186o;

    /* renamed from: p  reason: collision with root package name */
    double f2187p;

    /* renamed from: q  reason: collision with root package name */
    double f2188q;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Schlick(String str) {
        this.f2100a = str;
        int indexOf = str.indexOf(40);
        int indexOf2 = str.indexOf(44, indexOf);
        this.f2186o = Double.parseDouble(str.substring(indexOf + 1, indexOf2).trim());
        int i2 = indexOf2 + 1;
        this.f2187p = Double.parseDouble(str.substring(i2, str.indexOf(44, i2)).trim());
    }

    private double a(double d4) {
        double d5 = this.f2187p;
        if (d4 < d5) {
            double d6 = this.f2186o;
            return ((d6 * d5) * d5) / ((((d5 - d4) * d6) + d4) * ((d6 * (d5 - d4)) + d4));
        }
        double d7 = this.f2186o;
        return (((d5 - 1.0d) * d7) * (d5 - 1.0d)) / (((((-d7) * (d5 - d4)) - d4) + 1.0d) * ((((-d7) * (d5 - d4)) - d4) + 1.0d));
    }

    private double b(double d4) {
        double d5 = this.f2187p;
        if (d4 < d5) {
            return (d5 * d4) / (d4 + (this.f2186o * (d5 - d4)));
        }
        return ((1.0d - d5) * (d4 - 1.0d)) / ((1.0d - d4) - (this.f2186o * (d5 - d4)));
    }

    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double get(double d4) {
        return b(d4);
    }

    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double getDiff(double d4) {
        return a(d4);
    }
}
