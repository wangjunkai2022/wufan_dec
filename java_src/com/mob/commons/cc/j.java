package com.mob.commons.cc;
/* loaded from: classes4.dex */
public class j implements t<h> {
    @Override // com.mob.commons.cc.t
    public boolean a(h hVar, Class<h> cls, String str, Object[] objArr, boolean[] zArr, Object[] objArr2, Throwable[] thArr) {
        if ("new".equals(str) && objArr.length == 2) {
            objArr2[0] = new h((String) objArr[0], ((Integer) objArr[1]).intValue());
        } else if ("putString".equals(str) && objArr.length == 2) {
            hVar.a((String) objArr[0], (String) objArr[1]);
        } else if ("getString".equals(str) && objArr.length == 2) {
            objArr2[0] = hVar.b((String) objArr[0], (String) objArr[1]);
        } else if ("putBoolean".equals(str) && objArr.length == 2 && (objArr[1] instanceof Boolean)) {
            hVar.a((String) objArr[0], ((Boolean) objArr[1]).booleanValue());
        } else if ("getBoolean".equals(str) && objArr.length == 2 && (objArr[1] instanceof Boolean)) {
            objArr2[0] = Boolean.valueOf(hVar.b((String) objArr[0], ((Boolean) objArr[1]).booleanValue()));
        } else if ("putLong".equals(str) && objArr.length == 2 && (objArr[1] instanceof Long)) {
            hVar.a((String) objArr[0], ((Long) objArr[1]).longValue());
        } else if ("getLong".equals(str) && objArr.length == 2 && (objArr[1] instanceof Long)) {
            objArr2[0] = Long.valueOf(hVar.b((String) objArr[0], ((Long) objArr[1]).longValue()));
        } else if ("putInt".equals(str) && objArr.length == 2 && (objArr[1] instanceof Integer)) {
            hVar.a((String) objArr[0], ((Integer) objArr[1]).intValue());
        } else if ("getInt".equals(str) && objArr.length == 2) {
            objArr2[0] = Integer.valueOf(hVar.b((String) objArr[0], ((Integer) objArr[1]).intValue()));
        } else if ("putObj".equals(str) && objArr.length == 2) {
            hVar.a((String) objArr[0], objArr[1]);
        } else if (!"getObj".equals(str) || objArr.length != 1) {
            return false;
        } else {
            objArr2[0] = hVar.a((String) objArr[0]);
        }
        return true;
    }
}
