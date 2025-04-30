package com.join.mgps.event;
/* compiled from: DeleteOrModifyCommentEvent.java */
/* loaded from: classes4.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private int f48171a;

    /* renamed from: b  reason: collision with root package name */
    private String f48172b;

    /* renamed from: c  reason: collision with root package name */
    private double f48173c;

    /* renamed from: d  reason: collision with root package name */
    private long f48174d;

    /* renamed from: e  reason: collision with root package name */
    private String f48175e;

    public h(int i2, String str, double d4, long j4, String str2) {
        this.f48171a = i2;
        this.f48172b = str;
        this.f48173c = d4;
        this.f48174d = j4;
        this.f48175e = str2;
    }

    public String a() {
        return this.f48172b;
    }

    public String b() {
        return this.f48175e;
    }

    public double c() {
        return this.f48173c;
    }

    public long d() {
        return this.f48174d;
    }

    public void e(String str) {
        this.f48172b = str;
    }

    public void f(String str) {
        this.f48175e = str;
    }

    public void g(double d4) {
        this.f48173c = d4;
    }

    public int getType() {
        return this.f48171a;
    }

    public void h(long j4) {
        this.f48174d = j4;
    }

    public void i(int i2) {
        this.f48171a = i2;
    }
}
