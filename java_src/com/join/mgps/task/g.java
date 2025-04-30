package com.join.mgps.task;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.f0;
import com.join.mgps.Util.s2;
import com.join.mgps.Util.u;
import com.join.mgps.db.tables.EMUApkArenaTable;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.event.j;
import com.join.mgps.event.l;
import java.io.File;
import java.io.IOException;
import n1.o;
import n1.p;
/* compiled from: UNZIPForPluginThread.java */
/* loaded from: classes4.dex */
public class g extends Thread implements c {

    /* renamed from: b  reason: collision with root package name */
    private Context f52303b;

    /* renamed from: c  reason: collision with root package name */
    private DownloadTask f52304c;

    /* renamed from: f  reason: collision with root package name */
    private String f52307f;

    /* renamed from: a  reason: collision with root package name */
    private String f52302a = "UNZIPForPluginThread";

    /* renamed from: d  reason: collision with root package name */
    public boolean f52305d = true;

    /* renamed from: e  reason: collision with root package name */
    a f52306e = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UNZIPForPluginThread.java */
    /* loaded from: classes4.dex */
    public class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        private boolean f52308a = true;

        /* renamed from: b  reason: collision with root package name */
        File f52309b;

        /* renamed from: c  reason: collision with root package name */
        File f52310c;

        public a(File file, File file2) {
            this.f52310c = null;
            this.f52309b = file;
            this.f52310c = file2;
        }

