package com.tencent.stat;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class r implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ com.tencent.stat.a.e f60131a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ c f60132b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ n f60133c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(n nVar, com.tencent.stat.a.e eVar, c cVar) {
        this.f60133c = nVar;
        this.f60131a = eVar;
        this.f60132b = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f60133c.b(this.f60131a, this.f60132b);
    }
}
