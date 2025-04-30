package com.facebook.rebound;
/* compiled from: SpringConfig.java */
/* loaded from: classes2.dex */
public class k {

    /* renamed from: c  reason: collision with root package name */
    public static k f13469c = b(40.0d, 7.0d);

    /* renamed from: a  reason: collision with root package name */
    public double f13470a;

    /* renamed from: b  reason: collision with root package name */
    public double f13471b;

    public k(double d4, double d5) {
        this.f13471b = d4;
        this.f13470a = d5;
    }

    public static k a(double d4, double d5) {
        d dVar = new d(d5, d4);
        return b(dVar.g(), dVar.f());
    }

    public static k b(double d4, double d5) {
        return new k(g.d(d4), g.a(d5));
    }
}
