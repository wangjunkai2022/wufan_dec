package com.php25.PDownload;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import com.MApplication;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.b1;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.u;
import com.join.mgps.activity.GprsNoticeDialogAlphActivity_;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.TipNew;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.event.i;
import com.join.mgps.service.CommonService_;
import java.io.File;
import java.util.ArrayList;
/* compiled from: DownloadTool.java */
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static final String f56250a = "com.php25.PDownload.d";

    /* compiled from: DownloadTool.java */
    /* loaded from: classes4.dex */
    class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f56251a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f56252b;

        a(DownloadTask downloadTask, Context context) {
            this.f56251a = downloadTask;
            this.f56252b = context;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException e4) {
                e4.printStackTrace();
            }
            d.c(this.f56251a, this.f56252b);
        }
    }

    public static void a(DownloadTask downloadTask) {
        try {
            if (!g(MApplication.f9223q)) {
                UtilsMy.a3(MApplication.f9223q);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        UtilsMy.R2(MApplication.f9223q, downloadTask, 7);
        org.greenrobot.eventbus.c.f().o(new i(downloadTask, 16));
    }

    public static void b(DownloadTask downloadTask) {
        org.greenrobot.eventbus.c.f().o(new i(downloadTask, 17));
    }

    public static void c(DownloadTask downloadTask, Context context) {
        if (d2.h(u.f27845d) || u.f27845d.equals(Environment.getExternalStorageDirectory().getAbsolutePath())) {
            u.e(context);
        }
        TipNew sp_tag_info = downloadTask.getSp_tag_info();
        if (sp_tag_info != null && sp_tag_info.getCoin() != null) {
            ((CommonService_.u1) CommonService_.d2(context).extra("checkcoin", downloadTask)).a();
        } else {
            e(downloadTask, context);
        }
    }

    public static void d(DownloadTask downloadTask, Context context) {
        new a(downloadTask, context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0113, code lost:
        r6.setRomType(com.join.mgps.enums.Dtype.androidobbdata.name());
     */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void e(com.github.snowdream.android.app.downloader.DownloadTask r6, android.content.Context r7) {
        /*
            Method dump skipped, instructions count: 519
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.php25.PDownload.d.e(com.github.snowdream.android.app.downloader.DownloadTask, android.content.Context):void");
    }

    public static void f(DownloadTask downloadTask, Context context) {
        if (!g(context)) {
            UtilsMy.a3(context);
        }
        org.greenrobot.eventbus.c.f().o(new i(downloadTask, 14));
    }

    public static boolean g(Context context) {
        if (b1.b(context) < 26 || Build.VERSION.SDK_INT < 26) {
            ArrayList arrayList = (ArrayList) ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningServices(100);
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                if (((ActivityManager.RunningServiceInfo) arrayList.get(i2)).service.getClassName().toString().equals("com.join.android.app.common.servcie.DownloadService_")) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public static void h(DownloadTask downloadTask) {
        try {
            if (!g(MApplication.f9223q)) {
                UtilsMy.a3(MApplication.f9223q);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        org.greenrobot.eventbus.c.f().o(new i(downloadTask, 15));
    }

    public static double i(String str, long j4) {
        File file = new File(str);
        if (!file.exists() || j4 == 0) {
            return 0.0d;
        }
        return (file.length() * 100) / j4;
    }

    private static void j(DownloadTask downloadTask, String str, Context context, EMUApkTable eMUApkTable) {
        ((GprsNoticeDialogAlphActivity_.c) GprsNoticeDialogAlphActivity_.G0(context).b(downloadTask).flags(268435456)).d(str).a(eMUApkTable).start();
    }

    public static void k(Context context, DownloadTask downloadTask) {
        if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.apk.name())) {
            com.join.android.app.common.servcie.a.e().r(context, downloadTask, true);
        } else if (downloadTask.getFileType() != null && downloadTask.getDown_type() == 2 && downloadTask.getFileType().equals(Dtype.chajian.name())) {
            com.join.android.app.common.servcie.a.e().q(context, downloadTask);
        } else if (ConstantIntEnum.PS2.value() == Integer.parseInt(downloadTask.getPlugin_num())) {
            com.join.android.app.common.servcie.a.e().q(context, downloadTask);
        } else {
            com.join.android.app.common.servcie.a.e().r(context, downloadTask, false);
        }
    }
}
