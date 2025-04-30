package com.cmic.sso.sdk.e;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
/* compiled from: PackageUtils.java */
/* loaded from: classes2.dex */
public class f {
    public static String a(Context context) {
        String str = null;
        try {
            PackageManager packageManager = context.getPackageManager();
            String str2 = (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(d(context), 0));
            if (str2 != null) {
                return str2;
            }
            try {
                PackageInfo c4 = c(context);
                if (c4 == null) {
                    return null;
                }
                return context.getResources().getString(c4.applicationInfo.labelRes);
            } catch (Exception e4) {
                e = e4;
                str = str2;
                e.printStackTrace();
                return str;
            }
        } catch (Exception e5) {
            e = e5;
        }
    }

    public static String b(Context context) {
        try {
            PackageInfo c4 = c(context);
            if (c4 != null) {
                return d(context) + m.a.f72566d + c4.versionName;
            }
            return "";
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }

    private static PackageInfo c(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private static String d(Context context) {
        PackageInfo c4 = c(context);
        return c4 == null ? "" : c4.packageName;
    }
}
