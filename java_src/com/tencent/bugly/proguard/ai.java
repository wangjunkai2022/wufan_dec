package com.tencent.bugly.proguard;

import java.util.ArrayList;
import java.util.Collection;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class ai extends k implements Cloneable {

    /* renamed from: c  reason: collision with root package name */
    private static ArrayList<String> f59622c;

    /* renamed from: a  reason: collision with root package name */
    private String f59623a = "";

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<String> f59624b = null;

    @Override // com.tencent.bugly.proguard.k
    public final void a(j jVar) {
        jVar.a(this.f59623a, 0);
        ArrayList<String> arrayList = this.f59624b;
        if (arrayList != null) {
            jVar.a((Collection) arrayList, 1);
        }
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(StringBuilder sb, int i2) {
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(i iVar) {
        this.f59623a = iVar.b(0, true);
        if (f59622c == null) {
            ArrayList<String> arrayList = new ArrayList<>();
            f59622c = arrayList;
            arrayList.add("");
        }
        this.f59624b = (ArrayList) iVar.a((i) f59622c, 1, false);
    }
}
