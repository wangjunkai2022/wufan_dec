package com.efs.sdk.pa;
/* loaded from: classes2.dex */
public final class a implements PAANRListener {

    /* renamed from: a  reason: collision with root package name */
    private PAFactory f11480a;

    /* renamed from: b  reason: collision with root package name */
    private PATraceListener f11481b;

    public a(PAFactory pAFactory) {
        this.f11480a = pAFactory;
        this.f11481b = pAFactory.getTraceListener();
        boolean enableTracer = pAFactory.getConfigManager().enableTracer();
        if (enableTracer) {
            c.a(this.f11480a, "patracepv", null);
        }
        PATraceListener pATraceListener = this.f11481b;
        if (pATraceListener != null) {
            pATraceListener.onCheck(enableTracer);
        }
    }

    @Override // com.efs.sdk.pa.PAANRListener
    public final void anrStack(String str) {
        if (str == null || str.length() <= 200) {
            return;
        }
        c.a(this.f11480a, "patrace", str);
        PATraceListener pATraceListener = this.f11481b;
        if (pATraceListener != null) {
            pATraceListener.onAnrTrace();
        }
    }

    @Override // com.efs.sdk.pa.PAANRListener
    public final void unexcept(Object obj) {
        PATraceListener pATraceListener = this.f11481b;
        if (pATraceListener != null) {
            pATraceListener.onUnexcept(obj);
        }
    }
}
