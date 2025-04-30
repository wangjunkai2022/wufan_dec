package org.json.alipay;
/* loaded from: classes5.dex */
public final class a extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private Throwable f73746a;

    public a(String str) {
        super(str);
    }

    public a(Throwable th) {
        super(th.getMessage());
        this.f73746a = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f73746a;
    }
}
