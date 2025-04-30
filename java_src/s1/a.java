package s1;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
/* compiled from: PackageUtils.java */
/* loaded from: classes4.dex */
public class a {
    public static PackageInfo a(PackageManager packageManager, String str, int i2) {
        try {
            return packageManager.getPackageArchiveInfo(str, i2);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int b(Context context, String str) {
        try {
            PackageInfo a4 = a(context.getPackageManager(), str, 0);
            if (a4 == null) {
                return -1;
            }
            return a4.versionCode;
        } catch (Exception unused) {
            return -1;
        }
    }

    public static int c(PackageManager packageManager, String str) {
        try {
            PackageInfo a4 = a(packageManager, str, 0);
            if (a4 == null) {
                return -1;
            }
            return a4.versionCode;
        } catch (Exception unused) {
            return -1;
        }
    }

    public static String d(Context context, String str) {
        try {
            PackageInfo a4 = a(context.getPackageManager(), str, 0);
            return a4 == null ? "0" : a4.versionName;
        } catch (Exception unused) {
            return "0";
        }
    }

    public static String e(PackageManager packageManager, String str) {
        try {
            PackageInfo a4 = a(packageManager, str, 0);
            return a4 == null ? "0" : a4.versionName;
        } catch (Exception unused) {
            return "0";
        }
    }
}
