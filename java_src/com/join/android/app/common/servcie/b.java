package com.join.android.app.common.servcie;

import android.content.Context;
import android.content.Intent;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.d2;
import com.join.mgps.enums.Dtype;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.ExtFrom;
import com.papa.sim.statistic.Where;
import com.papa.sim.statistic.p;
import g1.f;
/* compiled from: DownloadServiceHelper.java */
/* loaded from: classes.dex */
public class b {

    /* compiled from: DownloadServiceHelper.java */
    /* loaded from: classes.dex */
    class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f17180a;

        a(Context context) {
            this.f17180a = context;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            this.f17180a.sendBroadcast(new Intent(f1.a.f65486l));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01e9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(android.content.Context r9, com.github.snowdream.android.app.downloader.DownloadTask r10) {
        /*
            Method dump skipped, instructions count: 517
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.common.servcie.b.a(android.content.Context, com.github.snowdream.android.app.downloader.DownloadTask):boolean");
    }

    public static void b(Context context, DownloadTask downloadTask, Event event) {
        int i2;
        if (APKUtils.E(downloadTask)) {
            i2 = 1;
        } else {
            i2 = APKUtils.I(downloadTask) ? 2 : 0;
        }
        if (event.name().equals(Event.gameDownloadCompleted.name())) {
            if (downloadTask.getKeyword() != null && downloadTask.getKeyword().equals(Where.article.name())) {
                p.l(context).E0(downloadTask.getCrc_link_type_val(), downloadTask.getKeyword(), downloadTask.getDuration(), downloadTask.getInterrupt(), AccountUtil_.getInstance_(context).getUid(), downloadTask.getExt1(), downloadTask.get_from(), downloadTask.get_from_type(), i2);
            } else {
                p.l(context).D0(downloadTask.getCrc_link_type_val(), downloadTask.getKeyword(), downloadTask.getDuration(), downloadTask.getInterrupt(), AccountUtil_.getInstance_(context).getUid(), downloadTask.get_from(), downloadTask.get_from_type(), i2);
            }
        } else if (event.name().equals(Event.gameDownload.name())) {
            if (downloadTask.get_from_type() != 1) {
                String name = String.valueOf(downloadTask.get_from()).startsWith("20") ? ExtFrom.home.name() : "";
                if (downloadTask.getKeyword() != null && downloadTask.getKeyword().equals(Where.article.name())) {
                    p.l(context).C0(downloadTask.getCrc_link_type_val(), downloadTask.getKeyword(), downloadTask.getDuration(), downloadTask.getInterrupt(), AccountUtil_.getInstance_(context).getUid(), downloadTask.getExt1(), 0L, downloadTask.get_from(), downloadTask.get_from_type(), downloadTask.getExt(), i2, name);
                    return;
                } else {
                    p.l(context).A0(downloadTask.getCrc_link_type_val(), downloadTask.getKeyword(), downloadTask.getDuration(), downloadTask.getInterrupt(), AccountUtil_.getInstance_(context).getUid(), 0L, downloadTask.get_from(), downloadTask.get_from_type(), downloadTask.getExt(), i2, name);
                    return;
                }
            }
            f.G().Z(downloadTask.getCrc_link_type_val());
        } else if (event.name().equals(Event.downloadPlugCompleted.name())) {
            p l4 = p.l(context);
            String romType = downloadTask.getRomType();
            l4.d0(romType, downloadTask.getVer() + "_" + downloadTask.getVer_name(), AccountUtil_.getInstance_(context).getUid());
        } else if (event.name().equals(Event.installAndroidCompleted.name())) {
            if (downloadTask.get_from_type() != 1) {
                p.l(context).j1(downloadTask.getCrc_link_type_val(), AccountUtil_.getInstance_(context).getUid(), i2);
                if (downloadTask.getFileType().equals(Dtype.chajian.name())) {
                    p l5 = p.l(context);
                    String plugin_num = downloadTask.getPlugin_num();
                    l5.k1(plugin_num, downloadTask.getVer() + "_" + downloadTask.getVer_name(), AccountUtil_.getInstance_(context).getUid());
                    return;
                }
                return;
            }
            f.G().Z(downloadTask.getCrc_link_type_val());
        } else if (event.name().equals(Event.gameRemove.name())) {
            p.l(context).Z0(downloadTask.getCrc_link_type_val(), AccountUtil_.getInstance_(context).getUid());
        } else if (event.name().equals(Event.gameRequest.name())) {
            if (d2.h(downloadTask.getStarNumber())) {
                if (downloadTask.get_from() == 1) {
                    p l6 = p.l(context);
                    String crc_link_type_val = downloadTask.getCrc_link_type_val();
                    int i4 = downloadTask.get_from();
                    String keyword = downloadTask.getKeyword();
                    String uid = AccountUtil_.getInstance_(context).getUid();
                    l6.c1(crc_link_type_val, i4, keyword, uid, downloadTask.get_from_type() + "", i2);
                } else {
                    p l7 = p.l(context);
                    String crc_link_type_val2 = downloadTask.getCrc_link_type_val();
                    int i5 = downloadTask.get_from();
                    String keyword2 = downloadTask.getKeyword();
                    String uid2 = AccountUtil_.getInstance_(context).getUid();
                    l7.c1(crc_link_type_val2, i5, keyword2, uid2, downloadTask.get_from_type() + "", i2);
                }
                downloadTask.setStarNumber("downloadRequest");
                f.G().update(downloadTask);
            }
        } else if (event.name().equals(Event.startDownloadPlug.name())) {
            p l8 = p.l(context);
            String romType2 = downloadTask.getRomType();
            l8.U1(romType2, downloadTask.getVer() + "_" + downloadTask.getVer_name(), AccountUtil_.getInstance_(context).getUid());
        } else if (event.name().equals(Event.downloadStop.name())) {
            p.l(context).e0(downloadTask.getCrc_link_type_val(), AccountUtil_.getInstance_(context).getUid());
        }
    }
}
