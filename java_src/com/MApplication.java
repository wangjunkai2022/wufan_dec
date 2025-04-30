package com;

import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.multidex.MultiDex;
import com.danikula.videocache.i;
import com.join.android.app.common.http.DNSDataResult;
import com.join.android.app.common.http.MiitHelper;
import com.join.android.app.common.servcie.DownloadService_;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.j;
import com.join.android.app.component.album.lib.ImageLoader;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a2;
import com.join.mgps.Util.b1;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.f0;
import com.join.mgps.Util.l0;
import com.join.mgps.Util.q0;
import com.join.mgps.Util.q1;
import com.join.mgps.Util.t0;
import com.join.mgps.Util.u;
import com.join.mgps.Util.y1;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.join.mgps.activity.login.LoginCfgsBean;
import com.join.mgps.ad.l;
import com.join.mgps.dialog.DownloadHighSpeedingDialog_;
import com.join.mgps.dialog.x1;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.GameHeadAd;
import com.join.mgps.dto.HomeViewSwich;
import com.join.mgps.dto.MessageRedPointBean;
import com.join.mgps.dto.PlayCfgBean;
import com.join.mgps.dto.PublicVideoCfgBean;
import com.join.mgps.dto.SimulatorAdPlayConfig;
import com.join.mgps.dto.SimulatorAdPlayRecord;
import com.join.mgps.dto.SimulatorRunAdTextCfgBean;
import com.join.mgps.dto.SingleGameRunAdTextCfgBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.pref.h;
import com.join.mgps.service.CommonService_;
import com.join.mgps.va.overmind.VApp;
import com.mob.MobSDK;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.k;
import com.papa.sim.statistic.q;
import com.papa91.arc.CContext;
import com.papa91.arc.bean.RequestHeaders;
import com.papa91.arc.ext.ToastManager;
import com.papa91.wrapper.UserPrefs;
import com.psk.eventmodule.net.util.DeviceIdUtil;
import com.umeng.analytics.MobclickAgent;
import com.umeng.commonsdk.UMConfigure;
import com.xinzhu.overmind.Overmind;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import tv.danmaku.ijk.media.player.IjkMediaMeta;
/* loaded from: classes.dex */
public class MApplication extends VApp implements Application.ActivityLifecycleCallbacks, ViewModelStoreOwner {
    public static HomeViewSwich I;
    public static LoginCfgsBean J;

    /* renamed from: s0  reason: collision with root package name */
    public static List<SimulatorRunAdTextCfgBean> f9228s0;

    /* renamed from: t0  reason: collision with root package name */
    public static SingleGameRunAdTextCfgBean f9230t0;

    /* renamed from: u0  reason: collision with root package name */
    public static PublicVideoCfgBean f9232u0;

    /* renamed from: x0  reason: collision with root package name */
    public static com.join.android.app.common.servcie.a f9238x0;

    /* renamed from: y  reason: collision with root package name */
    public static String f9239y;

    /* renamed from: z  reason: collision with root package name */
    public static String f9241z;

    /* renamed from: f  reason: collision with root package name */
    private List<Activity> f9243f = new LinkedList();

    /* renamed from: g  reason: collision with root package name */
    boolean f9244g = false;

    /* renamed from: h  reason: collision with root package name */
    private final BroadcastReceiver f9245h = new c();

    /* renamed from: i  reason: collision with root package name */
    private i f9246i;

    /* renamed from: j  reason: collision with root package name */
    private Activity f9247j;

    /* renamed from: k  reason: collision with root package name */
    private ViewModelStore f9248k;

    /* renamed from: l  reason: collision with root package name */
    CContext.IVideoAdListener f9249l;

    /* renamed from: m  reason: collision with root package name */
    l f9250m;

    /* renamed from: n  reason: collision with root package name */
    com.join.mgps.ad.d f9251n;

    /* renamed from: o  reason: collision with root package name */
    private static final String f9219o = MApplication.class.getSimpleName();

    /* renamed from: p  reason: collision with root package name */
    public static boolean f9221p = true;

    /* renamed from: q  reason: collision with root package name */
    public static MApplication f9223q = null;

    /* renamed from: r  reason: collision with root package name */
    public static String f9225r = "";

    /* renamed from: s  reason: collision with root package name */
    public static String f9227s = "";

