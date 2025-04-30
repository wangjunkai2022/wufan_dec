package com.papa91.arc;

import android.app.Activity;
/* loaded from: classes.dex */
public class CContext {
    public static final String SCENE_FBA = "FBA";
    public static final String SCENE_FC = "FC";
    public static final String SCENE_GBA = "GBA";
    public static final String SCENE_PSP = "PSP";
    public static int TARGET_VERSION = 26;
    public static ISharePrefrence mShareLitener;
    public static IVideoAdListener mVideoAdListener;

    /* loaded from: classes.dex */
    public interface ISharePrefrence {
        String getEmulatorCheckpointUrl();

        String getEmulatorGoldenFingerUrl();

        String getEmulatorOneSkillUrl();

        int getEmulatorStartAdCount();

        String getHasShowAdInfo();

        String getPspGameAdCfg();

        void saveHasShowAdInfo(String str);
    }

    /* loaded from: classes.dex */
    public interface IVideoAdListener {
        void loadAd(Activity activity, String str);

        void showAd(Activity activity, String str, String str2);

        void showGoldAdDialog(Activity activity, String str, int i2);
    }

    public static void setVideoAdListener(IVideoAdListener iVideoAdListener) {
        mVideoAdListener = iVideoAdListener;
    }
}
