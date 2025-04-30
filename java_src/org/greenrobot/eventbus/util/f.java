package org.greenrobot.eventbus.util;
/* compiled from: ThrowableFailureEvent.java */
/* loaded from: classes5.dex */
public class f implements e {

    /* renamed from: a  reason: collision with root package name */
    protected final Throwable f73339a;

    /* renamed from: b  reason: collision with root package name */
    protected final boolean f73340b;

    /* renamed from: c  reason: collision with root package name */
    private Object f73341c;

    public f(Throwable th) {
        this.f73339a = th;
        this.f73340b = false;
    }

    @Override // org.greenrobot.eventbus.util.e
    public Object a() {
        return this.f73341c;
    }

    @Override // org.greenrobot.eventbus.util.e
    public void b(Object obj) {
        this.f73341c = obj;
    }

    public Throwable c() {
        return this.f73339a;
    }

    public boolean d() {
        return this.f73340b;
    }

    public f(Throwable th, boolean z3) {
        this.f73339a = th;
        this.f73340b = z3;
    }
}
