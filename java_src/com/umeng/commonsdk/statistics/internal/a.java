package com.umeng.commonsdk.statistics.internal;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.umeng.analytics.pro.ai;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.utils.UMUtils;
import net.lingala.zip4j.util.e;
/* compiled from: HeaderHelper.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static Context f61384a;

    /* renamed from: b  reason: collision with root package name */
    private String f61385b;

    /* renamed from: c  reason: collision with root package name */
    private String f61386c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: HeaderHelper.java */
    /* renamed from: com.umeng.commonsdk.statistics.internal.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0357a {

        /* renamed from: a  reason: collision with root package name */
        private static final a f61387a = new a();

        private C0357a() {
        }
    }

    public static a a(Context context) {
        if (f61384a == null && context != null) {
            f61384a = context.getApplicationContext();
        }
        return C0357a.f61387a;
    }

    private void e(String str) {
        try {
            String replaceAll = str.replaceAll("&=", " ").replaceAll("&&", " ").replaceAll("==", e.F0);
            this.f61385b = replaceAll + e.F0 + "Android" + e.F0 + Build.DISPLAY + e.F0 + Build.MODEL + e.F0 + Build.VERSION.RELEASE + " " + HelperUtils.getUmengMD5(UMUtils.getAppkey(f61384a));
        } catch (Throwable th) {
            UMCrashManager.reportCrash(f61384a, th);
        }
    }

    private void f(String str) {
        try {
            String str2 = str.split("&&")[0];
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            String[] split = str2.split("&=");
            StringBuilder sb = new StringBuilder();
            sb.append(ai.aN);
            for (String str3 : split) {
                if (!TextUtils.isEmpty(str3)) {
                    String substring = str3.substring(0, 2);
                    if (substring.endsWith(SimpleComparison.EQUAL_TO_OPERATION)) {
                        substring = substring.replace(SimpleComparison.EQUAL_TO_OPERATION, "");
                    }
                    sb.append(substring);
                }
            }
            this.f61386c = sb.toString();
        } catch (Throwable th) {
            UMCrashManager.reportCrash(f61384a, th);
        }
    }

    public boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(ai.aF);
    }

    public boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(ai.aB);
    }

    public void d(String str) {
        String substring = str.substring(0, str.indexOf(95));
        f(substring);
        e(substring);
    }

    private a() {
        this.f61385b = null;
        this.f61386c = null;
    }

    public String b() {
        return this.f61385b;
    }

    public boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("a");
    }

    public String a() {
        return this.f61386c;
    }
}
