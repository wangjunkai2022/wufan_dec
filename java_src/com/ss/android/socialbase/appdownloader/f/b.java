package com.ss.android.socialbase.appdownloader.f;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.ss.android.socialbase.downloader.depend.z;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.File;
/* compiled from: AppInstallUtils.java */
/* loaded from: classes4.dex */
public class b {
    public static void a(DownloadInfo downloadInfo) {
        b(downloadInfo);
    }

    private static void b(final DownloadInfo downloadInfo) {
        final Context N = com.ss.android.socialbase.downloader.downloader.c.N();
        boolean z3 = true;
        if (((downloadInfo.isAutoResumed() && !downloadInfo.isShowNotificationForNetworkResumed()) || com.ss.android.socialbase.appdownloader.c.b(downloadInfo.getExtra()) || TextUtils.isEmpty(downloadInfo.getMimeType()) || !downloadInfo.getMimeType().equals(AdBaseConstants.MIME_APK)) && com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).a("auto_install_when_resume", 0) != 1) {
            z3 = false;
        }
        final int a4 = z3 ? com.ss.android.socialbase.appdownloader.c.a(N, downloadInfo.getId(), false) : 2;
        com.ss.android.socialbase.downloader.downloader.c.l().execute(new Runnable() { // from class: com.ss.android.socialbase.appdownloader.f.b.1
            @Override // java.lang.Runnable
            public void run() {
                com.ss.android.socialbase.appdownloader.c.d b4 = com.ss.android.socialbase.appdownloader.d.j().b();
                z downloadNotificationEventListener = Downloader.getInstance(N).getDownloadNotificationEventListener(downloadInfo.getId());
                if (b4 == null && downloadNotificationEventListener == null) {
                    return;
                }
                File file = new File(downloadInfo.getSavePath(), downloadInfo.getName());
                if (file.exists()) {
                    try {
                        PackageInfo a5 = com.ss.android.socialbase.appdownloader.c.a(downloadInfo, file);
                        if (a5 != null) {
                            String packageName = (a4 == 1 || TextUtils.isEmpty(downloadInfo.getPackageName())) ? a5.packageName : downloadInfo.getPackageName();
                            if (b4 != null) {
                                b4.a(downloadInfo.getId(), 1, packageName, -3, downloadInfo.getDownloadTime());
                            }
                            if (downloadNotificationEventListener != null) {
                                downloadNotificationEventListener.a(1, downloadInfo, packageName, "");
                            }
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
            }
        });
    }
}
