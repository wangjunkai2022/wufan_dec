package com.join.android.app.common.servcie;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.MApplication;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.b1;
import com.join.mgps.Util.c0;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.t0;
import com.join.mgps.activity.ModGameIndexActivity;
import com.join.mgps.activity.MyFragmentActivity1;
import com.join.mgps.activity.PapaPlugGuideActivity_;
import com.join.mgps.activity.mygame.dialog.UnzipFailedDialog_;
import com.join.mgps.db.tables.DownloadHistoryTable;
import com.join.mgps.dto.BootPageData;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.HomeViewSwich;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.SearchDataBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.event.l;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.receiver.BootReceiver_;
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
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* loaded from: classes.dex */
public class DownloadBaseActivity extends MyFragmentActivity1 {
    private static final String TAG = "DownloadBaseActivity";
    private static Context context;
    static ScheduledFuture future;
    private static boolean recovery;
    private BroadcastReceiver apkInstalDownDataOrObbRecverReceiver_;
    private BroadcastReceiver downloadbygameRecverReceiver_;
    k mScreenStatusReceiver;
    private BroadcastReceiver onConnectivityChangedReceiver_;
    PrefDef_ prefDef;
    BootReceiver_ receiver;
    com.join.mgps.rpc.d recommendClient;
    private static ScheduledExecutorService scheduler = Executors.newScheduledThreadPool(1);
    private static Handler mHandler = new b();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private IntentFilter intentFilter2_ = new IntentFilter();
    private BroadcastReceiver apkInstalRecverReceiver_ = null;
    private IntentFilter intentFilter3_ = new IntentFilter();
    private IntentFilter intentFilter4_ = new IntentFilter();
    boolean mScreenPowerStatus = true;
    long screenOffTime = 0;
    HashMap<String, DownloadTask> lastRemovedDownloadTasks = new HashMap<>();
    Handler handlerdelay = new i();
    boolean isWifi = false;
    boolean activityHasdestroy = false;
    private int delay = 1000;
    private long lastDelay = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.join.android.app.common.utils.f.k(DownloadBaseActivity.context)) {
                if (com.join.android.app.common.utils.f.l()) {
                    DownloadBaseActivity.mHandler.sendEmptyMessage(0);
                    DownloadBaseActivity.future.cancel(true);
                    return;
                }
                return;
            }
            DownloadBaseActivity.future.cancel(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b extends Handler {
        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 0) {
                DownloadBaseActivity.restartOnlyWifiDownloadTask();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c extends BroadcastReceiver {
        c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DownloadBaseActivity.this.apkInstalRecver(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d extends BroadcastReceiver {
        d() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DownloadBaseActivity.this.downloadbygameRecver(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e extends BroadcastReceiver {
        e() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DownloadBaseActivity.this.onConnectivityChanged(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class f extends BroadcastReceiver {
        f() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DownloadBaseActivity.this.apkInstalDownDataOrObbRecver(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class g implements Callback<ResultMainBean<List<DetailResultBean>>> {
        g() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultMainBean<List<DetailResultBean>>> call, Throwable th) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResultMainBean<List<DetailResultBean>>> call, Response<ResultMainBean<List<DetailResultBean>>> response) {
            ResultMainBean<List<DetailResultBean>> body = response.body();
            if (body == null || body.getFlag() == 0) {
                if (body != null) {
                    body.getFlag();
                    return;
                }
                return;
            }
            List<DetailResultBean> data = body.getMessages().getData();
            if (data.size() != 0) {
                DownloadBaseActivity.this.startDown(data.get(0));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class h implements Callback<ResultMainBean<List<SearchDataBean>>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f17124a;

        h(String str) {
            this.f17124a = str;
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultMainBean<List<SearchDataBean>>> call, Throwable th) {
        }

        /* JADX WARN: Removed duplicated region for block: B:100:0x0216 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:107:0x003a A[SYNTHETIC] */
        @Override // retrofit2.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onResponse(retrofit2.Call<com.join.mgps.dto.ResultMainBean<java.util.List<com.join.mgps.dto.SearchDataBean>>> r14, retrofit2.Response<com.join.mgps.dto.ResultMainBean<java.util.List<com.join.mgps.dto.SearchDataBean>>> r15) {
            /*
                Method dump skipped, instructions count: 560
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.common.servcie.DownloadBaseActivity.h.onResponse(retrofit2.Call, retrofit2.Response):void");
        }
    }

    /* loaded from: classes.dex */
    class i extends Handler {
        i() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            DownloadBaseActivity.this.restartDownloadTask();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.join.android.app.common.utils.f.l()) {
                DownloadBaseActivity.restartAllNetDownloadTask();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class k extends BroadcastReceiver {
        private k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.SCREEN_ON".equals(intent.getAction())) {
                long currentTimeMillis = System.currentTimeMillis();
                DownloadBaseActivity downloadBaseActivity = DownloadBaseActivity.this;
                if (currentTimeMillis - downloadBaseActivity.screenOffTime > 240000) {
                    downloadBaseActivity.handlerdelay.sendEmptyMessageDelayed(1, 3000L);
                }
            } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                DownloadBaseActivity.this.screenOffTime = System.currentTimeMillis();
            }
        }

        /* synthetic */ k(DownloadBaseActivity downloadBaseActivity, b bVar) {
            this();
        }
    }

    private static synchronized void download(DownloadTask downloadTask, boolean z3) {
        synchronized (DownloadBaseActivity.class) {
            downloadStart(downloadTask, z3);
        }
    }

    private static synchronized void downloadStart(DownloadTask downloadTask, boolean z3) {
        synchronized (DownloadBaseActivity.class) {
            StringBuilder sb = new StringBuilder();
            sb.append("method downloadStart called.");
            sb.append(downloadTask.getName());
            sb.append(";url=");
            sb.append(downloadTask.getUrl());
            if (!d2.h(downloadTask.getUrl()) && com.join.android.app.common.servcie.b.a(context, downloadTask)) {
                com.join.android.app.common.servcie.a.e().m(context, downloadTask, z3);
            }
        }
    }

    private void initRecviver() {
        if (this.mScreenStatusReceiver == null) {
            this.mScreenStatusReceiver = new k(this, null);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            registerReceiver(this.mScreenStatusReceiver, intentFilter);
        }
        if (this.receiver == null) {
            this.receiver = new BootReceiver_();
            IntentFilter intentFilter2 = new IntentFilter();
            intentFilter2.addAction(BootReceiver_.f51451a);
            intentFilter2.addAction(BootReceiver_.f51452b);
            intentFilter2.addAction(BootReceiver_.f51454d);
            intentFilter2.addAction(BootReceiver_.f51453c);
            intentFilter2.addAction(BootReceiver_.f51456f);
            intentFilter2.addDataScheme("package");
            intentFilter2.setPriority(Integer.MAX_VALUE);
            context.registerReceiver(this.receiver, intentFilter2);
        }
        this.intentFilter1_.addAction(f1.a.f65490n);
        this.intentFilter2_.addAction(f1.a.f65492o);
        this.intentFilter3_.addAction(f1.a.f65494p);
        this.intentFilter4_.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        this.intentFilter4_.addAction("android.net.wifi.STATE_CHANGE");
        this.intentFilter4_.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.intentFilter4_.addAction("android.net.wifi.SCAN_RESULTS");
        if (this.apkInstalRecverReceiver_ == null) {
            c cVar = new c();
            this.apkInstalRecverReceiver_ = cVar;
            context.registerReceiver(cVar, this.intentFilter2_);
        }
        if (this.downloadbygameRecverReceiver_ == null) {
            d dVar = new d();
            this.downloadbygameRecverReceiver_ = dVar;
            context.registerReceiver(dVar, this.intentFilter3_);
        }
        if (this.onConnectivityChangedReceiver_ == null) {
            e eVar = new e();
            this.onConnectivityChangedReceiver_ = eVar;
            context.registerReceiver(eVar, this.intentFilter4_);
        }
        if (this.apkInstalDownDataOrObbRecverReceiver_ == null) {
            f fVar = new f();
            this.apkInstalDownDataOrObbRecverReceiver_ = fVar;
            context.registerReceiver(fVar, this.intentFilter1_);
        }
    }

    private boolean isAppOnForeground() {
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

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void restartAllNetDownloadTask() {
        synchronized (DownloadBaseActivity.class) {
            if (recovery) {
                return;
            }
            recovery = true;
            List<DownloadTask> a02 = g1.f.G().a0();
            if (a02 != null && a02.size() != 0) {
                for (DownloadTask downloadTask : a02) {
                    try {
                        downloadTask.setDownType(UtilsMy.h0(context, downloadTask));
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
                    download(downloadTask, false);
                }
                recovery = false;
                return;
            }
            recovery = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void restartDownloadTask() {
        if (this.activityHasdestroy) {
            return;
        }
        boolean booleanValue = this.prefDef.isOnlyWifiReconnect().e(Boolean.TRUE).booleanValue();
        List<DownloadTask> b02 = g1.f.G().b0();
        if (b02 != null && b02.size() > 0) {
            for (DownloadTask downloadTask : b02) {
                try {
                    downloadTask.setDownType(UtilsMy.h0(context, downloadTask));
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
                    Context context2 = context;
                    if (context2 != null) {
                        if (com.join.android.app.common.utils.f.k(context2)) {
                            if (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 6 || downloadTask.getStatus() == 10 || downloadTask.getStatus() == 1) {
                                downloadTask.setStatus(0);
                                g1.f.G().update(downloadTask);
                                download(downloadTask, false);
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
                    download(downloadTask, false);
                }
                if (downloadTask.getStatus() != 12 && downloadTask.getStatus() != 13) {
                    if (downloadTask.getStatus() == 48) {
                        if (!d2.i(downloadTask.getGameZipPath()) && !d2.i(downloadTask.getPath())) {
                            g1.f.G().n(downloadTask.getCrc_link_type_val());
                        }
                        if (d2.h(downloadTask.getGameZipPath())) {
                            downloadTask.setGameZipPath(downloadTask.getPath());
                        }
                        com.join.android.app.common.utils.a.g0(this).v(this, downloadTask.getGameZipPath());
                    }
                }
                if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.apk.name())) {
                    com.join.android.app.common.servcie.a.e().r(context, downloadTask, true);
                } else {
                    com.join.android.app.common.servcie.a.e().r(context, downloadTask, false);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void restartOnlyWifiDownloadTask() {
        synchronized (DownloadBaseActivity.class) {
            if (!com.join.android.app.common.utils.f.k(context)) {
                recovery = false;
            } else if (!recovery) {
                recovery = true;
                List<DownloadTask> a02 = g1.f.G().a0();
                if (a02 != null && a02.size() != 0) {
                    for (DownloadTask downloadTask : a02) {
                        try {
                            downloadTask.setDownType(UtilsMy.h0(context, downloadTask));
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
                        download(downloadTask, false);
                    }
                    recovery = false;
                    return;
                }
                recovery = false;
            }
        }
    }

    private synchronized void retryOnSomeTime() {
        if (com.join.android.app.common.utils.f.k(context)) {
            if (future != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("scheduler status:: isDone =");
                sb.append(future.isDone());
                sb.append(";furture.isCancelled=");
                sb.append(future.isCancelled());
            }
            ScheduledFuture scheduledFuture = future;
            if (scheduledFuture == null || scheduledFuture.isDone() || future.isCancelled()) {
                future = scheduler.scheduleWithFixedDelay(new a(), 5L, 10L, TimeUnit.SECONDS);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:69:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void sendPointVolcanno(java.lang.String r17, java.lang.String r18, java.lang.String r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.common.servcie.DownloadBaseActivity.sendPointVolcanno(java.lang.String, java.lang.String, java.lang.String, boolean):void");
    }

    public static void updatezipProgress(DownloadTask downloadTask) {
        DownloadTask f4;
        if (downloadTask == null || (f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val())) == null) {
            return;
        }
        f4.setProgress(downloadTask.getProgress());
        org.greenrobot.eventbus.c.f().o(new l(downloadTask, 8));
    }

    void apkInstalDownDataOrObbRecver(Intent intent) {
        String stringExtra = intent.getStringExtra("apkpath");
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setFlags(268435456);
        intent2.setAction("android.intent.action.VIEW");
        com.join.android.app.common.utils.a.g0(context).y(context, stringExtra);
    }

    void apkInstalRecver(Intent intent) {
        String stringExtra = intent.getStringExtra("packageName");
        String stringExtra2 = intent.getStringExtra("actionFrom");
        StringBuilder sb = new StringBuilder();
        sb.append("method apkInstalRecver() called.packageName=");
        sb.append(stringExtra);
        sb.append("  actionFrom=");
        sb.append(stringExtra2);
        if (stringExtra2.equals(BootReceiver_.f51451a)) {
            changeDownloadState(1, stringExtra);
        } else if (stringExtra2.equals(BootReceiver_.f51452b)) {
            if (TextUtils.equals(stringExtra, "xyz.aethersx2.android")) {
                return;
            }
            changeDownloadState(2, stringExtra);
        } else if (stringExtra2.equals(BootReceiver_.f51454d)) {
            changeDownloadState(3, stringExtra);
        } else if (stringExtra2.equals(BootReceiver_.f51453c)) {
            if ("com.join.android.app.mgsim.wufun.addon".equals(stringExtra)) {
                APKUtils.t(context);
            }
            if (TextUtils.equals(stringExtra, "xyz.aethersx2.android")) {
                changeDownloadState(2, stringExtra);
            }
        } else {
            BootReceiver_.f51455e.equals(stringExtra2);
        }
    }

    void backH5Downloadgame(String str) {
        try {
            com.join.mgps.rpc.impl.c.P1().O1().H0(RequestBeanUtil.getInstance(this).getAppDataBackRequest(new String[]{str})).enqueue(new h(str));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void changeDownloadState(int i2, String str) {
        if (i2 == 1) {
            try {
                if (com.join.android.app.common.utils.f.j(this)) {
                    backH5Downloadgame(str);
                } else {
                    HashMap<String, DownloadTask> hashMap = this.lastRemovedDownloadTasks;
                    if (hashMap != null && hashMap.containsKey(str)) {
                        DownloadTask downloadTask = this.lastRemovedDownloadTasks.get(str);
                        downloadTask.setOpenTime(System.currentTimeMillis());
                        g1.f.G().m(downloadTask);
                        this.lastRemovedDownloadTasks.remove(str);
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        for (DownloadTask downloadTask2 : g1.f.G().d()) {
            if (str.equals(downloadTask2.getPackageName()) && (downloadTask2.getFileType().equals(Dtype.android.name()) || downloadTask2.getFileType().equals(Dtype.chajian.name()))) {
                if (i2 != 1) {
                    if (i2 == 2 && !Dtype.MOD.name().equals(downloadTask2.getFileType())) {
                        t0.c("app卸载");
                        t0.c("downloadTask status=" + downloadTask2.getStatus() + "  5是finish状态");
                        if (11 == downloadTask2.getStatus()) {
                            t0.c("downloadTask 安装状态");
                            downloadTask2.setStatus(5);
                            g1.f.G().f0(downloadTask2, downloadTask2.getStatus());
                            org.greenrobot.eventbus.c.f().o(new l(downloadTask2, 5));
                            DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask2.getCrc_link_type_val());
                            if (f4 != null) {
                                f4.setStatus(5);
                            }
                        } else {
                            t0.c("收到删除广播");
                            DownloadTask f5 = com.join.android.app.common.servcie.a.e().f(downloadTask2.getCrc_link_type_val());
                            if (!this.lastRemovedDownloadTasks.containsKey(downloadTask2.getPackageName())) {
                                this.lastRemovedDownloadTasks.put(downloadTask2.getPackageName(), downloadTask2);
                            }
                            if (f5 != null) {
                                com.join.android.app.common.servcie.a.e().k(f5.getCrc_link_type_val());
                            }
                            com.php25.PDownload.d.a(downloadTask2);
                        }
                    }
                } else {
                    downloadTask2.setStatus(5);
                    if (downloadTask2.getRomType() != null && !downloadTask2.getFileType().equals(Dtype.chajian.name())) {
                        DownloadHistoryTable p3 = n1.k.n().p(downloadTask2.getCrc_link_type_val());
                        if (p3 != null) {
                            p3.setCreate_time(System.currentTimeMillis());
                        } else {
                            p3 = new DownloadHistoryTable();
                            p3.setCrc_link_type_val(downloadTask2.getCrc_link_type_val());
                            p3.setCreate_time(System.currentTimeMillis());
                        }
                        n1.k.n().m(p3);
                        UtilsMy.b2(this, downloadTask2.getCrc_link_type_val());
                        PrefDef_ prefDef_ = new PrefDef_(context);
                        prefDef_.lastInstallAppFinish().g(downloadTask2.getCrc_link_type_val());
                        prefDef_.lastInstallApp().g("");
                    } else {
                        try {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(context).k(context, downloadTask2.getPackageName());
                            if (k4 != null) {
                                downloadTask2.setVer(k4.d() + "");
                                downloadTask2.setVer_name(k4.e());
                            }
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                    }
                    try {
                        DownloadTask f6 = com.join.android.app.common.servcie.a.e().f(downloadTask2.getCrc_link_type_val());
                        if (f6 != null) {
                            f6.setStatus(5);
                        }
                    } catch (Exception e6) {
                        e6.printStackTrace();
                    }
                    g1.f.G().f0(downloadTask2, downloadTask2.getStatus());
                    downloadTask2.setStatus(5);
                    com.join.android.app.common.servcie.b.b(context, downloadTask2, Event.installAndroidCompleted);
                    t0.c("downloadTask status=" + downloadTask2.getStatus() + " Event.installAndroidCompleted");
                    org.greenrobot.eventbus.c.f().o(new l(downloadTask2, 5));
                    try {
                        File file = new File(downloadTask2.getPath());
                        if (file.exists()) {
                            UtilsMy.delete(file);
                        }
                    } catch (Exception e7) {
                        e7.printStackTrace();
                    }
                }
            }
        }
    }

    void downloadbygameRecver(Intent intent) {
        getDetailData(intent.getStringExtra("gameId"));
    }

    @Override // android.app.Activity
    public void finish() {
        k kVar = this.mScreenStatusReceiver;
        if (kVar != null) {
            unregisterReceiver(kVar);
            this.mScreenStatusReceiver = null;
        }
        super.finish();
    }

    void getDetailData(String str) {
        if (com.join.android.app.common.utils.f.j(context)) {
            try {
                com.join.mgps.rpc.impl.c.P1().O1().R(RequestBeanUtil.getInstance(context).getAppDetialBean(str, 0, null)).enqueue(new g());
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    void onConnectivityChanged(Intent intent) {
        try {
            String action = intent.getAction();
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action) || action.equals("android.net.wifi.STATE_CHANGE") || action.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                boolean j4 = com.join.android.app.common.utils.f.j(context);
                StringBuilder sb = new StringBuilder();
                sb.append("网络状态：");
                sb.append(j4);
                if (com.join.android.app.common.utils.f.k(context)) {
                    if (!this.prefDef.isFightActivity().d().booleanValue()) {
                        this.prefDef.isWifiConnectedBefore().g(Boolean.TRUE);
                    }
                    this.isWifi = true;
                } else {
                    if (!this.prefDef.isFightActivity().d().booleanValue()) {
                        this.prefDef.isWifiConnectedBefore().g(Boolean.FALSE);
                    }
                    this.isWifi = false;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("wifi状态：");
                sb2.append(com.join.android.app.common.utils.f.k(context));
                StringBuilder sb3 = new StringBuilder();
                sb3.append("移动网络状态：");
                sb3.append(com.join.android.app.common.utils.f.i(context));
                StringBuilder sb4 = new StringBuilder();
                sb4.append("网络连接类型：");
                sb4.append(com.join.android.app.common.utils.f.c(context));
                retryOnSomeTime();
                scheduler.execute(new j());
            }
            if (action.equals("android.net.wifi.SCAN_RESULTS")) {
                if (this.prefDef.isFightActivity().d().booleanValue()) {
                    return;
                }
                this.prefDef.isWifiConnectedBefore().g(Boolean.TRUE);
            } else if (action.equals("android.net.wifi.WIFI_STATE_CHANGED")) {
                StringBuilder sb5 = new StringBuilder();
                sb5.append("android.net.wifi.WIFI_STATE_CHANGED | ");
                sb5.append(intent.getIntExtra("wifi_state", -1));
                sb5.append(" | ");
                sb5.append(intent.getIntExtra("previous_wifi_state", -1));
                if (this.prefDef.isFightActivity().d().booleanValue()) {
                    return;
                }
                if (intent.getIntExtra("wifi_state", -1) == 0 || intent.getIntExtra("wifi_state", -1) == 1) {
                    this.prefDef.isWifiConnectedBefore().g(Boolean.FALSE);
                }
            } else if (!action.equals("android.net.wifi.STATE_CHANGE") || this.prefDef.isFightActivity().d().booleanValue()) {
            } else {
                this.prefDef.isWifiConnectedBefore().g(Boolean.TRUE);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        context = getApplicationContext();
        this.activityHasdestroy = false;
        if (b1.b(this) < 26 || Build.VERSION.SDK_INT < 26) {
            return;
        }
        this.recommendClient = com.join.mgps.rpc.impl.c.P1();
        initRecviver();
        c0.a().d(this);
        this.prefDef = new PrefDef_(context);
        List<DownloadTask> d4 = g1.f.G().d();
        if (d4 != null && d4.size() > 0) {
            for (DownloadTask downloadTask : d4) {
                if (downloadTask.getGameZipPath() != null && downloadTask.getFileType().equals(Dtype.apk) && !new File(downloadTask.getGameZipPath()).exists()) {
                    g1.f.G().delete((g1.f) downloadTask);
                }
            }
            d4.clear();
        }
        this.handlerdelay.sendEmptyMessageDelayed(1, 5000L);
    }

    public void onDelete(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        g1.f.G().delete((g1.f) downloadTask);
        com.join.android.app.common.servcie.a.e().b(downloadTask.getCrc_link_type_val());
        org.greenrobot.eventbus.c.f().o(new l(downloadTask, 7));
        org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.j(downloadTask.getCrc_link_type_val(), 38));
    }

    @Override // com.join.mgps.activity.MyFragmentActivity1, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        BootReceiver_ bootReceiver_;
        this.activityHasdestroy = true;
        if (!this.isBackHome) {
            p.l(context).e();
            try {
                if (b1.b(this) >= 26 && Build.VERSION.SDK_INT >= 26) {
                    if (c0.a().b(this)) {
                        c0.a().e(this);
                    }
                    try {
                        k kVar = this.mScreenStatusReceiver;
                        if (kVar != null) {
                            unregisterReceiver(kVar);
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    try {
                        if (!this.isBackHome && (bootReceiver_ = this.receiver) != null) {
                            unregisterReceiver(bootReceiver_);
                        }
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    try {
                        BroadcastReceiver broadcastReceiver = this.apkInstalDownDataOrObbRecverReceiver_;
                        if (broadcastReceiver != null) {
                            unregisterReceiver(broadcastReceiver);
                        }
                    } catch (Exception e6) {
                        e6.printStackTrace();
                    }
                    try {
                        BroadcastReceiver broadcastReceiver2 = this.apkInstalRecverReceiver_;
                        if (broadcastReceiver2 != null) {
                            unregisterReceiver(broadcastReceiver2);
                        }
                    } catch (Exception e7) {
                        e7.printStackTrace();
                    }
                    try {
                        BroadcastReceiver broadcastReceiver3 = this.downloadbygameRecverReceiver_;
                        if (broadcastReceiver3 != null) {
                            unregisterReceiver(broadcastReceiver3);
                        }
                    } catch (Exception e8) {
                        e8.printStackTrace();
                    }
                    try {
                        BroadcastReceiver broadcastReceiver4 = this.onConnectivityChangedReceiver_;
                        if (broadcastReceiver4 != null) {
                            unregisterReceiver(broadcastReceiver4);
                        }
                    } catch (Exception e9) {
                        e9.printStackTrace();
                    }
                    sendBroadcast(new Intent("com.intent.downloadService.destroyed"));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDownloadEvent(com.join.mgps.event.i iVar) {
        StringBuilder sb = new StringBuilder();
        sb.append("method onDownloadEvent called.event=");
        sb.append(iVar.getType());
        if (b1.b(this) < 26 || Build.VERSION.SDK_INT < 26) {
            return;
        }
        DownloadTask a4 = iVar.a();
        int type = iVar.getType();
        if (type != 39) {
            switch (type) {
                case 14:
                    download(a4, true);
                    return;
                case 15:
                    com.join.android.app.common.servcie.a.e().n(a4);
                    return;
                case 16:
                    com.join.android.app.common.servcie.a.e().c(context, a4);
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
        org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.j(a4.getCrc_link_type_val(), 36));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDownloadRuntimeEvent(com.join.mgps.event.j jVar) {
        DownloadTask f4;
        StringBuilder sb = new StringBuilder();
        sb.append("method onRuntimeEvent called.");
        sb.append(jVar.getType());
        if (b1.b(this) < 26 || Build.VERSION.SDK_INT < 26 || (f4 = com.join.android.app.common.servcie.a.e().f(jVar.a())) == null) {
            return;
        }
        if (jVar.getType() != 33) {
            f4.setRuntimeStatus(new AtomicInteger(jVar.getType()));
        }
        if (jVar.getType() == 41) {
            p l4 = p.l(context);
            l4.H1("STATUS_RUNTIME_SIZE_MISMATCH,gameId=" + jVar.a() + ";realSize=" + f4.getSize() + ";atcualSize=" + f4.getActual_size());
            return;
        }
        int type = jVar.getType();
        if (type == 20) {
            onStart(f4);
        } else if (type == 29) {
            f4.setStatus(10);
            org.greenrobot.eventbus.c.f().o(new l(f4, 10));
            f4.setRuntimeStatus(new AtomicInteger(38));
        } else if (type == 45) {
            i2.a(context).b("文件出错，重新下载中");
        } else if (type != 46) {
            switch (type) {
                case 31:
                case 36:
                    onFinish(f4);
                    return;
                case 32:
                    onError(f4);
                    return;
                case 33:
                    onProgressUpdate(new Long[0]);
                    return;
                case 34:
                    onDelete(f4);
                    return;
                case 35:
                    onStop(f4);
                    return;
                default:
                    return;
            }
        } else {
            t0.d("unzipfailedxx", "recived failed");
            if (!(MApplication.f9223q.getActivity() instanceof ModGameIndexActivity)) {
                ((UnzipFailedDialog_.IntentBuilder_) UnzipFailedDialog_.intent(context).from(1).gameId(f4.getCrc_link_type_val()).flags(268435456)).start();
            }
            com.join.android.app.common.servcie.a.e().k(f4.getCrc_link_type_val());
        }
    }

    public void onError(DownloadTask downloadTask) {
        UtilsMy.J1(context, downloadTask, true);
        g1.f.G().f0(downloadTask, 6);
        downloadTask.setStatus(6);
        org.greenrobot.eventbus.c.f().o(new l(downloadTask, 6));
        org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.j(downloadTask.getCrc_link_type_val(), 38));
        retryOnSomeTime();
    }

    public void onFinish(DownloadTask downloadTask) {
        ExtBean extBean;
        ExtBean extBean2;
        t0.c(" permissxx   onfinish");
        downloadTask.setDuration(downloadTask.getSize() / downloadTask.getDuration());
        downloadTask.setCurrentSize((long) (Double.parseDouble(downloadTask.getShowSize()) * 1024.0d * 1024.0d));
        if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.chajian.name())) {
            com.join.android.app.common.servcie.b.b(context, downloadTask, Event.downloadPlugCompleted);
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
            int intValue = this.prefDef.insatllAppFirst().d().intValue();
            String d4 = this.prefDef.insatllAppFirstData().d();
            if (intValue > 0 && d2.i(d4) && isAppOnForeground()) {
                BootPageData bootPageData = (BootPageData) JsonMapper.getInstance().fromJson(d4, BootPageData.class);
                if (bootPageData != null && bootPageData.getGame_setup_boot() != null && downloadTask.getDown_type() == 0) {
                    ((PapaPlugGuideActivity_.c) PapaPlugGuideActivity_.I0(context).a(1).flags(268435456)).b(downloadTask.getCrc_link_type_val()).start();
                    this.prefDef.insatllAppFirst().g(Integer.valueOf(intValue - 1));
                } else if (ConstantIntEnum.PS2.value() == Integer.parseInt(downloadTask.getPlugin_num())) {
                    com.join.android.app.common.servcie.a.e().q(context, downloadTask);
                } else if (downloadTask.getDown_type() == 2) {
                    if (com.join.android.app.common.utils.h.r(context, downloadTask, false, new String[0])) {
                        return;
                    }
                    com.join.android.app.common.servcie.a.e().q(context, downloadTask);
                } else {
                    com.join.android.app.common.utils.a.g0(context).y(context, path);
                }
            } else if (ConstantIntEnum.PS2.value() == Integer.parseInt(downloadTask.getPlugin_num())) {
                com.join.android.app.common.servcie.a.e().q(context, downloadTask);
            } else if (downloadTask.getDown_type() == 2) {
                if (com.join.android.app.common.utils.h.r(context, downloadTask, false, new String[0])) {
                    return;
                }
                com.join.android.app.common.servcie.a.e().q(context, downloadTask);
            } else {
                com.join.android.app.common.utils.a.g0(context).v(this, path);
            }
        } else if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.apk.name())) {
            com.join.android.app.common.servcie.b.b(context, downloadTask, Event.gameDownloadCompleted);
            com.join.android.app.common.servcie.a.e().r(context, downloadTask, true);
        } else if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.android.name()) && !APKUtils.I(downloadTask)) {
            if (Build.VERSION.SDK_INT < 30 && (downloadTask.getRomType().equals(Dtype.androidobb.name()) || downloadTask.getRomType().equals(Dtype.androiddata.name()) || downloadTask.getRomType().equals(Dtype.androidobbdata.name()))) {
                com.join.android.app.common.servcie.b.b(context, downloadTask, Event.gameDownloadCompleted);
                com.join.android.app.common.servcie.a.e().r(context, downloadTask, false);
                return;
            }
            com.join.android.app.common.servcie.b.b(context, downloadTask, Event.gameDownloadCompleted);
            com.join.android.app.common.servcie.b.b(context, downloadTask, Event.gameDownload);
            String ext = downloadTask.getExt();
            if (d2.i(ext) && (extBean2 = (ExtBean) JsonMapper.getInstance().fromJson(ext, ExtBean.class)) != null) {
                String recPosition = extBean2.getRecPosition();
                if (d2.i(recPosition)) {
                    sendPointVolcanno(recPosition, downloadTask.getCrc_link_type_val(), extBean2.getVolcanoOther(), UtilsMy.F1(downloadTask.getTipBeans()));
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
            int intValue2 = this.prefDef.insatllAppFirst().d().intValue();
            String d5 = this.prefDef.insatllAppFirstData().d();
            if (intValue2 > 0 && d2.i(d5) && isAppOnForeground()) {
                BootPageData bootPageData2 = (BootPageData) JsonMapper.getInstance().fromJson(d5, BootPageData.class);
                if (bootPageData2 != null && bootPageData2.getGame_setup_boot() != null) {
                    ((PapaPlugGuideActivity_.c) PapaPlugGuideActivity_.I0(context).a(1).flags(268435456)).b(downloadTask.getCrc_link_type_val()).start();
                    this.prefDef.insatllAppFirst().g(Integer.valueOf(intValue2 - 1));
                } else {
                    com.join.android.app.common.utils.a.g0(context).v(this, path2);
                }
            } else {
                com.join.android.app.common.utils.a.g0(context).v(this, path2);
            }
            downloadTask.setGameZipPath(path2);
            downloadTask.setStatus(11);
            UtilsMy.R2(context, downloadTask, 11);
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
                com.join.android.app.common.servcie.b.b(context, downloadTask, Event.gameDownloadCompleted);
                com.join.android.app.common.servcie.b.b(context, downloadTask, Event.gameDownload);
                String ext2 = downloadTask.getExt();
                if (d2.i(ext2) && (extBean = (ExtBean) JsonMapper.getInstance().fromJson(ext2, ExtBean.class)) != null) {
                    String recPosition2 = extBean.getRecPosition();
                    if (d2.i(recPosition2)) {
                        sendPointVolcanno(recPosition2, downloadTask.getCrc_link_type_val(), extBean.getVolcanoOther(), UtilsMy.F1(downloadTask.getTipBeans()));
                    }
                }
                if (downloadTask.getTask_down_type() != 0 && downloadTask.getTask_down_type() != 2) {
                    com.join.android.app.common.utils.a.g0(context);
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
                    int intValue3 = this.prefDef.insatllAppFirst().d().intValue();
                    String d6 = this.prefDef.insatllAppFirstData().d();
                    if (intValue3 > 0 && d2.i(d6) && isAppOnForeground()) {
                        BootPageData bootPageData3 = (BootPageData) JsonMapper.getInstance().fromJson(d6, BootPageData.class);
                        if (bootPageData3 != null && bootPageData3.getGame_setup_boot() != null && !E) {
                            ((PapaPlugGuideActivity_.c) PapaPlugGuideActivity_.I0(context).a(1).flags(268435456)).b(downloadTask.getCrc_link_type_val()).start();
                            this.prefDef.insatllAppFirst().g(Integer.valueOf(intValue3 - 1));
                        } else {
                            com.join.android.app.common.utils.a.g0(context).v(this, path3);
                        }
                    } else {
                        com.join.android.app.common.utils.a.g0(context).v(this, path3);
                    }
                    downloadTask.setGameZipPath(path3);
                }
                UtilsMy.R2(context, downloadTask, 5);
                com.join.android.app.common.servcie.a.e().k(downloadTask.getCrc_link_type_val());
                return;
            }
            com.join.android.app.common.servcie.b.b(context, downloadTask, Event.gameDownloadCompleted);
            com.join.android.app.common.servcie.a.e().r(context, downloadTask, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.MyFragmentActivity1, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    public void onProgressUpdate(Long... lArr) {
        try {
            if (System.currentTimeMillis() - this.lastDelay > this.delay || System.currentTimeMillis() - this.lastDelay < 0) {
                org.greenrobot.eventbus.c.f().o(new l(null, 8));
                this.lastDelay = System.currentTimeMillis();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void onStart(DownloadTask downloadTask) {
        downloadTask.setStatus(2);
        downloadTask.setSpeed("0");
        org.greenrobot.eventbus.c.f().o(new l(downloadTask, 2));
    }

    public void onStop(DownloadTask downloadTask) {
        if (com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val()) == null || downloadTask.getStatus() == 7 || downloadTask.getStatus() == 6 || downloadTask.getStatus() == 5) {
            return;
        }
        g1.f.G().f0(downloadTask, 3);
        downloadTask.setStatus(3);
        org.greenrobot.eventbus.c.f().o(new l(downloadTask, 3));
        org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.j(downloadTask.getCrc_link_type_val(), 38));
        com.join.android.app.common.servcie.b.b(context, downloadTask, Event.downloadStop);
    }

    void startDown(DetailResultBean detailResultBean) {
        DownloadTask downloadtaskDown;
        if (detailResultBean == null || (downloadtaskDown = detailResultBean.getDownloadtaskDown()) == null) {
            return;
        }
        UtilsMy.d1(downloadtaskDown, detailResultBean);
        if (UtilsMy.n0(downloadtaskDown.getPay_game_amount(), downloadtaskDown.getCrc_link_type_val()) > 0) {
            UtilsMy.m3(context, downloadtaskDown.getCrc_link_type_val());
        } else if (UtilsMy.T0(context, downloadtaskDown)) {
        } else {
            if (detailResultBean.getDown_status() == 5) {
                UtilsMy.R0(context, downloadtaskDown);
            } else {
                UtilsMy.F0(context, downloadtaskDown, downloadtaskDown.getTp_down_url(), downloadtaskDown.getOther_down_switch(), downloadtaskDown.getCdn_down_switch());
            }
        }
    }
}