        public void a(boolean z3) {
            this.f52308a = z3;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            while (this.f52308a) {
                try {
                    long n12 = UtilsMy.n1(this.f52309b);
                    File file = this.f52310c;
                    long length = file != null ? file.length() : 0L;
                    StringBuilder sb = new StringBuilder();
                    sb.append("zip currentSize =");
                    sb.append(n12);
                    sb.append("   surrentApk= ");
                    sb.append(length);
                    long size = g.this.f52304c.getSize() * 2;
                    if (size == 0) {
                        size = 1;
                    }
                    g.this.f52304c.setProgress(((n12 + length) * 100) / size);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("totalSize=");
                    sb2.append(size);
                    sb2.append(";zip progress =");
                    sb2.append(g.this.f52304c.getProgress());
                    UtilsMy.B3(g.this.f52304c);
                    Thread.sleep(1000L);
                } catch (InterruptedException e4) {
                    e4.printStackTrace();
                    g.this.a();
                    return;
                }
            }
        }
    }

    public g(DownloadTask downloadTask, Context context) {
        this.f52304c = downloadTask;
        this.f52303b = context;
    }

    @Override // com.join.mgps.task.c
    public void a() {
        this.f52305d = false;
        this.f52306e.a(false);
        DownloadTask downloadTask = this.f52304c;
        if (downloadTask != null) {
            downloadTask.set_from_type(0);
        }
    }

    @Override // java.lang.Thread
    public void interrupt() {
        super.interrupt();
        DownloadTask downloadTask = this.f52304c;
        if (downloadTask != null) {
            downloadTask.set_from_type(0);
        }
    }

    @Override // com.join.mgps.task.c
    public boolean isRunning() {
        return this.f52305d;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        int i2;
        File file;
        String str;
        long j4;
        super.run();
        EMUApkTable n4 = p.o().n(this.f52304c.getPlugin_num());
        String apkPath = n4.getApkPath();
        if (!TextUtils.isEmpty(apkPath) && new File(apkPath).exists()) {
            com.join.android.app.common.utils.h.delete(n4.getTag_id());
        }
        if (APKUtils.E(this.f52304c)) {
            i2 = 1;
        } else {
            i2 = APKUtils.I(this.f52304c) ? 2 : 0;
        }
        try {
            try {
                file = new File(this.f52304c.getPath());
                try {
                    com.papa.sim.statistic.p.l(this.f52303b).f1(this.f52304c.getCrc_link_type_val(), AccountUtil_.getInstance_(this.f52303b).getUid(), i2);
                    com.papa.sim.statistic.p.l(this.f52303b).k1(this.f52304c.getPlugin_num(), this.f52304c.getVer() + "_" + this.f52304c.getVer_name(), AccountUtil_.getInstance_(this.f52303b).getUid());
                    str = file.getParent() + net.lingala.zip4j.util.e.F0 + this.f52304c.getVer() + "_" + this.f52304c.getVer_name();
                    if (file.exists()) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("zip len=");
                        sb.append(file.length());
                        j4 = System.currentTimeMillis();
                        if (this.f52304c.getSize() >= u.f27844c) {
                            a aVar = new a(file, new File(str));
                            this.f52306e = aVar;
                            aVar.start();
                        } else {
                            this.f52305d = true;
                        }
                        s2.g(file, str);
                    } else {
                        j4 = -1;
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    a aVar2 = this.f52306e;
                    if (aVar2 != null) {
                        aVar2.a(false);
                    }
                    if (!UtilsMy.J1(this.f52303b, this.f52304c, false)) {
                        this.f52303b.sendBroadcast(new Intent(f1.a.f65496q));
                        com.papa.sim.statistic.p.l(this.f52303b).H1("zip...insufficient storage. gameId=" + this.f52304c.getCrc_link_type_val());
                    } else {
                        try {
                            com.papa.sim.statistic.p.l(this.f52303b).H1("zip error[gameId=" + this.f52304c.getCrc_link_type_val() + ",size=" + file.length() + ",brand=" + Build.BRAND + ",model=" + Build.MODEL + "]::" + com.join.mgps.Util.h.c(e4));
                        } catch (Exception unused) {
                        }
                    }
                    com.join.android.app.common.servcie.a.e().o(this.f52304c);
                }
            } finally {
                this.f52304c.set_from_type(0);
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        if (this.f52305d) {
            a aVar3 = this.f52306e;
            if (aVar3 != null) {
                aVar3.a(false);
            }
            if (str != null && !"".equals(str) && new File(str).exists()) {
                this.f52304c.setProgress(100L);
                UtilsMy.B3(this.f52304c);
                if (j4 != -1) {
                    this.f52304c.setZipCost(file.length() / (System.currentTimeMillis() - j4));
                }
                String h4 = com.join.android.app.common.utils.h.h(this.f52304c.getPlugin_num(), new File(str));
                n4.setApkPath(h4);
                p.o().update(n4);
                com.join.android.app.common.utils.h.F(n4);
                EMUApkTable n5 = o.o().n(this.f52304c.getPlugin_num());
                if (n5 != null) {
                    EMUApkArenaTable g4 = o.o().g(Integer.valueOf(n5.getId()));
                    g4.setApkPath(h4);
                    o.o().m(g4);
                    com.join.android.app.common.utils.h.E(g4);
                }
                UtilsMy.delete(file);
                this.f52304c.setPath(str);
                this.f52304c.setGameZipPath(str);
                g1.f.G().m(this.f52304c);
                this.f52304c.setStatus(5);
                g1.f.G().g0(this.f52304c, 5, 100L);
                com.join.android.app.common.servcie.a.e().k(this.f52304c.getCrc_link_type_val());
                UtilsMy.R2(this.f52303b, this.f52304c, 5);
                org.greenrobot.eventbus.c.f().o(new j(this.f52304c.getCrc_link_type_val(), 38));
                org.greenrobot.eventbus.c.f().o(new l(this.f52304c, 5));
                com.join.android.app.common.servcie.a.e().l(this.f52304c.getCrc_link_type_val());
                try {
                    for (DownloadTask downloadTask : g1.f.G().d()) {
                        String plugin_num = this.f52304c.getPlugin_num();
                        if (downloadTask.getPlugin_num().equals(plugin_num) && !plugin_num.equals(downloadTask.getCrc_link_type_val()) && downloadTask.getStatus() == 5) {
                            break;
                        }
                    }
                } catch (Exception e6) {
                    e6.printStackTrace();
                }
                DownloadTask downloadTask2 = this.f52304c;
                if (downloadTask2 != null && downloadTask2.getGameZipPath() != null) {
                    try {
                        f0.A(".downloadTask_chajian", new File(this.f52304c.getGameZipPath()).getParent(), JsonMapper.getInstance().toJson(this.f52304c));
                    } catch (IOException e7) {
                        e7.printStackTrace();
                    }
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("mDownloadTask.fina=");
                sb2.append(this.f52304c.getGameZipPath());
                return;
            }
            this.f52304c.setStatus(13);
            com.join.android.app.common.servcie.a.e().o(this.f52304c);
        }
    }

    public g(DownloadTask downloadTask, Context context, String str) {
        this.f52304c = downloadTask;
        this.f52303b = context;
        this.f52307f = str;
    }
}
