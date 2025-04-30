package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.Toolbar;
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
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.GameDetailEmusCloudListFragment;
import com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment;
import com.join.kotlin.ui.cloudarchive.IOnRunListener;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.k1;
import com.join.mgps.activity.gamedetail.BaseGameDetailFragment;
import com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity;
import com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity_;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.activity.screenshot.ScreenshotGamedetialBean;
import com.join.mgps.activity.screenshot.ScreenshotTrueListAcvity_;
import com.join.mgps.adapter.x;
import com.join.mgps.customview.CoordinatorLayout;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.DownloadProgressBar;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CommentAlllistIntentData;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DetialShowImageBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameDetailRankingTag;
import com.join.mgps.dto.GameFromBooleanBean;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.dto.GamePromptBean;
import com.join.mgps.dto.GameScore;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.GamedetialMoreBean;
import com.join.mgps.dto.ImageInfo;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestdetialFolowAndBeSpeak;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Where;
import com.papa91.arc.widget.htmltext.HtmlTextView;
import com.psk.eventmodule.Event;
import com.psk.eventmodule.StatFactory;
import com.uc.crashsdk.export.LogType;
import com.umeng.analytics.MobclickAgent;
import it.sephiroth.android.library.widget.AdapterView;
import it.sephiroth.android.library.widget.HListView;
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
/* compiled from: GamedetialModleFiveFragemnt.java */
@EFragment(R.layout.gamedetial_modle_five_fragment)
/* loaded from: classes.dex */
public class l0 extends BaseGameDetailFragment implements l1.f {
    static String I1 = "0";
    static String J1 = "";
    static boolean K1 = false;
    private static final String L1 = "view";
    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView A;
    AccountBean A1;
    @ViewById
    ImageView B;
    @ViewById
    TextView C;
    @ViewById
    TextView D;
    @ViewById
    Toolbar E;
    boolean E0;
    @ViewById
    CoordinatorLayout F;
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
    d0 U0;
    com.join.mgps.rpc.b V0;
    com.join.mgps.rpc.b W0;
    GameFromPopoWinBean X0;
    PtrClassicFrameLayout Y0;

    /* renamed from: b  reason: collision with root package name */
    String f37439b;

    /* renamed from: c  reason: collision with root package name */
    ExtBean f37441c;

    /* renamed from: d  reason: collision with root package name */
    boolean f37443d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    RelativeLayout f37445e;
    @ViewById

    /* renamed from: e1  reason: collision with root package name */
    public SimpleDraweeView f37446e1;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    View f37447f;
    @ViewById

    /* renamed from: f1  reason: collision with root package name */
    public TextView f37448f1;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    StandardVideoView f37449g;
    @ViewById

    /* renamed from: g1  reason: collision with root package name */
    public TextView f37450g1;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    SimpleDraweeView f37451h;
    @ViewById

    /* renamed from: h1  reason: collision with root package name */
    public TextView f37452h1;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    SlidingTabLayout f37453i;
    @ViewById

    /* renamed from: i1  reason: collision with root package name */
    public TextView f37454i1;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ViewPager f37455j;
    @ViewById

    /* renamed from: j1  reason: collision with root package name */
    public MStarBar f37456j1;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    ViewPager f37457k;
    @ViewById

    /* renamed from: k1  reason: collision with root package name */
    public LinearLayout f37458k1;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    View f37459l;
    @ViewById

    /* renamed from: l1  reason: collision with root package name */
    public LinearLayout f37460l1;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    AppBarLayout f37461m;
    @ViewById

    /* renamed from: m1  reason: collision with root package name */
    public SimpleDraweeView f37462m1;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    CollapsingToolbarLayout f37463n;
    @ViewById

    /* renamed from: n0  reason: collision with root package name */
    LinearLayout f37464n0;
    @ViewById

    /* renamed from: n1  reason: collision with root package name */
    public TextView f37465n1;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    RelativeLayout f37466o;
    @ViewById

    /* renamed from: o0  reason: collision with root package name */
    View f37467o0;
    @ViewById

    /* renamed from: o1  reason: collision with root package name */
    public LinearLayout f37468o1;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    RelativeLayout f37469p;
    @ViewById

    /* renamed from: p0  reason: collision with root package name */
    View f37470p0;
    @ViewById

    /* renamed from: p1  reason: collision with root package name */
    public TextView f37471p1;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    RelativeLayout f37472q;
    @ViewById

    /* renamed from: q0  reason: collision with root package name */
    BottomSheetLayout f37473q0;
    @ViewById

    /* renamed from: q1  reason: collision with root package name */
    public TextView f37474q1;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    TextView f37475r;
    @ViewById

    /* renamed from: r0  reason: collision with root package name */
    RelativeLayout f37476r0;

    /* renamed from: r1  reason: collision with root package name */
    private DownloadTask f37477r1;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    RelativeLayout f37478s;
    @ViewById

    /* renamed from: s0  reason: collision with root package name */
    HtmlTextView f37479s0;
    @ViewById

    /* renamed from: s1  reason: collision with root package name */
    TextView f37480s1;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    RelativeLayout f37481t;
    @ViewById

    /* renamed from: t0  reason: collision with root package name */
    LinearLayout f37482t0;
    @ViewById

    /* renamed from: t1  reason: collision with root package name */
    ImageView f37483t1;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    ImageView f37484u;
    @ViewById

    /* renamed from: u0  reason: collision with root package name */
    HListView f37485u0;
    @ViewById

    /* renamed from: u1  reason: collision with root package name */
    ImageView f37486u1;
    @ViewById

    /* renamed from: v  reason: collision with root package name */
    TextView f37487v;

    /* renamed from: v0  reason: collision with root package name */
    com.join.mgps.rpc.d f37488v0;
    @ViewById

    /* renamed from: v1  reason: collision with root package name */
    ImageView f37489v1;
    @ViewById

    /* renamed from: w  reason: collision with root package name */
    ProgressBar f37490w;

    /* renamed from: w0  reason: collision with root package name */
    GamedetailVideoMainActivity f37491w0;
    @ViewById

    /* renamed from: w1  reason: collision with root package name */
    ImageView f37492w1;
    @ViewById

    /* renamed from: x  reason: collision with root package name */
    LinearLayout f37493x;

    /* renamed from: x0  reason: collision with root package name */
    private com.join.android.app.common.manager.b f37494x0;

    /* renamed from: x1  reason: collision with root package name */
    private Animation f37495x1;
    @ViewById

    /* renamed from: y  reason: collision with root package name */
    ImageView f37496y;

    /* renamed from: y0  reason: collision with root package name */
    String f37497y0;

    /* renamed from: y1  reason: collision with root package name */
    private int f37498y1;
    @ViewById

    /* renamed from: z  reason: collision with root package name */
    ImageView f37499z;

    /* renamed from: z0  reason: collision with root package name */
    String f37500z0;

    /* renamed from: z1  reason: collision with root package name */
    private int f37501z1;

    /* renamed from: a  reason: collision with root package name */
    private String f37437a = "GamedetialModleFiveFragemnt";
    int A0 = 0;
    String B0 = "";
    boolean C0 = false;
    boolean D0 = false;
    boolean F0 = false;
    int Z0 = 1;

    /* renamed from: a1  reason: collision with root package name */
    List<GameFromPopoWinBean.DataBean> f37438a1 = new ArrayList();

    /* renamed from: b1  reason: collision with root package name */
    boolean f37440b1 = true;

    /* renamed from: c1  reason: collision with root package name */
    int f37442c1 = 0;

