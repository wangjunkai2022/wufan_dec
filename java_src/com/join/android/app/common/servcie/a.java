package com.join.android.app.common.servcie;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.e;
import com.join.android.app.common.utils.k;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.f0;
import com.join.mgps.Util.j1;
import com.join.mgps.Util.t0;
import com.join.mgps.Util.u;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.ApkVersionRemarkBean;
import com.join.mgps.dto.RomArchived;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.event.j;
import com.join.mgps.event.l;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.pref.h;
import com.join.mgps.task.g;
import com.papa.sim.statistic.Event;
import com.umeng.analytics.MobclickAgent;
import g1.f;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import n1.o;
import org.greenrobot.eventbus.c;
/* compiled from: DownloadFactory.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f17171a = "DownloadFactory";

    /* renamed from: b  reason: collision with root package name */
    private static Map<String, DownloadTask> f17172b = new ConcurrentHashMap(0);

    /* renamed from: c  reason: collision with root package name */
    private static ThreadPoolExecutor f17173c = new e(1, 1, 500, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: d  reason: collision with root package name */
    private static Map<String, Runnable> f17174d = new ConcurrentHashMap(0);

    /* renamed from: e  reason: collision with root package name */
    private static a f17175e;

    /* compiled from: DownloadFactory.java */
    /* renamed from: com.join.android.app.common.servcie.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class HandlerC0132a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f17176a;

        HandlerC0132a(DownloadTask downloadTask) {
            this.f17176a = downloadTask;
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            c.f().o(new l(this.f17176a, 3));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DownloadFactory.java */
    /* loaded from: classes.dex */
    public class b extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f17178a;

        b(DownloadTask downloadTask) {
            this.f17178a = downloadTask;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            t0.c("删除文件开始时间 " + System.currentTimeMillis());
            f.G().delete((f) this.f17178a);
            File file = new File(this.f17178a.getPath());
            String gameZipPath = this.f17178a.getGameZipPath();
            if (gameZipPath != null && !gameZipPath.equals("")) {
                if (!this.f17178a.getFileType().equals(Dtype.android.name()) && !APKUtils.E(this.f17178a)) {
                    if (!this.f17178a.getFileType().equals(Dtype.chajian.name())) {
                        UtilsMy.delete(new File(gameZipPath).getParentFile());
                    }
                } else {
                    UtilsMy.delete(new File(gameZipPath));
                }
            } else {
                File file2 = new File(this.f17178a.getPath().replace(".zip", ""));
                if (file2.exists()) {
                    UtilsMy.delete(file2);
                }
            }
            if (file.exists()) {
                UtilsMy.delete(file);
            }
            t0.c("删除文件结束时间 " + System.currentTimeMillis());
        }
    }

    private boolean a(DownloadTask downloadTask) {
        if (downloadTask.getFileType().equals(Dtype.apk.name())) {
            List<RomArchived> m4 = f0.m(downloadTask.getPlugin_num(), downloadTask.getGameZipPath());
            if (downloadTask.getPlugin_num().equals("31")) {
                boolean z3 = false;
                boolean z4 = false;
                for (RomArchived romArchived : m4) {
                    if (romArchived.getFileName().contains("_v2")) {
                        z3 = true;
                    } else {
                        z4 = true;
                    }
                }
                Iterator<RomArchived> it2 = m4.iterator();
                while (it2.hasNext()) {
                    RomArchived next = it2.next();
                    if (!z4 || z3) {
                        if (z4 && z3) {
                            if (j1.a(downloadTask.getPackageName())) {
                                if (next.getFileName().contains("_v2")) {
                                    it2.remove();
                                }
                            } else if (!next.getFileName().contains("_v2")) {
                                it2.remove();
                            }
                        }
                    } else if (!j1.a(downloadTask.getPackageName())) {
                        it2.remove();
                    }
                }
            }
            if (downloadTask.getPlugin_num().equals("31")) {
                boolean z5 = false;
                boolean z6 = false;
                for (RomArchived romArchived2 : m4) {
                    if (romArchived2.getFileName().contains("_v2")) {
                        z5 = true;
                    } else {
                        z6 = true;
                    }
                }
                Iterator<RomArchived> it3 = m4.iterator();
                while (it3.hasNext()) {
                    RomArchived next2 = it3.next();
                    if (!z6 || z5) {
                        if (z6 && z5) {
                            if (j1.a(downloadTask.getPackageName())) {
                                if (next2.getFileName().contains("_v2")) {
                                    it3.remove();
                                }
                            } else if (!next2.getFileName().contains("_v2")) {
                                it3.remove();
                            }
                        }
                    } else if (!j1.a(downloadTask.getPackageName())) {
                        it3.remove();
                    }
                }
            }
            if (m4 != null && m4.size() > 0) {
                return true;
            }
        }
        return false;
    }

    public static a e() {
        if (f17175e == null) {
            synchronized (a.class) {
                if (f17175e == null) {
                    f17175e = new a();
                }
            }
        }
        return f17175e;
    }

    public void b(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("del removeTask  ");
        sb.append(str);
        d(f17172b.remove(str));
    }

    public void c(Context context, DownloadTask downloadTask) {
        StringBuilder sb = new StringBuilder();
        sb.append("method delTask() called.");
        sb.append(downloadTask.getShowName());
        sb.append(";status=");
        sb.append(downloadTask.getStatus());
        sb.append(";runtimeStatus=");
        sb.append(downloadTask.getRuntimeStatus().get());
        com.join.android.app.common.servcie.b.b(context, downloadTask, Event.gameRemove);
        try {
            ((com.join.mgps.task.c) f17174d.get(downloadTask.getCrc_link_type_val())).a();
        } catch (Exception unused) {
        }
        f17174d.remove(downloadTask);
        DownloadTask downloadTask2 = f17172b.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("status=");
            sb2.append(downloadTask2.getStatus());
            sb2.append(";runtimestatus=");
            sb2.append(downloadTask2.getRuntimeStatus().get());
            f17172b.remove(downloadTask2.getCrc_link_type_val());
            if (downloadTask2.getRuntimeStatus().get() == 29) {
                k.c(downloadTask2);
                d(downloadTask);
                c.f().o(new l(downloadTask2, 7));
            } else if (downloadTask2.getStatus() != 9 && downloadTask2.getStatus() != 3 && downloadTask2.getStatus() != 27 && downloadTask2.getRuntimeStatus().get() != 35 && downloadTask2.getRuntimeStatus().get() != 36 && downloadTask2.getRuntimeStatus().get() != 37 && downloadTask2.getRuntimeStatus().get() != 31 && downloadTask2.getStatus() != 5 && downloadTask2.getStatus() != 13 && downloadTask2.getStatus() != 11) {
                downloadTask2.setStatus(7);
                c.f().o(new l(downloadTask2, 7));
            } else {
                f.G().delete((f) downloadTask);
                d(downloadTask);
                c.f().o(new l(downloadTask2, 7));
            }
        } else {
            f.G().delete((f) downloadTask);
            d(downloadTask);
            downloadTask.setStatus(7);
            c.f().o(new l(downloadTask, 7));
        }
        if (a(downloadTask)) {
            Intent intent = new Intent(f1.a.M);
            intent.putExtra("plugNumber", downloadTask.getPlugin_num());
            intent.putExtra("gameZipPath", downloadTask.getGameZipPath());
            intent.putExtra("PackageName", downloadTask.getPackageName());
            intent.putExtra("romType", downloadTask.getRomType());
            intent.putExtra("gameName", downloadTask.getShowName());
            context.sendBroadcast(intent);
        }
    }

    public void d(DownloadTask downloadTask) {
        new b(downloadTask).start();
    }

    public DownloadTask f(String str) {
        return f17172b.get(str);
    }

    public boolean g(DownloadTask downloadTask) {
        DownloadTask downloadTask2 = f17172b.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 != null) {
            return downloadTask2.getRuntimeStatus().get() == 29 || downloadTask.getRuntimeStatus().get() == 31 || downloadTask.getRuntimeStatus().get() == 36 || downloadTask2.getStatus() == 5 || downloadTask2.getStatus() == 1 || downloadTask2.getRuntimeStatus().get() != 38;
        }
        return false;
    }

    public DownloadTask h(DownloadTask downloadTask) {
        f17172b.remove(downloadTask.getCrc_link_type_val());
        StringBuilder sb = new StringBuilder();
        sb.append("onFinish removeTask  ");
        sb.append(downloadTask.getCrc_link_type_val());
        return downloadTask;
    }

    public void i(DownloadTask downloadTask) {
        f17172b.put(downloadTask.getCrc_link_type_val(), downloadTask);
    }

    public void j() {
        try {
            for (String str : f17172b.keySet()) {
                DownloadTask downloadTask = f17172b.get(str);
                if (downloadTask.getRuntimeStatus().get() != 29 && downloadTask.getStatus() != 10) {
                    downloadTask.setStatus(3);
                    c.f().o(new l(downloadTask, 3));
                    StringBuilder sb = new StringBuilder();
                    sb.append("del removeAllTask  ");
                    sb.append(downloadTask.getCrc_link_type_val());
                    f17172b.remove(downloadTask.getCrc_link_type_val());
                }
                k.d(downloadTask);
                f.G().f0(downloadTask, 3);
                downloadTask.setStatus(3);
                c.f().o(new l(downloadTask, 3));
                c.f().o(new j(downloadTask.getCrc_link_type_val(), 38));
                StringBuilder sb2 = new StringBuilder();
                sb2.append("del removeAllTask  ");
                sb2.append(downloadTask.getCrc_link_type_val());
                f17172b.remove(downloadTask.getCrc_link_type_val());
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public DownloadTask k(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("removeTask 1 ");
        sb.append(str);
        return f17172b.remove(str);
    }

    public void l(String str) {
        f17174d.remove(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x012e A[Catch: all -> 0x01e2, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x003d, B:7:0x005a, B:9:0x0066, B:11:0x0072, B:13:0x0078, B:15:0x007e, B:18:0x008b, B:19:0x0096, B:22:0x00b5, B:24:0x00c3, B:39:0x011a, B:41:0x012e, B:44:0x0137, B:46:0x0140, B:49:0x0152, B:52:0x015f, B:55:0x0167, B:59:0x0191, B:61:0x01d9, B:60:0x01b9, B:57:0x0173, B:51:0x015a, B:25:0x00e5, B:27:0x00ed, B:29:0x00f3, B:36:0x0108), top: B:67:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0137 A[Catch: all -> 0x01e2, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x003d, B:7:0x005a, B:9:0x0066, B:11:0x0072, B:13:0x0078, B:15:0x007e, B:18:0x008b, B:19:0x0096, B:22:0x00b5, B:24:0x00c3, B:39:0x011a, B:41:0x012e, B:44:0x0137, B:46:0x0140, B:49:0x0152, B:52:0x015f, B:55:0x0167, B:59:0x0191, B:61:0x01d9, B:60:0x01b9, B:57:0x0173, B:51:0x015a, B:25:0x00e5, B:27:0x00ed, B:29:0x00f3, B:36:0x0108), top: B:67:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void m(android.content.Context r8, com.github.snowdream.android.app.downloader.DownloadTask r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.common.servcie.a.m(android.content.Context, com.github.snowdream.android.app.downloader.DownloadTask, boolean):void");
    }

    public void n(DownloadTask downloadTask) {
        DownloadTask f4 = f(downloadTask.getCrc_link_type_val());
        if (f4 == null) {
            downloadTask.setStatus(3);
            c.f().o(new l(downloadTask, 3));
        }
        if (f4 == null || f4.getStatus() == 5 || f4.getRuntimeStatus().get() == 31 || f4.getStatus() == 7 || f4.getStatus() == 12 || f4.getStatus() == 13 || f4.getRuntimeStatus().get() == 35 || f4.getStatus() == 3) {
            return;
        }
        if (f4.getRuntimeStatus().get() != 29 && f4.getStatus() != 10) {
            f4.setStatus(27);
            c.f().o(new l(f4, 27));
            new HandlerC0132a(f4).sendEmptyMessageDelayed(1, 200L);
            return;
        }
        k.d(f4);
        f.G().f0(f4, 3);
        f4.setStatus(3);
        c.f().o(new l(f4, 3));
        c.f().o(new j(f4.getCrc_link_type_val(), 38));
    }

    public void o(DownloadTask downloadTask) {
        f17174d.remove(downloadTask.getCrc_link_type_val());
        downloadTask.setStatus(13);
        if (downloadTask.getSize() >= u.f27844c) {
            downloadTask.setProgress(1L);
            f.G().g0(downloadTask, 13, 1L);
        } else {
            downloadTask.setProgress(100L);
            f.G().g0(downloadTask, 13, 100L);
        }
        DownloadTask f4 = f(downloadTask.getCrc_link_type_val());
        if (f4 != null) {
            f4.setStatus(downloadTask.getStatus());
            f4.setProgress(downloadTask.getProgress());
        } else {
            f17172b.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        t0.d("unzipfailedxx", "send failed");
        c.f().o(new j(downloadTask.getCrc_link_type_val(), 46));
        c.f().o(new l(downloadTask, 13));
        c.f().o(new j(downloadTask.getCrc_link_type_val(), 38));
    }

    public void p(DownloadTask downloadTask) {
        f17174d.remove(downloadTask.getCrc_link_type_val());
        downloadTask.setStatus(13);
        if (downloadTask.getSize() >= u.f27844c) {
            downloadTask.setProgress(1L);
            f.G().g0(downloadTask, 13, 1L);
        } else {
            downloadTask.setProgress(100L);
            f.G().g0(downloadTask, 13, 100L);
        }
        DownloadTask f4 = f(downloadTask.getCrc_link_type_val());
        if (f4 != null) {
            f4.setStatus(downloadTask.getStatus());
            f4.setProgress(downloadTask.getProgress());
        } else {
            f17172b.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        t0.d("unzipfailedxx", "send failed");
        c.f().o(new l(downloadTask, 13));
        c.f().o(new j(downloadTask.getCrc_link_type_val(), 38));
    }

    public void q(Context context, DownloadTask downloadTask) {
        if (downloadTask.getSize() >= u.f27844c) {
            downloadTask.setProgress(1L);
            f.G().g0(downloadTask, 12, 1L);
        } else {
            downloadTask.setProgress(100L);
            f.G().g0(downloadTask, 12, 100L);
        }
        DownloadTask f4 = e().f(downloadTask.getCrc_link_type_val());
        if (f4 != null) {
            f4.setStatus(12);
            f4.setProgress(downloadTask.getProgress());
            f4.setVer(downloadTask.getVer());
            f4.setVer_name(downloadTask.getVer_name());
        } else {
            f17172b.put(downloadTask.getCrc_link_type_val(), downloadTask);
            f4 = downloadTask;
        }
        f4.setStatus(12);
        f4.setRuntimeStatus(new AtomicInteger(36));
        c.f().o(new l(f4, 12));
        com.join.mgps.task.c cVar = (com.join.mgps.task.c) f17174d.get(f4.getCrc_link_type_val());
        if (cVar == null || !cVar.isRunning()) {
            if (ConstantIntEnum.PS2.value() == Integer.parseInt(downloadTask.getPlugin_num())) {
                if (ContextCompat.checkSelfPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                    Intent intent = new Intent(f1.a.f65489m0);
                    intent.putExtra("gameId", downloadTask.getCrc_link_type_val());
                    context.sendBroadcast(intent);
                    return;
                }
                String h4 = h.n(context).h();
                if (d2.h(h4)) {
                    UtilsMy.j2(new PrefDef_(context), context, true);
                    h4 = h.n(context).h();
                }
                String str = h4 + f4.getPlugin_num();
                try {
                    File file = new File(str);
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                com.join.mgps.task.f fVar = new com.join.mgps.task.f(f4, context, str);
                if (f4.getSize() <= u.f27844c) {
                    File file2 = new File(downloadTask.getPath());
                    EMUApkTable n4 = o.o().n(downloadTask.getPlugin_num());
                    ApkVersionRemarkBean apkVersionRemarkBean = (ApkVersionRemarkBean) JsonMapper.getInstance().fromJson(n4.getRemark(), ApkVersionRemarkBean.class);
                    if (!file2.exists()) {
                        o(downloadTask);
                        MobclickAgent.onEvent(context, "onZIPMd5Failed", String.format("%s_%s", n4.getTag_id(), ""));
                        return;
                    }
                    f17174d.put(f4.getCrc_link_type_val(), fVar);
                    fVar.start();
                    return;
                }
                f17174d.put(f4.getCrc_link_type_val(), fVar);
                f17173c.execute(fVar);
                return;
            }
            g gVar = new g(f4, context);
            if (f4.getSize() <= u.f27844c) {
                File file3 = new File(downloadTask.getPath());
                EMUApkTable n5 = o.o().n(downloadTask.getPlugin_num());
                ApkVersionRemarkBean apkVersionRemarkBean2 = (ApkVersionRemarkBean) JsonMapper.getInstance().fromJson(n5.getRemark(), ApkVersionRemarkBean.class);
                if (!file3.exists()) {
                    o(downloadTask);
                    MobclickAgent.onEvent(context, "onZIPMd5Failed", String.format("%s_%s", n5.getTag_id(), ""));
                    return;
                }
                f17174d.put(f4.getCrc_link_type_val(), gVar);
                gVar.start();
                return;
            }
            f17174d.put(f4.getCrc_link_type_val(), gVar);
            f17173c.execute(gVar);
        }
    }

    public void r(Context context, DownloadTask downloadTask, boolean z3) {
        if (downloadTask.getSize() >= u.f27844c) {
            downloadTask.setProgress(1L);
            f.G().g0(downloadTask, 12, 1L);
        } else {
            downloadTask.setProgress(100L);
            f.G().g0(downloadTask, 12, 100L);
        }
        DownloadTask f4 = e().f(downloadTask.getCrc_link_type_val());
        if (f4 != null) {
            f4.setStatus(12);
            f4.setProgress(downloadTask.getProgress());
        } else {
            f17172b.put(downloadTask.getCrc_link_type_val(), downloadTask);
            f4 = downloadTask;
        }
        f4.setStatus(12);
        f4.setRuntimeStatus(new AtomicInteger(36));
        c.f().o(new l(f4, 12));
        if (z3) {
            int parseInt = Integer.parseInt(f4.getPlugin_num());
            if ((Build.VERSION.SDK_INT > 29 && (parseInt == ConstantIntEnum.DC.value() || parseInt == ConstantIntEnum.N64.value() || parseInt == ConstantIntEnum.NDS.value() || parseInt == ConstantIntEnum.ONS.value() || parseInt == ConstantIntEnum.VA32.value() || parseInt == ConstantIntEnum.VA64.value())) || parseInt == ConstantIntEnum.PS2.value()) {
                if (ContextCompat.checkSelfPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                    p(downloadTask);
                    Intent intent = new Intent(f1.a.f65489m0);
                    intent.putExtra("gameId", downloadTask.getCrc_link_type_val());
                    context.sendBroadcast(intent);
                    return;
                }
                com.join.mgps.task.c cVar = (com.join.mgps.task.c) f17174d.get(f4.getCrc_link_type_val());
                if (cVar == null || !cVar.isRunning()) {
                    String h4 = h.n(context).h();
                    if (d2.h(h4)) {
                        UtilsMy.j2(new PrefDef_(context), context, parseInt == ConstantIntEnum.PS2.value());
                        h4 = h.n(context).h();
                    }
                    String str = h4 + f4.getPlugin_num();
                    try {
                        File file = new File(str);
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    Runnable hVar = new com.join.mgps.task.h(f4, context, str);
                    if (TextUtils.equals(f4.getCrc_link_type_val(), String.valueOf(ConstantIntEnum.PS2.value()))) {
                        hVar = new com.join.mgps.task.f(f4, context, str);
                    }
                    if (f4.getSize() <= u.f27844c) {
                        if (hVar instanceof com.join.mgps.task.f) {
                            ((com.join.mgps.task.f) hVar).start();
                            return;
                        } else {
                            ((com.join.mgps.task.h) hVar).start();
                            return;
                        }
                    }
                    f17174d.put(f4.getCrc_link_type_val(), hVar);
                    f17173c.execute(hVar);
                    return;
                }
                return;
            }
            com.join.mgps.task.c cVar2 = (com.join.mgps.task.c) f17174d.get(f4.getCrc_link_type_val());
            if (cVar2 == null || !cVar2.isRunning()) {
                com.join.mgps.task.h hVar2 = new com.join.mgps.task.h(f4, context);
                if (f4.getSize() <= u.f27844c) {
                    hVar2.start();
                    return;
                }
                f17174d.put(f4.getCrc_link_type_val(), hVar2);
                f17173c.execute(hVar2);
            }
        } else if (ContextCompat.checkSelfPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            p(downloadTask);
            Intent intent2 = new Intent(f1.a.f65489m0);
            intent2.putExtra("gameId", downloadTask.getCrc_link_type_val());
            context.sendBroadcast(intent2);
        } else {
            com.join.mgps.task.c cVar3 = (com.join.mgps.task.c) f17174d.get(downloadTask.getCrc_link_type_val());
            if (cVar3 == null || !cVar3.isRunning()) {
                com.join.mgps.task.e eVar = new com.join.mgps.task.e(f4, context);
                if (downloadTask.getSize() <= u.f27844c) {
                    eVar.start();
                    return;
                }
                f17174d.put(f4.getCrc_link_type_val(), eVar);
                f17173c.execute(eVar);
            }
        }
    }
}
