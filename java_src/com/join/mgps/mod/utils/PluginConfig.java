package com.join.mgps.mod.utils;

import android.annotation.TargetApi;
import android.content.Context;
import android.text.TextUtils;
import com.join.mgps.Util.t;
/* loaded from: classes.dex */
public class PluginConfig {
    public static final boolean LOG = true;
    public static ClassLoader sPluginClassloader = PluginConfig.class.getClassLoader();

    public static String get(Context context, String str, String str2) {
        return context.getSharedPreferences(d.f51077g, 4).getString(str, str2);
    }

    public static t.c getArchiveSection(String str) {
        return new t(str).b("archiveInfo");
    }

    public static String getLastLaunchPkg(Context context) {
        return get(context, d.f51084n, "");
    }

    public static t.c getModConfig(String str) {
        return new t(str).b("config");
    }

    public static String getModGameId(String str) {
        t.c b4 = new t(str).b("gameInfo");
        return b4 == null ? "" : b4.c("gameId");
    }

    public static t.c getModMenuSwitch(String str) {
        return new t(str).b("switch");
    }

    public static String getModPath(String str) {
        t.c b4 = new t(str).b("soInfo");
        return b4 == null ? "" : b4.c("modPath");
    }

    public static int getSoCode(String str) {
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

    @TargetApi(11)
    public static long getSoLastModifiedTime(Context context, String str) {
        return context.getSharedPreferences(d.f51077g, 4).getLong(str, 0L);
    }

    public static String getSoVersion(String str) {
        t.c b4 = new t(str).b("soInfo");
        return b4 == null ? "0" : b4.c("version");
    }

    public static void put(Context context, String str, String str2) {
        context.getSharedPreferences(d.f51077g, 4).edit().putString(str, str2).apply();
    }

    public static void setArchivePath(String str, String str2, String str3, String str4) {
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

    public static void setLastLaunchPkg(Context context, String str) {
        put(context, d.f51084n, str);
    }

    public static void setModConfig(String str, String str2, String str3, int i2, long j4) {
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

    public static void setModGameId(String str, String str2) {
        t tVar = new t(str);
        t.c b4 = tVar.b("gameInfo");
        if (b4 == null) {
            b4 = new t.c("gameInfo");
            tVar.f(b4);
        }
        b4.e("gameId", str2);
        tVar.j();
    }

    public static void setModPath(String str, String str2) {
        t tVar = new t(str);
        t.c b4 = tVar.b("gameInfo");
        if (b4 == null) {
            b4 = new t.c("gameInfo");
            tVar.f(b4);
        }
        b4.e("modPath", str2);
        tVar.j();
    }

    public static void setSoCode(Context context, int i2) {
        context.getSharedPreferences(d.f51077g, 4).edit().putInt(d.f51082l, i2).apply();
    }

    @TargetApi(11)
    public static void setSoLastModifiedTime(Context context, String str, long j4) {
        context.getSharedPreferences(d.f51077g, 4).edit().putLong(str, j4).apply();
    }

    public static void setSoVersion(Context context, String str) {
        put(context, d.f51083m, str);
    }

    public static String getSoVersion(Context context) {
        return get(context, d.f51083m, "");
    }

    public static int getSoCode(Context context) {
        return context.getSharedPreferences(d.f51077g, 4).getInt(d.f51082l, 0);
    }

    public static void setModConfig(String str, String str2, String str3, String str4, String str5, String str6) {
        t tVar = new t(str);
        t.c b4 = tVar.b("switch");
        if (b4 == null) {
            b4 = new t.c("switch");
            tVar.f(b4);
        }
        b4.e("goldFingerSwitch", str2);
        b4.e("archiveCloudSwitch", str3);
        b4.e("introductionSwitch", str4);
        t.c b5 = tVar.b("config");
        if (b5 == null) {
            b5 = new t.c("config");
            tVar.f(b5);
        }
        b5.e("channelNum", str5);
        b5.e("targetVersion", str6);
        tVar.j();
    }
}
