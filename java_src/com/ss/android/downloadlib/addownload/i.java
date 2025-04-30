package com.ss.android.downloadlib.addownload;

import com.ss.android.download.api.model.DownloadShortInfo;
/* compiled from: DownloadPercentHelper.java */
/* loaded from: classes4.dex */
public class i {
    public static int a(int i2, int i4) {
        return (i4 <= 0 || i4 >= 100 || !a(i2)) ? i4 : (int) (Math.sqrt(i4) * 10.0d);
    }

    public static long a(int i2, long j4, long j5) {
        if (a(i2)) {
            if (j4 <= 0) {
                return 0L;
            }
            return j5 <= 0 ? j4 : (j5 * a(i2, (int) ((j4 * 100) / j5))) / 100;
        }
        return j4;
    }

    public static DownloadShortInfo a(DownloadShortInfo downloadShortInfo) {
        if (downloadShortInfo != null && a((int) downloadShortInfo.id)) {
            downloadShortInfo.currentBytes = a((int) downloadShortInfo.id, downloadShortInfo.currentBytes, downloadShortInfo.totalBytes);
        }
        return downloadShortInfo;
    }

    private static boolean a(int i2) {
        return com.ss.android.socialbase.downloader.g.a.a(i2).a("pause_optimise_pretend_download_percent_switch", 0) == 1 && com.ss.android.socialbase.downloader.g.a.a(i2).a("pause_optimise_switch", 0) == 1;
    }
}
