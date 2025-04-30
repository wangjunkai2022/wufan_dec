package com.qq.e.mediation.interfaces;

import android.app.Activity;
import android.content.Context;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.constants.LoadAdParams;
/* loaded from: classes4.dex */
public abstract class BaseRewardAd implements IBaseAd {
    public static final int DEFAULT_PRIORITY = -1;

    /* renamed from: a  reason: collision with root package name */
    private LoadAdParams f56491a = null;

    public BaseRewardAd(Context context, String str, String str2, String str3) {
    }

    public int getAdapterPriority() {
        return -1;
    }

    public abstract String getECPMLevel();

    @Deprecated
    public abstract long getExpireTimestamp();

    public LoadAdParams getLoadAdParams() {
        return this.f56491a;
    }

    public int getRewardAdType() {
        return 0;
    }

    public abstract int getVideoDuration();

    public abstract boolean hasShown();

    public abstract boolean isValid();

    public abstract void loadAD();

    @Override // com.qq.e.mediation.interfaces.IBaseAd
    public void sendLossNotification(int i2, int i4, String str) {
    }

    @Override // com.qq.e.mediation.interfaces.IBaseAd
    public void sendWinNotification(int i2) {
    }

    public abstract void setAdListener(ADListener aDListener);

    @Override // com.qq.e.mediation.interfaces.IBaseAd
    public void setBidECPM(int i2) {
    }

    public void setLoadAdParams(LoadAdParams loadAdParams) {
        this.f56491a = loadAdParams;
    }

    public abstract void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions);

    public abstract void setVolumeOn(boolean z3);

    public abstract void showAD();

    public void showAD(Activity activity) {
        showAD();
    }
}
