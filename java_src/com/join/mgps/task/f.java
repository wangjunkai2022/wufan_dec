package com.join.mgps.task;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.s2;
import com.join.mgps.Util.u;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.event.j;
import com.join.mgps.event.l;
import java.io.File;
import n1.p;
/* compiled from: UNPs2ZIPThread.java */
/* loaded from: classes4.dex */
public class f extends Thread implements c {

    /* renamed from: g  reason: collision with root package name */
    private static final String f52290g = f.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private Context f52291a;

    /* renamed from: b  reason: collision with root package name */
    private DownloadTask f52292b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f52293c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f52294d;

    /* renamed from: e  reason: collision with root package name */
    a f52295e;

    /* renamed from: f  reason: collision with root package name */
    private String f52296f;

    public f(DownloadTask downloadTask, Context context, String str) {
        this.f52293c = true;
        this.f52294d = false;
        this.f52295e = null;
        this.f52292b = downloadTask;
        this.f52291a = context;
        this.f52296f = str;
    }

    @Override // com.join.mgps.task.c
    public void a() {
        this.f52293c = false;
        this.f52295e.a(false);
        DownloadTask downloadTask = this.f52292b;
        if (downloadTask != null) {
            downloadTask.set_from_type(0);
        }
    }

    @Override // com.join.mgps.task.c
    public boolean isRunning() {
        return this.f52293c;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        int i2;
        File file;
        String str;
        long j4;
        File[] listFiles;
        super.run();
        EMUApkTable n4 = p.o().n(this.f52292b.getPlugin_num());
        String apkPath = n4.getApkPath();
        if (!TextUtils.isEmpty(apkPath) && new File(apkPath).exists()) {
            com.join.android.app.common.utils.h.delete(n4.getTag_id());
        }
        if (APKUtils.E(this.f52292b)) {
            i2 = 1;
        } else {
            i2 = APKUtils.I(this.f52292b) ? 2 : 0;
        }
        try {
            try {
                file = new File(this.f52292b.getPath());
                try {
                    com.papa.sim.statistic.p.l(this.f52291a).f1(this.f52292b.getCrc_link_type_val(), AccountUtil_.getInstance_(this.f52291a).getUid(), i2);
                    com.papa.sim.statistic.p.l(this.f52291a).k1(this.f52292b.getPlugin_num(), this.f52292b.getVer() + "_" + this.f52292b.getVer_name(), AccountUtil_.getInstance_(this.f52291a).getUid());
                    str = this.f52296f + net.lingala.zip4j.util.e.F0 + this.f52292b.getVer() + "_" + this.f52292b.getVer_name();
                    if (!d2.h(str)) {
                        File file2 = new File(str);
                        if (!file2.exists()) {
                            file2.mkdirs();
                        }
                    }
                    if (file.exists()) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("zip len=");
                        sb.append(file.length());
                        j4 = System.currentTimeMillis();
                        if (this.f52292b.getSize() >= u.f27844c) {
                            a aVar = new a(file, new File(str));
                            this.f52295e = aVar;
                            aVar.start();
                        } else {
                            this.f52293c = true;
                        }
                        s2.g(file, str);
                    } else {
                        j4 = -1;
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    a aVar2 = this.f52295e;
                    if (aVar2 != null) {
                        aVar2.a(false);
                    }
                    if (!UtilsMy.J1(this.f52291a, this.f52292b, false)) {
                        this.f52291a.sendBroadcast(new Intent(f1.a.f65496q));
                        com.papa.sim.statistic.p.l(this.f52291a).H1("zip...insufficient storage. gameId=" + this.f52292b.getCrc_link_type_val());
                    } else {
                        try {
                            com.papa.sim.statistic.p.l(this.f52291a).H1("zip error[gameId=" + this.f52292b.getCrc_link_type_val() + ",size=" + file.length() + ",brand=" + Build.BRAND + ",model=" + Build.MODEL + "]::" + com.join.mgps.Util.h.c(e4));
                        } catch (Exception unused) {
                        }
                    }
                    com.join.android.app.common.servcie.a.e().o(this.f52292b);
                }
            } finally {
                this.f52292b.set_from_type(0);
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        if (this.f52293c) {
            a aVar3 = this.f52295e;
            if (aVar3 != null) {
                aVar3.a(false);
            }
            if (str != null && !"".equals(str) && new File(str).exists()) {
                this.f52292b.setProgress(100L);
                UtilsMy.B3(this.f52292b);
                if (j4 != -1) {
                    this.f52292b.setZipCost(file.length() / (System.currentTimeMillis() - j4));
                }
                for (File file3 : new File(str).listFiles()) {
                    if (file3.getName().endsWith(".BIN")) {
                        this.f52292b.setResource_path(file3.getAbsolutePath());
                    }
                    if (file3.getName().endsWith(".apk")) {
                        this.f52292b.setPath(file3.getAbsolutePath());
                        this.f52292b.setGameZipPath(file3.getAbsolutePath());
                    }
                }
                g1.f.G().m(this.f52292b);
                Intent intent = new Intent();
                intent.setAction(f1.a.f65490n);
                intent.putExtra("apkpath", this.f52292b.getGameZipPath());
                this.f52291a.sendBroadcast(intent);
                this.f52292b.setStatus(11);
                g1.f.G().g0(this.f52292b, 11, 100L);
                com.join.android.app.common.servcie.a.e().k(this.f52292b.getCrc_link_type_val());
                UtilsMy.R2(this.f52291a, this.f52292b, 11);
                org.greenrobot.eventbus.c.f().o(new j(this.f52292b.getCrc_link_type_val(), 38));
                org.greenrobot.eventbus.c.f().o(new l(this.f52292b, 11));
                com.join.android.app.common.servcie.a.e().l(this.f52292b.getCrc_link_type_val());
                try {
                    for (DownloadTask downloadTask : g1.f.G().d()) {
                        String plugin_num = this.f52292b.getPlugin_num();
                        if (downloadTask.getPlugin_num().equals(plugin_num) && !plugin_num.equals(downloadTask.getCrc_link_type_val()) && downloadTask.getStatus() == 5) {
                            break;
                        }
                    }
                } catch (Exception e6) {
                    e6.printStackTrace();
                }
                return;
            }
            this.f52292b.setStatus(13);
            com.join.android.app.common.servcie.a.e().o(this.f52292b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UNPs2ZIPThread.java */
    /* loaded from: classes4.dex */
    public class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        private boolean f52297a = true;

        /* renamed from: b  reason: collision with root package name */
        File f52298b;

        /* renamed from: c  reason: collision with root package name */
        File f52299c;

        /* renamed from: d  reason: collision with root package name */
        File f52300d;

        public a(File file, File file2) {
            this.f52300d = null;
            this.f52298b = file;
            this.f52300d = file2;
        }

        public void a(boolean z3) {
            this.f52297a = z3;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            while (this.f52297a) {
                try {
                    long n12 = UtilsMy.n1(this.f52298b);
                    File file = this.f52300d;
                    long length = file != null ? file.length() : 0L;
                    StringBuilder sb = new StringBuilder();
                    sb.append("zip currentSize =");
                    sb.append(n12);
                    sb.append("   surrentApk= ");
                    sb.append(length);
                    long size = f.this.f52292b.getSize() * 2;
                    if (size == 0) {
                        size = 1;
                    }
                    f.this.f52292b.setProgress(((n12 + length) * 100) / size);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("totalSize=");
                    sb2.append(size);
                    sb2.append(";zip progress =");
                    sb2.append(f.this.f52292b.getProgress());
                    UtilsMy.B3(f.this.f52292b);
                    Thread.sleep(1000L);
                } catch (InterruptedException e4) {
                    e4.printStackTrace();
                    f.this.a();
                    return;
                }
            }
        }

        public a(File file, File file2, File file3) {
            this.f52300d = null;
            this.f52298b = file;
            this.f52299c = file2;
            this.f52300d = file3;
        }
    }

    public f(DownloadTask downloadTask, Context context, boolean z3) {
        this.f52293c = true;
        this.f52294d = false;
        this.f52295e = null;
        this.f52292b = downloadTask;
        this.f52291a = context;
        this.f52294d = z3;
    }
}
