package com.qq.e.mediation.interfaces;
/* loaded from: classes4.dex */
public interface IBaseAd {
    int getECPM();

    String getReqId();

    void sendLossNotification(int i2, int i4, String str);

    void sendWinNotification(int i2);

    void setBidECPM(int i2);
}
