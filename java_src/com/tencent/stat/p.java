package com.tencent.stat;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class p implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ List f60126a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f60127b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ n f60128c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(n nVar, List list, int i2) {
        this.f60128c = nVar;
        this.f60126a = list;
        this.f60127b = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f60128c.b(this.f60126a, this.f60127b);
    }
}
