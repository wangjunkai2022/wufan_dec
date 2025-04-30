package com.bytedance.pangle.c;

import android.app.Application;
import android.os.Environment;
import android.text.TextUtils;
import com.bytedance.pangle.GlobalParam;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.ZeusConstants;
import com.join.mgps.Util.g0;
import java.io.File;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static File f10119a;

    /* renamed from: b  reason: collision with root package name */
    private static File f10120b;

    /* renamed from: c  reason: collision with root package name */
    private static File f10121c;

    private static String a(File file) {
        if (file != null) {
            if (!file.exists()) {
                file.mkdirs();
            }
            return file.getPath();
        }
        return null;
    }

    public static String b() {
        Application appApplication = Zeus.getAppApplication();
        if (f10121c == null) {
            File filesDir = appApplication.getFilesDir();
            f10121c = new File(filesDir, g0.f27568a + ZeusConstants.BASE_LIB_NAME + ZeusConstants.f10055a);
        }
        return a(f10121c);
    }

    public static String c() {
        Application appApplication = Zeus.getAppApplication();
        try {
            if ("mounted".equals(Environment.getExternalStorageState())) {
                File externalFilesDir = appApplication.getExternalFilesDir(g0.f27568a + ZeusConstants.BASE_LIB_NAME + ZeusConstants.f10056b);
                if (externalFilesDir != null) {
                    return a(externalFilesDir);
                }
                return null;
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private static void d() {
        if (f10119a == null) {
            File filesDir = Zeus.getAppApplication().getFilesDir();
            File file = new File(filesDir, ZeusConstants.BASE_LIB_NAME + ZeusConstants.f10057c);
            f10119a = file;
            a(file);
        }
    }

    private static String a(String... strArr) {
        d();
        File file = f10119a;
        if (strArr.length > 0) {
            for (String str : strArr) {
                if (!TextUtils.isEmpty(str)) {
                    file = new File(file, str);
                }
            }
        }
        return a(file);
    }

    public static String d(String str, int i2) {
        return a(str, "version-".concat(String.valueOf(i2)), "lib");
    }

    public static String b(String str, int i2) {
        return new File(a(str, "version-".concat(String.valueOf(i2)), "apk"), "base-1.apk").getPath();
    }

    public static String c(String str, int i2) {
        return a(str, "version-".concat(String.valueOf(i2)), "dalvik-cache");
    }

    public static String a() {
        Application appApplication = Zeus.getAppApplication();
        if (f10120b == null) {
            File downloadDir = GlobalParam.getInstance().getDownloadDir();
            if (downloadDir == null) {
                File filesDir = appApplication.getFilesDir();
                downloadDir = new File(filesDir, g0.f27568a + ZeusConstants.BASE_LIB_NAME + ZeusConstants.f10056b);
            }
            f10120b = downloadDir;
        }
        return a(f10120b);
    }

    public static String a(String str, int i2) {
        d();
        File file = f10119a;
        String[] strArr = {str, "version-".concat(String.valueOf(i2))};
        for (int i4 = 0; i4 < 2; i4++) {
            String str2 = strArr[i4];
            if (!TextUtils.isEmpty(str2)) {
                file = new File(file, str2);
            }
        }
        if (file != null) {
            return file.getPath();
        }
        return null;
    }

    public static String a(String str) {
        return a(str);
    }
}