    /* renamed from: d1  reason: collision with root package name */
    boolean f37444d1 = false;
    Map<String, DownloadTask> B1 = new HashMap();
    Map<String, DownloadTask> C1 = new HashMap();
    boolean D1 = false;
    private List<a0> E1 = new ArrayList();
    z F1 = new z();
    com.join.mgps.adapter.c1 G1 = null;
    List<ImageInfo> H1 = new ArrayList();

    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    class a implements c2.e {
        a() {
        }

        @Override // c2.e
        public void a(Bitmap bitmap) {
            com.join.android.app.component.video.e.e(bitmap);
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    public class a0 {

        /* renamed from: a  reason: collision with root package name */
        private boolean f37503a;

        /* renamed from: b  reason: collision with root package name */
        private View f37504b;

        /* renamed from: c  reason: collision with root package name */
        private int f37505c;

        public a0(boolean z3, View view, int i2) {
            this.f37503a = z3;
            this.f37504b = view;
            this.f37505c = i2;
        }

        public int d() {
            return this.f37505c;
        }

        public View e() {
            return this.f37504b;
        }

        public boolean f() {
            return this.f37503a;
        }

        public void g(int i2) {
            this.f37505c = i2;
        }

        public void h(boolean z3) {
            this.f37503a = z3;
        }

        public void i(View view) {
            this.f37504b = view;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l0.this.f37455j.setCurrentItem(1);
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    class b0 extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        ImageView f37508a;

        public b0(View view) {
            super(view);
            this.f37508a = (ImageView) view.findViewById(R.id.img);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l0.this.M0();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    class c0 extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        c0() {
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
            ImageView imageView = new ImageView(l0.this.f37491w0);
            imageView.setImageResource(R.drawable.icon);
            return new b0(imageView);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PaPaBannerListActivity_.I0(l0.this.f37491w0).e(1).a(true).c(l0.this.J0.getGame_company_id()).d(l0.this.J0.getCompany_name()).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    public class d0 extends BaseAdapter {

        /* compiled from: GamedetialModleFiveFragemnt.java */
        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f37514a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ e0 f37515b;

            a(int i2, e0 e0Var) {
                this.f37514a = i2;
                this.f37515b = e0Var;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (l0.this.f37438a1.get(this.f37514a).getCurrent_game_state().equals("0")) {
                    this.f37515b.f37519b.setBackgroundResource(R.drawable.followed_image);
                    l0.this.M0.setVisibility(0);
                    l0.this.T0.setVisibility(8);
                    l0.this.Q0.setVisibility(0);
                    l0.this.R0.setText("收藏成功");
                    l0.this.S0.setVisibility(8);
                    l0.I1 = l0.this.f37438a1.get(this.f37514a).getId();
                    l0 l0Var = l0.this;
                    l0Var.f37440b1 = false;
                    int i2 = l0Var.A0 + 1;
                    l0Var.A0 = i2;
                    if (i2 > 0) {
                        l0Var.B.setImageResource(R.drawable.followed_image);
                        l0.this.C.setText("已收藏");
                        return;
                    }
                    return;
                }
                this.f37515b.f37519b.setBackgroundResource(R.drawable.follow_none_image);
                l0.this.f37438a1.get(this.f37514a).setCurrent_game_state("0");
                l0 l0Var2 = l0.this;
                l0Var2.Q(l0Var2.f37438a1.get(this.f37514a).getId(), l0.this.f37439b, this.f37515b);
                l0 l0Var3 = l0.this;
                int i4 = l0Var3.A0 - 1;
                l0Var3.A0 = i4;
                l0Var3.A0 = i4;
                if (i4 == 0) {
                    l0Var3.B.setImageResource(R.drawable.follow_none_image);
                    l0.this.C.setText("收藏");
                }
            }
        }

        d0() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return l0.this.f37438a1.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return l0.this.f37438a1.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            e0 e0Var;
            if (view == null) {
                view = LayoutInflater.from(l0.this.f37491w0).inflate(R.layout.list_item, (ViewGroup) null);
                e0Var = new e0();
                e0Var.f37518a = (SimpleDraweeView) view.findViewById(R.id.iv_img);
                e0Var.f37519b = (ImageView) view.findViewById(R.id.iv_coll);
                e0Var.f37520c = (TextView) view.findViewById(R.id.tv_title);
                e0Var.f37521d = (TextView) view.findViewById(R.id.tv_size);
                e0Var.f37523f = (RelativeLayout) view.findViewById(R.id.ll_gameform);
                e0Var.f37524g = (RelativeLayout) view.findViewById(R.id.rl_content);
                view.setTag(e0Var);
            } else {
                e0Var = (e0) view.getTag();
            }
            if (l0.this.f37438a1.get(i2).getGame_list().get(0).getGame_ico() != null && !l0.this.f37438a1.get(i2).getGame_list().get(0).getGame_ico().equals("")) {
                e0Var.f37518a.setImageURI(l0.this.f37438a1.get(i2).getGame_list().get(0).getGame_ico());
            } else {
                e0Var.f37518a.setImageResource(R.drawable.main_normal_icon);
            }
            e0Var.f37520c.setText(l0.this.f37438a1.get(i2).getTitle());
            e0Var.f37521d.setText(l0.this.f37438a1.get(i2).getGame_count() + "款");
            if (l0.this.f37438a1.get(i2).getCurrent_game_state().equals("0")) {
                e0Var.f37519b.setBackgroundResource(R.drawable.follow_none_image);
            } else {
                e0Var.f37519b.setBackgroundResource(R.drawable.followed_image);
                l0.this.A0++;
            }
            e0Var.f37524g.setOnClickListener(new a(i2, e0Var));
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l0.this.M0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    public class e0 {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f37518a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f37519b;

        /* renamed from: c  reason: collision with root package name */
        TextView f37520c;

        /* renamed from: d  reason: collision with root package name */
        TextView f37521d;

        /* renamed from: e  reason: collision with root package name */
        TextView f37522e;

        /* renamed from: f  reason: collision with root package name */
        RelativeLayout f37523f;

        /* renamed from: g  reason: collision with root package name */
        RelativeLayout f37524g;

        e0() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goShareWebActivity(l0.this.f37491w0, l0.this.K0.getActivity_entry().getUrl() + l0.this.K0.getCrc_sign_id());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    public class g implements Animation.AnimationListener {
        g() {
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
    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    public class h implements k1.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f37528a;

        h(boolean z3) {
            this.f37528a = z3;
        }

        @Override // com.join.mgps.Util.k1.b
        public void a(k1.c cVar) {
            if (cVar.a() == 1) {
                l0.this.f37491w0.clickBack();
                com.join.mgps.Util.k1 c4 = com.join.mgps.Util.k1.c();
                l0 l0Var = l0.this;
                c4.e(l0Var.f37491w0, l0Var.f37441c.getFrom_id(), cVar.b());
                com.join.mgps.Util.i2.a(l0.this.f37491w0).b("授权成功");
            } else if (this.f37528a) {
                l0.this.Z0(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    public class i implements l1.a {
        i() {
        }

        @Override // l1.a
        public void onClickCancle() {
        }

        @Override // l1.a
        public void onClickOk() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    public class j implements ViewPager.OnPageChangeListener {
        j() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            com.join.mgps.adapter.c1 c1Var = l0.this.G1;
            if (c1Var != null && i2 < c1Var.getCount() && l0.this.G1.getItem(i2).isVideo()) {
                l0.this.I0();
            } else {
                l0.this.pauseVideo();
            }
            l0.this.f37485u0.P0(i2);
            l0.this.G1.c(i2);
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    class k implements AppBarLayout.OnOffsetChangedListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f37532a;

        k(int i2) {
            this.f37532a = i2;
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public void onOffsetChanged(AppBarLayout appBarLayout, int i2) {
            int currentState;
            View view;
            try {
                if (Math.abs(i2) < this.f37532a && ((view = l0.this.f37447f) == null || view.getVisibility() != 0)) {
                    l0.this.f37469p.setVisibility(0);
                    l0.this.f37472q.setVisibility(0);
                    l0.this.f37466o.setVisibility(8);
                    l0.this.E.getBackground().setAlpha(0);
                    l0 l0Var = l0.this;
                    StandardVideoView standardVideoView = l0Var.f37449g;
                    if (standardVideoView != null && !l0Var.D1 && standardVideoView.getCurrentState() == 5) {
                        l0.this.f37449g.onVideoResume(false);
                    }
                    if (l0.this.f37494x0 != null) {
                        l0.this.f37494x0.n(R.color.black_alpha);
                    }
                    l0.this.f37470p0.setVisibility(4);
                    return;
                }
                l0.this.f37466o.setVisibility(0);
                l0.this.f37469p.setVisibility(8);
                l0.this.f37472q.setVisibility(8);
                l0.this.E.getBackground().setAlpha(255);
                StandardVideoView standardVideoView2 = l0.this.f37449g;
                if (standardVideoView2 != null && (currentState = standardVideoView2.getCurrentState()) == 2) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("currentState=");
                    sb.append(currentState);
                    sb.append(" -->performClick");
                    l0.this.f37449g.onVideoPause();
                }
                if (l0.this.f37494x0 != null) {
                    l0.this.f37494x0.n(R.color.black_30_alpha);
                }
                l0.this.f37470p0.setVisibility(0);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    public class l implements AdapterView.d {
        l() {
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(AdapterView<?> adapterView, View view, int i2, long j4) {
            if (l0.this.G1.getItem(i2).isVideo()) {
                l0.this.I0();
            } else {
                l0.this.pauseVideo();
            }
            l0.this.f37457k.setCurrentItem(i2);
            l0.this.G1.c(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    public class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f37535a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f37536b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f37537c;

        m(int i2, int i4, int i5) {
            this.f37535a = i2;
            this.f37536b = i4;
            this.f37537c = i5;
        }

        @Override // java.lang.Runnable
        public void run() {
            l0 l0Var = l0.this;
            int i2 = l0Var.F0 ? l0Var.G0 : 0;
            int i4 = this.f37535a + this.f37536b + this.f37537c + l0Var.I0;
            l0 l0Var2 = l0.this;
            int i5 = (i4 - l0Var2.H0) + i2;
            if (i5 > 0) {
                CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) l0Var2.f37461m.getLayoutParams()).getBehavior();
                if (behavior instanceof AppBarLayout.Behavior) {
                    ((AppBarLayout.Behavior) behavior).setTopAndBottomOffset(-i5);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    public class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.this.G.setVisibility(8);
            l0.this.H.setVisibility(8);
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountBean accountData = AccountUtil_.getInstance_(l0.this.f37491w0).getAccountData();
            if (accountData != null && accountData.getUid() != 0) {
                if (!com.join.mgps.Util.d2.h(accountData.getNickname()) && (!accountData.getAccount().equals(accountData.getNickname()) || !accountData.getAccount().startsWith("pa"))) {
                    PrefDef_ prefDef_ = new PrefDef_(l0.this.f37491w0);
                    if (com.join.mgps.Util.d2.i(prefDef_.uploadType2().d())) {
                        IntentUtil.getInstance().goShareWebActivity(l0.this.f37491w0, prefDef_.uploadType2().d());
                        return;
                    } else {
                        UploadActivity_.o1(l0.this.f37491w0).a(accountData).start();
                        return;
                    }
                }
                IntentUtil.getInstance().goChangeNickname(l0.this.f37491w0);
                return;
            }
            IntentUtil.getInstance().goLogin(l0.this.f37491w0);
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    class p extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f37541a;

        /* compiled from: GamedetialModleFiveFragemnt.java */
        /* loaded from: classes3.dex */
        class a {

            /* renamed from: a  reason: collision with root package name */
            public TextView f37543a;

            a() {
            }
        }

        p(List list) {
            this.f37541a = list;
        }

        @Override // android.widget.Adapter
        /* renamed from: a */
        public String getItem(int i2) {
            return (String) this.f37541a.get(i2);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f37541a.size();
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
                aVar2.f37543a = (TextView) inflate.findViewById(R.id.name);
                inflate.setTag(aVar2);
                aVar = aVar2;
                view = inflate;
            }
            aVar.f37543a.setText(getItem(i2));
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) aVar.f37543a.getLayoutParams();
            if (i2 == getCount() - 1) {
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = context.getResources().getDimensionPixelOffset(R.dimen.wdp20);
            } else {
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = 0;
            }
            aVar.f37543a.setLayoutParams(layoutParams);
            return view;
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    class q implements AdapterView.OnItemClickListener {
        q() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(android.widget.AdapterView<?> adapterView, View view, int i2, long j4) {
            l0.this.f37473q0.r();
            l0.this.h0(view.getContext(), "金手指");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    public class r implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameDetailRankingTag.GameTagBean f37546a;

        r(GameDetailRankingTag.GameTagBean gameTagBean) {
            this.f37546a = gameTagBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f37546a == null) {
                return;
            }
            RankingHomeActivity_.H0(l0.this.f37491w0).c(1001).b(this.f37546a.getType()).a(this.f37546a.getId()).d(this.f37546a.getSub_title()).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    public class s implements IOnRunListener {
        s() {
        }

        @Override // com.join.kotlin.ui.cloudarchive.IOnRunListener
        public void onRun() {
            l0 l0Var = l0.this;
            l0Var.h0(l0Var.getContext(), "云存档");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    public class t implements PopupWindow.OnDismissListener {
        t() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            l0 l0Var = l0.this;
            l0Var.Z0 = 1;
            l0Var.d0();
            l0 l0Var2 = l0.this;
            l0Var2.A0 = 0;
            l0Var2.K0(1.0f);
            l0.J1 = l0.this.P0.getText().toString().trim();
            l0 l0Var3 = l0.this;
            if (l0Var3.f37440b1) {
                return;
            }
            l0Var3.f37440b1 = true;
            l0Var3.P();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    public class u implements com.join.mgps.customview.j {
        u() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            l0 l0Var = l0.this;
            l0Var.Z0 = 1;
            l0Var.S();
            l0.this.l0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    public class v implements com.join.mgps.customview.i {
        v() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            l0.this.S();
            l0.this.l0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    public class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l0.this.L0.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    public class x implements View.OnClickListener {
        x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l0.K1 = true;
            l0.this.startActivity(new Intent(l0.this.f37491w0, BuildGameFromActivity_.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    public class y implements View.OnClickListener {
        y() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String trim = l0.this.P0.getText().toString().trim();
            l0.J1 = trim;
            if (com.join.mgps.Util.n.f(trim)) {
                l0.this.showToast("不能上传表情");
                return;
            }
            l0.this.L0.dismiss();
            l0 l0Var = l0.this;
            if (l0Var.f37440b1) {
                return;
            }
            l0Var.f37440b1 = true;
            l0Var.P();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt.java */
    /* loaded from: classes3.dex */
    public class z extends PagerAdapter {

        /* compiled from: GamedetialModleFiveFragemnt.java */
        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f37556a;

            a(int i2) {
                this.f37556a = i2;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i2 = 0;
                if (l0.this.v0()) {
                    if (this.f37556a == 0) {
                        return;
                    }
                    if (l0.this.u0()) {
                        ScreenshotTrueListAcvity_.intent(l0.this.f37491w0).fromData(l0.this.J0.getGame_screen_shot().get(this.f37556a - 1)).gameId(l0.this.J0.getGame_id()).start();
                        return;
                    }
                    List<DetialShowImageBean> pic_info = l0.this.J0.getPic_info();
                    ArrayList arrayList = new ArrayList();
                    if (pic_info != null) {
                        for (int i4 = 0; i4 < pic_info.size(); i4++) {
                            arrayList.add(pic_info.get(i4).getRemote().getPath());
                        }
                    }
                    try {
                        Intent intent = new Intent(l0.this.f37491w0, ImagePagerActivity.class);
                        String[] strArr = new String[arrayList.size()];
                        while (i2 < arrayList.size()) {
                            strArr[i2] = (String) arrayList.get(i2);
                            i2++;
                        }
                        intent.putExtra("image_urls", strArr);
                        intent.putExtra("image_index", this.f37556a - 1);
                        l0.this.f37491w0.startActivity(intent);
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                } else if (l0.this.u0()) {
                    ScreenshotTrueListAcvity_.intent(l0.this.f37491w0).fromData(l0.this.J0.getGame_screen_shot().get(this.f37556a)).gameId(l0.this.J0.getGame_id()).start();
                } else {
                    List<DetialShowImageBean> pic_info2 = l0.this.J0.getPic_info();
                    ArrayList arrayList2 = new ArrayList();
                    if (com.join.mgps.Util.d2.i(l0.this.J0.getGame_info_top_pic()) && com.join.mgps.Util.d2.i(l0.this.J0.getGame_info_top_video_url())) {
                        arrayList2.add(l0.this.J0.getGame_info_top_pic());
                    }
                    if (pic_info2 != null) {
                        for (int i5 = 0; i5 < pic_info2.size(); i5++) {
                            arrayList2.add(pic_info2.get(i5).getRemote().getPath());
                        }
                    }
                    try {
                        Intent intent2 = new Intent(l0.this.f37491w0, ImagePagerActivity.class);
                        String[] strArr2 = new String[arrayList2.size()];
                        while (i2 < arrayList2.size()) {
                            strArr2[i2] = (String) arrayList2.get(i2);
                            i2++;
                        }
                        intent2.putExtra("image_urls", strArr2);
                        intent2.putExtra("image_index", this.f37556a);
                        l0.this.f37491w0.startActivity(intent2);
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                }
            }
        }

        public z() {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return l0.this.E1.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public float getPageWidth(int i2) {
            if (((a0) l0.this.E1.get(i2)).f37503a) {
                return 1.0f;
            }
            l0 l0Var = l0.this;
            if (l0Var.C0 && ((a0) l0Var.E1.get(i2)).f37505c == 1) {
                return 1.0f;
            }
            if (((a0) l0.this.E1.get(i2)).f37505c == 1) {
                return 0.33f;
            }
            return super.getPageWidth(i2);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i2) {
            viewGroup.addView(((a0) l0.this.E1.get(i2)).f37504b);
            View e4 = ((a0) l0.this.E1.get(i2)).e();
            e4.setOnClickListener(new a(i2));
            return e4;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C0(View view) {
        this.f37473q0.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D0(View view) {
        this.f37473q0.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E0(View view) {
        if (com.join.mgps.Util.d2.h(this.J0.getGame_company_id()) || "0".equals(this.J0.getGame_company_id())) {
            return;
        }
        PaPaBannerListActivity_.I0(this.f37491w0).e(1).a(true).c(this.J0.getGame_company_id()).d(this.J0.getCompany_name()).start();
    }

    private void H0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I0() {
        StandardVideoView standardVideoView = this.f37449g;
        if (standardVideoView != null) {
            this.D1 = false;
            standardVideoView.onVideoResume(false);
        }
    }

    private void J0(String str, String str2, StatFactory.VolcanoOther volcanoOther, boolean z3) {
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
                    StatFactory.Companion.getInstance(this.f37491w0).sendEvent(new StatFactory.VolcanoEvent(Event.check, str2, new StatFactory.SpmData("wufun", str4, str6, str5, true), volcanoOther, z3));
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
                StatFactory.Companion.getInstance(this.f37491w0).sendEvent(new StatFactory.VolcanoEvent(Event.check, str2, new StatFactory.SpmData("wufun", str4, str6, str5, true), volcanoOther, z3));
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
            StatFactory.Companion.getInstance(this.f37491w0).sendEvent(new StatFactory.VolcanoEvent(Event.check, str2, new StatFactory.SpmData("wufun", str4, str6, str5, true), volcanoOther, z3));
        }
        str4 = "home";
        str5 = "0";
        str6 = "";
        StatFactory.Companion.getInstance(this.f37491w0).sendEvent(new StatFactory.VolcanoEvent(Event.check, str2, new StatFactory.SpmData("wufun", str4, str6, str5, true), volcanoOther, z3));
    }

    private void a1() {
        try {
            GameScore game_score = this.J0.getGame_score();
            if ("1".equals(this.J0.getComment_score_switch()) && game_score != null && com.join.mgps.Util.d2.i(game_score.getScore())) {
                if (!"0.0".equals(game_score.getScore()) && !"0".equals(game_score.getScore())) {
                    this.f37471p1.setText(game_score.getScore());
                    this.f37456j1.setIntegerMark(false);
                    this.f37456j1.setEnabled(false);
                    this.f37456j1.setStarMark(game_score.getTotal_stars());
                    this.f37468o1.setVisibility(0);
                    return;
                }
                this.f37474q1.setText("暂未出分");
                this.f37471p1.setText("0");
                this.f37456j1.setIntegerMark(false);
                this.f37456j1.setEnabled(false);
                this.f37456j1.setStarMark(game_score.getTotal_stars());
                this.f37468o1.setVisibility(0);
                return;
            }
            this.f37468o1.setVisibility(8);
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

    public static l0 m0(String str, ExtBean extBean, boolean z3) {
        m0 m0Var = new m0();
        Bundle bundle = new Bundle();
        bundle.putBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA, z3);
        bundle.putSerializable("extBean", extBean);
        bundle.putString("gameId", str);
        bundle.putBoolean("isFromVideo", false);
        m0Var.setArguments(bundle);
        return m0Var;
    }

    public static l0 n0(String str, ExtBean extBean, boolean z3, boolean z4) {
        m0 m0Var = new m0();
        Bundle bundle = new Bundle();
        bundle.putBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA, z3);
        bundle.putSerializable("extBean", extBean);
        bundle.putString("gameId", str);
        bundle.putBoolean("isFromVideo", z4);
        m0Var.setArguments(bundle);
        return m0Var;
    }

    private int o0(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", q.a.f73954a);
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private static String p0(Context context, int i2) {
        try {
            return context.getResources().getResourceEntryName(i2);
        } catch (Exception unused) {
            return "";
        }
    }

    public static int q0(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    private int r0(Activity activity) {
        WindowManager windowManager = activity.getWindow().getWindowManager();
        Point point = new Point();
        windowManager.getDefaultDisplay().getRealSize(point);
        return point.y;
    }

    private void z0() {
        try {
            if (this.f37449g != null) {
                if (!com.join.mgps.Util.d2.i(this.J0.getGame_info_top_video_url()) && !com.join.mgps.Util.d2.i(this.J0.getGame_info_top_pic())) {
                    this.f37447f.setVisibility(0);
                    this.f37451h.setVisibility(8);
                    this.f37449g.setVisibility(8);
                    return;
                }
                String game_info_top_video_url = this.J0.getGame_info_top_video_url();
                if (com.join.mgps.Util.d2.h(game_info_top_video_url)) {
                    MyImageLoader.d(this.f37451h, R.drawable.banner_normal_icon, this.J0.getGame_info_top_pic());
                    this.f37449g.setVisibility(8);
                    this.f37451h.setVisibility(0);
                    return;
                }
                MyImageLoader.h(this.f37449g.f17628a, this.J0.getGame_info_top_pic());
                this.f37449g.setMuteWhenPlay(false);
                this.f37449g.setPlayTag(this.B0);
                this.f37449g.setShowCoverWhenPause(false);
                if (this.E0) {
                    com.join.android.app.component.video.f.c(this.f37449g, game_info_top_video_url, false, "");
                    com.join.android.app.component.video.f.a(this.f37449g);
                    this.f37449g.setCover(this.J0.getGame_info_top_pic());
                } else {
                    this.f37449g.setUp(game_info_top_video_url, StandardVideoView.C, this.J0.getGame_name(), this.J0.getGame_info_top_pic());
                }
                e0(game_info_top_video_url);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public boolean A0(@NonNull Activity activity) {
        boolean z3;
        int i2;
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
        int childCount = viewGroup.getChildCount();
        int i4 = 0;
        while (true) {
            if (i4 >= childCount) {
                z3 = false;
                break;
            }
            View childAt = viewGroup.getChildAt(i4);
            int id = childAt.getId();
            if (id != -1 && "navigationBarBackground".equals(p0(activity, id)) && childAt.getVisibility() == 0) {
                z3 = true;
                break;
            }
            i4++;
        }
        if (z3) {
            if (com.join.mgps.Util.p1.x() && (i2 = Build.VERSION.SDK_INT) >= 17 && i2 < 29) {
                try {
                    return Settings.Global.getInt(activity.getContentResolver(), "navigationbar_hide_bar_enabled") == 0;
                } catch (Exception unused) {
                }
            }
            return (viewGroup.getSystemUiVisibility() & 2) == 0;
        }
        return z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void B0() {
        this.f37491w0.clickBack();
    }

    View F0(String str, int i2, ViewGroup viewGroup) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        View inflate = LayoutInflater.from(this.f37491w0).inflate(R.layout.layout_tag_game_detail_profile, viewGroup, false);
        ((TextView) inflate.findViewById(R.id.name)).setText(str);
        ((ImageView) inflate.findViewById(R.id.icon)).setBackgroundResource(i2);
        return inflate;
    }

    public void G0(GamedetialModleFourBean gamedetialModleFourBean) {
        int i2;
        try {
            this.E1.clear();
            this.H1.clear();
            int pic_position = gamedetialModleFourBean.getPic_position();
            ViewGroup.LayoutParams layoutParams = this.f37457k.getLayoutParams();
            if (this.C0 && pic_position == 1) {
                int dimension = (int) getResources().getDimension(R.dimen.wdp1216);
                layoutParams.height = dimension;
                this.f37461m.postDelayed(new m(dimension, (int) getResources().getDimension(R.dimen.wdp236), (int) getResources().getDimension(R.dimen.wdp111)), 20L);
                this.f37461m.postDelayed(new n(), 30L);
            } else {
                layoutParams.height = (int) getResources().getDimension(R.dimen.wdp400);
            }
            if (v0()) {
                View inflate = LayoutInflater.from(this.f37491w0).inflate((this.C0 && pic_position == 1) ? R.layout.gamedetail_item_mini_game_video_v : R.layout.gamedetail_item_video, (ViewGroup) this.f37457k, false);
                this.f37445e = (RelativeLayout) inflate.findViewById(R.id.videolayout);
                this.f37447f = inflate.findViewById(R.id.nullView);
                this.f37449g = (StandardVideoView) inflate.findViewById(R.id.videoPlayer);
                this.f37451h = (SimpleDraweeView) inflate.findViewById(R.id.iv_book_bg);
                ((RelativeLayout.LayoutParams) this.f37449g.getLayoutParams()).height = -1;
                ((RelativeLayout.LayoutParams) this.f37451h.getLayoutParams()).height = -1;
                z0();
                this.E1.add(new a0(true, inflate, 0));
                this.H1.add(new ImageInfo(gamedetialModleFourBean.getGame_info_top_pic(), gamedetialModleFourBean.getGame_info_top_video_url(), true));
            }
            this.f37482t0.setVisibility(0);
            if (pic_position == 1) {
                i2 = this.C0 ? R.layout.gamedetail_item_image_mini_game_v : R.layout.gamedetail_item_image_v_v1;
            } else {
                i2 = R.layout.gamedetail_item_image_v1;
            }
            if (gamedetialModleFourBean.getGame_screen_shot() != null && gamedetialModleFourBean.getGame_screen_shot().size() != 0) {
                for (int i4 = 0; i4 < gamedetialModleFourBean.getGame_screen_shot().size(); i4++) {
                    View inflate2 = LayoutInflater.from(this.f37491w0).inflate(i2, (ViewGroup) this.f37457k, false);
                    ScreenshotGamedetialBean screenshotGamedetialBean = gamedetialModleFourBean.getGame_screen_shot().get(i4);
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) inflate2.findViewById(R.id.image);
                    TextView textView = (TextView) inflate2.findViewById(R.id.count);
                    if (pic_position == 1 && !this.C0) {
                        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) simpleDraweeView.getLayoutParams();
                        ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin = (int) getResources().getDimension(R.dimen.wdp12);
                        inflate2.setLayoutParams(layoutParams2);
                    }
                    MyImageLoader.i(simpleDraweeView, screenshotGamedetialBean.getPic(), r.c.f12138a);
                    textView.setText(screenshotGamedetialBean.getCount() + "图");
                    this.E1.add(new a0(false, inflate2, pic_position));
                    this.H1.add(new ImageInfo(screenshotGamedetialBean.getPic()));
                }
            } else {
                for (int i5 = 0; i5 < gamedetialModleFourBean.getPic_info().size(); i5++) {
                    View inflate3 = LayoutInflater.from(this.f37491w0).inflate(i2, (ViewGroup) this.f37457k, false);
                    DetialShowImageBean detialShowImageBean = gamedetialModleFourBean.getPic_info().get(i5);
                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) inflate3.findViewById(R.id.image);
                    TextView textView2 = (TextView) inflate3.findViewById(R.id.count);
                    if (pic_position == 1 && !this.C0) {
                        ConstraintLayout.LayoutParams layoutParams3 = (ConstraintLayout.LayoutParams) simpleDraweeView2.getLayoutParams();
                        ((ViewGroup.MarginLayoutParams) layoutParams3).rightMargin = (int) getResources().getDimension(R.dimen.wdp12);
                        inflate3.setLayoutParams(layoutParams3);
                    }
                    MyImageLoader.i(simpleDraweeView2, detialShowImageBean.getRemote().getPath(), r.c.f12138a);
                    textView2.setVisibility(8);
                    this.E1.add(new a0(false, inflate3, pic_position));
                    this.H1.add(new ImageInfo(detialShowImageBean.getRemote().getPath()));
                }
            }
            if (this.E1.size() == 1) {
                this.f37482t0.setVisibility(8);
                this.f37482t0.postInvalidate();
            }
            if (this.G1 == null) {
                this.G1 = new com.join.mgps.adapter.c1(this.f37491w0, pic_position, this.H1);
            }
            this.f37485u0.setAdapter((ListAdapter) this.G1);
            x0();
            if (this.G1.getCount() > 0) {
                this.G1.c(0);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void K0(float f4) {
        WindowManager.LayoutParams attributes = this.f37491w0.getWindow().getAttributes();
        attributes.alpha = f4;
        if (f4 == 1.0f) {
            this.f37491w0.getWindow().clearFlags(2);
        } else {
            this.f37491w0.getWindow().addFlags(2);
        }
        this.f37491w0.getWindow().setAttributes(attributes);
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
        View inflate = LayoutInflater.from(this.f37491w0).inflate(R.layout.layout_game_detail_sheet_golden_finger, (ViewGroup) this.f37473q0, false);
        ListView listView = (ListView) inflate.findViewById(R.id.listView);
        inflate.findViewById(R.id.close).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.k0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                l0.this.C0(view);
            }
        });
        listView.setAdapter((ListAdapter) new p(golden_finger));
        listView.setOnItemClickListener(new q());
        P0(inflate);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0(e0 e0Var) {
        e0Var.f37519b.setBackgroundResource(R.drawable.follow_none_image);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void M0() {
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
        com.join.mgps.Util.r.r(this.f37491w0, shareBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void N0() {
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
        com.join.mgps.Util.r.r(this.f37491w0, shareBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O0(String str) {
        Toast.makeText(this.f37491w0, str, 0).show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void P() {
        try {
            AccountBean accountData = AccountUtil_.getInstance_(this.f37491w0).getAccountData();
            LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
            linkedMultiValueMap.add("uid", Integer.valueOf(accountData.getUid()));
            linkedMultiValueMap.add("token", accountData.getToken());
            linkedMultiValueMap.add("group_id", I1);
            linkedMultiValueMap.add("game_id", this.f37439b);
            linkedMultiValueMap.add("game_title", J1);
            linkedMultiValueMap.add("device_id", this.f37497y0);
            linkedMultiValueMap.add("version", this.f37500z0);
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

    void P0(View view) {
        if (this.f37473q0 == null) {
            return;
        }
        view.setPadding(0, getStatusBarHeight(this.f37491w0), 0, 0);
        this.f37473q0.I(view);
        this.f37473q0.setFocusable(true);
        this.f37473q0.setFocusableInTouchMode(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Q(String str, String str2, e0 e0Var) {
        try {
            if (com.join.android.app.common.utils.f.j(this.f37491w0)) {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", Integer.valueOf(this.A1.getUid()));
                linkedMultiValueMap.add("token", this.A1.getToken());
                linkedMultiValueMap.add("group_id", str);
                linkedMultiValueMap.add("game_id", str2);
                linkedMultiValueMap.add("device_id", this.f37497y0);
                linkedMultiValueMap.add("version", this.f37500z0);
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
    @UiThread(delay = 4000)
    public void Q0() {
        com.join.mgps.Util.c.g(this.f37462m1);
        Q0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void R() {
        this.f37467o0.setVisibility(8);
        ((GamedetailVideoMainActivity_) getActivity()).shakeAnimback();
    }

    void R0() {
        try {
            this.f37483t1.setImageResource(R.drawable.line_blue_bg);
            Animation loadAnimation = AnimationUtils.loadAnimation(this.f37491w0, R.anim.img_translate);
            this.f37495x1 = loadAnimation;
            loadAnimation.setFillAfter(true);
            this.f37492w1.setVisibility(0);
            this.f37492w1.startAnimation(this.f37495x1);
            this.f37495x1.setAnimationListener(new g());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S() {
        try {
            XListView2 xListView2 = this.T0;
            if (xListView2 != null) {
                xListView2.k();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void S0() {
        try {
            this.f37492w1.clearAnimation();
            this.f37492w1.setVisibility(8);
            this.f37483t1.setImageResource(R.drawable.line_white_bg);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void T0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f37491w0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U0() {
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
    public void V0(int i2) {
        try {
            if (i2 < 100) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f37480s1.getLayoutParams();
                layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.wdp24);
                layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.wdp24);
                this.f37480s1.setLayoutParams(layoutParams);
                this.f37480s1.setCompoundDrawables(null, null, null, null);
                this.f37480s1.setBackgroundResource(R.drawable.mygame_big_round);
                this.f37480s1.setPadding(1, 0, 0, 1);
            } else {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f37480s1.getLayoutParams();
                layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
                layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
                layoutParams2.setMargins(4, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 0, 0);
                this.f37480s1.setGravity(17);
                this.f37480s1.setLayoutParams(layoutParams2);
                this.f37480s1.setCompoundDrawables(null, null, null, null);
                this.f37480s1.setBackgroundResource(R.drawable.message_round);
                this.f37480s1.setPadding(1, 0, 2, 1);
            }
            this.f37480s1.setVisibility(0);
            TextView textView = this.f37480s1;
            textView.setText(i2 + "");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W0(int i2) {
        if (i2 == 0) {
            S0();
        } else {
            R0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void X0() {
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
    public void Y0() {
        try {
            S0();
            this.f37480s1.setVisibility(8);
            this.f37480s1.setText("");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void Z0(boolean z3) {
        ExtBean extBean = this.f37441c;
        if (extBean == null || !"checkgame".equals(extBean.getFrom())) {
            return;
        }
        com.join.mgps.Util.k1.c().b(this.f37491w0, this.f37441c.getFrom_id(), new h(z3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a0(GameFromPopoWinBean gameFromPopoWinBean) {
        for (int i2 = 0; i2 < gameFromPopoWinBean.getData().size(); i2++) {
            this.f37438a1.add(gameFromPopoWinBean.getData().get(i2));
        }
        if (gameFromPopoWinBean.getData().size() < 10 && this.T0 != null) {
            U0();
        }
        d0 d0Var = this.U0;
        if (d0Var != null) {
            d0Var.notifyDataSetChanged();
        }
    }

    void addFrom(DownloadTask downloadTask) {
        ExtBean extBean = this.f37441c;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || downloadTask == null) {
            return;
        }
        if ("112".equals(this.f37441c.getFrom())) {
            ExtBean extBean2 = new ExtBean();
            extBean2.setFrom("101");
            extBean2.setPosition("112");
            extBean2.setLocation(this.f37441c.getLocation());
            downloadTask.setExt(JsonMapper.toJsonString(extBean2));
            return;
        }
        ExtBean extBean3 = new ExtBean();
        extBean3.setFrom("101");
        extBean3.setPosition(extBean3.getPosition());
        extBean3.setLocation(this.f37441c.getLocation());
        downloadTask.setExt(JsonMapper.toJsonString(extBean3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        Resources resources;
        int i2;
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f37439b = arguments.getString("gameId");
            this.f37443d = arguments.getBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA);
            this.E0 = arguments.getBoolean("isFromVideo");
            this.f37441c = (ExtBean) arguments.getSerializable("extBean");
        }
        this.B0 = this.f37437a + System.currentTimeMillis();
        if (this.E0) {
            this.B0 = "PapaMainAdapter";
        }
        if (this.f37441c == null) {
            this.f37441c = new ExtBean();
        }
        GamedetailVideoMainActivity gamedetailVideoMainActivity = (GamedetailVideoMainActivity) getActivity();
        this.f37491w0 = gamedetailVideoMainActivity;
        if (gamedetailVideoMainActivity.gethideOrshowCover()) {
            this.f37467o0.setVisibility(0);
        } else {
            this.f37467o0.setVisibility(8);
        }
        this.G.setVisibility(8);
        this.H.setVisibility(8);
        this.F.setVisibility(8);
        this.f37488v0 = com.join.mgps.rpc.impl.c.P1();
        this.V0 = com.join.mgps.rpc.impl.a.b0();
        this.W0 = com.join.mgps.rpc.impl.a.b0();
        com.join.mgps.Util.c0.a().d(this);
        RequestBeanUtil.getInstance(this.f37491w0);
        this.f37500z0 = RequestBeanUtil.getVersionAndVersionName();
        this.F0 = A0(this.f37491w0);
        this.G0 = o0(this.f37491w0);
        this.H0 = r0(this.f37491w0);
        this.f37494x0 = new com.join.android.app.common.manager.b(this.f37491w0);
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 21) {
            this.f37491w0.getWindow().setFlags(67108864, 67108864);
            this.f37494x0.m(true);
            this.f37494x0.n(R.color.black_alpha);
            View childAt = ((ViewGroup) this.f37491w0.findViewById(16908290)).getChildAt(0);
            if (childAt != null) {
                ViewCompat.setFitsSystemWindows(childAt, false);
            }
            getResources().getDimensionPixelSize(getResources().getIdentifier("status_bar_height", "dimen", q.a.f73954a));
            GamedetailVideoMainActivity gamedetailVideoMainActivity2 = this.f37491w0;
            com.join.mgps.Util.z1.c(gamedetailVideoMainActivity2, com.join.mgps.Util.z1.d(gamedetailVideoMainActivity2));
        }
        if (i4 >= 21) {
            Window window = getActivity().getWindow();
            window.clearFlags(67108864);
            window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(0);
        } else if (i4 >= 19) {
            getActivity().getWindow().addFlags(67108864);
        }
        GamedetialModleFourBean modleFourBeanShow = ((GamedetailVideoMainActivity) getActivity()).getModleFourBeanShow();
        if (modleFourBeanShow != null) {
            this.G.setVisibility(8);
            this.H.setVisibility(8);
            this.F.setVisibility(0);
            b1(modleFourBeanShow);
        } else {
            k0();
        }
        this.I0 = getStatusBarHeight(this.f37491w0);
        this.E.getBackground().setAlpha(0);
        CollapsingToolbarLayout.LayoutParams layoutParams = (CollapsingToolbarLayout.LayoutParams) this.E.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f37470p0.getLayoutParams();
        if (i4 >= 21) {
            layoutParams2.height = this.I0;
            this.f37470p0.setLayoutParams(layoutParams2);
            ((FrameLayout.LayoutParams) layoutParams).height = getResources().getDimensionPixelOffset(R.dimen.wdp98) + this.I0;
            this.E.setLayoutParams(layoutParams);
        } else {
            ((FrameLayout.LayoutParams) layoutParams).height = getResources().getDimensionPixelOffset(R.dimen.wdp98);
            this.E.setLayoutParams(layoutParams);
            layoutParams2.height = 1;
            this.f37470p0.setLayoutParams(layoutParams2);
        }
        if (this.C0) {
            resources = getResources();
            i2 = R.dimen.wdp1000;
        } else {
            resources = getResources();
            i2 = R.dimen.wdp300;
        }
        this.f37461m.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new k(resources.getDimensionPixelOffset(i2)));
        com.join.mgps.customview.CoordinatorLayout coordinatorLayout = this.F;
        if (coordinatorLayout instanceof com.join.mgps.customview.CoordinatorLayout) {
            coordinatorLayout.setSheetLayout(this.f37473q0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void b0() {
        if (this.f37473q0.getState() != BottomSheetLayout.State.HIDDEN) {
            this.f37473q0.r();
            return;
        }
        this.f37491w0.clickBack();
        t0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b1(GamedetialModleFourBean gamedetialModleFourBean) {
        List<DownloadTask> D;
        boolean z3;
        gamedetialModleFourBean.setNodeId("1");
        this.K0 = gamedetialModleFourBean;
        this.J0 = gamedetialModleFourBean;
        try {
            this.C0 = (gamedetialModleFourBean.getSp_tag_info() == null || gamedetialModleFourBean.getSp_tag_info().getMini_game() == null) ? false : true;
            if (gamedetialModleFourBean.getBt_game_switch() == 1) {
                this.K.setVisibility(0);
                this.K.removeAllViews();
                List<TipBean> game_bt_tag = gamedetialModleFourBean.getGame_bt_tag();
                if (game_bt_tag != null) {
                    int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.wdp10);
                    int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.wdp3);
                    boolean z4 = true;
                    for (TipBean tipBean : game_bt_tag) {
                        TextView textView = new TextView(this.f37491w0);
                        textView.setPadding(dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset, dimensionPixelOffset2);
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                        layoutParams.rightMargin = getResources().getDimensionPixelOffset(R.dimen.wdp12);
                        if (z4) {
                            layoutParams.leftMargin = getResources().getDimensionPixelOffset(R.dimen.wdp18);
                        }
                        textView.setLayoutParams(layoutParams);
                        textView.setTextColor(-1);
                        textView.setText(tipBean.getName());
                        textView.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp18));
                        if (com.join.mgps.Util.d2.i(tipBean.getColor())) {
                            GradientDrawable gradientDrawable = new GradientDrawable();
                            gradientDrawable.setShape(0);
                            gradientDrawable.setCornerRadius(getResources().getDimensionPixelOffset(R.dimen.wdp4));
                            gradientDrawable.setColor(Color.parseColor(tipBean.getColor()));
                            textView.setBackground(gradientDrawable);
                        }
                        this.K.addView(textView);
                        z4 = false;
                    }
                }
                if (gamedetialModleFourBean.getTag_info() != null) {
                    UtilsMy.G(gamedetialModleFourBean.getTag_info(), this.f37464n0, this.f37491w0);
                }
            }
            if (gamedetialModleFourBean.getGame_ranking_pos() != null) {
                GameDetailRankingTag.GameTagBean hot_game = gamedetialModleFourBean.getGame_ranking_pos().getHot_game();
                GameDetailRankingTag.GameTagBean tag_game = gamedetialModleFourBean.getGame_ranking_pos().getTag_game();
                GameDetailRankingTag.GameTagBean tag_game2 = gamedetialModleFourBean.getGame_ranking_pos().getTag_game();
                if (hot_game == null) {
                    hot_game = tag_game != null ? tag_game : tag_game2;
                }
                if (hot_game != null) {
                    this.f37476r0.setVisibility(0);
                    this.f37479s0.setHtml(hot_game.getTitle());
                    this.D0 = true;
                } else {
                    this.f37476r0.setVisibility(8);
                    this.D0 = false;
                }
                this.f37476r0.setOnClickListener(new r(hot_game));
            } else {
                this.f37476r0.setVisibility(8);
                this.D0 = false;
            }
            gamedetialModleFourBean.set_from_type(this.f37441c.get_from_type());
            gamedetialModleFourBean.set_from(101);
            gamedetialModleFourBean.setRecPosition(this.f37441c.getRecPosition());
            this.K0.set_from_type(this.f37441c.get_from_type());
            this.K0.set_from(101);
            this.K0.setRecPosition(this.f37441c.getRecPosition());
            this.F.setVisibility(0);
            int pic_position = gamedetialModleFourBean.getPic_position();
            if (!this.C0 || pic_position != 1) {
                this.G.setVisibility(8);
                this.H.setVisibility(8);
            }
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
            arrayList.add(new x.a("详情", com.join.mgps.activity.z.r0(this.f37439b, this.f37443d, this.f37441c).W(this)));
            arrayList.add(new x.a("评论", com.join.mgps.fragment.w.S(commentAlllistIntentData)));
            if (gamedetialModleFourBean.getStandalone_cloud_archive() != null && gamedetialModleFourBean.getStandalone_cloud_archive().getTag_list() != null && gamedetialModleFourBean.getMod_info() != null) {
                Bundle bundle = new Bundle();
                GameDetailModCloudListFragment gameDetailModCloudListFragment = new GameDetailModCloudListFragment();
                bundle.putString("gameId", gamedetialModleFourBean.getMod_info().getMod_game_id());
                bundle.putInt("type", 1);
                bundle.putSerializable("datas", gamedetialModleFourBean.getStandalone_cloud_archive());
                gameDetailModCloudListFragment.setArguments(bundle);
                arrayList.add(new x.a("云存档", gameDetailModCloudListFragment));
            } else if (gamedetialModleFourBean.getRoom_cfg_info() != null && gamedetialModleFourBean.getRoom_cfg_info().getCloud_archive_count() > 0) {
                Bundle bundle2 = new Bundle();
                GameDetailEmusCloudListFragment gameDetailEmusCloudListFragment = new GameDetailEmusCloudListFragment();
                bundle2.putString("gameId", this.f37439b);
                gameDetailEmusCloudListFragment.setArguments(bundle2);
                gameDetailEmusCloudListFragment.setMListener(new s());
                arrayList.add(new x.a("云存档", gameDetailEmusCloudListFragment));
            }
            arrayList.add(new x.a("游戏单", com.join.mgps.fragment.j2.X(gamedetialModleFourBean.getGame_company_id(), this.f37439b)));
            com.join.mgps.adapter.x xVar = new com.join.mgps.adapter.x(getChildFragmentManager(), arrayList);
            this.f37455j.setOffscreenPageLimit(3);
            this.f37455j.setAdapter(xVar);
            this.f37453i.setViewPager(this.f37455j);
            if (arrayList.size() == 1) {
                this.f37485u0.setVisibility(8);
            }
            G0(gamedetialModleFourBean);
            if (this.f37443d && g1.f.G().B(this.f37439b) == null) {
                com.php25.PDownload.d.c(gamedetialModleFourBean.getDownloadtaskDown(), this.f37491w0);
                onDetailDownload();
            }
            GamedetialModleFourBean gamedetialModleFourBean2 = this.K0;
            if (gamedetialModleFourBean2 != null) {
                if (gamedetialModleFourBean2.getGame_follow() == 1) {
                    this.B.setImageResource(R.drawable.followed_image);
                    this.C.setText("已收藏");
                } else {
                    this.B.setImageResource(R.drawable.follow_none_image);
                    this.C.setText("收藏");
                }
            }
            if (gamedetialModleFourBean.getMod_info() != null) {
                D = g1.f.G().C(gamedetialModleFourBean.getMod_info().getMain_game_id(), gamedetialModleFourBean.getMod_info().getMod_game_id());
            } else {
                D = g1.f.G().D(this.K0.getPackageName());
            }
            if (D != null && D.size() > 0) {
                boolean z5 = false;
                loop1: while (true) {
                    z3 = false;
                    for (DownloadTask downloadTask : D) {
                        if (Dtype.MOD.name().equals(downloadTask.getFileType())) {
                            z5 = com.join.mgps.va.overmind.e.p().D(downloadTask.getPackageName()) && downloadTask.getStatus() == 5;
                        } else if (com.join.android.app.common.utils.a.g0(getContext()).c(getContext(), downloadTask.getPackageName()) && downloadTask.getStatus() == 5) {
                            z3 = true;
                        }
                    }
                    break loop1;
                }
                if (z5 && z3) {
                    this.f37477r1 = g1.f.G().B(this.f37439b);
                } else if (z5) {
                    if (this.K0.getMod_info() != null) {
                        this.f37477r1 = g1.f.G().B(this.K0.getMod_info().getMod_game_id());
                    }
                } else if (z3) {
                    this.f37477r1 = g1.f.G().B(this.f37439b);
                } else {
                    if (this.K0.getMod_info() != null) {
                        this.f37477r1 = g1.f.G().B(this.K0.getMod_info().getMod_game_id());
                    }
                    if (this.f37477r1 == null) {
                        this.f37477r1 = g1.f.G().B(this.f37439b);
                    }
                }
            }
            DownloadTask downloadTask2 = this.f37477r1;
            if (downloadTask2 == null) {
                this.f37477r1 = this.K0.getDownloadtaskDown();
                if (UtilsMy.e0(this.K0.getTag_info())) {
                    if (this.f37477r1.getMod_info() == null) {
                        this.f37477r1.setFileType(Dtype.android.name());
                        if (com.join.android.app.common.utils.a.g0(this.f37491w0).c(this.f37491w0, this.K0.getPackageName())) {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f37491w0).k(this.f37491w0, this.K0.getPackageName());
                            if (com.join.mgps.Util.d2.i(this.K0.getVer()) && k4.d() < Integer.parseInt(this.K0.getVer())) {
                                this.f37477r1.setStatus(9);
                            } else {
                                this.f37477r1.setStatus(5);
                            }
                        } else {
                            this.f37477r1.setStatus(0);
                        }
                    }
                } else {
                    this.f37477r1.setStatus(0);
                }
            } else {
                downloadTask2.setDownloadType(0);
                this.f37477r1.setTask_down_type(0);
                this.f37477r1.setScreenshot_pic(this.K0.getScreenshot_pic());
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

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void backpressedTofinishActivity() {
        StandardVideoView standardVideoView = this.f37449g;
        if (standardVideoView == null) {
            return;
        }
        standardVideoView.taskShotPic(new a());
        if (this.f37449g.getTimeHas() < 2000) {
            this.f37449g.onAutoCompletion();
        }
        com.join.android.app.component.video.e.f(this.f37449g);
        this.f37449g.getGSYVideoManager().i(this.f37449g);
        this.f37444d1 = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void c0() {
        try {
            this.f37498y1 = g1.f.G().O();
            int W = g1.f.G().W();
            this.f37501z1 = W;
            W0(W);
            int i2 = this.f37498y1;
            if (i2 != 0) {
                V0(i2);
            } else {
                Y0();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.broadcast.bespeak.sussess"})
    public void c1() {
        this.K0.setGame_book(1);
        updateButn();
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
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.l0.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void changeGameFollow(int i2) {
        String str;
        if (com.join.android.app.common.utils.f.j(this.f37491w0)) {
            AccountBean accountData = AccountUtil_.getInstance_(this.f37491w0).getAccountData();
            this.A1 = accountData;
            int uid = accountData != null ? accountData.getUid() : 0;
            try {
                PackageInfo packageInfo = this.f37491w0.getPackageManager().getPackageInfo(this.f37491w0.getPackageName(), 0);
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
            CommonRequestBean<RequestGameIdArgs> detialFollowAnd = RequestBeanUtil.getInstance(this.f37491w0).getDetialFollowAnd(requestdetialFolowAndBeSpeak);
            ResultMainBean resultMainBean = null;
            if (i2 == 1) {
                resultMainBean = this.f37488v0.O0(detialFollowAnd);
            } else if (i2 == 2) {
                resultMainBean = this.f37488v0.D(detialFollowAnd);
            } else if (i2 == 3) {
                resultMainBean = this.f37488v0.o(detialFollowAnd);
            } else if (i2 == 4) {
                resultMainBean = this.f37488v0.d0(detialFollowAnd);
            }
            if (resultMainBean != null) {
                updateTitleButn(resultMainBean, i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void d0() {
        if (this.f37438a1.size() > 0) {
            this.f37438a1.clear();
            d0 d0Var = this.U0;
            if (d0Var != null) {
                d0Var.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 600)
    public void e0(String str) {
        if (this.D1) {
            return;
        }
        if (this.E0) {
            this.f37449g.setSurfaceToPlay();
        } else {
            this.f37491w0.autoPlayVideo(this.f37449g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void f0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f37491w0);
    }

    void g0() {
        DownloadTask downloadtaskDown = this.J0.getDownloadtaskDown();
        UtilsMy.g1(downloadtaskDown, this.J0);
        if (UtilsMy.T0(this.f37491w0, downloadtaskDown)) {
            return;
        }
        if (this.J0.getDown_status() == 5) {
            UtilsMy.R0(this.f37491w0, downloadtaskDown);
        } else {
            UtilsMy.F0(this.f37491w0, downloadtaskDown, this.J0.getTp_down_url(), this.J0.getOther_down_switch(), this.J0.getCdn_down_switch());
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
        return this.f37455j;
    }

    void h0(Context context, String str) {
        DownloadTask B = g1.f.G().B(this.J0.getGame_id());
        if (B != null && !TextUtils.isEmpty(str)) {
            if (B.getStatus() == 5) {
                com.join.mgps.Util.i2.a(getContext()).b(context.getResources().getString(R.string.game_detail_down_status, str));
                return;
            } else if (B.getStatus() != 43 && B.getStatus() != 9 && B.getStatus() != 0) {
                com.join.mgps.Util.i2.a(getContext()).b(context.getResources().getString(R.string.game_detail_downing_status, str));
                return;
            } else {
                g0();
                return;
            }
        }
        g0();
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void hideCover() {
        this.f37467o0.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void i0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f37491w0);
    }

    void initView() {
        try {
            this.I.setVisibility(8);
            this.D.setText(this.J0.getGame_name());
            z0();
            if (!com.join.mgps.Util.d2.i(this.J0.getGame_info_top_video_url()) && !com.join.mgps.Util.d2.i(this.J0.getGame_info_top_pic())) {
                this.f37466o.setVisibility(0);
                this.f37469p.setVisibility(8);
                this.f37472q.setVisibility(8);
                this.E.getBackground().setAlpha(255);
            }
            MyImageLoader.h(this.f37446e1, this.J0.getIco_remote());
            this.f37448f1.setText(this.J0.getGame_name());
            this.f37450g1.setText(this.J0.getCompany_name());
            if (this.J0.getBespeak_switch() == 1) {
                if (this.J0.getAppSize() != null && !"0.00".equals(this.J0.getAppSize())) {
                    TextView textView = this.f37452h1;
                    textView.setText(this.J0.getAppSize() + "M");
                    this.f37452h1.setVisibility(0);
                } else {
                    this.f37452h1.setVisibility(8);
                }
                if (this.J0.getBespeak_count() == null) {
                    this.f37454i1.setText("已有0人预约");
                } else {
                    TextView textView2 = this.f37454i1;
                    textView2.setText("已有" + this.J0.getBespeak_count() + "人预约");
                }
            } else {
                this.f37452h1.setVisibility(0);
                this.f37454i1.setText(com.join.mgps.Util.d2.c(this.J0.getDown_count()));
                TextView textView3 = this.f37452h1;
                textView3.setText(this.J0.getAppSize() + "M");
                try {
                    if (this.J0.getDown_status() == 5 && this.J0.getSp_tag_info() != null && this.J0.getSp_tag_info().getDown_res() != null) {
                        this.f37454i1.setText(this.J0.getSp_tag_info().getDown_res().getName());
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            if (this.J0.getPlugin_num() != null) {
                String plugin_num = this.J0.getPlugin_num();
                if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                    this.f37452h1.setVisibility(8);
                    this.f37454i1.setText(com.join.mgps.Util.d2.c(this.J0.getDown_count()).replace("安装", this.f37491w0.getResources().getString(R.string.download_status_finished)));
                }
            }
            a1();
            this.f37468o1.setOnClickListener(new b());
            if (com.join.mgps.Util.d2.h(this.J0.getCompany_name())) {
                this.f37458k1.setVisibility(8);
            } else {
                this.f37458k1.setVisibility(8);
                this.f37460l1.setOnClickListener(new c());
            }
            this.f37450g1.setOnClickListener(new d());
            if (this.J0.getShare_config() != null && this.J0.getShare_config().getShare_switch() == 1) {
                this.f37460l1.setVisibility(0);
                MyImageLoader.d(this.f37462m1, R.drawable.user_gift, "");
                this.f37460l1.setOnClickListener(new e());
            } else {
                this.f37460l1.setVisibility(8);
            }
            if (this.J0.getActivity_entry() != null) {
                this.f37460l1.setVisibility(0);
                MyImageLoader.h(this.f37462m1, this.J0.getActivity_entry().getPic());
                this.f37465n1.setText(this.J0.getActivity_entry().getTitle());
                Q0();
                this.f37460l1.setOnClickListener(new f());
                return;
            }
            this.f37460l1.setVisibility(8);
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
            if (IntentUtil.getInstance().goLoginNetGame(this.f37491w0) || this.K0.getGame_book() == 1) {
                return;
            }
            changeGameFollow(4);
            return;
        }
        if (("" + this.K0.getPlugin_num()).equals("" + ConstantIntEnum.H5.value())) {
            IntentUtil.getInstance().goShareWebActivity(this.f37491w0, this.K0.getDown_url_remote());
            UtilsMy.h2(this.f37477r1, this.f37491w0);
        }
        DownloadTask downloadTask = this.f37477r1;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (this.f37477r1 != null && UtilsMy.m0(this.K0.getPay_tag_info(), this.K0.getCrc_sign_id()) > 0) {
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
                    this.f37477r1 = g1.f.G().B(this.f37439b);
                } else if (z4) {
                    if (this.K0.getMod_info() != null) {
                        this.f37477r1 = g1.f.G().B(this.K0.getMod_info().getMod_game_id());
                    }
                } else if (z3) {
                    this.f37477r1 = g1.f.G().B(this.f37439b);
                } else {
                    if (this.K0.getMod_info() != null) {
                        this.f37477r1 = g1.f.G().B(this.K0.getMod_info().getMod_game_id());
                    }
                    if (this.f37477r1 == null) {
                        this.f37477r1 = g1.f.G().B(this.f37439b);
                    }
                }
            } else {
                this.f37477r1 = null;
            }
        }
        DownloadTask downloadTask3 = this.f37477r1;
        if (downloadTask3 != null && downloadTask3.getStatus() != 0) {
            DownloadTask downloadTask4 = this.f37477r1;
            if (downloadTask4 != null && (status == 2 || status == 10)) {
                com.php25.PDownload.d.h(downloadTask4);
            } else if (status == 12 || status == 27) {
                return;
            } else {
                if (status == 13) {
                    com.php25.PDownload.d.k(this.f37491w0, downloadTask4);
                    return;
                } else if (status == 5) {
                    UtilsMy.f3(this.f37491w0, downloadTask4, PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                } else if (status == 42) {
                    downloadTask4.setVer(this.K0.getVer());
                    this.f37477r1.setVer_name(this.K0.getVer_name());
                    this.f37477r1.setUrl(this.K0.getDown_url_remote());
                    this.f37477r1.setCfg_ver(this.K0.getCfg_ver());
                    this.f37477r1.setCfg_ver_name(this.K0.getCfg_ver_name());
                    this.f37477r1.setCfg_down_url(this.K0.getCfg_down_url());
                    this.f37477r1.setPay_game_amount(this.K0.getPay_tag_info() != null ? this.K0.getPay_tag_info().getPay_game_amount() : 0);
                    DownloadTask downloadTask5 = this.f37477r1;
                    Where where = Where.detail;
                    downloadTask5.setKeyword(where.name());
                    this.f37477r1.setKeyword(where.name());
                    UtilsMy.w3(this.f37491w0, this.f37477r1);
                } else if (status == 9) {
                    if (!com.join.android.app.common.utils.f.j(this.f37491w0)) {
                        com.join.mgps.Util.i2.a(this.f37491w0).b("无网络连接");
                        return;
                    }
                    if (this.K0.getGame_detailed() != null && com.join.mgps.Util.d2.i(this.K0.getGame_detailed().getTpl_two_qq())) {
                        com.join.mgps.Util.a0.c0(this.f37491w0).Y(this.f37491w0, this.K0.getGame_detailed().getTpl_two_qq_key(), this.K0.getGame_detailed().getAd_pic_qq(), this.K0.getGame_detailed().getTpl_two_qq());
                    }
                    int downloadType = this.f37477r1.getDownloadType();
                    if (downloadType == 0 || downloadType == 1) {
                        if (this.f37477r1.getCrc_link_type_val() == null || this.f37477r1.getCrc_link_type_val().equals("")) {
                            return;
                        }
                        addFrom(this.f37477r1);
                        if (UtilsMy.T0(this.f37491w0, this.f37477r1)) {
                            return;
                        }
                        if (this.K0.getDown_status() == 5) {
                            UtilsMy.R0(this.f37491w0, this.f37477r1);
                            return;
                        }
                        com.php25.PDownload.d.b(this.f37477r1);
                        this.f37477r1.setVer(this.K0.getVer());
                        this.f37477r1.setVer_name(this.K0.getVer_name());
                        this.f37477r1.setUrl(this.K0.getDown_url_remote());
                        this.f37477r1.setCfg_ver(this.K0.getCfg_ver());
                        this.f37477r1.setCfg_ver_name(this.K0.getCfg_ver_name());
                        this.f37477r1.setCfg_down_url(this.K0.getCfg_down_url());
                        this.f37477r1.setPay_game_amount(this.K0.getPay_tag_info() != null ? this.K0.getPay_tag_info().getPay_game_amount() : 0);
                        this.f37477r1.setKeyword(Where.detail.name());
                        if (UtilsMy.o0(this.K0.getPay_tag_info(), this.K0.getCrc_sign_id()) > 0) {
                            ExtBean extBean2 = this.f37441c;
                            if (extBean2 != null && "checkgame".equals(extBean2.getFrom())) {
                                UtilsMy.n3(this.f37491w0, this.f37439b, this.f37441c.getFrom_id());
                            } else {
                                if (!UtilsMy.T0(this.f37491w0, this.f37477r1)) {
                                    if (this.K0.getDown_status() == 5) {
                                        UtilsMy.R0(this.f37491w0, this.f37477r1);
                                    } else {
                                        UtilsMy.m3(this.f37491w0, this.f37439b);
                                    }
                                }
                                onDetailDownload();
                            }
                        } else {
                            UtilsMy.g1(this.f37477r1, this.K0);
                            if (!UtilsMy.T0(this.f37491w0, this.f37477r1)) {
                                if (this.K0.getDown_status() == 5) {
                                    UtilsMy.R0(this.f37491w0, this.f37477r1);
                                } else {
                                    UtilsMy.F0(this.f37491w0, this.f37477r1, this.K0.getTp_down_url(), this.K0.getOther_down_switch(), this.K0.getCdn_down_switch());
                                }
                            }
                            onDetailDownload();
                        }
                    } else if (downloadType == 2) {
                        UtilsMy.z3(this.f37477r1);
                    }
                } else if (11 == status) {
                    UtilsMy.j3(downloadTask4, this.f37491w0);
                } else if (43 == status) {
                    downloadTask4.setKeyword(Where.detail.name());
                    if (this.K0 != null) {
                        addFrom(this.f37477r1);
                        if (this.K0.getGame_detailed() != null && com.join.mgps.Util.d2.i(this.K0.getGame_detailed().getTpl_two_qq())) {
                            com.join.mgps.Util.a0.c0(this.f37491w0).Y(this.f37491w0, this.K0.getGame_detailed().getTpl_two_qq_key(), this.K0.getGame_detailed().getAd_pic_qq(), this.K0.getGame_detailed().getTpl_two_qq());
                        }
                        if (UtilsMy.o0(this.K0.getPay_tag_info(), this.K0.getCrc_sign_id()) > 0) {
                            ExtBean extBean3 = this.f37441c;
                            if (extBean3 != null && "checkgame".equals(extBean3.getFrom())) {
                                UtilsMy.n3(this.f37491w0, this.f37439b, this.f37441c.getFrom_id());
                            } else {
                                if (!UtilsMy.T0(this.f37491w0, this.f37477r1)) {
                                    if (this.K0.getDown_status() == 5) {
                                        UtilsMy.R0(this.f37491w0, this.f37477r1);
                                    } else {
                                        UtilsMy.m3(this.f37491w0, this.f37439b);
                                    }
                                }
                                onDetailDownload();
                            }
                        } else {
                            UtilsMy.g1(this.f37477r1, this.K0);
                            if (!UtilsMy.T0(this.f37491w0, this.f37477r1)) {
                                if (this.K0.getDown_status() == 5) {
                                    UtilsMy.R0(this.f37491w0, this.f37477r1);
                                } else {
                                    UtilsMy.F0(this.f37491w0, this.f37477r1, this.K0.getTp_down_url(), this.K0.getOther_down_switch(), this.K0.getCdn_down_switch());
                                }
                            }
                        }
                    }
                } else if (48 != status) {
                    downloadTask4.setKeyword(Where.detail.name());
                    if (this.K0 != null) {
                        addFrom(this.f37477r1);
                        if (this.K0.getGame_detailed() != null && com.join.mgps.Util.d2.i(this.K0.getGame_detailed().getTpl_two_qq())) {
                            com.join.mgps.Util.a0.c0(this.f37491w0).Y(this.f37491w0, this.K0.getGame_detailed().getTpl_two_qq_key(), this.K0.getGame_detailed().getAd_pic_qq(), this.K0.getGame_detailed().getTpl_two_qq());
                        }
                        if (UtilsMy.o0(this.K0.getPay_tag_info(), this.K0.getCrc_sign_id()) > 0) {
                            ExtBean extBean4 = this.f37441c;
                            if (extBean4 != null && "checkgame".equals(extBean4.getFrom())) {
                                UtilsMy.n3(this.f37491w0, this.f37439b, this.f37441c.getFrom_id());
                            } else {
                                if (!UtilsMy.T0(this.f37491w0, this.f37477r1)) {
                                    if (this.K0.getDown_status() == 5) {
                                        UtilsMy.R0(this.f37491w0, this.f37477r1);
                                    } else {
                                        UtilsMy.m3(this.f37491w0, this.f37439b);
                                    }
                                }
                                onDetailDownload();
                            }
                        } else {
                            UtilsMy.g1(this.f37477r1, this.K0);
                            if (!UtilsMy.T0(this.f37491w0, this.f37477r1)) {
                                if (this.K0.getDown_status() == 5) {
                                    UtilsMy.R0(this.f37491w0, this.f37477r1);
                                } else {
                                    UtilsMy.F0(this.f37491w0, this.f37477r1, this.K0.getTp_down_url(), this.K0.getOther_down_switch(), this.K0.getCdn_down_switch());
                                }
                            }
                        }
                    }
                }
            }
            updateButn();
            return;
        }
        DownloadTask downloadTask6 = this.f37477r1;
        if (downloadTask6 != null) {
            String ext = downloadTask6.getExt();
            if (com.join.mgps.Util.d2.i(ext) && (extBean = (ExtBean) JsonMapper.getInstance().fromJson(ext, ExtBean.class)) != null) {
                String recPosition = extBean.getRecPosition();
                if (com.join.mgps.Util.d2.i(recPosition) && com.join.mgps.Util.d2.i(extBean.getVolcanoOther())) {
                    J0(recPosition, this.f37439b, (StatFactory.VolcanoOther) JsonMapper.getInstance().fromJson(extBean.getVolcanoOther(), StatFactory.VolcanoOther.class), UtilsMy.F1(this.f37477r1.getTipBeans()));
                }
            }
        }
        String recPosition2 = this.J0.getRecPosition();
        this.J0.setRecPosition(recPosition2 + "-999-");
        this.J0.setReMarks(this.f37441c.getReMarks());
        UtilsMy.M0(this.f37491w0, this.K0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void iv_back() {
        if (this.f37473q0.getState() != BottomSheetLayout.State.HIDDEN) {
            this.f37473q0.r();
            return;
        }
        this.f37491w0.clickBack();
        t0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void j0() {
        if (AccountUtil_.getInstance_(this.f37491w0).isTourist()) {
            ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(this.f37491w0).flags(268435456)).start();
            return;
        }
        y0();
        l0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void k0() {
        GamedetialModleFourBean data;
        if (com.join.android.app.common.utils.f.j(this.f37491w0)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this.f37491w0).getAccountData();
                if (accountData == null) {
                    accountData = new AccountBean();
                }
                RequestModel requestModel = new RequestModel();
                requestModel.setDefault(this.f37491w0);
                RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs(this.f37439b, 1, accountData.getUid());
                requestGameIdArgs.setDownloadedGameIdList(g1.f.G().z());
                requestModel.setArgs(requestGameIdArgs);
                ResponseModel<GamedetialModleFourBean> body = com.join.mgps.rpc.impl.h.L().J().i(requestModel.makeSign()).execute().body();
                if (body != null && body.getCode() == 200 && (data = body.getData()) != null) {
                    b1(data);
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
    public void l0() {
        try {
            if (com.join.android.app.common.utils.f.j(this.f37491w0)) {
                if (IntentUtil.getInstance().goLoginInteractive(this.f37491w0)) {
                    return;
                }
                this.f37497y0 = "";
                AccountBean accountData = AccountUtil_.getInstance_(this.f37491w0).getAccountData();
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", Integer.valueOf(accountData.getUid()));
                linkedMultiValueMap.add("token", accountData.getToken());
                linkedMultiValueMap.add("current_game_id", this.f37439b);
                int i2 = this.Z0;
                this.Z0 = i2 + 1;
                linkedMultiValueMap.add("page", Integer.valueOf(i2));
                linkedMultiValueMap.add("device_id", this.f37497y0);
                linkedMultiValueMap.add("version ", this.f37500z0);
                GameFromPopoWinBean O = this.W0.O(linkedMultiValueMap);
                if (O != null && O.getError() == 0 && O.getData() != null) {
                    X0();
                    if (this.Z0 == 2) {
                        d0();
                    }
                    a0(O);
                    return;
                } else if (O != null && O.getError() == 701) {
                    IntentUtil.getInstance().goMyAccountLoginActivity(this.f37491w0);
                    O0("Token已失效，请重新登录");
                    IntentUtil.getInstance().goLogin(this.f37491w0);
                    w0();
                    return;
                } else {
                    U0();
                    return;
                }
            }
            showToast("网络出错，请稍后重试");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public boolean onBackPressedMy() {
        if (com.join.android.app.component.video.a.c0(this.f37491w0, this.B0)) {
            return true;
        }
        BottomSheetLayout bottomSheetLayout = this.f37473q0;
        if (bottomSheetLayout == null || bottomSheetLayout.getState() == BottomSheetLayout.State.HIDDEN) {
            return false;
        }
        this.f37473q0.r();
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (!this.E0) {
            StandardVideoView standardVideoView = this.f37449g;
            if (standardVideoView != null) {
                standardVideoView.release();
            }
            com.join.android.app.component.video.a.n0(this.B0);
        }
        com.join.mgps.Util.c0.a().e(this);
    }

    void onDetailDownload() {
        ExtBean extBean = this.f37441c;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || !this.f37441c.getFrom().equals("downloadCenter")) {
            return;
        }
        MobclickAgent.onEvent(this.f37491w0, "detailDownload4.2.0.6");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    void onDownloadSpeed(com.join.mgps.event.k kVar) {
        if (kVar == null || TextUtils.isEmpty(kVar.a()) || this.C0) {
            return;
        }
        ProgressBar progressBar = this.f37490w;
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
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.l0.onEventMainThread(com.join.mgps.event.l):void");
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        StandardVideoView standardVideoView;
        StandardVideoView standardVideoView2;
        super.onPause();
        this.D1 = true;
        try {
            boolean z3 = this.E0;
            if (!z3 && (standardVideoView2 = this.f37449g) != null) {
                standardVideoView2.onVideoPause();
            } else if (z3 && (standardVideoView = this.f37449g) != null && !this.f37444d1) {
                standardVideoView.onVideoPause();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        StandardVideoView standardVideoView;
        GamedetialModleFourBean gamedetialModleFourBean;
        List<DownloadTask> D;
        boolean z3;
        super.onResume();
        this.D1 = false;
        this.A1 = AccountUtil_.getInstance_(this.f37491w0).getAccountData();
        if (K1) {
            this.Z0 = 1;
            K1 = false;
            l0();
        }
        if ((this.f37466o.getVisibility() == 4 || this.f37466o.getVisibility() == 8) && (standardVideoView = this.f37449g) != null) {
            standardVideoView.onVideoResume(false);
        }
        c0();
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
                    r1 = g1.f.G().B(this.f37439b);
                } else if (z4) {
                    if (this.K0.getMod_info() != null) {
                        r1 = g1.f.G().B(this.K0.getMod_info().getMod_game_id());
                    }
                } else if (z3) {
                    r1 = g1.f.G().B(this.f37439b);
                } else {
                    r1 = this.K0.getMod_info() != null ? g1.f.G().B(this.K0.getMod_info().getMod_game_id()) : null;
                    if (r1 == null) {
                        r1 = g1.f.G().B(this.f37439b);
                    }
                }
            }
        }
        if (r1 == null && (gamedetialModleFourBean = this.K0) != null) {
            this.f37477r1 = gamedetialModleFourBean.getDownloadtaskDown();
        }
        if (r1 == null || this.f37477r1 == null) {
            return;
        }
        try {
            this.f37477r1 = r1;
            if (r1.getFileType().equals(Dtype.android.name()) && this.f37477r1.getStatus() == 5) {
                if (this.K0.getMod_info() == null) {
                    com.join.android.app.common.utils.a g02 = com.join.android.app.common.utils.a.g0(this.f37491w0);
                    GamedetailVideoMainActivity gamedetailVideoMainActivity = this.f37491w0;
                    String packageName = this.f37477r1.getPackageName();
                    APKUtils.DEVICE_TYPE device_type = APKUtils.DEVICE_TYPE.ALL;
                    if (Boolean.valueOf(g02.d(gamedetailVideoMainActivity, packageName, device_type)).booleanValue()) {
                        APKUtils.a l4 = com.join.android.app.common.utils.a.g0(this.f37491w0).l(this.f37491w0, this.f37477r1.getPackageName(), device_type);
                        if (com.join.mgps.Util.d2.i(this.f37477r1.getVer()) && l4.d() < Integer.parseInt(this.f37477r1.getVer())) {
                            this.f37477r1.setStatus(9);
                        } else {
                            this.f37477r1.setStatus(5);
                        }
                    } else {
                        this.f37477r1.setStatus(0);
                    }
                }
            } else {
                this.f37477r1.setStatus(r1.getStatus());
            }
            updateButn();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void pauseVideo() {
        this.D1 = true;
        StandardVideoView standardVideoView = this.f37449g;
        if (standardVideoView != null) {
            standardVideoView.onVideoPause();
        }
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void playVideo() {
        StandardVideoView standardVideoView = this.f37449g;
        if (standardVideoView != null) {
            this.f37491w0.autoPlayVideo(standardVideoView);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void progress_layout() {
        DownloadTask downloadTask = this.f37477r1;
        if (downloadTask == null) {
            return;
        }
        if (downloadTask.getStatus() == 2) {
            updateButn();
            com.php25.PDownload.d.h(this.f37477r1);
        } else if (this.f37477r1.getStatus() == 3 || this.f37477r1.getStatus() == 6) {
            updateButn();
            com.php25.PDownload.d.c(this.f37477r1, this.f37491w0);
            onDetailDownload();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        showLoding();
        k0();
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void resumVideo() {
        StandardVideoView standardVideoView;
        StandardVideoView standardVideoView2 = this.f37449g;
        if (standardVideoView2 == null || !this.D1) {
            return;
        }
        this.D1 = false;
        if (standardVideoView2.d()) {
            this.f37449g.startPlayLogic();
        } else if ((this.f37466o.getVisibility() == 4 || this.f37466o.getVisibility() == 8) && (standardVideoView = this.f37449g) != null) {
            standardVideoView.onVideoResume(false);
        }
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    @UiThread
    public void setCommentNumber(String str) {
        try {
            TextView j4 = this.f37453i.j(1);
            j4.setWidth(getResources().getDimensionPixelOffset(R.dimen.wdp220));
            j4.setText("点评(" + str + ")");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f37491w0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showInstallButn() {
        GamedetialModleFourBean gamedetialModleFourBean = this.K0;
        if (gamedetialModleFourBean == null || TextUtils.isEmpty(gamedetialModleFourBean.getCrc_sign_id())) {
            return;
        }
        try {
            this.f37478s.setVisibility(8);
            this.f37481t.setVisibility(0);
            this.f37475r.setVisibility(0);
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
                    if (com.join.android.app.common.utils.f.j(this.f37491w0)) {
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
            this.f37481t.setVisibility(8);
            this.f37475r.setVisibility(8);
            this.f37478s.setVisibility(0);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        Toast.makeText(this.f37491w0, str, 0).show();
    }

    void t0() {
        ExtBean extBean = this.f37441c;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || !this.f37441c.getFrom().equals("updateFromMarket")) {
            return;
        }
        IntentUtil.getInstance().goMGMainActivity2Front(this.f37491w0);
    }

    boolean u0() {
        GamedetialModleFourBean gamedetialModleFourBean = this.J0;
        return (gamedetialModleFourBean == null || gamedetialModleFourBean.getGame_screen_shot() == null || this.J0.getGame_screen_shot().size() <= 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateButn() {
        GamedetialModleFourBean gamedetialModleFourBean = this.K0;
        if (gamedetialModleFourBean == null || this.f37477r1 == null) {
            return;
        }
        if (gamedetialModleFourBean.getDel_tag() == 1 && !this.K0.getCompany_name().equals("SNK")) {
            this.f37475r.setEnabled(false);
            this.f37475r.setBackgroundResource(R.drawable.detial_simple_grey_selecter);
            this.f37475r.setText("已下架");
            showInstallButn();
        } else if (this.C0) {
            this.f37475r.setText("打开");
            showInstallButn();
        } else if (this.f37481t == null) {
        } else {
            UtilsMy.v2(this.K0.getSp_tag_info(), this.f37481t, this.f37477r1);
            if (this.K0.getPlugin_num() != null) {
                String plugin_num = this.K0.getPlugin_num();
                if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                    this.f37475r.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
                    this.f37475r.setText("开始");
                    showInstallButn();
                    return;
                }
            }
            this.f37475r.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
            DownloadTask downloadTask = this.f37477r1;
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            if (UtilsMy.m0(this.K0.getPay_tag_info(), this.K0.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status == 9) {
                showInstallButn();
                this.f37475r.setText("更新");
                this.f37484u.setImageResource(R.drawable.detail_comment_download_continue);
                this.f37484u.setImageResource(R.drawable.detial_simple_install_selecter);
            } else if (status == 12) {
                showInstallButn();
                this.f37475r.setText("解压中..");
            } else if (status == 13) {
                showInstallButn();
                this.f37475r.setText("解压");
                this.f37484u.setImageResource(R.drawable.detail_comment_download_continue);
            } else if (status == 11) {
                showInstallButn();
                this.f37475r.setText("安装");
                this.f37475r.setBackgroundResource(R.drawable.detial_simple_install_selecter);
                this.f37484u.setImageResource(R.drawable.detial_simple_install_selecter);
            } else if (status == 5 || status == 42) {
                showInstallButn();
                Z0(true);
                this.f37475r.setBackgroundResource(R.drawable.detial_simple_open_selecter);
                this.f37475r.setText(this.f37491w0.getResources().getString(R.string.download_status_finished));
                this.f37484u.setImageResource(R.drawable.detail_comment_download_continue);
            } else if (status == 2) {
                showProgress();
                this.f37484u.setImageResource(R.drawable.detail_comment_download_pause);
                UtilsMy.C3(this.f37477r1);
                this.f37490w.setProgress((int) this.f37477r1.getProgress());
                TextView textView = this.f37487v;
                textView.setText(this.f37477r1.getProgress() + "%");
            } else if (status == 3 || status == 6 || status == 27) {
                showProgress();
                this.f37484u.setImageResource(R.drawable.detail_comment_download_continue);
                UtilsMy.C3(this.f37477r1);
                this.f37490w.setProgress((int) this.f37477r1.getProgress());
                TextView textView2 = this.f37487v;
                textView2.setText(this.f37477r1.getProgress() + "%");
            } else if (status == 10) {
                showInstallButn();
                TextView textView3 = this.f37475r;
                textView3.setText("等待\u3000" + this.K0.getSize() + "M");
                this.f37484u.setImageResource(R.drawable.detail_comment_download_continue);
            } else if (status == 1) {
            } else {
                if (status == 43) {
                    showInstallButn();
                    if (UtilsMy.m0(this.K0.getPay_tag_info(), this.K0.getCrc_sign_id()) > 0) {
                        this.f37475r.setText(this.f37491w0.getResources().getString(R.string.pay_game_amount, this.K0.getPay_tag_info().getPayGameAmount()));
                    } else {
                        this.f37475r.setText(this.f37491w0.getResources().getString(R.string.download_status_download));
                    }
                    this.f37484u.setImageResource(R.drawable.detail_comment_download_continue);
                    GamedetialModleFourBean gamedetialModleFourBean2 = this.K0;
                    if (gamedetialModleFourBean2 != null) {
                        if (gamedetialModleFourBean2.getBespeak_switch() == 1 && this.K0.getDown_status() == 2) {
                            if (this.K0.getGame_book() == 1) {
                                this.f37475r.setText("已预约");
                                UtilsMy.m0(this.K0.getPay_tag_info(), this.K0.getCrc_sign_id());
                                UtilsMy.z2(this.f37475r, this.K0);
                                return;
                            }
                            this.f37475r.setText("预约");
                            return;
                        }
                        UtilsMy.m0(this.K0.getPay_tag_info(), this.K0.getCrc_sign_id());
                        UtilsMy.z2(this.f37475r, this.K0);
                    }
                } else if (status == 48) {
                    showInstallButn();
                    this.f37475r.setText(this.f37491w0.getResources().getString(R.string.download_status_installing));
                } else {
                    showInstallButn();
                    if (UtilsMy.m0(this.K0.getPay_tag_info(), this.K0.getCrc_sign_id()) > 0) {
                        this.f37475r.setText(this.f37491w0.getResources().getString(R.string.pay_game_amount, this.K0.getPay_tag_info().getPayGameAmount()));
                    } else {
                        this.f37475r.setText(this.f37491w0.getResources().getString(R.string.download_status_download));
                    }
                    this.f37484u.setImageResource(R.drawable.detail_comment_download_continue);
                    GamedetialModleFourBean gamedetialModleFourBean3 = this.K0;
                    if (gamedetialModleFourBean3 != null) {
                        if (gamedetialModleFourBean3.getBespeak_switch() == 1 && (this.K0.getDown_status() == 2 || this.K0.getDown_status() == 6)) {
                            if (this.K0.getGame_book() == 1) {
                                this.f37475r.setText("已预约");
                                UtilsMy.m0(this.K0.getPay_tag_info(), this.K0.getCrc_sign_id());
                                UtilsMy.z2(this.f37475r, this.K0);
                                return;
                            }
                            this.f37475r.setText("预约");
                            return;
                        }
                        UtilsMy.m0(this.K0.getPay_tag_info(), this.K0.getCrc_sign_id());
                        UtilsMy.z2(this.f37475r, this.K0);
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
            this.A.setDownloadGameNum(O);
            if (O > 0) {
                this.A.d();
            } else {
                this.A.g();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void updateProgress(DownloadTask downloadTask) {
        if (downloadTask == null || this.C0) {
            return;
        }
        ProgressBar progressBar = this.f37490w;
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
                com.join.mgps.Util.i2.a(this.f37491w0).b("收藏成功");
                this.B.setImageResource(R.drawable.followed_image);
                this.C.setText("已收藏");
            } else if (i2 == 3) {
                this.K0.setGame_book(0);
            } else if (i2 == 4) {
                this.K0.setGame_book(1);
                Intent intent = new Intent("com.broadcast.bespeak.sussess");
                intent.putExtra("gameid", this.K0.getCrc_sign_id());
                this.f37491w0.sendBroadcast(intent);
                com.join.mgps.Util.a0.c0(this.f37491w0).O(this.f37491w0, 1, new i()).show();
            }
            H0();
            updateButn();
        }
    }

    boolean v0() {
        return com.join.mgps.Util.d2.i(this.J0.getGame_info_top_video_url()) || com.join.mgps.Util.d2.i(this.J0.getGame_info_top_pic());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void w0() {
        PopupWindow popupWindow = this.L0;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    void x0() {
        this.f37457k.setAdapter(this.F1);
        this.f37457k.addOnPageChangeListener(new j());
        if (MViewpagerV4.class.isInstance(this.f37457k)) {
            ((MViewpagerV4) this.f37457k).setIntercept(false);
        }
        this.f37485u0.setOnItemClickListener(new l());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void y0() {
        View inflate = LayoutInflater.from(this.f37491w0).inflate(R.layout.popo_item, (ViewGroup) null);
        K0(0.4f);
        PopupWindow popupWindow = new PopupWindow(inflate, -1, -1, true);
        this.L0 = popupWindow;
        popupWindow.setTouchable(true);
        this.L0.setOutsideTouchable(true);
        this.L0.setFocusable(true);
        this.L0.setBackgroundDrawable(new ColorDrawable());
        this.L0.setSoftInputMode(16);
        this.L0.setOnDismissListener(new t());
        XListView2 xListView2 = (XListView2) inflate.findViewById(R.id.listview);
        this.T0 = xListView2;
        xListView2.setPullRefreshEnable(new u());
        this.T0.setPullLoadEnable(new v());
        this.R0 = (TextView) inflate.findViewById(R.id.tv_show_tips);
        this.O0 = (LinearLayout) inflate.findViewById(R.id.ll_our);
        this.M0 = (LinearLayout) inflate.findViewById(R.id.ll_show_finish);
        this.N0 = (LinearLayout) inflate.findViewById(R.id.ll_dismiss);
        this.P0 = (EditText) inflate.findViewById(R.id.game_ed);
        this.Q0 = (TextView) inflate.findViewById(R.id.tv_finish);
        this.S0 = (LinearLayout) inflate.findViewById(R.id.ll_build);
        this.N0.setOnClickListener(new w());
        this.S0.setOnClickListener(new x());
        this.Q0.setOnClickListener(new y());
        d0 d0Var = new d0();
        this.U0 = d0Var;
        this.T0.setAdapter((ListAdapter) d0Var);
        this.L0.showAtLocation(LayoutInflater.from(this.f37491w0).inflate(R.layout.gamedetial_modle_three_activity, (ViewGroup) null), 81, 0, 0);
    }

    @Override // l1.f
    public void z() {
        int i2;
        View inflate = LayoutInflater.from(this.f37491w0).inflate(R.layout.layout_game_detail_sheet_profile, (ViewGroup) this.f37473q0, false);
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
        findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.i0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                l0.this.D0(view);
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
        int i4 = Build.VERSION.SDK_INT;
        if (this.J0.getMax_an_compatible_ver() != 0 && i4 >= this.J0.getMin_an_compatible_ver()) {
            this.J0.getMax_an_compatible_ver();
        }
        if (this.J0.getGame_prompt() != null && this.J0.getGame_prompt().size() != 0) {
            flowLayout.setVisibility(0);
            flowLayout.setHorizontalDivider(flowLayout.getResources().getDimensionPixelOffset(R.dimen.wdp20));
            flowLayout.setVerticalDivider(flowLayout.getResources().getDimensionPixelOffset(R.dimen.wdp14));
            for (int i5 = 0; i5 < this.J0.getGame_prompt().size(); i5++) {
                GamePromptBean gamePromptBean = this.J0.getGame_prompt().get(i5);
                if (gamePromptBean != null && gamePromptBean.getId() == 1) {
                    flowLayout.addView(F0(gamePromptBean.getText(), R.drawable.ic_ok, flowLayout));
                }
            }
        }
        GamedetialMoreBean game_detailed = this.J0.getGame_detailed();
        textView3.setText(game_detailed.getCurrent_ver());
        textView5.setText(game_detailed.getUpgrade_time());
        textView4.setText(game_detailed.getSize() + "M");
        if (com.join.mgps.Util.d2.i(game_detailed.getSource())) {
            textView8.setText(game_detailed.getSource());
            group2.setVisibility(0);
        } else {
            group2.setVisibility(8);
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.j0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                l0.this.E0(view);
            }
        });
        if (!"46".equals(this.J0.getPlugin_num())) {
            findViewById3.setVisibility(0);
            findViewById3.setOnClickListener(new o());
        } else {
            findViewById3.setVisibility(4);
        }
        ((LinearLayout.LayoutParams) findViewById.getLayoutParams()).height = this.f37473q0.getMeasuredHeight();
        P0(inflate);
        findViewById.scrollTo(0, 0);
    }
}
