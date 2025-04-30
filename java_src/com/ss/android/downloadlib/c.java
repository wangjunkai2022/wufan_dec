package com.ss.android.downloadlib;

import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.qq.e.comm.constants.ErrorCode;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.downloadlib.addownload.j;
import com.ss.android.downloadlib.g.k;
import com.ss.android.downloadlib.g.l;
import com.ss.android.socialbase.appdownloader.c.h;
import com.ss.android.socialbase.downloader.a.a;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import org.json.JSONObject;
/* compiled from: BaseDownloadMonitorListener.java */
/* loaded from: classes4.dex */
public class c implements h {

    /* renamed from: a  reason: collision with root package name */
    private static String f57381a = "c";

    /* renamed from: b  reason: collision with root package name */
    private Handler f57382b = new Handler(Looper.getMainLooper());

    @Override // com.ss.android.socialbase.appdownloader.c.h
    public void a(DownloadInfo downloadInfo, BaseException baseException, int i2) {
        final DownloadModel a4;
        if (downloadInfo == null) {
            return;
        }
        if (i2 == -1 && baseException != null) {
            JSONObject jSONObject = new JSONObject();
            com.ss.android.downloadlib.g.f.c(downloadInfo, jSONObject);
            a.a(jSONObject, downloadInfo);
            k.a("download_failed", jSONObject.toString());
        }
        com.ss.android.downloadad.api.a.b a5 = com.ss.android.downloadlib.addownload.b.f.a().a(downloadInfo);
        if (a5 == null) {
            return;
        }
        try {
            if (i2 != -1) {
                if (i2 == -3) {
                    a.a(downloadInfo, a5);
                    return;
                } else if (i2 == 2001) {
                    a.a().a(downloadInfo, a5, ErrorCode.INIT_ERROR);
                    return;
                } else if (i2 == 11) {
                    a.a().a(downloadInfo, a5, 2000);
                    if (a5.S()) {
                        return;
                    }
                    a(downloadInfo, a5);
                    return;
                } else {
                    return;
                }
            }
            BaseException baseException2 = null;
            if (baseException != null) {
                if (com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).a("toast_without_network", 0) == 1 && baseException.getErrorCode() == 1049) {
                    this.f57382b.post(new Runnable() { // from class: com.ss.android.downloadlib.c.1
                        @Override // java.lang.Runnable
                        public void run() {
                            j.c().a(5, j.getContext(), null, "无网络，请检查网络设置", null, 0);
                        }
                    });
                }
                if (com.ss.android.socialbase.downloader.i.f.h(baseException)) {
                    if (j.l() != null) {
                        j.l().a(a5.b());
                    }
                    com.ss.android.downloadlib.d.a.a().a("download_failed_for_space", a5);
                    if (!a5.Q()) {
                        com.ss.android.downloadlib.d.a.a().a("download_can_restart", a5);
                        a(downloadInfo);
                    }
                    if ((j.l() == null || !j.l().d()) && (a4 = com.ss.android.downloadlib.addownload.b.f.a().a(a5.b())) != null && a4.isShowToast()) {
                        final com.ss.android.socialbase.downloader.g.a a6 = com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId());
                        if (a6.a("show_no_enough_space_toast", 0) == 1) {
                            this.f57382b.post(new Runnable() { // from class: com.ss.android.downloadlib.c.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    j.c().a(2, j.getContext(), a4, a6.a("no_enough_space_toast_text", "您的存储空间不足，请清理后再试"), null, 0);
                                }
                            });
                        }
                    }
                }
                baseException2 = new BaseException(baseException.getErrorCode(), l.a(baseException.getMessage(), j.i().optInt("exception_msg_length", 500)));
            }
            com.ss.android.downloadlib.d.a.a().b(downloadInfo, baseException2);
            f.a().a(downloadInfo, baseException, "");
        } catch (Exception e4) {
            j.s().a(e4, "onAppDownloadMonitorSend");
        }
    }

    private void a(final DownloadInfo downloadInfo, final com.ss.android.downloadad.api.a.b bVar) {
        final long a4 = l.a(Environment.getDataDirectory(), -1L);
        long min = Math.min(524288000L, l.a(Environment.getDataDirectory()) / 10);
        final long totalBytes = downloadInfo.getTotalBytes();
        double d4 = min;
        double d5 = totalBytes;
        Double.isNaN(d5);
        Double.isNaN(d4);
        final double d6 = (d5 * 2.5d) + d4;
        if (a4 > -1 && totalBytes > -1) {
            double d7 = a4;
            if (d7 < d6) {
                Double.isNaN(d7);
                if (d6 - d7 > com.ss.android.downloadlib.addownload.d.b()) {
                    com.ss.android.downloadlib.addownload.d.a(downloadInfo.getId());
                }
            }
        }
        com.ss.android.socialbase.downloader.a.a.a().a(new a.InterfaceC0308a() { // from class: com.ss.android.downloadlib.c.3
            @Override // com.ss.android.socialbase.downloader.a.a.InterfaceC0308a
            public void b() {
                if (!l.b(bVar)) {
                    long j4 = a4;
                    if (j4 <= -1 || totalBytes <= -1 || j4 >= d6) {
                        return;
                    }
                    com.ss.android.downloadlib.d.a.a().a("clean_space_install", com.ss.android.downloadlib.addownload.d.a("install_no_enough_space"), bVar);
                    if (com.ss.android.downloadlib.addownload.d.a(downloadInfo, ((long) d6) - a4)) {
                        com.ss.android.socialbase.downloader.a.a.a().b(this);
                        bVar.g(true);
                        return;
                    }
                    return;
                }
                com.ss.android.socialbase.downloader.a.a.a().b(this);
            }

            @Override // com.ss.android.socialbase.downloader.a.a.InterfaceC0308a
            public void c() {
            }
        });
    }

    private void a(@NonNull DownloadInfo downloadInfo) {
        if (com.ss.android.downloadlib.g.e.f(downloadInfo.getId())) {
            d.a().b(new com.ss.android.downloadlib.addownload.c.b(downloadInfo));
        }
    }
}
