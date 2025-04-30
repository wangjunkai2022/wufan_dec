package com.facebook.rebound;
/* compiled from: BouncyConversion.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: e  reason: collision with root package name */
    static final /* synthetic */ boolean f13418e = false;

    /* renamed from: a  reason: collision with root package name */
    private final double f13419a;

    /* renamed from: b  reason: collision with root package name */
    private final double f13420b;

    /* renamed from: c  reason: collision with root package name */
    private final double f13421c;

    /* renamed from: d  reason: collision with root package name */
    private final double f13422d;

    public d(double d4, double d5) {
        this.f13421c = d4;
        this.f13422d = d5;
        double k4 = k(j(d5 / 1.7d, 0.0d, 20.0d), 0.0d, 0.8d);
        double k5 = k(j(d4 / 1.7d, 0.0d, 20.0d), 0.5d, 200.0d);
        this.f13419a = k5;
        this.f13420b = l(k4, d(k5), 0.01d);
    }

    private double a(double d4) {
        return ((Math.pow(d4, 3.0d) * 7.0E-4d) - (Math.pow(d4, 2.0d) * 0.031d)) + (d4 * 0.64d) + 1.28d;
    }

    private double b(double d4) {
        return ((Math.pow(d4, 3.0d) * 4.4E-5d) - (Math.pow(d4, 2.0d) * 0.006d)) + (d4 * 0.36d) + 2.0d;
    }

    private double c(double d4) {
        return ((Math.pow(d4, 3.0d) * 4.5E-7d) - (Math.pow(d4, 2.0d) * 3.32E-4d)) + (d4 * 0.1078d) + 5.84d;
    }

    private double d(double d4) {
        if (d4 <= 18.0d) {
            return a(d4);
        }
        if (d4 <= 18.0d || d4 > 44.0d) {
            if (d4 > 44.0d) {
                return c(d4);
            }
            return 0.0d;
        }
        return b(d4);
    }

    private double i(double d4, double d5, double d6) {
        return (d6 * d4) + ((1.0d - d4) * d5);
    }

    private double j(double d4, double d5, double d6) {
        return (d4 - d5) / (d6 - d5);
    }

    private double k(double d4, double d5, double d6) {
        return d5 + (d4 * (d6 - d5));
    }

    private double l(double d4, double d5, double d6) {
        return i((2.0d * d4) - (d4 * d4), d5, d6);
    }

    public double e() {
        return this.f13422d;
    }

    public double f() {
        return this.f13420b;
    }

    public double g() {
        return this.f13419a;
    }

    public double h() {
        return this.f13421c;
    }
}
