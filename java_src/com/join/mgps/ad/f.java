package com.join.mgps.ad;

import java.util.Map;
/* compiled from: IRewardVideo.java */
/* loaded from: classes.dex */
public interface f {
    void a(String str, int i2, int i4);

    void b(boolean z3);

    void c(String str);

    void d(String str, int i2, int i4, Map<String, Object> map);

    void onADClick();

    void onADClose();

    void onADExpose();

    void onADShow();

    void onError(int i2, String str);

    void onInitSuccess();

    void onReward(Map<String, Object> map);

    void onVideoCached();

    void onVideoComplete();
}
