package com.tencent.stat;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ List f60129a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ n f60130b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(n nVar, List list) {
        this.f60130b = nVar;
        this.f60129a = list;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f60130b.b(this.f60129a);
    }
}
