package com.bytedance.pangle.util;

import android.app.Application;
import android.content.SharedPreferences;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.ZeusConstants;
import com.bytedance.pangle.log.ZeusLogger;
import java.util.Locale;
/* loaded from: classes2.dex */
public class l {

    /* renamed from: b  reason: collision with root package name */
    private static volatile l f10393b;

    /* renamed from: a  reason: collision with root package name */
    public SharedPreferences f10394a;

    private l() {
        Application appApplication = Zeus.getAppApplication();
        this.f10394a = appApplication.getSharedPreferences(ZeusConstants.BASE_LIB_NAME + "_meta_data_sp", 0);
    }

    public static l a() {
        if (f10393b == null) {
            synchronized (l.class) {
                if (f10393b == null) {
                    f10393b = new l();
                }
            }
        }
        return f10393b;
    }

    public final String b(String str) {
        String string = this.f10394a.getString("HOST_IDENTITY_".concat(String.valueOf(str)), "");
        ZeusLogger.i(ZeusLogger.TAG_INIT, "ZeusSpUtils getHostIdentity pluginPKg = " + str + ", hostIdentity = " + string);
        return string;
    }

    public final int a(String str) {
        int i2 = this.f10394a.getInt("PLUGIN_API_VERSION_".concat(String.valueOf(str)), 0);
        ZeusLogger.i(ZeusLogger.TAG_INIT, "ZeusSpUtils getPluginApiVersion pluginPKg = " + str + ", pluginApiVersion = " + i2);
        return i2;
    }

    public final void a(String str, int i2, boolean z3) {
        SharedPreferences.Editor edit = this.f10394a.edit();
        String str2 = "INSTALLED_" + str + "-" + i2;
        if (z3) {
            edit.putBoolean(str2, true);
        } else {
            edit.remove(str2);
        }
        edit.apply();
    }

    public final boolean a(String str, int i2) {
        return this.f10394a.getBoolean(String.format(Locale.getDefault(), "INSTALLED_%s-%d", str, Integer.valueOf(i2)), false);
    }
}
