package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.MainThread;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdConfig;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTSplashAd;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.video.EmptyControlVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.db.tables.ShowViewDataBeanTable;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.FirstIntentData;
import com.join.mgps.dto.ShowViewDataBean;
import com.join.mgps.dto.SplashIntentBean;
import com.join.mgps.dto.ThAdSwitchDataBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.service.CommonService;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.androidannotations.annotations.sharedpreferences.Pref;
@EActivity(R.layout.splash_main_layout)
/* loaded from: classes3.dex */
public class SplashActivity extends Activity {
    public static final String B = "SplashActivity";
    private static final String C = "点击跳过 %d";
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    FrameLayout f35745a;

    /* renamed from: b  reason: collision with root package name */
    EmptyControlVideoView f35746b;

    /* renamed from: c  reason: collision with root package name */
    SimpleDraweeView f35747c;

    /* renamed from: d  reason: collision with root package name */
    RelativeLayout f35748d;

    /* renamed from: e  reason: collision with root package name */
    ImageView f35749e;
    @Pref

    /* renamed from: f  reason: collision with root package name */
    PrefDef_ f35750f;

    /* renamed from: g  reason: collision with root package name */
    TextView f35751g;

    /* renamed from: h  reason: collision with root package name */
    TextView f35752h;

    /* renamed from: i  reason: collision with root package name */
    View f35753i;
    @StringRes(resName = "net_excption")

    /* renamed from: j  reason: collision with root package name */
    String f35754j;
    @StringRes(resName = "connect_server_excption")

    /* renamed from: k  reason: collision with root package name */
    String f35755k;
    @Extra

    /* renamed from: l  reason: collision with root package name */
    ThAdSwitchDataBean f35756l;
    @ViewById(R.id.splash_holder)

    /* renamed from: m  reason: collision with root package name */
    ImageView f35757m;
    @ViewById(R.id.skip_view)

    /* renamed from: n  reason: collision with root package name */
    TextView f35758n;

    /* renamed from: s  reason: collision with root package name */
    private com.join.mgps.adapter.r2 f35763s;

    /* renamed from: t  reason: collision with root package name */
    private FirstIntentData f35764t;

    /* renamed from: z  reason: collision with root package name */
    private TTAdNative f35770z;

    /* renamed from: o  reason: collision with root package name */
    private int f35759o = 2000;

    /* renamed from: p  reason: collision with root package name */
    private long f35760p = 0;

    /* renamed from: q  reason: collision with root package name */
    public boolean f35761q = false;

    /* renamed from: r  reason: collision with root package name */
    private boolean f35762r = false;

    /* renamed from: u  reason: collision with root package name */
    int f35765u = 4;

    /* renamed from: v  reason: collision with root package name */
    private Handler f35766v = new a();

    /* renamed from: w  reason: collision with root package name */
    private boolean f35767w = false;

    /* renamed from: x  reason: collision with root package name */
    private boolean f35768x = false;

    /* renamed from: y  reason: collision with root package name */
    private int f35769y = 1;
    ShowViewDataBean A = null;

