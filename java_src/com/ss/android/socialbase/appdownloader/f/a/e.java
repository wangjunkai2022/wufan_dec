package com.ss.android.socialbase.appdownloader.f.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.annotation.NonNull;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: PackageInfoUtils.java */
/* loaded from: classes4.dex */
public class e {
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006a, code lost:
        r13 = r1.getInputStream(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x006e, code lost:
        r4 = r1;
        r5 = r2;
        r1 = null;
        r13 = r13;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.pm.PackageInfo a(@androidx.annotation.NonNull java.io.File r13) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.appdownloader.f.a.e.a(java.io.File):android.content.pm.PackageInfo");
    }

    private static String a(int i2) {
        return (i2 >>> 24) == 1 ? "android:" : "";
    }

    private static PackageInfo b(@NonNull Context context, @NonNull File file, int i2) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            a("unzip_getpackagearchiveinfo", "packageManager == null");
            return null;
        }
        try {
            return packageManager.getPackageArchiveInfo(file.getPath(), i2);
        } catch (Throwable th) {
            a("unzip_getpackagearchiveinfo", "pm.getPackageArchiveInfo failed: " + th.getMessage());
            return null;
        }
    }

    public static PackageInfo a(@NonNull Context context, @NonNull File file, int i2) {
        int i4;
        if (com.ss.android.socialbase.downloader.i.a.a(268435456) && (i4 = Build.VERSION.SDK_INT) >= 21 && i4 < 26) {
            try {
                return a(file);
            } catch (Throwable th) {
                a("getPackageInfo::unzip_getpackagearchiveinfo", th.getMessage());
                return b(context, file, i2);
            }
        }
        return b(context, file, i2);
    }

    private static void a(@NonNull String str, @NonNull String str2) {
        com.ss.android.socialbase.downloader.d.b g4 = com.ss.android.socialbase.downloader.downloader.c.g();
        if (g4 == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("message", str2);
        } catch (JSONException unused) {
        }
        g4.a(str, jSONObject, null, null);
    }

    private static String a(a aVar, int i2) {
        int b4 = aVar.b(i2);
        int c4 = aVar.c(i2);
        if (b4 == 3) {
            return aVar.d(i2);
        }
        return b4 == 2 ? String.format("?%s%08X", a(c4), Integer.valueOf(c4)) : (b4 < 16 || b4 > 31) ? String.format("<0x%X, type 0x%02X>", Integer.valueOf(c4), Integer.valueOf(b4)) : String.valueOf(c4);
    }

    public static String a(Context context, PackageInfo packageInfo, String str) {
        ApplicationInfo applicationInfo;
        if (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null) {
            return null;
        }
        applicationInfo.sourceDir = str;
        applicationInfo.publicSourceDir = str;
        try {
            return applicationInfo.loadLabel(context.getPackageManager()).toString();
        } catch (OutOfMemoryError e4) {
            a("getPackageInfo::fail_load_label", e4.getMessage());
            return null;
        }
    }
}
