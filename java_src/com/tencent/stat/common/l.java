package com.tencent.stat.common;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class l {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a() {
        try {
            return new File("/sys/devices/system/cpu/").listFiles(new m()).length;
        } catch (Exception e4) {
            e4.printStackTrace();
            return 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b() {
        StatLogger statLogger;
        byte[] bArr;
        int i2 = 0;
        try {
            String str = "";
            InputStream inputStream = new ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq").start().getInputStream();
            while (inputStream.read(new byte[24]) != -1) {
                str = str + new String(bArr);
            }
            inputStream.close();
            String trim = str.trim();
            if (trim.length() > 0) {
                i2 = Integer.valueOf(trim).intValue();
            }
        } catch (Exception e4) {
            statLogger = k.f60090f;
            statLogger.e(e4);
        }
        return i2 * 1000;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c() {
        StatLogger statLogger;
        byte[] bArr;
        int i2 = 0;
        try {
            String str = "";
            InputStream inputStream = new ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq").start().getInputStream();
            while (inputStream.read(new byte[24]) != -1) {
                str = str + new String(bArr);
            }
            inputStream.close();
            String trim = str.trim();
            if (trim.length() > 0) {
                i2 = Integer.valueOf(trim).intValue();
            }
        } catch (IOException e4) {
            statLogger = k.f60090f;
            statLogger.e((Exception) e4);
        }
        return i2 * 1000;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String d() {
        StatLogger statLogger;
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/cpuinfo"));
            String[] split = bufferedReader.readLine().split(":\\s+", 2);
            for (int i2 = 0; i2 < split.length; i2++) {
            }
            bufferedReader.close();
            return split[1];
        } catch (Throwable th) {
            statLogger = k.f60090f;
            statLogger.e(th);
            return "";
        }
    }
}