    /* loaded from: classes3.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                if (SplashActivity.this.f35767w) {
                    return;
                }
                SplashActivity.this.z();
            } else if (i2 == 2) {
                if (SplashActivity.this.f35767w) {
                    return;
                }
                TextView textView = SplashActivity.this.f35751g;
                textView.setText("跳过(" + SplashActivity.this.f35765u + "S)");
                TextView textView2 = SplashActivity.this.f35752h;
                textView2.setText("跳过(" + SplashActivity.this.f35765u + "S)");
                SplashActivity splashActivity = SplashActivity.this;
                int i4 = splashActivity.f35765u;
                if (i4 > 1) {
                    splashActivity.f35765u = i4 - 1;
                    if (splashActivity.f35766v != null) {
                        SplashActivity.this.f35766v.sendEmptyMessageDelayed(2, 1000L);
                    }
                }
            } else if (i2 != 3) {
                if (i2 == 4 && !SplashActivity.this.f35767w) {
                    SplashActivity.this.f35751g.setText("跳过");
                    SplashActivity.this.f35752h.setText("跳过");
                    SplashActivity splashActivity2 = SplashActivity.this;
                    int i5 = splashActivity2.f35765u;
                    if (i5 > 1) {
                        splashActivity2.f35765u = i5 - 1;
                        if (splashActivity2.f35766v != null) {
                            SplashActivity.this.f35766v.sendEmptyMessageDelayed(4, 1000L);
                        }
                    }
                }
            } else if (SplashActivity.this.f35764t != null && SplashActivity.this.f35764t.isCustomApk() && SplashActivity.this.f35764t.isIntent()) {
                IntentDateBean intentDateBean = SplashActivity.this.f35764t.getIntentDateBean();
                intentDateBean.setFrom("splash");
                if (SplashActivity.this.f35764t.isAutoDownload()) {
                    intentDateBean.setObject(Boolean.TRUE);
                }
                SplashActivity splashActivity3 = SplashActivity.this;
                splashActivity3.A(splashActivity3.f35764t.getIntentDateBean());
            } else {
                SplashActivity.this.z();
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SplashActivity.this.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ShowViewDataBean f35773a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SplashIntentBean f35774b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ IntentDateBean f35775c;

        c(ShowViewDataBean showViewDataBean, SplashIntentBean splashIntentBean, IntentDateBean intentDateBean) {
            this.f35773a = showViewDataBean;
            this.f35774b = splashIntentBean;
            this.f35775c = intentDateBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f35773a.getIs_force().equals("1")) {
                this.f35773a.setTag_show(2);
                n1.i0.n().m(this.f35773a.getShowVieDatabeanTable());
                SplashActivity.this.f35750f.lastClickPageAD().g(this.f35773a.getId() + "");
                SplashActivity.this.f35750f.isShowSplash().g(Boolean.valueOf(SplashActivity.this.o()));
            }
            SplashActivity.this.u(new com.papa.sim.statistic.e(this.f35774b.getCrc_link_type_val(), "spreadButton", this.f35774b.getJump_id() + "", this.f35774b.getTitle() + ""), true);
            String str = this.f35773a.getStrategy_id() + "_" + this.f35774b.getTitle() + "_" + this.f35774b.getJump_id();
            com.papa.sim.statistic.p.l(SplashActivity.this).K1(Event.onclickScreenAds, new Ext().setNodeId(str).setReMarks(str));
            this.f35774b.setTag_show(2);
            n1.i0.n().m(this.f35773a.getShowVieDatabeanTable());
            SplashActivity.this.f35767w = true;
            SplashActivity.this.f35750f.isShowSplash().g(Boolean.valueOf(SplashActivity.this.o()));
            SplashActivity.this.A(this.f35775c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends l1.m {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SplashIntentBean f35777a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ShowViewDataBean f35778b;

        d(SplashIntentBean splashIntentBean, ShowViewDataBean showViewDataBean) {
            this.f35777a = splashIntentBean;
            this.f35778b = showViewDataBean;
        }

        @Override // l1.m, c2.h
        public void J(String str, Object... objArr) {
            int duration = SplashActivity.this.f35746b.getDuration();
            SplashActivity splashActivity = SplashActivity.this;
            splashActivity.f35765u = duration / 1000;
            if (splashActivity.f35766v != null) {
                SplashActivity.this.f35766v.sendEmptyMessage(4);
            }
        }

        @Override // l1.m, c2.h
        public void b0(String str, Object... objArr) {
            IntentDateBean intentDataBean = this.f35777a.getIntentDataBean();
            if (this.f35778b.getIs_force().equals("1")) {
                this.f35778b.setTag_show(2);
                n1.i0.n().m(this.f35778b.getShowVieDatabeanTable());
                SplashActivity.this.f35750f.lastClickPageAD().g(this.f35778b.getId() + "");
                SplashActivity.this.f35750f.isShowSplash().g(Boolean.valueOf(SplashActivity.this.o()));
            }
            SplashActivity.this.u(new com.papa.sim.statistic.e(this.f35777a.getCrc_link_type_val(), "spreadButton", this.f35777a.getJump_id() + "", this.f35777a.getTitle() + ""), true);
            String str2 = this.f35778b.getStrategy_id() + "_" + this.f35777a.getTitle() + "_" + this.f35777a.getJump_id();
            com.papa.sim.statistic.p.l(SplashActivity.this).K1(Event.onclickScreenAds, new Ext().setNodeId(str2).setReMarks(str2));
            this.f35777a.setTag_show(2);
            n1.i0.n().m(this.f35778b.getShowVieDatabeanTable());
            SplashActivity.this.f35767w = true;
            SplashActivity.this.f35750f.isShowSplash().g(Boolean.valueOf(SplashActivity.this.o()));
            SplashActivity.this.A(intentDataBean);
        }

        @Override // l1.m, c2.h
        public void q(String str, Object... objArr) {
            super.q(str, objArr);
            b0(str, objArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SplashActivity.this.f35746b.startPlayLogic();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SplashActivity.this.m();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements TTAdNative.SplashAdListener {

        /* loaded from: classes3.dex */
        class a implements TTSplashAd.AdInteractionListener {
            a() {
            }

