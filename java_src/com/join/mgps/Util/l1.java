package com.join.mgps.Util;

import android.app.Activity;
import android.content.Context;
import androidx.core.content.ContextCompat;
/* compiled from: PermissionManagerUtil.java */
/* loaded from: classes3.dex */
public class l1 {
    public static boolean a(Activity activity, int i2, String str, String... strArr) {
        return false;
    }

    public static boolean b(Context context) {
        return ContextCompat.checkSelfPermission(context, "android.permission.REQUEST_INSTALL_PACKAGES") == 0;
    }
}
