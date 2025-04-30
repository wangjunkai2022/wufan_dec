package com.ss.android.downloadlib.c;

import android.content.Context;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.ss.android.downloadlib.addownload.j;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import org.json.JSONObject;
/* compiled from: NewDownloadCompletedEventDispatcher.java */
/* loaded from: classes4.dex */
public class f implements com.ss.android.socialbase.appdownloader.c.d {

    /* renamed from: a  reason: collision with root package name */
    private Context f57396a;

    public f(Context context) {
        this.f57396a = context.getApplicationContext();
    }

    @Override // com.ss.android.socialbase.appdownloader.c.d
    public void a(Context context, String str) {
        com.ss.android.downloadlib.a.a().a(str);
    }

    @Override // com.ss.android.socialbase.appdownloader.c.d
    public void a(int i2, int i4, String str, int i5, long j4) {
        DownloadInfo downloadInfo;
        com.ss.android.downloadad.api.a.b a4;
        Context context = this.f57396a;
        if (context == null || (downloadInfo = Downloader.getInstance(context).getDownloadInfo(i2)) == null || downloadInfo.getStatus() == 0 || (a4 = com.ss.android.downloadlib.addownload.b.f.a().a(downloadInfo)) == null) {
            return;
        }
        if (i4 == 1) {
            com.ss.android.downloadlib.a.a(downloadInfo, a4);
            if (AdBaseConstants.MIME_APK.equals(downloadInfo.getMimeType())) {
                com.ss.android.downloadlib.addownload.a.a().a(downloadInfo, a4.b(), a4.l(), a4.e(), downloadInfo.getTitle(), a4.d(), downloadInfo.getTargetFilePath());
            }
        } else if (i4 == 3) {
            com.ss.android.downloadlib.d.a.a().a("download_notification", "download_notification_install", com.ss.android.downloadlib.a.b(new JSONObject(), downloadInfo), a4);
        } else if (i4 == 5) {
            com.ss.android.downloadlib.d.a.a().a("download_notification", "download_notification_pause", a4);
        } else if (i4 == 6) {
            com.ss.android.downloadlib.d.a.a().a("download_notification", "download_notification_continue", a4);
        } else if (i4 != 7) {
        } else {
            com.ss.android.downloadlib.d.a.a().a("download_notification", "download_notification_click", a4);
        }
    }

    @Override // com.ss.android.socialbase.appdownloader.c.d
    public boolean a(int i2, boolean z3) {
        if (j.n() != null) {
            return j.n().a(z3);
        }
        return false;
    }

    @Override // com.ss.android.socialbase.appdownloader.c.d
    public void a(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return;
        }
        com.ss.android.downloadlib.f.a().a(downloadInfo);
        if (com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).a("report_download_cancel", 1) == 1) {
            com.ss.android.downloadlib.d.a.a().a(downloadInfo, new BaseException(1012, ""));
        } else {
            com.ss.android.downloadlib.d.a.a().b(downloadInfo, new BaseException(1012, ""));
        }
    }

    @Override // com.ss.android.socialbase.appdownloader.c.d
    public void a(int i2, int i4, String str, String str2, String str3) {
        DownloadInfo downloadInfo;
        Context context = this.f57396a;
        if (context == null || (downloadInfo = Downloader.getInstance(context).getDownloadInfo(i2)) == null || downloadInfo.getStatus() != -3) {
            return;
        }
        downloadInfo.setPackageName(str2);
        com.ss.android.downloadlib.addownload.b.a().a(this.f57396a, downloadInfo);
    }

    @Override // com.ss.android.socialbase.appdownloader.c.d
    public boolean a() {
        return com.ss.android.downloadlib.addownload.b.a().b();
    }
}
