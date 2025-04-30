package com.join.mgps.task;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import com.MApplication;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.f0;
import com.join.mgps.Util.s;
import com.join.mgps.Util.s2;
import com.join.mgps.Util.u;
import com.join.mgps.db.tables.DownloadHistoryTable;
import com.join.mgps.db.tables.DownlodTaskCopyTable;
import com.join.mgps.db.tables.EMUUpdateTable;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.UNZipPathBackBean;
import com.join.mgps.enums.Dtype;
import com.join.mgps.event.j;
import com.join.mgps.event.l;
import com.papa.sim.statistic.Where;
import com.papa.sim.statistic.o;
import com.papa.sim.statistic.p;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import n1.k;
import n1.n;
import n1.q;
import tv.danmaku.ijk.media.player.IjkMediaMeta;
/* compiled from: UNZIPThread.java */
/* loaded from: classes4.dex */
public class h extends Thread implements c {

    /* renamed from: a  reason: collision with root package name */
    private Context f52312a;

    /* renamed from: b  reason: collision with root package name */
    private DownloadTask f52313b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f52314c = true;

    /* renamed from: d  reason: collision with root package name */
    a f52315d = null;

    /* renamed from: e  reason: collision with root package name */
    private String f52316e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UNZIPThread.java */
    /* loaded from: classes4.dex */
    public class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        private boolean f52317a = true;

        /* renamed from: b  reason: collision with root package name */
        File f52318b;

        public a(File file) {
            this.f52318b = file;
        }

