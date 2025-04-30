package com.xinzhu.overmind.client.hook.env;

import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.xinzhu.haunted.android.os.o;
/* compiled from: VirtualRuntime.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final Handler f64123a = new Handler(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    private static String f64124b;

    /* renamed from: c  reason: collision with root package name */
    private static String f64125c;

    public static <T> T a(Throwable e4) throws RuntimeException {
        e4.printStackTrace();
        throw new RuntimeException("transact remote server failed", e4);
    }

    public static void b() {
        Process.killProcess(Process.myPid());
    }

    public static String c() {
        return f64124b;
    }

    public static String d() {
        return f64125c;
    }

    public static Handler e() {
        return f64123a;
    }

    public static boolean f() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 21) {
            return false;
        }
        if (i2 >= 23) {
            return Process.is64Bit();
        }
        return com.xinzhu.haunted.dalvik.system.a.e().f().booleanValue();
    }

    public static boolean g() {
        return System.getProperty("java.vm.version").startsWith(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
    }

    public static void h(String processName, ApplicationInfo appInfo) {
        if (f64125c != null) {
            return;
        }
        f64124b = appInfo.packageName;
        f64125c = processName;
        o.b(processName);
        com.xinzhu.haunted.android.ddm.a.b(processName, 0);
    }
}
