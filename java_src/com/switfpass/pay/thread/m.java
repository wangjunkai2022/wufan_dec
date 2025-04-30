package com.switfpass.pay.thread;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class m implements a {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ l f58936a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(l lVar) {
        this.f58936a = lVar;
    }

    @Override // com.switfpass.pay.thread.a
    public final void a(int i2) {
        this.f58936a.publishProgress(Integer.valueOf(i2));
    }
}
