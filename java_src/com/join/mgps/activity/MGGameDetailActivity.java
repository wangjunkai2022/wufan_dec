package com.join.mgps.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.ClipboardManager;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AESUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentToDetialBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.k1;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.adapter.MGGameDetailAdapter;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.ScrollTextViewLayout;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountGetVoucherResult;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.CommentPraiseBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.CommentTokenBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DetailResultBeanV3;
import com.join.mgps.dto.DetialIntentBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.GameDetialBookTag;
import com.join.mgps.dto.GameDetialStrategyItem;
import com.join.mgps.dto.GameDetialStrategyTag;
import com.join.mgps.dto.GameFromBooleanBean;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.dto.GamePariseRequest;
import com.join.mgps.dto.GameScore;
import com.join.mgps.dto.GameVoucherBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageDataOperationBean;
import com.join.mgps.dto.GiftPackageOperationBean;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.PapayVoucherResultMain;
import com.join.mgps.dto.PariseBackData;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.RecommendInfomationBean;
import com.join.mgps.dto.RequestCommentpraiseArgs;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestdetialFolowAndBeSpeak;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ServiceState;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Where;
import com.umeng.analytics.MobclickAgent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.springframework.util.LinkedMultiValueMap;
@EActivity(R.layout.mg_game_detail_layout)
/* loaded from: classes.dex */
public class MGGameDetailActivity extends BaseActivity {

    /* renamed from: l1  reason: collision with root package name */
    private static final String f32988l1 = "MGGameDetailActivity";

    /* renamed from: m1  reason: collision with root package name */
    static String f32989m1 = "0";

    /* renamed from: n1  reason: collision with root package name */
    static String f32990n1 = "";

    /* renamed from: o1  reason: collision with root package name */
    static boolean f32991o1;
    @ViewById
    ImageView A;
    private com.join.mgps.dialog.x0 A0;
    @ViewById
    RelativeLayout B;
    private boolean B0;
    @ViewById
    ImageView C;
    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView D;
    com.join.mgps.rpc.d E;
    com.join.mgps.rpc.e E0;
    com.join.mgps.rpc.n F;
    @Extra
    IntentDateBean G;
    @Extra
    ExtBean H;
    private List<MGGameDetailAdapter.y0> H0;
    @Pref
    PrefDef_ I;
    private RelativeLayout I0;
    private Activity J;
    com.join.mgps.customview.t J0;
    private DownloadTask K;
    private String L0;
    private GameScore M0;
    String P0;
    String Q0;
    String S0;
    PopupWindow T0;
    LinearLayout U0;
    LinearLayout V0;
    LinearLayout W0;
    EditText X0;
    TextView Y0;
    TextView Z0;
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    View f32992a;

    /* renamed from: a1  reason: collision with root package name */
    LinearLayout f32993a1;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    RelativeLayout f32994b;

    /* renamed from: b1  reason: collision with root package name */
    public XListView2 f32995b1;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    RelativeLayout f32996c;

    /* renamed from: c1  reason: collision with root package name */
    v f32997c1;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f32998d;

    /* renamed from: d1  reason: collision with root package name */
    com.join.mgps.rpc.b f32999d1;
    @ViewById(resName = "loding_layout")

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f33000e;

    /* renamed from: e1  reason: collision with root package name */
    com.join.mgps.rpc.b f33001e1;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f33002f;

    /* renamed from: f1  reason: collision with root package name */
    GameFromPopoWinBean f33003f1;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    ListView f33004g;

    /* renamed from: g1  reason: collision with root package name */
    PtrClassicFrameLayout f33005g1;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    RelativeLayout f33006h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    TextView f33008i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ImageView f33010j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    TextView f33012k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    RelativeLayout f33014l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    RelativeLayout f33015m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    ImageView f33016n;

    /* renamed from: n0  reason: collision with root package name */
    private DetailResultBeanV3 f33017n0;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    TextView f33018o;

    /* renamed from: o0  reason: collision with root package name */
    private IntentDateBean f33019o0;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    ProgressBar f33020p;

    /* renamed from: p0  reason: collision with root package name */
    private IntentToDetialBean f33021p0;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    LinearLayout f33022q;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    TextView f33024r;

    /* renamed from: r0  reason: collision with root package name */
    private int f33025r0;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    TextView f33026s;

    /* renamed from: s0  reason: collision with root package name */
    private int f33027s0;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    ScrollTextViewLayout f33028t;

    /* renamed from: t0  reason: collision with root package name */
    private MGGameDetailAdapter f33029t0;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    ImageView f33030u;

    /* renamed from: u0  reason: collision with root package name */
    private Animation f33031u0;
    @ViewById

    /* renamed from: v  reason: collision with root package name */
    ImageView f33032v;

    /* renamed from: v0  reason: collision with root package name */
    private AccountBean f33033v0;
    @ViewById

    /* renamed from: w  reason: collision with root package name */
    ImageView f33034w;

    /* renamed from: w0  reason: collision with root package name */
    private int f33035w0;
    @ViewById

    /* renamed from: x  reason: collision with root package name */
    ImageView f33036x;
    @ViewById

    /* renamed from: y  reason: collision with root package name */
    ImageView f33038y;

    /* renamed from: y0  reason: collision with root package name */
    private Dialog f33039y0;
    @ViewById

    /* renamed from: z  reason: collision with root package name */
    View f33040z;

    /* renamed from: z0  reason: collision with root package name */
    private com.join.android.app.common.manager.b f33041z0;

    /* renamed from: q0  reason: collision with root package name */
    private boolean f33023q0 = false;

    /* renamed from: x0  reason: collision with root package name */
    private int f33037x0 = 0;
    Map<String, DownloadTask> C0 = new HashMap();
    Map<String, DownloadTask> D0 = new HashMap();
    Handler F0 = new k();
    com.join.mgps.customview.t G0 = null;
    private CommentAllListBean.SelfCommentBean K0 = null;
    com.join.mgps.customview.t N0 = null;
    com.join.mgps.customview.t O0 = null;
    int R0 = 0;

    /* renamed from: h1  reason: collision with root package name */
    int f33007h1 = 1;

    /* renamed from: i1  reason: collision with root package name */
    List<GameFromPopoWinBean.DataBean> f33009i1 = new ArrayList();

    /* renamed from: j1  reason: collision with root package name */
    boolean f33011j1 = true;

    /* renamed from: k1  reason: collision with root package name */
    int f33013k1 = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements MGGameDetailAdapter.v0 {
        a() {
        }

        @Override // com.join.mgps.adapter.MGGameDetailAdapter.v0
        public void a(InformationCommentBean informationCommentBean) {
        }

        @Override // com.join.mgps.adapter.MGGameDetailAdapter.v0
        public void b(InformationCommentBean.Sub sub) {
            InformationCommentBean informationCommentBean = new InformationCommentBean();
            informationCommentBean.setUser_name(sub.getUser_name());
            informationCommentBean.setComment_id(sub.getUser_id());
            informationCommentBean.setUser_id(sub.getUser_id());
            if (MGGameDetailActivity.this.f33017n0 != null) {
                GameCommentActivity_.s1(MGGameDetailActivity.this.J).a(MGGameDetailActivity.this.f33017n0.getCrc_sign_id()).d(true).b(informationCommentBean).start();
            }
        }

        @Override // com.join.mgps.adapter.MGGameDetailAdapter.v0
        public void c(CommentBaseBean commentBaseBean) {
            if (MGGameDetailActivity.this.f33017n0 != null) {
                MGGameDetailActivity.this.x1(commentBaseBean);
            }
        }

        @Override // com.join.mgps.adapter.MGGameDetailAdapter.v0
        public void d(CommentBaseBean commentBaseBean, int i2, int i4) {
            MGGameDetailActivity.this.w1(commentBaseBean, i2, i4);
        }

        @Override // com.join.mgps.adapter.MGGameDetailAdapter.v0
        public void e(CommentBaseBean commentBaseBean, int i2, int i4) {
            MGGameDetailActivity.this.y1(commentBaseBean, i2, i4);
        }

        @Override // com.join.mgps.adapter.MGGameDetailAdapter.v0
        public void f(CommentBaseBean commentBaseBean) {
            MGGameDetailActivity.this.x1(commentBaseBean);
        }

        @Override // com.join.mgps.adapter.MGGameDetailAdapter.v0
        public void g() {
        }

        @Override // com.join.mgps.adapter.MGGameDetailAdapter.v0
        public void h() {
        }

        @Override // com.join.mgps.adapter.MGGameDetailAdapter.v0
        public void i() {
            if (AccountUtil_.getInstance_(MGGameDetailActivity.this.J).isTourist()) {
                ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(MGGameDetailActivity.this.J).flags(268435456)).start();
                return;
            }
            MGGameDetailActivity.this.p1();
            MGGameDetailActivity.this.h1();
        }

        @Override // com.join.mgps.adapter.MGGameDetailAdapter.v0
        public void j() {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid((int) MGGameDetailActivity.this.f33017n0.getForum_id());
            com.join.mgps.Util.i0.v0(MGGameDetailActivity.this, forumPostsBean);
        }

