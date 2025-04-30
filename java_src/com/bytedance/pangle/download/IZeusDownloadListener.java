package com.bytedance.pangle.download;

import androidx.annotation.Keep;
@Keep
/* loaded from: classes2.dex */
public interface IZeusDownloadListener {
    void onFailed(Throwable th, int i2, String str);

    void onProgress(long j4, long j5);

    void onStart();

    void onSuccess(String str, String str2, long j4);
}
