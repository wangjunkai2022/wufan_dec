package com.facebook.rebound;
/* compiled from: SteppingLooper.java */
/* loaded from: classes2.dex */
public class r extends n {

    /* renamed from: b  reason: collision with root package name */
    private boolean f13475b;

    /* renamed from: c  reason: collision with root package name */
    private long f13476c;

    @Override // com.facebook.rebound.n
    public void b() {
        this.f13475b = true;
        this.f13476c = 0L;
    }

    @Override // com.facebook.rebound.n
    public void c() {
        this.f13475b = false;
    }

    public boolean d(long j4) {
        c cVar = this.f13474a;
        if (cVar == null || !this.f13475b) {
            return false;
        }
        long j5 = this.f13476c + j4;
        cVar.i(j5);
        this.f13476c = j5;
        return this.f13474a.g();
    }
}
