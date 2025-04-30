package com.papa.sim.statistic;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import com.efs.sdk.base.core.util.PackageUtil;
/* compiled from: MetaUtils.java */
/* loaded from: classes.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    static String f55535a;

    /* renamed from: b  reason: collision with root package name */
    static String f55536b;

    public static String a(Context context) {
        String str = f55536b;
        if (str == null || str.equals("")) {
            try {
                String a4 = com.constant.a.a(context);
                if ("".equals(a4) || "0".equals(a4) || "-1".equals(a4)) {
                    SharedPreferences sharedPreferences = context.getSharedPreferences("Papa_Stat_SharedPreferences", 0);
                    String string = sharedPreferences.getString("QdAdIdData" + PackageUtil.getAppVersionName(context), "");
                    f55536b = string;
                    if (!TextUtils.isEmpty(string)) {
                        return f55536b;
                    }
                }
                return a4;
            } catch (Exception e4) {
                e4.printStackTrace();
                return "-1";
            }
        }
        return f55536b;
    }

    public static String b(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            return applicationInfo.metaData.getInt("MGSIM_APPKEY") + "";
        } catch (Exception unused) {
            return "3";
        }
    }

    public static String c(Context context) {
        String str = f55535a;
        if (str == null || str.equals("")) {
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                f55535a = applicationInfo.metaData.getInt("count_type") + "";
            } catch (Exception unused) {
            }
            return f55535a;
        }
        return f55535a;
    }
}
