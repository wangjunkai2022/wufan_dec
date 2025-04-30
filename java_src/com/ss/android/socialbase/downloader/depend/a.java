package com.ss.android.socialbase.downloader.depend;

import com.ss.android.socialbase.downloader.model.DownloadInfo;
/* compiled from: AbsDownloadExtListener.java */
/* loaded from: classes4.dex */
public abstract class a extends AbsDownloadListener implements s {

    /* renamed from: a  reason: collision with root package name */
    private static final String f57899a = "a";

    public void a(DownloadInfo downloadInfo) {
        if (!com.ss.android.socialbase.downloader.c.a.a() || downloadInfo == null) {
            return;
        }
        String str = f57899a;
        com.ss.android.socialbase.downloader.c.a.b(str, " onWaitingDownloadCompleteHandler -- " + downloadInfo.getName());
    }
}
