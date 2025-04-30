package com.tencent.stat;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class u implements c {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ List f60137a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f60138b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ n f60139c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(n nVar, List list, int i2) {
        this.f60139c = nVar;
        this.f60137a = list;
        this.f60138b = i2;
    }

    @Override // com.tencent.stat.c
    public void a() {
        this.f60139c.a(this.f60137a);
    }

    @Override // com.tencent.stat.c
    public void b() {
        this.f60139c.a(this.f60137a, 1);
        this.f60139c.f60121b += this.f60138b;
    }
}