        @Override // com.join.mgps.adapter.MGGameDetailAdapter.v0
        public void k() {
            if (MGGameDetailActivity.this.f33017n0.getGame_book() == 1 || IntentUtil.getInstance().goLoginNetGame(MGGameDetailActivity.this.J)) {
                return;
            }
            MGGameDetailActivity.this.T0(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements k1.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f33043a;

        b(boolean z3) {
            this.f33043a = z3;
        }

        @Override // com.join.mgps.Util.k1.b
        public void a(k1.c cVar) {
            if (cVar.a() == 1) {
                MGGameDetailActivity.this.finish();
                com.join.mgps.Util.k1.c().e(MGGameDetailActivity.this.J, MGGameDetailActivity.this.H.getFrom_id(), cVar.b());
                com.join.mgps.Util.i2.a(MGGameDetailActivity.this.J).b("授权成功");
            } else if (this.f33043a) {
                MGGameDetailActivity.this.G2(false);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements CompoundButton.OnCheckedChangeListener {
        c() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
            MGGameDetailActivity.this.I.noFavoriteTips().g(Boolean.valueOf(z3));
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.customview.t tVar = MGGameDetailActivity.this.J0;
            if (tVar != null && tVar.isShowing()) {
                MGGameDetailActivity.this.J0.dismiss();
            }
            MGGameDetailActivity.this.c1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements l1.a {
        e() {
        }

        @Override // l1.a
        public void onClickCancle() {
        }

        @Override // l1.a
        public void onClickOk() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements Animation.AnimationListener {
        f() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements PopupWindow.OnDismissListener {
        g() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            MGGameDetailActivity mGGameDetailActivity = MGGameDetailActivity.this;
            mGGameDetailActivity.f33007h1 = 1;
            mGGameDetailActivity.W0();
            MGGameDetailActivity mGGameDetailActivity2 = MGGameDetailActivity.this;
            mGGameDetailActivity2.R0 = 0;
            mGGameDetailActivity2.c2(1.0f);
            MGGameDetailActivity.f32990n1 = MGGameDetailActivity.this.X0.getText().toString().trim();
            MGGameDetailActivity mGGameDetailActivity3 = MGGameDetailActivity.this;
            if (mGGameDetailActivity3.f33011j1) {
                return;
            }
            mGGameDetailActivity3.f33011j1 = true;
            mGGameDetailActivity3.E0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements com.join.mgps.customview.j {
        h() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            MGGameDetailActivity mGGameDetailActivity = MGGameDetailActivity.this;
            mGGameDetailActivity.f33007h1 = 1;
            mGGameDetailActivity.G0();
            MGGameDetailActivity.this.h1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements com.join.mgps.customview.i {
        i() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            MGGameDetailActivity.this.G0();
            MGGameDetailActivity.this.h1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity.this.T0.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    class k extends Handler {
        k() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            MGGameDetailActivity mGGameDetailActivity = MGGameDetailActivity.this;
            mGGameDetailActivity.f33033v0 = AccountUtil_.getInstance_(mGGameDetailActivity.getApplicationContext()).getAccountData();
            int i2 = message.what;
            if (i2 == 1) {
                if (IntentUtil.getInstance().goLoginInteractive(MGGameDetailActivity.this.J)) {
                    return;
                }
                MGGameDetailActivity.this.A1((InformationCommentBean) message.obj);
            } else if (i2 == 2) {
                if (IntentUtil.getInstance().goLoginNetGame(MGGameDetailActivity.this.J)) {
                    return;
                }
                MGGameDetailActivity.this.r2((GiftPackageDataInfoBean) message.obj);
            } else if (i2 != 3) {
                if (i2 == 4 && !IntentUtil.getInstance().goLoginNetGame(MGGameDetailActivity.this.J)) {
                    MGGameDetailActivity mGGameDetailActivity2 = MGGameDetailActivity.this;
                    mGGameDetailActivity2.A0 = com.join.mgps.Util.a0.c0(mGGameDetailActivity2.J).x(MGGameDetailActivity.this.J);
                    MGGameDetailActivity.this.A0.show();
                    MGGameDetailActivity.this.l1((GameVoucherBean) message.obj);
                }
            } else if (IntentUtil.getInstance().goLoginNetGame(MGGameDetailActivity.this.J)) {
            } else {
                GiftPackageDataInfoBean giftPackageDataInfoBean = (GiftPackageDataInfoBean) message.obj;
                if (MGGameDetailActivity.this.V0(giftPackageDataInfoBean.getGift_package_type())) {
                    MGGameDetailActivity.this.i1(giftPackageDataInfoBean);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity.f32991o1 = true;
            MGGameDetailActivity.this.startActivity(new Intent(MGGameDetailActivity.this, BuildGameFromActivity_.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String trim = MGGameDetailActivity.this.X0.getText().toString().trim();
            MGGameDetailActivity.f32990n1 = trim;
            if (com.join.mgps.Util.n.f(trim)) {
                MGGameDetailActivity.this.showToast("不能上传表情");
                return;
            }
            MGGameDetailActivity.this.T0.dismiss();
            MGGameDetailActivity mGGameDetailActivity = MGGameDetailActivity.this;
            if (mGGameDetailActivity.f33011j1) {
                return;
            }
            mGGameDetailActivity.f33011j1 = true;
            mGGameDetailActivity.E0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f33056a;

        n(GiftPackageDataInfoBean giftPackageDataInfoBean) {
            this.f33056a = giftPackageDataInfoBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ClipboardManager) MGGameDetailActivity.this.J.getSystemService("clipboard")).setText(this.f33056a.getGift_package_code());
            com.join.mgps.Util.i2 a4 = com.join.mgps.Util.i2.a(MGGameDetailActivity.this.J);
            a4.b(this.f33056a.getGift_package_code() + "已复制到剪贴板");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MGGameDetailActivity.this.f33039y0 == null || !MGGameDetailActivity.this.f33039y0.isShowing()) {
                return;
            }
            MGGameDetailActivity.this.f33039y0.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MGGameDetailActivity.this.f33039y0 != null && MGGameDetailActivity.this.f33039y0.isShowing()) {
                MGGameDetailActivity.this.f33039y0.dismiss();
            }
            int status = MGGameDetailActivity.this.K != null ? MGGameDetailActivity.this.K.getStatus() : 0;
            if (UtilsMy.m0(MGGameDetailActivity.this.f33017n0.getPay_tag_info(), MGGameDetailActivity.this.f33017n0.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 5) {
                    UtilsMy.f3(MGGameDetailActivity.this.J, MGGameDetailActivity.this.K, PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                    return;
                } else if (status != 9 && status != 43) {
                    return;
                }
            }
            MGGameDetailActivity.this.K.setKeyword(Where.detail.name());
            MGGameDetailActivity mGGameDetailActivity = MGGameDetailActivity.this;
            mGGameDetailActivity.R0(mGGameDetailActivity.K);
            if (MGGameDetailActivity.this.f33017n0 != null) {
                if (UtilsMy.o0(MGGameDetailActivity.this.f33017n0.getPay_tag_info(), MGGameDetailActivity.this.f33017n0.getCrc_sign_id()) <= 0) {
                    UtilsMy.e1(MGGameDetailActivity.this.K, MGGameDetailActivity.this.f33017n0);
                    if (!UtilsMy.T0(MGGameDetailActivity.this.J, MGGameDetailActivity.this.K)) {
                        if (MGGameDetailActivity.this.f33017n0.getDown_status() == 5) {
                            UtilsMy.R0(MGGameDetailActivity.this.J, MGGameDetailActivity.this.K);
                        } else {
                            UtilsMy.F0(MGGameDetailActivity.this.J, MGGameDetailActivity.this.K, MGGameDetailActivity.this.f33017n0.getTp_down_url(), MGGameDetailActivity.this.f33017n0.getOther_down_switch(), MGGameDetailActivity.this.f33017n0.getCdn_down_switch());
                        }
                    }
                    MGGameDetailActivity.this.t1();
                } else {
                    ExtBean extBean = MGGameDetailActivity.this.H;
                    if (extBean == null || !"checkgame".equals(extBean.getFrom())) {
                        UtilsMy.m3(MGGameDetailActivity.this.J, MGGameDetailActivity.this.f33017n0.getCrc_sign_id());
                    } else {
                        UtilsMy.n3(MGGameDetailActivity.this.J, MGGameDetailActivity.this.f33017n0.getCrc_sign_id(), MGGameDetailActivity.this.H.getFrom_id());
                    }
                }
            }
            MGGameDetailActivity.this.K.setStatus(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f33060a;

        q(GiftPackageDataOperationBean giftPackageDataOperationBean) {
            this.f33060a = giftPackageDataOperationBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ClipboardManager) MGGameDetailActivity.this.J.getSystemService("clipboard")).setText(this.f33060a.getGift_info().getGift_package_code());
            com.join.mgps.Util.i2 a4 = com.join.mgps.Util.i2.a(MGGameDetailActivity.this.J);
            a4.b(this.f33060a.getGift_info().getGift_package_code() + "已复制到剪贴板");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MGGameDetailActivity.this.f33039y0 == null || !MGGameDetailActivity.this.f33039y0.isShowing()) {
                return;
            }
            MGGameDetailActivity.this.f33039y0.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MGGameDetailActivity.this.f33039y0 != null && MGGameDetailActivity.this.f33039y0.isShowing()) {
                MGGameDetailActivity.this.f33039y0.dismiss();
            }
            int status = MGGameDetailActivity.this.K != null ? MGGameDetailActivity.this.K.getStatus() : 0;
            if (UtilsMy.m0(MGGameDetailActivity.this.f33017n0.getPay_tag_info(), MGGameDetailActivity.this.f33017n0.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 5) {
                    UtilsMy.f3(MGGameDetailActivity.this.J, MGGameDetailActivity.this.K, PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                    return;
                } else if (status != 9 && status != 43) {
                    return;
                }
            }
            if (MGGameDetailActivity.this.f33017n0.getDown_status() == 2) {
                return;
            }
            MGGameDetailActivity.this.K.setKeyword(Where.detail.name());
            MGGameDetailActivity mGGameDetailActivity = MGGameDetailActivity.this;
            mGGameDetailActivity.R0(mGGameDetailActivity.K);
            if (MGGameDetailActivity.this.f33017n0 != null) {
                if (UtilsMy.o0(MGGameDetailActivity.this.f33017n0.getPay_tag_info(), MGGameDetailActivity.this.f33017n0.getCrc_sign_id()) > 0) {
                    UtilsMy.m3(MGGameDetailActivity.this.J, MGGameDetailActivity.this.f33017n0.getCrc_sign_id());
                } else {
                    UtilsMy.e1(MGGameDetailActivity.this.K, MGGameDetailActivity.this.f33017n0);
                    if (!UtilsMy.T0(MGGameDetailActivity.this.J, MGGameDetailActivity.this.K)) {
                        if (MGGameDetailActivity.this.f33017n0.getDown_status() == 5) {
                            UtilsMy.R0(MGGameDetailActivity.this.J, MGGameDetailActivity.this.K);
                        } else {
                            UtilsMy.F0(MGGameDetailActivity.this.J, MGGameDetailActivity.this.K, MGGameDetailActivity.this.f33017n0.getTp_down_url(), MGGameDetailActivity.this.f33017n0.getOther_down_switch(), MGGameDetailActivity.this.f33017n0.getCdn_down_switch());
                        }
                    }
                    MGGameDetailActivity.this.t1();
                }
            }
            MGGameDetailActivity.this.K.setStatus(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity.this.G1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class u implements AbsListView.OnScrollListener {
        u() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
            try {
                if (i2 == 0) {
                    View childAt = MGGameDetailActivity.this.f33004g.getChildAt(0);
                    if (childAt != null && childAt.getTop() == 0) {
                        if (MGGameDetailActivity.this.f33017n0.getSp_tpl_two_position() != 0) {
                            if (MGGameDetailActivity.this.f33017n0.getBespeak_switch() == 1) {
                                MGGameDetailActivity.this.f32992a.setVisibility(8);
                                MGGameDetailActivity.this.C.setVisibility(0);
                                MGGameDetailActivity.this.f32994b.setVisibility(8);
                                if (Build.VERSION.SDK_INT >= 21) {
                                    MGGameDetailActivity.this.f33041z0.n(R.color.transparent);
                                }
                            } else {
                                MGGameDetailActivity.this.C.setVisibility(8);
                                MGGameDetailActivity.this.f32994b.setVisibility(0);
                                MGGameDetailActivity.this.f32992a.setVisibility(0);
                                if (Build.VERSION.SDK_INT >= 21) {
                                    MGGameDetailActivity.this.f33041z0.n(R.color.ov_status_bar);
                                }
                            }
                        } else {
                            MGGameDetailActivity.this.f32992a.setVisibility(8);
                            MGGameDetailActivity.this.C.setVisibility(0);
                            MGGameDetailActivity.this.f32994b.setVisibility(8);
                            if (Build.VERSION.SDK_INT >= 21) {
                                MGGameDetailActivity.this.f33041z0.n(R.color.transparent);
                            }
                        }
                    } else {
                        MGGameDetailActivity.this.C.setVisibility(8);
                        MGGameDetailActivity.this.f32994b.setVisibility(0);
                        MGGameDetailActivity.this.f32992a.setVisibility(0);
                        if (Build.VERSION.SDK_INT >= 21 && MGGameDetailActivity.this.f33041z0 != null) {
                            MGGameDetailActivity.this.f33041z0.n(R.color.ov_status_bar);
                        }
                    }
                } else {
                    MGGameDetailActivity.this.C.setVisibility(8);
                    MGGameDetailActivity.this.f32994b.setVisibility(0);
                    MGGameDetailActivity.this.f32992a.setVisibility(0);
                    if (Build.VERSION.SDK_INT >= 21) {
                        MGGameDetailActivity.this.f33041z0.n(R.color.ov_status_bar);
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class v extends BaseAdapter {

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f33067a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ w f33068b;

            a(int i2, w wVar) {
                this.f33067a = i2;
                this.f33068b = wVar;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MGGameDetailActivity.this.f33009i1.get(this.f33067a).getCurrent_game_state().equals("0")) {
                    this.f33068b.f33071b.setBackgroundResource(R.drawable.followed_image);
                    MGGameDetailActivity.this.U0.setVisibility(0);
                    MGGameDetailActivity.this.f32995b1.setVisibility(8);
                    MGGameDetailActivity.this.Y0.setVisibility(0);
                    MGGameDetailActivity.this.Z0.setText("收藏成功");
                    MGGameDetailActivity.this.f32993a1.setVisibility(8);
                    MGGameDetailActivity.f32989m1 = MGGameDetailActivity.this.f33009i1.get(this.f33067a).getId();
                    MGGameDetailActivity mGGameDetailActivity = MGGameDetailActivity.this;
                    mGGameDetailActivity.f33011j1 = false;
                    int i2 = mGGameDetailActivity.R0 + 1;
                    mGGameDetailActivity.R0 = i2;
                    if (i2 > 0) {
                        mGGameDetailActivity.f33017n0.setGame_follow(1);
                        MGGameDetailActivity.this.C1();
                        return;
                    }
                    return;
                }
                this.f33068b.f33071b.setBackgroundResource(R.drawable.follow_none_image);
                MGGameDetailActivity.this.f33009i1.get(this.f33067a).setCurrent_game_state("0");
                MGGameDetailActivity mGGameDetailActivity2 = MGGameDetailActivity.this;
                mGGameDetailActivity2.F0(mGGameDetailActivity2.f33009i1.get(this.f33067a).getId(), MGGameDetailActivity.this.S0, this.f33068b);
                MGGameDetailActivity mGGameDetailActivity3 = MGGameDetailActivity.this;
                int i4 = mGGameDetailActivity3.R0 - 1;
                mGGameDetailActivity3.R0 = i4;
                mGGameDetailActivity3.R0 = i4;
                if (i4 == 0) {
                    mGGameDetailActivity3.f33017n0.setGame_follow(0);
                    MGGameDetailActivity.this.C1();
                }
            }
        }

        v() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return MGGameDetailActivity.this.f33009i1.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return MGGameDetailActivity.this.f33009i1.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            w wVar;
            if (view == null) {
                view = LayoutInflater.from(MGGameDetailActivity.this.J).inflate(R.layout.list_item, (ViewGroup) null);
                wVar = new w();
                wVar.f33070a = (SimpleDraweeView) view.findViewById(R.id.iv_img);
                wVar.f33071b = (ImageView) view.findViewById(R.id.iv_coll);
                wVar.f33072c = (TextView) view.findViewById(R.id.tv_title);
                wVar.f33073d = (TextView) view.findViewById(R.id.tv_size);
                wVar.f33075f = (RelativeLayout) view.findViewById(R.id.ll_gameform);
                wVar.f33076g = (RelativeLayout) view.findViewById(R.id.rl_content);
                view.setTag(wVar);
            } else {
                wVar = (w) view.getTag();
            }
            if (MGGameDetailActivity.this.f33009i1.get(i2).getGame_list().get(0).getGame_ico() != null && !MGGameDetailActivity.this.f33009i1.get(i2).getGame_list().get(0).getGame_ico().equals("")) {
                wVar.f33070a.setImageURI(MGGameDetailActivity.this.f33009i1.get(i2).getGame_list().get(0).getGame_ico());
            } else {
                wVar.f33070a.setImageResource(R.drawable.main_normal_icon);
            }
            wVar.f33072c.setText(MGGameDetailActivity.this.f33009i1.get(i2).getTitle());
            wVar.f33073d.setText(MGGameDetailActivity.this.f33009i1.get(i2).getGame_count() + "款");
            if (MGGameDetailActivity.this.f33009i1.get(i2).getCurrent_game_state().equals("0")) {
                wVar.f33071b.setBackgroundResource(R.drawable.follow_none_image);
            } else {
                wVar.f33071b.setBackgroundResource(R.drawable.followed_image);
                MGGameDetailActivity.this.R0++;
            }
            wVar.f33076g.setOnClickListener(new a(i2, wVar));
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class w {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f33070a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f33071b;

        /* renamed from: c  reason: collision with root package name */
        TextView f33072c;

        /* renamed from: d  reason: collision with root package name */
        TextView f33073d;

        /* renamed from: e  reason: collision with root package name */
        TextView f33074e;

        /* renamed from: f  reason: collision with root package name */
        RelativeLayout f33075f;

        /* renamed from: g  reason: collision with root package name */
        RelativeLayout f33076g;

        w() {
        }
    }

    private void H1() {
        DetailResultBeanV3 detailResultBeanV3 = this.f33017n0;
        if (detailResultBeanV3 == null || detailResultBeanV3.getBanner() == null || this.f33017n0.getBanner().size() < 1) {
            return;
        }
        this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.DETIAL_ADGROUP, new MGGameDetailAdapter.y0.d(this.f33017n0.getBanner())));
    }

    private void I1() {
        DetailResultBeanV3 detailResultBeanV3 = this.f33017n0;
        if (detailResultBeanV3 == null || detailResultBeanV3.getComment_switch() != 1) {
            return;
        }
        this.f33017n0.setSelf_comment(this.K0);
        this.f33017n0.setGame_comment_count(this.L0);
        this.f33017n0.setGame_score(this.M0);
        for (int i2 = 0; this.f33017n0.getCommitDataBeanList() != null && i2 < this.f33017n0.getCommitDataBeanList().size(); i2++) {
            this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.COMMIT, new MGGameDetailAdapter.y0.a(this.f33017n0.getComment_switch() == 1, this.f33017n0.getCommitDataBeanList().get(i2), true)));
        }
    }

    private void J1() {
        DetailResultBeanV3 detailResultBeanV3 = this.f33017n0;
        if (detailResultBeanV3 != null) {
            if (detailResultBeanV3.getComment_switch() != 1) {
                return;
            }
            this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.COMMIT_FOOTER, new MGGameDetailAdapter.y0.b(this.f33017n0.getComment_switch() == 1, this.f33017n0.getComment_count(), this.f33017n0.getCrc_sign_id())));
        }
    }

    private void K1() {
        this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.COMMIT_HEADER, new MGGameDetailAdapter.y0.c(this.f33017n0.getRecommend_information_switch(), this.f33017n0.getRecommend_game_switch(), this.f33017n0.getComment_switch(), this.f33017n0.getComment_count(), this.f33017n0.getCrc_sign_id())));
    }

    private void L1(CommentBaseBean commentBaseBean) {
    }

    private void O1() {
        if (this.f33017n0 == null) {
            return;
        }
        this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.GAME_ITEM_TOP, new MGGameDetailAdapter.y0.o(null, "游戏详情")));
    }

    private void P1() {
        if (this.f33017n0.getGame_service_switch() == 0) {
            return;
        }
        this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.GAME_FAST_ENTRY, new MGGameDetailAdapter.y0.e(this.f33017n0.getForum_id(), this.f33017n0.getServer_qq(), this.f33017n0.getPlayer_qq(), this.f33017n0.getFast_entry_no4(), this.f33017n0.getForum_count())));
    }

    private void Q1() {
        DetailResultBeanV3 detailResultBeanV3 = this.f33017n0;
        if (detailResultBeanV3 == null || detailResultBeanV3.getRecommend_adinfo_switch() == 0 || this.f33017n0.getRecommend_ad_info() == null || this.f33017n0.getRecommend_ad_info().size() == 0) {
            return;
        }
        this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.GAMEAD, new MGGameDetailAdapter.y0.f(this.f33017n0.getRecommend_adinfo_switch(), this.f33017n0.getRecommend_ad_info())));
    }

    private void R1() {
    }

    private void S1() {
        MGGameDetailAdapter.y0 y0Var;
        DetailResultBeanV3 detailResultBeanV3 = this.f33017n0;
        if (detailResultBeanV3 == null) {
            return;
        }
        List<GiftPackageDataInfoBean> game_gift_package = detailResultBeanV3.getGame_gift_package();
        List<ServiceState> game_server_state = this.f33017n0.getGame_server_state();
        if ((game_gift_package == null || game_gift_package.size() == 0) && (game_server_state == null || game_server_state.size() == 0)) {
            return;
        }
        if (this.f33017n0.getGame_server_switch() == 1) {
            y0Var = new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.GIFT_AND_SERVICE, new MGGameDetailAdapter.y0.j(this.f33017n0.getGame_gift_package(), this.f33017n0.getGame_server_state()));
        } else {
            y0Var = new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.GIFT_AND_SERVICE, new MGGameDetailAdapter.y0.j(this.f33017n0.getGame_gift_package(), null));
        }
        this.H0.add(y0Var);
    }