        public void a(boolean z3) {
            this.f52317a = z3;
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x00a0 A[Catch: all -> 0x00c8, InterruptedException -> 0x00ca, TryCatch #1 {InterruptedException -> 0x00ca, blocks: (B:3:0x0003, B:5:0x0007, B:8:0x0010, B:11:0x0015, B:22:0x0052, B:24:0x006c, B:26:0x00a0, B:27:0x00c1, B:23:0x0061, B:16:0x0044), top: B:37:0x0003, outer: #0 }] */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r8 = this;
                super.run()
            L3:
                boolean r0 = r8.f52317a     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                if (r0 == 0) goto Ld3
                com.join.mgps.task.h r0 = com.join.mgps.task.h.this     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                com.github.snowdream.android.app.downloader.DownloadTask r0 = com.join.mgps.task.h.b(r0)     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                if (r0 != 0) goto L10
                return
            L10:
                java.io.File r0 = r8.f52318b     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                if (r0 != 0) goto L15
                goto L3
            L15:
                long r0 = com.join.mgps.Util.UtilsMy.n1(r0)     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                r2.<init>()     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                java.lang.String r3 = "zip currentSize ="
                r2.append(r3)     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                r2.append(r0)     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                r2 = 2
                com.join.mgps.task.h r4 = com.join.mgps.task.h.this     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                com.github.snowdream.android.app.downloader.DownloadTask r4 = com.join.mgps.task.h.b(r4)     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                long r4 = r4.getSize()     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                long r4 = r4 * r2
                com.join.mgps.task.h r2 = com.join.mgps.task.h.this     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> Lc8
                com.github.snowdream.android.app.downloader.DownloadTask r2 = com.join.mgps.task.h.b(r2)     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> Lc8
                java.lang.String r2 = r2.getUnzip_size()     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> Lc8
                long r4 = java.lang.Long.parseLong(r2)     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> Lc8
                goto L47
            L43:
                r2 = move-exception
                r2.printStackTrace()     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
            L47:
                r2 = 0
                int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
                if (r6 == 0) goto L61
                int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r6 != 0) goto L52
                goto L61
            L52:
                com.join.mgps.task.h r2 = com.join.mgps.task.h.this     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                com.github.snowdream.android.app.downloader.DownloadTask r2 = com.join.mgps.task.h.b(r2)     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                r6 = 100
                long r0 = r0 * r6
                long r0 = r0 / r4
                r2.setProgress(r0)     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                goto L6c
            L61:
                com.join.mgps.task.h r0 = com.join.mgps.task.h.this     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                com.github.snowdream.android.app.downloader.DownloadTask r0 = com.join.mgps.task.h.b(r0)     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                r1 = 1
                r0.setProgress(r1)     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
            L6c:
                java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                r0.<init>()     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                java.lang.String r1 = "totalSize="
                r0.append(r1)     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                r0.append(r4)     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                java.lang.String r1 = ";zip progress ="
                r0.append(r1)     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                com.join.mgps.task.h r1 = com.join.mgps.task.h.this     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                com.github.snowdream.android.app.downloader.DownloadTask r1 = com.join.mgps.task.h.b(r1)     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                long r1 = r1.getProgress()     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                r0.append(r1)     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                com.join.mgps.task.h r0 = com.join.mgps.task.h.this     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                com.github.snowdream.android.app.downloader.DownloadTask r0 = com.join.mgps.task.h.b(r0)     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                com.join.mgps.Util.UtilsMy.B3(r0)     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                com.join.mgps.task.h r0 = com.join.mgps.task.h.this     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                java.lang.String r0 = com.join.mgps.task.h.c(r0)     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                boolean r0 = com.join.mgps.Util.d2.i(r0)     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                if (r0 == 0) goto Lc1
                org.greenrobot.eventbus.c r0 = org.greenrobot.eventbus.c.f()     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                com.join.mgps.event.s r1 = new com.join.mgps.event.s     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                r2 = 6
                com.join.mgps.task.h r3 = com.join.mgps.task.h.this     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                com.github.snowdream.android.app.downloader.DownloadTask r3 = com.join.mgps.task.h.b(r3)     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                java.lang.String r3 = r3.getCrc_link_type_val()     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                com.join.mgps.task.h r4 = com.join.mgps.task.h.this     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                com.github.snowdream.android.app.downloader.DownloadTask r4 = com.join.mgps.task.h.b(r4)     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                long r4 = r4.getProgress()     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                r1.<init>(r2, r3, r4)     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                r0.o(r1)     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
            Lc1:
                r0 = 1000(0x3e8, double:4.94E-321)
                java.lang.Thread.sleep(r0)     // Catch: java.lang.Throwable -> Lc8 java.lang.InterruptedException -> Lca
                goto L3
            Lc8:
                r0 = move-exception
                goto Ld4
            Lca:
                r0 = move-exception
                r0.printStackTrace()     // Catch: java.lang.Throwable -> Lc8
                com.join.mgps.task.h r0 = com.join.mgps.task.h.this     // Catch: java.lang.Throwable -> Lc8
                r0.a()     // Catch: java.lang.Throwable -> Lc8
            Ld3:
                return
            Ld4:
                goto Ld6
            Ld5:
                throw r0
            Ld6:
                goto Ld5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.task.h.a.run():void");
        }
    }

    public h(DownloadTask downloadTask, Context context) {
        this.f52313b = downloadTask;
        this.f52312a = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0150  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void e(java.lang.String r17, java.lang.String r18, java.lang.String r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.task.h.e(java.lang.String, java.lang.String, java.lang.String, boolean):void");
    }

    @Override // com.join.mgps.task.c
    public void a() {
        this.f52314c = false;
        this.f52315d.a(false);
        DownloadTask downloadTask = this.f52313b;
        if (downloadTask != null) {
            downloadTask.set_from_type(0);
        }
    }

    boolean d() {
        try {
            DownloadTask downloadTask = this.f52313b;
            if (downloadTask != null && !TextUtils.isEmpty(downloadTask.getResource_url_remote()) && !TextUtils.isEmpty(this.f52313b.getResource_path()) && (this.f52313b.getResource_path().endsWith(".zip") || this.f52313b.getResource_path().endsWith(".zip/"))) {
                File file = new File(this.f52313b.getResource_path());
                if (file.exists()) {
                    return file.isFile();
                }
                return false;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return false;
    }

    @Override // java.lang.Thread
    public void interrupt() {
        super.interrupt();
        DownloadTask downloadTask = this.f52313b;
        if (downloadTask != null) {
            downloadTask.set_from_type(0);
        }
    }

    @Override // com.join.mgps.task.c
    public boolean isRunning() {
        return this.f52314c;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        int i2;
        File file;
        UNZipPathBackBean uNZipPathBackBean;
        long j4;
        File file2;
        ExtBean extBean;
        String c4;
        super.run();
        if (APKUtils.E(this.f52313b)) {
            i2 = 1;
        } else {
            i2 = APKUtils.I(this.f52313b) ? 2 : 0;
        }
        try {
            try {
                file = new File(this.f52313b.getPath());
                try {
                    if (file.exists()) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("zip len=");
                        sb.append(file.length());
                        j4 = System.currentTimeMillis();
                        if (this.f52313b.get_from_type() != 1) {
                            p.l(this.f52312a).f1(this.f52313b.getCrc_link_type_val(), AccountUtil_.getInstance_(this.f52312a).getUid(), i2);
                        }
                        if (this.f52313b.getSize() >= u.f27844c) {
                            if (this.f52313b.getSize() > IjkMediaMeta.AV_CH_WIDE_LEFT) {
                                c4 = s.d(file, file.getParent(), this.f52313b.getPackageName());
                            } else {
                                c4 = s2.c(file, file.getParent(), this.f52313b.getPackageName());
                            }
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("get rom path");
                            sb2.append(c4);
                            a aVar = new a(new File(c4).getParentFile());
                            this.f52315d = aVar;
                            aVar.start();
                        } else {
                            this.f52314c = true;
                        }
                        if (!d2.h(this.f52316e)) {
                            File file3 = new File(this.f52316e);
                            if (!file3.exists()) {
                                file3.mkdirs();
                            }
                            if (this.f52313b.getSize() > IjkMediaMeta.AV_CH_WIDE_LEFT) {
                                uNZipPathBackBean = s.g(this, file, this.f52316e, this.f52313b.getPackageName());
                            } else {
                                uNZipPathBackBean = s2.h(this, file, this.f52316e, this.f52313b.getPackageName());
                            }
                        } else if (this.f52313b.getSize() > IjkMediaMeta.AV_CH_WIDE_LEFT) {
                            uNZipPathBackBean = s.g(this, file, file.getParent(), this.f52313b.getPackageName());
                        } else {
                            uNZipPathBackBean = s2.h(this, file, file.getParent(), this.f52313b.getPackageName());
                        }
                        if (d()) {
                            file2 = new File(this.f52313b.getResource_path());
                            s2.f(file2, file2.getParent(), this.f52313b.getPackageName());
                        } else {
                            file2 = null;
                        }
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("romsPath-");
                        sb3.append(uNZipPathBackBean.getGameZipPath());
                    } else {
                        uNZipPathBackBean = null;
                        j4 = -1;
                        file2 = null;
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    p.l(this.f52312a).Y1(this.f52313b.getCrc_link_type_val(), AccountUtil_.getInstance_(this.f52312a).getUid(), i2);
                    try {
                        p l4 = p.l(this.f52312a);
                        l4.H1("zip error[gameId=" + this.f52313b.getCrc_link_type_val() + ",size=" + file.length() + ",brand=" + Build.BRAND + ",model=" + Build.MODEL + "]::" + com.join.mgps.Util.h.c(e4));
                    } catch (Exception unused) {
                    }
                    a aVar2 = this.f52315d;
                    if (aVar2 != null) {
                        aVar2.a(false);
                    }
                    if (!UtilsMy.J1(this.f52312a, this.f52313b, false)) {
                        this.f52312a.sendBroadcast(new Intent(f1.a.f65496q));
                        p l5 = p.l(this.f52312a);
                        l5.H1("zip...insufficient storage. gameId=" + this.f52313b.getCrc_link_type_val());
                    } else {
                        try {
                            p l6 = p.l(this.f52312a);
                            l6.H1("zip error[gameId=" + this.f52313b.getCrc_link_type_val() + ",size=" + file.length() + ",brand=" + Build.BRAND + ",model=" + Build.MODEL + "]::" + com.join.mgps.Util.h.c(e4));
                        } catch (Exception unused2) {
                        }
                    }
                    com.join.android.app.common.servcie.a.e().o(this.f52313b);
                }
            } catch (Throwable th) {
                this.f52313b.set_from_type(0);
                throw th;
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        if (this.f52314c) {
            a aVar3 = this.f52315d;
            if (aVar3 != null) {
                aVar3.a(false);
            }
            File file4 = (uNZipPathBackBean == null || d2.h(uNZipPathBackBean.getGameZipPath())) ? null : new File(uNZipPathBackBean.getGameZipPath());
            if (uNZipPathBackBean != null && !"".equals(uNZipPathBackBean) && file4 != null && file4.exists()) {
                this.f52313b.setProgress(100L);
                UtilsMy.B3(this.f52313b);
                if (this.f52313b.getDownloadType() != 2) {
                    this.f52313b.setGameZipPath(uNZipPathBackBean.getGameZipPath());
                    this.f52313b.setSource_down_path(uNZipPathBackBean.getSoucePath());
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("romsPath3-");
                    sb4.append(this.f52313b.getGameZipPath());
                }
                if (j4 != -1) {
                    this.f52313b.setZipCost(file.length() / (System.currentTimeMillis() - j4));
                }
                StringBuilder sb5 = new StringBuilder();
                sb5.append("romsPath4-");
                sb5.append(this.f52313b.getGameZipPath());
                StringBuilder sb6 = new StringBuilder();
                sb6.append("file-");
                sb6.append(file.getAbsolutePath());
                UtilsMy.delete(file);
                if (file2 != null) {
                    UtilsMy.delete(file2);
                }
                StringBuilder sb7 = new StringBuilder();
                sb7.append("romsPath5-");
                sb7.append(this.f52313b.getGameZipPath());
                if (this.f52313b.get_from_type() != 1) {
                    if (this.f52313b.getKeyword() != null && this.f52313b.getKeyword().equals(Where.article.name())) {
                        p.l(this.f52312a).B0(this.f52313b.getCrc_link_type_val(), this.f52313b.getKeyword(), this.f52313b.getDuration(), this.f52313b.getInterrupt(), AccountUtil_.getInstance_(this.f52312a).getUid(), this.f52313b.getExt1(), this.f52313b.getZipCost(), this.f52313b.get_from(), this.f52313b.get_from_type(), this.f52313b.getExt(), i2);
                    } else {
                        p.l(this.f52312a).z0(this.f52313b.getCrc_link_type_val(), this.f52313b.getKeyword(), this.f52313b.getDuration(), this.f52313b.getInterrupt(), AccountUtil_.getInstance_(this.f52312a).getUid(), this.f52313b.getZipCost(), this.f52313b.get_from(), this.f52313b.get_from_type(), this.f52313b.getExt(), i2);
                    }
                    String ext = this.f52313b.getExt();
                    if (d2.i(ext) && (extBean = (ExtBean) JsonMapper.getInstance().fromJson(ext, ExtBean.class)) != null) {
                        String recPosition = extBean.getRecPosition();
                        if (d2.i(recPosition)) {
                            e(recPosition, this.f52313b.getCrc_link_type_val(), extBean.getVolcanoOther(), UtilsMy.F1(this.f52313b.getTipBeans()));
                        }
                    }
                }
                StringBuilder sb8 = new StringBuilder();
                sb8.append("romsPath6-");
                sb8.append(this.f52313b.getGameZipPath());
                int downloadType = this.f52313b.getDownloadType();
                if (downloadType == 0 || downloadType == 1) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("crc_sign_id", this.f52313b.getCrc_link_type_val());
                    List<EMUUpdateTable> h4 = q.o().h(hashMap);
                    if (h4 != null && h4.size() > 0) {
                        EMUUpdateTable eMUUpdateTable = h4.get(0);
                        this.f52313b.setCfg_ver(eMUUpdateTable.getCfg_ver());
                        this.f52313b.setCfg_ver_name(eMUUpdateTable.getCfg_ver_name());
                        this.f52313b.setCfg_down_url(eMUUpdateTable.getCfg_down_url());
                    }
                    this.f52313b.setStatus(5);
                    try {
                        this.f52313b.setId(g1.f.G().B(this.f52313b.getCrc_link_type_val()).getId());
                        g1.f.G().update(this.f52313b);
                        StringBuilder sb9 = new StringBuilder();
                        sb9.append("mDownloadTask.romwpath=");
                        sb9.append(this.f52313b.getGameZipPath());
                    } catch (Exception e6) {
                        e6.printStackTrace();
                    }
                } else if (downloadType != 2) {
                    try {
                        g1.f.G().update(this.f52313b);
                    } catch (Exception e7) {
                        e7.printStackTrace();
                    }
                } else {
                    DownlodTaskCopyTable n4 = n.o().n(this.f52313b.getCrc_link_type_val());
                    JsonMapper jsonMapper = JsonMapper.getInstance();
                    if (n4 != null && n4.getDownloadTask() != null) {
                        DownloadTask downloadTask = (DownloadTask) jsonMapper.fromJson(n4.getDownloadTask(), DownloadTask.class);
                        downloadTask.setTipBeans((ArrayList) jsonMapper.fromJson(this.f52313b.getTips(), jsonMapper.createCollectionType(ArrayList.class, TipBean.class)));
                        if (this.f52313b.getId() != 0) {
                            downloadTask.setId(this.f52313b.getId());
                        }
                        HashMap hashMap2 = new HashMap();
                        hashMap2.put("crc_sign_id", this.f52313b.getCrc_link_type_val());
                        List<EMUUpdateTable> h5 = q.o().h(hashMap2);
                        if (h5 != null && h5.size() > 0) {
                            EMUUpdateTable eMUUpdateTable2 = h5.get(0);
                            downloadTask.setCfg_ver(eMUUpdateTable2.getCfg_ver());
                            downloadTask.setCfg_ver_name(eMUUpdateTable2.getCfg_ver_name());
                            downloadTask.setCfg_down_url(eMUUpdateTable2.getCfg_down_url());
                        }
                        downloadTask.setDownloadType(1);
                        downloadTask.setStatus(5);
                        n.o().delete((n) n4);
                        g1.f.G().m(downloadTask);
                    }
                }
                this.f52313b.setStatus(5);
                g1.f.G().g0(this.f52313b, 5, 100L);
                UtilsMy.R2(MApplication.f9223q, this.f52313b, 5);
                if (this.f52313b.getRomType() != null && !this.f52313b.getFileType().equals(Dtype.chajian.name())) {
                    DownloadHistoryTable p3 = k.n().p(this.f52313b.getCrc_link_type_val());
                    if (p3 != null) {
                        p3.setCreate_time(System.currentTimeMillis());
                    } else {
                        p3 = new DownloadHistoryTable();
                        p3.setCrc_link_type_val(this.f52313b.getCrc_link_type_val());
                        p3.setCreate_time(System.currentTimeMillis());
                    }
                    k.n().m(p3);
                }
                DownloadTask downloadTask2 = this.f52313b;
                if (downloadTask2 != null && downloadTask2.getGameZipPath() != null) {
                    try {
                        f0.A(".downloadTask", new File(this.f52313b.getGameZipPath()).getParent(), JsonMapper.getInstance().toJson(this.f52313b));
                    } catch (IOException e8) {
                        e8.printStackTrace();
                    }
                }
                Intent intent = new Intent();
                intent.putExtra("gameId", this.f52313b.getCrc_link_type_val());
                intent.setAction(f1.a.f65506v);
                this.f52312a.sendBroadcast(intent);
                com.join.android.app.common.servcie.a.e().l(this.f52313b.getCrc_link_type_val());
                org.greenrobot.eventbus.c.f().o(new j(this.f52313b.getCrc_link_type_val(), 38));
                org.greenrobot.eventbus.c.f().o(new l(this.f52313b, 5));
                o.u(this.f52313b.getCrc_link_type_val());
                if (!d2.h(this.f52316e)) {
                    org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.s(9, this.f52313b.getCrc_link_type_val()));
                }
                if (this.f52313b.get_from() != 120) {
                    DownloadTask V = g1.f.G().V(Integer.parseInt(this.f52313b.getPlugin_num()));
                    if (V != null && V.getDown_type() == 2) {
                        UtilsMy.b2(this.f52312a, this.f52313b.getCrc_link_type_val());
                    } else if (com.join.android.app.common.utils.a.g0(this.f52312a).c(this.f52312a, n1.p.o().n(this.f52313b.getPlugin_num()).getPackage_name())) {
                        UtilsMy.b2(this.f52312a, this.f52313b.getCrc_link_type_val());
                    }
                }
                StringBuilder sb10 = new StringBuilder();
                sb10.append("mDownloadTask.fina=");
                sb10.append(this.f52313b.getGameZipPath());
                this.f52313b.set_from_type(0);
                return;
            }
            this.f52313b.setStatus(13);
            com.join.android.app.common.servcie.a.e().o(this.f52313b);
        }
        this.f52313b.set_from_type(0);
    }

    public h(DownloadTask downloadTask, Context context, String str) {
        this.f52313b = downloadTask;
        this.f52312a = context;
        this.f52316e = str;
    }
}
