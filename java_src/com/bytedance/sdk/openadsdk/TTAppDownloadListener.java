package com.bytedance.sdk.openadsdk;
/* loaded from: classes2.dex */
public interface TTAppDownloadListener {
    void onDownloadActive(long j4, long j5, String str, String str2);

    void onDownloadFailed(long j4, long j5, String str, String str2);

    void onDownloadFinished(long j4, String str, String str2);

    void onDownloadPaused(long j4, long j5, String str, String str2);

    void onIdle();

    void onInstalled(String str, String str2);
}
