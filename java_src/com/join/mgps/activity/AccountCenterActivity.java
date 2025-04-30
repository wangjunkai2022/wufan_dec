package com.join.mgps.activity;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.PullableScrollView;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.AccountUserInfoRequestBean;
import com.join.mgps.dto.EverdayLogin;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.GameOLHeadAdBean;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.RecomCentrebean;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.TouristLoginRequestBean;
import com.join.mgps.pref.PrefDef_;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
@EActivity(R.layout.mg_account_center)
/* loaded from: classes3.dex */
public class AccountCenterActivity extends BaseActivity {
    @ViewById
    RelativeLayout A;
    private AccountBean A0;
    @Pref
    PrefDef_ B;
    private boolean B0;
    com.join.mgps.rpc.d C;
    private boolean C0;
    com.join.mgps.rpc.b D;
    private GameOLHeadAdBean D0;
    com.join.mgps.rpc.n E;
    private Context E0;
    com.join.mgps.rpc.h F;
    @ViewById
    RelativeLayout F0;
    @ViewById
    PullableScrollView G;
    @ViewById
    SimpleDraweeView G0;
    @ViewById
    RelativeLayout H;
    @ViewById
    RelativeLayout H0;
    @ViewById
    ImageView I;
    @ViewById
    SimpleDraweeView I0;
    @ViewById
    TextView J;
    @ViewById
    SimpleDraweeView J0;
    @ViewById
    RelativeLayout K;
    @ViewById
    SimpleDraweeView K0;
    RecomDatabean L0;
    RecomDatabean M0;
    RecomDatabean N0;
    RecomDatabean O0;
    RecomDatabean P0;
    RecomDatabean Q0;
    RecomDatabean R0;
    RecomDatabean S0;
    @ViewById
    LinearLayout T0;
    @ViewById
    LinearLayout U0;
    @ViewById
    SimpleDraweeView V0;
    @ViewById
    SimpleDraweeView W0;
    @ViewById
    TextView X0;
    @ViewById
    TextView Y0;
    @ViewById
    TextView Z0;
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    SimpleDraweeView f28155a;
    @ViewById

    /* renamed from: a1  reason: collision with root package name */
    TextView f28156a1;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f28157b;
    @ViewById

    /* renamed from: b1  reason: collision with root package name */
    TextView f28158b1;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f28159c;
    @ViewById

    /* renamed from: c1  reason: collision with root package name */
    View f28160c1;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f28161d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f28163e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f28164f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f28165g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    RelativeLayout f28166h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    RelativeLayout f28167i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    RelativeLayout f28168j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    RelativeLayout f28169k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    TextView f28170l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    TextView f28171m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    TextView f28172n;

    /* renamed from: n0  reason: collision with root package name */
    int f28173n0;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    ImageView f28174o;
    @ViewById

    /* renamed from: o0  reason: collision with root package name */
    View f28175o0;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    TextView f28176p;
    @ViewById

    /* renamed from: p0  reason: collision with root package name */
    ImageView f28177p0;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    TextView f28178q;
    @ViewById

    /* renamed from: q0  reason: collision with root package name */
    LinearLayout f28179q0;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    RelativeLayout f28180r;
    @ViewById

    /* renamed from: r0  reason: collision with root package name */
    ImageView f28181r0;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    RelativeLayout f28182s;
    @ViewById

    /* renamed from: s0  reason: collision with root package name */
    ImageView f28183s0;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    RelativeLayout f28184t;
    @ViewById

    /* renamed from: t0  reason: collision with root package name */
    SimpleDraweeView f28185t0;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    TextView f28186u;
    @ViewById

    /* renamed from: u0  reason: collision with root package name */
    TextView f28187u0;
    @ViewById

    /* renamed from: v  reason: collision with root package name */
    RelativeLayout f28188v;
    @ViewById

    /* renamed from: v0  reason: collision with root package name */
    VipView f28189v0;
    @ViewById

    /* renamed from: w  reason: collision with root package name */
    RelativeLayout f28190w;
    @ViewById

    /* renamed from: w0  reason: collision with root package name */
    VipView f28191w0;
    @ViewById

    /* renamed from: x  reason: collision with root package name */
    FrameLayout f28192x;
    @ViewById

    /* renamed from: x0  reason: collision with root package name */
    VipView f28193x0;
    @ViewById

    /* renamed from: y  reason: collision with root package name */
    RelativeLayout f28194y;
    @ViewById

    /* renamed from: y0  reason: collision with root package name */
    TextView f28195y0;
    @ViewById

