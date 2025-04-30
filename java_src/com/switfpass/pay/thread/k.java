package com.switfpass.pay.thread;
/* loaded from: classes4.dex */
final class k implements a {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ e f58933a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(e eVar) {
        this.f58933a = eVar;
    }

    @Override // com.switfpass.pay.thread.a
    public final void a(int i2) {
        e eVar = this.f58933a;
        if (eVar != null) {
            eVar.onProgress(i2);
        }
    }
}
