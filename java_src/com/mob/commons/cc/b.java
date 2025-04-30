package com.mob.commons.cc;

import android.app.ActivityManager;
/* loaded from: classes4.dex */
public class b implements t<ActivityManager> {
    @Override // com.mob.commons.cc.t
    public boolean a(ActivityManager activityManager, Class<ActivityManager> cls, String str, Object[] objArr, boolean[] zArr, Object[] objArr2, Throwable[] thArr) {
        if ("getRunningTasks".equals(str) && objArr.length == 1 && (objArr[0] instanceof Integer)) {
            objArr2[0] = activityManager.getRunningTasks(((Integer) objArr[0]).intValue());
            return true;
        } else if ("getRunningAppProcesses".equals(str) && objArr.length == 0) {
            objArr2[0] = activityManager.getRunningAppProcesses();
            return true;
        } else {
            return false;
        }
    }
}
