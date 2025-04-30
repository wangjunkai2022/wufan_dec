package com.join.mgps.va.overmind;

import android.text.TextUtils;
import com.join.mgps.Util.t;
/* compiled from: VExtModConfig.java */
/* loaded from: classes4.dex */
public class g {
    public static t.c a(String str) {
        return new t(str).b("archiveInfo");
    }

    public static String b(String str) {
        t.c b4 = new t(str).b("gameInfo");
        return b4 == null ? "" : b4.c("gameId");
    }

    public static t.c c(String str) {
        return new t(str).b("switch");
    }

    public static String d(String str) {
        t.c b4 = new t(str).b("soInfo");
        return b4 == null ? "" : b4.c("modPath");
    }

    public static int e(String str) {
        t.c b4 = new t(str).b("soInfo");
        if (b4 == null) {
            return 0;
        }
        String c4 = b4.c("code");
        if (TextUtils.isEmpty(c4)) {
            return 0;
        }
        return Integer.parseInt(c4);
    }

    public static String f(String str) {
        t.c b4 = new t(str).b("soInfo");
        return b4 == null ? "0" : b4.c("version");
    }

    public static void g(String str, String str2, String str3, String str4) {
        t tVar = new t(str);
        t.c b4 = tVar.b("archiveInfo");
        if (b4 == null) {
            b4 = new t.c("archiveInfo");
            tVar.f(b4);
        }
        b4.e("archivePath", str2);
        b4.e("archivePath2", str3);
        b4.e("archiveId", str4);
        tVar.j();
    }

    public static void h(String str, String str2, String str3, int i2, long j4) {
        t tVar = new t(str);
        t.c b4 = tVar.b("soInfo");
        if (b4 == null) {
            b4 = new t.c("soInfo");
            tVar.f(b4);
        }
        b4.e("modPath", str2);
        b4.e("version", str3);
        b4.e("code", i2 + "");
        b4.e("lastModifyTime", j4 + "");
        tVar.j();
    }

    public static void i(String str, String str2, String str3, String str4, String str5) {
        t tVar = new t(str);
        t.c b4 = tVar.b("switch");
        if (b4 == null) {
            b4 = new t.c("switch");
            tVar.f(b4);
        }
        b4.e("goldFingerSwitch", str2);
        b4.e("archiveCloudSwitch", str3);
        t.c b5 = tVar.b("config");
        if (b5 == null) {
            b5 = new t.c("config");
            tVar.f(b5);
        }
        b5.e("channelNum", str4);
        b5.e("targetVersion", str5);
        tVar.j();
    }

    public static void j(String str, String str2) {
        t tVar = new t(str);
        t.c b4 = tVar.b("gameInfo");
        if (b4 == null) {
            b4 = new t.c("gameInfo");
            tVar.f(b4);
        }
        b4.e("gameId", str2);
        tVar.j();
    }

    public static void k(String str, String str2) {
        t tVar = new t(str);
        t.c b4 = tVar.b("gameInfo");
        if (b4 == null) {
            b4 = new t.c("gameInfo");
            tVar.f(b4);
        }
        b4.e("modPath", str2);
        tVar.j();
    }
}
