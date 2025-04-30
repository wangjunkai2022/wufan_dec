package com.tencent.bugly.proguard;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class ao extends k implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public String f59693a = "";

    /* renamed from: b  reason: collision with root package name */
    private String f59694b = "";

    @Override // com.tencent.bugly.proguard.k
    public final void a(j jVar) {
        jVar.a(this.f59693a, 0);
        jVar.a(this.f59694b, 1);
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(StringBuilder sb, int i2) {
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(i iVar) {
        this.f59693a = iVar.b(0, true);
        this.f59694b = iVar.b(1, true);
    }
}
