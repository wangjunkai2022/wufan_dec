package com.sdk.Unicorn.base.api;
/* loaded from: classes4.dex */
public interface CallBack<T> {
    void onFailed(int i2, int i4, String str, String str2);

    void onSuccess(int i2, String str, int i4, T t3, String str2);
}
