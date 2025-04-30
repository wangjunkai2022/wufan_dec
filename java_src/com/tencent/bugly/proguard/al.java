package com.tencent.bugly.proguard;

import java.util.ArrayList;
import java.util.Collection;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class al extends k implements Cloneable {

    /* renamed from: b  reason: collision with root package name */
    private static ArrayList<ak> f59655b;

    /* renamed from: a  reason: collision with root package name */
    public ArrayList<ak> f59656a = null;

    @Override // com.tencent.bugly.proguard.k
    public final void a(j jVar) {
        jVar.a((Collection) this.f59656a, 0);
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(StringBuilder sb, int i2) {
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(i iVar) {
        if (f59655b == null) {
            f59655b = new ArrayList<>();
            f59655b.add(new ak());
        }
        this.f59656a = (ArrayList) iVar.a((i) f59655b, 0, true);
    }
}
