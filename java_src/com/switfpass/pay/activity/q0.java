package com.switfpass.pay.activity;
/* loaded from: classes4.dex */
final class q0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ p0 f58697a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Object f58698b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q0(p0 p0Var, Object obj) {
        this.f58697a = p0Var;
        this.f58698b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        PaySDKCaptureActivity paySDKCaptureActivity;
        PaySDKCaptureActivity paySDKCaptureActivity2;
        if (this.f58698b != null) {
            paySDKCaptureActivity = this.f58697a.f58691a;
            paySDKCaptureActivity.showToastInfo(this.f58698b.toString());
            paySDKCaptureActivity2 = this.f58697a.f58691a;
            paySDKCaptureActivity2.finish();
        }
    }
}
