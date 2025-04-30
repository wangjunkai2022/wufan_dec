package com.swift.sandhook.xposedcompat.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Process;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class ProcessUtils {
    private static volatile String processName;

    private static String doGetProcessName(Context context) {
        String str;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return null;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == Process.myPid() && (str = runningAppProcessInfo.processName) != null) {
                return str;
            }
        }
        return context.getPackageName();
    }

    public static List<ResolveInfo> findActivitiesForPackage(Context context, String packageName) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setPackage(packageName);
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        return queryIntentActivities != null ? queryIntentActivities : new ArrayList();
    }

    public static String getProcessName(Context context) {
        if (!TextUtils.isEmpty(processName)) {
            return processName;
        }
        processName = doGetProcessName(context);
        return processName;
    }

    public static boolean isMainProcess(Context context) {
        String processName2 = getProcessName(context);
        return TextUtils.isEmpty(processName2) || TextUtils.equals(processName2, context.getPackageName());
    }
}
