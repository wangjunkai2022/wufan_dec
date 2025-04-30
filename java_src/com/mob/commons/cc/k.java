package com.mob.commons.cc;

import android.database.ContentObserver;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public class k extends ContentObserver implements t<k> {

    /* renamed from: a  reason: collision with root package name */
    private p f52916a;

    public k() {
        super(null);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z3) {
        if (this.f52916a != null) {
            ArrayList<Object> arrayList = new ArrayList<>(1);
            arrayList.add(Boolean.valueOf(z3));
            this.f52916a.a("onChange", arrayList);
        }
    }

    public void a(p pVar) {
        this.f52916a = pVar;
    }

    @Override // com.mob.commons.cc.t
    public boolean a(k kVar, Class<k> cls, String str, Object[] objArr, boolean[] zArr, Object[] objArr2, Throwable[] thArr) {
        if ("setHandler".equals(str) && objArr.length == 1 && objArr[0] != null && (objArr[0] instanceof p)) {
            kVar.a((p) objArr[0]);
            return true;
        }
        return false;
    }
}
