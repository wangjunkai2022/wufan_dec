package com.cmic.sso.sdk.e;

import android.content.Context;
import android.text.TextUtils;
import com.cmic.sso.sdk.e.k;
import com.cmic.sso.sdk.e.n;
/* compiled from: PhoneScripUtils.java */
/* loaded from: classes2.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static String f10922a;

    /* renamed from: b  reason: collision with root package name */
    private static String f10923b;

    /* renamed from: c  reason: collision with root package name */
    private static long f10924c;

    private static boolean c() {
        if (TextUtils.isEmpty(f10922a)) {
            return !TextUtils.isEmpty(k.b("phonescripcache", "")) && a(k.a("phonescripstarttime", 0L));
        }
        c.b("PhoneScripUtils", f10923b + " " + f10924c);
        return a(f10924c);
    }

    public static void a(boolean z3, boolean z4) {
        k.a a4 = k.a();
        a4.a("phonescripstarttime");
        a4.a("phonescripcache");
        a4.a("pre_sim_key");
        if (z4) {
            a4.a();
        } else {
            a4.b();
        }
        if (z3) {
            f10922a = null;
            f10923b = null;
            f10924c = 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, String str, long j4, String str2) {
        String a4 = b.a(context, str);
        if (TextUtils.isEmpty(a4)) {
            return;
        }
        k.a a5 = k.a();
        a5.a("phonescripcache", a4);
        a5.a("phonescripstarttime", j4);
        a5.a("phonescripversion", 1);
        a5.a("pre_sim_key", str2);
        a5.b();
    }

    public static void a(final Context context, final String str, long j4, final String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || j4 <= 0) {
            return;
        }
        c.b("PhoneScripUtils", "save phone scrip simKey = " + str2);
        f10922a = str;
        long j5 = j4 * 1000;
        f10924c = System.currentTimeMillis() + j5;
        c.b("sLifeTime", f10924c + "");
        f10923b = str2;
        if (!"operator".equals(str3)) {
            n.a(new n.a() { // from class: com.cmic.sso.sdk.e.h.1
                @Override // com.cmic.sso.sdk.e.n.a
                protected void a() {
                    c.b("PhoneScripUtils", "start save scrip to sp in sub thread");
                    h.b(context, str, h.f10924c, str2);
                }
            });
        } else if (j5 > 3600000) {
            f10924c = System.currentTimeMillis() + 3600000;
        } else {
            f10924c = System.currentTimeMillis() + j5;
        }
    }

    public static String a(Context context) {
        if (TextUtils.isEmpty(f10922a)) {
            String b4 = k.b("phonescripcache", "");
            if (TextUtils.isEmpty(b4)) {
                c.a("PhoneScripUtils", "null");
                return null;
            }
            f10924c = k.a("phonescripstarttime", 0L);
            f10923b = k.b("pre_sim_key", "");
            String b5 = b.b(context, b4);
            f10922a = b5;
            return b5;
        }
        return f10922a;
    }

    private static boolean a(long j4) {
        long currentTimeMillis = System.currentTimeMillis();
        c.b("PhoneScripUtils", j4 + "");
        c.b("PhoneScripUtils", currentTimeMillis + "");
        return j4 - currentTimeMillis > com.join.mgps.data.c.f47286a;
    }

    public static long a() {
        long a4;
        long j4;
        long currentTimeMillis = System.currentTimeMillis();
        if (!TextUtils.isEmpty(f10922a)) {
            c.b("PhoneScripUtils", f10923b + " " + f10924c);
            a4 = f10924c;
        } else {
            String b4 = k.b("phonescripcache", "");
            a4 = k.a("phonescripstarttime", 0L);
            if (TextUtils.isEmpty(b4)) {
                j4 = 0;
                return Math.max(j4 / 1000, 0L);
            }
        }
        j4 = (a4 - currentTimeMillis) - com.join.mgps.data.c.f47286a;
        return Math.max(j4 / 1000, 0L);
    }

    private static int a(String str) {
        String b4;
        if (!TextUtils.isEmpty(f10923b)) {
            b4 = f10923b;
        } else {
            b4 = k.b("pre_sim_key", "");
            f10923b = b4;
        }
        if (TextUtils.isEmpty(b4)) {
            return 0;
        }
        return b4.equals(str) ? 1 : 2;
    }

    public static boolean a(com.cmic.sso.sdk.a aVar) {
        int a4 = a(aVar.b("scripKey"));
        aVar.a("imsiState", a4 + "");
        c.b("PhoneScripUtils", "simState = " + a4);
        if (k.a("phonescripversion", 0) != 1 && a4 != 0) {
            a(true, false);
            b.a();
            c.b("PhoneScripUtils", "phoneScriptVersion change");
            return false;
        } else if (a4 != 1) {
            if (a4 == 2) {
                a(true, false);
            }
            return false;
        } else {
            return c();
        }
    }
}
