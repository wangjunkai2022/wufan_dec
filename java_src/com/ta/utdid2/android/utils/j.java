package com.ta.utdid2.android.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Environment;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
/* loaded from: classes4.dex */
public class j {
    public static String a(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            String packageName = context.getPackageName();
            if (packageManager == null || packageName == null) {
                return null;
            }
            return packageManager.getApplicationLabel(packageManager.getPackageInfo(packageName, 1).applicationInfo).toString();
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static String b() {
        String str = null;
        try {
            FileReader fileReader = new FileReader("/proc/cpuinfo");
            try {
                BufferedReader bufferedReader = new BufferedReader(fileReader, 1024);
                str = bufferedReader.readLine();
                bufferedReader.close();
                fileReader.close();
            } catch (IOException e4) {
                e4.toString();
            }
        } catch (FileNotFoundException e5) {
            e5.toString();
        }
        return str != null ? str.substring(str.indexOf(58) + 1).trim() : "";
    }

    public static File c(String str) {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory != null) {
            File file = new File(String.format("%s%s%s", externalStorageDirectory.getAbsolutePath(), File.separator, str));
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        }
        return null;
    }

    public static int d() {
        try {
            try {
                return Build.VERSION.class.getField("SDK_INT").getInt(null);
            } catch (Exception unused) {
                return Integer.parseInt((String) Build.VERSION.class.getField("SDK").get(null));
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            return 2;
        }
    }
}
