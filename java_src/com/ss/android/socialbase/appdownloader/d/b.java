package com.ss.android.socialbase.appdownloader.d;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.ss.android.socialbase.appdownloader.c.g;
import com.ss.android.socialbase.appdownloader.d;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.downloader.c;
import com.ss.android.socialbase.downloader.downloader.l;
import com.ss.android.socialbase.downloader.i.f;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.List;
/* compiled from: DefaultDownloadLaunchHandler.java */
/* loaded from: classes4.dex */
public class b implements l {

    /* renamed from: a  reason: collision with root package name */
    private List<Integer> f57624a;

    /* renamed from: b  reason: collision with root package name */
    private BroadcastReceiver f57625b;

    /* JADX INFO: Access modifiers changed from: private */
    public void b(List<DownloadInfo> list, int i2) {
        if (list == null || list.isEmpty()) {
            return;
        }
        g l4 = d.j().l();
        if (l4 != null) {
            l4.a(list);
        }
        Context N = c.N();
        if (N == null) {
            return;
        }
        boolean b4 = f.b(N);
        for (DownloadInfo downloadInfo : list) {
            a(N, downloadInfo, b4, i2);
        }
        List<Integer> list2 = this.f57624a;
        if (list2 == null || list2.isEmpty() || this.f57625b != null) {
            return;
        }
        this.f57625b = new BroadcastReceiver() { // from class: com.ss.android.socialbase.appdownloader.d.b.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                final Context applicationContext = context.getApplicationContext();
                if (f.b(applicationContext)) {
                    com.ss.android.socialbase.downloader.c.a.b("LaunchResume", "onReceive : wifi connected !!!");
                    c.l().execute(new Runnable() { // from class: com.ss.android.socialbase.appdownloader.d.b.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                if (b.this.f57624a != null && !b.this.f57624a.isEmpty()) {
                                    int size = b.this.f57624a.size();
                                    Integer[] numArr = new Integer[size];
                                    b.this.f57624a.toArray(numArr);
                                    b.this.f57624a.clear();
                                    for (int i4 = 0; i4 < size; i4++) {
                                        DownloadInfo downloadInfo2 = Downloader.getInstance(applicationContext).getDownloadInfo(numArr[i4].intValue());
                                        if (downloadInfo2 != null && (downloadInfo2.getRealStatus() == -5 || (downloadInfo2.getRealStatus() == -2 && downloadInfo2.isPauseReserveOnWifi()))) {
                                            b.this.a(applicationContext, downloadInfo2, true, 2);
                                        }
                                    }
                                }
                            } catch (Exception e4) {
                                e4.printStackTrace();
                            }
                        }
                    });
                    try {
                        applicationContext.unregisterReceiver(b.this.f57625b);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                    b.this.f57625b = null;
                }
            }
        };
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            N.registerReceiver(this.f57625b, intentFilter);
        } catch (Throwable th) {
            th.printStackTrace();
            this.f57625b = null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.l
    public List<String> a() {
        return com.ss.android.socialbase.appdownloader.c.c();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.l
    public void a(final List<DownloadInfo> list, final int i2) {
        if (f.d()) {
            c.l().execute(new Runnable() { // from class: com.ss.android.socialbase.appdownloader.d.b.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        b.this.b(list, i2);
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
            });
        } else {
            b(list, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:100:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:102:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(android.content.Context r21, com.ss.android.socialbase.downloader.model.DownloadInfo r22, boolean r23, int r24) {
        /*
            Method dump skipped, instructions count: 641
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.appdownloader.d.b.a(android.content.Context, com.ss.android.socialbase.downloader.model.DownloadInfo, boolean, int):void");
    }

    private void a(DownloadInfo downloadInfo, Context context) {
        com.ss.android.socialbase.downloader.g.a a4 = com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId());
        int a5 = a4.a("paused_resume_max_count", 0);
        double a6 = a4.a("paused_resume_max_hours", 72.0d);
        int pausedResumeCount = downloadInfo.getPausedResumeCount();
        if (pausedResumeCount < a5 && ((double) (System.currentTimeMillis() - downloadInfo.getLastDownloadTime())) < a6 * 3600000.0d) {
            com.ss.android.socialbase.downloader.notification.a e4 = com.ss.android.socialbase.downloader.notification.b.a().e(downloadInfo.getId());
            if (e4 == null) {
                e4 = new com.ss.android.socialbase.appdownloader.e.a(context, downloadInfo.getId(), downloadInfo.getTitle(), downloadInfo.getSavePath(), downloadInfo.getName(), downloadInfo.getExtra());
                com.ss.android.socialbase.downloader.notification.b.a().a(e4);
            } else {
                e4.a(downloadInfo);
            }
            e4.b(downloadInfo.getTotalBytes());
            e4.a(downloadInfo.getCurBytes());
            e4.a(downloadInfo.getStatus(), null, false, false);
            downloadInfo.setPausedResumeCount(pausedResumeCount + 1);
            downloadInfo.updateSpData();
        }
    }

    private boolean a(DownloadInfo downloadInfo) {
        if (com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).b("uninstall_can_not_resume_for_force_task", false)) {
            return f.a(downloadInfo, false, downloadInfo.getMd5());
        }
        return downloadInfo.isDownloaded();
    }
}
