package com.tencent.bugly.proguard;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class ah extends k implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public String f59617a = "";

    /* renamed from: d  reason: collision with root package name */
    private String f59620d = "";

    /* renamed from: b  reason: collision with root package name */
    public String f59618b = "";

    /* renamed from: e  reason: collision with root package name */
    private String f59621e = "";

    /* renamed from: c  reason: collision with root package name */
    public String f59619c = "";

    @Override // com.tencent.bugly.proguard.k
    public final void a(j jVar) {
        jVar.a(this.f59617a, 0);
        String str = this.f59620d;
        if (str != null) {
            jVar.a(str, 1);
        }
        String str2 = this.f59618b;
        if (str2 != null) {
            jVar.a(str2, 2);
        }
        String str3 = this.f59621e;
        if (str3 != null) {
            jVar.a(str3, 3);
        }
        String str4 = this.f59619c;
        if (str4 != null) {
            jVar.a(str4, 4);
        }
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(StringBuilder sb, int i2) {
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(i iVar) {
        this.f59617a = iVar.b(0, true);
        this.f59620d = iVar.b(1, false);
        this.f59618b = iVar.b(2, false);
        this.f59621e = iVar.b(3, false);
        this.f59619c = iVar.b(4, false);
    }
}
