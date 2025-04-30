package com.efs.sdk.base.core.config.a;

import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import com.efs.sdk.base.core.c.f;
import com.efs.sdk.base.core.config.GlobalEnvStruct;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.newsharedpreferences.SharedPreferencesUtils;
import java.io.File;
import java.util.Map;
/* loaded from: classes2.dex */
public final class e implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a  reason: collision with root package name */
    volatile SharedPreferences f11327a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b() {
        File a4 = com.efs.sdk.base.core.util.a.a(ControllerCenter.getGlobalEnvStruct().mAppContext, ControllerCenter.getGlobalEnvStruct().getAppid());
        if (a4.exists()) {
            a4.delete();
        }
    }

    private void d() {
        if (this.f11327a == null) {
            synchronized (com.efs.sdk.base.core.c.b.class) {
                if (this.f11327a == null) {
                    String appid = ControllerCenter.getGlobalEnvStruct().getAppid();
                    this.f11327a = SharedPreferencesUtils.getSharedPreferences(ControllerCenter.getGlobalEnvStruct().mAppContext, com.efs.sdk.base.core.util.c.b.a(("config_" + appid.toLowerCase()).getBytes()));
                    this.f11327a.registerOnSharedPreferenceChangeListener(this);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(@NonNull b bVar) {
        c();
        if (this.f11327a == null) {
            return false;
        }
        SharedPreferences.Editor edit = this.f11327a.edit();
        edit.clear();
        edit.putInt("cver", bVar.f11310a);
        edit.putLong("last_refresh_time", System.currentTimeMillis());
        for (Map.Entry<String, String> entry : bVar.f11314e.entrySet()) {
            edit.putString(entry.getKey(), entry.getValue());
        }
        edit.apply();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        try {
            d();
        } catch (Throwable th) {
            com.efs.sdk.base.core.util.d.b("efs.config", "init sharedpreferences error", th);
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        f fVar;
        fVar = f.a.f11292a;
        if (fVar.a()) {
            return;
        }
        c.a().b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        GlobalEnvStruct globalEnvStruct = ControllerCenter.getGlobalEnvStruct();
        File b4 = com.efs.sdk.base.core.util.a.b(globalEnvStruct.mAppContext, globalEnvStruct.getAppid());
        if (b4.exists()) {
            com.efs.sdk.base.core.util.b.b(b4);
            return true;
        }
        return false;
    }
}
