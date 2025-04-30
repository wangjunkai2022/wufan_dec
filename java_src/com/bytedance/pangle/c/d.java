package com.bytedance.pangle.c;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.MethodUtils;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static String f10122a;

    /* renamed from: b  reason: collision with root package name */
    private static List<String> f10123b = new CopyOnWriteArrayList();

    public static String a() {
        if (!TextUtils.isEmpty(f10122a)) {
            return f10122a;
        }
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                String processName = Application.getProcessName();
                if (!TextUtils.isEmpty(processName)) {
                    f10122a = processName;
                }
                return f10122a;
            }
        } catch (Throwable unused) {
        }
        try {
            Object invokeStaticMethod = MethodUtils.invokeStaticMethod(Class.forName("android.app.ActivityThread"), "currentProcessName", new Object[0]);
            if (!TextUtils.isEmpty((String) invokeStaticMethod)) {
                f10122a = (String) invokeStaticMethod;
            }
            return f10122a;
        } catch (Exception e4) {
            e4.printStackTrace();
            String b4 = b();
            f10122a = b4;
            return b4;
        }
    }

    private static String b() {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/" + Process.myPid() + "/cmdline"), "iso-8859-1"));
        } catch (Throwable unused) {
            bufferedReader = null;
        }
        try {
            StringBuilder sb = new StringBuilder();
            while (true) {
                int read = bufferedReader.read();
                if (read <= 0) {
                    break;
                }
                sb.append((char) read);
            }
            if (ZeusLogger.isDebug()) {
                ZeusLogger.d("Process", "get processName = " + sb.toString());
            }
            String sb2 = sb.toString();
            try {
                bufferedReader.close();
            } catch (Exception unused2) {
            }
            return sb2;
        } catch (Throwable unused3) {
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (Exception unused4) {
                }
            }
            return null;
        }
    }

    public static boolean a(Context context) {
        String a4 = a();
        return (a4 == null || !a4.contains(":")) && a4 != null && a4.equals(context.getPackageName());
    }

    public static String a(String str) {
        return (TextUtils.isEmpty(str) || !str.contains(":")) ? "main" : str.split(":")[1];
    }
}
