package com.join.android.app.common.servcie;

import android.app.ActivityManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.text.TextUtils;
import com.MApplication;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.f;
import com.join.android.app.common.utils.h;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.c0;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.t0;
import com.join.mgps.activity.ModGameIndexActivity;
import com.join.mgps.activity.PapaPlugGuideActivity_;
import com.join.mgps.activity.mygame.dialog.UnzipFailedDialog_;
import com.join.mgps.db.tables.DownloadHistoryTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.BootPageData;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.HomeViewSwich;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.enums.Dtype;
import com.join.mgps.event.i;
import com.join.mgps.event.j;
import com.join.mgps.event.l;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.receiver.BootReceiver_;
import com.join.mgps.rpc.d;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.p;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import n1.k;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EService;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EService
/* loaded from: classes.dex */
public class DownloadService extends Service {

    /* renamed from: h  reason: collision with root package name */
    private static final String f17129h = "DownloadService";

    /* renamed from: i  reason: collision with root package name */
    private static boolean f17130i;

    /* renamed from: j  reason: collision with root package name */
    private static Context f17131j;

    /* renamed from: k  reason: collision with root package name */
    private static ScheduledExecutorService f17132k = Executors.newScheduledThreadPool(1);

    /* renamed from: l  reason: collision with root package name */
    private static Handler f17133l = new a();

    /* renamed from: m  reason: collision with root package name */
    static ScheduledFuture f17134m;

    /* renamed from: a  reason: collision with root package name */
    d f17135a;
    @Pref

    /* renamed from: b  reason: collision with root package name */
    PrefDef_ f17136b;

    /* renamed from: d  reason: collision with root package name */
    BootReceiver_ f17138d;

    /* renamed from: c  reason: collision with root package name */
    HashMap<String, DownloadTask> f17137c = new HashMap<>();

    /* renamed from: e  reason: collision with root package name */
    boolean f17139e = false;

    /* renamed from: f  reason: collision with root package name */
    private int f17140f = 1000;

    /* renamed from: g  reason: collision with root package name */
    private long f17141g = 0;

