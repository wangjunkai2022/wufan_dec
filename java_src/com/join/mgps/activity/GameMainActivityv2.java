package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewFlipper;
import androidx.appcompat.widget.Toolbar;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.customview.ViewPagerWithADs;
import com.join.mgps.db.tables.GameMainTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.GameMainDataBean;
import com.join.mgps.dto.GameMainNetBattle;
import com.join.mgps.dto.GameMainPostBean;
import com.join.mgps.dto.GameMainachieve;
import com.join.mgps.dto.GameMaingameinfo;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ResultMessageBean;
import com.join.mgps.dto.ResultValbean;
import com.join.mgps.pref.PrefDef_;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
@EActivity(R.layout.activity_game_mainv2)
/* loaded from: classes3.dex */
public class GameMainActivityv2 extends Activity {
    GameMainDataBean A;
    private String B = "";
    private boolean C = false;
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    TextView f31741a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ImageView f31742b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ImageView f31743c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    ImageView f31744d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    SimpleDraweeView f31745e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f31746f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f31747g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    SimpleDraweeView f31748h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    SimpleDraweeView f31749i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    LinearLayout f31750j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    LinearLayout f31751k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    LinearLayout f31752l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    RelativeLayout f31753m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    RelativeLayout f31754n;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    RelativeLayout f31755o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    ViewPagerWithADs f31756p;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    LinearLayout f31757q;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    ViewFlipper f31758r;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    TextView f31759s;
    @Extra

    /* renamed from: t  reason: collision with root package name */
    String f31760t;
    @Pref

    /* renamed from: u  reason: collision with root package name */
    PrefDef_ f31761u;

    /* renamed from: v  reason: collision with root package name */
    com.join.mgps.rpc.d f31762v;

    /* renamed from: w  reason: collision with root package name */
    AccountBean f31763w;

    /* renamed from: x  reason: collision with root package name */
    private Toolbar f31764x;

    /* renamed from: y  reason: collision with root package name */
    Context f31765y;

