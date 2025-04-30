package com.tencent.bugly;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.p;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.z;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public class Bugly {
    public static final String SDK_IS_DEV = "false";

    /* renamed from: a  reason: collision with root package name */
    private static boolean f59273a = false;
    public static Context applicationContext = null;

    /* renamed from: b  reason: collision with root package name */
    private static String[] f59274b = {"BuglyCrashModule", "BuglyRqdModule", "BuglyBetaModule"};

    /* renamed from: c  reason: collision with root package name */
    private static String[] f59275c = {"BuglyRqdModule", "BuglyCrashModule", "BuglyBetaModule"};
    public static boolean enable = true;
    public static Boolean isDev;

    public static synchronized String getAppChannel() {
        byte[] bArr;
        synchronized (Bugly.class) {
            com.tencent.bugly.crashreport.common.info.a b4 = com.tencent.bugly.crashreport.common.info.a.b();
            if (b4 == null) {
                return null;
            }
            if (TextUtils.isEmpty(b4.f59372l)) {
                p a4 = p.a();
                if (a4 == null) {
                    return b4.f59372l;
                }
                Map<String, byte[]> a5 = a4.a(556, (o) null, true);
                if (a5 != null && (bArr = a5.get("app_channel")) != null) {
                    return new String(bArr);
                }
            }
            return b4.f59372l;
        }
    }

    public static void init(Context context, String str, boolean z3) {
        init(context, str, z3, null);
    }

    public static boolean isDev() {
        if (isDev == null) {
            isDev = Boolean.valueOf(Boolean.parseBoolean(SDK_IS_DEV.replace("@", "")));
        }
        return isDev.booleanValue();
    }

    public static synchronized void init(Context context, String str, boolean z3, BuglyStrategy buglyStrategy) {
        String[] strArr;
        synchronized (Bugly.class) {
            if (f59273a) {
                return;
            }
            f59273a = true;
            Context a4 = z.a(context);
            applicationContext = a4;
            if (a4 == null) {
                String str2 = x.f59843a;
                return;
            }
            if (isDev()) {
                f59274b = f59275c;
            }
            for (String str3 : f59274b) {
                if (str3.equals("BuglyCrashModule")) {
                    b.a(CrashModule.getInstance());
                } else if (!str3.equals("BuglyBetaModule") && !str3.equals("BuglyRqdModule")) {
                    str3.equals("BuglyFeedbackModule");
                }
            }
            b.f59302a = enable;
            b.a(applicationContext, str, z3, buglyStrategy);
        }
    }
}
