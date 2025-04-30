package com.mob.commons.cc;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.VersionedPackage;
import android.os.Build;
/* loaded from: classes4.dex */
public class g implements t<PackageManager> {
    @Override // com.mob.commons.cc.t
    public boolean a(PackageManager packageManager, Class<PackageManager> cls, String str, Object[] objArr, boolean[] zArr, Object[] objArr2, Throwable[] thArr) {
        if (com.mob.commons.o.a("019kSdc(iQdhdiegdk=di1dkHd^eh]iMdh@jBdedg^i3fg").equals(str) && objArr.length == 2 && (objArr[0] instanceof Intent) && (objArr[1] instanceof Integer)) {
            objArr2[0] = packageManager.queryIntentServices((Intent) objArr[0], ((Integer) objArr[1]).intValue());
            return true;
        } else if (com.mob.commons.o.a("014)ff1idTghdfdgdjdfff0iAegdkfhec").equals(str)) {
            if (objArr.length == 2 && (objArr[0] instanceof String) && (objArr[1] instanceof Integer)) {
                try {
                    objArr2[0] = packageManager.getPackageInfo((String) objArr[0], ((Integer) objArr[1]).intValue());
                } catch (Throwable th) {
                    thArr[0] = th;
                    objArr2[0] = null;
                }
                return true;
            } else if (Build.VERSION.SDK_INT >= 26 && objArr.length == 2 && (objArr[0] instanceof VersionedPackage) && (objArr[1] instanceof Integer)) {
                try {
                    objArr2[0] = packageManager.getPackageInfo((VersionedPackage) objArr[0], ((Integer) objArr[1]).intValue());
                } catch (Throwable th2) {
                    thArr[0] = th2;
                    objArr2[0] = null;
                }
                return true;
            } else {
                return false;
            }
        } else if (com.mob.commons.o.a("025)ff(idDekdfdcdkdgGc egdk di?dk,d'fkecdhghdfdgdjdfff=i").equals(str) && objArr.length == 1 && (objArr[0] instanceof String)) {
            objArr2[0] = packageManager.getLaunchIntentForPackage((String) objArr[0]);
            return true;
        } else if (com.mob.commons.o.a("015Tdh1iZfgeced9jiLejdgCdFdeCjMdeLdBdi").equals(str) && objArr.length == 2 && (objArr[0] instanceof Integer) && (objArr[1] instanceof Integer)) {
            objArr2[0] = packageManager.resolveActivity((Intent) objArr[0], ((Integer) objArr[1]).intValue());
            return true;
        } else {
            return false;
        }
    }
}
