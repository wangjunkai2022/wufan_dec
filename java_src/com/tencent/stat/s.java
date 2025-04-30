package com.tencent.stat;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class s implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ b f60134a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ n f60135b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(n nVar, b bVar) {
        this.f60135b = nVar;
        this.f60134a = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f60135b.b(this.f60134a);
    }
}
