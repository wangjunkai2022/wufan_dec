package com.papa91.arc;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.imagepipeline.core.ImagePipelineConfig;
import com.join.mgps.service.CommonService_;
import com.papa91.arc.CContext;
/* loaded from: classes.dex */
public class MApplication extends BuglyApplication {
    public static String adIdEmu = "";

    private void initSharePref() {
        final SharedPreferences sharedPreferences = getSharedPreferences("PrefDef", 4);
        CContext.mShareLitener = new CContext.ISharePrefrence() { // from class: com.papa91.arc.MApplication.1
            @Override // com.papa91.arc.CContext.ISharePrefrence
            public String getEmulatorCheckpointUrl() {
                return sharedPreferences.getString("emulatorCheckpointUrl", "");
            }

            @Override // com.papa91.arc.CContext.ISharePrefrence
            public String getEmulatorGoldenFingerUrl() {
                return sharedPreferences.getString("emulatorGoldenFingerUrl", "");
            }

            @Override // com.papa91.arc.CContext.ISharePrefrence
            public String getEmulatorOneSkillUrl() {
                return sharedPreferences.getString("emulatorOneSkillUrl", "");
            }

            @Override // com.papa91.arc.CContext.ISharePrefrence
            public int getEmulatorStartAdCount() {
                return sharedPreferences.getInt("emulatorStartAdCount", 0);
            }

            @Override // com.papa91.arc.CContext.ISharePrefrence
            public String getHasShowAdInfo() {
                return sharedPreferences.getString("hasShowAdInfo", "");
            }

            @Override // com.papa91.arc.CContext.ISharePrefrence
            public String getPspGameAdCfg() {
                return sharedPreferences.getString("pspGameAdCfg", "");
            }

            @Override // com.papa91.arc.CContext.ISharePrefrence
            public void saveHasShowAdInfo(String str) {
                Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.adInfo");
                intent.putExtra(CommonService_.c0.f51765b, str);
                MApplication.this.sendBroadcast(intent);
            }
        };
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        com.yatoooon.screenadaptation.e.a().i(this);
    }

    @Override // com.papa91.arc.BuglyApplication, android.app.Application
    public void onCreate() {
        super.onCreate();
        Fresco.initialize(this, ImagePipelineConfig.newBuilder(this).setDownsampleEnabled(true).build());
        com.yatoooon.screenadaptation.e.b(this);
        initSharePref();
    }
}
