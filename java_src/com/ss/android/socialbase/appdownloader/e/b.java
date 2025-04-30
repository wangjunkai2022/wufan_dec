package com.ss.android.socialbase.appdownloader.e;

import android.content.Context;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
/* compiled from: DownloadNotificationListener.java */
/* loaded from: classes4.dex */
public class b extends com.ss.android.socialbase.downloader.depend.d {

    /* renamed from: a  reason: collision with root package name */
    private Context f57637a;

    /* renamed from: b  reason: collision with root package name */
    private int f57638b;

    /* renamed from: c  reason: collision with root package name */
    private String f57639c;

    /* renamed from: d  reason: collision with root package name */
    private String f57640d;

    /* renamed from: e  reason: collision with root package name */
    private String f57641e;

    /* renamed from: f  reason: collision with root package name */
    private String f57642f;

    /* renamed from: g  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.notification.a f57643g;

    public b(Context context, int i2, String str, String str2, String str3, String str4) {
        if (context != null) {
            this.f57637a = context.getApplicationContext();
        } else {
            this.f57637a = com.ss.android.socialbase.downloader.downloader.c.N();
        }
        this.f57638b = i2;
        this.f57639c = str;
        this.f57640d = str2;
        this.f57641e = str3;
        this.f57642f = str4;
    }

    @Override // com.ss.android.socialbase.downloader.depend.d
    public com.ss.android.socialbase.downloader.notification.a a() {
        Context context;
        com.ss.android.socialbase.downloader.notification.a aVar = this.f57643g;
        return (aVar != null || (context = this.f57637a) == null) ? aVar : new a(context, this.f57638b, this.f57639c, this.f57640d, this.f57641e, this.f57642f);
    }

    @Override // com.ss.android.socialbase.downloader.depend.d, com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
    public void onFailed(DownloadInfo downloadInfo, BaseException baseException) {
        if (downloadInfo == null || this.f57637a == null || !downloadInfo.canShowNotification() || downloadInfo.isAutoInstallWithoutNotification()) {
            return;
        }
        super.onFailed(downloadInfo, baseException);
    }

    @Override // com.ss.android.socialbase.downloader.depend.d, com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
    public void onPause(DownloadInfo downloadInfo) {
        if (downloadInfo == null || downloadInfo.isAutoInstallWithoutNotification()) {
            return;
        }
        super.onPause(downloadInfo);
    }

    @Override // com.ss.android.socialbase.downloader.depend.d, com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
    public void onPrepare(DownloadInfo downloadInfo) {
        if (downloadInfo == null || downloadInfo.isAutoInstallWithoutNotification()) {
            return;
        }
        super.onPrepare(downloadInfo);
    }

    @Override // com.ss.android.socialbase.downloader.depend.d, com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
    public void onProgress(DownloadInfo downloadInfo) {
        if (downloadInfo == null || downloadInfo.isAutoInstallWithoutNotification()) {
            return;
        }
        super.onProgress(downloadInfo);
    }

    @Override // com.ss.android.socialbase.downloader.depend.d, com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
    public void onStart(DownloadInfo downloadInfo) {
        if (downloadInfo == null || downloadInfo.isAutoInstallWithoutNotification()) {
            return;
        }
        super.onStart(downloadInfo);
    }

    @Override // com.ss.android.socialbase.downloader.depend.d, com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
    public void onSuccessed(DownloadInfo downloadInfo) {
        if (downloadInfo == null || this.f57637a == null) {
            return;
        }
        if (downloadInfo.canShowNotification() && (!downloadInfo.isAutoInstallWithoutNotification() || !downloadInfo.isAutoInstall())) {
            super.onSuccessed(downloadInfo);
        }
        if (downloadInfo.isAutoInstall()) {
            com.ss.android.socialbase.appdownloader.f.b.a(downloadInfo);
        }
    }

    public b(com.ss.android.socialbase.downloader.notification.a aVar) {
        this.f57637a = com.ss.android.socialbase.downloader.downloader.c.N();
        this.f57643g = aVar;
    }
}
