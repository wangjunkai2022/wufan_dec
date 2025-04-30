package com.qq.e.comm.constants;

import android.text.TextUtils;
import com.qq.e.ads.ADActivity;
import com.qq.e.ads.LandscapeADActivity;
import com.qq.e.ads.PortraitADActivity;
import com.qq.e.ads.RewardvideoLandscapeADActivity;
import com.qq.e.ads.RewardvideoPortraitADActivity;
import com.qq.e.comm.DownloadService;
import com.qq.e.comm.managers.setting.GlobalSetting;
/* loaded from: classes4.dex */
public class CustomPkgConstants {

    /* renamed from: a  reason: collision with root package name */
    private static final String f56414a = DownloadService.class.getName();

    /* renamed from: b  reason: collision with root package name */
    private static final String f56415b = ADActivity.class.getName();

    /* renamed from: c  reason: collision with root package name */
    private static final String f56416c = PortraitADActivity.class.getName();

    /* renamed from: d  reason: collision with root package name */
    private static final String f56417d = RewardvideoPortraitADActivity.class.getName();

    /* renamed from: e  reason: collision with root package name */
    private static final String f56418e = LandscapeADActivity.class.getName();

    /* renamed from: f  reason: collision with root package name */
    private static final String f56419f = RewardvideoLandscapeADActivity.class.getName();

    public static String getADActivityName() {
        String customADActivityClassName = GlobalSetting.getCustomADActivityClassName();
        return !TextUtils.isEmpty(customADActivityClassName) ? customADActivityClassName : f56415b;
    }

    public static String getAssetPluginXorKey() {
        return "";
    }

    public static String getDownLoadServiceName() {
        return f56414a;
    }

    public static String getLandscapeADActivityName() {
        String customLandscapeActivityClassName = GlobalSetting.getCustomLandscapeActivityClassName();
        return !TextUtils.isEmpty(customLandscapeActivityClassName) ? customLandscapeActivityClassName : f56418e;
    }

    public static String getPortraitADActivityName() {
        String customPortraitActivityClassName = GlobalSetting.getCustomPortraitActivityClassName();
        return !TextUtils.isEmpty(customPortraitActivityClassName) ? customPortraitActivityClassName : f56416c;
    }

    public static String getRewardvideoLandscapeADActivityName() {
        String customRewardvideoLandscapeActivityClassName = GlobalSetting.getCustomRewardvideoLandscapeActivityClassName();
        return !TextUtils.isEmpty(customRewardvideoLandscapeActivityClassName) ? customRewardvideoLandscapeActivityClassName : f56419f;
    }

    public static String getRewardvideoPortraitADActivityName() {
        String customRewardvideoPortraitActivityClassName = GlobalSetting.getCustomRewardvideoPortraitActivityClassName();
        return !TextUtils.isEmpty(customRewardvideoPortraitActivityClassName) ? customRewardvideoPortraitActivityClassName : f56417d;
    }
}
