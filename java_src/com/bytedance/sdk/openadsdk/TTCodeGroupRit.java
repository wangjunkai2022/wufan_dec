package com.bytedance.sdk.openadsdk;
/* loaded from: classes2.dex */
public interface TTCodeGroupRit {

    /* loaded from: classes2.dex */
    public interface TTCodeGroupRitListener {
        void onFail(int i2, String str);

        void onSuccess(TTCodeGroupRit tTCodeGroupRit);
    }

    String getRit();

    int getSlotType();
}
