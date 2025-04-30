package com.switfpass.pay.utils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class n1 implements f0 {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ d0 f59042a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n1(d0 d0Var) {
        this.f59042a = d0Var;
    }

    @Override // com.switfpass.pay.utils.f0
    public final void a() {
        g0 g0Var;
        d0 d0Var = this.f59042a;
        g0Var = d0Var.f58959k;
        d0Var.u("交易进行中，确认是否中断交易？", g0Var);
    }
}
