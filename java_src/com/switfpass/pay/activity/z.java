package com.switfpass.pay.activity;
/* loaded from: classes4.dex */
final class z implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ BasePayActivity f58710a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ int f58711b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(BasePayActivity basePayActivity, int i2) {
        this.f58710a = basePayActivity;
        this.f58711b = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.switfpass.pay.utils.e0 e0Var = new com.switfpass.pay.utils.e0();
        BasePayActivity basePayActivity = this.f58710a;
        e0Var.a(basePayActivity, basePayActivity.getString(this.f58711b));
    }
}
