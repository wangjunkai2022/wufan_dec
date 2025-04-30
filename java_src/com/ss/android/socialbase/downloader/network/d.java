package com.ss.android.socialbase.downloader.network;
/* compiled from: ExponentialGeometricAverage.java */
/* loaded from: classes4.dex */
class d {

    /* renamed from: a  reason: collision with root package name */
    private final double f58544a;

    /* renamed from: b  reason: collision with root package name */
    private final int f58545b;

    /* renamed from: c  reason: collision with root package name */
    private double f58546c = -1.0d;

    /* renamed from: d  reason: collision with root package name */
    private int f58547d;

    public d(double d4) {
        this.f58544a = d4;
        this.f58545b = d4 == 0.0d ? Integer.MAX_VALUE : (int) Math.ceil(1.0d / d4);
    }

    public void a(double d4) {
        double d5 = 1.0d - this.f58544a;
        int i2 = this.f58547d;
        if (i2 > this.f58545b) {
            this.f58546c = Math.exp((d5 * Math.log(this.f58546c)) + (this.f58544a * Math.log(d4)));
        } else if (i2 > 0) {
            double d6 = i2;
            Double.isNaN(d6);
            double d7 = i2;
            Double.isNaN(d7);
            double d8 = (d5 * d6) / (d7 + 1.0d);
            this.f58546c = Math.exp((d8 * Math.log(this.f58546c)) + ((1.0d - d8) * Math.log(d4)));
        } else {
            this.f58546c = d4;
        }
        this.f58547d++;
    }

    public double a() {
        return this.f58546c;
    }
}