    /* renamed from: z  reason: collision with root package name */
    RelativeLayout f28196z;

    /* renamed from: z0  reason: collision with root package name */
    private int f28197z0 = 195;

    /* renamed from: d1  reason: collision with root package name */
    com.join.mgps.customview.t f28162d1 = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (IntentUtil.getInstance().goLogin(view.getContext())) {
                return;
            }
            com.join.mgps.Util.i0.R0(view.getContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (IntentUtil.getInstance().goLogin(view.getContext())) {
                return;
            }
            IntentUtil.getInstance().goMYAccountDetialActivity(view.getContext(), AccountCenterActivity.this.A0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (IntentUtil.getInstance().goLogin(view.getContext())) {
                return;
            }
            com.join.mgps.Util.i0.R0(view.getContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            AccountCenterActivity accountCenterActivity = AccountCenterActivity.this;
            intentUtil.intentActivity(accountCenterActivity, accountCenterActivity.Q0.getSub().get(0).getIntentDataBean());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goLogin(view.getContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goLogin(view.getContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goLogin(view.getContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goVip(AccountCenterActivity.this.E0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goVip(AccountCenterActivity.this.E0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (IntentUtil.getInstance().goLogin(view.getContext())) {
                return;
            }
            IntentUtil intentUtil = IntentUtil.getInstance();
            AccountCenterActivity accountCenterActivity = AccountCenterActivity.this;
            intentUtil.intentActivity(accountCenterActivity, accountCenterActivity.M0.getSub().get(0).getIntentDataBean());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            AccountCenterActivity accountCenterActivity = AccountCenterActivity.this;
            intentUtil.intentActivity(accountCenterActivity, accountCenterActivity.P0.getSub().get(0).getIntentDataBean());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            AccountCenterActivity accountCenterActivity = AccountCenterActivity.this;
            intentUtil.intentActivity(accountCenterActivity, accountCenterActivity.Q0.getSub().get(0).getIntentDataBean());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            AccountCenterActivity accountCenterActivity = AccountCenterActivity.this;
            intentUtil.intentActivity(accountCenterActivity, accountCenterActivity.R0.getSub().get(0).getIntentDataBean());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            AccountCenterActivity accountCenterActivity = AccountCenterActivity.this;
            intentUtil.intentActivity(accountCenterActivity, accountCenterActivity.S0.getSub().get(0).getIntentDataBean());
        }
    }

    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                if (IntentUtil.getInstance().goLogin(view.getContext())) {
                    return;
                }
                IntentUtil.getInstance().intentActivity(AccountCenterActivity.this.E0, AccountCenterActivity.this.D0.getSub().get(0).getIntentDataBean());
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            AccountCenterActivity accountCenterActivity = AccountCenterActivity.this;
            intentUtil.intentActivity(accountCenterActivity, accountCenterActivity.Q0.getSub().get(0).getIntentDataBean());
        }
    }

    private void M0() {
        com.join.mgps.customview.t tVar = this.f28162d1;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.f28162d1.dismiss();
    }

    private AccountBean accountBean(Context context) {
        return AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
    }

    private boolean isLogined(Context context) {
        AccountBean accountBean = accountBean(context);
        return accountBean != null && com.join.mgps.Util.d2.i(accountBean.getToken());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void H0() {
        com.papa.sim.statistic.pref.b.j(getApplicationContext()).y(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void I0() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.face_transfer_rl})
    public void J0() {
        IntentUtil.getInstance().goFaceTransferHomePageActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0(int i2) {
        if (i2 < 1) {
            this.f28170l.setVisibility(8);
            return;
        }
        if (i2 < 100) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f28170l.getLayoutParams();
            layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            this.f28170l.setLayoutParams(layoutParams);
            this.f28170l.setCompoundDrawables(null, null, null, null);
            this.f28170l.setBackgroundResource(R.drawable.mygame_big_round);
            this.f28170l.setPadding(1, 0, 0, 1);
        } else {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f28170l.getLayoutParams();
            layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
            layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams2.setMargins(0, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 4, 0);
            this.f28170l.setGravity(17);
            this.f28170l.setLayoutParams(layoutParams2);
            this.f28170l.setCompoundDrawables(null, null, null, null);
            this.f28170l.setBackgroundResource(R.drawable.message_round);
            this.f28170l.setPadding(1, 0, 2, 1);
        }
        TextView textView = this.f28170l;
        textView.setText(i2 + "");
        this.f28170l.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void L0() {
        if (!com.join.android.app.common.utils.f.j(this) || this.A0 == null) {
            return;
        }
        try {
            AccountUserInfoRequestBean accountUserInfoRequestBean = new AccountUserInfoRequestBean();
            accountUserInfoRequestBean.setUid(this.A0.getUid() + "");
            accountUserInfoRequestBean.setToken(this.A0.getToken());
            accountUserInfoRequestBean.setDevice_id("");
            accountUserInfoRequestBean.setSign(com.join.mgps.Util.u1.f(accountUserInfoRequestBean));
            AccountResultMainBean<AccountBean> d4 = this.D.d(accountUserInfoRequestBean.getParams());
            if (d4 != null) {
                if (d4.getError() == 0) {
                    AccountBean data = d4.getData();
                    if (data != null && data.getUid() != 0) {
                        this.A0.setSvip_level(data.getSvip_level());
                        this.A0.setVip_level(data.getVip_level());
                        this.A0.setLive_total_charm(data.getLive_total_charm());
                        this.A0.setIs_anchor(data.getIs_anchor());
                        this.A0.setPapaMoney(data.getPapaMoney());
                    }
                    AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(this.A0, getApplicationContext());
                    c1();
                    this.B0 = false;
                } else if (d4.getError() == 701) {
                    f1();
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void N0() {
        IntentUtil.getInstance().goDownloadSettingActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void O0() {
        IntentUtil.getInstance().goFeedback(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P0(RecomCentrebean recomCentrebean) {
        try {
            RecomDatabean vip = recomCentrebean.getVip();
            this.O0 = vip;
            if (vip != null && vip.getMain() != null && this.O0.getMain().getAd_switch() == 1) {
                this.Z0.setText(this.O0.getMain().getTitle());
                this.F0.setVisibility(0);
                MyImageLoader.d(this.G0, R.drawable.papa_vip, this.O0.getMain().getPic_remote());
                this.f28193x0.setVipData(this.A0.getVip_level(), this.A0.getSvip_level());
                if (this.A0.getVip_level() > 0) {
                    long vip_exp_time = this.A0.getVip_exp_time();
                    long currentTimeMillis = System.currentTimeMillis();
                    long j4 = (vip_exp_time - currentTimeMillis) / 86400000;
                    if (vip_exp_time <= currentTimeMillis) {
                        this.f28195y0.setVisibility(8);
                    } else if (j4 <= 7) {
                        TextView textView = this.f28195y0;
                        textView.setText(com.join.mgps.Util.x.m(vip_exp_time) + "到期");
                    } else {
                        this.f28195y0.setVisibility(8);
                    }
                } else {
                    this.f28195y0.setVisibility(0);
                    RecomDatabean recomDatabean = this.O0;
                    if (recomDatabean != null) {
                        this.f28195y0.setText(recomDatabean.getMain().getSub_title());
                    } else {
                        this.f28195y0.setText("开通VIP，成为悟饭特权派");
                    }
                    this.f28195y0.setTextColor(getResources().getColor(R.color.vip_color));
                }
                this.F0.setOnClickListener(new i());
            } else {
                this.F0.setVisibility(8);
            }
            RecomDatabean copper = recomCentrebean.getCopper();
            this.M0 = copper;
            if (copper != null && copper.getMain() != null && this.M0.getMain().getAd_switch() == 1) {
                this.f28187u0.setText(this.M0.getMain().getTitle());
                MyImageLoader.d(this.f28185t0, R.drawable.papa_brass, this.M0.getMain().getPic_remote());
                this.f28165g.setText(this.M0.getMain().getSub_title());
                this.f28182s.setOnClickListener(new j());
            } else {
                this.f28165g.setVisibility(0);
            }
            RecomDatabean currency_red_packets = recomCentrebean.getCurrency_red_packets();
            this.P0 = currency_red_packets;
            if (currency_red_packets != null && currency_red_packets.getMain() != null && this.P0.getMain().getAd_switch() == 1) {
                this.f28176p.setText(this.P0.getMain().getTitle());
                this.f28172n.setText(this.P0.getMain().getSub_title());
                MyImageLoader.h(this.K0, this.P0.getMain().getPic_remote());
                this.f28188v.setOnClickListener(new k());
            } else {
                this.f28172n.setVisibility(0);
            }
            RecomDatabean personal_information = recomCentrebean.getPersonal_information();
            this.Q0 = personal_information;
            if (personal_information != null && personal_information.getMain() != null && this.Q0.getMain().getAd_switch() == 1) {
                this.f28155a.setOnClickListener(new l());
            }
            RecomDatabean members_center_first = recomCentrebean.getMembers_center_first();
            this.R0 = members_center_first;
            if (members_center_first != null && members_center_first.getMain() != null && this.R0.getMain().getAd_switch() == 1) {
                this.T0.setVisibility(0);
                MyImageLoader.d(this.V0, R.drawable.papa_vip, this.R0.getMain().getPic_remote());
                this.X0.setText(this.R0.getMain().getTitle());
                this.T0.setOnClickListener(new m());
            }
            RecomDatabean members_center_second = recomCentrebean.getMembers_center_second();
            this.S0 = members_center_second;
            if (members_center_second == null || members_center_second.getMain() == null || this.S0.getMain().getAd_switch() != 1) {
                return;
            }
            if (this.T0.getVisibility() == 8) {
                this.f28160c1.setVisibility(8);
            } else {
                this.f28160c1.setVisibility(0);
            }
            this.U0.setVisibility(0);
            MyImageLoader.d(this.W0, R.drawable.papa_vip, this.S0.getMain().getPic_remote());
            this.Y0.setText(this.S0.getMain().getTitle());
            this.U0.setOnClickListener(new n());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Q0() {
        IntentUtil.getInstance().goJoystickManager(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void R0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void S0() {
        if (IntentUtil.getInstance().goLogin(this)) {
            return;
        }
        IntentUtil.getInstance().goFormDetial(this, "13162");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void T0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void U0() {
        IntentUtil.getInstance().goForumProfileMessageActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void V0() {
        IntentUtil.getInstance().goForumMyDynamicActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void W0() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(3);
        intentDateBean.setJump_type(12);
        IntentUtil.getInstance().intentActivity(this, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void X0() {
        try {
            P0(this.C.B(RequestBeanUtil.getInstance(this).personalCenter()).getMessages().getData().get(0));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Y0() {
        c1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Z0() {
        if (IntentUtil.getInstance().goLogin(this)) {
            return;
        }
        IntentUtil.getInstance().goPAPayCenterActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void a1() {
        IntentUtil.getInstance().goMGSettingActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        try {
            this.E0 = this;
            this.H.setBackgroundColor(-1);
            this.f28173n0 = com.join.mgps.Util.b0.a(this, this.f28197z0 - 60);
            this.A0 = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
            this.C = com.join.mgps.rpc.impl.c.P1();
            X0();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void b1() {
        ForumResponse<ForumData.ForumProfilePostsData> k4;
        ForumData.ForumProfilePostsData data;
        ForumBean.ForumProfilePostUserInfoBean user_info;
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
                if (accountData == null || accountData.getUid() == 0 || (k4 = this.F.k(accountData.getUid(), accountData.getToken(), 1, 0, "")) == null || (data = k4.getData()) == null || (user_info = data.getUser_info()) == null) {
                    return;
                }
                K0(user_info.getUnread_message());
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c1() {
        EverdayLogin everdayLogin;
        RecomDatabean recomDatabean;
        this.f28155a.setOnClickListener(null);
        this.f28192x.setOnClickListener(null);
        this.f28157b.setVisibility(8);
        this.f28159c.setText("未登录");
        this.f28155a.setImageResource(R.drawable.unloginstatus);
        this.f28177p0.setVisibility(8);
        AccountBean accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
        this.A0 = accountData;
        if (accountData.getIs_anchor() == 1) {
            this.f28184t.setVisibility(0);
        } else {
            this.f28184t.setVisibility(8);
        }
        AccountBean accountBean = this.A0;
        if (accountBean != null) {
            if (accountBean.getLive_total_charm() != 0) {
                try {
                    this.f28186u.setText(com.join.mgps.Util.d2.a(this.A0.getLive_total_charm()));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            this.f28163e.setVisibility(0);
            if (this.A0.getVip_exp_time() < System.currentTimeMillis()) {
                this.f28189v0.setVipDataForUserCenter(this.A0.getVip_level(), 0);
            }
            this.f28189v0.setVisibility(0);
            this.f28191w0.setVipDataForUserCenter(0, this.A0.getSvip_level(), true);
            this.f28191w0.setVisibility(0);
            String nickname = this.A0.getNickname();
            String avatarSrc = this.A0.getAvatarSrc();
            this.f28161d.setText(this.A0.getAccount());
            this.f28159c.setText(nickname);
            if (!UtilsMy.N2(this, this.f28159c, this.A0.getVip_level(), this.A0.getSvip_level())) {
                this.f28159c.setTextColor(-1);
            }
            MyImageLoader.s(this.f28155a, avatarSrc);
            int level = this.A0.getLevel();
            if (level > 0) {
                com.join.mgps.Util.r.h(level, this.f28157b);
                TextView textView = this.f28157b;
                textView.setText("LV." + level);
            }
            if (this.A0.getAccount_type() == 2) {
                this.f28191w0.setVipDataForUserCenter(0, 0, true);
                this.f28189v0.setVipDataForUserCenter(0, 0);
                this.f28163e.setVisibility(0);
                this.f28164f.setVisibility(8);
                this.f28161d.setVisibility(8);
                this.f28192x.getHeight();
                this.f28173n0 = com.join.mgps.Util.b0.a(this, this.f28197z0 - 50);
                this.f28177p0.setVisibility(0);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(com.join.mgps.Util.b0.a(this, 67.0f), com.join.mgps.Util.b0.a(this, 67.0f));
                layoutParams.addRule(13);
                layoutParams.topMargin = 0;
                this.f28174o.setLayoutParams(layoutParams);
                this.f28155a.setLayoutParams(layoutParams);
            } else {
                this.f28161d.setVisibility(0);
                this.f28163e.setVisibility(8);
                this.f28164f.setVisibility(0);
                this.f28192x.getHeight();
                this.f28173n0 = com.join.mgps.Util.b0.a(this, this.f28197z0 - 50);
                this.f28177p0.setVisibility(0);
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(com.join.mgps.Util.b0.a(this, 67.0f), com.join.mgps.Util.b0.a(this, 67.0f));
                layoutParams2.addRule(13);
                layoutParams2.topMargin = 0;
                this.f28174o.setLayoutParams(layoutParams2);
                this.f28155a.setLayoutParams(layoutParams2);
            }
            if (this.A0.getPapaMoney() != 0 && !this.C0 && ((recomDatabean = this.M0) == null || recomDatabean.getMain() == null || this.M0.getMain().getAd_switch() != 1)) {
                this.f28165g.setVisibility(this.A0.getPapaMoney() != 0 ? 0 : 8);
                TextView textView2 = this.f28165g;
                textView2.setText(this.A0.getPapaMoney() + "");
            }
            RecomDatabean recomDatabean2 = this.Q0;
            if (recomDatabean2 != null && recomDatabean2.getMain() != null && this.Q0.getMain().getAd_switch() == 1) {
                this.f28155a.setOnClickListener(new p());
            } else {
                this.f28155a.setOnClickListener(new a());
            }
            com.join.mgps.Util.i0.W0(this.f28189v0);
            this.f28192x.setOnClickListener(new b());
            this.f28159c.setOnClickListener(new c());
            String j4 = com.join.mgps.pref.h.n(this).j();
            if (!com.join.mgps.Util.d2.i(j4) || (everdayLogin = (EverdayLogin) JsonMapper.getInstance().fromJson(j4, EverdayLogin.class)) == null) {
                return;
            }
            com.join.android.app.common.utils.c.g(everdayLogin.getHasGetGiftTime());
            return;
        }
        this.f28161d.setVisibility(8);
        this.f28163e.setVisibility(8);
        this.f28189v0.setVisibility(8);
        this.f28191w0.setVisibility(8);
        RecomDatabean recomDatabean3 = this.Q0;
        if (recomDatabean3 != null && recomDatabean3.getMain() != null && this.Q0.getMain().getAd_switch() == 1) {
            this.f28155a.setOnClickListener(new d());
        } else {
            this.f28155a.setOnClickListener(new e());
        }
        this.f28192x.setOnClickListener(new f());
        this.f28159c.setOnClickListener(new g());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void d1() {
        this.C0 = true;
        this.f28187u0.setText(this.D0.getMain().getSub_title());
        MyImageLoader.h(this.f28185t0, this.D0.getMain().getPic_remote());
        this.f28165g.setVisibility(8);
        this.f28182s.setOnClickListener(new o());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void e1() {
        IntentUtil.getInstance().goForumProfileFavoritesActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f1() {
        if (this.B0) {
            return;
        }
        this.B0 = true;
        showMessage(getString(R.string.pay_token_fail));
        AccountUtil_.getInstance_(getApplicationContext()).accountLoginOut(this);
        touristLogin();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void g1() {
        IntentUtil intentUtil = IntentUtil.getInstance();
        intentUtil.goShareWebActivity(this, com.join.mgps.rpc.g.f51563x + "/Auxiliary_tool");
    }

    @Receiver(actions = {f1.a.B})
    public void h1(Context context) {
        c1();
        touristLogin();
        this.A0 = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
        if (this.C == null) {
            this.C = com.join.mgps.rpc.impl.c.P1();
        }
        if (this.D == null) {
            this.D = com.join.mgps.rpc.impl.a.b0();
        }
        if (this.E == null) {
            this.E = com.join.mgps.rpc.impl.m.h();
        }
        if (this.F == null) {
            this.F = com.join.mgps.rpc.impl.f.A0();
        }
        i1();
        b1();
    }

    void i1() {
        AccountBean accountBean = this.A0;
        if (accountBean != null) {
            this.f28193x0.setVipData(accountBean.getVip_level(), this.A0.getSvip_level());
        }
        AccountBean accountBean2 = this.A0;
        if (accountBean2 != null && accountBean2.getVip_level() > 0) {
            long vip_exp_time = this.A0.getVip_exp_time();
            long currentTimeMillis = System.currentTimeMillis();
            long j4 = (vip_exp_time - currentTimeMillis) / 86400000;
            if (vip_exp_time <= currentTimeMillis) {
                this.f28195y0.setVisibility(8);
            } else if (j4 <= 7) {
                TextView textView = this.f28195y0;
                textView.setText(com.join.mgps.Util.x.m(vip_exp_time) + "到期");
            } else {
                this.f28195y0.setVisibility(8);
            }
        } else {
            this.f28195y0.setVisibility(0);
            RecomDatabean recomDatabean = this.O0;
            if (recomDatabean != null && recomDatabean.getMain() != null) {
                this.f28195y0.setText(this.O0.getMain().getSub_title());
            } else {
                this.f28195y0.setText("开通VIP，成为悟饭特权派");
            }
            this.f28195y0.setTextColor(getResources().getColor(R.color.vip_color));
        }
        this.F0.setOnClickListener(new h());
    }

    boolean j1() {
        if (accountBean(this) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(getApplicationContext()).isTourist();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        com.join.mgps.Util.t0.b("AccountCenterActivity", "method onResume() called.");
        c1();
        com.join.mgps.Util.t0.b("AccountCenterActivity", "method refreshViews() called end.");
        touristLogin();
        com.join.mgps.Util.t0.b("AccountCenterActivity", "method touristLogin() called end.");
        this.A0 = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
        if (this.C == null) {
            this.C = com.join.mgps.rpc.impl.c.P1();
        }
        if (this.D == null) {
            this.D = com.join.mgps.rpc.impl.a.b0();
        }
        if (this.E == null) {
            this.E = com.join.mgps.rpc.impl.m.h();
        }
        if (this.F == null) {
            this.F = com.join.mgps.rpc.impl.f.A0();
        }
        com.join.mgps.Util.t0.b("AccountCenterActivity", "init rpc end.");
        i1();
        com.join.mgps.Util.t0.b("AccountCenterActivity", "method updateVipItem() called end.");
        L0();
        com.join.mgps.Util.t0.b("AccountCenterActivity", "method checkUserInfo() called end.");
        b1();
        com.join.mgps.Util.t0.b("AccountCenterActivity", "method pullMyProfileInfo() called end.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void touristLogin() {
        if (!com.join.android.app.common.utils.f.j(this) || isLogined(this)) {
            return;
        }
        try {
            TouristLoginRequestBean touristLoginRequestBean = new TouristLoginRequestBean();
            touristLoginRequestBean.setVersion(com.join.android.app.common.utils.j.n(getApplicationContext()).z());
            touristLoginRequestBean.setDevice_id("");
            touristLoginRequestBean.setMac("");
            touristLoginRequestBean.setSource(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
            touristLoginRequestBean.setTuid(this.B.touriseTUID().d().longValue());
            touristLoginRequestBean.setSign(com.join.mgps.Util.u1.f(touristLoginRequestBean));
            AccountResultMainBean<AccountTokenSuccess> s3 = this.D.s(touristLoginRequestBean.getParams());
            if (s3 == null || s3.getError() != 0) {
                return;
            }
            if (s3.getData().is_success()) {
                AccountBean user_info = s3.getData().getUser_info();
                if (user_info != null) {
                    AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(user_info, getApplicationContext());
                }
                Y0();
                return;
            }
            error(s3.getData().getError_msg());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
