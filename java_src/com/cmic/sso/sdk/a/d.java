package com.cmic.sso.sdk.a;

import android.text.TextUtils;
import com.cmic.sso.sdk.e.k;
/* compiled from: UmcConfigUtil.java */
/* loaded from: classes2.dex */
class d {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        return System.currentTimeMillis() >= k.a("sso_config_xf", "client_valid", 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(boolean z3) {
        return "1".equals(k.a("sso_config_xf", "CLOSE_IPV6_LIST", !z3 ? "0" : "1"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(boolean z3) {
        String str = !z3 ? "0" : "1";
        return "1".equals(k.a("sso_config_xf", "CLOSE_M008_APPID_LIST", str)) || "1".equals(k.a("sso_config_xf", "CLOSE_M008_SDKVERSION_LIST", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(boolean z3) {
        return k.a("sso_config_xf", "CLOSE_FRIEND_WAPKS", z3 ? "CU" : "").contains("CU");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e(boolean z3) {
        return k.a("sso_config_xf", "CLOSE_FRIEND_WAPKS", z3 ? "CT" : "").contains("CT");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean f(boolean z3) {
        return "1".equals(k.a("sso_config_xf", "CLOSE_LOGS_VERSION", z3 ? "1" : "0"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(boolean z3) {
        return "1".equals(k.a("sso_config_xf", "CLOSE_IPV4_LIST", !z3 ? "0" : "1"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(String str) {
        String a4 = k.a("sso_config_xf", "https_get_phone_scrip_host", (String) null);
        return TextUtils.isEmpty(a4) ? str : a4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str) {
        String a4 = k.a("sso_config_xf", "config_host", (String) null);
        return TextUtils.isEmpty(a4) ? str : a4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(String str) {
        String a4 = k.a("sso_config_xf", "logHost", "");
        return TextUtils.isEmpty(a4) ? str : a4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i2) {
        return k.a("sso_config_xf", "pauseTime", i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2) {
        return k.a("sso_config_xf", "maxFailedLogTimes", i2);
    }
}
