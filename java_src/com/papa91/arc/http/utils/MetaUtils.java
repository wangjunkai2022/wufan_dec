package com.papa91.arc.http.utils;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
/* loaded from: classes4.dex */
public class MetaUtils {
    static int SdkTargetVersionNumber = 26;
    static String countType;
    static String qudao;

    public static String getAd(Context context) {
        String str = qudao;
        if (str == null || str.equals("")) {
            try {
                return getQD(context);
            } catch (Exception e4) {
                e4.printStackTrace();
                return "-1";
            }
        }
        return qudao;
    }

    public static String getAppID(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            return applicationInfo.metaData.getInt("MGSIM_APPKEY") + "";
        } catch (Exception unused) {
            return "3";
        }
    }

    public static String getAppVersionName(Context context) {
        Exception e4;
        String str;
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e5) {
            e4 = e5;
            str = "";
        }
        if (str != null) {
            try {
            } catch (Exception e6) {
                e4 = e6;
                e4.printStackTrace();
                return str;
            }
            if (str.length() > 0) {
                return str;
            }
        }
        return "";
    }

    public static String getCountType(Context context) {
        String str = countType;
        if (str == null || str.equals("")) {
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                countType = applicationInfo.metaData.getInt("count_type") + "";
            } catch (Exception unused) {
            }
            return countType;
        }
        return countType;
    }

    public static String getQD(Context context) {
        if (TextUtils.isEmpty(qudao)) {
            if (context == null) {
                return "";
            }
            String string = context.getSharedPreferences("Papa_Stat_SharedPreferences", 0).getString("QdAdIdConfig" + getAppVersionName(context), "");
            qudao = string;
            if (!TextUtils.isEmpty(string)) {
                return qudao;
            }
            try {
                String str = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getInt("qd_code") + "";
                qudao = str;
                return str;
            } catch (PackageManager.NameNotFoundException e4) {
                e4.printStackTrace();
                return "-1";
            }
        }
        return qudao;
    }

    public static int getTargetVersion(Context context) {
        return SdkTargetVersionNumber;
    }
}
