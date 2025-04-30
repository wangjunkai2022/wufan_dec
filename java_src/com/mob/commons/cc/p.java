package com.mob.commons.cc;

import java.util.ArrayList;
/* loaded from: classes4.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    public a f52918a;

    /* loaded from: classes4.dex */
    interface a {
        Object a(String str, ArrayList<Object> arrayList);
    }

    public p(a aVar) {
        this.f52918a = aVar;
    }

    public Object a(String str, ArrayList<Object> arrayList) {
        a aVar = this.f52918a;
        if (aVar == null) {
            return null;
        }
        return aVar.a(str, arrayList);
    }
}
