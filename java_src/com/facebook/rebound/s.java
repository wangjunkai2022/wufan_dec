package com.facebook.rebound;
/* compiled from: SynchronousLooper.java */
/* loaded from: classes2.dex */
public class s extends n {

    /* renamed from: d  reason: collision with root package name */
    public static double f13477d = 16.6667d;

    /* renamed from: b  reason: collision with root package name */
    private double f13478b = f13477d;

    /* renamed from: c  reason: collision with root package name */
    private boolean f13479c;

    @Override // com.facebook.rebound.n
    public void b() {
        this.f13479c = true;
        while (!this.f13474a.g() && this.f13479c) {
            this.f13474a.i(this.f13478b);
        }
    }

    @Override // com.facebook.rebound.n
    public void c() {
        this.f13479c = false;
    }

    public double d() {
        return this.f13478b;
    }

    public void e(double d4) {
        this.f13478b = d4;
    }
}