            @Override // com.bytedance.sdk.openadsdk.TTSplashAd.AdInteractionListener
            public void onAdClicked(View view, int i2) {
            }

            @Override // com.bytedance.sdk.openadsdk.TTSplashAd.AdInteractionListener
            public void onAdShow(View view, int i2) {
            }

            @Override // com.bytedance.sdk.openadsdk.TTSplashAd.AdInteractionListener
            public void onAdSkip() {
                SplashActivity.this.m();
            }

            @Override // com.bytedance.sdk.openadsdk.TTSplashAd.AdInteractionListener
            public void onAdTimeOver() {
                SplashActivity.this.m();
            }
        }

        g() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.SplashAdListener, com.bytedance.sdk.openadsdk.common.CommonListener
        @MainThread
        public void onError(int i2, String str) {
            SplashActivity.this.m();
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.SplashAdListener
        @MainThread
        public void onSplashAdLoad(TTSplashAd tTSplashAd) {
            if (tTSplashAd == null) {
                return;
            }
            View splashView = tTSplashAd.getSplashView();
            if (splashView != null) {
                SplashActivity splashActivity = SplashActivity.this;
                if (splashActivity.f35745a != null && !splashActivity.isFinishing()) {
                    SplashActivity.this.f35745a.removeAllViews();
                    SplashActivity.this.f35745a.addView(splashView);
                    tTSplashAd.setSplashInteractionListener(new a());
                    com.papa.sim.statistic.p.l(SplashActivity.this).K1(Event.OpenScreenAd, new Ext());
                }
            }
            SplashActivity.this.m();
            tTSplashAd.setSplashInteractionListener(new a());
            com.papa.sim.statistic.p.l(SplashActivity.this).K1(Event.OpenScreenAd, new Ext());
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.SplashAdListener
        @MainThread
        public void onTimeout() {
            SplashActivity.this.m();
        }
    }

    private static TTAdConfig i(String str) {
        return new TTAdConfig.Builder().appId(str).useTextureView(true).appName("悟饭游戏厅_android").titleBarTheme(1).allowShowNotify(true).allowShowPageWhenScreenLock(true).debug(true).directDownloadNetworkType(4, 3).supportMultiProcess(false).build();
    }

    private static TTAdManager k(Context context, String str) {
        return TTAdSdk.init(context, i(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        if (isFinishing()) {
            return;
        }
        if (this.f35761q) {
            setResult(10001);
            finish();
            return;
        }
        this.f35761q = true;
    }

    private void n(Context context, String str) {
        TTAdManager k4 = k(context, str);
        k4.requestPermissionIfNecessary(context);
        this.f35770z = k4.createAdNative(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean o() {
        ShowViewDataBean showViewDataBean;
        ShowViewDataBean showViewDataBean2;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("splash isShowSplash");
            sb.append(System.currentTimeMillis());
            List<ShowViewDataBeanTable> d4 = n1.i0.n().d();
            ArrayList arrayList = new ArrayList();
            for (ShowViewDataBeanTable showViewDataBeanTable : d4) {
                arrayList.add(showViewDataBeanTable.getShowVieDatabean());
            }
            long currentTimeMillis = System.currentTimeMillis();
            showViewDataBean = null;
            showViewDataBean2 = null;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                ShowViewDataBean showViewDataBean3 = (ShowViewDataBean) arrayList.get(i2);
                String is_force = showViewDataBean3.getIs_force();
                if (is_force.equals("1") && showViewDataBean3.getTag_show() != 2) {
                    long parseLong = Long.parseLong(showViewDataBean3.getEnd_times()) * 1000;
                    if (currentTimeMillis > Long.parseLong(showViewDataBean3.getBegin_times()) * 1000 && currentTimeMillis < parseLong) {
                        showViewDataBean = showViewDataBean3;
                    }
                } else if (!is_force.equals("1")) {
                    long parseLong2 = Long.parseLong(showViewDataBean3.getEnd_times()) * 1000;
                    if (currentTimeMillis > Long.parseLong(showViewDataBean3.getBegin_times()) * 1000 && currentTimeMillis < parseLong2 && showViewDataBean3.getJump_info().size() > 0 && showViewDataBean3.getTag_show() != 2) {
                        showViewDataBean2 = showViewDataBean3;
                    }
                }
            }
        } catch (Exception unused) {
        }
        if (showViewDataBean != null) {
            return w(showViewDataBean);
        }
        if (showViewDataBean2 != null) {
            return w(showViewDataBean2);
        }
        return false;
    }

    private void p(String str) {
        s();
    }

    private void q(String str) {
        this.f35770z.loadSplashAd(new AdSlot.Builder().setCodeId(str).setImageAcceptedSize(1080, 1920).build(), new g(), 3000);
    }

    private void r() {
        if (this.f35761q) {
            m();
        } else {
            this.f35761q = true;
        }
    }

    private void t(String str, ShowViewDataBean showViewDataBean, SplashIntentBean splashIntentBean) {
        String pic_remote;
        SimpleDraweeView simpleDraweeView = new SimpleDraweeView(this);
        String pic_remote_local = splashIntentBean.getPic_remote_local();
        if (com.join.mgps.Util.d2.i(pic_remote_local)) {
            File file = new File(pic_remote_local);
            if (file.exists()) {
                pic_remote = MyImageLoader.F(file).toString();
            } else {
                pic_remote = splashIntentBean.getPic_remote();
            }
        } else {
            pic_remote = splashIntentBean.getPic_remote();
        }
        if (com.join.mgps.Util.d2.i(pic_remote)) {
            MyImageLoader.e(simpleDraweeView, R.drawable.alph, pic_remote, r.c.f12138a);
        }
        simpleDraweeView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f35746b.setThumbImageView(simpleDraweeView);
        this.f35746b.setUp(str, true, " ");
        this.f35746b.setVideoAllCallBack(new d(splashIntentBean, showViewDataBean));
        this.f35746b.setMute(true);
        this.f35766v.postDelayed(new e(), 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(com.papa.sim.statistic.e eVar, boolean z3) {
        eVar.j(AccountUtil_.getInstance_(this).getUid());
        com.papa.sim.statistic.p.l(this).v(eVar, z3);
    }

    void A(IntentDateBean intentDateBean) {
        intentDateBean.setFrom("splash");
        if (intentDateBean.getLink_type() != 3 || intentDateBean.getJump_type() != 1) {
            intentDateBean.setExtBean(new ExtBean(13201));
            IntentUtil.getInstance().intentActivity(this, intentDateBean);
            finish();
        }
        setResult(10001);
        com.join.mgps.Util.t0.c("startMainActivity  time =" + System.currentTimeMillis());
        finish();
    }

    void B() {
        com.join.mgps.Util.t0.c("startNow1  time =" + System.currentTimeMillis());
        setResult(10001);
        finish();
        com.join.mgps.Util.t0.c("startNow2  time =" + System.currentTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 100)
    public void C() {
        com.join.mgps.Util.t0.c("splashactivity  start finish time =" + System.currentTimeMillis());
        finish();
    }

    void D() {
        if (WifiUtils.getInstance(getApplicationContext()).isWifiEnable()) {
            this.f35750f.isWifiConnectedBefore().g(Boolean.TRUE);
        } else {
            this.f35750f.isWifiConnectedBefore().g(Boolean.FALSE);
        }
    }

    @AfterViews
    public void h() {
        try {
            ThAdSwitchDataBean thAdSwitchDataBean = this.f35756l;
            if (thAdSwitchDataBean != null && thAdSwitchDataBean.getFx_ad_switch() == 1) {
                int type = this.f35756l.getType();
                this.f35769y = type;
                if (type == 1) {
                    this.f35758n.setVisibility(8);
                    n(this, this.f35756l.getFx_sdk_key());
                    q(this.f35756l.getFx_ad_id());
                } else if (type == 2) {
                    this.f35758n.setVisibility(8);
                } else if (type == 3) {
                    this.f35758n.setVisibility(8);
                    p(this.f35756l.getFx_ad_id());
                } else if (type == 4) {
                    this.f35758n.setVisibility(8);
                }
            } else {
                PackageInfo packageInfo = null;
                View inflate = LayoutInflater.from(this).inflate(R.layout.splash_activity_layout, (ViewGroup) null);
                this.f35747c = (SimpleDraweeView) inflate.findViewById(R.id.viewImage);
                this.f35751g = (TextView) inflate.findViewById(R.id.countdown);
                this.f35752h = (TextView) inflate.findViewById(R.id.countdownVideo);
                this.f35753i = inflate.findViewById(R.id.countdownLayout);
                this.f35748d = (RelativeLayout) inflate.findViewById(R.id.bottomImag);
                this.f35749e = (ImageView) inflate.findViewById(R.id.imageView24);
                this.f35746b = (EmptyControlVideoView) inflate.findViewById(R.id.video_player);
                this.f35745a.addView(inflate);
                this.f35753i.setOnClickListener(new b());
                D();
                try {
                    packageInfo = getPackageManager().getPackageInfo(getPackageName(), 0);
                } catch (PackageManager.NameNotFoundException e4) {
                    e4.printStackTrace();
                }
                String str = packageInfo.versionName;
                StringBuilder sb = new StringBuilder();
                sb.append("splash afterview2");
                sb.append(System.currentTimeMillis());
                l();
            }
            com.papa.sim.statistic.p.l(this).C2(0, AccountUtil_.getInstance_(this).getUid());
            this.f35750f.plugHasUpdate().g(Boolean.FALSE);
            CommonService.I = false;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("splash afterview3");
            sb2.append(System.currentTimeMillis());
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    void j() {
        this.f35767w = true;
        z();
    }

    void l() {
        try {
            List<ShowViewDataBeanTable> d4 = n1.i0.n().d();
            ArrayList arrayList = new ArrayList();
            for (ShowViewDataBeanTable showViewDataBeanTable : d4) {
                arrayList.add(showViewDataBeanTable.getShowVieDatabean());
            }
            long currentTimeMillis = System.currentTimeMillis();
            new ArrayList();
            int i2 = 0;
            int i4 = 0;
            SplashIntentBean splashIntentBean = null;
            ShowViewDataBean showViewDataBean = null;
            SplashIntentBean splashIntentBean2 = null;
            while (true) {
                int i5 = 2;
                if (i4 >= arrayList.size()) {
                    break;
                }
                ShowViewDataBean showViewDataBean2 = (ShowViewDataBean) arrayList.get(i4);
                String is_force = showViewDataBean2.getIs_force();
                if (is_force.equals("1") && showViewDataBean2.getTag_show() != 2) {
                    long parseLong = Long.parseLong(showViewDataBean2.getEnd_times()) * 1000;
                    if (currentTimeMillis > Long.parseLong(showViewDataBean2.getBegin_times()) * 1000 && currentTimeMillis < parseLong && showViewDataBean2.getTag_show() != 2) {
                        splashIntentBean = showViewDataBean2.getJump_info().get(i2);
                        this.A = showViewDataBean2;
                    }
                } else if (!is_force.equals("1") && showViewDataBean2.getTag_show() != 2) {
                    long parseLong2 = Long.parseLong(showViewDataBean2.getEnd_times()) * 1000;
                    if (currentTimeMillis > Long.parseLong(showViewDataBean2.getBegin_times()) * 1000 && currentTimeMillis < parseLong2) {
                        List<SplashIntentBean> jump_info = showViewDataBean2.getJump_info();
                        if (jump_info.size() > 0) {
                            ArrayList arrayList2 = new ArrayList();
                            SplashIntentBean splashIntentBean3 = null;
                            for (SplashIntentBean splashIntentBean4 : jump_info) {
                                if (splashIntentBean4.getTag_show() != i5) {
                                    if (!this.f35750f.lastShowSplashImage().d().equals(splashIntentBean4.getVedio_url_local()) && !this.f35750f.lastShowSplashImage().d().equals(splashIntentBean4.getPic_remote_local())) {
                                        arrayList2.add(splashIntentBean4);
                                        showViewDataBean = showViewDataBean2;
                                    }
                                    splashIntentBean3 = splashIntentBean4;
                                }
                                i5 = 2;
                            }
                            if (arrayList2.size() == 0 && splashIntentBean3 != null) {
                                arrayList2.add(splashIntentBean3);
                                showViewDataBean = showViewDataBean2;
                            }
                            if (arrayList2.size() > 0) {
                                int nextInt = new Random().nextInt(arrayList2.size());
                                splashIntentBean2 = (SplashIntentBean) arrayList2.get(nextInt);
                                splashIntentBean2.setShowPosition(nextInt + 1);
                                if (!TextUtils.isEmpty(splashIntentBean2.getVedio_url_local())) {
                                    this.f35750f.lastShowSplashImage().g(splashIntentBean2.getVedio_url_local());
                                } else {
                                    this.f35750f.lastShowSplashImage().g(splashIntentBean2.getPic_remote_local());
                                }
                            }
                        }
                    }
                }
                i4++;
                i2 = 0;
            }
            if (splashIntentBean == null) {
                if (showViewDataBean != null) {
                    if (!TextUtils.isEmpty(splashIntentBean2.getVedio_url())) {
                        x(showViewDataBean, splashIntentBean2);
                    } else {
                        v(showViewDataBean, splashIntentBean2);
                    }
                    splashIntentBean2.setShow_time(System.currentTimeMillis());
                    n1.i0.n().m(showViewDataBean.getShowVieDatabeanTable());
                    return;
                }
                finish();
                return;
            }
            if (!TextUtils.isEmpty(splashIntentBean.getVedio_url())) {
                x(this.A, splashIntentBean);
            } else {
                v(this.A, splashIntentBean);
            }
            if (this.A.getTag_show() == 0) {
                this.A.setTag_show(2);
                n1.i0.n().m(this.A.getShowVieDatabeanTable());
                this.f35750f.isShowSplash().g(Boolean.valueOf(o()));
            } else if (this.A.getTag_show() == 1) {
                n1.i0.n().m(this.A.getShowVieDatabeanTable());
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        EmptyControlVideoView emptyControlVideoView = this.f35746b;
        if (emptyControlVideoView != null) {
            emptyControlVideoView.setVideoAllCallBack(null);
        }
        super.onBackPressed();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.f35750f.firstNewSplashV2().d().booleanValue() || (getIntent().getFlags() & 4194304) != 0) {
            setResult(10001);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        EmptyControlVideoView emptyControlVideoView = this.f35746b;
        if (emptyControlVideoView != null) {
            emptyControlVideoView.release();
        }
        Handler handler = this.f35766v;
        if (handler != null) {
            handler.removeMessages(2);
            this.f35766v.removeMessages(4);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4 || i2 == 3) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.app.Activity
    protected void onPause() {
        EmptyControlVideoView emptyControlVideoView;
        super.onPause();
        if (this.f35768x && (emptyControlVideoView = this.f35746b) != null) {
            emptyControlVideoView.onVideoPause();
        }
        this.f35768x = true;
        this.f35761q = false;
    }

    @Override // android.app.Activity
    protected void onResume() {
        EmptyControlVideoView emptyControlVideoView;
        super.onResume();
        if (this.f35768x && (emptyControlVideoView = this.f35746b) != null) {
            emptyControlVideoView.onVideoResume(false);
        }
        if (this.f35761q) {
            r();
        }
        this.f35761q = true;
    }

    public void s() {
        long currentTimeMillis = System.currentTimeMillis() - this.f35760p;
        int i2 = this.f35759o;
        this.f35766v.postDelayed(new f(), currentTimeMillis > ((long) i2) ? 0L : i2 - currentTimeMillis);
    }

    void v(ShowViewDataBean showViewDataBean, SplashIntentBean splashIntentBean) {
        try {
            String str = showViewDataBean.getStrategy_id() + "_" + splashIntentBean.getTitle() + "_" + splashIntentBean.getJump_id();
            com.papa.sim.statistic.p.l(this).K1(Event.FullScreenAds, new Ext().setPosition("0").setNodeId(str).setReMarks(str));
            this.f35747c.setVisibility(0);
            StringBuilder sb = new StringBuilder();
            sb.append("splash setimageback");
            sb.append(System.currentTimeMillis());
            this.f35751g.setVisibility(0);
            this.f35752h.setVisibility(8);
            this.f35749e.setVisibility(0);
            this.f35748d.setBackgroundColor(-1);
            Handler handler = this.f35766v;
            if (handler != null) {
                handler.sendEmptyMessage(2);
            }
            IntentDateBean intentDataBean = splashIntentBean.getIntentDataBean();
            u(new com.papa.sim.statistic.e(splashIntentBean.getCrc_link_type_val(), "spreadButton", splashIntentBean.getJump_id() + "", splashIntentBean.getTitle() + ""), false);
            this.f35747c.setOnClickListener(new c(showViewDataBean, splashIntentBean, intentDataBean));
            Handler handler2 = this.f35766v;
            if (handler2 != null) {
                handler2.sendEmptyMessageDelayed(1, 4000L);
            }
            String pic_remote_local = splashIntentBean.getPic_remote_local();
            if (com.join.mgps.Util.d2.i(pic_remote_local)) {
                File file = new File(pic_remote_local);
                if (file.exists()) {
                    MyImageLoader.e(this.f35747c, R.drawable.alph, MyImageLoader.F(file).toString(), r.c.f12144g);
                } else {
                    String pic_remote = splashIntentBean.getPic_remote();
                    if (com.join.mgps.Util.d2.i(pic_remote) && pic_remote.startsWith(com.facebook.common.util.f.f11765a)) {
                        MyImageLoader.d(this.f35747c, R.drawable.alph, pic_remote);
                    } else {
                        MyImageLoader.e(this.f35747c, R.drawable.alph, MyImageLoader.G(pic_remote).toString(), r.c.f12144g);
                    }
                }
            } else {
                String pic_remote2 = splashIntentBean.getPic_remote();
                if (com.join.mgps.Util.d2.i(pic_remote2) && pic_remote2.startsWith(com.facebook.common.util.f.f11765a)) {
                    MyImageLoader.e(this.f35747c, R.drawable.alph, pic_remote2, r.c.f12144g);
                } else {
                    MyImageLoader.e(this.f35747c, R.drawable.alph, MyImageLoader.G("file://" + pic_remote2).toString(), r.c.f12144g);
                }
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("splash loadimage");
            sb2.append(System.currentTimeMillis());
        } catch (Exception e4) {
            e4.printStackTrace();
            z();
        }
    }

    boolean w(ShowViewDataBean showViewDataBean) {
        StringBuilder sb = new StringBuilder();
        sb.append("splash setiamgeBackx");
        sb.append(System.currentTimeMillis());
        try {
            if (showViewDataBean.getIs_force().equals("1")) {
                showViewDataBean.getJump_info().get(0).getPic_remote();
                return !this.f35750f.lastClickPageAD().d().equals(showViewDataBean.getId() + "");
            }
            for (SplashIntentBean splashIntentBean : showViewDataBean.getJump_info()) {
                if (splashIntentBean.getTag_show() != 2) {
                    return true;
                }
            }
            return false;
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    void x(ShowViewDataBean showViewDataBean, SplashIntentBean splashIntentBean) {
        try {
            String str = showViewDataBean.getStrategy_id() + "_" + splashIntentBean.getTitle() + "_" + splashIntentBean.getJump_id();
            com.papa.sim.statistic.p.l(this).K1(Event.FullScreenAds, new Ext().setPosition("1").setNodeId(str).setReMarks(str));
            com.papa.gsyvideoplayer.utils.f.l(4);
            this.f35751g.setVisibility(8);
            this.f35752h.setVisibility(0);
            this.f35749e.setVisibility(8);
            this.f35748d.setBackgroundColor(0);
            this.f35746b.setVisibility(0);
            u(new com.papa.sim.statistic.e(splashIntentBean.getCrc_link_type_val(), "spreadButton", splashIntentBean.getJump_id() + "", splashIntentBean.getTitle() + ""), false);
            String vedio_url_local = splashIntentBean.getVedio_url_local();
            if (com.join.mgps.Util.d2.i(vedio_url_local)) {
                File file = new File(vedio_url_local);
                if (file.exists()) {
                    if (this.f35746b != null) {
                        t(MyImageLoader.F(file).toString(), showViewDataBean, splashIntentBean);
                    }
                } else {
                    String vedio_url = splashIntentBean.getVedio_url();
                    if (com.join.mgps.Util.d2.i(vedio_url) && (vedio_url.startsWith(com.facebook.common.util.f.f11765a) || vedio_url.startsWith("https"))) {
                        t(vedio_url, showViewDataBean, splashIntentBean);
                    } else {
                        t(MyImageLoader.G(vedio_url).toString(), showViewDataBean, splashIntentBean);
                    }
                }
            } else {
                String vedio_url2 = splashIntentBean.getVedio_url();
                if (com.join.mgps.Util.d2.i(vedio_url2) && (vedio_url2.startsWith(com.facebook.common.util.f.f11765a) || vedio_url2.startsWith("https"))) {
                    t(vedio_url2, showViewDataBean, splashIntentBean);
                } else {
                    t(MyImageLoader.G("file://" + vedio_url2).toString(), showViewDataBean, splashIntentBean);
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("splash loadimage");
            sb.append(System.currentTimeMillis());
        } catch (Exception e4) {
            e4.printStackTrace();
            z();
        }
    }

    void y() {
        com.join.mgps.Util.t0.c("setnormal time =" + System.currentTimeMillis());
        new ArrayList();
        if (this.f35750f.isFirstRun().d().booleanValue()) {
            FirstIntentData firstIntentData = this.f35764t;
            if (firstIntentData != null && firstIntentData.isCustomApk() && this.f35764t.isAPKSplashImage()) {
                try {
                    this.f35750f.isFirstRun().g(Boolean.FALSE);
                    try {
                        String[] list = getAssets().list("");
                        boolean z3 = false;
                        boolean z4 = false;
                        for (int i2 = 0; i2 < list.length; i2++) {
                            if (list[i2].equals("splash.png")) {
                                z3 = true;
                                break;
                            }
                            if (list[i2].equals("splash.jpg")) {
                                z4 = true;
                            }
                        }
                        try {
                            if (z3) {
                                BufferedInputStream bufferedInputStream = new BufferedInputStream(getAssets().open("splash.png"));
                                this.f35747c.setImageBitmap(BitmapFactory.decodeStream(bufferedInputStream));
                                bufferedInputStream.close();
                            } else if (z4) {
                                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(getAssets().open("splash.jpg"));
                                this.f35747c.setImageBitmap(BitmapFactory.decodeStream(bufferedInputStream2));
                                bufferedInputStream2.close();
                            } else {
                                this.f35747c.setImageResource(R.drawable.splash);
                            }
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    } catch (IOException e5) {
                        e5.printStackTrace();
                        this.f35747c.setImageResource(R.drawable.splash);
                    }
                } catch (Exception e6) {
                    e6.printStackTrace();
                }
                Handler handler = this.f35766v;
                if (handler != null) {
                    handler.sendEmptyMessageDelayed(3, 4000L);
                    return;
                }
                return;
            }
            this.f35750f.isFirstRun().g(Boolean.FALSE);
            B();
            return;
        }
        B();
    }

    void z() {
        setResult(10001);
        finish();
    }
}
