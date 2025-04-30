package com.join.mgps.dialog;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.i2;
import com.join.mgps.broadcast.NetBroadcastReceiver;
import com.join.mgps.dto.RequestInfoArgs;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.SearchPostsBean;
import com.join.mgps.dto.SingleGameAdCfgBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.common.BaseAppConfig;
import com.papa91.wrapper.UserPrefs;
import m.framework.ui.widget.asyncview.AsyncImageView;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* compiled from: GDTAdVipDialog.java */
/* loaded from: classes3.dex */
public class r0 extends AlertDialog implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    ImageView f47905a;

    /* renamed from: b  reason: collision with root package name */
    TextView f47906b;

    /* renamed from: c  reason: collision with root package name */
    RelativeLayout f47907c;

    /* renamed from: d  reason: collision with root package name */
    TextView f47908d;

    /* renamed from: e  reason: collision with root package name */
    TextView f47909e;

    /* renamed from: f  reason: collision with root package name */
    TextView f47910f;

    /* renamed from: g  reason: collision with root package name */
    TextView f47911g;

    /* renamed from: h  reason: collision with root package name */
    SimpleDraweeView f47912h;

    /* renamed from: i  reason: collision with root package name */
    NetBroadcastReceiver f47913i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f47914j;

    /* renamed from: k  reason: collision with root package name */
    private d f47915k;

    /* renamed from: l  reason: collision with root package name */
    private int f47916l;

    /* renamed from: m  reason: collision with root package name */
    private SingleGameAdCfgBean f47917m;

    /* renamed from: n  reason: collision with root package name */
    private String f47918n;

    /* renamed from: o  reason: collision with root package name */
    private String f47919o;

    /* renamed from: p  reason: collision with root package name */
    private int f47920p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f47921q;

    /* renamed from: r  reason: collision with root package name */
    com.join.mgps.ad.f f47922r;

    /* renamed from: s  reason: collision with root package name */
    Context f47923s;

    /* renamed from: t  reason: collision with root package name */
    boolean f47924t;

    /* renamed from: u  reason: collision with root package name */
    e f47925u;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GDTAdVipDialog.java */
    /* loaded from: classes3.dex */
    public class a implements NetBroadcastReceiver.a {
        a() {
        }

        @Override // com.join.mgps.broadcast.NetBroadcastReceiver.a
        public void a(int i2) {
            if (i2 == 1) {
                r0 r0Var = r0.this;
                if (r0Var.f47924t) {
                    r0Var.f47924t = true;
                    r0Var.i();
                    com.join.mgps.ad.a.e(r0.this.getContext()).f(r0.this.f47916l, r0.this.f47919o, r0.this.f47918n, r0.this.f47922r);
                }
            }
            r0.this.m();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GDTAdVipDialog.java */
    /* loaded from: classes3.dex */
    public class b implements Callback<ResultMainBean<SearchPostsBean>> {
        b() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultMainBean<SearchPostsBean>> call, Throwable th) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResultMainBean<SearchPostsBean>> call, Response<ResultMainBean<SearchPostsBean>> response) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GDTAdVipDialog.java */
    /* loaded from: classes3.dex */
    public class c extends com.join.mgps.ad.i {
        c() {
        }

        @Override // com.join.mgps.ad.i, com.join.mgps.ad.f
        public void b(boolean z3) {
            super.b(z3);
            r0.this.f47921q = false;
        }

        @Override // com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onADClose() {
            super.onADClose();
            r0.this.dismiss();
            if (r0.this.f47915k != null) {
                r0.this.f47915k.onAdClose();
            }
        }

        @Override // com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onError(int i2, String str) {
            super.onError(i2, str);
            r0.this.f47921q = true;
        }

        @Override // com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onVideoCached() {
            super.onVideoCached();
            r0.this.f47921q = false;
        }

        @Override // com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onVideoComplete() {
            super.onVideoComplete();
            UserPrefs userPrefs = new UserPrefs(r0.this.f47923s);
            userPrefs.setAdGamesHasSeeCount(userPrefs.getAdGamesHasSeeCount() + 1);
            if (r0.this.f47915k != null) {
                r0.this.f47915k.onAdShow();
            }
            r0.this.k();
        }
    }

    /* compiled from: GDTAdVipDialog.java */
    /* loaded from: classes3.dex */
    public interface d {
        void onAdClose();

        void onAdShow();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GDTAdVipDialog.java */
    /* loaded from: classes3.dex */
    public class e extends BroadcastReceiver {
        e() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int i2 = intent.getExtras().getInt(BaseAppConfig.KEY_VIP_LEVEL);
            intent.getExtras().getInt(BaseAppConfig.KEY_SVIP_LEVEL);
            if (i2 > 0) {
                Intent intent2 = new Intent();
                intent2.setAction(f1.a.f65475f0);
                r0.this.getContext().sendBroadcast(intent2);
                if (r0.this.f47915k != null) {
                    r0.this.f47915k.onAdClose();
                }
                r0.this.dismiss();
            }
        }
    }

    public r0(Context context, String str, String str2, int i2, int i4, SingleGameAdCfgBean singleGameAdCfgBean) {
        super(context);
        this.f47914j = true;
        this.f47916l = 1;
        this.f47921q = false;
        this.f47924t = false;
        this.f47923s = context;
        this.f47916l = i2;
        this.f47917m = singleGameAdCfgBean;
        this.f47918n = str2;
        this.f47919o = str;
        this.f47920p = i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        if (this.f47922r == null) {
            this.f47922r = new c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        RequestInfoArgs requestInfoArgs = new RequestInfoArgs();
        requestInfoArgs.setUid(AccountUtil_.getInstance_(this.f47923s).getAccountData().getUid());
        RequestInfoArgs.RequestInfoinfo requestInfoinfo = new RequestInfoArgs.RequestInfoinfo();
        requestInfoinfo.setTime(System.currentTimeMillis());
        requestInfoinfo.setType(1);
        requestInfoinfo.setUid(AccountUtil_.getInstance_(this.f47923s).getAccountData().getUid() + "");
        requestInfoArgs.setInfo(com.papa.sim.statistic.http.c.b(JsonMapper.getInstance().toJson(requestInfoinfo)));
        com.join.mgps.rpc.impl.c.P1().O1().L1(RequestBeanUtil.getInstance(this.f47923s).getDefalutRequestBean(requestInfoArgs)).enqueue(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        if (com.join.android.app.common.utils.f.j(getContext())) {
            this.f47914j = true;
            this.f47910f.setVisibility(0);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f47909e.getLayoutParams();
            layoutParams.topMargin = (int) getContext().getResources().getDimension(R.dimen.wdp11);
            this.f47909e.setLayoutParams(layoutParams);
            SingleGameAdCfgBean singleGameAdCfgBean = this.f47917m;
            if (singleGameAdCfgBean != null) {
                if (singleGameAdCfgBean.getFree_receive_vip() == 1) {
                    this.f47906b.setText(this.f47917m.getF_tip_text());
                    this.f47909e.setText(this.f47917m.getF_btn_text());
                    this.f47911g.setText(this.f47917m.getB_btn_text());
                    this.f47910f.setText(this.f47917m.getF_ic_text());
                    try {
                        int parseInt = Integer.parseInt(this.f47917m.getF_ic_text());
                        int adGamesHasSeeCount = new UserPrefs(this.f47923s).getAdGamesHasSeeCount();
                        if (parseInt - adGamesHasSeeCount > 0) {
                            TextView textView = this.f47910f;
                            textView.setText("仅需" + adGamesHasSeeCount + "次");
                        }
                    } catch (Exception unused) {
                    }
                } else {
                    this.f47906b.setText(this.f47917m.getTip_text());
                    this.f47909e.setText(this.f47917m.getT_btn_text());
                    this.f47911g.setText(this.f47917m.getB_btn_text());
                }
            }
            MyImageLoader.d(this.f47912h, R.drawable.ic_gdt_ad_tv, this.f47917m.getF_play_ic());
            return;
        }
        this.f47914j = false;
        this.f47910f.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f47909e.getLayoutParams();
        layoutParams2.topMargin = 0;
        this.f47909e.setLayoutParams(layoutParams2);
        this.f47906b.setText("观看视频广告可以支持悟饭更好\n更快上传单机游戏资源");
        this.f47909e.setText("开启网络看广告");
        this.f47911g.setText("狠心拒绝，离线游戏");
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (this.f47913i != null) {
            getContext().unregisterReceiver(this.f47913i);
            this.f47913i = null;
        }
        if (this.f47925u != null) {
            getContext().unregisterReceiver(this.f47925u);
            this.f47925u = null;
        }
        com.join.mgps.ad.a.e(this.f47923s).b();
        super.dismiss();
    }

    void j() {
        this.f47925u = new e();
        IntentFilter intentFilter = new IntentFilter("com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success");
        intentFilter.addAction("com.join.android.app.mgsim.wufan.mha.broadcast.action_raise_vip_success");
        getContext().registerReceiver(this.f47925u, intentFilter);
    }

    public void l(d dVar) {
        this.f47915k = dVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.f47905a) {
            dismiss();
        } else if (view == this.f47907c) {
            if (this.f47914j) {
                SingleGameAdCfgBean singleGameAdCfgBean = this.f47917m;
                if (singleGameAdCfgBean != null) {
                    if (singleGameAdCfgBean.getFree_receive_vip() == 1) {
                        IntentUtil.getInstance().goShareWebActivity(this.f47923s, this.f47917m.getF_btn_url());
                    } else {
                        SingleGameAdCfgBean singleGameAdCfgBean2 = this.f47917m;
                        if (singleGameAdCfgBean2 != null && com.join.mgps.Util.d2.i(singleGameAdCfgBean2.getT_btn_url())) {
                            Intent intent = new Intent("com.tools.AdBroadcast");
                            intent.putExtra("action", 3);
                            intent.putExtra("url", this.f47917m.getT_btn_url());
                            getContext().sendBroadcast(intent);
                        }
                    }
                }
                com.papa.sim.statistic.p.l(getContext()).K1(Event.onMemberAdvert23, new Ext());
                return;
            }
            com.papa.sim.statistic.p.l(getContext()).K1(Event.onAdvert23_offline, new Ext());
            UtilsMy.I2(getContext());
        } else if (view == this.f47911g) {
            boolean z3 = this.f47914j;
            if (z3 && !this.f47921q) {
                Activity activity = MApplication.f9223q.getActivity();
                if (activity != null) {
                    com.join.mgps.ad.a.e(getContext()).g(activity);
                }
                com.papa.sim.statistic.p.l(getContext()).K1(Event.onAdvert23, new Ext());
                d dVar = this.f47915k;
                if (dVar != null) {
                    dVar.onAdShow();
                    return;
                }
                return;
            }
            if (z3 && this.f47921q) {
                i2.a(getContext()).b("视频加载失败");
            } else {
                com.papa.sim.statistic.p.l(getContext()).K1(Event.gameAdvert23_offline, new Ext());
            }
            dismiss();
            d dVar2 = this.f47915k;
            if (dVar2 != null) {
                dVar2.onAdClose();
            }
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        Window window = getWindow();
        window.setBackgroundDrawableResource(AsyncImageView.DEFAULT_TRANSPARENT);
        window.setGravity(17);
        Display defaultDisplay = window.getWindowManager().getDefaultDisplay();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = defaultDisplay.getWidth();
        attributes.height = defaultDisplay.getHeight();
        window.setAttributes(attributes);
        setContentView(R.layout.dialog_gdt_ad_vip);
        this.f47905a = (ImageView) findViewById(R.id.iv_close);
        this.f47906b = (TextView) findViewById(R.id.tv_ad_tip);
        this.f47907c = (RelativeLayout) findViewById(R.id.rl_opt_vip);
        this.f47909e = (TextView) findViewById(R.id.tv_opt_vip);
        this.f47910f = (TextView) findViewById(R.id.tv_ad_vip_tip);
        this.f47911g = (TextView) findViewById(R.id.tv_opt_view_ad);
        this.f47912h = (SimpleDraweeView) findViewById(R.id.icon);
        this.f47905a.setOnClickListener(this);
        this.f47910f.setOnClickListener(this);
        this.f47911g.setOnClickListener(this);
        this.f47907c.setOnClickListener(this);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        if (com.join.android.app.common.utils.f.j(getContext())) {
            com.papa.sim.statistic.p.l(getContext()).K1(Event.showAdvert23, new Ext());
        } else {
            this.f47924t = true;
            com.papa.sim.statistic.p.l(getContext()).K1(Event.showAdvert23_offline, new Ext());
        }
        m();
        i();
        com.join.mgps.ad.a.e(this.f47923s).f(this.f47916l, this.f47919o, this.f47918n, this.f47922r);
        NetBroadcastReceiver netBroadcastReceiver = new NetBroadcastReceiver();
        this.f47913i = netBroadcastReceiver;
        netBroadcastReceiver.a(new a());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        getContext().registerReceiver(this.f47913i, intentFilter);
        j();
    }
}
