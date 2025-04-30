package com.switfpass.pay.activity;
/* loaded from: classes4.dex */
final class a0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ BasePayActivity f58661a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f58662b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(BasePayActivity basePayActivity, String str) {
        this.f58661a = basePayActivity;
        this.f58662b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        new com.switfpass.pay.utils.e0().a(this.f58661a, this.f58662b);
    }
}
