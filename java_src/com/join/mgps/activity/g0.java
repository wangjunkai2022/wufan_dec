package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.flipboard.bottomsheet.BottomSheetLayout;
import com.flyco.tablayout.SlidingTabLayout;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.widget.CornersLinearLayout;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.k1;
import com.join.mgps.activity.gamedetail.BaseGameDetailFragment;
import com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity;
import com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity_;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.activity.screenshot.ScreenshotTrueListAcvity_;
import com.join.mgps.adapter.FullScreenActivity;
import com.join.mgps.adapter.FullScreenActivity_;
import com.join.mgps.adapter.x;
import com.join.mgps.customview.CoordinatorLayout;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.DownloadProgressBar;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.customview.SlidingTabLayoutGameDetailImage;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CommentAlllistIntentData;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DetialShowImageBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameFromBooleanBean;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.dto.GamePromptBean;
import com.join.mgps.dto.GameScore;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.GamedetialMoreBean;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestdetialFolowAndBeSpeak;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ServiceState;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Where;
import com.psk.eventmodule.Event;
import com.psk.eventmodule.StatFactory;
import com.uc.crashsdk.export.LogType;
import com.umeng.analytics.MobclickAgent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.springframework.util.LinkedMultiValueMap;
/* compiled from: GamedetialModleBtFragemnt.java */
@EFragment(R.layout.gamedetial_modle_bt_fragment)
/* loaded from: classes.dex */
public class g0 extends BaseGameDetailFragment implements l1.f {
    static String G1 = "0";
    static String H1 = "";
    static boolean I1 = false;
    private static final String J1 = "view";
    @ViewById
    ImageView A;
    private com.join.android.app.common.manager.b A0;
    AccountBean A1;
    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView B;
    String B0;
    @ViewById
    ImageView C;
    String C0;
    @ViewById
    TextView D;
    @ViewById
    TextView E;
    @ViewById
    CoordinatorLayout F;
    boolean F0;
    @ViewById
    View G;
    int G0;
    @ViewById
    View H;
    int H0;
    @ViewById
    View I;
    private int I0;
    @ViewById
    View J;
    private GamedetialModleFourBean J0;
    @ViewById
    LinearLayout K;
    private GamedetialModleFourBean K0;
    PopupWindow L0;
    LinearLayout M0;
    LinearLayout N0;
    LinearLayout O0;
    EditText P0;
    TextView Q0;
    TextView R0;
    LinearLayout S0;
    public XListView2 T0;
    z U0;
    com.join.mgps.rpc.b V0;
    com.join.mgps.rpc.b W0;
    GameFromPopoWinBean X0;
    PtrClassicFrameLayout Y0;

    /* renamed from: b  reason: collision with root package name */
    String f37080b;

    /* renamed from: c  reason: collision with root package name */
    ExtBean f37082c;

    /* renamed from: d  reason: collision with root package name */
    boolean f37084d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    RelativeLayout f37086e;
    @ViewById

    /* renamed from: e1  reason: collision with root package name */
    public SimpleDraweeView f37087e1;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    View f37088f;
    @ViewById

    /* renamed from: f1  reason: collision with root package name */
    public TextView f37089f1;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    StandardVideoView f37090g;
    @ViewById

    /* renamed from: g1  reason: collision with root package name */
    public TextView f37091g1;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    SimpleDraweeView f37092h;
    @ViewById

    /* renamed from: h1  reason: collision with root package name */
    public TextView f37093h1;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    SlidingTabLayout f37094i;
    @ViewById

    /* renamed from: i1  reason: collision with root package name */
    public TextView f37095i1;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ViewPager f37096j;
    @ViewById

    /* renamed from: j1  reason: collision with root package name */
    public MStarBar f37097j1;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    SlidingTabLayoutGameDetailImage f37098k;
    @ViewById

    /* renamed from: k1  reason: collision with root package name */
    public LinearLayout f37099k1;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    View f37100l;
    @ViewById

    /* renamed from: l1  reason: collision with root package name */
    public LinearLayout f37101l1;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    ViewPager f37102m;
    @ViewById

    /* renamed from: m1  reason: collision with root package name */
    public SimpleDraweeView f37103m1;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    View f37104n;
    @ViewById

    /* renamed from: n0  reason: collision with root package name */
    LinearLayout f37105n0;
    @ViewById

    /* renamed from: n1  reason: collision with root package name */
    public TextView f37106n1;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    AppBarLayout f37107o;
    @ViewById

    /* renamed from: o0  reason: collision with root package name */
    View f37108o0;
    @ViewById

    /* renamed from: o1  reason: collision with root package name */
    public LinearLayout f37109o1;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    RelativeLayout f37110p;
    @ViewById

    /* renamed from: p0  reason: collision with root package name */
    View f37111p0;
    @ViewById

    /* renamed from: p1  reason: collision with root package name */
    public TextView f37112p1;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    RelativeLayout f37113q;
    @ViewById

    /* renamed from: q0  reason: collision with root package name */
    BottomSheetLayout f37114q0;
    @ViewById

    /* renamed from: q1  reason: collision with root package name */
    public TextView f37115q1;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    RelativeLayout f37116r;
    @ViewById

    /* renamed from: r0  reason: collision with root package name */
    View f37117r0;

    /* renamed from: r1  reason: collision with root package name */
    private DownloadTask f37118r1;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    TextView f37119s;
    @ViewById

    /* renamed from: s0  reason: collision with root package name */
    LinearLayout f37120s0;
    @ViewById

    /* renamed from: s1  reason: collision with root package name */
    TextView f37121s1;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    RelativeLayout f37122t;
    @ViewById

    /* renamed from: t0  reason: collision with root package name */
    TextView f37123t0;
    @ViewById

    /* renamed from: t1  reason: collision with root package name */
    ImageView f37124t1;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    RelativeLayout f37125u;
    @ViewById

    /* renamed from: u0  reason: collision with root package name */
    CornersLinearLayout f37126u0;
    @ViewById

    /* renamed from: u1  reason: collision with root package name */
    ImageView f37127u1;
    @ViewById

    /* renamed from: v  reason: collision with root package name */
    ImageView f37128v;
    @ViewById

    /* renamed from: v0  reason: collision with root package name */
    RelativeLayout f37129v0;
    @ViewById

    /* renamed from: v1  reason: collision with root package name */
    ImageView f37130v1;
    @ViewById

    /* renamed from: w  reason: collision with root package name */
    TextView f37131w;
    @ViewById

    /* renamed from: w0  reason: collision with root package name */
    RelativeLayout f37132w0;
    @ViewById

    /* renamed from: w1  reason: collision with root package name */
    ImageView f37133w1;
    @ViewById

    /* renamed from: x  reason: collision with root package name */
    ProgressBar f37134x;
    @ViewById

    /* renamed from: x0  reason: collision with root package name */
    RelativeLayout f37135x0;

    /* renamed from: x1  reason: collision with root package name */
    private Animation f37136x1;
    @ViewById

    /* renamed from: y  reason: collision with root package name */
    LinearLayout f37137y;

    /* renamed from: y0  reason: collision with root package name */
    com.join.mgps.rpc.d f37138y0;

    /* renamed from: y1  reason: collision with root package name */
    private int f37139y1;
    @ViewById

    /* renamed from: z  reason: collision with root package name */
    ImageView f37140z;

    /* renamed from: z0  reason: collision with root package name */
    GamedetailVideoMainActivity f37141z0;

    /* renamed from: z1  reason: collision with root package name */
    private int f37142z1;

    /* renamed from: a  reason: collision with root package name */
    private String f37078a = "GamedetialModleFiveFragemnt";
    int D0 = 0;
    String E0 = "";
    int Z0 = 1;

    /* renamed from: a1  reason: collision with root package name */
    List<GameFromPopoWinBean.DataBean> f37079a1 = new ArrayList();

    /* renamed from: b1  reason: collision with root package name */
    boolean f37081b1 = true;

    /* renamed from: c1  reason: collision with root package name */
    int f37083c1 = 0;

