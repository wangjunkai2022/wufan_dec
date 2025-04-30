package com.papa91.arc;

import android.app.Application;
import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import com.tencent.bugly.crashreport.CrashReport;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
/* loaded from: classes.dex */
public class BuglyApplication extends Application {
    private static String getProcessName(int i2) {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new FileReader("/proc/" + i2 + "/cmdline"));
            try {
                String readLine = bufferedReader.readLine();
                if (!TextUtils.isEmpty(readLine)) {
                    readLine = readLine.trim();
                }
                try {
                    bufferedReader.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                return readLine;
            } catch (Throwable th) {
                th = th;
                try {
                    th.printStackTrace();
                    return null;
                } finally {
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedReader = null;
        }
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        HashMap hashMap = new HashMap();
        hashMap.put(":fc", "900010112");
        hashMap.put(":fba", "900009495");
        hashMap.put(":psp", "ff3746a4d5");
        hashMap.put(":gba", "0937ef11de");
        hashMap.put(":gbapro", "09215800fc");
        hashMap.put(":gbc", "003e34286e");
        hashMap.put(":sfc", "a1035c8548");
        hashMap.put(":wsc", "573fc34f64");
        hashMap.put(":md", "d74ecb8243");
        hashMap.put(":ps", "7b05d084d0");
        hashMap.put(":x", "7325a003a3");
        hashMap.put(":y", "e9405cbd2c");
        hashMap.put(":p0", "d42ce98bac");
        Context applicationContext = getApplicationContext();
        String packageName = applicationContext.getPackageName();
        String processName = getProcessName(Process.myPid());
        CrashReport.UserStrategy userStrategy = new CrashReport.UserStrategy(applicationContext);
        userStrategy.setUploadProcess(processName == null || processName.startsWith(packageName));
        if (processName.contains(":")) {
            String substring = processName.substring(processName.lastIndexOf(":"));
            if (hashMap.containsKey(substring)) {
                if (substring.startsWith(":p") && !substring.equals(":psp") && !substring.equals(":ps")) {
                    String str = (String) hashMap.get(":p0");
                    return;
                } else {
                    CrashReport.initCrashReport(applicationContext, (String) hashMap.get(substring), false, userStrategy);
                    return;
                }
            }
            return;
        }
        CrashReport.initCrashReport(applicationContext, "f70caa2e9f", false);
    }
}
