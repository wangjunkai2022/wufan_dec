package com.ss.android.downloadlib.addownload.c;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.ss.android.downloadlib.addownload.j;
import com.ss.android.downloadlib.g.k;
import com.ss.android.downloadlib.g.l;
import com.ss.android.socialbase.downloader.depend.q;
import com.ss.android.socialbase.downloader.depend.r;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
/* compiled from: AppDownloadDiskSpaceHandler.java */
/* loaded from: classes4.dex */
public class a implements r {

    /* renamed from: a  reason: collision with root package name */
    private int f57166a;

    private long b(com.ss.android.socialbase.downloader.g.a aVar) {
        long a4 = aVar.a("clear_space_sleep_time", 0L);
        if (a4 <= 0) {
            return 0L;
        }
        if (a4 > 5000) {
            a4 = 5000;
        }
        k.b("AppDownloadDiskSpaceHandler", "waiting for space clear, sleepTime = " + a4, null);
        try {
            Thread.sleep(a4);
        } catch (InterruptedException e4) {
            e4.printStackTrace();
        }
        k.b("AppDownloadDiskSpaceHandler", "waiting end!", null);
        return a4;
    }

    public void a(int i2) {
        this.f57166a = i2;
    }

    @Override // com.ss.android.socialbase.downloader.depend.r
    public boolean a(long j4, long j5, q qVar) {
        long j6;
        com.ss.android.socialbase.downloader.g.a a4 = com.ss.android.socialbase.downloader.g.a.a(this.f57166a);
        if (a(a4)) {
            long currentTimeMillis = System.currentTimeMillis();
            d.a().c();
            long a5 = l.a(0L);
            a();
            long a6 = l.a(0L);
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            if (a6 < j5) {
                long b4 = b(a4);
                if (b4 > 0) {
                    a6 = l.a(0L);
                }
                j6 = b4;
            } else {
                j6 = 0;
            }
            k.b("AppDownloadDiskSpaceHandler", "cleanUpDisk, byteRequired = " + j5 + ", byteAvailableAfter = " + a6 + ", cleaned = " + (a6 - a5), null);
            a(a5, a6, j5, currentTimeMillis2, j6);
            if (a6 < j5) {
                return false;
            }
            if (qVar != null) {
                qVar.a();
                return true;
            }
            return true;
        }
        return false;
    }

    private boolean a(com.ss.android.socialbase.downloader.g.a aVar) {
        if (aVar.a("clear_space_use_disk_handler", 0) != 1) {
            return false;
        }
        return System.currentTimeMillis() - d.a().b() >= aVar.a("clear_space_min_time_interval", TTAdConstant.AD_MAX_EVENT_TIME);
    }

    private void a() {
        com.ss.android.download.api.config.e o3 = j.o();
        if (o3 != null) {
            o3.a();
        }
        c.a();
        c.b();
    }

    private void a(long j4, long j5, long j6, long j7, long j8) {
        DownloadInfo downloadInfo = Downloader.getInstance(j.getContext()).getDownloadInfo(this.f57166a);
        if (downloadInfo == null) {
            return;
        }
        try {
            com.ss.android.downloadlib.a.a().a(downloadInfo, j4, j5, j6, j7, j8, j5 > j6);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
