package com.qq.e.comm.managers.plugin;

import com.tencent.bugly.crashreport.CrashReport;
import java.lang.reflect.Method;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static Method f56457a;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f56458b;

    public static void a(Throwable th, String str) {
        try {
            Exception exc = new Exception("插件错误：" + str, th);
            if (f56458b) {
                return;
            }
            if (f56457a == null) {
                Method declaredMethod = CrashReport.class.getDeclaredMethod("postCatchedException", Throwable.class);
                f56457a = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            f56457a.invoke(null, exc);
        } catch (Throwable unused) {
            f56458b = true;
        }
    }
}