    /* renamed from: t  reason: collision with root package name */
    public static String f9229t = "";

    /* renamed from: u  reason: collision with root package name */
    public static String f9231u = "";

    /* renamed from: v  reason: collision with root package name */
    public static String f9233v = "";

    /* renamed from: w  reason: collision with root package name */
    public static int f9235w = 0;

    /* renamed from: x  reason: collision with root package name */
    public static String f9237x = "";
    public static String A = "";
    public static String B = "0";
    public static String C = "";
    public static MessageRedPointBean.MessagesBean.DataBean D = null;
    public static boolean E = false;
    public static String F = "";
    public static int G = 0;
    public static int H = 0;
    public static boolean K = false;

    /* renamed from: n0  reason: collision with root package name */
    public static boolean f9218n0 = false;

    /* renamed from: o0  reason: collision with root package name */
    public static int f9220o0 = 0;

    /* renamed from: p0  reason: collision with root package name */
    public static GameHeadAd f9222p0 = null;

    /* renamed from: q0  reason: collision with root package name */
    public static Bitmap f9224q0 = null;

    /* renamed from: r0  reason: collision with root package name */
    public static boolean f9226r0 = false;

    /* renamed from: v0  reason: collision with root package name */
    public static int f9234v0 = 2;

    /* renamed from: w0  reason: collision with root package name */
    public static String f9236w0 = "";

    /* renamed from: y0  reason: collision with root package name */
    public static boolean f9240y0 = false;

    /* renamed from: z0  reason: collision with root package name */
    public static boolean f9242z0 = false;

