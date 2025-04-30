package com.qq.e.ads.splash;

import com.qq.e.comm.util.AdError;
/* loaded from: classes4.dex */
public interface SplashADListener {
    void onADClicked();

    void onADDismissed();

    void onADExposure();

    void onADLoaded(long j4);

    void onADPresent();

    void onADTick(long j4);

    void onNoAD(AdError adError);
}
