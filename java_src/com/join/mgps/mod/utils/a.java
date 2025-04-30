package com.join.mgps.mod.utils;

import android.content.Context;
import android.os.Looper;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.g0;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.u;
import com.join.mgps.db.tables.DownloadHistoryTable;
import com.join.mgps.enums.Dtype;
import com.join.mgps.event.l;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.va.overmind.f;
import com.papa.sim.statistic.Event;
import com.xinzhu.overmind.entity.pm.InstallResult;
import java.io.File;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import n1.k;
/* compiled from: ApkInstaller.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static a f51052b;

    /* renamed from: a  reason: collision with root package name */
    ExecutorService f51053a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ApkInstaller.java */
    /* renamed from: com.join.mgps.mod.utils.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class RunnableC0218a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        DownloadTask f51054a;

        /* renamed from: b  reason: collision with root package name */
        boolean f51055b;

        /* renamed from: c  reason: collision with root package name */
        Context f51056c;

        public RunnableC0218a(Context context, DownloadTask downloadTask, boolean z3) {
            this.f51056c = context;
            this.f51054a = downloadTask;
            this.f51055b = z3;
        }

        private void a(DownloadTask downloadTask) {
            if (downloadTask.getFileType().equals(Dtype.MOD.name())) {
                StringBuilder sb = new StringBuilder();
                sb.append(u.f27857p);
                String str = File.separator;
                sb.append(str);
                sb.append(downloadTask.getPackageName());
                File file = new File(sb.toString());
                if (file.exists()) {
                    File file2 = new File(f.f52369d.a0() + str + "data" + str + downloadTask.getPackageName());
                    if (!file2.exists()) {
                        file2.mkdirs();
                    }
                    g0.d(file.getPath(), file2.getPath());
                }
            }
        }

        private void b(DownloadTask downloadTask) {
            if (downloadTask.getFileType().equals(Dtype.MOD.name())) {
                StringBuilder sb = new StringBuilder();
                sb.append(u.f27856o);
                String str = File.separator;
                sb.append(str);
                sb.append(downloadTask.getPackageName());
                File file = new File(sb.toString());
                if (file.exists()) {
                    File file2 = new File(f.f52369d.a0() + str + "obb" + str + downloadTask.getPackageName());
                    if (!file2.exists()) {
                        file2.mkdirs();
                    }
                    g0.d(file.getPath(), file2.getPath());
                }
            }
        }

        private void c(Context context, DownloadTask downloadTask) {
            downloadTask.setStatus(11);
            g1.f.G().f0(downloadTask, downloadTask.getStatus());
            org.greenrobot.eventbus.c.f().o(new l(downloadTask, 11));
        }

        private void d(Context context, DownloadTask downloadTask) {
            downloadTask.setStatus(5);
            if (downloadTask.getRomType() != null && !downloadTask.getFileType().equals(Dtype.chajian.name())) {
                DownloadHistoryTable p3 = k.n().p(downloadTask.getCrc_link_type_val());
                if (p3 != null) {
                    p3.setCreate_time(System.currentTimeMillis());
                } else {
                    p3 = new DownloadHistoryTable();
                    p3.setCrc_link_type_val(downloadTask.getCrc_link_type_val());
                    p3.setCreate_time(System.currentTimeMillis());
                }
                k.n().m(p3);
                UtilsMy.b2(context, downloadTask.getCrc_link_type_val());
                new PrefDef_(context).lastInstallApp().g("");
            } else {
                try {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(context).k(context, downloadTask.getPackageName());
                    if (k4 != null) {
                        downloadTask.setVer(k4.d() + "");
                        downloadTask.setVer_name(k4.e());
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            try {
                DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                if (f4 != null) {
                    f4.setStatus(5);
                }
            } catch (Exception e5) {
                e5.printStackTrace();
            }
            g1.f.G().f0(downloadTask, downloadTask.getStatus());
            downloadTask.setStatus(5);
            com.join.android.app.common.servcie.b.b(context, downloadTask, Event.installAndroidCompleted);
            org.greenrobot.eventbus.c.f().o(new l(downloadTask, 5));
            APKUtils.h(downloadTask);
        }

        @Override // java.lang.Runnable
        public void run() {
            InstallResult z3;
            DownloadTask downloadTask = this.f51054a;
            if (downloadTask != null) {
                try {
                    try {
                        downloadTask.setStatus(48);
                        g1.f.G().f0(this.f51054a, 48);
                        org.greenrobot.eventbus.c.f().o(new l(this.f51054a, 48));
                        if (this.f51055b) {
                            if (this.f51054a.getRomType().equals(Dtype.androidobb.name())) {
                                b(this.f51054a);
                            } else if (this.f51054a.getRomType().equals(Dtype.androiddata.name())) {
                                a(this.f51054a);
                            } else if (this.f51054a.getRomType().equals(Dtype.androidobbdata.name())) {
                                b(this.f51054a);
                                a(this.f51054a);
                            }
                            z3 = com.join.mgps.va.overmind.e.p().z(this.f51054a.getPackageName());
                        } else {
                            z3 = com.join.mgps.va.overmind.e.p().z(this.f51054a.getGameZipPath());
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                        c(this.f51056c, this.f51054a);
                        Looper.prepare();
                    }
                    if (z3 != null && z3.f64296a) {
                        d(this.f51056c, this.f51054a);
                        return;
                    }
                    c(this.f51056c, this.f51054a);
                    Looper.prepare();
                    if (z3 != null) {
                        String str = z3.f64298c;
                        if (d2.i(str)) {
                            i2 a4 = i2.a(this.f51056c);
                            a4.b("安装失败:" + str);
                        } else {
                            i2.a(this.f51056c).b("安装失败");
                        }
                        Looper.loop();
                    }
                    i2.a(this.f51056c).b("安装失败");
                    Looper.loop();
                } catch (Throwable th) {
                    c(this.f51056c, this.f51054a);
                    Looper.prepare();
                    i2.a(this.f51056c).b("安装失败");
                    Looper.loop();
                    throw th;
                }
            }
        }
    }

    private a() {
        ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(3);
        this.f51053a = newFixedThreadPool;
        if (newFixedThreadPool == null || newFixedThreadPool.isTerminated() || this.f51053a.isShutdown()) {
            this.f51053a = Executors.newFixedThreadPool(3);
        }
    }

    public static a a() {
        if (f51052b == null) {
            synchronized (a.class) {
                f51052b = new a();
            }
        }
        return f51052b;
    }

    public void b(Context context, DownloadTask downloadTask, boolean z3) {
        if (downloadTask != null) {
            this.f51053a.submit(new RunnableC0218a(context, downloadTask, z3));
        }
    }
}
