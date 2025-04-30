package androidx.appcompat.app;
/* loaded from: classes.dex */
class TwilightCalculator {
    public static final int DAY = 0;
    public static final int NIGHT = 1;

    /* renamed from: a  reason: collision with root package name */
    private static TwilightCalculator f304a = null;

    /* renamed from: b  reason: collision with root package name */
    private static final float f305b = 0.017453292f;

    /* renamed from: c  reason: collision with root package name */
    private static final float f306c = 9.0E-4f;

    /* renamed from: d  reason: collision with root package name */
    private static final float f307d = -0.10471976f;

    /* renamed from: e  reason: collision with root package name */
    private static final float f308e = 0.0334196f;

    /* renamed from: f  reason: collision with root package name */
    private static final float f309f = 3.49066E-4f;

    /* renamed from: g  reason: collision with root package name */
    private static final float f310g = 5.236E-6f;

    /* renamed from: h  reason: collision with root package name */
    private static final float f311h = 0.4092797f;

    /* renamed from: i  reason: collision with root package name */
    private static final long f312i = 946728000000L;
    public int state;
    public long sunrise;
    public long sunset;

    TwilightCalculator() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static TwilightCalculator a() {
        if (f304a == null) {
            f304a = new TwilightCalculator();
        }
        return f304a;
    }

    public void calculateTwilight(long j4, double d4, double d5) {
        float f4;
        float f5 = ((float) (j4 - f312i)) / 8.64E7f;
        double d6 = (0.01720197f * f5) + 6.24006f;
        Double.isNaN(d6);
        double sin = (Math.sin(d6) * 0.03341960161924362d) + d6 + (Math.sin(2.0f * f4) * 3.4906598739326E-4d) + (Math.sin(f4 * 3.0f) * 5.236000106378924E-6d) + 1.796593063d + 3.141592653589793d;
        double d7 = (-d5) / 360.0d;
        double d8 = f5 - f306c;
        Double.isNaN(d8);
        double round = ((float) Math.round(d8 - d7)) + f306c;
        Double.isNaN(round);
        double sin2 = round + d7 + (Math.sin(d6) * 0.0053d) + (Math.sin(2.0d * sin) * (-0.0069d));
        double asin = Math.asin(Math.sin(sin) * Math.sin(0.4092797040939331d));
        double d9 = 0.01745329238474369d * d4;
        double sin3 = (Math.sin(-0.10471975803375244d) - (Math.sin(d9) * Math.sin(asin))) / (Math.cos(d9) * Math.cos(asin));
        if (sin3 >= 1.0d) {
            this.state = 1;
            this.sunset = -1L;
            this.sunrise = -1L;
        } else if (sin3 <= -1.0d) {
            this.state = 0;
            this.sunset = -1L;
            this.sunrise = -1L;
        } else {
            double acos = (float) (Math.acos(sin3) / 6.283185307179586d);
            Double.isNaN(acos);
            this.sunset = Math.round((sin2 + acos) * 8.64E7d) + f312i;
            Double.isNaN(acos);
            long round2 = Math.round((sin2 - acos) * 8.64E7d) + f312i;
            this.sunrise = round2;
            if (round2 < j4 && this.sunset > j4) {
                this.state = 0;
            } else {
                this.state = 1;
            }
        }
    }
}