    private void T1() {
        DetailResultBeanV3 detailResultBeanV3 = this.f33017n0;
        if (detailResultBeanV3 == null || detailResultBeanV3.getGame_gift_package() == null || this.f33017n0.getGame_gift_package().size() < 1) {
            return;
        }
        this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.GAME_GIFTS_BOTTOM, new MGGameDetailAdapter.y0.g(true)));
    }

    private void U1() {
        DetailResultBeanV3 detailResultBeanV3 = this.f33017n0;
        if (detailResultBeanV3 == null || detailResultBeanV3.getGame_gift_package() == null || this.f33017n0.getGame_gift_package().size() < 1) {
            return;
        }
        for (int i2 = 0; i2 < this.f33017n0.getGame_gift_package().size(); i2++) {
            this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.GAME_GIFTS_ITEM, new MGGameDetailAdapter.y0.h(true, this.f33017n0.getGame_gift_package().get(i2))));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean V0(String str) {
        if (com.join.mgps.Util.d2.h(str)) {
            com.join.mgps.Util.i2.a(this.J).b(this.J.getString(R.string.unknow_gift_type));
            return false;
        }
        AccountBean accountData = AccountUtil_.getInstance_(this.J).getAccountData();
        if (str.equals("6")) {
            if (accountData.getVip_level() <= 0) {
                y2();
                return false;
            }
        } else if (str.equals("7") && accountData.getSvip_level() <= 0) {
            x2();
            return false;
        }
        return true;
    }

    private void V1() {
        DetailResultBeanV3 detailResultBeanV3 = this.f33017n0;
        if (detailResultBeanV3 == null || detailResultBeanV3.getGame_gift_package() == null || this.f33017n0.getGame_gift_package().size() < 1) {
            return;
        }
        DetialIntentBean detialIntentBean = new DetialIntentBean();
        detialIntentBean.setGameId(this.f33017n0.getCrc_sign_id());
        detialIntentBean.setIntentType(4);
        this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.GAME_ITEM_TOP, new MGGameDetailAdapter.y0.o(detialIntentBean, "福利礼包")));
    }

    private void W1() {
        DetailResultBeanV3 detailResultBeanV3 = this.f33017n0;
        if (detailResultBeanV3 == null || detailResultBeanV3.getRecommend_information_switch() != 1) {
            return;
        }
        List<RecommendInfomationBean> recommend_information = this.f33017n0.getRecommend_information();
        if (this.f33017n0 == null || recommend_information == null || recommend_information.size() < 2) {
            return;
        }
        int i2 = 0;
        while (i2 < recommend_information.size()) {
            this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.INFORMATION, new MGGameDetailAdapter.y0.k(i2 != 0, this.f33017n0.getRecommend_information_switch(), recommend_information.get(i2))));
            i2++;
        }
        a2();
    }

    private void X1() {
        DetailResultBeanV3 detailResultBeanV3 = this.f33017n0;
        if (detailResultBeanV3 == null || detailResultBeanV3.getRecommend_information() == null || this.f33017n0.getRecommend_information().size() < 1 || this.f33017n0.getRecommend_information_switch() != 1) {
            return;
        }
        DetialIntentBean detialIntentBean = new DetialIntentBean();
        detialIntentBean.setGameId(this.f33017n0.getCrc_sign_id());
        detialIntentBean.setIntentType(2);
        this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.GAME_ITEM_TOP, new MGGameDetailAdapter.y0.o(detialIntentBean, "最新资讯")));
    }

    private void Y0() {
        com.join.mgps.customview.t tVar = this.G0;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.G0.dismiss();
    }

    private void Y1() {
    }

    private void Z0() {
        com.join.mgps.customview.t tVar = this.N0;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.N0.dismiss();
    }

    private void Z1() {
        if (this.f33017n0.getGame_prompt() == null || this.f33017n0.getGame_prompt().size() == 0) {
            return;
        }
        this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.MESSAGE, new MGGameDetailAdapter.y0.p(this.f33017n0.getGame_prompt())));
        a2();
    }

    private void a1() {
        com.join.mgps.customview.t tVar = this.O0;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.O0.dismiss();
    }

    private void a2() {
        this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.NULLITEM, null));
    }

    private void b2(int i2) {
        MGGameDetailAdapter.ViewType viewType = MGGameDetailAdapter.ViewType.NULLITEM;
        this.H0.add(new MGGameDetailAdapter.y0(viewType, i2 + ""));
    }

    private void d2() {
        DetailResultBeanV3 detailResultBeanV3 = this.f33017n0;
        if (detailResultBeanV3 == null || detailResultBeanV3.getRecommend_game() == null || this.f33017n0.getRecommend_game().size() < 1) {
            return;
        }
        this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.GAME_ITEM_TOP, new MGGameDetailAdapter.y0.o(null, "相关推荐")));
    }

    private void e2() {
        if (this.f33017n0.getRecommend_game_switch() == 0) {
            return;
        }
        this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.RECOMMEND, new MGGameDetailAdapter.y0.q(this.f33017n0.getRecommend_game_switch(), this.f33017n0.getRecommend_game())));
        a2();
    }

    private void f2() {
        DetailResultBeanV3 detailResultBeanV3;
        if (this.f33017n0.getGame_server_switch() == 0 || (detailResultBeanV3 = this.f33017n0) == null || detailResultBeanV3.getGame_server_state() == null || this.f33017n0.getGame_server_state().size() < 1) {
            return;
        }
        List<ServiceState> game_server_state = this.f33017n0.getGame_server_state();
        for (int i2 = 0; i2 < game_server_state.size(); i2++) {
            ServiceState serviceState = game_server_state.get(i2);
            this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.SERVICEITEM, new MGGameDetailAdapter.y0.l(serviceState.getTitle(), serviceState.getType(), serviceState.getAdd_time())));
        }
        a2();
    }

    private void g2() {
        DetailResultBeanV3 detailResultBeanV3;
        if (this.f33017n0.getGame_server_switch() == 0 || (detailResultBeanV3 = this.f33017n0) == null || detailResultBeanV3.getGame_server_state() == null || this.f33017n0.getGame_server_state().size() < 1) {
            return;
        }
        DetialIntentBean detialIntentBean = new DetialIntentBean();
        detialIntentBean.setGameId(this.f33017n0.getCrc_sign_id());
        detialIntentBean.setIntentType(3);
        this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.GAME_ITEM_TOP, new MGGameDetailAdapter.y0.o(detialIntentBean, "开服合服")));
    }

    private void h2() {
        List<GameDetialStrategyItem> posts;
        DetailResultBeanV3 detailResultBeanV3 = this.f33017n0;
        if (detailResultBeanV3 == null || detailResultBeanV3.getGame_strategy() == null || (posts = this.f33017n0.getGame_strategy().getPosts()) == null || posts.size() < 1) {
            return;
        }
        for (int i2 = 0; i2 < posts.size(); i2++) {
            GameDetialStrategyItem gameDetialStrategyItem = posts.get(i2);
            if (i2 == 0 && gameDetialStrategyItem.getPic_list().length > 0) {
                if (gameDetialStrategyItem.getPic_list().length == 1) {
                    RecommendInfomationBean recommendInfomationBean = new RecommendInfomationBean();
                    recommendInfomationBean.setPic_list(gameDetialStrategyItem.getPic_list());
                    recommendInfomationBean.setPost_id(gameDetialStrategyItem.getId());
                    recommendInfomationBean.setPraise(gameDetialStrategyItem.getPraise());
                    recommendInfomationBean.setCommit(gameDetialStrategyItem.getCommit());
                    recommendInfomationBean.setTimes(gameDetialStrategyItem.getAdd_time() / 1000);
                    recommendInfomationBean.setTitle(gameDetialStrategyItem.getSubject());
                    recommendInfomationBean.setView(gameDetialStrategyItem.getView());
                    GameDetialBookTag tag_name = gameDetialStrategyItem.getTag_name();
                    recommendInfomationBean.setType(tag_name.getTitle());
                    recommendInfomationBean.setType_color(tag_name.getColor());
                    this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.INFORMATIONTOP, new MGGameDetailAdapter.y0.k(false, 1, recommendInfomationBean)));
                } else {
                    this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.STRAYTEGYITEM_NOIMAGE, new MGGameDetailAdapter.y0.m(gameDetialStrategyItem, true)));
                    this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.STRAYTEGYITEM_IMAGE, new MGGameDetailAdapter.y0.m(gameDetialStrategyItem)));
                }
            } else {
                this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.STRAYTEGYITEM_NOIMAGE, new MGGameDetailAdapter.y0.m(gameDetialStrategyItem)));
            }
        }
        a2();
    }

    private void i2() {
        List<GameDetialStrategyTag> tags;
        DetailResultBeanV3 detailResultBeanV3 = this.f33017n0;
        if (detailResultBeanV3 == null || detailResultBeanV3.getGame_strategy() == null || (tags = this.f33017n0.getGame_strategy().getTags()) == null || tags.size() < 1) {
            return;
        }
        this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.STRAYTEGYTABLE, new MGGameDetailAdapter.y0.n(tags)));
    }

    private void j2() {
        DetailResultBeanV3 detailResultBeanV3 = this.f33017n0;
        if (detailResultBeanV3 == null || detailResultBeanV3.getGame_strategy() == null) {
            return;
        }
        DetialIntentBean detialIntentBean = new DetialIntentBean();
        detialIntentBean.setGameId(this.f33017n0.getCrc_sign_id());
        detialIntentBean.setIntentType(1);
        if (this.f33017n0.getGame_strategy() != null) {
            detialIntentBean.setStrategyTags(this.f33017n0.getGame_strategy().getTags());
        }
        detialIntentBean.setStartegyTab(0);
        this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.GAME_ITEM_TOP, new MGGameDetailAdapter.y0.o(detialIntentBean, "攻略")));
    }

    private void k2() {
        this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.TITLE, new MGGameDetailAdapter.y0.s(this.f33017n0.getIco_remote(), this.f33017n0.getGame_name(), this.f33017n0.getTag_info(), this.f33017n0.getDown_count(), this.f33017n0.getDown_count_manual(), this.f33017n0.getCompany_name(), this.f33017n0.getSize(), this.f33017n0.getGame_follow(), this.f33017n0.getGame_book(), this.f33017n0.getFollow_background_img(), this.f33017n0.getGame_book_tag(), this.f33017n0.getBespeak_switch())));
    }

    private void l2() {
        this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.UPDATE_RECORD, new MGGameDetailAdapter.y0.t(this.f33017n0.getGame_upgrade_info_switch(), this.f33017n0.getGame_upgrade_info())));
    }

    private void m2() {
        this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.VIEWPAGE, new MGGameDetailAdapter.y0.u(this.f33017n0.getVedio_cover_pic(), this.f33017n0.getPic_info(), this.f33017n0.getPic_position(), this.f33017n0.getVedio_url())));
    }

    private void n2() {
        DetailResultBeanV3 detailResultBeanV3 = this.f33017n0;
        if (detailResultBeanV3 == null || detailResultBeanV3.getGame_coupon_list() == null || this.f33017n0.getGame_coupon_list().size() < 1) {
            return;
        }
        for (int i2 = 0; i2 < this.f33017n0.getGame_coupon_list().size(); i2++) {
            this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.VOUCHER, new MGGameDetailAdapter.y0.v(true, this.f33017n0.getGame_coupon_list().get(i2))));
        }
    }

    private void o2() {
        this.H0.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.WEB, new MGGameDetailAdapter.y0.w(this.f33017n0.getEdit_recommend(), this.f33017n0.getGame_describe_second(), this.f33017n0.getLineCount())));
    }

    private void q2() {
        showLoding();
        f1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void A1(InformationCommentBean informationCommentBean) {
        if (com.join.android.app.common.utils.f.j(this.J)) {
            try {
                GamePariseRequest gamePariseRequest = new GamePariseRequest();
                gamePariseRequest.setGame_id(this.f33019o0.getCrc_link_type_val());
                gamePariseRequest.setComment_id(informationCommentBean.getComment_id() + "");
                gamePariseRequest.setUid(this.f33033v0.getUid());
                ResultMainBean<List<PariseBackData>> b4 = this.E.b(RequestBeanUtil.getInstance(getApplicationContext()).getGameDetailParis(gamePariseRequest));
                if (b4 != null && b4.getFlag() == 1) {
                    List<PariseBackData> data = b4.getMessages().getData();
                    if (data.size() > 0) {
                        int i2 = 0;
                        if (data.get(0).isVal()) {
                            try {
                                i2 = Integer.parseInt(informationCommentBean.getPraise_count()) + 1;
                            } catch (Exception e4) {
                                e4.printStackTrace();
                            }
                            informationCommentBean.setPraise_count(i2 + "");
                            D2();
                            return;
                        }
                        showToast("你已赞过");
                        return;
                    }
                    showToast("你已赞过");
                    return;
                }
                v1();
                showToast("点赞失败");
                return;
            } catch (Exception e5) {
                e5.printStackTrace();
                v1();
                showToast("点赞失败");
                return;
            }
        }
        showToast("没有网络");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void A2() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void B1() {
        StringBuilder sb = new StringBuilder();
        sb.append("method progress_layout() called.status=");
        sb.append(this.K.getStatus());
        DownloadTask downloadTask = this.K;
        if (downloadTask == null) {
            return;
        }
        if (downloadTask.getStatus() == 2) {
            E2();
            com.php25.PDownload.d.h(this.K);
        } else if (this.K.getStatus() == 3 || this.K.getStatus() == 6) {
            E2();
            com.php25.PDownload.d.c(this.K, this.J);
            t1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void B2() {
        SearchHintActivity_.S1(this).start();
        com.papa.sim.statistic.p.l(this.J).m2(Where.detial2, AccountUtil_.getInstance_(this.J).getUid());
    }

    synchronized void C1() {
        try {
            if (this.H0 == null) {
                this.H0 = new ArrayList();
            }
            this.H0.clear();
            this.f33017n0.setSp_tpl_two_position(0);
            if (com.join.mgps.Util.d2.h(this.f33017n0.getBackground_color())) {
                this.f33017n0.setBackground_color("#230404");
            }
            try {
                this.B.setBackgroundColor(Color.parseColor(this.f33017n0.getBackground_color()));
                this.f33004g.setBackgroundColor(Color.parseColor(this.f33017n0.getBackground_color()));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            this.f33006h.setBackgroundColor(1275068416);
            this.f33040z.setVisibility(8);
            k2();
            if (this.f33017n0.getSp_tpl_two_banner_switch() == 1) {
                H1();
            }
            X1();
            Y1();
            W1();
            S1();
            j2();
            i2();
            h2();
            O1();
            m2();
            o2();
            R1();
            Q1();
            Z1();
            P1();
            d2();
            e2();
            K1();
            I1();
            J1();
            this.f33029t0.notifyDataSetChanged();
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void C2() {
        XListView2 xListView2 = this.f32995b1;
        if (xListView2 != null) {
            try {
                xListView2.f();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void D1() {
        C1();
        com.join.mgps.listener.a.b().c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void D2() {
        if (this.f33017n0.getComment_switch() == 1) {
            g1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void E0() {
        try {
            AccountBean accountData = AccountUtil_.getInstance_(this.J).getAccountData();
            LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
            linkedMultiValueMap.add("uid", Integer.valueOf(accountData.getUid()));
            linkedMultiValueMap.add("token", accountData.getToken());
            linkedMultiValueMap.add("group_id", f32989m1);
            linkedMultiValueMap.add("game_id", this.S0);
            linkedMultiValueMap.add("game_title", f32990n1);
            linkedMultiValueMap.add("device_id", this.P0);
            linkedMultiValueMap.add("version", this.Q0);
            GameFromBooleanBean Q = this.f33001e1.Q(linkedMultiValueMap);
            if (Q != null && Q.getError() == 0 && Q.getData().isState()) {
                showToast("收藏成功!");
            } else if (Q.getData().getCode() == 10002) {
                showToast("游戏重复!");
            } else if (10001 == Q.getData().getCode()) {
                showToast("游戏不存在!");
            } else {
                showToast("收藏失败!");
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void E1(String str, boolean z3, int i2, int i4) {
        com.join.mgps.Util.i2.a(this.J).b(str);
        if (z3) {
            if (i4 == 1) {
                this.f33029t0.U(i2, 0);
            } else {
                this.f33029t0.T(i2, 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void E2() {
        DetailResultBeanV3 detailResultBeanV3 = this.f33017n0;
        if (detailResultBeanV3 == null || this.K == null) {
            return;
        }
        UtilsMy.v2(detailResultBeanV3.getSp_tag_info(), this.f33015m, this.K);
        ((TextView) this.f33015m.findViewById(R.id.moneyText)).setTextColor(-1);
        StringBuilder sb = new StringBuilder();
        sb.append("method updateButn() called.status=");
        sb.append(this.K.getStatus());
        this.f33012k.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
        DownloadTask downloadTask = this.K;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.m0(this.f33017n0.getPay_tag_info(), this.f33017n0.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status == 9) {
            t2();
            this.f33012k.setText("更新");
            this.f33016n.setImageResource(R.drawable.detail_comment_download_continue);
            this.f33016n.setImageResource(R.drawable.detial_simple_install_selecter);
        } else if (status == 12) {
            t2();
            this.f33012k.setText("解压中..");
        } else if (status == 13) {
            t2();
            this.f33012k.setText("解压");
            this.f33016n.setImageResource(R.drawable.detail_comment_download_continue);
        } else if (status == 11) {
            t2();
            this.f33012k.setText("安装");
            this.f33012k.setBackgroundResource(R.drawable.detial_simple_install_selecter);
            this.f33016n.setImageResource(R.drawable.detial_simple_install_selecter);
        } else if (status == 5 || status == 42) {
            t2();
            G2(true);
            this.f33012k.setBackgroundResource(R.drawable.detial_simple_open_selecter);
            this.f33012k.setText(this.J.getResources().getString(R.string.download_status_finished));
            this.f33016n.setImageResource(R.drawable.detail_comment_download_continue);
        } else if (status == 2) {
            w2();
            this.f33016n.setImageResource(R.drawable.detail_comment_download_pause);
            UtilsMy.C3(this.K);
            this.f33020p.setProgress((int) this.K.getProgress());
            TextView textView = this.f33018o;
            textView.setText(this.K.getProgress() + "%");
        } else if (status == 3 || status == 6 || status == 27) {
            w2();
            this.f33016n.setImageResource(R.drawable.detail_comment_download_continue);
            UtilsMy.C3(this.K);
            this.f33020p.setProgress((int) this.K.getProgress());
            TextView textView2 = this.f33018o;
            textView2.setText(this.K.getProgress() + "%");
        } else if (status == 10) {
            t2();
            TextView textView3 = this.f33012k;
            textView3.setText("等待\u3000" + this.f33017n0.getSize() + "M");
            this.f33016n.setImageResource(R.drawable.detail_comment_download_continue);
        } else if (status == 1) {
        } else {
            if (status == 43) {
                t2();
                if (s1(this.f33017n0) && !n1.e0.o().p(this.f33017n0.getCrc_sign_id())) {
                    this.f33012k.setText(this.J.getResources().getString(R.string.pay_game_amount, this.f33017n0.getPay_tag_info().getPayGameAmount()));
                } else {
                    this.f33012k.setText(this.J.getResources().getString(R.string.download_status_download));
                }
                this.f33016n.setImageResource(R.drawable.detail_comment_download_continue);
                DetailResultBeanV3 detailResultBeanV32 = this.f33017n0;
                if (detailResultBeanV32 != null) {
                    if (detailResultBeanV32.getBespeak_switch() == 1 && this.f33017n0.getDown_status() == 2) {
                        if (this.f33017n0.getGame_book() == 1) {
                            this.f33012k.setText("已预约");
                            UtilsMy.m0(this.f33017n0.getPay_tag_info(), this.f33017n0.getCrc_sign_id());
                            UtilsMy.y2(this.f33012k, this.f33017n0);
                            return;
                        }
                        this.f33012k.setText("预约");
                        return;
                    }
                    UtilsMy.m0(this.f33017n0.getPay_tag_info(), this.f33017n0.getCrc_sign_id());
                    UtilsMy.y2(this.f33012k, this.f33017n0);
                }
            } else if (status == 48) {
                t2();
                this.f33012k.setText(this.J.getResources().getString(R.string.download_status_installing));
            } else {
                t2();
                if (s1(this.f33017n0) && !n1.e0.o().p(this.f33017n0.getCrc_sign_id())) {
                    this.f33012k.setText(this.J.getResources().getString(R.string.pay_game_amount, this.f33017n0.getPay_tag_info().getPayGameAmount()));
                } else {
                    this.f33012k.setText(this.J.getResources().getString(R.string.download_status_download));
                }
                this.f33016n.setImageResource(R.drawable.detail_comment_download_continue);
                DetailResultBeanV3 detailResultBeanV33 = this.f33017n0;
                if (detailResultBeanV33 != null) {
                    if (detailResultBeanV33.getBespeak_switch() == 1 && this.f33017n0.getDown_status() == 2) {
                        if (this.f33017n0.getGame_book() == 1) {
                            this.f33012k.setText("已预约");
                            UtilsMy.m0(this.f33017n0.getPay_tag_info(), this.f33017n0.getCrc_sign_id());
                            UtilsMy.y2(this.f33012k, this.f33017n0);
                            return;
                        }
                        this.f33012k.setText("预约");
                        return;
                    }
                    UtilsMy.m0(this.f33017n0.getPay_tag_info(), this.f33017n0.getCrc_sign_id());
                    UtilsMy.y2(this.f33012k, this.f33017n0);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void F0(String str, String str2, w wVar) {
        try {
            if (com.join.android.app.common.utils.f.j(this.J)) {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", Integer.valueOf(this.f33033v0.getUid()));
                linkedMultiValueMap.add("token", this.f33033v0.getToken());
                linkedMultiValueMap.add("group_id", str);
                linkedMultiValueMap.add("game_id", str2);
                linkedMultiValueMap.add("device_id", this.P0);
                linkedMultiValueMap.add("version", this.Q0);
                GameFromBooleanBean z3 = this.f33001e1.z(linkedMultiValueMap);
                if (z3 != null && z3.getError() == 0 && z3.getData().isState()) {
                    showToast("已取消该收藏!");
                } else {
                    showToast("取消收藏失败!");
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F1(CommentResponse commentResponse) {
        if (commentResponse.getCode() == 801) {
            k1();
            com.join.mgps.Util.i2.a(this.J).b("数据访问失败，请稍候再试！");
            return;
        }
        com.join.mgps.Util.i2.a(this.J).b(commentResponse.getMsg());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F2() {
        XListView2 xListView2 = this.f32995b1;
        if (xListView2 != null) {
            try {
                xListView2.t();
                this.f32995b1.u();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void G0() {
        try {
            XListView2 xListView2 = this.f32995b1;
            if (xListView2 != null) {
                xListView2.k();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G1() {
        IntentUtil.getInstance().goSearchHintActivity(this.J);
        com.papa.sim.statistic.p.l(this.J).m2(Where.detial2, AccountUtil_.getInstance_(this.J).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void G2(boolean z3) {
        ExtBean extBean = this.H;
        if (extBean == null || !"checkgame".equals(extBean.getFrom())) {
            return;
        }
        com.join.mgps.Util.k1.c().b(this.J, this.H.getFrom_id(), new b(z3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H2(ResultMainBean resultMainBean, int i2) {
        if (resultMainBean.getFlag() == 1) {
            if (i2 == 2) {
                this.f33017n0.setGame_follow(1);
                com.join.mgps.Util.i2.a(this.J).b("收藏成功");
            } else if (i2 == 3) {
                this.f33017n0.setGame_book(0);
            } else if (i2 == 4) {
                this.f33017n0.setGame_book(1);
                Intent intent = new Intent("com.broadcast.bespeak.sussess");
                intent.putExtra("gameid", this.f33017n0.getCrc_sign_id());
                sendBroadcast(intent);
                com.join.mgps.Util.a0.c0(this.J).O(this.J, 1, new e()).show();
            }
            C1();
            E2();
        }
    }

    void M1(int i2) {
        this.f33020p.setProgress(i2);
        TextView textView = this.f33018o;
        textView.setText(i2 + "%");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 300)
    public void N1(DetailResultBeanV3 detailResultBeanV3) {
        this.B0 = true;
        this.f33017n0.setCdn_down_switch(detailResultBeanV3.getCdn_down_switch());
        this.f33017n0.setCfg_ver(detailResultBeanV3.getCfg_ver());
        this.f33017n0.setCfg_down_url(detailResultBeanV3.getCfg_down_url());
        this.f33017n0.setCfg_lowest_ver(detailResultBeanV3.getCfg_lowest_ver());
        this.f33017n0.setCfg_ver_name(detailResultBeanV3.getCfg_ver_name());
        this.f33017n0.setComment_count(detailResultBeanV3.getComment_count());
        this.f33017n0.setComment_count_manual(detailResultBeanV3.getComment_count_manual());
        this.f33017n0.setComment_people_count(detailResultBeanV3.getComment_people_count());
        this.f33017n0.setComment_people_count_manual(detailResultBeanV3.getComment_people_count_manual());
        this.f33017n0.setCompany_name(detailResultBeanV3.getCompany_name());
        this.f33017n0.setComposite_score(detailResultBeanV3.getComposite_score());
        this.f33017n0.setCrc_sign_id(detailResultBeanV3.getCrc_sign_id());
        this.f33017n0.setDown_count(detailResultBeanV3.getDown_count());
        this.f33017n0.setDownloadType(detailResultBeanV3.getDownloadType());
        this.f33017n0.setDescribe(detailResultBeanV3.getDescribe());
        this.f33017n0.setDown_url_local(detailResultBeanV3.getDown_url_local());
        this.f33017n0.setDown_count_manual(detailResultBeanV3.getDown_count_manual());
        this.f33017n0.setDown_url_remote(detailResultBeanV3.getDown_url_remote());
        this.f33017n0.setEdit_recommend(detailResultBeanV3.getEdit_recommend());
        this.f33017n0.setFight_funv2(detailResultBeanV3.getFight_funv2());
        this.f33017n0.setFight_type(detailResultBeanV3.getFight_type());
        this.f33017n0.setForum_id(detailResultBeanV3.getForum_id());
        this.f33017n0.setForum_switch(detailResultBeanV3.getForum_switch());
        this.f33017n0.setGame_info_tpl_type(detailResultBeanV3.getGame_info_tpl_type());
        this.f33017n0.setGame_info_top_pic(detailResultBeanV3.getGame_info_top_pic());
        this.f33017n0.setGame_name(detailResultBeanV3.getGame_name());
        this.f33017n0.setGame_upgrade_info(detailResultBeanV3.getGame_upgrade_info());
        this.f33017n0.setGame_upgrade_info_switch(detailResultBeanV3.getGame_upgrade_info_switch());
        this.f33017n0.setIco_remote(detailResultBeanV3.getIco_remote());
        this.f33017n0.setIs_world(detailResultBeanV3.getIs_world());
        this.f33017n0.setIs_network(detailResultBeanV3.getIs_network());
        this.f33017n0.setInfo(detailResultBeanV3.getInfo());
        this.f33017n0.setIco_local(detailResultBeanV3.getIco_local());
        this.f33017n0.setIs_fight(detailResultBeanV3.getIs_fight());
        this.f33017n0.setLock_sp(detailResultBeanV3.getLock_sp());
        this.f33017n0.setOther_down_switch(detailResultBeanV3.getOther_down_switch());
        this.f33017n0.setPic_info(detailResultBeanV3.getPic_info());
        this.f33017n0.setPlugin_screenshot(detailResultBeanV3.getPlugin_screenshot());
        this.f33017n0.setPlugin_num(detailResultBeanV3.getPlugin_num());
        this.f33017n0.setPlugin_lowest_ver_name(detailResultBeanV3.getPlugin_lowest_ver_name());
        this.f33017n0.setPlugin_lowest_ver(detailResultBeanV3.getPlugin_lowest_ver());
        this.f33017n0.setPackage_name(detailResultBeanV3.getPackage_name());
        this.f33017n0.setPapa_explain(detailResultBeanV3.getPapa_explain());
        this.f33017n0.setPercen_praise(detailResultBeanV3.getPercen_praise());
        this.f33017n0.setPercen_stars(detailResultBeanV3.getPercen_stars());
        this.f33017n0.setPercen_stars(detailResultBeanV3.getPercen_stars());
        this.f33017n0.setRecommend_game(detailResultBeanV3.getRecommend_game());
        this.f33017n0.setRecommend_game_switch(detailResultBeanV3.getRecommend_game_switch());
        this.f33017n0.setRecommend_information(detailResultBeanV3.getRecommend_information());
        this.f33017n0.setRom_lowest_ver(detailResultBeanV3.getRom_lowest_ver());
        this.f33017n0.setSource_ver_name(detailResultBeanV3.getSource_ver_name());
        this.f33017n0.setSource_ver(detailResultBeanV3.getSource_ver());
        this.f33017n0.setSync_memory(detailResultBeanV3.getSync_memory());
        this.f33017n0.setScore_count(detailResultBeanV3.getScore_count());
        this.f33017n0.setScore_count_manual(detailResultBeanV3.getScore_count_manual());
        this.f33017n0.setScreenshot_pic(detailResultBeanV3.getScreenshot_pic());
        this.f33017n0.setSharer(detailResultBeanV3.getSharer());
        this.f33017n0.setSign_id(detailResultBeanV3.getSign_id());
        this.f33017n0.setSize(detailResultBeanV3.getSize());
        this.f33017n0.setTp_down_url(detailResultBeanV3.getTp_down_url());
        this.f33017n0.setTab_page_info(detailResultBeanV3.getTab_page_info());
        this.f33017n0.setTag_info(detailResultBeanV3.getTag_info());
        this.f33017n0.setUnzip_size(detailResultBeanV3.getUnzip_size());
        this.f33017n0.setVedio_cover_pic(detailResultBeanV3.getVedio_cover_pic());
        this.f33017n0.setVedio_url(detailResultBeanV3.getVedio_url());
        this.f33017n0.setVer(detailResultBeanV3.getVer());
        this.f33017n0.setVer_name(detailResultBeanV3.getVer_name());
        this.f33017n0.setWorld_shop(detailResultBeanV3.getWorld_shop());
        this.f33017n0.setWorld_area(detailResultBeanV3.getWorld_area());
        this.f33017n0.setDown_url_remote(detailResultBeanV3.getDown_url_remote());
        this.f33017n0.setApk_sign(detailResultBeanV3.getApk_sign());
        this.f33017n0.setFight_screenshot_pic(detailResultBeanV3.getFight_screenshot_pic());
        this.f33017n0.setLast_week_down_count(detailResultBeanV3.getLast_week_down_count());
        this.f33017n0.setRecommend_ad_info(detailResultBeanV3.getRecommend_ad_info());
        this.f33017n0.setGame_describe_second(detailResultBeanV3.getGame_describe_second());
        this.f33017n0.setGame_prompt(detailResultBeanV3.getGame_prompt());
        this.f33017n0.setRecommend_information_switch(detailResultBeanV3.getRecommend_information_switch());
        this.f33017n0.setRecommend_adinfo_switch(detailResultBeanV3.getRecommend_adinfo_switch());
        this.f33017n0.setComment_switch(detailResultBeanV3.getComment_switch());
        this.f33017n0.setPic_position(detailResultBeanV3.getPic_position());
        this.f33017n0.setGame_coupon_list(detailResultBeanV3.getGame_coupon_list());
        this.f33017n0.setGame_gift_package(detailResultBeanV3.getGame_gift_package());
        this.f33017n0.setGift_package_switch(detailResultBeanV3.getGift_package_switch());
        this.f33017n0.setDown_status(detailResultBeanV3.getDown_status());
        this.f33017n0.setPanel_switch(detailResultBeanV3.getPanel_switch());
        this.f33017n0.setBanner(detailResultBeanV3.getBanner());
        this.f33017n0.setGame_server_state(detailResultBeanV3.getGame_server_state());
        this.f33017n0.setGame_strategy(detailResultBeanV3.getGame_strategy());
        this.f33017n0.setFast_entry_no4(detailResultBeanV3.getFast_entry_no4());
        this.f33017n0.setGame_book_tag(detailResultBeanV3.getGame_book_tag());
        this.f33017n0.setGame_follow(detailResultBeanV3.getGame_follow());
        this.f33017n0.setGame_book(detailResultBeanV3.getGame_book());
        this.f33017n0.setSp_tpl_two_banner_switch(detailResultBeanV3.getSp_tpl_two_banner_switch());
        this.f33017n0.setSp_tpl_two_position(detailResultBeanV3.getSp_tpl_two_position());
        this.f33017n0.setServer_qq(detailResultBeanV3.getServer_qq());
        this.f33017n0.setPlayer_qq(detailResultBeanV3.getPlayer_qq());
        this.f33017n0.setFollow_background_img(detailResultBeanV3.getFollow_background_img());
        this.f33017n0.setForum_count(detailResultBeanV3.getForum_count());
        this.f33017n0.setBespeak_switch(detailResultBeanV3.getBespeak_switch());
        this.f33017n0.setBackground_color(detailResultBeanV3.getBackground_color());
        this.f33017n0.setGame_server_switch(detailResultBeanV3.getGame_server_switch());
        this.f33017n0.setGame_service_switch(detailResultBeanV3.getGame_service_switch());
        this.f33017n0.setFast_entry_switch(detailResultBeanV3.getFast_entry_switch());
        this.f33017n0.setBespeak_count(detailResultBeanV3.getBespeak_count());
        this.f33017n0.setDown_count(detailResultBeanV3.getDown_count());
        this.f33017n0.setShare_url(detailResultBeanV3.getShare_url());
        this.f33017n0.setSp_tag_info(detailResultBeanV3.getSp_tag_info());
        this.f33017n0.setPay_tag_info(detailResultBeanV3.getPay_tag_info());
        this.f33017n0.set_from_type(this.H.get_from_type());
        this.f33017n0.set_from(101);
        int height = this.f33002f.getHeight() / this.f33002f.getLineHeight();
        this.f33037x0 = height;
        this.f33017n0.setLineCount(height);
        C1();
        if (this.f33017n0.getComment_switch() == 1) {
            g1();
        }
        this.f33008i.setText(this.f33017n0.getGame_name());
        if (this.f33019o0 != null) {
            this.K = g1.f.G().B(this.f33019o0.getCrc_link_type_val());
        }
        DownloadTask downloadTask = this.K;
        if (downloadTask == null) {
            this.K = this.f33017n0.getDownloadtaskDown();
            if (UtilsMy.e0(this.f33017n0.getTag_info())) {
                this.K.setFileType(Dtype.android.name());
                if (com.join.android.app.common.utils.a.g0(getApplicationContext()).c(getApplicationContext(), this.f33017n0.getPackage_name())) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(getApplicationContext()).k(getApplicationContext(), this.f33017n0.getPackage_name());
                    if (com.join.mgps.Util.d2.i(this.f33017n0.getVer()) && k4.d() < Integer.parseInt(this.f33017n0.getVer())) {
                        this.K.setStatus(9);
                    } else {
                        this.K.setStatus(5);
                    }
                } else {
                    this.K.setStatus(0);
                }
            } else {
                this.K.setStatus(0);
            }
        } else {
            downloadTask.setDownloadType(this.f33017n0.getDownloadType());
            this.K.setScreenshot_pic(this.f33017n0.getScreenshot_pic());
        }
        E2();
        if (this.f33023q0) {
            q1();
        }
        if (UtilsMy.k0(this.f33017n0.getTag_info()) || Integer.parseInt(this.f33017n0.getPlugin_num()) != 46) {
            return;
        }
        Iterator<TipBean> it2 = detailResultBeanV3.getTag_info().iterator();
        while (it2.hasNext() && !it2.next().getId().equals("23")) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q0(GameFromPopoWinBean gameFromPopoWinBean) {
        for (int i2 = 0; i2 < gameFromPopoWinBean.getData().size(); i2++) {
            this.f33009i1.add(gameFromPopoWinBean.getData().get(i2));
        }
        if (gameFromPopoWinBean.getData().size() < 10 && this.f32995b1 != null) {
            C2();
        }
        v vVar = this.f32997c1;
        if (vVar != null) {
            vVar.notifyDataSetChanged();
        }
    }

    void R0(DownloadTask downloadTask) {
        ExtBean extBean = this.H;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || downloadTask == null || !"112".equals(this.H.getFrom())) {
            return;
        }
        ExtBean extBean2 = new ExtBean();
        extBean2.setFrom("101");
        extBean2.setPosition("112");
        extBean2.setLocation(this.H.getLocation());
        downloadTask.setExt(JsonMapper.toJsonString(extBean2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void S0() {
        this.J.finish();
        m1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void T0(int i2) {
        String str;
        if (com.join.android.app.common.utils.f.j(this.J)) {
            AccountBean accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
            this.f33033v0 = accountData;
            int uid = accountData != null ? accountData.getUid() : 0;
            try {
                PackageInfo packageInfo = this.J.getPackageManager().getPackageInfo(this.J.getPackageName(), 0);
                str = packageInfo.versionCode + "_" + packageInfo.versionName;
            } catch (PackageManager.NameNotFoundException e4) {
                e4.printStackTrace();
                str = "";
            }
            RequestdetialFolowAndBeSpeak requestdetialFolowAndBeSpeak = new RequestdetialFolowAndBeSpeak();
            requestdetialFolowAndBeSpeak.setApp_ver(str);
            requestdetialFolowAndBeSpeak.setGame_id(this.f33017n0.getCrc_sign_id());
            requestdetialFolowAndBeSpeak.setUid(uid);
            requestdetialFolowAndBeSpeak.setMobile(this.f33033v0.getMobile());
            CommonRequestBean<RequestGameIdArgs> detialFollowAnd = RequestBeanUtil.getInstance(this.J).getDetialFollowAnd(requestdetialFolowAndBeSpeak);
            ResultMainBean resultMainBean = null;
            if (i2 == 1) {
                resultMainBean = this.E.O0(detialFollowAnd);
            } else if (i2 == 2) {
                resultMainBean = this.E.D(detialFollowAnd);
            } else if (i2 == 3) {
                resultMainBean = this.E.o(detialFollowAnd);
            } else if (i2 == 4) {
                resultMainBean = this.E.d0(detialFollowAnd);
            }
            if (resultMainBean != null) {
                H2(resultMainBean, i2);
            }
        }
    }

    @UiThread
    public void U0(int i2, int i4) {
        if (i4 == 1) {
            this.f33029t0.T(i2, 1);
        } else {
            this.f33029t0.U(i2, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W0() {
        if (this.f33009i1.size() > 0) {
            this.f33009i1.clear();
            v vVar = this.f32997c1;
            if (vVar != null) {
                vVar.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void X0() {
        IntentUtil.getInstance().goSearchHintActivity(this.J);
        com.papa.sim.statistic.p.l(this.J).m2(Where.detial1, AccountUtil_.getInstance_(this.J).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        String str;
        String str2;
        String str3;
        if (this.H == null) {
            this.H = new ExtBean();
        }
        this.E = com.join.mgps.rpc.impl.c.P1();
        this.F = com.join.mgps.rpc.impl.m.h();
        this.f33001e1 = com.join.mgps.rpc.impl.a.b0();
        this.E0 = com.join.mgps.rpc.impl.d.m();
        this.S0 = this.G.getCrc_link_type_val();
        RequestBeanUtil.getInstance(this.J);
        this.Q0 = RequestBeanUtil.getVersionAndVersionName();
        try {
            this.J = this;
            getDownloadTaskInfo();
            com.join.mgps.Util.c0.a().d(this.J);
            this.f33038y.setVisibility(8);
            this.A.setVisibility(0);
            this.D.setVisibility(0);
            this.f33036x.setOnClickListener(new t());
            this.J = this;
            initData();
            q2();
            this.f33036x.setImageResource(R.drawable.search_image);
            this.f33004g.setOnScrollListener(new u());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        ExtBean extBean = this.H;
        if (extBean != null) {
            String from = extBean.getFrom();
            str2 = this.H.getPosition();
            str = from;
            str3 = this.H.getLocation();
        } else {
            str = "";
            str2 = str;
            str3 = str2;
        }
        if (com.join.mgps.Util.d2.i(str2)) {
            com.papa.sim.statistic.p.l(getApplicationContext()).k2(this.f33019o0.getCrc_link_type_val(), AccountUtil_.getInstance_(getApplicationContext()).getUid(), str, str2, str3, "normalCustom");
        } else {
            com.papa.sim.statistic.p.l(getApplicationContext()).j2(this.f33019o0.getCrc_link_type_val(), AccountUtil_.getInstance_(getApplicationContext()).getUid(), this.H.get_from_type());
        }
        if (Build.VERSION.SDK_INT >= 21) {
            Window window = getWindow();
            window.addFlags(67108864);
            window.addFlags(Integer.MIN_VALUE);
            com.join.android.app.common.manager.b bVar = new com.join.android.app.common.manager.b(this);
            this.f33041z0 = bVar;
            bVar.m(true);
            this.f33041z0.n(R.color.transparent);
            com.join.mgps.Util.z1.c(this, com.join.mgps.Util.z1.d(this));
            View childAt = ((ViewGroup) findViewById(16908290)).getChildAt(0);
            if (childAt != null) {
                ViewCompat.setFitsSystemWindows(childAt, false);
            }
            int dimensionPixelSize = getResources().getDimensionPixelSize(getResources().getIdentifier("status_bar_height", "dimen", q.a.f73954a));
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(0, dimensionPixelSize, 0, 0);
            this.C.setLayoutParams(layoutParams);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, (int) getResources().getDimension(R.dimen.wdp100));
            layoutParams2.setMargins(0, dimensionPixelSize, 0, 0);
            this.f32994b.setLayoutParams(layoutParams2);
        }
        G2(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void b1() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
        this.f33028t.p();
        this.f33034w.setVisibility(8);
        this.I.isNewFinishedGame().g(Boolean.FALSE);
        this.f33030u.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        this.J.finish();
        m1();
    }

    void c1() {
        if (!com.join.android.app.common.utils.f.j(this) || IntentUtil.getInstance().goLoginInteractive(this.J) || this.f33017n0.getGame_follow() == 1) {
            return;
        }
        T0(2);
    }

    public void c2(float f4) {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.alpha = f4;
        if (f4 == 1.0f) {
            getWindow().clearFlags(2);
        } else {
            getWindow().addFlags(2);
        }
        getWindow().setAttributes(attributes);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x001c, code lost:
        if (r4 != 11) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask r3, int r4) {
        /*
            r2 = this;
            if (r3 != 0) goto L3
            return
        L3:
            java.lang.String r0 = r3.getCrc_link_type_val()
            r1 = 2
            if (r4 == r1) goto L8d
            r1 = 3
            if (r4 == r1) goto L7f
            r1 = 5
            if (r4 == r1) goto L64
            r1 = 6
            if (r4 == r1) goto L56
            r1 = 7
            if (r4 == r1) goto L3b
            r1 = 10
            if (r4 == r1) goto L20
            r3 = 11
            if (r4 == r3) goto L71
            goto La7
        L20:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.C0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.C0
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.D0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.D0
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.C0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.C0
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.D0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.D0
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.D0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.D0
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.C0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.C0
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.D0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.D0
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.D0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.D0
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.C0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.C0
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.D0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.D0
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.MGGameDetailActivity.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkDownlodingNumber() {
        try {
            this.f33025r0 = g1.f.G().O();
            int W = g1.f.G().W();
            this.f33027s0 = W;
            updateLine(W);
            int i2 = this.f33025r0;
            if (i2 != 0) {
                updateDownloadingPoint(i2);
            } else {
                updateNoOpenPoint();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void d1() {
        boolean booleanValue = this.I.noFavoriteTips().d().booleanValue();
        if (IntentUtil.getInstance().goLoginInteractive(this.J)) {
            return;
        }
        if (!booleanValue) {
            if (this.J0 == null) {
                com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.J, R.style.MyDialog);
                this.J0 = tVar;
                tVar.setContentView(R.layout.favorite_dialog);
                this.J0.setCanceledOnTouchOutside(true);
            }
            ((CheckBox) this.J0.findViewById(R.id.opt)).setOnCheckedChangeListener(new c());
            ((Button) this.J0.findViewById(R.id.ok)).setOnClickListener(new d());
            com.join.mgps.customview.t tVar2 = this.J0;
            if (tVar2 == null || tVar2.isShowing()) {
                return;
            }
            this.J0.show();
            return;
        }
        c1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void downloadLayout() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    public RequestCommentpraiseArgs e1(String str, int i2, int i4) {
        String str2;
        int i5;
        String str3 = Build.MODEL;
        AccountBean accountData = AccountUtil_.getInstance_(this.J).getAccountData();
        this.f33033v0 = accountData;
        if (accountData != null) {
            i5 = accountData.getUid();
            str2 = this.f33033v0.getToken();
        } else {
            str2 = "";
            i5 = 0;
        }
        return RequestBeanUtil.getInstance(this.J).getPraiseComment(this.S0, this.I.commentToken().d(), str3, str, str2, i5, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void f1() {
        if (com.join.android.app.common.utils.f.j(this.J)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
                this.f33033v0 = accountData;
                ResultMainBean<List<DetailResultBeanV3>> T = this.E.T(RequestBeanUtil.getInstance(getApplicationContext()).getAppDetialBean(this.f33019o0.getCrc_link_type_val(), accountData != null ? accountData.getUid() : 0, this.H));
                if (T != null && T.getFlag() != 0) {
                    List<DetailResultBeanV3> data = T.getMessages().getData();
                    if (data != null && data.size() > 0) {
                        DetailResultBeanV3 detailResultBeanV3 = data.get(0);
                        if (detailResultBeanV3 != null) {
                            u2(detailResultBeanV3);
                            N1(detailResultBeanV3);
                        } else if (this.B0) {
                        } else {
                            showLodingFailed();
                        }
                    } else if (this.B0) {
                    } else {
                        showLodingFailed();
                    }
                } else if (this.B0) {
                } else {
                    showLodingFailed();
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } else if (this.B0) {
        } else {
            showLodingFailed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void g1() {
        if (com.join.android.app.common.utils.f.j(this.J)) {
            com.join.mgps.rpc.impl.d m4 = com.join.mgps.rpc.impl.d.m();
            new CommentAllListBean();
            try {
                CommentResponse<CommentAllListBean> g4 = m4.g(RequestBeanUtil.getInstance(this.J).getGamedetialCommentRequest(this.S0, this.I.commentToken().d(), this.f33033v0.getUid() + ""));
                if (g4 != null) {
                    CommentAllListBean data_info = g4.getData_info();
                    if (data_info != null) {
                        this.K0 = data_info.getSelf_comment();
                        this.L0 = data_info.getGame_comment_count();
                        this.M0 = data_info.getGame_score();
                    }
                    if (data_info != null && data_info.getHot_comment() != null && data_info.getHot_comment().size() >= 0) {
                        List<CommentAllListBean.HotCommentBean> hot_comment = data_info.getHot_comment();
                        ArrayList arrayList = new ArrayList();
                        for (CommentAllListBean.HotCommentBean hotCommentBean : hot_comment) {
                            arrayList.add(hotCommentBean);
                        }
                        v2(arrayList);
                        return;
                    }
                    v2(new ArrayList());
                    return;
                }
                v2(new ArrayList());
            } catch (Exception e4) {
                e4.printStackTrace();
                v2(new ArrayList());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> r3 = g1.f.G().r();
        List<DownloadTask> q3 = g1.f.G().q();
        if (q3 != null && q3.size() > 0) {
            for (DownloadTask downloadTask : q3) {
                this.C0.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.D0.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void h1() {
        try {
            if (com.join.android.app.common.utils.f.j(this.J)) {
                if (IntentUtil.getInstance().goLoginInteractive(this.J)) {
                    return;
                }
                this.P0 = "";
                AccountBean accountData = AccountUtil_.getInstance_(this.J).getAccountData();
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", Integer.valueOf(accountData.getUid()));
                linkedMultiValueMap.add("token", accountData.getToken());
                linkedMultiValueMap.add("current_game_id", this.S0);
                int i2 = this.f33007h1;
                this.f33007h1 = i2 + 1;
                linkedMultiValueMap.add("page", Integer.valueOf(i2));
                linkedMultiValueMap.add("device_id", this.P0);
                linkedMultiValueMap.add("version", this.Q0);
                GameFromPopoWinBean O = this.f33001e1.O(linkedMultiValueMap);
                if (O != null && O.getError() == 0 && O.getData() != null) {
                    F2();
                    if (this.f33007h1 == 2) {
                        W0();
                    }
                    Q0(O);
                    return;
                } else if (O != null && O.getError() == 701) {
                    IntentUtil.getInstance().goMyAccountLoginActivity(this.J);
                    showToast("Token已失效，请重新登录");
                    IntentUtil.getInstance().goLogin(this.J);
                    o1();
                    return;
                } else {
                    C2();
                    return;
                }
            }
            showToast("网络出错，请稍后重试");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void i1(GiftPackageDataInfoBean giftPackageDataInfoBean) {
        if (com.join.android.app.common.utils.f.j(this.J)) {
            try {
                try {
                    GiftPackageOperationBean f02 = this.E.f0(RequestBeanUtil.getInstance(getApplicationContext()).getGiftPackageOperationRequestBean(this.f33033v0.getUid(), giftPackageDataInfoBean.getGift_package_id(), this.f33019o0.getCrc_link_type_val()));
                    if (f02 != null) {
                        if (f02.getFlag().equals("0")) {
                            String error_info = f02.getError_info();
                            if (error_info == null || !f02.getCode().equals("1001")) {
                                return;
                            }
                            showToast(error_info);
                            return;
                        }
                        List<GiftPackageDataOperationBean> data = f02.getMessages().getData();
                        if (data == null || data.size() <= 0) {
                            return;
                        }
                        GiftPackageDataOperationBean giftPackageDataOperationBean = data.get(0);
                        List<GiftPackageDataInfoBean> game_gift_package = this.f33017n0.getGame_gift_package();
                        for (int i2 = 0; i2 < game_gift_package.size(); i2++) {
                            GiftPackageDataInfoBean giftPackageDataInfoBean2 = game_gift_package.get(i2);
                            if (giftPackageDataInfoBean.getGift_package_id() == giftPackageDataInfoBean2.getGift_package_id()) {
                                giftPackageDataInfoBean2.setGift_package_status(1);
                                giftPackageDataInfoBean2.setGift_package_overdue(giftPackageDataOperationBean.getGift_info().getGift_package_overdue());
                                giftPackageDataInfoBean2.setGift_package_code(giftPackageDataOperationBean.getGift_info().getGift_package_code());
                            }
                        }
                        this.f33017n0.setGame_gift_package(game_gift_package);
                        s2(giftPackageDataOperationBean);
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            } finally {
                showToast("领取失败");
            }
        }
    }

    void initData() {
        this.f33017n0 = new DetailResultBeanV3();
        IntentDateBean intentDateBean = this.G;
        this.f33019o0 = intentDateBean;
        try {
            if (intentDateBean.getObject() != null && (this.f33019o0.getObject() instanceof IntentToDetialBean)) {
                IntentToDetialBean intentToDetialBean = (IntentToDetialBean) this.f33019o0.getObject();
                this.f33021p0 = intentToDetialBean;
                this.f33008i.setText(intentToDetialBean.b());
                this.f33017n0.setIco_remote(this.f33021p0.d());
                this.f33017n0.setDescribe(this.f33021p0.b());
                this.f33017n0.setGame_name("");
            } else if (this.f33019o0.getObject() != null && (this.f33019o0.getObject() instanceof Boolean)) {
                this.f33023q0 = ((Boolean) this.f33019o0.getObject()).booleanValue();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        this.f33004g.addFooterView(LayoutInflater.from(this.J).inflate(R.layout.game_detail_header, (ViewGroup) null));
        this.H0 = new ArrayList();
        MGGameDetailAdapter mGGameDetailAdapter = new MGGameDetailAdapter(this, this.f33017n0, this.F0, this.I0, this.H0);
        this.f33029t0 = mGGameDetailAdapter;
        this.f33004g.setAdapter((ListAdapter) mGGameDetailAdapter);
        this.f33029t0.Y(new a());
    }

    public CommonRequestBean j1() {
        AccountBean accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
        this.f33033v0 = accountData;
        if (accountData != null) {
            this.f33035w0 = accountData.getUid();
        }
        return RequestBeanUtil.getInstance(getApplicationContext()).getGameCommentListRequestBean(1, 5, this.f33035w0, this.f33019o0.getCrc_link_type_val(), new int[]{1});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void k1() {
        if (com.join.android.app.common.utils.f.j(this.J)) {
            try {
                CommentResponse<CommentTokenBean> c4 = this.E0.c(RequestBeanUtil.getInstance(this.J).getTokenRequestBean(AccountUtil_.getInstance_(this.J).getUid(), ""));
                if (c4 == null || c4.getCode() != 0 || c4.getData_info() == null || TextUtils.isEmpty(c4.getData_info().getToken())) {
                    return;
                }
                this.I.commentToken().g(AESUtils.f(c4.getData_info().getToken() + "|" + c4.getData_info().getTimes()));
                this.I.lastCheckInTime().g(Long.valueOf(System.currentTimeMillis()));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void l1(GameVoucherBean gameVoucherBean) {
        if (com.join.android.app.common.utils.f.j(this.J)) {
            try {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                AccountBean accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
                linkedMultiValueMap.add("uid", accountData.getUid() + "");
                linkedMultiValueMap.add("token", accountData.getToken());
                linkedMultiValueMap.add("coupon_id", gameVoucherBean.getGame_coupon_id() + "");
                PapayVoucherResultMain<AccountGetVoucherResult> a4 = this.F.a(linkedMultiValueMap);
                if (a4 != null && a4.getError() == 0 && a4.getData() != null) {
                    showToast(getString(R.string.voucher_get_success));
                    for (GameVoucherBean gameVoucherBean2 : this.f33017n0.getGame_coupon_list()) {
                        String game_coupon_id = gameVoucherBean2.getGame_coupon_id();
                        if (game_coupon_id.equals(a4.getData().getCoupon_code().getCoupon_id() + "")) {
                            gameVoucherBean2.setGame_coupon_status(2);
                            D1();
                        }
                    }
                } else {
                    showToast(getString(R.string.voucher_get_fail));
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                showToast(getString(R.string.voucher_get_fail));
            }
        } else {
            showToast(getString(R.string.voucher_get_fail));
        }
        n1();
    }

    void m1() {
        ExtBean extBean = this.H;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || !this.H.getFrom().equals("updateFromMarket")) {
            return;
        }
        IntentUtil.getInstance().goMGMainActivity2Front(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void n1() {
        com.join.mgps.dialog.x0 x0Var = this.A0;
        if (x0Var == null || !x0Var.isShowing()) {
            return;
        }
        this.A0.dismiss();
        this.A0 = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void o1() {
        PopupWindow popupWindow = this.T0;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        a1();
        Z0();
        com.join.mgps.Util.c0.a().e(this.J);
        Dialog dialog = this.f33039y0;
        if (dialog != null && dialog.isShowing()) {
            this.f33039y0.dismiss();
        }
        Y0();
        super.onDestroy();
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0099, code lost:
        if (r6 != 48) goto L52;
     */
    @org.greenrobot.eventbus.Subscribe(threadMode = org.greenrobot.eventbus.ThreadMode.MAIN)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onEventMainThread(com.join.mgps.event.l r6) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.MGGameDetailActivity.onEventMainThread(com.join.mgps.event.l):void");
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        DetailResultBeanV3 detailResultBeanV3;
        super.onResume();
        if (f32991o1) {
            this.f33007h1 = 1;
            f32991o1 = false;
            h1();
        }
        if (this.I.isNewFinishedGame().d().booleanValue()) {
            this.f33030u.setVisibility(0);
        } else {
            this.f33030u.setVisibility(8);
        }
        D2();
        this.f33028t.setDrawable(getResources().getDrawable(R.drawable.papa_download_selector));
        checkDownlodingNumber();
        DownloadTask B = this.f33019o0 != null ? g1.f.G().B(this.f33019o0.getCrc_link_type_val()) : null;
        if (B == null && (detailResultBeanV3 = this.f33017n0) != null) {
            this.K = detailResultBeanV3.getDownloadtaskDown();
        }
        if (B == null || this.K == null) {
            return;
        }
        this.K = B;
        if (B.getFileType().equals(Dtype.android.name()) && this.K.getStatus() == 5) {
            if (Boolean.valueOf(com.join.android.app.common.utils.a.g0(getApplicationContext()).c(getApplicationContext(), this.K.getPackageName())).booleanValue()) {
                APKUtils.a k4 = com.join.android.app.common.utils.a.g0(getApplicationContext()).k(this.J, this.K.getPackageName());
                if (com.join.mgps.Util.d2.i(this.K.getVer()) && k4.d() < Integer.parseInt(this.K.getVer())) {
                    this.K.setStatus(9);
                } else {
                    this.K.setStatus(5);
                }
            } else {
                this.K.setStatus(11);
            }
        } else {
            this.K.setStatus(B.getStatus());
        }
        E2();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void p1() {
        View inflate = LayoutInflater.from(this.J).inflate(R.layout.popo_item, (ViewGroup) null);
        c2(0.4f);
        PopupWindow popupWindow = new PopupWindow(inflate, -1, -1, true);
        this.T0 = popupWindow;
        popupWindow.setTouchable(true);
        this.T0.setOutsideTouchable(true);
        this.T0.setFocusable(true);
        this.T0.setBackgroundDrawable(new ColorDrawable());
        this.T0.setSoftInputMode(16);
        this.T0.setOnDismissListener(new g());
        XListView2 xListView2 = (XListView2) inflate.findViewById(R.id.listview);
        this.f32995b1 = xListView2;
        xListView2.setPullRefreshEnable(new h());
        this.f32995b1.setPullLoadEnable(new i());
        this.Z0 = (TextView) inflate.findViewById(R.id.tv_show_tips);
        this.W0 = (LinearLayout) inflate.findViewById(R.id.ll_our);
        this.U0 = (LinearLayout) inflate.findViewById(R.id.ll_show_finish);
        this.V0 = (LinearLayout) inflate.findViewById(R.id.ll_dismiss);
        this.X0 = (EditText) inflate.findViewById(R.id.game_ed);
        this.Y0 = (TextView) inflate.findViewById(R.id.tv_finish);
        this.f32993a1 = (LinearLayout) inflate.findViewById(R.id.ll_build);
        this.V0.setOnClickListener(new j());
        this.f32993a1.setOnClickListener(new l());
        this.Y0.setOnClickListener(new m());
        v vVar = new v();
        this.f32997c1 = vVar;
        this.f32995b1.setAdapter((ListAdapter) vVar);
        this.T0.showAtLocation(LayoutInflater.from(this.J).inflate(R.layout.gamedetial_modle_three_activity, (ViewGroup) null), 81, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void p2() {
        ShareBean shareBean = new ShareBean();
        String share_url = this.f33017n0.getShare_url();
        shareBean.setqZoneShareUrl(share_url);
        shareBean.setQqUrl(share_url);
        shareBean.setWechatFriendUrl(share_url);
        shareBean.setWechatShareUrl(share_url);
        shareBean.setWeiboShareUrl(share_url);
        shareBean.setTitle(this.f33017n0.getGame_name());
        shareBean.setText(this.f33017n0.getInfo());
        shareBean.setImageUrl(this.f33017n0.getIco_remote());
        shareBean.setFrom(2);
        shareBean.setGameId(this.f33017n0.getCrc_sign_id());
        com.join.mgps.Util.r.r(this.J, shareBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void q1() {
        DetailResultBeanV3 detailResultBeanV3;
        StringBuilder sb = new StringBuilder();
        sb.append("method instalButtomButn() called.status=");
        sb.append(this.K.getStatus());
        int game_book = this.f33017n0.getGame_book();
        if (this.f33017n0.getBespeak_switch() == 1 && game_book != 1 && this.f33017n0.getDown_status() == 2) {
            if (IntentUtil.getInstance().goLoginInteractive(this.J) || game_book == 1) {
                return;
            }
            T0(4);
            return;
        }
        DownloadTask downloadTask = this.K;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (this.K != null && (detailResultBeanV3 = this.f33017n0) != null && UtilsMy.m0(detailResultBeanV3.getPay_tag_info(), this.f33017n0.getCrc_sign_id()) > 0) {
            status = 43;
        }
        DownloadTask downloadTask2 = this.K;
        if (downloadTask2 == null) {
            return;
        }
        if (downloadTask2 != null && (status == 2 || status == 10)) {
            com.php25.PDownload.d.h(downloadTask2);
        } else if (status == 12 || status == 27) {
            return;
        } else {
            if (status == 13) {
                com.php25.PDownload.d.k(this.J, downloadTask2);
                return;
            } else if (status == 5) {
                UtilsMy.f3(this.J, downloadTask2, PayCenterOrderRequest.PAY_TYPE_RECHARGE);
            } else if (status == 42) {
                downloadTask2.setVer(this.f33017n0.getVer());
                this.K.setVer_name(this.f33017n0.getVer_name());
                this.K.setUrl(this.f33017n0.getDown_url_remote());
                this.K.setCfg_ver(this.f33017n0.getCfg_ver());
                this.K.setCfg_ver_name(this.f33017n0.getCfg_ver_name());
                this.K.setCfg_down_url(this.f33017n0.getCfg_down_url());
                this.K.setKeyword(Where.detail.name());
                UtilsMy.w3(this.J, this.K);
            } else if (status == 9) {
                if (!com.join.android.app.common.utils.f.j(this.J)) {
                    com.join.mgps.Util.i2.a(this.J).b("无网络连接");
                    return;
                }
                int downloadType = this.K.getDownloadType();
                if (downloadType == 0 || downloadType == 1) {
                    if (this.K.getCrc_link_type_val() == null || this.K.getCrc_link_type_val().equals("")) {
                        return;
                    }
                    R0(this.K);
                    if (UtilsMy.T0(this.J, this.K)) {
                        return;
                    }
                    if (this.f33017n0.getDown_status() == 5) {
                        UtilsMy.R0(this, this.K);
                        return;
                    }
                    com.php25.PDownload.d.b(this.K);
                    this.K.setVer(this.f33017n0.getVer());
                    this.K.setVer_name(this.f33017n0.getVer_name());
                    this.K.setUrl(this.f33017n0.getDown_url_remote());
                    this.K.setCfg_ver(this.f33017n0.getCfg_ver());
                    this.K.setCfg_ver_name(this.f33017n0.getCfg_ver_name());
                    this.K.setCfg_down_url(this.f33017n0.getCfg_down_url());
                    this.K.setKeyword(Where.detail.name());
                    com.php25.PDownload.d.c(this.K, this.J);
                    t1();
                } else if (downloadType == 2) {
                    UtilsMy.z3(this.K);
                }
            } else if (11 == status) {
                UtilsMy.j3(downloadTask2, this.J);
            } else if (43 == status) {
                downloadTask2.setKeyword(Where.detail.name());
                R0(this.K);
                DetailResultBeanV3 detailResultBeanV32 = this.f33017n0;
                if (detailResultBeanV32 != null) {
                    if (UtilsMy.o0(detailResultBeanV32.getPay_tag_info(), this.f33017n0.getCrc_sign_id()) > 0) {
                        UtilsMy.m3(this.J, this.f33017n0.getCrc_sign_id());
                    } else if (!UtilsMy.T0(this.J, this.K)) {
                        if (this.f33017n0.getDown_status() == 5) {
                            UtilsMy.R0(this.J, this.K);
                        } else {
                            UtilsMy.e1(this.K, this.f33017n0);
                            if (!UtilsMy.T0(this.J, this.K)) {
                                if (this.f33017n0.getDown_status() == 5) {
                                    UtilsMy.R0(this.J, this.K);
                                } else {
                                    UtilsMy.F0(this.J, this.K, this.f33017n0.getTp_down_url(), this.f33017n0.getOther_down_switch(), this.f33017n0.getCdn_down_switch());
                                }
                            }
                            t1();
                        }
                    }
                }
                this.f33028t.setTextArray(new String[]{"", "size", "", "size"});
                this.f33028t.setIsStop(false);
                this.f33028t.o();
            } else {
                downloadTask2.setKeyword(Where.detail.name());
                R0(this.K);
                DetailResultBeanV3 detailResultBeanV33 = this.f33017n0;
                if (detailResultBeanV33 != null) {
                    if (UtilsMy.o0(detailResultBeanV33.getPay_tag_info(), this.f33017n0.getCrc_sign_id()) > 0) {
                        UtilsMy.m3(this.J, this.f33017n0.getCrc_sign_id());
                    } else {
                        UtilsMy.e1(this.K, this.f33017n0);
                        if (!UtilsMy.T0(this.J, this.K)) {
                            if (this.f33017n0.getDown_status() == 5) {
                                UtilsMy.R0(this.J, this.K);
                            } else {
                                UtilsMy.F0(this.J, this.K, this.f33017n0.getTp_down_url(), this.f33017n0.getOther_down_switch(), this.f33017n0.getCdn_down_switch());
                            }
                        }
                        t1();
                    }
                }
                this.f33028t.setTextArray(new String[]{"", "size", "", "size"});
                this.f33028t.setIsStop(false);
                this.f33028t.o();
            }
        }
        E2();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void r1() {
        ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(this.J).flags(268435456)).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:27:0x013a  */
    @org.androidannotations.annotations.UiThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void r2(com.join.mgps.dto.GiftPackageDataInfoBean r11) {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.MGGameDetailActivity.r2(com.join.mgps.dto.GiftPackageDataInfoBean):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        showLoding();
        f1();
    }

    boolean s1(DetailResultBeanV3 detailResultBeanV3) {
        return (detailResultBeanV3 == null || detailResultBeanV3.getPay_tag_info() == null || detailResultBeanV3.getPay_tag_info().getPay_game_amount() <= 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void s2(GiftPackageDataOperationBean giftPackageDataOperationBean) {
        Dialog dialog;
        Dialog dialog2 = this.f33039y0;
        if (dialog2 != null && dialog2.isShowing()) {
            this.f33039y0.dismiss();
            this.f33039y0 = null;
        }
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.J, R.style.MyDialog);
        this.f33039y0 = tVar;
        tVar.setContentView(R.layout.save_code_dialog);
        Button button = (Button) this.f33039y0.findViewById(R.id.dialog_button_cancle);
        Button button2 = (Button) this.f33039y0.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) this.f33039y0.findViewById(R.id.moneyText);
        ((TextView) this.f33039y0.findViewById(R.id.tip_title)).setText("领号成功");
        ((TextView) this.f33039y0.findViewById(R.id.saveCodeContent)).setText(giftPackageDataOperationBean.getGift_info().getGift_package_code());
        button2.setText("关闭");
        button.setText("下载游戏");
        ((TextView) this.f33039y0.findViewById(R.id.saveCodeTv)).setOnClickListener(new q(giftPackageDataOperationBean));
        button2.setOnClickListener(new r());
        if (this.f33017n0.getDown_status() == 2) {
            button.setEnabled(false);
            button.setText("即将开放");
        }
        DownloadTask downloadTask = this.K;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (giftPackageDataOperationBean.getGame_info() != null && UtilsMy.m0(giftPackageDataOperationBean.getGame_info().getPay_tag_info(), giftPackageDataOperationBean.getGame_info().getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0) {
            if (status == 5) {
                button.setText("启动游戏");
            } else if (status != 9 && status != 43) {
                button.setText("下载中..");
            }
            button.setOnClickListener(new s());
            C1();
            dialog = this.f33039y0;
            if (dialog != null || dialog.isShowing()) {
            }
            this.f33039y0.show();
            return;
        }
        button.setText("下载游戏");
        if (giftPackageDataOperationBean.getGame_info() != null) {
            UtilsMy.m0(giftPackageDataOperationBean.getGame_info().getPay_tag_info(), giftPackageDataOperationBean.getGame_info().getCrc_sign_id());
            UtilsMy.D2(button, giftPackageDataOperationBean.getGame_info().getDown_status(), giftPackageDataOperationBean.getGame_info().getPay_tag_info(), giftPackageDataOperationBean.getGame_info().getCrc_sign_id());
            UtilsMy.w2(giftPackageDataOperationBean.getGame_info().getSp_tag_info(), textView);
        }
        button.setOnClickListener(new s());
        C1();
        dialog = this.f33039y0;
        if (dialog != null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.J);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f33000e.setVisibility(0);
        this.f32998d.setVisibility(8);
        this.f33004g.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        this.f33000e.setVisibility(8);
        this.f32998d.setVisibility(0);
        this.f33004g.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this.J).b(str);
    }

    void startLineAnimation() {
        this.f33032v.setImageResource(R.drawable.line_blue_bg);
        Animation loadAnimation = AnimationUtils.loadAnimation(this.J, R.anim.img_translate);
        this.f33031u0 = loadAnimation;
        loadAnimation.setFillAfter(true);
        this.f33034w.setVisibility(0);
        this.f33034w.startAnimation(this.f33031u0);
        this.f33031u0.setAnimationListener(new f());
    }

    void stopLineAnimation() {
        this.f33034w.clearAnimation();
        this.f33034w.setVisibility(8);
        this.f33032v.setImageResource(R.drawable.line_grey_bg);
    }

    void t1() {
        ExtBean extBean = this.H;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || !this.H.getFrom().equals("downloadCenter")) {
            return;
        }
        MobclickAgent.onEvent(this, "detailDownload4.2.0.6");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void t2() {
        this.f33015m.setVisibility(0);
        this.f33012k.setVisibility(0);
        this.f33014l.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void u1(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        E2();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void u2(DetailResultBeanV3 detailResultBeanV3) {
        try {
            this.f33000e.setVisibility(8);
            this.f33004g.setVisibility(0);
            this.f32998d.setVisibility(8);
            this.f33006h.setVisibility(0);
            if (detailResultBeanV3 != null) {
                this.f33002f.setText(detailResultBeanV3.getGame_describe_second());
            }
            this.f33029t0.f0(0);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        try {
            int size = this.C0.size();
            int size2 = this.D0.size();
            this.D.setDownloadGameNum(size);
            StringBuilder sb = new StringBuilder();
            sb.append("updateDownloadView: ");
            sb.append(size2);
            sb.append("::::已经进入下载队列中的数量:::");
            sb.append(size);
            if (size2 > 0) {
                this.D.d();
            } else {
                this.D.g();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadingPoint(int i2) {
        if (i2 < 100) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f33026s.getLayoutParams();
            layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            this.f33026s.setLayoutParams(layoutParams);
            this.f33026s.setCompoundDrawables(null, null, null, null);
            this.f33026s.setBackgroundResource(R.drawable.mygame_big_round);
            this.f33026s.setPadding(1, 0, 0, 1);
        } else {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f33026s.getLayoutParams();
            layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
            layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams2.setMargins(4, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 0, 0);
            this.f33026s.setGravity(17);
            this.f33026s.setLayoutParams(layoutParams2);
            this.f33026s.setCompoundDrawables(null, null, null, null);
            this.f33026s.setBackgroundResource(R.drawable.message_round);
            this.f33026s.setPadding(1, 0, 2, 1);
        }
        this.f33026s.setVisibility(0);
        TextView textView = this.f33026s;
        textView.setText(i2 + "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateLine(int i2) {
        if (i2 == 0) {
            stopLineAnimation();
        } else {
            startLineAnimation();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateNoOpenPoint() {
        stopLineAnimation();
        this.f33026s.setVisibility(8);
        this.f33026s.setText("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void v1() {
        D2();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void v2(List<CommentBaseBean> list) {
        this.f33017n0.setCommitDataBeanList(list);
        C1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void w1(CommentBaseBean commentBaseBean, int i2, int i4) {
        if (com.join.android.app.common.utils.f.j(this.J)) {
            try {
                CommentResponse<CommentPraiseBean> h4 = this.E0.h(e1(commentBaseBean.getId(), i4, commentBaseBean.getPn()));
                if (h4 != null) {
                    if (h4.getCode() == 801) {
                        F1(h4);
                    } else if (h4.getSucc() != 1) {
                        E1(h4.getMsg(), true, i2, 1);
                    }
                    if (h4.getSucc() == 1) {
                        U0(i2, 1);
                        return;
                    }
                    return;
                }
                E1("操作失败，请稍候再试~", true, i2, 1);
                return;
            } catch (Exception e4) {
                E1("操作失败，请稍候再试~", true, i2, 1);
                e4.printStackTrace();
                return;
            }
        }
        E1("网络连接失败，再试试吧~", true, i2, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void w2() {
        this.f33015m.setVisibility(8);
        this.f33012k.setVisibility(8);
        this.f33014l.setVisibility(0);
    }

    void x1(CommentBaseBean commentBaseBean) {
        CommentDetailActivity_.k2(this.J).d(commentBaseBean.getGame_id()).b(commentBaseBean.getId()).f(this.f33017n0.getPlugin_num()).a(this.f33017n0.getBespeak_switch()).e(0).c("0").h(0).g(this.f33017n0.getPackage_name()).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void x2() {
        com.join.mgps.customview.t tVar = this.N0;
        if (tVar != null) {
            if (tVar.isShowing()) {
                return;
            }
        } else {
            this.N0 = com.join.mgps.Util.a0.c0(this.J).Z(this.J);
        }
        this.N0.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void y1(CommentBaseBean commentBaseBean, int i2, int i4) {
        if (com.join.android.app.common.utils.f.j(this.J)) {
            try {
                CommentResponse<CommentPraiseBean> l4 = this.E0.l(e1(commentBaseBean.getId(), i4, commentBaseBean.getPn()));
                if (l4 != null) {
                    if (l4.getCode() == 801) {
                        F1(l4);
                    } else if (l4.getSucc() != 1) {
                        E1(l4.getMsg(), true, i2, 2);
                    }
                    if (l4.getSucc() == 1) {
                        U0(i2, 2);
                        return;
                    }
                    return;
                }
                E1("操作失败，请稍候再试~", true, i2, 2);
                return;
            } catch (Exception e4) {
                E1("操作失败，请稍候再试~", true, i2, 2);
                e4.printStackTrace();
                return;
            }
        }
        E1("网络连接失败，再试试吧~", true, i2, 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void y2() {
        com.join.mgps.customview.t tVar = this.O0;
        if (tVar != null) {
            if (tVar.isShowing()) {
                return;
            }
        } else {
            this.O0 = com.join.mgps.Util.a0.c0(this.J).b0(this.J);
        }
        this.O0.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.join,mgps.sim.sdkgamePayfinish"})
    public void z1(Intent intent) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void z2() {
    }
}