    /* renamed from: d1  reason: collision with root package name */
    boolean f37085d1 = false;
    Map<String, DownloadTask> B1 = new HashMap();
    Map<String, DownloadTask> C1 = new HashMap();
    boolean D1 = false;
    private List<View> E1 = new ArrayList();
    w F1 = new w();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g0.this.f37096j.setCurrentItem(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    public class a0 {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f37144a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f37145b;

        /* renamed from: c  reason: collision with root package name */
        TextView f37146c;

        /* renamed from: d  reason: collision with root package name */
        TextView f37147d;

        /* renamed from: e  reason: collision with root package name */
        TextView f37148e;

        /* renamed from: f  reason: collision with root package name */
        RelativeLayout f37149f;

        /* renamed from: g  reason: collision with root package name */
        RelativeLayout f37150g;

        a0() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g0.this.A0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PaPaBannerListActivity_.I0(g0.this.f37141z0).e(1).a(true).c(g0.this.J0.getGame_company_id()).d(g0.this.J0.getCompany_name()).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g0.this.A0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goShareWebActivity(g0.this.f37141z0, g0.this.K0.getActivity_entry().getUrl() + g0.this.K0.getCrc_sign_id());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleBtFragemnt.java */
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
    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    public class g implements k1.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f37157a;

        g(boolean z3) {
            this.f37157a = z3;
        }

        @Override // com.join.mgps.Util.k1.b
        public void a(k1.c cVar) {
            if (cVar.a() == 1) {
                g0.this.f37141z0.clickBack();
                com.join.mgps.Util.k1 c4 = com.join.mgps.Util.k1.c();
                g0 g0Var = g0.this;
                c4.e(g0Var.f37141z0, g0Var.f37082c.getFrom_id(), cVar.b());
                com.join.mgps.Util.i2.a(g0.this.f37141z0).b("授权成功");
            } else if (this.f37157a) {
                g0.this.N0(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    public class h implements l1.a {
        h() {
        }

        @Override // l1.a
        public void onClickCancle() {
        }

        @Override // l1.a
        public void onClickOk() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    public class i implements ViewPager.OnPageChangeListener {
        i() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            if (g0.this.l0() && i2 == 0) {
                g0 g0Var = g0.this;
                g0Var.f37141z0.autoPlayVideo(g0Var.f37090g);
                return;
            }
            g0.this.pauseVideo();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    public class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RelativeLayout.LayoutParams f37161a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ RelativeLayout.LayoutParams f37162b;

        j(RelativeLayout.LayoutParams layoutParams, RelativeLayout.LayoutParams layoutParams2) {
            this.f37161a = layoutParams;
            this.f37162b = layoutParams2;
        }

        @Override // java.lang.Runnable
        public void run() {
            g0 g0Var = g0.this;
            g0Var.G0 = (int) (g0Var.f37129v0.getMeasuredHeight() + g0.this.getResources().getDimension(R.dimen.wdp36));
            RelativeLayout.LayoutParams layoutParams = this.f37161a;
            g0 g0Var2 = g0.this;
            layoutParams.height = g0Var2.G0;
            this.f37162b.height = -1;
            g0Var2.f37102m.setLayoutParams(layoutParams);
        }
    }

    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    class k implements AppBarLayout.OnOffsetChangedListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f37164a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f37165b;

        k(View view, int i2) {
            this.f37164a = view;
            this.f37165b = i2;
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public void onOffsetChanged(AppBarLayout appBarLayout, int i2) {
            int currentState;
            View view;
            try {
                int abs = Math.abs(i2);
                g0 g0Var = g0.this;
                if (abs < g0Var.G0 - g0Var.H0 && ((view = g0Var.f37088f) == null || view.getVisibility() != 0)) {
                    g0.this.f37126u0.setConner_top_right(this.f37165b);
                    g0.this.f37126u0.setConner_top_left(this.f37165b);
                    g0.this.f37126u0.invalidate();
                    g0.this.f37113q.setVisibility(0);
                    g0.this.f37116r.setVisibility(0);
                    g0.this.f37110p.setVisibility(8);
                    g0.this.f37135x0.setBackgroundColor(0);
                    if (g0.this.A0 != null) {
                        g0.this.A0.n(R.color.black_alpha);
                    }
                    g0 g0Var2 = g0.this;
                    StandardVideoView standardVideoView = g0Var2.f37090g;
                    if (standardVideoView != null && !g0Var2.D1 && standardVideoView.getCurrentState() == 5) {
                        g0.this.f37090g.onVideoResume(false);
                    }
                    this.f37164a.setVisibility(4);
                    return;
                }
                g0.this.f37126u0.setConner_top_right(0);
                g0.this.f37126u0.setConner_top_left(0);
                g0.this.f37126u0.invalidate();
                g0.this.f37110p.setVisibility(0);
                g0.this.f37113q.setVisibility(8);
                g0.this.f37116r.setVisibility(8);
                g0.this.f37135x0.setBackgroundColor(-1);
                StandardVideoView standardVideoView2 = g0.this.f37090g;
                if (standardVideoView2 != null && (currentState = standardVideoView2.getCurrentState()) == 2) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("currentState=");
                    sb.append(currentState);
                    sb.append(" -->performClick");
                    g0.this.f37090g.onVideoPause();
                }
                if (g0.this.A0 != null) {
                    g0.this.A0.n(R.color.black_30_alpha);
                }
                this.f37164a.setVisibility(0);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    public class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g0 g0Var = g0.this;
            g0Var.H0 = (int) (g0Var.f37135x0.getMeasuredHeight() + g0.this.getResources().getDimension(R.dimen.wdp18));
            g0 g0Var2 = g0.this;
            g0Var2.f37132w0.setMinimumHeight(g0Var2.H0);
        }
    }

    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountBean accountData = AccountUtil_.getInstance_(g0.this.f37141z0).getAccountData();
            if (accountData != null && accountData.getUid() != 0) {
                if (!com.join.mgps.Util.d2.h(accountData.getNickname()) && (!accountData.getAccount().equals(accountData.getNickname()) || !accountData.getAccount().startsWith("pa"))) {
                    PrefDef_ prefDef_ = new PrefDef_(g0.this.f37141z0);
                    if (com.join.mgps.Util.d2.i(prefDef_.uploadType2().d())) {
                        IntentUtil.getInstance().goShareWebActivity(g0.this.f37141z0, prefDef_.uploadType2().d());
                        return;
                    } else {
                        UploadActivity_.o1(g0.this.f37141z0).a(accountData).start();
                        return;
                    }
                }
                IntentUtil.getInstance().goChangeNickname(g0.this.f37141z0);
                return;
            }
            IntentUtil.getInstance().goLogin(g0.this.f37141z0);
        }
    }

    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    class n extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f37169a;

        /* compiled from: GamedetialModleBtFragemnt.java */
        /* loaded from: classes3.dex */
        class a {

            /* renamed from: a  reason: collision with root package name */
            public TextView f37171a;

            a() {
            }
        }

        n(List list) {
            this.f37169a = list;
        }

        @Override // android.widget.Adapter
        /* renamed from: a */
        public String getItem(int i2) {
            return (String) this.f37169a.get(i2);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f37169a.size();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            a aVar;
            Context context = viewGroup.getContext();
            if (view != null) {
                aVar = (a) view.getTag();
            } else {
                a aVar2 = new a();
                View inflate = LayoutInflater.from(context).inflate(R.layout.layout_sheet_golden_finger_item, viewGroup, false);
                aVar2.f37171a = (TextView) inflate.findViewById(R.id.name);
                inflate.setTag(aVar2);
                aVar = aVar2;
                view = inflate;
            }
            aVar.f37171a.setText(getItem(i2));
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) aVar.f37171a.getLayoutParams();
            if (i2 == getCount() - 1) {
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = context.getResources().getDimensionPixelOffset(R.dimen.wdp20);
            } else {
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = 0;
            }
            aVar.f37171a.setLayoutParams(layoutParams);
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    public class o implements ViewPager.OnPageChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.adapter.x f37173a;

        o(com.join.mgps.adapter.x xVar) {
            this.f37173a = xVar;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            int i4 = 0;
            while (i4 < this.f37173a.getCount()) {
                if (this.f37173a.getItem(i4) instanceof l1.k) {
                    ((l1.k) this.f37173a.getItem(i4)).C(i4 == i2);
                }
                i4++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    public class p implements PopupWindow.OnDismissListener {
        p() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            g0 g0Var = g0.this;
            g0Var.Z0 = 1;
            g0Var.a0();
            g0 g0Var2 = g0.this;
            g0Var2.D0 = 0;
            g0Var2.y0(1.0f);
            g0.H1 = g0.this.P0.getText().toString().trim();
            g0 g0Var3 = g0.this;
            if (g0Var3.f37081b1) {
                return;
            }
            g0Var3.f37081b1 = true;
            g0Var3.O();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    public class q implements com.join.mgps.customview.j {
        q() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            g0 g0Var = g0.this;
            g0Var.Z0 = 1;
            g0Var.R();
            g0.this.g0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    public class r implements com.join.mgps.customview.i {
        r() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            g0.this.R();
            g0.this.g0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    public class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g0.this.L0.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    public class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g0.I1 = true;
            g0.this.startActivity(new Intent(g0.this.f37141z0, BuildGameFromActivity_.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    public class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String trim = g0.this.P0.getText().toString().trim();
            g0.H1 = trim;
            if (com.join.mgps.Util.n.f(trim)) {
                g0.this.showToast("不能上传表情");
                return;
            }
            g0.this.L0.dismiss();
            g0 g0Var = g0.this;
            if (g0Var.f37081b1) {
                return;
            }
            g0Var.f37081b1 = true;
            g0Var.O();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    class v implements c2.e {
        v() {
        }

        @Override // c2.e
        public void a(Bitmap bitmap) {
            com.join.android.app.component.video.e.e(bitmap);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    public class w extends PagerAdapter {

        /* compiled from: GamedetialModleBtFragemnt.java */
        /* loaded from: classes3.dex */
        class a implements View.OnTouchListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f37183a;

            a(int i2) {
                this.f37183a = i2;
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (g0.this.l0()) {
                    if (this.f37183a != 0) {
                        if (g0.this.k0()) {
                            ScreenshotTrueListAcvity_.intent(g0.this.f37141z0).fromData(g0.this.J0.getGame_screen_shot().get(this.f37183a - 1)).gameId(g0.this.J0.getGame_id()).start();
                        } else {
                            List<DetialShowImageBean> pic_info = g0.this.J0.getPic_info();
                            ArrayList arrayList = new ArrayList();
                            if (pic_info != null) {
                                for (int i2 = 0; i2 < pic_info.size(); i2++) {
                                    arrayList.add(pic_info.get(i2).getRemote().getPath());
                                }
                            }
                            try {
                                Intent intent = new Intent(g0.this.f37141z0, ImagePagerActivity.class);
                                String[] strArr = new String[arrayList.size()];
                                for (int i4 = 0; i4 < arrayList.size(); i4++) {
                                    strArr[i4] = (String) arrayList.get(i4);
                                }
                                if (com.join.mgps.Util.d2.i(g0.this.J0.getVedio_url()) && this.f37183a == 0) {
                                    FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
                                    videoInfo.n(g0.this.J0.getVedio_url());
                                    videoInfo.h(strArr[0]);
                                    FullScreenActivity_.G0(g0.this.f37141z0).a(videoInfo).start();
                                } else {
                                    intent.putExtra("image_urls", strArr);
                                    intent.putExtra("image_index", this.f37183a - 1);
                                    g0.this.f37141z0.startActivity(intent);
                                }
                            } catch (Exception e4) {
                                e4.printStackTrace();
                            }
                        }
                    }
                } else if (g0.this.k0()) {
                    ScreenshotTrueListAcvity_.intent(g0.this.f37141z0).fromData(g0.this.J0.getGame_screen_shot().get(this.f37183a)).gameId(g0.this.J0.getGame_id()).start();
                } else {
                    List<DetialShowImageBean> pic_info2 = g0.this.J0.getPic_info();
                    ArrayList arrayList2 = new ArrayList();
                    if (pic_info2 != null) {
                        for (int i5 = 0; i5 < pic_info2.size(); i5++) {
                            arrayList2.add(pic_info2.get(i5).getRemote().getPath());
                        }
                    }
                    try {
                        Intent intent2 = new Intent(g0.this.f37141z0, ImagePagerActivity.class);
                        String[] strArr2 = new String[arrayList2.size()];
                        for (int i6 = 0; i6 < arrayList2.size(); i6++) {
                            strArr2[i6] = (String) arrayList2.get(i6);
                        }
                        if (com.join.mgps.Util.d2.i(g0.this.J0.getVedio_url()) && this.f37183a == 0) {
                            FullScreenActivity.VideoInfo videoInfo2 = new FullScreenActivity.VideoInfo();
                            videoInfo2.n(g0.this.J0.getVedio_url());
                            videoInfo2.h(strArr2[0]);
                            FullScreenActivity_.G0(g0.this.f37141z0).a(videoInfo2).start();
                        } else {
                            intent2.putExtra("image_urls", strArr2);
                            intent2.putExtra("image_index", this.f37183a - 1);
                            g0.this.f37141z0.startActivity(intent2);
                        }
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                }
                return false;
            }
        }

        w() {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return g0.this.E1.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i2) {
            viewGroup.addView((View) g0.this.E1.get(i2));
            View view = (View) g0.this.E1.get(i2);
            view.setOnTouchListener(new a(i2));
            return view;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }
    }

    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    class x extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        ImageView f37185a;

        public x(View view) {
            super(view);
            this.f37185a = (ImageView) view.findViewById(R.id.img);
        }
    }

    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    class y extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        y() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 100;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i2) {
            return 0L;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i2) {
            return super.getItemViewType(i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
            ImageView imageView = new ImageView(g0.this.f37141z0);
            imageView.setImageResource(R.drawable.icon);
            return new x(imageView);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleBtFragemnt.java */
    /* loaded from: classes3.dex */
    public class z extends BaseAdapter {

        /* compiled from: GamedetialModleBtFragemnt.java */
        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f37189a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ a0 f37190b;

            a(int i2, a0 a0Var) {
                this.f37189a = i2;
                this.f37190b = a0Var;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (g0.this.f37079a1.get(this.f37189a).getCurrent_game_state().equals("0")) {
                    this.f37190b.f37145b.setBackgroundResource(R.drawable.followed_image);
                    g0.this.M0.setVisibility(0);
                    g0.this.T0.setVisibility(8);
                    g0.this.Q0.setVisibility(0);
                    g0.this.R0.setText("收藏成功");
                    g0.this.S0.setVisibility(8);
                    g0.G1 = g0.this.f37079a1.get(this.f37189a).getId();
                    g0 g0Var = g0.this;
                    g0Var.f37081b1 = false;
                    int i2 = g0Var.D0 + 1;
                    g0Var.D0 = i2;
                    if (i2 > 0) {
                        g0Var.C.setImageResource(R.drawable.followed_image);
                        g0.this.D.setText("已收藏");
                        return;
                    }
                    return;
                }
                this.f37190b.f37145b.setBackgroundResource(R.drawable.follow_none_image);
                g0.this.f37079a1.get(this.f37189a).setCurrent_game_state("0");
                g0 g0Var2 = g0.this;
                g0Var2.P(g0Var2.f37079a1.get(this.f37189a).getId(), g0.this.f37080b, this.f37190b);
                g0 g0Var3 = g0.this;
                int i4 = g0Var3.D0 - 1;
                g0Var3.D0 = i4;
                g0Var3.D0 = i4;
                if (i4 == 0) {
                    g0Var3.C.setImageResource(R.drawable.follow_none_image);
                    g0.this.D.setText("收藏");
                }
            }
        }

        z() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return g0.this.f37079a1.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return g0.this.f37079a1.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            a0 a0Var;
            if (view == null) {
                view = LayoutInflater.from(g0.this.f37141z0).inflate(R.layout.list_item, (ViewGroup) null);
                a0Var = new a0();
                a0Var.f37144a = (SimpleDraweeView) view.findViewById(R.id.iv_img);
                a0Var.f37145b = (ImageView) view.findViewById(R.id.iv_coll);
                a0Var.f37146c = (TextView) view.findViewById(R.id.tv_title);
                a0Var.f37147d = (TextView) view.findViewById(R.id.tv_size);
                a0Var.f37149f = (RelativeLayout) view.findViewById(R.id.ll_gameform);
                a0Var.f37150g = (RelativeLayout) view.findViewById(R.id.rl_content);
                view.setTag(a0Var);
            } else {
                a0Var = (a0) view.getTag();
            }
            if (g0.this.f37079a1.get(i2).getGame_list().get(0).getGame_ico() != null && !g0.this.f37079a1.get(i2).getGame_list().get(0).getGame_ico().equals("")) {
                a0Var.f37144a.setImageURI(g0.this.f37079a1.get(i2).getGame_list().get(0).getGame_ico());
            } else {
                a0Var.f37144a.setImageResource(R.drawable.main_normal_icon);
            }
            a0Var.f37146c.setText(g0.this.f37079a1.get(i2).getTitle());
            a0Var.f37147d.setText(g0.this.f37079a1.get(i2).getGame_count() + "款");
            if (g0.this.f37079a1.get(i2).getCurrent_game_state().equals("0")) {
                a0Var.f37145b.setBackgroundResource(R.drawable.follow_none_image);
            } else {
                a0Var.f37145b.setBackgroundResource(R.drawable.followed_image);
                g0.this.D0++;
            }
            a0Var.f37150g.setOnClickListener(new a(i2, a0Var));
            return view;
        }
    }

    private void O0() {
        try {
            GameScore game_score = this.J0.getGame_score();
            if ("1".equals(this.J0.getComment_score_switch()) && game_score != null && com.join.mgps.Util.d2.i(game_score.getScore())) {
                if (!"0.0".equals(game_score.getScore()) && !"0".equals(game_score.getScore())) {
                    this.f37112p1.setText(game_score.getScore());
                    this.f37097j1.setIntegerMark(false);
                    this.f37097j1.setEnabled(false);
                    this.f37097j1.setStarMark(game_score.getTotal_stars());
                    this.f37109o1.setVisibility(0);
                    return;
                }
                this.f37115q1.setText("暂未出分");
                this.f37112p1.setText("0");
                this.f37097j1.setIntegerMark(false);
                this.f37097j1.setEnabled(false);
                this.f37097j1.setStarMark(game_score.getTotal_stars());
                this.f37109o1.setVisibility(0);
                return;
            }
            this.f37109o1.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", q.a.f73954a);
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static g0 h0(String str, ExtBean extBean, boolean z3) {
        h0 h0Var = new h0();
        Bundle bundle = new Bundle();
        bundle.putBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA, z3);
        bundle.putSerializable("extBean", extBean);
        bundle.putString("gameId", str);
        bundle.putBoolean("isFromVideo", false);
        h0Var.setArguments(bundle);
        return h0Var;
    }

    public static g0 i0(String str, ExtBean extBean, boolean z3, boolean z4) {
        h0 h0Var = new h0();
        Bundle bundle = new Bundle();
        bundle.putBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA, z3);
        bundle.putSerializable("extBean", extBean);
        bundle.putString("gameId", str);
        bundle.putBoolean("isFromVideo", z4);
        h0Var.setArguments(bundle);
        return h0Var;
    }

    private void p0() {
        try {
            if (this.f37090g != null) {
                if (!com.join.mgps.Util.d2.i(this.J0.getGame_info_top_video_url()) && !com.join.mgps.Util.d2.i(this.J0.getGame_info_top_pic())) {
                    this.f37088f.setVisibility(0);
                    this.f37092h.setVisibility(8);
                    this.f37090g.setVisibility(8);
                    return;
                }
                if (this.J0.getBt_game_switch() == 1) {
                    MyImageLoader.e(this.f37092h, R.drawable.banner_normal_icon, this.J0.getGame_info_top_pic(), r.c.f12144g);
                    this.f37090g.setVisibility(8);
                    this.f37092h.setVisibility(0);
                    return;
                }
                String game_info_top_video_url = this.J0.getGame_info_top_video_url();
                if (com.join.mgps.Util.d2.h(game_info_top_video_url)) {
                    MyImageLoader.d(this.f37092h, R.drawable.banner_normal_icon, this.J0.getGame_info_top_pic());
                    this.f37090g.setVisibility(8);
                    this.f37092h.setVisibility(0);
                }
                if (com.join.mgps.Util.d2.i(game_info_top_video_url)) {
                    MyImageLoader.h(this.f37090g.f17628a, this.J0.getGame_info_top_pic());
                    this.f37090g.setMuteWhenPlay(false);
                    this.f37090g.setPlayTag(this.E0);
                    this.f37090g.setShowCoverWhenPause(false);
                    if (this.F0) {
                        com.join.android.app.component.video.f.c(this.f37090g, game_info_top_video_url, false, "");
                        com.join.android.app.component.video.f.a(this.f37090g);
                        this.f37090g.setSurfaceToPlay();
                        this.f37090g.setCover(this.J0.getGame_info_top_pic());
                        return;
                    }
                    this.f37090g.setUp(game_info_top_video_url, StandardVideoView.C, this.J0.getGame_name(), this.J0.getGame_info_top_pic());
                    this.f37141z0.autoPlayVideo(this.f37090g);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r0(View view) {
        this.f37114q0.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t0(View view) {
        this.f37114q0.r();
    }

    private void w0() {
    }

    private void x0(String str, String str2, StatFactory.VolcanoOther volcanoOther, boolean z3) {
        String str3;
        String str4;
        String str5;
        String str6;
        String[] split = str.split("-");
        String str7 = "模块";
        String str8 = "home";
        str3 = "0";
        if (split.length > 0) {
            if (split.length > 2 && "22".equals(split[0])) {
                if ("4".equals(split[1])) {
                    str7 = "大家都在玩";
                } else {
                    str7 = "13".equals(split[1]) ? "最新网游" : "";
                }
                str3 = split[2];
            } else if (!TextUtils.equals(split[0], "home") && !TextUtils.equals(split[0], "ranking")) {
                if (split[0].equals("4")) {
                    str3 = split.length > 1 ? split[1] : "0";
                    str6 = "大家都在玩";
                } else if (split[0].equals("7")) {
                    str4 = "home";
                    str5 = split.length > 1 ? split[1] : "0";
                    str6 = "网游推荐";
                    StatFactory.Companion.getInstance(this.f37141z0).sendEvent(new StatFactory.VolcanoEvent(Event.check, str2, new StatFactory.SpmData("wufun", str4, str6, str5, true), volcanoOther, z3));
                } else if (split[0].equals("5")) {
                    str3 = split.length > 1 ? split[1] : "0";
                    str6 = "最新网游";
                } else if (split[0].equals("0")) {
                    str3 = split.length > 2 ? split[2] : "0";
                    if (split.length > 3) {
                        str7 = "模块" + split[1];
                        str3 = split[3];
                    }
                }
                str4 = str8;
                str5 = str3;
                StatFactory.Companion.getInstance(this.f37141z0).sendEvent(new StatFactory.VolcanoEvent(Event.check, str2, new StatFactory.SpmData("wufun", str4, str6, str5, true), volcanoOther, z3));
            } else {
                str8 = split[0];
                str7 = split.length > 1 ? split[1] : "";
                if (split.length > 2) {
                    str3 = split[2];
                }
            }
            str6 = str7;
            str4 = str8;
            str5 = str3;
            StatFactory.Companion.getInstance(this.f37141z0).sendEvent(new StatFactory.VolcanoEvent(Event.check, str2, new StatFactory.SpmData("wufun", str4, str6, str5, true), volcanoOther, z3));
        }
        str4 = "home";
        str5 = "0";
        str6 = "";
        StatFactory.Companion.getInstance(this.f37141z0).sendEvent(new StatFactory.VolcanoEvent(Event.check, str2, new StatFactory.SpmData("wufun", str4, str6, str5, true), volcanoOther, z3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void A0() {
        ShareBean shareBean = new ShareBean();
        String share_url = this.K0.getShare_url();
        shareBean.setqZoneShareUrl(share_url);
        shareBean.setQqUrl(share_url);
        shareBean.setWechatFriendUrl(share_url);
        shareBean.setWechatShareUrl(share_url);
        shareBean.setWeiboShareUrl(share_url);
        shareBean.setTitle(this.K0.getGame_name());
        shareBean.setText(this.K0.getInfo());
        shareBean.setImageUrl(this.K0.getIco_remote());
        shareBean.setFrom(2);
        shareBean.setGameId(this.K0.getGame_id());
        if (this.K0.getShare_config() != null && this.K0.getShare_config().getShare_switch() == 1) {
            shareBean.setIntentData(this.K0.getShare_config().getJump_info());
        }
        com.join.mgps.Util.r.r(this.f37141z0, shareBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void B0() {
        ShareBean shareBean = new ShareBean();
        String share_url = this.K0.getShare_url();
        shareBean.setqZoneShareUrl(share_url);
        shareBean.setQqUrl(share_url);
        shareBean.setWechatFriendUrl(share_url);
        shareBean.setWechatShareUrl(share_url);
        shareBean.setWeiboShareUrl(share_url);
        shareBean.setImageUrl(this.K0.getIco_remote());
        shareBean.setTitle(this.K0.getGame_name());
        shareBean.setText(this.K0.getInfo());
        shareBean.setFrom(2);
        shareBean.setGameId(this.K0.getGame_id());
        if (this.K0.getShare_config() != null && this.K0.getShare_config().getShare_switch() == 1) {
            shareBean.setIntentData(this.K0.getShare_config().getJump_info());
        }
        com.join.mgps.Util.r.r(this.f37141z0, shareBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void C0(String str) {
        Toast.makeText(this.f37141z0, str, 0).show();
    }

    void D0(View view) {
        if (this.f37114q0 == null) {
            return;
        }
        view.setPadding(0, getStatusBarHeight(this.f37141z0), 0, 0);
        this.f37114q0.I(view);
        this.f37114q0.setFocusable(true);
        this.f37114q0.setFocusableInTouchMode(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 4000)
    public void E0() {
        com.join.mgps.Util.c.g(this.f37103m1);
        E0();
    }

    void F0() {
        try {
            this.f37124t1.setImageResource(R.drawable.line_blue_bg);
            Animation loadAnimation = AnimationUtils.loadAnimation(this.f37141z0, R.anim.img_translate);
            this.f37136x1 = loadAnimation;
            loadAnimation.setFillAfter(true);
            this.f37133w1.setVisibility(0);
            this.f37133w1.startAnimation(this.f37136x1);
            this.f37136x1.setAnimationListener(new f());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void G0() {
        try {
            this.f37133w1.clearAnimation();
            this.f37133w1.setVisibility(8);
            this.f37124t1.setImageResource(R.drawable.line_white_bg);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void H0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f37141z0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0() {
        XListView2 xListView2 = this.T0;
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
    public void J0(int i2) {
        try {
            if (i2 < 100) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f37121s1.getLayoutParams();
                layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.wdp24);
                layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.wdp24);
                this.f37121s1.setLayoutParams(layoutParams);
                this.f37121s1.setCompoundDrawables(null, null, null, null);
                this.f37121s1.setBackgroundResource(R.drawable.mygame_big_round);
                this.f37121s1.setPadding(1, 0, 0, 1);
            } else {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f37121s1.getLayoutParams();
                layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
                layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
                layoutParams2.setMargins(4, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 0, 0);
                this.f37121s1.setGravity(17);
                this.f37121s1.setLayoutParams(layoutParams2);
                this.f37121s1.setCompoundDrawables(null, null, null, null);
                this.f37121s1.setBackgroundResource(R.drawable.message_round);
                this.f37121s1.setPadding(1, 0, 2, 1);
            }
            this.f37121s1.setVisibility(0);
            TextView textView = this.f37121s1;
            textView.setText(i2 + "");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0(int i2) {
        if (i2 == 0) {
            G0();
        } else {
            F0();
        }
    }

    @Override // l1.f
    public void L() {
        GamedetialModleFourBean gamedetialModleFourBean = this.J0;
        if (gamedetialModleFourBean == null) {
            return;
        }
        List<String> golden_finger = (gamedetialModleFourBean.getRoom_cfg_info() == null || this.J0.getRoom_cfg_info().getGolden_finger() == null || this.J0.getRoom_cfg_info().getGolden_finger().size() <= 0) ? null : this.J0.getRoom_cfg_info().getGolden_finger();
        if (golden_finger == null) {
            return;
        }
        View inflate = LayoutInflater.from(this.f37141z0).inflate(R.layout.layout_game_detail_sheet_golden_finger, (ViewGroup) this.f37114q0, false);
        inflate.findViewById(R.id.close).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.f0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g0.this.r0(view);
            }
        });
        ((ListView) inflate.findViewById(R.id.listView)).setAdapter((ListAdapter) new n(golden_finger));
        D0(inflate);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0() {
        XListView2 xListView2 = this.T0;
        if (xListView2 != null) {
            try {
                xListView2.t();
                this.T0.u();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M0() {
        try {
            G0();
            this.f37121s1.setVisibility(8);
            this.f37121s1.setText("");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void N0(boolean z3) {
        ExtBean extBean = this.f37082c;
        if (extBean == null || !"checkgame".equals(extBean.getFrom())) {
            return;
        }
        com.join.mgps.Util.k1.c().b(this.f37141z0, this.f37082c.getFrom_id(), new g(z3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void O() {
        try {
            AccountBean accountData = AccountUtil_.getInstance_(this.f37141z0).getAccountData();
            LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
            linkedMultiValueMap.add("uid", Integer.valueOf(accountData.getUid()));
            linkedMultiValueMap.add("token", accountData.getToken());
            linkedMultiValueMap.add("group_id", G1);
            linkedMultiValueMap.add("game_id", this.f37080b);
            linkedMultiValueMap.add("game_title", H1);
            linkedMultiValueMap.add("device_id", this.B0);
            linkedMultiValueMap.add("version", this.C0);
            GameFromBooleanBean Q = this.W0.Q(linkedMultiValueMap);
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
    @Background
    public void P(String str, String str2, a0 a0Var) {
        try {
            if (com.join.android.app.common.utils.f.j(this.f37141z0)) {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", Integer.valueOf(this.A1.getUid()));
                linkedMultiValueMap.add("token", this.A1.getToken());
                linkedMultiValueMap.add("group_id", str);
                linkedMultiValueMap.add("game_id", str2);
                linkedMultiValueMap.add("device_id", this.B0);
                linkedMultiValueMap.add("version", this.C0);
                GameFromBooleanBean z3 = this.W0.z(linkedMultiValueMap);
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
    public void P0(GamedetialModleFourBean gamedetialModleFourBean) {
        List<DownloadTask> D;
        boolean z3;
        gamedetialModleFourBean.setNodeId(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
        this.K0 = gamedetialModleFourBean;
        this.J0 = gamedetialModleFourBean;
        try {
            if (gamedetialModleFourBean.getBt_game_switch() == 1 && gamedetialModleFourBean.getGame_ranking_pos() != null) {
                UtilsMy.w(gamedetialModleFourBean.getGame_ranking_pos(), this.f37105n0, this.f37141z0);
            }
            gamedetialModleFourBean.set_from_type(this.f37082c.get_from_type());
            gamedetialModleFourBean.set_from(101);
            gamedetialModleFourBean.setRecPosition(this.f37082c.getRecPosition());
            this.K0.set_from_type(this.f37082c.get_from_type());
            this.K0.set_from(101);
            this.K0.setRecPosition(this.f37082c.getRecPosition());
            this.F.setVisibility(0);
            this.G.setVisibility(8);
            this.H.setVisibility(8);
            initView();
            ArrayList arrayList = new ArrayList();
            CommentAlllistIntentData commentAlllistIntentData = new CommentAlllistIntentData();
            commentAlllistIntentData.setGameId(gamedetialModleFourBean.getGame_id());
            commentAlllistIntentData.setPackageName(gamedetialModleFourBean.getPackageName());
            commentAlllistIntentData.setGameType(gamedetialModleFourBean.getPlugin_num());
            commentAlllistIntentData.setGameIsStart(gamedetialModleFourBean.getIs_started());
            if (gamedetialModleFourBean.getGame_score() != null) {
                commentAlllistIntentData.setSgcSwitch(gamedetialModleFourBean.getGame_score().getSgc_switch());
            }
            commentAlllistIntentData.setBespeakSwitch(gamedetialModleFourBean.getBespeak_switch());
            commentAlllistIntentData.setCommentScoreSwitch(gamedetialModleFourBean.getComment_score_switch());
            arrayList.add(new x.a("详情", com.join.mgps.activity.z.r0(this.f37080b, this.f37084d, this.f37082c).W(this)));
            arrayList.add(new x.a("点评", com.join.mgps.fragment.w.S(commentAlllistIntentData)));
            arrayList.add(new x.a("游戏单", com.join.mgps.fragment.j2.X(gamedetialModleFourBean.getGame_company_id(), this.f37080b)));
            com.join.mgps.adapter.x xVar = new com.join.mgps.adapter.x(getChildFragmentManager(), arrayList);
            this.f37096j.setAdapter(xVar);
            this.f37096j.setOffscreenPageLimit(3);
            this.f37094i.setViewPager(this.f37096j);
            this.f37096j.addOnPageChangeListener(new o(xVar));
            if (arrayList.size() == 1) {
                this.f37100l.setVisibility(8);
                this.f37098k.setVisibility(8);
            }
            List<ServiceState> game_server_state = this.K0.getGame_server_state();
            if (game_server_state != null && game_server_state.size() > 0) {
                this.f37120s0.setVisibility(0);
                ServiceState serviceState = game_server_state.get(0);
                TextView textView = this.f37123t0;
                StringBuilder sb = new StringBuilder();
                sb.append(serviceState.getType() == 1 ? "开服" : "合服");
                sb.append("通知:");
                sb.append(com.join.mgps.Util.x.C(serviceState.getAdd_time()));
                sb.append(" ");
                sb.append(com.join.mgps.Util.x.x(serviceState.getAdd_time(), "HH:mm"));
                sb.append(" ");
                sb.append(serviceState.getTitle());
                textView.setText(sb.toString());
            } else {
                this.f37120s0.setVisibility(8);
            }
            v0(gamedetialModleFourBean);
            this.f37098k.setData(gamedetialModleFourBean);
            if (this.f37084d && g1.f.G().B(this.f37080b) == null) {
                com.php25.PDownload.d.c(gamedetialModleFourBean.getDownloadtaskDown(), this.f37141z0);
                onDetailDownload();
            }
            GamedetialModleFourBean gamedetialModleFourBean2 = this.K0;
            if (gamedetialModleFourBean2 != null) {
                if (gamedetialModleFourBean2.getGame_follow() == 1) {
                    this.C.setImageResource(R.drawable.followed_image);
                    this.D.setText("已收藏");
                } else {
                    this.C.setImageResource(R.drawable.follow_none_image);
                    this.D.setText("收藏");
                }
            }
            if (gamedetialModleFourBean.getMod_info() != null) {
                D = g1.f.G().C(gamedetialModleFourBean.getMod_info().getMain_game_id(), gamedetialModleFourBean.getMod_info().getMod_game_id());
            } else {
                D = g1.f.G().D(this.K0.getPackageName());
            }
            if (D != null && D.size() > 0) {
                boolean z4 = false;
                loop0: while (true) {
                    z3 = false;
                    for (DownloadTask downloadTask : D) {
                        if (Dtype.MOD.name().equals(downloadTask.getFileType())) {
                            z4 = com.join.mgps.va.overmind.e.p().D(downloadTask.getPackageName()) && downloadTask.getStatus() == 5;
                        } else if (com.join.android.app.common.utils.a.g0(getContext()).c(getContext(), downloadTask.getPackageName()) && downloadTask.getStatus() == 5) {
                            z3 = true;
                        }
                    }
                    break loop0;
                }
                if (z4 && z3) {
                    this.f37118r1 = g1.f.G().B(this.f37080b);
                } else if (z4) {
                    if (this.K0.getMod_info() != null) {
                        this.f37118r1 = g1.f.G().B(this.K0.getMod_info().getMod_game_id());
                    }
                } else if (z3) {
                    this.f37118r1 = g1.f.G().B(this.f37080b);
                } else {
                    if (this.K0.getMod_info() != null) {
                        this.f37118r1 = g1.f.G().B(this.K0.getMod_info().getMod_game_id());
                    }
                    if (this.f37118r1 == null) {
                        this.f37118r1 = g1.f.G().B(this.f37080b);
                    }
                }
            }
            DownloadTask downloadTask2 = this.f37118r1;
            if (downloadTask2 == null) {
                this.f37118r1 = this.K0.getDownloadtaskDown();
                if (UtilsMy.e0(this.K0.getTag_info())) {
                    if (this.f37118r1.getMod_info() == null) {
                        this.f37118r1.setFileType(Dtype.android.name());
                        if (com.join.android.app.common.utils.a.g0(this.f37141z0).c(this.f37141z0, this.K0.getPackageName())) {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f37141z0).k(this.f37141z0, this.K0.getPackageName());
                            if (com.join.mgps.Util.d2.i(this.K0.getVer()) && k4.d() < Integer.parseInt(this.K0.getVer())) {
                                this.f37118r1.setStatus(9);
                            } else {
                                this.f37118r1.setStatus(5);
                            }
                        } else {
                            this.f37118r1.setStatus(0);
                        }
                    }
                } else {
                    this.f37118r1.setStatus(0);
                }
            } else {
                downloadTask2.setDownloadType(0);
                this.f37118r1.setTask_down_type(0);
                this.f37118r1.setScreenshot_pic(this.K0.getScreenshot_pic());
            }
            if (("" + this.K0.getPlugin_num()).equals("" + ConstantIntEnum.H5.value())) {
                GamedetialModleFourBean gamedetialModleFourBean3 = this.K0;
                gamedetialModleFourBean3.setDown_count(gamedetialModleFourBean3.getStart_count());
            }
            updateButn();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Q() {
        this.f37108o0.setVisibility(8);
        ((GamedetailVideoMainActivity_) getActivity()).shakeAnimback();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.broadcast.bespeak.sussess"})
    public void Q0() {
        this.K0.setGame_book(1);
        updateButn();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R() {
        try {
            XListView2 xListView2 = this.T0;
            if (xListView2 != null) {
                xListView2.k();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W(GameFromPopoWinBean gameFromPopoWinBean) {
        for (int i2 = 0; i2 < gameFromPopoWinBean.getData().size(); i2++) {
            this.f37079a1.add(gameFromPopoWinBean.getData().get(i2));
        }
        if (gameFromPopoWinBean.getData().size() < 10 && this.T0 != null) {
            I0();
        }
        z zVar = this.U0;
        if (zVar != null) {
            zVar.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void X() {
        if (this.f37114q0.getState() != BottomSheetLayout.State.HIDDEN) {
            this.f37114q0.r();
            return;
        }
        this.f37141z0.clickBack();
        j0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Z() {
        try {
            this.f37139y1 = g1.f.G().O();
            int W = g1.f.G().W();
            this.f37142z1 = W;
            K0(W);
            int i2 = this.f37139y1;
            if (i2 != 0) {
                J0(i2);
            } else {
                M0();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a0() {
        if (this.f37079a1.size() > 0) {
            this.f37079a1.clear();
            z zVar = this.U0;
            if (zVar != null) {
                zVar.notifyDataSetChanged();
            }
        }
    }

    void addFrom(DownloadTask downloadTask) {
        ExtBean extBean = this.f37082c;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || downloadTask == null || !"112".equals(this.f37082c.getFrom())) {
            return;
        }
        ExtBean extBean2 = new ExtBean();
        extBean2.setFrom("101");
        extBean2.setPosition("112");
        extBean2.setLocation(this.f37082c.getLocation());
        downloadTask.setExt(JsonMapper.toJsonString(extBean2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f37080b = arguments.getString("gameId");
            this.f37084d = arguments.getBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA);
            this.F0 = arguments.getBoolean("isFromVideo");
            this.f37082c = (ExtBean) arguments.getSerializable("extBean");
        }
        this.E0 = this.f37078a + System.currentTimeMillis();
        if (this.F0) {
            this.E0 = "PapaMainAdapter";
        }
        if (this.f37082c == null) {
            this.f37082c = new ExtBean();
        }
        GamedetailVideoMainActivity gamedetailVideoMainActivity = (GamedetailVideoMainActivity) getActivity();
        this.f37141z0 = gamedetailVideoMainActivity;
        if (gamedetailVideoMainActivity.gethideOrshowCover()) {
            this.f37108o0.setVisibility(0);
        } else {
            this.f37108o0.setVisibility(8);
        }
        this.G.setVisibility(8);
        this.H.setVisibility(8);
        this.F.setVisibility(8);
        this.f37138y0 = com.join.mgps.rpc.impl.c.P1();
        this.V0 = com.join.mgps.rpc.impl.a.b0();
        this.W0 = com.join.mgps.rpc.impl.a.b0();
        com.join.mgps.Util.c0.a().d(this);
        RequestBeanUtil.getInstance(this.f37141z0);
        this.C0 = RequestBeanUtil.getVersionAndVersionName();
        this.A0 = new com.join.android.app.common.manager.b(this.f37141z0);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            this.f37141z0.getWindow().setFlags(67108864, 67108864);
            this.A0.m(true);
            this.A0.n(R.color.black_alpha);
            View childAt = ((ViewGroup) this.f37141z0.findViewById(16908290)).getChildAt(0);
            if (childAt != null) {
                ViewCompat.setFitsSystemWindows(childAt, false);
            }
            getResources().getDimensionPixelSize(getResources().getIdentifier("status_bar_height", "dimen", q.a.f73954a));
            GamedetailVideoMainActivity gamedetailVideoMainActivity2 = this.f37141z0;
            com.join.mgps.Util.z1.c(gamedetailVideoMainActivity2, com.join.mgps.Util.z1.d(gamedetailVideoMainActivity2));
        }
        if (i2 >= 21) {
            Window window = getActivity().getWindow();
            window.clearFlags(67108864);
            window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(0);
        } else if (i2 >= 19) {
            getActivity().getWindow().addFlags(67108864);
        }
        GamedetialModleFourBean modleFourBeanShow = ((GamedetailVideoMainActivity) getActivity()).getModleFourBeanShow();
        if (modleFourBeanShow != null) {
            this.G.setVisibility(8);
            this.H.setVisibility(8);
            this.F.setVisibility(0);
            P0(modleFourBeanShow);
        } else {
            f0();
        }
        this.I0 = getStatusBarHeight(this.f37141z0);
        CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) this.f37135x0.getLayoutParams();
        View findViewById = this.f37141z0.findViewById(R.id.statuHVIew);
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) findViewById.getLayoutParams();
        if (i2 >= 21) {
            layoutParams2.height = this.I0;
            findViewById.setLayoutParams(layoutParams2);
            ((ViewGroup.MarginLayoutParams) layoutParams).height = getResources().getDimensionPixelOffset(R.dimen.wdp96) + this.I0;
            this.f37135x0.setLayoutParams(layoutParams);
        } else {
            ((ViewGroup.MarginLayoutParams) layoutParams).height = getResources().getDimensionPixelOffset(R.dimen.wdp96);
            this.f37135x0.setLayoutParams(layoutParams);
            layoutParams2.height = 1;
            findViewById.setLayoutParams(layoutParams2);
        }
        this.G0 = (((int) getResources().getDimension(R.dimen.wdp400)) - ((int) this.f37141z0.getResources().getDimension(R.dimen.wdp96))) - this.I0;
        this.f37107o.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new k(findViewById, (int) getResources().getDimension(R.dimen.wdp25)));
        com.join.mgps.customview.CoordinatorLayout coordinatorLayout = this.F;
        if (coordinatorLayout instanceof com.join.mgps.customview.CoordinatorLayout) {
            coordinatorLayout.setSheetLayout(this.f37114q0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.ll_notice})
    public void b0() {
        if (this.J0 != null) {
            DetialMoreServiceListActivity_.P0(this.f37141z0).a(this.J0.getCrc_sign_id()).start();
        }
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void backpressedTofinishActivity() {
        StandardVideoView standardVideoView = this.f37090g;
        if (standardVideoView == null) {
            return;
        }
        standardVideoView.taskShotPic(new v());
        if (this.f37090g.getTimeHas() < 2000) {
            this.f37090g.onAutoCompletion();
        }
        com.join.android.app.component.video.e.f(this.f37090g);
        this.f37090g.getGSYVideoManager().i(this.f37090g);
        this.f37085d1 = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void c0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f37141z0);
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
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.B1
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.B1
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.C1
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.C1
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.B1
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.B1
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.C1
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.C1
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.C1
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.C1
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.B1
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.B1
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.C1
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.C1
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.C1
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.C1
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.B1
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.B1
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.C1
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.C1
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.g0.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void changeGameFollow(int i2) {
        String str;
        if (com.join.android.app.common.utils.f.j(this.f37141z0)) {
            AccountBean accountData = AccountUtil_.getInstance_(this.f37141z0).getAccountData();
            this.A1 = accountData;
            int uid = accountData != null ? accountData.getUid() : 0;
            try {
                PackageInfo packageInfo = this.f37141z0.getPackageManager().getPackageInfo(this.f37141z0.getPackageName(), 0);
                str = packageInfo.versionCode + "_" + packageInfo.versionName;
            } catch (PackageManager.NameNotFoundException e4) {
                e4.printStackTrace();
                str = "";
            }
            RequestdetialFolowAndBeSpeak requestdetialFolowAndBeSpeak = new RequestdetialFolowAndBeSpeak();
            requestdetialFolowAndBeSpeak.setApp_ver(str);
            requestdetialFolowAndBeSpeak.setGame_id(this.K0.getCrc_sign_id());
            requestdetialFolowAndBeSpeak.setUid(uid);
            requestdetialFolowAndBeSpeak.setMobile(this.A1.getMobile());
            CommonRequestBean<RequestGameIdArgs> detialFollowAnd = RequestBeanUtil.getInstance(this.f37141z0).getDetialFollowAnd(requestdetialFolowAndBeSpeak);
            ResultMainBean resultMainBean = null;
            if (i2 == 1) {
                resultMainBean = this.f37138y0.O0(detialFollowAnd);
            } else if (i2 == 2) {
                resultMainBean = this.f37138y0.D(detialFollowAnd);
            } else if (i2 == 3) {
                resultMainBean = this.f37138y0.o(detialFollowAnd);
            } else if (i2 == 4) {
                resultMainBean = this.f37138y0.d0(detialFollowAnd);
            }
            if (resultMainBean != null) {
                updateTitleButn(resultMainBean, i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void d0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f37141z0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void e0() {
        if (AccountUtil_.getInstance_(this.f37141z0).isTourist()) {
            ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(this.f37141z0).flags(268435456)).start();
            return;
        }
        o0();
        g0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void f0() {
        GamedetialModleFourBean data;
        if (com.join.android.app.common.utils.f.j(this.f37141z0)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this.f37141z0).getAccountData();
                if (accountData == null) {
                    accountData = new AccountBean();
                }
                RequestModel requestModel = new RequestModel();
                requestModel.setDefault(this.f37141z0);
                RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs(this.f37080b, 1, accountData.getUid());
                requestGameIdArgs.setDownloadedGameIdList(g1.f.G().z());
                requestModel.setArgs(requestGameIdArgs);
                ResponseModel<GamedetialModleFourBean> body = com.join.mgps.rpc.impl.h.L().J().i(requestModel.makeSign()).execute().body();
                if (body != null && body.getCode() == 200 && (data = body.getData()) != null) {
                    P0(data);
                    return;
                } else {
                    showLodingFailed();
                    return;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                showLodingFailed();
                return;
            }
        }
        showLodingFailed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void g0() {
        try {
            if (com.join.android.app.common.utils.f.j(this.f37141z0)) {
                if (IntentUtil.getInstance().goLoginInteractive(this.f37141z0)) {
                    return;
                }
                this.B0 = "";
                AccountBean accountData = AccountUtil_.getInstance_(this.f37141z0).getAccountData();
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", Integer.valueOf(accountData.getUid()));
                linkedMultiValueMap.add("token", accountData.getToken());
                linkedMultiValueMap.add("current_game_id", this.f37080b);
                int i2 = this.Z0;
                this.Z0 = i2 + 1;
                linkedMultiValueMap.add("page", Integer.valueOf(i2));
                linkedMultiValueMap.add("device_id", this.B0);
                linkedMultiValueMap.add("version ", this.C0);
                GameFromPopoWinBean O = this.W0.O(linkedMultiValueMap);
                if (O != null && O.getError() == 0 && O.getData() != null) {
                    L0();
                    if (this.Z0 == 2) {
                        a0();
                    }
                    W(O);
                    return;
                } else if (O != null && O.getError() == 701) {
                    IntentUtil.getInstance().goMyAccountLoginActivity(this.f37141z0);
                    C0("Token已失效，请重新登录");
                    IntentUtil.getInstance().goLogin(this.f37141z0);
                    m0();
                    return;
                } else {
                    I0();
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
    public void getDownloadTaskInfo() {
        List<DownloadTask> r3 = g1.f.G().r();
        List<DownloadTask> q3 = g1.f.G().q();
        if (q3 != null && q3.size() > 0) {
            for (DownloadTask downloadTask : q3) {
                this.B1.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.C1.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public ViewPager getViewPager() {
        return this.f37096j;
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void hideCover() {
        this.f37108o0.setVisibility(8);
    }

    void initView() {
        try {
            this.I.setVisibility(8);
            this.E.setText(this.J0.getGame_name());
            p0();
            n0();
            if (!com.join.mgps.Util.d2.i(this.J0.getGame_info_top_video_url()) && !com.join.mgps.Util.d2.i(this.J0.getGame_info_top_pic())) {
                this.f37110p.setVisibility(0);
                this.f37113q.setVisibility(8);
                this.f37116r.setVisibility(8);
                this.f37135x0.getBackground().setAlpha(255);
            }
            int dimensionPixelSize = getResources().getDimensionPixelSize(getResources().getIdentifier("status_bar_height", "dimen", q.a.f73954a));
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f37104n.getLayoutParams();
            layoutParams.height = dimensionPixelSize;
            this.f37104n.setLayoutParams(layoutParams);
            MyImageLoader.h(this.f37087e1, this.J0.getIco_remote());
            this.f37089f1.setText(this.J0.getGame_name());
            this.f37091g1.setText(this.J0.getCompany_name());
            if (this.J0.getBespeak_switch() == 1) {
                if (this.J0.getAppSize() != null && !"0.00".equals(this.J0.getAppSize())) {
                    TextView textView = this.f37093h1;
                    textView.setText(this.J0.getAppSize() + "M");
                    this.f37093h1.setVisibility(0);
                } else {
                    this.f37093h1.setVisibility(8);
                }
                if (this.J0.getBespeak_count() == null) {
                    this.f37095i1.setText("已有0人预约");
                } else {
                    TextView textView2 = this.f37095i1;
                    textView2.setText("已有" + this.J0.getBespeak_count() + "人预约");
                }
            } else {
                this.f37093h1.setVisibility(0);
                this.f37095i1.setText(com.join.mgps.Util.d2.c(this.J0.getDown_count()));
                TextView textView3 = this.f37093h1;
                textView3.setText(this.J0.getAppSize() + "M");
                try {
                    if (this.J0.getDown_status() == 5 && this.J0.getSp_tag_info() != null && this.J0.getSp_tag_info().getDown_res() != null) {
                        this.f37095i1.setText(this.J0.getSp_tag_info().getDown_res().getName());
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            if (this.J0.getPlugin_num() != null) {
                String plugin_num = this.J0.getPlugin_num();
                if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                    this.f37093h1.setVisibility(8);
                    this.f37095i1.setText(com.join.mgps.Util.d2.c(this.J0.getDown_count()).replace("安装", this.f37141z0.getResources().getString(R.string.download_status_finished)));
                }
            }
            O0();
            this.f37109o1.setOnClickListener(new a());
            if (com.join.mgps.Util.d2.h(this.J0.getCompany_name())) {
                this.f37099k1.setVisibility(8);
            } else {
                this.f37099k1.setVisibility(8);
                this.f37101l1.setOnClickListener(new b());
            }
            this.f37091g1.setOnClickListener(new c());
            if (this.J0.getShare_config() != null && this.J0.getShare_config().getShare_switch() == 1) {
                this.f37101l1.setVisibility(0);
                MyImageLoader.d(this.f37103m1, R.drawable.user_gift, "");
                this.f37101l1.setOnClickListener(new d());
            } else {
                this.f37101l1.setVisibility(8);
            }
            if (this.J0.getActivity_entry() != null) {
                this.f37101l1.setVisibility(0);
                MyImageLoader.h(this.f37103m1, this.J0.getActivity_entry().getPic());
                this.f37106n1.setText(this.J0.getActivity_entry().getTitle());
                E0();
                this.f37101l1.setOnClickListener(new e());
                return;
            }
            this.f37101l1.setVisibility(8);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void instalButtomButn() {
        ExtBean extBean;
        boolean z3;
        int game_book = this.K0.getGame_book();
        if (this.K0.getBespeak_switch() == 1 && game_book != 1 && this.K0.getDown_status() == 2) {
            if (IntentUtil.getInstance().goLoginNetGame(this.f37141z0) || this.K0.getGame_book() == 1) {
                return;
            }
            changeGameFollow(4);
            return;
        }
        if (("" + this.K0.getPlugin_num()).equals("" + ConstantIntEnum.H5.value())) {
            IntentUtil.getInstance().goShareWebActivity(this.f37141z0, this.K0.getDown_url_remote());
            UtilsMy.h2(this.f37118r1, this.f37141z0);
        }
        DownloadTask downloadTask = this.f37118r1;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (this.f37118r1 != null && UtilsMy.m0(this.K0.getPay_tag_info(), this.K0.getCrc_sign_id()) > 0) {
            status = 43;
        }
        GamedetialModleFourBean gamedetialModleFourBean = this.K0;
        if (gamedetialModleFourBean != null && gamedetialModleFourBean.getMod_info() != null) {
            List<DownloadTask> C = g1.f.G().C(this.K0.getMod_info().getMain_game_id(), this.K0.getMod_info().getMod_game_id());
            if (C != null && C.size() > 0) {
                boolean z4 = false;
                loop0: while (true) {
                    z3 = false;
                    for (DownloadTask downloadTask2 : C) {
                        if (Dtype.MOD.name().equals(downloadTask2.getFileType())) {
                            z4 = com.join.mgps.va.overmind.e.p().D(downloadTask2.getPackageName()) && downloadTask2.getStatus() == 5;
                        } else if (com.join.android.app.common.utils.a.g0(getContext()).c(getContext(), downloadTask2.getPackageName()) && downloadTask2.getStatus() == 5) {
                            z3 = true;
                        }
                    }
                    break loop0;
                }
                if (z4 && z3) {
                    this.f37118r1 = g1.f.G().B(this.f37080b);
                } else if (z4) {
                    if (this.K0.getMod_info() != null) {
                        this.f37118r1 = g1.f.G().B(this.K0.getMod_info().getMod_game_id());
                    }
                } else if (z3) {
                    this.f37118r1 = g1.f.G().B(this.f37080b);
                } else {
                    if (this.K0.getMod_info() != null) {
                        this.f37118r1 = g1.f.G().B(this.K0.getMod_info().getMod_game_id());
                    }
                    if (this.f37118r1 == null) {
                        this.f37118r1 = g1.f.G().B(this.f37080b);
                    }
                }
            } else {
                this.f37118r1 = null;
            }
        }
        DownloadTask downloadTask3 = this.f37118r1;
        if (downloadTask3 != null && downloadTask3.getStatus() != 0) {
            DownloadTask downloadTask4 = this.f37118r1;
            if (downloadTask4 != null && (status == 2 || status == 10)) {
                com.php25.PDownload.d.h(downloadTask4);
            } else if (status == 12 || status == 27) {
                return;
            } else {
                if (status == 13) {
                    com.php25.PDownload.d.k(this.f37141z0, downloadTask4);
                    return;
                } else if (status == 5) {
                    UtilsMy.f3(this.f37141z0, downloadTask4, PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                } else if (status == 42) {
                    downloadTask4.setVer(this.K0.getVer());
                    this.f37118r1.setVer_name(this.K0.getVer_name());
                    this.f37118r1.setUrl(this.K0.getDown_url_remote());
                    this.f37118r1.setCfg_ver(this.K0.getCfg_ver());
                    this.f37118r1.setCfg_ver_name(this.K0.getCfg_ver_name());
                    this.f37118r1.setCfg_down_url(this.K0.getCfg_down_url());
                    this.f37118r1.setPay_game_amount(this.K0.getPay_tag_info() != null ? this.K0.getPay_tag_info().getPay_game_amount() : 0);
                    DownloadTask downloadTask5 = this.f37118r1;
                    Where where = Where.detail;
                    downloadTask5.setKeyword(where.name());
                    this.f37118r1.setKeyword(where.name());
                    UtilsMy.w3(this.f37141z0, this.f37118r1);
                } else if (status == 9) {
                    if (!com.join.android.app.common.utils.f.j(this.f37141z0)) {
                        com.join.mgps.Util.i2.a(this.f37141z0).b("无网络连接");
                        return;
                    }
                    if (this.K0.getGame_detailed() != null && com.join.mgps.Util.d2.i(this.K0.getGame_detailed().getTpl_two_qq())) {
                        com.join.mgps.Util.a0.c0(this.f37141z0).Y(this.f37141z0, this.K0.getGame_detailed().getTpl_two_qq_key(), this.K0.getGame_detailed().getAd_pic_qq(), this.K0.getGame_detailed().getTpl_two_qq());
                    }
                    int downloadType = this.f37118r1.getDownloadType();
                    if (downloadType == 0 || downloadType == 1) {
                        if (this.f37118r1.getCrc_link_type_val() == null || this.f37118r1.getCrc_link_type_val().equals("")) {
                            return;
                        }
                        addFrom(this.f37118r1);
                        if (UtilsMy.T0(this.f37141z0, this.f37118r1)) {
                            return;
                        }
                        if (this.K0.getDown_status() == 5) {
                            UtilsMy.R0(this.f37141z0, this.f37118r1);
                            return;
                        }
                        com.php25.PDownload.d.b(this.f37118r1);
                        this.f37118r1.setVer(this.K0.getVer());
                        this.f37118r1.setVer_name(this.K0.getVer_name());
                        this.f37118r1.setUrl(this.K0.getDown_url_remote());
                        this.f37118r1.setCfg_ver(this.K0.getCfg_ver());
                        this.f37118r1.setCfg_ver_name(this.K0.getCfg_ver_name());
                        this.f37118r1.setCfg_down_url(this.K0.getCfg_down_url());
                        this.f37118r1.setPay_game_amount(this.K0.getPay_tag_info() != null ? this.K0.getPay_tag_info().getPay_game_amount() : 0);
                        this.f37118r1.setKeyword(Where.detail.name());
                        if (UtilsMy.o0(this.K0.getPay_tag_info(), this.K0.getCrc_sign_id()) > 0) {
                            ExtBean extBean2 = this.f37082c;
                            if (extBean2 != null && "checkgame".equals(extBean2.getFrom())) {
                                UtilsMy.n3(this.f37141z0, this.f37080b, this.f37082c.getFrom_id());
                            } else {
                                if (!UtilsMy.T0(this.f37141z0, this.f37118r1)) {
                                    if (this.K0.getDown_status() == 5) {
                                        UtilsMy.R0(this.f37141z0, this.f37118r1);
                                    } else {
                                        UtilsMy.m3(this.f37141z0, this.f37080b);
                                    }
                                }
                                onDetailDownload();
                            }
                        } else {
                            UtilsMy.g1(this.f37118r1, this.K0);
                            if (!UtilsMy.T0(this.f37141z0, this.f37118r1)) {
                                if (this.K0.getDown_status() == 5) {
                                    UtilsMy.R0(this.f37141z0, this.f37118r1);
                                } else {
                                    UtilsMy.F0(this.f37141z0, this.f37118r1, this.K0.getTp_down_url(), this.K0.getOther_down_switch(), this.K0.getCdn_down_switch());
                                }
                            }
                            onDetailDownload();
                        }
                    } else if (downloadType == 2) {
                        UtilsMy.z3(this.f37118r1);
                    }
                } else if (11 == status) {
                    UtilsMy.j3(downloadTask4, this.f37141z0);
                } else if (43 == status) {
                    downloadTask4.setKeyword(Where.detail.name());
                    if (this.K0 != null) {
                        addFrom(this.f37118r1);
                        if (this.K0.getGame_detailed() != null && com.join.mgps.Util.d2.i(this.K0.getGame_detailed().getTpl_two_qq())) {
                            com.join.mgps.Util.a0.c0(this.f37141z0).Y(this.f37141z0, this.K0.getGame_detailed().getTpl_two_qq_key(), this.K0.getGame_detailed().getAd_pic_qq(), this.K0.getGame_detailed().getTpl_two_qq());
                        }
                        if (UtilsMy.o0(this.K0.getPay_tag_info(), this.K0.getCrc_sign_id()) > 0) {
                            ExtBean extBean3 = this.f37082c;
                            if (extBean3 != null && "checkgame".equals(extBean3.getFrom())) {
                                UtilsMy.n3(this.f37141z0, this.f37080b, this.f37082c.getFrom_id());
                            } else {
                                if (!UtilsMy.T0(this.f37141z0, this.f37118r1)) {
                                    if (this.K0.getDown_status() == 5) {
                                        UtilsMy.R0(this.f37141z0, this.f37118r1);
                                    } else {
                                        UtilsMy.m3(this.f37141z0, this.f37080b);
                                    }
                                }
                                onDetailDownload();
                            }
                        } else {
                            UtilsMy.g1(this.f37118r1, this.K0);
                            if (!UtilsMy.T0(this.f37141z0, this.f37118r1)) {
                                if (this.K0.getDown_status() == 5) {
                                    UtilsMy.R0(this.f37141z0, this.f37118r1);
                                } else {
                                    UtilsMy.F0(this.f37141z0, this.f37118r1, this.K0.getTp_down_url(), this.K0.getOther_down_switch(), this.K0.getCdn_down_switch());
                                }
                            }
                        }
                    }
                } else if (48 != status) {
                    downloadTask4.setKeyword(Where.detail.name());
                    if (this.K0 != null) {
                        addFrom(this.f37118r1);
                        if (this.K0.getGame_detailed() != null && com.join.mgps.Util.d2.i(this.K0.getGame_detailed().getTpl_two_qq())) {
                            com.join.mgps.Util.a0.c0(this.f37141z0).Y(this.f37141z0, this.K0.getGame_detailed().getTpl_two_qq_key(), this.K0.getGame_detailed().getAd_pic_qq(), this.K0.getGame_detailed().getTpl_two_qq());
                        }
                        if (UtilsMy.o0(this.K0.getPay_tag_info(), this.K0.getCrc_sign_id()) > 0) {
                            ExtBean extBean4 = this.f37082c;
                            if (extBean4 != null && "checkgame".equals(extBean4.getFrom())) {
                                UtilsMy.n3(this.f37141z0, this.f37080b, this.f37082c.getFrom_id());
                            } else {
                                if (!UtilsMy.T0(this.f37141z0, this.f37118r1)) {
                                    if (this.K0.getDown_status() == 5) {
                                        UtilsMy.R0(this.f37141z0, this.f37118r1);
                                    } else {
                                        UtilsMy.m3(this.f37141z0, this.f37080b);
                                    }
                                }
                                onDetailDownload();
                            }
                        } else {
                            UtilsMy.g1(this.f37118r1, this.K0);
                            if (!UtilsMy.T0(this.f37141z0, this.f37118r1)) {
                                if (this.K0.getDown_status() == 5) {
                                    UtilsMy.R0(this.f37141z0, this.f37118r1);
                                } else {
                                    UtilsMy.F0(this.f37141z0, this.f37118r1, this.K0.getTp_down_url(), this.K0.getOther_down_switch(), this.K0.getCdn_down_switch());
                                }
                            }
                        }
                    }
                }
            }
            updateButn();
            return;
        }
        DownloadTask downloadTask6 = this.f37118r1;
        if (downloadTask6 != null) {
            String ext = downloadTask6.getExt();
            if (com.join.mgps.Util.d2.i(ext) && (extBean = (ExtBean) JsonMapper.getInstance().fromJson(ext, ExtBean.class)) != null) {
                String recPosition = extBean.getRecPosition();
                if (com.join.mgps.Util.d2.i(recPosition) && com.join.mgps.Util.d2.i(extBean.getVolcanoOther())) {
                    x0(recPosition, this.f37080b, (StatFactory.VolcanoOther) JsonMapper.getInstance().fromJson(extBean.getVolcanoOther(), StatFactory.VolcanoOther.class), UtilsMy.F1(this.f37118r1.getTipBeans()));
                }
            }
        }
        String recPosition2 = this.J0.getRecPosition();
        this.J0.setRecPosition(recPosition2 + "-999-");
        this.J0.setReMarks(this.f37082c.getReMarks());
        UtilsMy.M0(this.f37141z0, this.K0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void iv_back() {
        if (this.f37114q0.getState() != BottomSheetLayout.State.HIDDEN) {
            this.f37114q0.r();
            return;
        }
        this.f37141z0.clickBack();
        j0();
    }

    void j0() {
        ExtBean extBean = this.f37082c;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || !this.f37082c.getFrom().equals("updateFromMarket")) {
            return;
        }
        IntentUtil.getInstance().goMGMainActivity2Front(this.f37141z0);
    }

    boolean k0() {
        GamedetialModleFourBean gamedetialModleFourBean = this.J0;
        return (gamedetialModleFourBean == null || gamedetialModleFourBean.getGame_screen_shot() == null || this.J0.getGame_screen_shot().size() <= 0) ? false : true;
    }

    boolean l0() {
        return com.join.mgps.Util.d2.i(this.J0.getGame_info_top_video_url()) || com.join.mgps.Util.d2.i(this.J0.getGame_info_top_pic());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void m0() {
        PopupWindow popupWindow = this.L0;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    void n0() {
        this.f37102m.setAdapter(this.F1);
        this.f37098k.setViewPager(this.f37102m);
        if (MViewpagerV4.class.isInstance(this.f37102m)) {
            ((MViewpagerV4) this.f37102m).setIntercept(false);
        }
        this.f37098k.setOnPageChangeListener(new i());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void o0() {
        View inflate = LayoutInflater.from(this.f37141z0).inflate(R.layout.popo_item, (ViewGroup) null);
        y0(0.4f);
        PopupWindow popupWindow = new PopupWindow(inflate, -1, -1, true);
        this.L0 = popupWindow;
        popupWindow.setTouchable(true);
        this.L0.setOutsideTouchable(true);
        this.L0.setFocusable(true);
        this.L0.setBackgroundDrawable(new ColorDrawable());
        this.L0.setSoftInputMode(16);
        this.L0.setOnDismissListener(new p());
        XListView2 xListView2 = (XListView2) inflate.findViewById(R.id.listview);
        this.T0 = xListView2;
        xListView2.setPullRefreshEnable(new q());
        this.T0.setPullLoadEnable(new r());
        this.R0 = (TextView) inflate.findViewById(R.id.tv_show_tips);
        this.O0 = (LinearLayout) inflate.findViewById(R.id.ll_our);
        this.M0 = (LinearLayout) inflate.findViewById(R.id.ll_show_finish);
        this.N0 = (LinearLayout) inflate.findViewById(R.id.ll_dismiss);
        this.P0 = (EditText) inflate.findViewById(R.id.game_ed);
        this.Q0 = (TextView) inflate.findViewById(R.id.tv_finish);
        this.S0 = (LinearLayout) inflate.findViewById(R.id.ll_build);
        this.N0.setOnClickListener(new s());
        this.S0.setOnClickListener(new t());
        this.Q0.setOnClickListener(new u());
        z zVar = new z();
        this.U0 = zVar;
        this.T0.setAdapter((ListAdapter) zVar);
        this.L0.showAtLocation(LayoutInflater.from(this.f37141z0).inflate(R.layout.gamedetial_modle_three_activity, (ViewGroup) null), 81, 0, 0);
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public boolean onBackPressedMy() {
        if (com.join.android.app.component.video.a.c0(this.f37141z0, this.E0)) {
            return true;
        }
        BottomSheetLayout bottomSheetLayout = this.f37114q0;
        if (bottomSheetLayout == null || bottomSheetLayout.getState() == BottomSheetLayout.State.HIDDEN) {
            return false;
        }
        this.f37114q0.r();
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (!this.F0) {
            StandardVideoView standardVideoView = this.f37090g;
            if (standardVideoView != null) {
                standardVideoView.release();
            }
            com.join.android.app.component.video.a.n0(this.E0);
        }
        com.join.mgps.Util.c0.a().e(this);
    }

    void onDetailDownload() {
        ExtBean extBean = this.f37082c;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || !this.f37082c.getFrom().equals("downloadCenter")) {
            return;
        }
        MobclickAgent.onEvent(this.f37141z0, "detailDownload4.2.0.6");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    void onDownloadSpeed(com.join.mgps.event.k kVar) {
        if (kVar == null || TextUtils.isEmpty(kVar.a())) {
            return;
        }
        ProgressBar progressBar = this.f37134x;
        if (progressBar instanceof DownloadProgressBar) {
            ((DownloadProgressBar) progressBar).update(kVar.a(), 1);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x009a, code lost:
        if (r6 != 48) goto L57;
     */
    @org.greenrobot.eventbus.Subscribe(threadMode = org.greenrobot.eventbus.ThreadMode.MAIN)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onEventMainThread(com.join.mgps.event.l r6) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.g0.onEventMainThread(com.join.mgps.event.l):void");
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        StandardVideoView standardVideoView;
        StandardVideoView standardVideoView2;
        super.onPause();
        this.D1 = true;
        try {
            boolean z3 = this.F0;
            if (!z3 && (standardVideoView2 = this.f37090g) != null) {
                standardVideoView2.onVideoPause();
            } else if (z3 && (standardVideoView = this.f37090g) != null && !this.f37085d1) {
                standardVideoView.onVideoPause();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        GamedetialModleFourBean gamedetialModleFourBean;
        List<DownloadTask> D;
        boolean z3;
        StandardVideoView standardVideoView;
        super.onResume();
        this.D1 = false;
        this.A1 = AccountUtil_.getInstance_(this.f37141z0).getAccountData();
        if (I1) {
            this.Z0 = 1;
            I1 = false;
            g0();
        }
        if (this.f37110p.getVisibility() == 4 && (standardVideoView = this.f37090g) != null) {
            standardVideoView.onVideoResume(false);
        }
        Z();
        GamedetialModleFourBean gamedetialModleFourBean2 = this.K0;
        if (gamedetialModleFourBean2 != null) {
            if (gamedetialModleFourBean2.getMod_info() != null) {
                D = g1.f.G().C(this.K0.getMod_info().getMod_game_id(), this.K0.getMod_info().getMain_game_id());
            } else {
                D = g1.f.G().D(this.K0.getPackageName());
            }
            if (D != null && D.size() > 0) {
                boolean z4 = false;
                loop0: while (true) {
                    z3 = false;
                    for (DownloadTask downloadTask : D) {
                        if (Dtype.MOD.name().equals(downloadTask.getFileType())) {
                            z4 = com.join.mgps.va.overmind.e.p().D(downloadTask.getPackageName()) && downloadTask.getStatus() == 5;
                        } else if (com.join.android.app.common.utils.a.g0(getContext()).c(getContext(), downloadTask.getPackageName()) && downloadTask.getStatus() == 5) {
                            z3 = true;
                        }
                    }
                    break loop0;
                }
                if (z4 && z3) {
                    r1 = g1.f.G().B(this.f37080b);
                } else if (z4) {
                    if (this.K0.getMod_info() != null) {
                        r1 = g1.f.G().B(this.K0.getMod_info().getMod_game_id());
                    }
                } else if (z3) {
                    r1 = g1.f.G().B(this.f37080b);
                } else {
                    r1 = this.K0.getMod_info() != null ? g1.f.G().B(this.K0.getMod_info().getMod_game_id()) : null;
                    if (r1 == null) {
                        r1 = g1.f.G().B(this.f37080b);
                    }
                }
            }
        }
        if (r1 == null && (gamedetialModleFourBean = this.K0) != null) {
            this.f37118r1 = gamedetialModleFourBean.getDownloadtaskDown();
        }
        if (r1 == null || this.f37118r1 == null) {
            return;
        }
        try {
            this.f37118r1 = r1;
            if (r1.getFileType().equals(Dtype.android.name()) && this.f37118r1.getStatus() == 5) {
                if (this.K0.getMod_info() == null) {
                    com.join.android.app.common.utils.a g02 = com.join.android.app.common.utils.a.g0(this.f37141z0);
                    GamedetailVideoMainActivity gamedetailVideoMainActivity = this.f37141z0;
                    String packageName = this.f37118r1.getPackageName();
                    APKUtils.DEVICE_TYPE device_type = APKUtils.DEVICE_TYPE.ALL;
                    if (Boolean.valueOf(g02.d(gamedetailVideoMainActivity, packageName, device_type)).booleanValue()) {
                        APKUtils.a l4 = com.join.android.app.common.utils.a.g0(this.f37141z0).l(this.f37141z0, this.f37118r1.getPackageName(), device_type);
                        if (com.join.mgps.Util.d2.i(this.f37118r1.getVer()) && l4.d() < Integer.parseInt(this.f37118r1.getVer())) {
                            this.f37118r1.setStatus(9);
                        } else {
                            this.f37118r1.setStatus(5);
                        }
                    } else {
                        this.f37118r1.setStatus(0);
                    }
                }
            } else {
                this.f37118r1.setStatus(r1.getStatus());
            }
            updateButn();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void pauseVideo() {
        this.D1 = true;
        StandardVideoView standardVideoView = this.f37090g;
        if (standardVideoView != null) {
            standardVideoView.onVideoPause();
        }
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void playVideo() {
        StandardVideoView standardVideoView = this.f37090g;
        if (standardVideoView != null) {
            this.f37141z0.autoPlayVideo(standardVideoView);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void progress_layout() {
        DownloadTask downloadTask = this.f37118r1;
        if (downloadTask == null) {
            return;
        }
        if (downloadTask.getStatus() == 2) {
            updateButn();
            com.php25.PDownload.d.h(this.f37118r1);
        } else if (this.f37118r1.getStatus() == 3 || this.f37118r1.getStatus() == 6) {
            updateButn();
            com.php25.PDownload.d.c(this.f37118r1, this.f37141z0);
            onDetailDownload();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void q0() {
        this.f37141z0.clickBack();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        showLoding();
        f0();
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void resumVideo() {
        this.D1 = false;
        StandardVideoView standardVideoView = this.f37090g;
        if (standardVideoView != null) {
            if (standardVideoView.d()) {
                this.f37090g.startPlayLogic();
            } else if (this.f37110p.getVisibility() == 4) {
                this.f37090g.onVideoResume(false);
            }
        }
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    @UiThread
    public void setCommentNumber(String str) {
        try {
            TextView j4 = this.f37094i.j(1);
            j4.setWidth(getResources().getDimensionPixelOffset(R.dimen.wdp220));
            j4.setText("点评(" + str + ")");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f37141z0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showInstallButn() {
        GamedetialModleFourBean gamedetialModleFourBean = this.K0;
        if (gamedetialModleFourBean == null || TextUtils.isEmpty(gamedetialModleFourBean.getCrc_sign_id())) {
            return;
        }
        try {
            this.f37122t.setVisibility(8);
            this.f37125u.setVisibility(0);
            this.f37119s.setVisibility(0);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            this.G.setVisibility(0);
            this.H.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0035 -> B:18:0x003d). Please submit an issue!!! */
    @UiThread
    public void showLodingFailed() {
        try {
            this.G.setVisibility(8);
            try {
                GamedetialModleFourBean gamedetialModleFourBean = this.K0;
                if (gamedetialModleFourBean == null || com.join.mgps.Util.d2.h(gamedetialModleFourBean.getCrc_sign_id())) {
                    this.H.setVisibility(0);
                    this.I.setVisibility(0);
                    if (com.join.android.app.common.utils.f.j(this.f37141z0)) {
                        this.J.setVisibility(8);
                    } else {
                        this.J.setVisibility(0);
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showProgress() {
        try {
            this.f37125u.setVisibility(8);
            this.f37119s.setVisibility(8);
            this.f37122t.setVisibility(0);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        Toast.makeText(this.f37141z0, str, 0).show();
    }

    View u0(String str, int i2, ViewGroup viewGroup) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        View inflate = LayoutInflater.from(this.f37141z0).inflate(R.layout.layout_tag_game_detail_profile, viewGroup, false);
        ((TextView) inflate.findViewById(R.id.name)).setText(str);
        ((ImageView) inflate.findViewById(R.id.icon)).setBackgroundResource(i2);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateButn() {
        GamedetialModleFourBean gamedetialModleFourBean = this.K0;
        if (gamedetialModleFourBean == null || this.f37118r1 == null) {
            return;
        }
        if (gamedetialModleFourBean.getDel_tag() == 1 && !this.K0.getCompany_name().equals("SNK")) {
            this.f37119s.setEnabled(false);
            this.f37119s.setBackgroundResource(R.drawable.detial_simple_grey_selecter);
            this.f37119s.setText("已下架");
            showInstallButn();
        } else if (this.f37125u == null) {
        } else {
            UtilsMy.v2(this.K0.getSp_tag_info(), this.f37125u, this.f37118r1);
            if (this.K0.getPlugin_num() != null) {
                String plugin_num = this.K0.getPlugin_num();
                if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                    this.f37119s.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
                    this.f37119s.setText("开始");
                    showInstallButn();
                    return;
                }
            }
            this.f37119s.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
            DownloadTask downloadTask = this.f37118r1;
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            if (UtilsMy.m0(this.K0.getPay_tag_info(), this.K0.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status == 9) {
                showInstallButn();
                this.f37119s.setText("更新");
                this.f37128v.setImageResource(R.drawable.detail_comment_download_continue);
                this.f37128v.setImageResource(R.drawable.detial_simple_install_selecter);
            } else if (status == 12) {
                showInstallButn();
                this.f37119s.setText("解压中..");
            } else if (status == 13) {
                showInstallButn();
                this.f37119s.setText("解压");
                this.f37128v.setImageResource(R.drawable.detail_comment_download_continue);
            } else if (status == 11) {
                showInstallButn();
                this.f37119s.setText("安装");
                this.f37119s.setBackgroundResource(R.drawable.detial_simple_install_selecter);
                this.f37128v.setImageResource(R.drawable.detial_simple_install_selecter);
            } else if (status == 5 || status == 42) {
                showInstallButn();
                N0(true);
                this.f37119s.setBackgroundResource(R.drawable.detial_simple_open_selecter);
                this.f37119s.setText(this.f37141z0.getResources().getString(R.string.download_status_finished));
                this.f37128v.setImageResource(R.drawable.detail_comment_download_continue);
            } else if (status == 2) {
                showProgress();
                this.f37128v.setImageResource(R.drawable.detail_comment_download_pause);
                UtilsMy.C3(this.f37118r1);
                this.f37134x.setProgress((int) this.f37118r1.getProgress());
                TextView textView = this.f37131w;
                textView.setText(this.f37118r1.getProgress() + "%");
            } else if (status == 3 || status == 6 || status == 27) {
                showProgress();
                this.f37128v.setImageResource(R.drawable.detail_comment_download_continue);
                UtilsMy.C3(this.f37118r1);
                this.f37134x.setProgress((int) this.f37118r1.getProgress());
                TextView textView2 = this.f37131w;
                textView2.setText(this.f37118r1.getProgress() + "%");
            } else if (status == 10) {
                showInstallButn();
                TextView textView3 = this.f37119s;
                textView3.setText("等待\u3000" + this.K0.getSize() + "M");
                this.f37128v.setImageResource(R.drawable.detail_comment_download_continue);
            } else if (status == 1) {
            } else {
                if (status == 43) {
                    showInstallButn();
                    if (UtilsMy.m0(this.K0.getPay_tag_info(), this.K0.getCrc_sign_id()) > 0) {
                        this.f37119s.setText(this.f37141z0.getResources().getString(R.string.pay_game_amount, this.K0.getPay_tag_info().getPayGameAmount()));
                    } else {
                        this.f37119s.setText(this.f37141z0.getResources().getString(R.string.download_status_download));
                    }
                    this.f37128v.setImageResource(R.drawable.detail_comment_download_continue);
                    GamedetialModleFourBean gamedetialModleFourBean2 = this.K0;
                    if (gamedetialModleFourBean2 != null) {
                        if (gamedetialModleFourBean2.getBespeak_switch() == 1 && this.K0.getDown_status() == 2) {
                            if (this.K0.getGame_book() == 1) {
                                this.f37119s.setText("已预约");
                                UtilsMy.m0(this.K0.getPay_tag_info(), this.K0.getCrc_sign_id());
                                UtilsMy.z2(this.f37119s, this.K0);
                                return;
                            }
                            this.f37119s.setText("预约");
                            return;
                        }
                        UtilsMy.m0(this.K0.getPay_tag_info(), this.K0.getCrc_sign_id());
                        UtilsMy.z2(this.f37119s, this.K0);
                    }
                } else if (status == 48) {
                    showInstallButn();
                    this.f37119s.setText(this.f37141z0.getResources().getString(R.string.download_status_installing));
                } else {
                    showInstallButn();
                    if (UtilsMy.m0(this.K0.getPay_tag_info(), this.K0.getCrc_sign_id()) > 0) {
                        this.f37119s.setText(this.f37141z0.getResources().getString(R.string.pay_game_amount, this.K0.getPay_tag_info().getPayGameAmount()));
                    } else {
                        this.f37119s.setText(this.f37141z0.getResources().getString(R.string.download_status_download));
                    }
                    this.f37128v.setImageResource(R.drawable.detail_comment_download_continue);
                    GamedetialModleFourBean gamedetialModleFourBean3 = this.K0;
                    if (gamedetialModleFourBean3 != null) {
                        if (gamedetialModleFourBean3.getBespeak_switch() == 1 && (this.K0.getDown_status() == 2 || this.K0.getDown_status() == 6)) {
                            if (this.K0.getGame_book() == 1) {
                                this.f37119s.setText("已预约");
                                UtilsMy.m0(this.K0.getPay_tag_info(), this.K0.getCrc_sign_id());
                                UtilsMy.z2(this.f37119s, this.K0);
                                return;
                            }
                            this.f37119s.setText("预约");
                            return;
                        }
                        UtilsMy.m0(this.K0.getPay_tag_info(), this.K0.getCrc_sign_id());
                        UtilsMy.z2(this.f37119s, this.K0);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        try {
            int O = g1.f.G().O();
            this.B.setDownloadGameNum(O);
            if (O > 0) {
                this.B.d();
            } else {
                this.B.g();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void updateProgress(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        ProgressBar progressBar = this.f37134x;
        if (progressBar instanceof DownloadProgressBar) {
            ((DownloadProgressBar) progressBar).update(downloadTask.getCrc_link_type_val(), 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateTitleButn(ResultMainBean resultMainBean, int i2) {
        if (resultMainBean.getFlag() == 1) {
            if (i2 == 1) {
                this.K0.setGame_follow(0);
            } else if (i2 == 2) {
                this.K0.setGame_follow(1);
                com.join.mgps.Util.i2.a(this.f37141z0).b("收藏成功");
                this.C.setImageResource(R.drawable.followed_image);
                this.D.setText("已收藏");
            } else if (i2 == 3) {
                this.K0.setGame_book(0);
            } else if (i2 == 4) {
                this.K0.setGame_book(1);
                Intent intent = new Intent("com.broadcast.bespeak.sussess");
                intent.putExtra("gameid", this.K0.getCrc_sign_id());
                this.f37141z0.sendBroadcast(intent);
                com.join.mgps.Util.a0.c0(this.f37141z0).O(this.f37141z0, 1, new h()).show();
            }
            w0();
            updateButn();
        }
    }

    public void v0(GamedetialModleFourBean gamedetialModleFourBean) {
        try {
            this.E1.clear();
            if (l0()) {
                View inflate = LayoutInflater.from(this.f37141z0).inflate(R.layout.gamedetail_item_video_bt, (ViewGroup) this.f37102m, false);
                this.f37086e = (RelativeLayout) inflate.findViewById(R.id.videolayout);
                this.f37088f = inflate.findViewById(R.id.nullView);
                this.f37090g = (StandardVideoView) inflate.findViewById(R.id.videoPlayer);
                this.f37092h = (SimpleDraweeView) inflate.findViewById(R.id.iv_book_bg);
                this.f37117r0 = inflate.findViewById(R.id.v_mask);
                this.f37129v0.post(new j((RelativeLayout.LayoutParams) this.f37090g.getLayoutParams(), (RelativeLayout.LayoutParams) this.f37092h.getLayoutParams()));
                this.f37135x0.post(new l());
                p0();
                this.E1.add(inflate);
            } else {
                this.A0.n(R.color.black_alpha);
                this.f37111p0.setVisibility(0);
            }
            if (!l0()) {
                this.f37102m.setVisibility(4);
                if (this.f37088f == null) {
                    this.f37088f = new View(this.f37141z0);
                }
                this.f37102m.getLayoutParams().height = getResources().getDimensionPixelOffset(R.dimen.wdp100);
                this.f37088f.setVisibility(0);
            }
            this.f37100l.setVisibility(8);
            this.f37098k.setVisibility(8);
            this.f37100l.setVisibility(8);
            this.f37098k.postInvalidate();
            this.F1.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void y0(float f4) {
        WindowManager.LayoutParams attributes = this.f37141z0.getWindow().getAttributes();
        attributes.alpha = f4;
        if (f4 == 1.0f) {
            this.f37141z0.getWindow().clearFlags(2);
        } else {
            this.f37141z0.getWindow().addFlags(2);
        }
        this.f37141z0.getWindow().setAttributes(attributes);
    }

    @Override // l1.f
    public void z() {
        int i2;
        int i4;
        View inflate = LayoutInflater.from(this.f37141z0).inflate(R.layout.layout_game_detail_sheet_profile, (ViewGroup) this.f37114q0, false);
        View findViewById = inflate.findViewById(R.id.scrollView);
        View findViewById2 = inflate.findViewById(R.id.close);
        FlowLayout flowLayout = (FlowLayout) inflate.findViewById(R.id.flowLayout);
        View findViewById3 = inflate.findViewById(R.id.uploadGame);
        TextView textView = (TextView) inflate.findViewById(R.id.vendor);
        TextView textView2 = (TextView) inflate.findViewById(R.id.downloadCount);
        TextView textView3 = (TextView) inflate.findViewById(R.id.versionName);
        TextView textView4 = (TextView) inflate.findViewById(R.id.appSize);
        TextView textView5 = (TextView) inflate.findViewById(R.id.date);
        TextView textView6 = (TextView) inflate.findViewById(R.id.updateMessageTitle);
        TextView textView7 = (TextView) inflate.findViewById(R.id.updateMessage);
        TextView textView8 = (TextView) inflate.findViewById(R.id.gameFrom);
        Group group = (Group) inflate.findViewById(R.id.vendorGroup);
        Group group2 = (Group) inflate.findViewById(R.id.sourceGroup);
        findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.e0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g0.this.t0(view);
            }
        });
        ((TextView) inflate.findViewById(R.id.desc)).setText(this.J0.getGame_describe_second());
        if (this.J0.getGame_upgrade_info_switch() == 1) {
            String game_upgrade_info = this.J0.getGame_upgrade_info();
            i2 = 0;
            textView6.setVisibility(0);
            textView7.setVisibility(0);
            textView7.setText(game_upgrade_info);
        } else {
            i2 = 0;
        }
        flowLayout.removeAllViews();
        flowLayout.setVisibility(i2);
        int i5 = Build.VERSION.SDK_INT;
        if (this.J0.getMax_an_compatible_ver() != 0 && i5 >= this.J0.getMin_an_compatible_ver()) {
            this.J0.getMax_an_compatible_ver();
        }
        if (this.J0.getGame_prompt() != null && this.J0.getGame_prompt().size() != 0) {
            flowLayout.setVisibility(0);
            flowLayout.setHorizontalDivider(flowLayout.getResources().getDimensionPixelOffset(R.dimen.wdp20));
            flowLayout.setVerticalDivider(flowLayout.getResources().getDimensionPixelOffset(R.dimen.wdp14));
            for (int i6 = 0; i6 < this.J0.getGame_prompt().size(); i6++) {
                GamePromptBean gamePromptBean = this.J0.getGame_prompt().get(i6);
                if (gamePromptBean != null && gamePromptBean.getId() == 1) {
                    flowLayout.addView(u0(gamePromptBean.getText(), R.drawable.ic_ok, flowLayout));
                }
            }
        }
        GamedetialMoreBean game_detailed = this.J0.getGame_detailed();
        textView3.setText(game_detailed.getCurrent_ver());
        textView5.setText(game_detailed.getUpgrade_time());
        textView4.setText(game_detailed.getSize() + "M");
        textView2.setText(com.join.mgps.Util.d2.b(game_detailed.getDownloads_count()) + "热度");
        if (com.join.mgps.Util.d2.i(game_detailed.getSource())) {
            textView8.setText(game_detailed.getSource());
            i4 = 0;
            group2.setVisibility(0);
        } else {
            i4 = 0;
            group2.setVisibility(8);
        }
        if (!"46".equals(this.J0.getPlugin_num())) {
            findViewById3.setVisibility(i4);
            findViewById3.setOnClickListener(new m());
        } else {
            findViewById3.setVisibility(4);
        }
        ((LinearLayout.LayoutParams) findViewById.getLayoutParams()).height = this.f37114q0.getMeasuredHeight();
        D0(inflate);
        findViewById.scrollTo(0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void z0(a0 a0Var) {
        a0Var.f37145b.setBackgroundResource(R.drawable.follow_none_image);
    }
}