    /* renamed from: z  reason: collision with root package name */
    private DownloadTask f31766z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements AppBarLayout.OnOffsetChangedListener {
        a() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public void onOffsetChanged(AppBarLayout appBarLayout, int i2) {
            int totalScrollRange = appBarLayout.getTotalScrollRange();
            GameMainActivityv2.this.f31765y.getResources().getDimensionPixelOffset(R.dimen.action_bar_height);
            if (i2 == 0) {
                GameMainActivityv2.this.f31741a.setTextColor(-1);
                GameMainActivityv2.this.f31741a.setText("游戏主页");
                GameMainActivityv2.this.f31742b.setImageResource(R.drawable.icon_black_bg_back);
            } else if ((-i2) >= totalScrollRange - 5) {
                GameMainActivityv2.this.f31741a.setTextColor(-12303292);
                GameMainActivityv2 gameMainActivityv2 = GameMainActivityv2.this;
                gameMainActivityv2.f31741a.setText(gameMainActivityv2.f31766z.getShowName());
                GameMainActivityv2.this.f31742b.setImageResource(R.drawable.gamemain_titleback);
            } else {
                GameMainActivityv2.this.f31741a.setTextColor(-1);
                GameMainActivityv2.this.f31741a.setText("游戏主页");
                GameMainActivityv2.this.f31742b.setImageResource(R.drawable.icon_black_bg_back);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BannerBean f31768a;

        b(BannerBean bannerBean) {
            this.f31768a = bannerBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(GameMainActivityv2.this.f31765y, this.f31768a.getIntentDataBean());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameMainPostBean f31770a;

        c(GameMainPostBean gameMainPostBean) {
            this.f31770a = gameMainPostBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goFormDetial(GameMainActivityv2.this.f31765y, this.f31770a.getId());
        }
    }

    private void j() {
        if (Build.VERSION.SDK_INT == 19) {
            ((FrameLayout.LayoutParams) ((Toolbar) findViewById(R.id.toolbar)).getLayoutParams()).topMargin = com.join.mgps.Util.a1.d(this);
        }
    }

    private void p() {
        ((AppBarLayout) findViewById(R.id.appBarLayout)).addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new a());
    }

    private void q() {
        GameMainNetBattle net_battle;
        String fight_fun = this.f31766z.getFight_fun();
        if (com.join.mgps.Util.d2.i(fight_fun)) {
            if (fight_fun.length() >= 1) {
                if ('1' == fight_fun.charAt(0)) {
                    this.f31755o.setVisibility(0);
                } else {
                    this.f31755o.setVisibility(8);
                }
            }
            if (fight_fun.length() >= 2) {
                if ('1' == fight_fun.charAt(1)) {
                    this.f31751k.setVisibility(0);
                    GameMainDataBean gameMainDataBean = this.A;
                    if (gameMainDataBean != null && (net_battle = gameMainDataBean.getNet_battle()) != null) {
                        TextView textView = this.f31759s;
                        textView.setText(Html.fromHtml("<font color = '#F47500'>" + net_battle.getNumber() + "个房间</font>正在对战,进入\"<font color = '#F47500'>约战</font>\",\"<font color = '#F47500'>大厅对战</font>\""), TextView.BufferType.SPANNABLE);
                    }
                    AccountBean accountBean = this.f31763w;
                    if (accountBean != null && accountBean.getAccount_type() == 2) {
                        this.C = false;
                        this.f31743c.setImageResource(R.drawable.switch_close);
                        this.f31743c.setEnabled(false);
                        return;
                    }
                    GameMainDataBean gameMainDataBean2 = this.A;
                    if (gameMainDataBean2 != null && gameMainDataBean2.getNet_battle() != null && this.A.getNet_battle().getSilence_room_switch() == 0) {
                        this.C = false;
                        this.f31743c.setImageResource(R.drawable.switch_close);
                        return;
                    }
                    GameMainDataBean gameMainDataBean3 = this.A;
                    if (gameMainDataBean3 != null && gameMainDataBean3.getNet_battle() != null && this.A.getNet_battle().getSilence_room_switch() == 1) {
                        this.C = true;
                        this.f31743c.setImageResource(R.drawable.switch_open);
                        return;
                    } else if (fight_fun.length() >= 7) {
                        if ('1' == fight_fun.charAt(6)) {
                            this.C = true;
                            this.f31743c.setImageResource(R.drawable.switch_open);
                            return;
                        }
                        this.C = false;
                        this.f31743c.setImageResource(R.drawable.switch_close);
                        return;
                    } else {
                        this.f31754n.setVisibility(8);
                        return;
                    }
                }
                this.f31751k.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void b() {
        j();
        this.f31765y = this;
        CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) findViewById(R.id.collapsingToolbarLayout);
        collapsingToolbarLayout.setScrimVisibleHeightTrigger(this.f31765y.getResources().getDimensionPixelOffset(R.dimen.action_bar_height) + this.f31765y.getResources().getDimensionPixelSize(this.f31765y.getResources().getIdentifier("status_bar_height", "dimen", q.a.f73954a)) + 5);
        collapsingToolbarLayout.setScrimAnimationDuration(200L);
        p();
        this.f31762v = com.join.mgps.rpc.impl.c.P1();
        this.f31766z = g1.f.G().B(this.f31760t);
        this.f31763w = AccountUtil_.getInstance_(this.f31765y).getAccountData();
        q();
        DownloadTask downloadTask = this.f31766z;
        if (downloadTask != null) {
            MyImageLoader.d(this.f31748h, R.drawable.banner_normal_icon, downloadTask.getPortraitURL());
            this.f31746f.setText(this.f31766z.getShowName());
            UtilsMy.C(this.f31766z.getScore(), this.f31766z.getDown_count(), this.f31766z.getShowSize(), this.f31766z.getSp_tag_info(), this.f31766z.getTipBeans(), this.f31750j, this.f31765y);
            this.f31759s.setText(Html.fromHtml("进入\"<font color = '#F47500'>约战</font>\",\"<font color = '#F47500'>大厅对战</font>\""), TextView.BufferType.SPANNABLE);
        }
        f();
        e();
        if (WifiUtils.getInstance(getApplicationContext()).isWifiEnable()) {
            this.f31761u.isWifiConnectedBefore().g(Boolean.TRUE);
        } else {
            this.f31761u.isWifiConnectedBefore().g(Boolean.FALSE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void c() {
        GameMainDataBean gameMainDataBean = this.A;
        if (gameMainDataBean != null) {
            GameMainNetBattle net_battle = gameMainDataBean.getNet_battle();
            int silence_room_switch = net_battle.getSilence_room_switch();
            if (silence_room_switch == 0) {
                UtilsMy.h(null, this.f31766z, this.f31765y, 0);
                return;
            }
            String fight_fun = this.f31766z.getFight_fun();
            boolean z3 = com.join.mgps.Util.d2.i(fight_fun) && fight_fun.length() >= 7 && '1' == fight_fun.charAt(6);
            int max_battle_count = this.A.getGame_info() != null ? this.A.getGame_info().getMax_battle_count() : 0;
            if (silence_room_switch == 1) {
                UtilsMy.j(this.f31766z, this.f31765y, 1, net_battle.getIp(), net_battle.getPort(), this.B, max_battle_count);
                return;
            } else if (silence_room_switch == 2 && z3) {
                UtilsMy.j(this.f31766z, this.f31765y, 1, net_battle.getIp(), net_battle.getPort(), this.B, max_battle_count);
                return;
            } else {
                UtilsMy.h(null, this.f31766z, this.f31765y, 0);
                return;
            }
        }
        UtilsMy.h(null, this.f31766z, this.f31765y, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void d() {
        IntentUtil.getInstance().goForumFid(this.f31765y, (int) this.f31766z.getPlugin_area_val());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void e() {
        ResultMessageBean<List<GameMainDataBean>> messages;
        try {
            RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(this);
            String str = this.f31760t;
            AccountBean accountBean = this.f31763w;
            ResultMainBean<List<GameMainDataBean>> a12 = this.f31762v.a1(requestBeanUtil.getGameMainData(str, accountBean != null ? accountBean.getUid() : 1));
            if (a12 == null || a12.getFlag() != 1 || (messages = a12.getMessages()) == null) {
                return;
            }
            List<GameMainDataBean> data = messages.getData();
            if (data.size() > 0) {
                GameMainDataBean gameMainDataBean = data.get(0);
                GameMainTable o3 = n1.u.n().o(this.f31760t);
                if (o3 != null) {
                    GameMainachieve achieve = gameMainDataBean.getAchieve();
                    GameMainDataBean gameMainDataBean2 = (GameMainDataBean) JsonMapper.getInstance().fromJson(o3.getGame_main_data(), GameMainDataBean.class);
                    if (gameMainDataBean2 != null) {
                        GameMainachieve achieve2 = gameMainDataBean2.getAchieve();
                        if (achieve != null && achieve2 != null) {
                            achieve.setLastShowVerTime(achieve2.getLastShowVerTime());
                        }
                    }
                    String json = JsonMapper.getInstance().toJson(gameMainDataBean);
                    o3.setGameid(this.f31760t);
                    o3.setGame_main_data(json);
                    n1.u.n().update(o3);
                } else {
                    GameMainTable gameMainTable = new GameMainTable();
                    String json2 = JsonMapper.getInstance().toJson(gameMainDataBean);
                    gameMainTable.setGameid(this.f31760t);
                    gameMainTable.setGame_main_data(json2);
                    n1.u.n().k(gameMainTable);
                }
                r(gameMainDataBean);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void f() {
        GameMainTable o3 = n1.u.n().o(this.f31760t);
        if (o3 != null) {
            GameMainDataBean gameMainDataBean = (GameMainDataBean) JsonMapper.getInstance().fromJson(o3.getGame_main_data(), GameMainDataBean.class);
            if (gameMainDataBean != null) {
                r(gameMainDataBean);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void g() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void h() {
        if (this.C) {
            this.C = false;
            this.f31743c.setImageResource(R.drawable.switch_close);
            if (this.A.getNet_battle() != null) {
                this.A.getNet_battle().setSilence_room_switch(0);
            } else {
                this.A.setNet_battle(new GameMainNetBattle());
                this.A.getNet_battle().setSilence_room_switch(0);
            }
            o(0);
            return;
        }
        this.C = true;
        this.f31743c.setImageResource(R.drawable.switch_open);
        if (this.A.getNet_battle() != null) {
            this.A.getNet_battle().setSilence_room_switch(1);
        } else {
            this.A.setNet_battle(new GameMainNetBattle());
            this.A.getNet_battle().setSilence_room_switch(1);
        }
        o(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void i() {
        new GameInfoBean().setGame_id(this.f31760t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void k() {
        GameMainDataBean gameMainDataBean;
        GameMainachieve achieve;
        if (IntentUtil.getInstance().goLoginBattle(this) || (gameMainDataBean = this.A) == null || (achieve = gameMainDataBean.getAchieve()) == null) {
            return;
        }
        IntentUtil.getInstance().goShareWebActivity(this.f31765y, achieve.getUrl());
        achieve.setLastShowVerTime(achieve.getTime());
        GameMainTable o3 = n1.u.n().o(this.f31760t);
        String json = JsonMapper.getInstance().toJson(this.A);
        o3.setGameid(this.f31760t);
        o3.setGame_main_data(json);
        n1.u.n().update(o3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void l() {
        GameMainDataBean gameMainDataBean = this.A;
        if (gameMainDataBean != null) {
            gameMainDataBean.getGame_info();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void m() {
        IntentUtil.getInstance().goGameDetialActivity(this.f31765y, this.f31766z.getCrc_link_type_val(), this.f31766z.getGame_info_tpl_type(), this.f31766z.getSp_tpl_two_position(), this.f31766z.get_from_type());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void n() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void o(int i2) {
        try {
            ResultMainBean<List<ResultValbean>> u3 = this.f31762v.u(RequestBeanUtil.getInstance(this.f31765y).getSilenceSwitch(this.f31760t, this.f31763w.getUid(), i2));
            com.join.mgps.Util.t0.d("ssss", u3.getCode() + "");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        if (Build.VERSION.SDK_INT == 19) {
            getWindow().addFlags(256);
            getWindow().addFlags(512);
        }
        super.onCreate(bundle);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        this.f31763w = accountData;
        if (accountData.getAccount_type() == 2) {
            this.f31743c.setImageResource(R.drawable.switch_close);
            this.f31743c.setEnabled(false);
            return;
        }
        this.f31743c.setEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void r(GameMainDataBean gameMainDataBean) {
        this.A = gameMainDataBean;
        GameMaingameinfo game_info = gameMainDataBean.getGame_info();
        if (game_info != null) {
            MyImageLoader.d(this.f31745e, R.drawable.banner_normal_icon, game_info.getGame_surface_head_image());
            this.f31746f.setText(this.f31766z.getShowName());
            UtilsMy.C(game_info.getScore(), game_info.getDown_count(), this.f31766z.getShowSize(), this.f31766z.getSp_tag_info(), this.f31766z.getTipBeans(), this.f31750j, this.f31765y);
        }
        GameMainachieve achieve = gameMainDataBean.getAchieve();
        if (achieve != null && (achieve.getLastShowVerTime() == 0 || achieve.getLastShowVerTime() != achieve.getTime())) {
            MyImageLoader.h(this.f31749i, achieve.getPic_addr());
        }
        q();
        List<BannerBean> local_battle = gameMainDataBean.getLocal_battle();
        if (local_battle != null && local_battle.size() > 0) {
            this.f31752l.setVisibility(0);
            this.f31756p.setAll(this.f31765y, local_battle, 11, 32, 4000, 0);
        } else {
            this.f31752l.setVisibility(8);
        }
        List<BannerBean> ad_position = gameMainDataBean.getAd_position();
        if (ad_position != null && ad_position.size() > 0) {
            this.f31758r.removeAllViews();
            this.f31758r.setInAnimation(AnimationUtils.loadAnimation(this.f31765y, R.anim.slide_in_topline));
            this.f31758r.setOutAnimation(AnimationUtils.loadAnimation(this.f31765y, R.anim.slide_out_topline));
            this.f31758r.setFlipInterval(5000);
            for (BannerBean bannerBean : ad_position) {
                View inflate = LayoutInflater.from(this.f31765y).inflate(R.layout.gamemain_fliper_item, (ViewGroup) null);
                MyImageLoader.d((SimpleDraweeView) inflate.findViewById(R.id.icon), R.drawable.main_normal_icon, bannerBean.getPic_remote());
                ((TextView) inflate.findViewById(R.id.fliperText)).setText(bannerBean.getTitle());
                ((LinearLayout) inflate.findViewById(R.id.fliperItem)).setOnClickListener(new b(bannerBean));
                this.f31758r.addView(inflate);
            }
            this.f31758r.startFlipping();
            this.f31758r.setVisibility(0);
        } else {
            this.f31758r.setVisibility(8);
        }
        List<GameMainPostBean> post_id = gameMainDataBean.getPost_id();
        if (post_id == null || post_id.size() <= 0) {
            return;
        }
        for (GameMainPostBean gameMainPostBean : post_id) {
            View inflate2 = LayoutInflater.from(this.f31765y).inflate(R.layout.game_main_forunpost_item, (ViewGroup) null);
            ((TextView) inflate2.findViewById(R.id.tv_discuss_first)).setText(gameMainPostBean.getTitle());
            ((LinearLayout) inflate2.findViewById(R.id.ll_discuss_first)).setOnClickListener(new c(gameMainPostBean));
            this.f31757q.addView(inflate2);
        }
    }
}