    /* loaded from: classes.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 0) {
                DownloadService.y();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f.l()) {
                DownloadService.v();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f.k(DownloadService.f17131j)) {
                if (f.l()) {
                    DownloadService.f17133l.sendEmptyMessage(0);
                    DownloadService.f17134m.cancel(true);
                    return;
                }
                return;
            }
            DownloadService.f17134m.cancel(true);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:69:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A(java.lang.String r17, java.lang.String r18, java.lang.String r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.common.servcie.DownloadService.A(java.lang.String, java.lang.String, java.lang.String, boolean):void");
    }

    public static void D(DownloadTask downloadTask) {
        DownloadTask f4;
        if (downloadTask == null || (f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val())) == null) {
            return;
        }
        f4.setProgress(downloadTask.getProgress());
        org.greenrobot.eventbus.c.f().o(new l(downloadTask, 8));
    }

    private static synchronized void i(DownloadTask downloadTask, boolean z3) {
        synchronized (DownloadService.class) {
            j(downloadTask, z3);
        }
    }

    private static synchronized void j(DownloadTask downloadTask, boolean z3) {
        synchronized (DownloadService.class) {
            StringBuilder sb = new StringBuilder();
            sb.append("method downloadStart called.");
            sb.append(downloadTask.getName());
            sb.append(";url=");
            sb.append(downloadTask.getUrl());
            if (!d2.h(downloadTask.getUrl()) && com.join.android.app.common.servcie.b.a(f17131j, downloadTask)) {
                com.join.android.app.common.servcie.a.e().m(f17131j, downloadTask, z3);
            }
        }
    }

    private boolean m() {
        String packageName = getApplicationContext().getPackageName();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) getApplicationContext().getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.processName.equals(packageName) && runningAppProcessInfo.importance == 100) {
                return true;
            }
        }
        return false;
    }

    private boolean n(DownloadTask downloadTask) {
        ModInfoBean modInfoBean = d2.i(downloadTask.getMod_info()) ? (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getMod_info(), ModInfoBean.class) : null;
        return modInfoBean != null && downloadTask.getCrc_link_type_val().equals(modInfoBean.getMain_game_id());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void v() {
        synchronized (DownloadService.class) {
            if (f17130i) {
                return;
            }
            f17130i = true;
            List<DownloadTask> a02 = g1.f.G().a0();
            if (a02 != null && a02.size() != 0) {
                for (DownloadTask downloadTask : a02) {
                    try {
                        downloadTask.setDownType(UtilsMy.h0(f17131j, downloadTask));
                        HomeViewSwich homeViewSwich = MApplication.I;
                        if (homeViewSwich != null) {
                            downloadTask.setDownLimit(Integer.parseInt(homeViewSwich.getDown_load_speed_limit().getCfg_values_express()));
                        } else {
                            downloadTask.setDownLimit(300);
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                    if (f4 != null) {
                        try {
                            if (f4.getStatus() != 12 && f4.getStatus() != 13) {
                                f4.setMobleNetNeedStop(0);
                            }
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                    }
                    downloadTask.setStatus(0);
                    g1.f.G().update(downloadTask);
                    i(downloadTask, false);
                }
                f17130i = false;
                return;
            }
            f17130i = false;
        }
    }

    private synchronized void x() {
        try {
            boolean booleanValue = this.f17136b.isOnlyWifiReconnect().e(Boolean.TRUE).booleanValue();
            List<DownloadTask> b02 = g1.f.G().b0();
            if (b02 != null && b02.size() > 0) {
                for (DownloadTask downloadTask : b02) {
                    try {
                        downloadTask.setDownType(UtilsMy.h0(f17131j, downloadTask));
                        HomeViewSwich homeViewSwich = MApplication.I;
                        if (homeViewSwich != null) {
                            downloadTask.setDownLimit(Integer.parseInt(homeViewSwich.getDown_load_speed_limit().getCfg_values_express()));
                        } else {
                            downloadTask.setDownLimit(300);
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    if (booleanValue) {
                        Context context = f17131j;
                        if (context != null) {
                            if (f.k(context)) {
                                if (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 6 || downloadTask.getStatus() == 10 || downloadTask.getStatus() == 1) {
                                    downloadTask.setStatus(0);
                                    g1.f.G().update(downloadTask);
                                    i(downloadTask, false);
                                }
                            } else {
                                downloadTask.setStatus(6);
                                g1.f.G().update(downloadTask);
                                com.php25.PDownload.d.h(downloadTask);
                            }
                        }
                    } else if (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 6 || downloadTask.getStatus() == 10 || downloadTask.getStatus() == 0 || downloadTask.getStatus() == 1) {
                        downloadTask.setStatus(0);
                        g1.f.G().update(downloadTask);
                        i(downloadTask, false);
                    }
                    if (downloadTask.getStatus() == 12 || downloadTask.getStatus() == 13) {
                        if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.apk.name())) {
                            com.join.android.app.common.servcie.a.e().r(f17131j, downloadTask, true);
                        } else {
                            com.join.android.app.common.servcie.a.e().r(f17131j, downloadTask, false);
                        }
                    }
                    if (downloadTask.getStatus() == 48) {
                        if (!d2.i(downloadTask.getGameZipPath()) && !d2.i(downloadTask.getPath())) {
                            g1.f.G().n(downloadTask.getCrc_link_type_val());
                        }
                        if (d2.h(downloadTask.getGameZipPath())) {
                            downloadTask.setGameZipPath(downloadTask.getPath());
                        }
                        com.join.android.app.common.utils.a.g0(this).y(this, downloadTask.getGameZipPath());
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void y() {
        synchronized (DownloadService.class) {
            if (!f.k(f17131j)) {
                f17130i = false;
            } else if (!f17130i) {
                f17130i = true;
                List<DownloadTask> a02 = g1.f.G().a0();
                if (a02 != null && a02.size() != 0) {
                    for (DownloadTask downloadTask : a02) {
                        try {
                            downloadTask.setDownType(UtilsMy.h0(f17131j, downloadTask));
                            HomeViewSwich homeViewSwich = MApplication.I;
                            if (homeViewSwich != null) {
                                downloadTask.setDownLimit(Integer.parseInt(homeViewSwich.getDown_load_speed_limit().getCfg_values_express()));
                            } else {
                                downloadTask.setDownLimit(300);
                            }
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                        DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                        if (f4 != null) {
                            try {
                                if (f4.getStatus() != 12 && f4.getStatus() != 13) {
                                    f4.setMobleNetNeedStop(0);
                                }
                            } catch (Exception e5) {
                                e5.printStackTrace();
                            }
                        }
                        downloadTask.setStatus(0);
                        g1.f.G().update(downloadTask);
                        i(downloadTask, false);
                    }
                    f17130i = false;
                    return;
                }
                f17130i = false;
            }
        }
    }

    private synchronized void z() {
        if (f.k(f17131j)) {
            if (f17134m != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("scheduler status:: isDone =");
                sb.append(f17134m.isDone());
                sb.append(";furture.isCancelled=");
                sb.append(f17134m.isCancelled());
            }
            ScheduledFuture scheduledFuture = f17134m;
            if (scheduledFuture == null || scheduledFuture.isDone() || f17134m.isCancelled()) {
                f17134m = f17132k.scheduleWithFixedDelay(new c(), 5L, 10L, TimeUnit.SECONDS);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void B(int i2, int i4) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void C(DetailResultBean detailResultBean) {
        DownloadTask downloadtaskDown;
        if (detailResultBean == null || (downloadtaskDown = detailResultBean.getDownloadtaskDown()) == null) {
            return;
        }
        UtilsMy.d1(downloadtaskDown, detailResultBean);
        if (UtilsMy.n0(downloadtaskDown.getPay_game_amount(), downloadtaskDown.getCrc_link_type_val()) > 0) {
            UtilsMy.m3(f17131j, downloadtaskDown.getCrc_link_type_val());
        } else if (UtilsMy.T0(f17131j, downloadtaskDown)) {
        } else {
            if (detailResultBean.getDown_status() == 5) {
                UtilsMy.R0(f17131j, downloadtaskDown);
            } else {
                UtilsMy.F0(f17131j, downloadtaskDown, downloadtaskDown.getTp_down_url(), downloadtaskDown.getOther_down_switch(), downloadtaskDown.getCdn_down_switch());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65490n})
    public void e(Intent intent) {
        String stringExtra = intent.getStringExtra("apkpath");
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setFlags(268435456);
        intent2.setAction("android.intent.action.VIEW");
        com.join.android.app.common.utils.a.g0(f17131j).y(f17131j, stringExtra);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65492o})
    public void f(Intent intent) {
        String stringExtra = intent.getStringExtra("packageName");
        String stringExtra2 = intent.getStringExtra("actionFrom");
        if (stringExtra2.equals(BootReceiver_.f51451a)) {
            h(1, stringExtra);
        } else if (stringExtra2.equals(BootReceiver_.f51452b)) {
            if (TextUtils.equals(stringExtra, "xyz.aethersx2.android")) {
                return;
            }
            if ("com.join.android.app.mgsim.wufun.addon".equals(stringExtra)) {
                APKUtils.t(f17131j);
            } else {
                h(2, stringExtra);
            }
        } else if (stringExtra2.equals(BootReceiver_.f51454d)) {
            h(3, stringExtra);
        } else if (stringExtra2.equals(BootReceiver_.f51453c)) {
            if ("com.join.android.app.mgsim.wufun.addon".equals(stringExtra)) {
                APKUtils.t(f17131j);
            }
            if (TextUtils.equals(stringExtra, "xyz.aethersx2.android")) {
                h(2, stringExtra);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:116:0x026a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0049 A[SYNTHETIC] */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void g(java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 648
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.common.servcie.DownloadService.g(java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void h(int i2, String str) {
        if (i2 == 1) {
            try {
                if (f.j(this)) {
                    g(str);
                } else {
                    HashMap<String, DownloadTask> hashMap = this.f17137c;
                    if (hashMap != null && hashMap.containsKey(str)) {
                        DownloadTask downloadTask = this.f17137c.get(str);
                        downloadTask.setOpenTime(System.currentTimeMillis());
                        g1.f.G().m(downloadTask);
                        this.f17137c.remove(str);
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        for (DownloadTask downloadTask2 : g1.f.G().d()) {
            if (str.equals(downloadTask2.getPackageName()) && (downloadTask2.getFileType().equals(Dtype.android.name()) || downloadTask2.getFileType().equals(Dtype.chajian.name()))) {
                if (i2 == 1) {
                    downloadTask2.setStatus(5);
                    if (downloadTask2.getRomType() != null && !downloadTask2.getFileType().equals(Dtype.chajian.name())) {
                        DownloadHistoryTable p3 = k.n().p(downloadTask2.getCrc_link_type_val());
                        if (p3 != null) {
                            p3.setCreate_time(System.currentTimeMillis());
                        } else {
                            p3 = new DownloadHistoryTable();
                            p3.setCrc_link_type_val(downloadTask2.getCrc_link_type_val());
                            p3.setCreate_time(System.currentTimeMillis());
                        }
                        k.n().m(p3);
                        UtilsMy.b2(f17131j, downloadTask2.getCrc_link_type_val());
                        PrefDef_ prefDef_ = new PrefDef_(f17131j);
                        prefDef_.lastInstallAppFinish().g(downloadTask2.getCrc_link_type_val());
                        prefDef_.lastInstallApp().g("");
                    } else {
                        try {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(f17131j).k(f17131j, downloadTask2.getPackageName());
                            if (k4 != null) {
                                downloadTask2.setVer(k4.d() + "");
                                downloadTask2.setVer_name(k4.e());
                            }
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                    }
                    try {
                        DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask2.getCrc_link_type_val());
                        if (f4 != null) {
                            f4.setStatus(5);
                        }
                    } catch (Exception e6) {
                        e6.printStackTrace();
                    }
                    g1.f.G().f0(downloadTask2, downloadTask2.getStatus());
                    downloadTask2.setStatus(5);
                    com.join.android.app.common.servcie.b.b(f17131j, downloadTask2, Event.installAndroidCompleted);
                    org.greenrobot.eventbus.c.f().o(new l(downloadTask2, 5));
                    try {
                        File file = new File(downloadTask2.getPath());
                        if (file.exists()) {
                            UtilsMy.delete(file);
                        }
                    } catch (Exception e7) {
                        e7.printStackTrace();
                    }
                } else if (i2 == 2) {
                    t0.c("app卸载");
                    t0.c("downloadTask status=" + downloadTask2.getStatus() + "  5是finish状态");
                    if (11 == downloadTask2.getStatus()) {
                        t0.c("downloadTask 安装状态");
                        downloadTask2.setStatus(5);
                        g1.f.G().f0(downloadTask2, downloadTask2.getStatus());
                        org.greenrobot.eventbus.c.f().o(new l(downloadTask2, 5));
                        DownloadTask f5 = com.join.android.app.common.servcie.a.e().f(downloadTask2.getCrc_link_type_val());
                        if (f5 != null) {
                            f5.setStatus(5);
                        }
                    } else {
                        t0.c("收到删除广播");
                        DownloadTask f6 = com.join.android.app.common.servcie.a.e().f(downloadTask2.getCrc_link_type_val());
                        if (!this.f17137c.containsKey(downloadTask2.getPackageName())) {
                            this.f17137c.put(downloadTask2.getPackageName(), downloadTask2);
                        }
                        if (f6 != null) {
                            com.join.android.app.common.servcie.a.e().k(f6.getCrc_link_type_val());
                        }
                        com.php25.PDownload.d.a(downloadTask2);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65494p})
    public void k(Intent intent) {
        l(intent.getStringExtra("gameId"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void l(String str) {
        if (f.j(this)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(f17131j).getAccountData();
                ResultMainBean<List<DetailResultBean>> R = this.f17135a.R(RequestBeanUtil.getInstance(this).getAppDetialBean(str, accountData != null ? accountData.getUid() : 0, null));
                if (R == null || R.getFlag() == 0) {
                    if (R != null) {
                        R.getFlag();
                        return;
                    }
                    return;
                }
                List<DetailResultBean> data = R.getMessages().getData();
                if (data.size() != 0) {
                    C(data.get(0));
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    @Receiver(actions = {"android.net.wifi.WIFI_STATE_CHANGED", "android.net.wifi.STATE_CHANGE", "android.net.conn.CONNECTIVITY_CHANGE", "android.net.wifi.SCAN_RESULTS"})
    public void o(Intent intent) {
        try {
            String action = intent.getAction();
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action) || action.equals("android.net.wifi.STATE_CHANGE") || action.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                boolean j4 = f.j(f17131j);
                StringBuilder sb = new StringBuilder();
                sb.append("网络状态：");
                sb.append(j4);
                if (f.k(f17131j)) {
                    if (!this.f17136b.isFightActivity().d().booleanValue()) {
                        this.f17136b.isWifiConnectedBefore().g(Boolean.TRUE);
                    }
                    this.f17139e = true;
                } else {
                    if (!this.f17136b.isFightActivity().d().booleanValue()) {
                        this.f17136b.isWifiConnectedBefore().g(Boolean.FALSE);
                    }
                    this.f17139e = false;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("wifi状态：");
                sb2.append(f.k(f17131j));
                StringBuilder sb3 = new StringBuilder();
                sb3.append("移动网络状态：");
                sb3.append(f.i(f17131j));
                StringBuilder sb4 = new StringBuilder();
                sb4.append("网络连接类型：");
                sb4.append(f.c(f17131j));
                z();
                f17132k.execute(new b());
            }
            if (action.equals("android.net.wifi.SCAN_RESULTS")) {
                if (this.f17136b.isFightActivity().d().booleanValue()) {
                    return;
                }
                this.f17136b.isWifiConnectedBefore().g(Boolean.TRUE);
            } else if (action.equals("android.net.wifi.WIFI_STATE_CHANGED")) {
                StringBuilder sb5 = new StringBuilder();
                sb5.append("android.net.wifi.WIFI_STATE_CHANGED | ");
                sb5.append(intent.getIntExtra("wifi_state", -1));
                sb5.append(" | ");
                sb5.append(intent.getIntExtra("previous_wifi_state", -1));
                if (this.f17136b.isFightActivity().d().booleanValue()) {
                    return;
                }
                if (intent.getIntExtra("wifi_state", -1) == 0 || intent.getIntExtra("wifi_state", -1) == 1) {
                    this.f17136b.isWifiConnectedBefore().g(Boolean.FALSE);
                }
            } else if (!action.equals("android.net.wifi.STATE_CHANGE") || this.f17136b.isFightActivity().d().booleanValue()) {
            } else {
                this.f17136b.isWifiConnectedBefore().g(Boolean.TRUE);
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        f17131j = getApplicationContext();
        this.f17135a = com.join.mgps.rpc.impl.c.P1();
        this.f17138d = new BootReceiver_();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(BootReceiver_.f51451a);
        intentFilter.addAction(BootReceiver_.f51452b);
        intentFilter.addAction(BootReceiver_.f51454d);
        intentFilter.addAction(BootReceiver_.f51453c);
        intentFilter.addAction(BootReceiver_.f51456f);
        intentFilter.addDataScheme("package");
        intentFilter.setPriority(Integer.MAX_VALUE);
        registerReceiver(this.f17138d, intentFilter);
        c0.a().d(this);
        List<DownloadTask> d4 = g1.f.G().d();
        if (d4 != null && d4.size() > 0) {
            for (DownloadTask downloadTask : d4) {
                if (downloadTask.getGameZipPath() != null && downloadTask.getFileType().equals(Dtype.apk) && !new File(downloadTask.getGameZipPath()).exists()) {
                    g1.f.G().delete((g1.f) downloadTask);
                }
            }
            d4.clear();
        }
        w();
    }

    @Override // android.app.Service
    public void onDestroy() {
        p.l(f17131j).e();
        c0.a().e(this);
        BootReceiver_ bootReceiver_ = this.f17138d;
        if (bootReceiver_ != null) {
            unregisterReceiver(bootReceiver_);
        }
        super.onDestroy();
        sendBroadcast(new Intent("com.intent.downloadService.destroyed"));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDownloadEvent(i iVar) {
        StringBuilder sb = new StringBuilder();
        sb.append("method onDownloadEvent called.event=");
        sb.append(iVar.getType());
        DownloadTask a4 = iVar.a();
        int type = iVar.getType();
        if (type != 39) {
            switch (type) {
                case 14:
                    i(a4, true);
                    return;
                case 15:
                    com.join.android.app.common.servcie.a.e().n(a4);
                    return;
                case 16:
                    com.join.android.app.common.servcie.a.e().c(f17131j, a4);
                    return;
                case 17:
                    g1.f.G().delete((g1.f) a4);
                    return;
                default:
                    return;
            }
        }
        if (com.join.android.app.common.servcie.a.e().f(a4.getCrc_link_type_val()) == null) {
            com.join.android.app.common.servcie.a.e().i(a4);
        }
        org.greenrobot.eventbus.c.f().o(new j(a4.getCrc_link_type_val(), 36));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDownloadRuntimeEvent(j jVar) {
        DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(jVar.a());
        if (f4 == null) {
            return;
        }
        if (jVar.getType() != 33) {
            f4.setRuntimeStatus(new AtomicInteger(jVar.getType()));
        }
        if (jVar.getType() == 41) {
            p l4 = p.l(f17131j);
            l4.H1("STATUS_RUNTIME_SIZE_MISMATCH,gameId=" + jVar.a() + ";realSize=" + f4.getSize() + ";atcualSize=" + f4.getActual_size());
            return;
        }
        int type = jVar.getType();
        if (type == 20) {
            t(f4);
        } else if (type == 29) {
            f4.setStatus(10);
            org.greenrobot.eventbus.c.f().o(new l(f4, 10));
            f4.setRuntimeStatus(new AtomicInteger(38));
        } else if (type == 45) {
            i2.a(f17131j).b("文件出错，重新下载中");
        } else if (type != 46) {
            switch (type) {
                case 31:
                case 36:
                    r(f4);
                    return;
                case 32:
                    q(f4);
                    return;
                case 33:
                    s(new Long[0]);
                    return;
                case 34:
                    p(f4);
                    return;
                case 35:
                    u(f4);
                    return;
                default:
                    return;
            }
        } else {
            t0.d("unzipfailedxx", "recived failed");
            if (!(MApplication.f9223q.getActivity() instanceof ModGameIndexActivity)) {
                ((UnzipFailedDialog_.IntentBuilder_) UnzipFailedDialog_.intent(f17131j).from(1).gameId(f4.getCrc_link_type_val()).flags(268435456)).start();
            }
            com.join.android.app.common.servcie.a.e().k(f4.getCrc_link_type_val());
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i4) {
        return super.onStartCommand(intent, 1, i4);
    }

    public void p(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        g1.f.G().delete((g1.f) downloadTask);
        com.join.android.app.common.servcie.a.e().b(downloadTask.getCrc_link_type_val());
        org.greenrobot.eventbus.c.f().o(new l(downloadTask, 7));
        org.greenrobot.eventbus.c.f().o(new j(downloadTask.getCrc_link_type_val(), 38));
    }

    public void q(DownloadTask downloadTask) {
        UtilsMy.J1(f17131j, downloadTask, true);
        g1.f.G().f0(downloadTask, 6);
        downloadTask.setStatus(6);
        org.greenrobot.eventbus.c.f().o(new l(downloadTask, 6));
        org.greenrobot.eventbus.c.f().o(new j(downloadTask.getCrc_link_type_val(), 38));
        z();
    }

    public void r(DownloadTask downloadTask) {
        ExtBean extBean;
        ExtBean extBean2;
        t0.c(" permissxx   onfinish");
        downloadTask.setDuration(downloadTask.getSize() / downloadTask.getDuration());
        downloadTask.setCurrentSize((long) (Double.parseDouble(downloadTask.getShowSize()) * 1024.0d * 1024.0d));
        if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.chajian.name())) {
            com.join.android.app.common.servcie.b.b(f17131j, downloadTask, Event.downloadPlugCompleted);
            String path = downloadTask.getPath();
            downloadTask.setGameZipPath(path);
            downloadTask.setStatus(11);
            try {
                downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                g1.f.G().m(downloadTask);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            com.join.android.app.common.servcie.a.e().k(downloadTask.getCrc_link_type_val());
            org.greenrobot.eventbus.c.f().o(new l(downloadTask, 11));
            int intValue = this.f17136b.insatllAppFirst().d().intValue();
            String d4 = this.f17136b.insatllAppFirstData().d();
            if (intValue > 0 && d2.i(d4) && m()) {
                BootPageData bootPageData = (BootPageData) JsonMapper.getInstance().fromJson(d4, BootPageData.class);
                if (bootPageData != null && bootPageData.getGame_setup_boot() != null && downloadTask.getDown_type() == 0) {
                    ((PapaPlugGuideActivity_.c) PapaPlugGuideActivity_.I0(f17131j).a(1).flags(268435456)).b(downloadTask.getCrc_link_type_val()).start();
                    this.f17136b.insatllAppFirst().g(Integer.valueOf(intValue - 1));
                } else if (downloadTask.getDown_type() == 2) {
                    if (h.r(f17131j, downloadTask, false, new String[0])) {
                        return;
                    }
                    com.join.android.app.common.servcie.a.e().q(f17131j, downloadTask);
                } else {
                    com.join.android.app.common.utils.a.g0(f17131j).y(f17131j, path);
                }
            } else if (downloadTask.getDown_type() == 2) {
                if (h.r(f17131j, downloadTask, false, new String[0])) {
                    return;
                }
                com.join.android.app.common.servcie.a.e().q(f17131j, downloadTask);
            } else {
                com.join.android.app.common.utils.a.g0(f17131j).y(this, path);
            }
        } else if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.apk.name())) {
            com.join.android.app.common.servcie.b.b(f17131j, downloadTask, Event.gameDownloadCompleted);
            com.join.android.app.common.servcie.a.e().r(f17131j, downloadTask, true);
        } else if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.android.name()) && !APKUtils.I(downloadTask)) {
            if (Build.VERSION.SDK_INT < 30 && (downloadTask.getRomType().equals(Dtype.androidobb.name()) || downloadTask.getRomType().equals(Dtype.androiddata.name()) || downloadTask.getRomType().equals(Dtype.androidobbdata.name()))) {
                com.join.android.app.common.servcie.b.b(f17131j, downloadTask, Event.gameDownloadCompleted);
                com.join.android.app.common.servcie.a.e().r(f17131j, downloadTask, false);
                return;
            }
            com.join.android.app.common.servcie.b.b(f17131j, downloadTask, Event.gameDownloadCompleted);
            com.join.android.app.common.servcie.b.b(f17131j, downloadTask, Event.gameDownload);
            String ext = downloadTask.getExt();
            if (d2.i(ext) && (extBean2 = (ExtBean) JsonMapper.getInstance().fromJson(ext, ExtBean.class)) != null) {
                String recPosition = extBean2.getRecPosition();
                if (d2.i(recPosition)) {
                    A(recPosition, downloadTask.getCrc_link_type_val(), extBean2.getVolcanoOther(), UtilsMy.F1(downloadTask.getTipBeans()));
                }
            }
            String path2 = downloadTask.getPath();
            downloadTask.setGameZipPath(path2);
            downloadTask.setStatus(11);
            try {
                downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                g1.f.G().m(downloadTask);
            } catch (Exception e5) {
                e5.printStackTrace();
            }
            int intValue2 = this.f17136b.insatllAppFirst().d().intValue();
            String d5 = this.f17136b.insatllAppFirstData().d();
            if (intValue2 > 0 && d2.i(d5) && m()) {
                BootPageData bootPageData2 = (BootPageData) JsonMapper.getInstance().fromJson(d5, BootPageData.class);
                if (bootPageData2 != null && bootPageData2.getGame_setup_boot() != null) {
                    ((PapaPlugGuideActivity_.c) PapaPlugGuideActivity_.I0(f17131j).a(1).flags(268435456)).b(downloadTask.getCrc_link_type_val()).start();
                    this.f17136b.insatllAppFirst().g(Integer.valueOf(intValue2 - 1));
                } else {
                    com.join.android.app.common.utils.a.g0(f17131j).y(this, path2);
                }
            } else {
                com.join.android.app.common.utils.a.g0(f17131j).y(this, path2);
            }
            downloadTask.setGameZipPath(path2);
            downloadTask.setStatus(11);
            UtilsMy.R2(f17131j, downloadTask, 11);
            try {
                downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                g1.f.G().update(downloadTask);
            } catch (Exception e6) {
                e6.printStackTrace();
            }
            com.join.android.app.common.servcie.a.e().k(downloadTask.getCrc_link_type_val());
            org.greenrobot.eventbus.c.f().o(new l(downloadTask, 11));
        } else if ((downloadTask.getFileType() == null || !Dtype.MOD.name().equals(downloadTask.getFileType())) && !APKUtils.I(downloadTask)) {
        } else {
            if ((downloadTask.getTask_down_type() != 0 && downloadTask.getTask_down_type() != 2) || (!downloadTask.getRomType().equals(Dtype.androidobb.name()) && !downloadTask.getRomType().equals(Dtype.androiddata.name()) && !downloadTask.getRomType().equals(Dtype.androidobbdata.name()))) {
                com.join.android.app.common.servcie.b.b(f17131j, downloadTask, Event.gameDownloadCompleted);
                com.join.android.app.common.servcie.b.b(f17131j, downloadTask, Event.gameDownload);
                String ext2 = downloadTask.getExt();
                if (d2.i(ext2) && (extBean = (ExtBean) JsonMapper.getInstance().fromJson(ext2, ExtBean.class)) != null) {
                    String recPosition2 = extBean.getRecPosition();
                    if (d2.i(recPosition2)) {
                        A(recPosition2, downloadTask.getCrc_link_type_val(), extBean.getVolcanoOther(), UtilsMy.F1(downloadTask.getTipBeans()));
                    }
                }
                if (downloadTask.getTask_down_type() != 0 && downloadTask.getTask_down_type() != 2) {
                    com.join.android.app.common.utils.a.g0(f17131j);
                    APKUtils.A(this, downloadTask);
                } else {
                    String path3 = downloadTask.getPath();
                    downloadTask.setGameZipPath(path3);
                    boolean E = APKUtils.E(downloadTask);
                    if (E) {
                        downloadTask.setStatus(48);
                    } else {
                        downloadTask.setStatus(11);
                    }
                    try {
                        downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                        g1.f.G().m(downloadTask);
                    } catch (Exception e7) {
                        e7.printStackTrace();
                    }
                    int intValue3 = this.f17136b.insatllAppFirst().d().intValue();
                    String d6 = this.f17136b.insatllAppFirstData().d();
                    if (intValue3 > 0 && d2.i(d6) && m()) {
                        BootPageData bootPageData3 = (BootPageData) JsonMapper.getInstance().fromJson(d6, BootPageData.class);
                        if (bootPageData3 != null && bootPageData3.getGame_setup_boot() != null && !E) {
                            ((PapaPlugGuideActivity_.c) PapaPlugGuideActivity_.I0(f17131j).a(1).flags(268435456)).b(downloadTask.getCrc_link_type_val()).start();
                            this.f17136b.insatllAppFirst().g(Integer.valueOf(intValue3 - 1));
                        } else {
                            com.join.android.app.common.utils.a.g0(f17131j).y(this, path3);
                        }
                    } else {
                        com.join.android.app.common.utils.a.g0(f17131j).y(this, path3);
                    }
                    downloadTask.setGameZipPath(path3);
                }
                try {
                    downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                    g1.f.G().update(downloadTask);
                } catch (Exception e8) {
                    e8.printStackTrace();
                }
                UtilsMy.R2(f17131j, downloadTask, 5);
                com.join.android.app.common.servcie.a.e().k(downloadTask.getCrc_link_type_val());
                return;
            }
            com.join.android.app.common.servcie.b.b(f17131j, downloadTask, Event.gameDownloadCompleted);
            com.join.android.app.common.servcie.a.e().r(f17131j, downloadTask, false);
        }
    }

    public void s(Long... lArr) {
        try {
            if (System.currentTimeMillis() - this.f17141g > this.f17140f || System.currentTimeMillis() - this.f17141g < 0) {
                org.greenrobot.eventbus.c.f().o(new l(null, 8));
                this.f17141g = System.currentTimeMillis();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void t(DownloadTask downloadTask) {
        downloadTask.setStatus(2);
        downloadTask.setSpeed("0");
        org.greenrobot.eventbus.c.f().o(new l(downloadTask, 2));
    }

    public void u(DownloadTask downloadTask) {
        if (com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val()) == null || downloadTask.getStatus() == 7 || downloadTask.getStatus() == 6 || downloadTask.getStatus() == 5) {
            return;
        }
        g1.f.G().f0(downloadTask, 3);
        downloadTask.setStatus(3);
        org.greenrobot.eventbus.c.f().o(new l(downloadTask, 3));
        org.greenrobot.eventbus.c.f().o(new j(downloadTask.getCrc_link_type_val(), 38));
        com.join.android.app.common.servcie.b.b(f17131j, downloadTask, Event.downloadStop);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 3000)
    public void w() {
        x();
    }
}
