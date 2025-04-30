package com.mob.commons.cc;
/* loaded from: classes4.dex */
public class n implements t<m> {
    @Override // com.mob.commons.cc.t
    public boolean a(m mVar, Class<m> cls, String str, Object[] objArr, boolean[] zArr, Object[] objArr2, Throwable[] thArr) {
        if ("setHandler".equals(str) && objArr.length == 1 && objArr[0] != null && (objArr[0] instanceof p)) {
            mVar.a((p) objArr[0]);
            return true;
        }
        return false;
    }
}
