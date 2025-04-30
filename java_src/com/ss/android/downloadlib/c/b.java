package com.ss.android.downloadlib.c;

import android.content.pm.PackageInfo;
import com.ss.android.downloadlib.addownload.j;
import com.ss.android.socialbase.downloader.depend.m;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
/* compiled from: ApkParseManager.java */
/* loaded from: classes4.dex */
public class b implements m {
    @Override // com.ss.android.socialbase.downloader.depend.m
    public void a(DownloadInfo downloadInfo) throws BaseException {
        PackageInfo a4 = com.ss.android.socialbase.appdownloader.c.a(j.getContext(), downloadInfo, downloadInfo.getSavePath(), downloadInfo.getName());
        if (a4 != null) {
            downloadInfo.setAppVersionCode(a4.versionCode);
        }
    }

    @Override // com.ss.android.socialbase.downloader.depend.m
    public boolean b(DownloadInfo downloadInfo) {
        return downloadInfo != null && com.ss.android.downloadlib.g.e.b() && downloadInfo.getPackageInfo() == null;
    }
}
