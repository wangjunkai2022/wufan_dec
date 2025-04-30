package com.join.mgps.Util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import java.util.List;
import java.util.regex.Pattern;
/* compiled from: LauncherUtil.java */
/* loaded from: classes3.dex */
public class s0 {

    /* renamed from: a  reason: collision with root package name */
    private static String f27820a;

    private s0() throws InstantiationException {
        throw new InstantiationException("This class is not for instantiation");
    }

    public static String a(Context context) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        PackageManager packageManager = context.getPackageManager();
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
        if (resolveActivity == null) {
            return null;
        }
        ActivityInfo activityInfo = resolveActivity.activityInfo;
        List<ProviderInfo> queryContentProviders = packageManager.queryContentProviders(activityInfo.packageName, activityInfo.applicationInfo.uid, 8);
        if (queryContentProviders != null) {
            for (int i2 = 0; i2 < queryContentProviders.size(); i2++) {
                ProviderInfo providerInfo = queryContentProviders.get(i2);
                String str = providerInfo.readPermission;
                if (str != null && Pattern.matches(".*launcher.*READ_SETTINGS", str)) {
                    return providerInfo.authority;
                }
            }
        }
        return null;
    }

    public static String b(Context context, String str) {
        List<PackageInfo> installedPackages;
        int i2;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            installedPackages = context.getPackageManager().getInstalledPackages(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (installedPackages == null) {
            return "";
        }
        for (PackageInfo packageInfo : installedPackages) {
            ProviderInfo[] providerInfoArr = packageInfo.providers;
            if (providerInfoArr != null) {
                int length = providerInfoArr.length;
                while (i2 < length) {
                    ProviderInfo providerInfo = providerInfoArr[i2];
                    i2 = (str.equals(providerInfo.readPermission) || str.equals(providerInfo.writePermission)) ? 0 : i2 + 1;
                    return providerInfo.authority;
                }
                continue;
            }
        }
        return "";
    }

    public static String c(Context context) {
        if (TextUtils.isEmpty(f27820a)) {
            f27820a = b(context, "com.android.launcher.permission.READ_SETTINGS");
        }
        return f27820a;
    }

    public static String d(Context context) {
        ActivityInfo activityInfo;
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 0);
        return (resolveActivity == null || (activityInfo = resolveActivity.activityInfo) == null || activityInfo.packageName.equals(q.a.f73954a)) ? "" : resolveActivity.activityInfo.packageName;
    }
}
