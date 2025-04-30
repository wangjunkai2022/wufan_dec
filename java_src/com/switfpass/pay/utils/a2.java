package com.switfpass.pay.utils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class a2 implements f0 {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ d0 f58940a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a2(d0 d0Var) {
        this.f58940a = d0Var;
    }

    @Override // com.switfpass.pay.utils.f0
    public final void a() {
        g0 g0Var;
        d0 d0Var = this.f58940a;
        g0Var = d0Var.f58959k;
        d0Var.u("交易进行中，确认是否中断交易？", g0Var);
    }
}