    /* loaded from: classes.dex */
    class a extends Thread {
        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            MApplication.this.sendBroadcast(new Intent(f1.a.f65504u));
            try {
                if (new PrefDef_(MApplication.f9223q).firstShowUserPermiss().d().booleanValue()) {
                    return;
                }
                MApplication.this.r();
                MApplication.this.y();
            } catch (Exception unused) {
            }
        }
    }

    /* loaded from: classes.dex */
    class b implements MiitHelper.a {
        b() {
        }

        @Override // com.join.android.app.common.http.MiitHelper.a
        public void a(@NonNull String str) {
            if (!d2.i(str)) {
                str = "";
            }
            MApplication.A = str;
            q.f(MApplication.f9223q).s(MApplication.A);
            MApplication.this.y();
        }
    }

    /* loaded from: classes.dex */
    class c extends BroadcastReceiver {
        c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            UtilsMy.a3(MApplication.this.getApplicationContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements CContext.IVideoAdListener {

        /* renamed from: a  reason: collision with root package name */
        PlayCfgBean f9255a;

        /* renamed from: b  reason: collision with root package name */
        PlayCfgBean f9256b;

        /* renamed from: c  reason: collision with root package name */
        SharedPreferences f9257c;

        /* renamed from: e  reason: collision with root package name */
        x1 f9259e;

        /* renamed from: d  reason: collision with root package name */
        long f9258d = 0;

        /* renamed from: f  reason: collision with root package name */
        int f9260f = 0;

        /* renamed from: g  reason: collision with root package name */
        int f9261g = 0;

        /* renamed from: h  reason: collision with root package name */
        long f9262h = 0;

        /* renamed from: i  reason: collision with root package name */
        boolean f9263i = false;

        /* renamed from: j  reason: collision with root package name */
        boolean f9264j = false;

        /* loaded from: classes2.dex */
        class a implements x1.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f9266a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f9267b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ AccountBean f9268c;

            a(String str, int i2, AccountBean accountBean) {
                this.f9266a = str;
                this.f9267b = i2;
                this.f9268c = accountBean;
            }

            @Override // com.join.mgps.dialog.x1.a
            public void a() {
                Intent intent = new Intent("com.tools.AdBroadcast");
                intent.putExtra("playCfg", d.this.f9256b);
                intent.putExtra("gameId", this.f9266a);
                intent.putExtra(NoticeTopAnimActivityDialog_.f34402n, this.f9267b);
                intent.putExtra("adCount", d.this.f9260f);
                intent.putExtra("howTimes", d.this.f9261g);
                intent.putExtra("close", d.this.f9264j);
                intent.putExtra("action", 1005);
                MApplication.this.sendBroadcast(intent);
                d dVar = d.this;
                if (dVar.f9264j) {
                    MApplication.this.z(Event.Customgoldfinger_AdUnnecessary_Vedio.name(), this.f9266a);
                } else {
                    MApplication.this.z(Event.Customgoldfinger_AdMust_Vedio.name(), this.f9266a);
                }
            }

            @Override // com.join.mgps.dialog.x1.a
            public void b(boolean z3) {
                Intent intent = new Intent();
                intent.setAction("com.emu.ad.result");
                intent.putExtra(DownloadHighSpeedingDialog_.a.f47372b, 1008);
                HashMap hashMap = new HashMap();
                hashMap.put(NoticeTopAnimActivityDialog_.f34402n, Integer.valueOf(this.f9267b));
                hashMap.put("close", Boolean.valueOf(z3));
                intent.putExtra(MGMainActivity.KEY_EXTRAS, JsonMapper.toJsonString(hashMap));
                MApplication.f9223q.sendBroadcast(intent);
                if (d.this.f9260f > 0) {
                    d dVar = d.this;
                    new UserPrefs(MApplication.f9223q).setGoldFingerAdGamesConfig(this.f9266a, this.f9268c.getUid() + "", dVar.f9261g + 1, dVar.f9260f);
                }
            }

            @Override // com.join.mgps.dialog.x1.a
            public void onShow() {
                d dVar = d.this;
                if (dVar.f9264j) {
                    MApplication.this.z(Event.Customgoldfinger_AdUnnecessary_Pop.name(), this.f9266a);
                } else {
                    MApplication.this.z(Event.Customgoldfinger_AdMust_Pop.name(), this.f9266a);
                }
            }
        }

        d() {
            this.f9257c = MApplication.this.getSharedPreferences("PrefDef", 4);
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x009f  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00c2  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00ce  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x00fe  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x0119  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x0127  */
        /* JADX WARN: Removed duplicated region for block: B:71:? A[RETURN, SYNTHETIC] */
        @Override // com.papa91.arc.CContext.IVideoAdListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void loadAd(android.app.Activity r14, java.lang.String r15) {
            /*
                Method dump skipped, instructions count: 345
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.MApplication.d.loadAd(android.app.Activity, java.lang.String):void");
        }

        @Override // com.papa91.arc.CContext.IVideoAdListener
        public void showAd(Activity activity, String str, String str2) {
            List<SimulatorAdPlayRecord> list;
            com.join.mgps.ad.d dVar;
            String string = this.f9257c.getString("simulator_play_records", "");
            SimulatorAdPlayRecord simulatorAdPlayRecord = null;
            SimulatorAdPlayConfig simulatorAdPlayConfig = d2.i(string) ? (SimulatorAdPlayConfig) JsonMapper.getInstance().fromJson(string, SimulatorAdPlayConfig.class) : null;
            if (simulatorAdPlayConfig == null) {
                simulatorAdPlayConfig = new SimulatorAdPlayConfig();
                simulatorAdPlayConfig.setRecord_time(System.currentTimeMillis());
            }
            if (this.f9255a != null) {
                if (CContext.SCENE_FC.equals(str2)) {
                    simulatorAdPlayRecord = simulatorAdPlayConfig.getPlayConfig(simulatorAdPlayConfig.getSimulator_fc_cfg(), this.f9255a.getSdk_type());
                    if (simulatorAdPlayConfig.getSimulator_fc_cfg() == null) {
                        simulatorAdPlayConfig.setSimulator_fc_cfg(new ArrayList());
                    }
                    list = simulatorAdPlayConfig.getSimulator_fc_cfg();
                } else if (CContext.SCENE_FBA.equals(str2)) {
                    simulatorAdPlayRecord = simulatorAdPlayConfig.getPlayConfig(simulatorAdPlayConfig.getSimulator_jj_cfg(), this.f9255a.getSdk_type());
                    if (simulatorAdPlayConfig.getSimulator_jj_cfg() == null) {
                        simulatorAdPlayConfig.setSimulator_jj_cfg(new ArrayList());
                    }
                    list = simulatorAdPlayConfig.getSimulator_jj_cfg();
                } else if (CContext.SCENE_GBA.equals(str2)) {
                    simulatorAdPlayRecord = simulatorAdPlayConfig.getPlayConfig(simulatorAdPlayConfig.getSimulator_gba_cfg(), this.f9255a.getSdk_type());
                    if (simulatorAdPlayConfig.getSimulator_gba_cfg() == null) {
                        simulatorAdPlayConfig.setSimulator_gba_cfg(new ArrayList());
                    }
                    list = simulatorAdPlayConfig.getSimulator_gba_cfg();
                } else if (CContext.SCENE_PSP.equals(str2)) {
                    simulatorAdPlayRecord = simulatorAdPlayConfig.getPlayConfig(simulatorAdPlayConfig.getSimulator_psp_cfg(), this.f9255a.getSdk_type());
                    if (simulatorAdPlayConfig.getSimulator_psp_cfg() == null) {
                        simulatorAdPlayConfig.setSimulator_psp_cfg(new ArrayList());
                    }
                    list = simulatorAdPlayConfig.getSimulator_psp_cfg();
                } else {
                    list = null;
                }
                if (simulatorAdPlayRecord == null) {
                    list.add(new SimulatorAdPlayRecord(this.f9255a.getSdk_type(), 1, (int) Double.parseDouble(this.f9255a.getProbability())));
                } else {
                    simulatorAdPlayRecord.add();
                }
                this.f9257c.edit().putString("simulator_play_records", JsonMapper.toJsonString(simulatorAdPlayConfig)).commit();
                if (this.f9255a.getSdk_type() == 1) {
                    Intent intent = new Intent("com.tools.AdBroadcast");
                    intent.putExtra("gameId", str);
                    intent.putExtra("action", 1002);
                    MApplication.this.sendBroadcast(intent);
                } else if (this.f9255a.getSdk_type() != 2 || (dVar = MApplication.this.f9251n) == null) {
                } else {
                    dVar.q(activity, str);
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x00d5  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x011c  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x01ce  */
        /* JADX WARN: Type inference failed for: r11v3 */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r11v5, types: [boolean] */
        @Override // com.papa91.arc.CContext.IVideoAdListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void showGoldAdDialog(android.app.Activity r18, java.lang.String r19, int r20) {
            /*
                Method dump skipped, instructions count: 639
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.MApplication.d.showGoldAdDialog(android.app.Activity, java.lang.String, int):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e extends l {
        e(Context context, String str, String str2) {
            super(context, str, str2);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void a(String str, int i2, int i4) {
            super.a(str, i2, i4);
            MApplication.this.z(Event.Emu_PatchAd_Close.name(), str);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void b(boolean z3) {
            super.b(z3);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onADClick() {
            super.onADClick();
            MApplication.this.z(Event.Emu_PatchAd_Click.name(), this.f38643f);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onADShow() {
            super.onADShow();
            MApplication.this.z(Event.Emu_PatchAd_Pop.name(), this.f38643f);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onInitSuccess() {
            super.onInitSuccess();
            h(false);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onVideoCached() {
            super.onVideoCached();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class f extends com.join.mgps.ad.d {
        f(Context context, String str, String str2) {
            super(context, str, str2);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void a(String str, int i2, int i4) {
            super.a(str, i2, i4);
            MApplication.this.z(Event.Emu_PatchAd_Close.name(), str);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void b(boolean z3) {
            super.b(z3);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onADClick() {
            super.onADClick();
            MApplication.this.z(Event.Emu_PatchAd_Click.name(), this.f38643f);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onADShow() {
            super.onADShow();
            MApplication.this.z(Event.Emu_PatchAd_Pop.name(), this.f38643f);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onInitSuccess() {
            super.onInitSuccess();
            h(false);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onVideoCached() {
            super.onVideoCached();
        }
    }

    static String m(Context context) {
        String str = null;
        try {
            if (context.getExternalCacheDir() != null) {
                str = context.getExternalCacheDir().getCanonicalPath();
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        if (TextUtils.isEmpty(str)) {
            return Environment.getExternalStorageDirectory() + "/yg";
        }
        return str;
    }

    public static Context n() {
        return f9223q;
    }

    private PlayCfgBean o(List<PlayCfgBean> list, int i2) {
        if (list == null || list.size() <= i2) {
            return null;
        }
        return list.get(i2);
    }

    public static i p(Context context) {
        MApplication mApplication = (MApplication) context.getApplicationContext();
        i iVar = mApplication.f9246i;
        if (iVar == null) {
            i x3 = mApplication.x();
            mApplication.f9246i = x3;
            return x3;
        }
        return iVar;
    }

    private void s() {
        d dVar = new d();
        this.f9249l = dVar;
        CContext.setVideoAdListener(dVar);
    }

    private i x() {
        return new i.b(this).i(IjkMediaMeta.AV_CH_STEREO_RIGHT).h(20).b();
    }

    public void A(Activity activity, String str) {
        l lVar = this.f9250m;
        if (lVar != null) {
            lVar.q(activity, str);
        }
    }

    @Override // com.join.mgps.va.overmind.VApp, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        MultiDex.install(context);
    }

    public Activity getActivity() {
        return this.f9247j;
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    @NonNull
    public ViewModelStore getViewModelStore() {
        return this.f9248k;
    }

    public void k(Activity activity) {
        this.f9243f.add(activity);
    }

    public void l() {
        for (Activity activity : this.f9243f) {
            activity.finish();
        }
        this.f9243f.clear();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        this.f9247j = activity;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.f9247j = activity;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        this.f9247j = activity;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    @Override // com.join.mgps.va.overmind.VApp, com.papa91.arc.MApplication, com.papa91.arc.BuglyApplication, android.app.Application
    public void onCreate() {
        super.onCreate();
        this.f9248k = new ViewModelStore();
        UMConfigure.preInit(this, "55af129367e58e94ba0025b7", "channel_1028");
        f9238x0 = com.join.android.app.common.servcie.a.e();
        B = !com.join.mgps.va.overmind.e.f52358n.e() ? "0" : "1";
        f9223q = this;
        ToastManager.init(this);
        String a4 = com.join.android.app.common.utils.i.a(this);
        StringBuilder sb = new StringBuilder();
        sb.append("packageName:");
        sb.append(getPackageName());
        sb.append(", process:");
        sb.append(a4);
        sb.append(", ");
        sb.append(g());
        s();
        if (!f() && (g() || a4.startsWith(Overmind.getPluginPkg()))) {
            if (Overmind.get().isVirtualProcess()) {
                this.f9244g = true;
                u.e(f9223q);
                try {
                    if (!a4.startsWith(Overmind.getPluginPkg())) {
                        g1.e.d(f9223q).b("mgdb");
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                q1.a(f9223q);
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("before onCreate:processName");
            sb2.append(getPackageName());
            sb2.append(",");
            sb2.append(a4);
            return;
        }
        registerActivityLifecycleCallbacks(this);
        f9238x0 = com.join.android.app.common.servcie.a.e();
        u.e(f9223q);
        try {
            g1.e.d(f9223q).b("mgdb");
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        q1.a(f9223q);
        y1.T0 = false;
        ImageLoader.u(this);
        com.join.android.app.component.optimizetext.a.m(this);
        HomeViewSwich w3 = h.n(this).w();
        if (w3 != null) {
            I = w3;
        }
        LoginCfgsBean J2 = h.n(this).J();
        if (w3 != null) {
            J = J2;
        }
        if (b1.b(this) < 26 || Build.VERSION.SDK_INT < 26) {
            DownloadService_.M(getApplicationContext()).a();
        }
        new a().start();
        com.join.android.app.common.exception.a.e().j(this);
        t0.c("applicationcreatFinish time =" + System.currentTimeMillis());
        try {
            if (!new PrefDef_(this).firstShowUserPermiss().d().booleanValue()) {
                UMConfigure.init(this, "55af129367e58e94ba0025b7", "channel_1028", 1, null);
                MobclickAgent.setPageCollectionMode(MobclickAgent.PageMode.AUTO);
                MobSDK.init(this, "563efaa5a8fe", "47378ac7ef1e9db5870c9cf62ee34a1d");
                com.join.android.app.common.utils.h.o(this);
                a2.b(this);
                try {
                    new MiitHelper(new b()).getDeviceIds(this);
                } catch (Exception e6) {
                    e6.printStackTrace();
                }
            }
        } catch (Exception unused) {
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.intent.downloadService.destroyed");
        registerReceiver(this.f9245h, intentFilter);
        try {
            String c4 = h.n(this).c();
            if (d2.i(c4)) {
                C = c4;
                ((DNSDataResult) JsonMapper.getInstance().fromJson(c4, DNSDataResult.class)).updateRpcConstant();
            }
        } catch (Exception e7) {
            e7.printStackTrace();
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("after onCreate()");
        sb3.append(System.currentTimeMillis());
    }

    @Override // android.app.Application
    public void onTerminate() {
        super.onTerminate();
        if (!this.f9244g) {
            unregisterReceiver(this.f9245h);
        }
        System.exit(0);
    }

    public String q() {
        return f9236w0;
    }

    public void r() {
        try {
            q0.j(getApplicationContext(), 1);
            String i2 = j.n(f9223q).i();
            f9225r = i2;
            try {
                f9225r = com.join.mgps.Util.a.d(i2, "");
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            f9227s = k.a(f9223q);
            String y3 = h.n(this).y();
            if (!"".equals(f9227s) && !"0".equals(f9227s) && !"-1".equals(f9227s) && "".equals(y3)) {
                h.n(this).m0(f9227s);
            }
            h.n(this).l0(f9227s);
            String e5 = j.n(f9223q).e(f9223q);
            f9239y = e5;
            try {
                f9241z = e5;
                f9239y = com.join.mgps.Util.a.d(e5, "");
            } catch (Exception e6) {
                e6.printStackTrace();
            }
            String o3 = j.n(f9223q).o();
            f9229t = o3;
            try {
                f9229t = com.join.mgps.Util.a.d(o3, "");
            } catch (Exception e7) {
                e7.printStackTrace();
            }
            String e8 = l0.e();
            f9231u = e8;
            try {
                f9231u = com.join.mgps.Util.a.d(e8, "");
                f9233v = com.join.mgps.Util.a.d(Build.MODEL, "");
            } catch (Exception e9) {
                e9.printStackTrace();
            }
            f9237x = Build.VERSION.RELEASE;
            f9235w = com.constant.a.b(f9223q);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void t(Context context, String str, String str2) {
        if (this.f9251n == null && d2.i(str)) {
            f fVar = new f(context, str, str2);
            this.f9251n = fVar;
            fVar.e();
            return;
        }
        this.f9251n.h(false);
    }

    public void u(Context context, String str, String str2) {
        if (this.f9250m == null && d2.i(str)) {
            e eVar = new e(context, str, str2);
            this.f9250m = eVar;
            eVar.e();
            return;
        }
        this.f9250m.h(false);
    }

    public void v(Context context, PlayCfgBean playCfgBean) {
        t(context, playCfgBean.getSdk_key(), playCfgBean.getAd_id());
    }

    public void w(Context context, PlayCfgBean playCfgBean) {
        u(context, playCfgBean.getSdk_key(), playCfgBean.getAd_id());
    }

    public void y() {
        String b4;
        String H2 = h.n(this).H();
        try {
            if (d2.h(H2)) {
                String str = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + ".papakey";
                b4 = "";
                if (new File(str).exists()) {
                    b4 = com.join.mgps.Util.k.b((ContextCompat.checkSelfPermission(f9223q, "android.permission.WRITE_EXTERNAL_STORAGE") == 0 ? f0.x(f9223q, str) : "").getBytes());
                }
            } else {
                b4 = com.join.mgps.Util.k.b(H2.getBytes());
            }
            if (d2.h(f9237x) || d2.h(f9227s) || d2.h(f9239y)) {
                r();
            }
            RequestHeaders requestHeaders = new RequestHeaders();
            requestHeaders.setWufankey(b4);
            requestHeaders.setWf_d(f9225r);
            requestHeaders.setWf_a(f9239y);
            requestHeaders.setWf_ad(f9227s);
            requestHeaders.setWf_m(f9229t);
            requestHeaders.setWf_i(f9231u);
            requestHeaders.setWf_pm(f9233v);
            requestHeaders.setAndroid_ver(f9237x);
            requestHeaders.setWf_o(A);
            requestHeaders.setArm64(B);
            requestHeaders.setWf_single(f9235w);
            h.n(f9223q).p0(JsonMapper.toJsonString(requestHeaders));
            DeviceIdUtil deviceIdUtil = DeviceIdUtil.getInstance(f9223q);
            deviceIdUtil.setOaid(A);
            deviceIdUtil.setImei(f9225r);
            deviceIdUtil.setUmengKey(UMConfigure.getUMIDString(f9223q));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void z(String str, String str2) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint");
        intent.putExtra(CommonService_.a0.f51746b, str);
        intent.putExtra("gameId", str2);
        sendBroadcast(intent);
    }
}
