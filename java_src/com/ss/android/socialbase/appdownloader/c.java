package com.ss.android.socialbase.appdownloader;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.papa91.common.BaseAppConfig;
import com.qq.e.comm.constants.ErrorCode;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.ss.android.socialbase.appdownloader.c.j;
import com.ss.android.socialbase.downloader.constants.DownloadStatus;
import com.ss.android.socialbase.downloader.depend.z;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaMeta;
/* compiled from: AppDownloadUtils.java */
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static int f57586a;

    /* renamed from: b  reason: collision with root package name */
    private static NotificationChannel f57587b;

    /* JADX INFO: Access modifiers changed from: private */
    public static int d(Context context, int i2, boolean z3) {
        if (com.ss.android.socialbase.downloader.g.a.a(i2).b("notification_opt_2") == 1) {
            com.ss.android.socialbase.downloader.notification.b.a().f(i2);
        }
        a((Activity) h.a().b());
        if (com.ss.android.socialbase.downloader.g.a.a(i2).a("install_queue_enable", 0) == 1) {
            return h.a().a(context, i2, z3);
        }
        return b(context, i2, z3);
    }

    private static String a(long j4, long j5, String str, boolean z3) {
        double d4 = j4;
        if (j5 > 1) {
            double d5 = j5;
            Double.isNaN(d4);
            Double.isNaN(d5);
            d4 /= d5;
        }
        if (!z3 && !"GB".equals(str) && !"TB".equals(str)) {
            return new DecimalFormat("#").format(d4) + " " + str;
        }
        return new DecimalFormat("#.##").format(d4) + " " + str;
    }

    public static String b(long j4) {
        long[] jArr = {1099511627776L, IjkMediaMeta.AV_CH_STEREO_RIGHT, PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED, 1024, 1};
        String[] strArr = {"TB", "GB", "MB", "KB", "B"};
        if (j4 < 1) {
            return "0 " + strArr[4];
        }
        for (int i2 = 0; i2 < 5; i2++) {
            long j5 = jArr[i2];
            if (j4 >= j5) {
                return a(j4, j5, strArr[i2]);
            }
        }
        return null;
    }

    public static boolean c(Context context, DownloadInfo downloadInfo) {
        if (context == null || downloadInfo == null || TextUtils.isEmpty(downloadInfo.getSavePath()) || TextUtils.isEmpty(downloadInfo.getName())) {
            return false;
        }
        return b(context, downloadInfo, a(context, downloadInfo, downloadInfo.getSavePath(), downloadInfo.getName()));
    }

    public static boolean c(String str) {
        return !TextUtils.isEmpty(str) && str.equals(AdBaseConstants.MIME_APK);
    }

    public static String a(long j4) {
        return a(j4, true);
    }

    public static List<String> c() {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(AdBaseConstants.MIME_APK);
        arrayList.add("application/ttpatch");
        return arrayList;
    }

    public static String a(long j4, boolean z3) {
        long[] jArr = {1099511627776L, IjkMediaMeta.AV_CH_STEREO_RIGHT, PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED, 1024, 1};
        String[] strArr = {"TB", "GB", "MB", "KB", "B"};
        if (j4 < 1) {
            return "0 " + strArr[4];
        }
        for (int i2 = 0; i2 < 5; i2++) {
            long j5 = jArr[i2];
            if (j4 >= j5) {
                return a(j4, j5, strArr[i2], z3);
            }
        }
        return null;
    }

    public static int b(final Context context, final int i2, final boolean z3) {
        final DownloadInfo downloadInfo = Downloader.getInstance(context).getDownloadInfo(i2);
        if (downloadInfo != null && AdBaseConstants.MIME_APK.equals(downloadInfo.getMimeType()) && !TextUtils.isEmpty(downloadInfo.getSavePath()) && !TextUtils.isEmpty(downloadInfo.getName())) {
            final File file = new File(downloadInfo.getSavePath(), downloadInfo.getName());
            if (file.exists()) {
                com.ss.android.socialbase.downloader.downloader.c.a(new Runnable() { // from class: com.ss.android.socialbase.appdownloader.c.2
                    @Override // java.lang.Runnable
                    public void run() {
                        int a4 = c.a(context, i2, z3, downloadInfo, file);
                        if (a4 == 1 && d.j().o() != null) {
                            d.j().o().a(downloadInfo, null);
                        }
                        c.b(downloadInfo, z3, a4);
                    }
                });
                return 1;
            }
        }
        b(downloadInfo, z3, 2);
        return 2;
    }

    private static JSONObject d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new JSONObject(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static String a(long j4, long j5, String str) {
        double d4 = j4;
        if (j5 > 1) {
            double d5 = j5;
            Double.isNaN(d4);
            Double.isNaN(d5);
            d4 /= d5;
        }
        if ("MB".equals(str)) {
            return new DecimalFormat("#").format(d4) + str;
        }
        return new DecimalFormat("#.##").format(d4) + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(DownloadInfo downloadInfo, boolean z3, int i2) {
        if (downloadInfo == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("by_user", z3 ? 1 : 2);
            jSONObject.put("view_result", i2);
            jSONObject.put("real_package_name", downloadInfo.getFilePackageName());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        com.ss.android.socialbase.downloader.downloader.c.P().a(downloadInfo.getId(), "install_view_result", jSONObject);
    }

    public static int a(final Context context, final int i2, final boolean z3) {
        j g4 = d.j().g();
        if (g4 == null) {
            return d(context, i2, z3);
        }
        DownloadInfo downloadInfo = Downloader.getInstance(context).getDownloadInfo(i2);
        f57586a = 1;
        g4.a(downloadInfo, new com.ss.android.socialbase.appdownloader.c.i() { // from class: com.ss.android.socialbase.appdownloader.c.1
            @Override // com.ss.android.socialbase.appdownloader.c.i
            public void a() {
                int unused = c.f57586a = c.d(context, i2, z3);
            }
        });
        return f57586a;
    }

    public static boolean b(Context context, DownloadInfo downloadInfo, PackageInfo packageInfo) {
        return a(context, downloadInfo, packageInfo, false);
    }

    public static int b(Context context, DownloadInfo downloadInfo) {
        if (context != null && downloadInfo != null && !TextUtils.isEmpty(downloadInfo.getSavePath()) && !TextUtils.isEmpty(downloadInfo.getName())) {
            int appVersionCode = downloadInfo.getAppVersionCode();
            if (appVersionCode > 0) {
                return appVersionCode;
            }
            try {
                PackageInfo a4 = a(context, downloadInfo, downloadInfo.getSavePath(), downloadInfo.getName());
                if (a4 != null) {
                    int i2 = a4.versionCode;
                    downloadInfo.setAppVersionCode(i2);
                    return i2;
                }
            } catch (Throwable unused) {
            }
        }
        return 0;
    }

    public static int a(Context context, int i2, boolean z3, DownloadInfo downloadInfo, File file) {
        PackageInfo packageInfo;
        Intent a4;
        Process process;
        if (file.getPath().startsWith(Environment.getDataDirectory().getAbsolutePath())) {
            try {
                process = Runtime.getRuntime().exec("chmod 555 " + file.getAbsolutePath());
                try {
                    process.waitFor();
                } catch (Throwable th) {
                    th = th;
                    try {
                        th.printStackTrace();
                    } finally {
                        if (process != null) {
                            process.destroy();
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                process = null;
            }
        }
        try {
            packageInfo = a(downloadInfo, file);
            if (packageInfo != null) {
                try {
                    downloadInfo.setFilePackageName(packageInfo.packageName);
                } catch (Throwable th3) {
                    th = th3;
                }
            }
            th = null;
        } catch (Throwable th4) {
            th = th4;
            packageInfo = null;
        }
        if (d.j().c() != null) {
            if (packageInfo == null) {
                BaseException baseException = new BaseException((int) ErrorCode.INIT_ERROR, th);
                d.j().c().a(downloadInfo, baseException, baseException.getErrorCode());
            } else {
                d.j().c().a(downloadInfo, null, 11);
            }
        }
        if (a(context, downloadInfo, packageInfo)) {
            return 2;
        }
        if (packageInfo != null && com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).a("install_callback_error")) {
            downloadInfo.getTempCacheData().put("extra_apk_package_name", packageInfo.packageName);
            downloadInfo.getTempCacheData().put("extra_apk_version_code", Integer.valueOf(packageInfo.versionCode));
        }
        int[] iArr = new int[1];
        if (b(context, downloadInfo, packageInfo)) {
            a4 = context.getPackageManager().getLaunchIntentForPackage(packageInfo.packageName);
        } else if (!z3 && a(context, i2, file)) {
            downloadInfo.getTempCacheData().put("extra_silent_install_succeed", Boolean.TRUE);
            return 1;
        } else {
            a4 = a(context, downloadInfo, file, z3, iArr);
        }
        if (a4 == null) {
            return iArr[0] == 1 ? 2 : 0;
        }
        a4.addFlags(268435456);
        if (downloadInfo.getLinkMode() > 0 && com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).a("app_install_return_result", 0) == 1) {
            a4.putExtra("android.intent.extra.RETURN_RESULT", true);
        }
        if (iArr[0] == 0 && b.a(context, downloadInfo, a4, z3)) {
            return 1;
        }
        return a(context, a4);
    }

    public static String b() {
        return com.ss.android.socialbase.downloader.i.f.e();
    }

    public static boolean b(String str) {
        JSONObject jSONObject;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        if (!jSONObject.optBoolean("bind_app", false)) {
            if (jSONObject.optBoolean("auto_install_with_notification", true)) {
                return false;
            }
        }
        return true;
    }

    @TargetApi(26)
    public static String b(@NonNull Context context) {
        try {
            if (f57587b == null) {
                NotificationChannel notificationChannel = new NotificationChannel("111111", "channel_appdownloader", 3);
                f57587b = notificationChannel;
                notificationChannel.setSound(null, null);
                f57587b.setShowBadge(false);
                ((NotificationManager) context.getSystemService("notification")).createNotificationChannel(f57587b);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return "111111";
    }

    public static int a(Context context, Intent intent) {
        try {
            if (d.j().n() != null) {
                if (d.j().n().a(intent)) {
                    return 1;
                }
            }
        } catch (Throwable unused) {
        }
        try {
            context.startActivity(intent);
            return 1;
        } catch (Throwable unused2) {
            return 0;
        }
    }

    public static boolean a(Context context, DownloadInfo downloadInfo, PackageInfo packageInfo) {
        if (packageInfo == null || packageInfo.packageName.equals(downloadInfo.getPackageName())) {
            return false;
        }
        com.ss.android.socialbase.appdownloader.c.d b4 = d.j().b();
        if (b4 != null) {
            b4.a(downloadInfo.getId(), 8, downloadInfo.getPackageName(), packageInfo.packageName, "");
            if (b4.a()) {
                return true;
            }
        }
        z downloadNotificationEventListener = Downloader.getInstance(context).getDownloadNotificationEventListener(downloadInfo.getId());
        if (downloadNotificationEventListener != null) {
            downloadNotificationEventListener.a(8, downloadInfo, packageInfo.packageName, "");
            com.ss.android.socialbase.appdownloader.c.c a4 = d.j().a();
            return (a4 instanceof com.ss.android.socialbase.appdownloader.c.a) && ((com.ss.android.socialbase.appdownloader.c.a) a4).c();
        }
        return false;
    }

    public static boolean a(Context context, int i2, File file) {
        if (com.ss.android.socialbase.downloader.g.a.a(i2).a("back_miui_silent_install", 1) == 1) {
            return false;
        }
        if ((com.ss.android.socialbase.appdownloader.f.d.l() || com.ss.android.socialbase.appdownloader.f.d.m()) && com.ss.android.socialbase.downloader.i.j.a(context, "com.miui.securitycore", "com.miui.enterprise.service.EntInstallService")) {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.miui.securitycore", "com.miui.enterprise.service.EntInstallService"));
            Bundle bundle = new Bundle();
            bundle.putInt("userId", 0);
            bundle.putInt("flag", 256);
            bundle.putString(BaseAppConfig.KEY_APK_PATH, file.getPath());
            bundle.putString("installerPkg", "com.miui.securitycore");
            intent.putExtras(bundle);
            try {
                context.startService(intent);
                return true;
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        return false;
    }

    public static int a() {
        return d.j().f() ? 16384 : 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0021 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.net.Uri a(int r1, com.ss.android.socialbase.downloader.depend.IDownloadFileUriProvider r2, android.content.Context r3, java.lang.String r4, java.io.File r5) {
        /*
            if (r2 == 0) goto Lb
            java.lang.String r1 = r5.getAbsolutePath()     // Catch: java.lang.Throwable -> L1e
            android.net.Uri r1 = r2.getUriForFile(r4, r1)     // Catch: java.lang.Throwable -> L1e
            goto L1f
        Lb:
            com.ss.android.socialbase.appdownloader.d r2 = com.ss.android.socialbase.appdownloader.d.j()
            com.ss.android.socialbase.appdownloader.c.f r2 = r2.e()
            if (r2 == 0) goto L1e
            java.lang.String r0 = r5.getAbsolutePath()     // Catch: java.lang.Throwable -> L1e
            android.net.Uri r1 = r2.a(r1, r4, r0)     // Catch: java.lang.Throwable -> L1e
            goto L1f
        L1e:
            r1 = 0
        L1f:
            if (r1 != 0) goto L3b
            int r2 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L37
            r0 = 24
            if (r2 < r0) goto L32
            boolean r2 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> L37
            if (r2 != 0) goto L32
            android.net.Uri r1 = androidx.core.content.FileProvider.getUriForFile(r3, r4, r5)     // Catch: java.lang.Throwable -> L37
            goto L3b
        L32:
            android.net.Uri r1 = android.net.Uri.fromFile(r5)     // Catch: java.lang.Throwable -> L37
            goto L3b
        L37:
            r2 = move-exception
            r2.printStackTrace()
        L3b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.appdownloader.c.a(int, com.ss.android.socialbase.downloader.depend.IDownloadFileUriProvider, android.content.Context, java.lang.String, java.io.File):android.net.Uri");
    }

    private static Intent a(Context context, DownloadInfo downloadInfo, @NonNull File file, boolean z3, int[] iArr) {
        Uri a4 = a(downloadInfo.getId(), Downloader.getInstance(context).getDownloadFileUriProvider(downloadInfo.getId()), context, d.j().d(), file);
        if (a4 == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        if (Build.VERSION.SDK_INT >= 24) {
            intent.addFlags(1);
        }
        intent.setDataAndType(a4, AdBaseConstants.MIME_APK);
        com.ss.android.socialbase.appdownloader.c.d b4 = d.j().b();
        boolean a5 = b4 != null ? b4.a(downloadInfo.getId(), z3) : 0;
        z downloadNotificationEventListener = Downloader.getInstance(context).getDownloadNotificationEventListener(downloadInfo.getId());
        int i2 = a5;
        if (downloadNotificationEventListener != null) {
            i2 = downloadNotificationEventListener.a(z3);
        }
        iArr[0] = i2;
        if (i2 != 0) {
            return null;
        }
        return intent;
    }

    public static boolean a(DownloadInfo downloadInfo, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (TextUtils.isEmpty(downloadInfo.getPackageName()) || !str.equals(downloadInfo.getPackageName())) {
            return !TextUtils.isEmpty(downloadInfo.getName()) && a(com.ss.android.socialbase.downloader.downloader.c.N(), downloadInfo, str);
        }
        return true;
    }

    public static boolean a(Context context, DownloadInfo downloadInfo, String str) {
        if (context == null) {
            return false;
        }
        try {
            File file = new File(downloadInfo.getSavePath(), downloadInfo.getName());
            PackageInfo packageInfo = null;
            if (file.exists()) {
                StringBuilder sb = new StringBuilder();
                sb.append("isPackageNameEqualsWithApk fileName:");
                sb.append(downloadInfo.getName());
                sb.append(" apkFileSize：");
                sb.append(file.length());
                sb.append(" fileUrl：");
                sb.append(downloadInfo.getUrl());
                PackageInfo a4 = a(downloadInfo, file);
                if (a4 == null || !a4.packageName.equals(str)) {
                    return false;
                }
                int i2 = a4.versionCode;
                try {
                    packageInfo = context.getPackageManager().getPackageInfo(str, a());
                } catch (PackageManager.NameNotFoundException unused) {
                }
                if (packageInfo == null || i2 != packageInfo.versionCode) {
                    return false;
                }
            } else if (!com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).a("install_callback_error")) {
                return false;
            } else {
                String a5 = com.ss.android.socialbase.downloader.i.f.a(downloadInfo.getTempCacheData().get("extra_apk_package_name"), (String) null);
                int a6 = com.ss.android.socialbase.downloader.i.f.a(downloadInfo.getTempCacheData().get("extra_apk_version_code"), 0);
                if (a5 == null || TextUtils.isEmpty(a5) || !a5.equals(str)) {
                    return false;
                }
                try {
                    packageInfo = context.getPackageManager().getPackageInfo(str, a());
                } catch (PackageManager.NameNotFoundException unused2) {
                }
                if (packageInfo == null || a6 != packageInfo.versionCode) {
                    return false;
                }
            }
            return true;
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public static boolean a(Context context, DownloadInfo downloadInfo, PackageInfo packageInfo, boolean z3) {
        PackageInfo packageInfo2;
        if (packageInfo == null) {
            return false;
        }
        String str = packageInfo.packageName;
        int i2 = packageInfo.versionCode;
        if (downloadInfo != null) {
            downloadInfo.setAppVersionCode(i2);
        }
        try {
            packageInfo2 = context.getPackageManager().getPackageInfo(str, a());
        } catch (PackageManager.NameNotFoundException unused) {
            packageInfo2 = null;
        }
        if (packageInfo2 == null) {
            return false;
        }
        int i4 = packageInfo2.versionCode;
        return z3 ? i2 < i4 : (downloadInfo == null || com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).a("install_with_same_version_code", 0) != 1) ? i2 <= i4 : i2 < i4;
    }

    public static boolean a(Context context, DownloadInfo downloadInfo) {
        return a(context, downloadInfo, true);
    }

    public static boolean a(Context context, DownloadInfo downloadInfo, boolean z3) {
        if (downloadInfo == null) {
            return false;
        }
        String packageName = downloadInfo.getPackageName();
        int appVersionCode = downloadInfo.getAppVersionCode();
        if (appVersionCode <= 0 && z3) {
            return c(context, downloadInfo);
        }
        PackageInfo packageInfo = null;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(packageName, a());
        } catch (PackageManager.NameNotFoundException unused) {
        }
        if (packageInfo == null) {
            return false;
        }
        return com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).a("install_with_same_version_code", 0) == 1 ? appVersionCode < packageInfo.versionCode : appVersionCode <= packageInfo.versionCode;
    }

    public static PackageInfo a(Context context, DownloadInfo downloadInfo, String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        File file = new File(str, str2);
        if (file.exists()) {
            StringBuilder sb = new StringBuilder();
            sb.append("isApkInstalled apkFileSize：fileName:");
            sb.append(file.getPath());
            sb.append(" apkFileSize");
            sb.append(file.length());
            return a(downloadInfo, file);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0034, code lost:
        if (android.text.TextUtils.isEmpty(r2) == false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(java.lang.String r1, java.lang.String r2, java.lang.String r3, boolean r4) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r1)
            if (r0 == 0) goto L9
            java.lang.String r1 = ""
            return r1
        L9:
            android.net.Uri r1 = android.net.Uri.parse(r1)
            java.lang.String r0 = "default.apk"
            if (r4 == 0) goto L26
            boolean r4 = android.text.TextUtils.isEmpty(r2)
            if (r4 == 0) goto L3a
            java.lang.String r2 = r1.getLastPathSegment()
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 != 0) goto L37
            java.lang.String r2 = r1.getLastPathSegment()
            goto L3a
        L26:
            java.lang.String r1 = r1.getLastPathSegment()
            boolean r4 = android.text.TextUtils.isEmpty(r1)
            if (r4 == 0) goto L39
            boolean r1 = android.text.TextUtils.isEmpty(r2)
            if (r1 != 0) goto L37
            goto L3a
        L37:
            r2 = r0
            goto L3a
        L39:
            r2 = r1
        L3a:
            boolean r1 = c(r3)
            if (r1 == 0) goto L57
            java.lang.String r1 = ".apk"
            boolean r3 = r2.endsWith(r1)
            if (r3 != 0) goto L57
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r2)
            r3.append(r1)
            java.lang.String r2 = r3.toString()
        L57:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.appdownloader.c.a(java.lang.String, java.lang.String, java.lang.String, boolean):java.lang.String");
    }

    public static String a(String str, com.ss.android.socialbase.downloader.g.a aVar) {
        JSONObject d4;
        String format;
        if (aVar == null || (d4 = aVar.d("download_dir")) == null) {
            return "";
        }
        String optString = d4.optString("dir_name");
        if (!TextUtils.isEmpty(optString) && optString.startsWith(net.lingala.zip4j.util.e.F0)) {
            optString = optString.substring(1);
        }
        if (TextUtils.isEmpty(optString)) {
            return optString;
        }
        if (!optString.contains("%s")) {
            format = optString + str;
        } else {
            try {
                format = String.format(optString, str);
            } catch (Throwable unused) {
            }
        }
        optString = format;
        return optString.length() > 255 ? optString.substring(optString.length() - 255) : optString;
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        return new JSONObject(str).optBoolean("bind_app", false);
    }

    public static int a(int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (i2 == -2) {
            return 2;
        }
        if (i2 == 1) {
            return 4;
        }
        if (DownloadStatus.isDownloading(i2) || i2 == 11) {
            return 1;
        }
        return DownloadStatus.isDownloadOver(i2) ? 3 : 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        if (r0 != null) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(android.content.Context r6) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 0
            r2 = 20
            if (r0 <= r2) goto L40
            if (r6 != 0) goto La
            goto L40
        La:
            r0 = 0
            int r2 = com.ss.android.socialbase.appdownloader.e.b()     // Catch: java.lang.Throwable -> L3d
            android.content.res.Resources r3 = r6.getResources()     // Catch: java.lang.Throwable -> L3d
            int r2 = r3.getColor(r2)     // Catch: java.lang.Throwable -> L3d
            int r3 = com.ss.android.socialbase.appdownloader.e.c()     // Catch: java.lang.Throwable -> L3d
            int r4 = com.ss.android.socialbase.appdownloader.e.d()     // Catch: java.lang.Throwable -> L3d
            r5 = 2
            int[] r5 = new int[r5]     // Catch: java.lang.Throwable -> L3d
            r5[r1] = r3     // Catch: java.lang.Throwable -> L3d
            r3 = 1
            r5[r3] = r4     // Catch: java.lang.Throwable -> L3d
            int r4 = com.ss.android.socialbase.appdownloader.e.e()     // Catch: java.lang.Throwable -> L3d
            android.content.res.TypedArray r0 = r6.obtainStyledAttributes(r4, r5)     // Catch: java.lang.Throwable -> L3d
            int r6 = r0.getColor(r1, r1)     // Catch: java.lang.Throwable -> L3d
            if (r2 != r6) goto L39
            r0.recycle()     // Catch: java.lang.Throwable -> L38
        L38:
            return r3
        L39:
            r0.recycle()     // Catch: java.lang.Throwable -> L40
            goto L40
        L3d:
            if (r0 == 0) goto L40
            goto L39
        L40:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.appdownloader.c.a(android.content.Context):boolean");
    }

    public static void a(DownloadInfo downloadInfo, boolean z3, boolean z4) {
        d.j().a(new f(com.ss.android.socialbase.downloader.downloader.c.N(), downloadInfo.getUrl()).a(downloadInfo.getTitle()).b(downloadInfo.getName()).c(downloadInfo.getSavePath()).a(downloadInfo.isShowNotification()).b(downloadInfo.isAutoInstallWithoutNotification()).c(downloadInfo.isOnlyWifi() || z4).d(downloadInfo.getExtra()).e(downloadInfo.getMimeType()).a(downloadInfo.getExtraHeaders()).e(true).b(downloadInfo.getRetryCount()).c(downloadInfo.getBackUpUrlRetryCount()).b(downloadInfo.getBackUpUrls()).d(downloadInfo.getMinProgressTimeMsInterval()).e(downloadInfo.getMaxProgressCount()).f(z3).d(downloadInfo.isNeedHttpsToHttpRetry()).f(downloadInfo.getPackageName()).g(downloadInfo.getMd5()).a(downloadInfo.getExpectFileLength()).i(downloadInfo.isNeedDefaultHttpServiceBackUp()).j(downloadInfo.isNeedReuseFirstConnection()).l(downloadInfo.isNeedIndependentProcess()).a(downloadInfo.getEnqueueType()).n(downloadInfo.isForce()).m(downloadInfo.isHeadConnectionAvailable()).g(downloadInfo.isNeedRetryDelay()).h(downloadInfo.getRetryDelayTimeArray()).a(d(downloadInfo.getDownloadSettingString())).j(downloadInfo.getIconUrl()).f(downloadInfo.getExecutorGroup()).p(downloadInfo.isAutoInstall()));
    }

    public static void a(Activity activity) {
        if (activity != null) {
            try {
                if (activity.isFinishing()) {
                    return;
                }
                activity.finish();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public static PackageInfo a(DownloadInfo downloadInfo, File file) {
        if (downloadInfo == null) {
            return com.ss.android.socialbase.appdownloader.f.a.e.a(com.ss.android.socialbase.downloader.downloader.c.N(), file, a());
        }
        PackageInfo packageInfo = downloadInfo.getPackageInfo();
        if (packageInfo == null) {
            PackageInfo a4 = com.ss.android.socialbase.appdownloader.f.a.e.a(com.ss.android.socialbase.downloader.downloader.c.N(), file, a());
            downloadInfo.setPackageInfo(a4);
            return a4;
        }
        return packageInfo;
    }

    public static int a(Context context, float f4) {
        return (int) ((f4 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
