package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.flyco.tablayout.SlidingTabLayout;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
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
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.DownloadProgressBar;
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
import com.join.mgps.dto.GameScore;
import com.join.mgps.dto.GamedetialModleFourBean;
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
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Where;
import com.psk.eventmodule.Event;
import com.psk.eventmodule.StatFactory;
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
/* compiled from: GamedetialModleFourFragemnt.java */
@EFragment(R.layout.gamedetial_modle_four_fragment)
/* loaded from: classes.dex */
public class n0 extends BaseGameDetailFragment {
    private static final String A1 = "view";

    /* renamed from: x1  reason: collision with root package name */
    static String f37988x1 = "0";

    /* renamed from: y1  reason: collision with root package name */
    static String f37989y1 = "";

    /* renamed from: z1  reason: collision with root package name */
    static boolean f37990z1;
    @ViewById
    ImageView A;
    private int A0;
    @ViewById
    ImageView B;
    private GamedetialModleFourBean B0;
    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView C;
    private GamedetialModleFourBean C0;
    @ViewById
    ImageView D;
    PopupWindow D0;
    @ViewById
    TextView E;
    LinearLayout E0;
    @ViewById
    TextView F;
    LinearLayout F0;
    @ViewById
    Toolbar G;
    LinearLayout G0;
    @ViewById
    View H;
    EditText H0;
    @ViewById
    View I;
    TextView I0;
    @ViewById
    View J;
    TextView J0;
    @ViewById
    View K;
    LinearLayout K0;
    public XListView2 L0;
    u M0;
    com.join.mgps.rpc.b N0;
    com.join.mgps.rpc.b O0;
    GameFromPopoWinBean P0;
    PtrClassicFrameLayout Q0;
    public SimpleDraweeView W0;
    public TextView X0;
    public TextView Y0;
    public TextView Z0;

    /* renamed from: a1  reason: collision with root package name */
    public TextView f37992a1;

    /* renamed from: b  reason: collision with root package name */
    String f37993b;

    /* renamed from: b1  reason: collision with root package name */
    public MStarBar f37994b1;

    /* renamed from: c  reason: collision with root package name */
    ExtBean f37995c;

    /* renamed from: c1  reason: collision with root package name */
    public LinearLayout f37996c1;

    /* renamed from: d  reason: collision with root package name */
    boolean f37997d;

    /* renamed from: d1  reason: collision with root package name */
    public LinearLayout f37998d1;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    RelativeLayout f37999e;

    /* renamed from: e1  reason: collision with root package name */
    public SimpleDraweeView f38000e1;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    View f38001f;

    /* renamed from: f1  reason: collision with root package name */
    public TextView f38002f1;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    StandardVideoView f38003g;

    /* renamed from: g1  reason: collision with root package name */
    private LinearLayout f38004g1;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    SimpleDraweeView f38005h;

    /* renamed from: h1  reason: collision with root package name */
    private TextView f38006h1;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    SlidingTabLayout f38007i;

    /* renamed from: i1  reason: collision with root package name */
    private DownloadTask f38008i1;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ViewPager f38009j;
    @ViewById

    /* renamed from: j1  reason: collision with root package name */
    TextView f38010j1;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    SlidingTabLayoutGameDetailImage f38011k;
    @ViewById

    /* renamed from: k1  reason: collision with root package name */
    ImageView f38012k1;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    View f38013l;
    @ViewById

    /* renamed from: l1  reason: collision with root package name */
    ImageView f38014l1;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    ViewPager f38015m;
    @ViewById

    /* renamed from: m1  reason: collision with root package name */
    ImageView f38016m1;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    View f38017n;
    @ViewById

    /* renamed from: n0  reason: collision with root package name */
    View f38018n0;
    @ViewById

    /* renamed from: n1  reason: collision with root package name */
    ImageView f38019n1;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    AppBarLayout f38020o;
    @ViewById

    /* renamed from: o0  reason: collision with root package name */
    LinearLayout f38021o0;

    /* renamed from: o1  reason: collision with root package name */
    private Animation f38022o1;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    CollapsingToolbarLayout f38023p;
    @ViewById

    /* renamed from: p0  reason: collision with root package name */
    LinearLayout f38024p0;

    /* renamed from: p1  reason: collision with root package name */
    private int f38025p1;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    RelativeLayout f38026q;
    @ViewById

    /* renamed from: q0  reason: collision with root package name */
    View f38027q0;

    /* renamed from: q1  reason: collision with root package name */
    private int f38028q1;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    RelativeLayout f38029r;
    @ViewById

    /* renamed from: r0  reason: collision with root package name */
    View f38030r0;

    /* renamed from: r1  reason: collision with root package name */
    AccountBean f38031r1;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    RelativeLayout f38032s;

    /* renamed from: s0  reason: collision with root package name */
    com.join.mgps.rpc.d f38033s0;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    TextView f38035t;

    /* renamed from: t0  reason: collision with root package name */
    GamedetailVideoMainActivity f38036t0;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    RelativeLayout f38038u;

    /* renamed from: u0  reason: collision with root package name */
    private com.join.android.app.common.manager.b f38039u0;
    @ViewById

    /* renamed from: v  reason: collision with root package name */
    RelativeLayout f38041v;

    /* renamed from: v0  reason: collision with root package name */
    String f38042v0;
    @ViewById

    /* renamed from: w  reason: collision with root package name */
    ImageView f38044w;

    /* renamed from: w0  reason: collision with root package name */
    String f38045w0;
    @ViewById

    /* renamed from: x  reason: collision with root package name */
    TextView f38047x;
    @ViewById

    /* renamed from: y  reason: collision with root package name */
    ProgressBar f38049y;
    @ViewById

    /* renamed from: z  reason: collision with root package name */
    LinearLayout f38051z;

    /* renamed from: z0  reason: collision with root package name */
    boolean f38052z0;

    /* renamed from: a  reason: collision with root package name */
    private String f37991a = "GamedetialModleFourFragemnt";

    /* renamed from: x0  reason: collision with root package name */
    int f38048x0 = 0;

    /* renamed from: y0  reason: collision with root package name */
    String f38050y0 = "";
    int R0 = 1;
    List<GameFromPopoWinBean.DataBean> S0 = new ArrayList();
    boolean T0 = true;
    int U0 = 0;
    boolean V0 = false;

    /* renamed from: s1  reason: collision with root package name */
    Map<String, DownloadTask> f38034s1 = new HashMap();

    /* renamed from: t1  reason: collision with root package name */
    Map<String, DownloadTask> f38037t1 = new HashMap();

    /* renamed from: u1  reason: collision with root package name */
    boolean f38040u1 = false;

    /* renamed from: v1  reason: collision with root package name */
    private List<View> f38043v1 = new ArrayList();

    /* renamed from: w1  reason: collision with root package name */
    r f38046w1 = new r();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFourFragemnt.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n0.this.v0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFourFragemnt.java */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PaPaBannerListActivity_.I0(n0.this.f38036t0).e(1).a(true).c(n0.this.B0.getGame_company_id()).d(n0.this.B0.getCompany_name()).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFourFragemnt.java */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n0.this.v0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFourFragemnt.java */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goShareWebActivity(n0.this.f38036t0, n0.this.C0.getActivity_entry().getUrl() + n0.this.C0.getCrc_sign_id());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFourFragemnt.java */
    /* loaded from: classes3.dex */
    public class e implements Animation.AnimationListener {
        e() {
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
    /* compiled from: GamedetialModleFourFragemnt.java */
    /* loaded from: classes3.dex */
    public class f implements k1.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f38058a;

        f(boolean z3) {
            this.f38058a = z3;
        }

        @Override // com.join.mgps.Util.k1.b
        public void a(k1.c cVar) {
            if (cVar.a() == 1) {
                n0.this.f38036t0.clickBack();
                com.join.mgps.Util.k1 c4 = com.join.mgps.Util.k1.c();
                n0 n0Var = n0.this;
                c4.e(n0Var.f38036t0, n0Var.f37995c.getFrom_id(), cVar.b());
                com.join.mgps.Util.i2.a(n0.this.f38036t0).b("授权成功");
            } else if (this.f38058a) {
                n0.this.H0(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFourFragemnt.java */
    /* loaded from: classes3.dex */
    public class g implements l1.a {
        g() {
        }

        @Override // l1.a
        public void onClickCancle() {
        }

        @Override // l1.a
        public void onClickOk() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFourFragemnt.java */
    /* loaded from: classes3.dex */
    public class h implements ViewPager.OnPageChangeListener {
        h() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            if (n0.this.j0() && i2 == 0) {
                n0 n0Var = n0.this;
                n0Var.f38036t0.autoPlayVideo(n0Var.f38003g);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFourFragemnt.java */
    /* loaded from: classes3.dex */
    public class i implements AppBarLayout.OnOffsetChangedListener {
        i() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public void onOffsetChanged(AppBarLayout appBarLayout, int i2) {
            View view;
            try {
                appBarLayout.getHeight();
                n0.this.G.getHeight();
                int unused = n0.this.A0;
                if (Math.abs(i2) < n0.this.getResources().getDimensionPixelOffset(R.dimen.wdp300) && ((view = n0.this.f38001f) == null || view.getVisibility() != 0)) {
                    n0.this.f38029r.setVisibility(0);
                    n0.this.f38032s.setVisibility(0);
                    n0.this.f38026q.setVisibility(8);
                    n0.this.G.getBackground().setAlpha(0);
                    if (n0.this.f38039u0 != null) {
                        n0.this.f38039u0.n(R.color.black_alpha);
                    }
                    n0 n0Var = n0.this;
                    StandardVideoView standardVideoView = n0Var.f38003g;
                    if (standardVideoView != null && !n0Var.f38040u1 && standardVideoView.getCurrentState() == 5) {
                        n0.this.f38003g.onVideoResume(false);
                    }
                    n0.this.f38030r0.setVisibility(4);
                    return;
                }
                n0.this.f38026q.setVisibility(0);
                n0.this.f38029r.setVisibility(8);
                n0.this.f38032s.setVisibility(8);
                n0.this.G.getBackground().setAlpha(255);
                StandardVideoView standardVideoView2 = n0.this.f38003g;
                if (standardVideoView2 == null) {
                    return;
                }
                int currentState = standardVideoView2.getCurrentState();
                if (currentState == 2) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("currentState=");
                    sb.append(currentState);
                    sb.append(" -->performClick");
                    n0.this.f38003g.onVideoPause();
                }
                if (n0.this.f38039u0 != null) {
                    n0.this.f38039u0.n(R.color.black_30_alpha);
                }
                n0.this.f38030r0.setVisibility(0);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFourFragemnt.java */
    /* loaded from: classes3.dex */
    public class j implements PopupWindow.OnDismissListener {
        j() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            n0 n0Var = n0.this;
            n0Var.R0 = 1;
            n0Var.Z();
            n0 n0Var2 = n0.this;
            n0Var2.f38048x0 = 0;
            n0Var2.t0(1.0f);
            n0.f37989y1 = n0.this.H0.getText().toString().trim();
            n0 n0Var3 = n0.this;
            if (n0Var3.T0) {
                return;
            }
            n0Var3.T0 = true;
            n0Var3.M();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFourFragemnt.java */
    /* loaded from: classes3.dex */
    public class k implements com.join.mgps.customview.j {
        k() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            n0 n0Var = n0.this;
            n0Var.R0 = 1;
            n0Var.P();
            n0.this.e0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFourFragemnt.java */
    /* loaded from: classes3.dex */
    public class l implements com.join.mgps.customview.i {
        l() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            n0.this.P();
            n0.this.e0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFourFragemnt.java */
    /* loaded from: classes3.dex */
    public class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n0.this.D0.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFourFragemnt.java */
    /* loaded from: classes3.dex */
    public class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n0.f37990z1 = true;
            n0.this.startActivity(new Intent(n0.this.f38036t0, BuildGameFromActivity_.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFourFragemnt.java */
    /* loaded from: classes3.dex */
    public class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String trim = n0.this.H0.getText().toString().trim();
            n0.f37989y1 = trim;
            if (com.join.mgps.Util.n.f(trim)) {
                n0.this.showToast("不能上传表情");
                return;
            }
            n0.this.D0.dismiss();
            n0 n0Var = n0.this;
            if (n0Var.T0) {
                return;
            }
            n0Var.T0 = true;
            n0Var.M();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt.java */
    /* loaded from: classes3.dex */
    class p implements c2.e {
        p() {
        }

        @Override // c2.e
        public void a(Bitmap bitmap) {
            com.join.android.app.component.video.e.e(bitmap);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFourFragemnt.java */
    /* loaded from: classes3.dex */
    public class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n0.this.f38009j.setCurrentItem(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFourFragemnt.java */
    /* loaded from: classes3.dex */
    public class r extends PagerAdapter {

        /* compiled from: GamedetialModleFourFragemnt.java */
        /* loaded from: classes3.dex */
        class a implements View.OnTouchListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f38072a;

            a(int i2) {
                this.f38072a = i2;
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (n0.this.j0()) {
                    if (this.f38072a != 0) {
                        if (n0.this.i0()) {
                            ScreenshotTrueListAcvity_.intent(n0.this.f38036t0).fromData(n0.this.B0.getGame_screen_shot().get(this.f38072a - 1)).gameId(n0.this.B0.getGame_id()).start();
                        } else {
                            List<DetialShowImageBean> pic_info = n0.this.B0.getPic_info();
                            ArrayList arrayList = new ArrayList();
                            if (pic_info != null) {
                                for (int i2 = 0; i2 < pic_info.size(); i2++) {
                                    arrayList.add(pic_info.get(i2).getRemote().getPath());
                                }
                            }
                            try {
                                Intent intent = new Intent(n0.this.f38036t0, ImagePagerActivity.class);
                                String[] strArr = new String[arrayList.size()];
                                for (int i4 = 0; i4 < arrayList.size(); i4++) {
                                    strArr[i4] = (String) arrayList.get(i4);
                                }
                                if (com.join.mgps.Util.d2.i(n0.this.B0.getVedio_url()) && this.f38072a == 0) {
                                    FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
                                    videoInfo.n(n0.this.B0.getVedio_url());
                                    videoInfo.h(strArr[0]);
                                    FullScreenActivity_.G0(n0.this.f38036t0).a(videoInfo).start();
                                } else {
                                    intent.putExtra("image_urls", strArr);
                                    intent.putExtra("image_index", this.f38072a - 1);
                                    n0.this.f38036t0.startActivity(intent);
                                }
                            } catch (Exception e4) {
                                e4.printStackTrace();
                            }
                        }
                    }
                } else if (n0.this.i0()) {
                    ScreenshotTrueListAcvity_.intent(n0.this.f38036t0).fromData(n0.this.B0.getGame_screen_shot().get(this.f38072a)).gameId(n0.this.B0.getGame_id()).start();
                } else {
                    List<DetialShowImageBean> pic_info2 = n0.this.B0.getPic_info();
                    ArrayList arrayList2 = new ArrayList();
                    if (pic_info2 != null) {
                        for (int i5 = 0; i5 < pic_info2.size(); i5++) {
                            arrayList2.add(pic_info2.get(i5).getRemote().getPath());
                        }
                    }
                    try {
                        Intent intent2 = new Intent(n0.this.f38036t0, ImagePagerActivity.class);
                        String[] strArr2 = new String[arrayList2.size()];
                        for (int i6 = 0; i6 < arrayList2.size(); i6++) {
                            strArr2[i6] = (String) arrayList2.get(i6);
                        }
                        if (com.join.mgps.Util.d2.i(n0.this.B0.getVedio_url()) && this.f38072a == 0) {
                            FullScreenActivity.VideoInfo videoInfo2 = new FullScreenActivity.VideoInfo();
                            videoInfo2.n(n0.this.B0.getVedio_url());
                            videoInfo2.h(strArr2[0]);
                            FullScreenActivity_.G0(n0.this.f38036t0).a(videoInfo2).start();
                        } else {
                            intent2.putExtra("image_urls", strArr2);
                            intent2.putExtra("image_index", this.f38072a - 1);
                            n0.this.f38036t0.startActivity(intent2);
                        }
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                }
                return false;
            }
        }

        r() {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return n0.this.f38043v1.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i2) {
            viewGroup.addView((View) n0.this.f38043v1.get(i2));
            View view = (View) n0.this.f38043v1.get(i2);
            view.setOnTouchListener(new a(i2));
            return view;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }
    }

    /* compiled from: GamedetialModleFourFragemnt.java */
    /* loaded from: classes3.dex */
    class s extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        ImageView f38074a;

        public s(View view) {
            super(view);
            this.f38074a = (ImageView) view.findViewById(R.id.img);
        }
    }

    /* compiled from: GamedetialModleFourFragemnt.java */
    /* loaded from: classes3.dex */
    class t extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        t() {
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
            ImageView imageView = new ImageView(n0.this.f38036t0);
            imageView.setImageResource(R.drawable.icon);
            return new s(imageView);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFourFragemnt.java */
    /* loaded from: classes3.dex */
    public class u extends BaseAdapter {

        /* compiled from: GamedetialModleFourFragemnt.java */
        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f38078a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ v f38079b;

            a(int i2, v vVar) {
                this.f38078a = i2;
                this.f38079b = vVar;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (n0.this.S0.get(this.f38078a).getCurrent_game_state().equals("0")) {
                    this.f38079b.f38082b.setBackgroundResource(R.drawable.followed_image);
                    n0.this.E0.setVisibility(0);
                    n0.this.L0.setVisibility(8);
                    n0.this.I0.setVisibility(0);
                    n0.this.J0.setText("收藏成功");
                    n0.this.K0.setVisibility(8);
                    n0.f37988x1 = n0.this.S0.get(this.f38078a).getId();
                    n0 n0Var = n0.this;
                    n0Var.T0 = false;
                    int i2 = n0Var.f38048x0 + 1;
                    n0Var.f38048x0 = i2;
                    if (i2 > 0) {
                        n0Var.D.setImageResource(R.drawable.followed_image);
                        n0.this.E.setText("已收藏");
                        return;
                    }
                    return;
                }
                this.f38079b.f38082b.setBackgroundResource(R.drawable.follow_none_image);
                n0.this.S0.get(this.f38078a).setCurrent_game_state("0");
                n0 n0Var2 = n0.this;
                n0Var2.N(n0Var2.S0.get(this.f38078a).getId(), n0.this.f37993b, this.f38079b);
                n0 n0Var3 = n0.this;
                int i4 = n0Var3.f38048x0 - 1;
                n0Var3.f38048x0 = i4;
                n0Var3.f38048x0 = i4;
                if (i4 == 0) {
                    n0Var3.D.setImageResource(R.drawable.follow_none_image);
                    n0.this.E.setText("收藏");
                }
            }
        }

        u() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return n0.this.S0.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return n0.this.S0.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            v vVar;
            if (view == null) {
                view = LayoutInflater.from(n0.this.f38036t0).inflate(R.layout.list_item, (ViewGroup) null);
                vVar = new v();
                vVar.f38081a = (SimpleDraweeView) view.findViewById(R.id.iv_img);
                vVar.f38082b = (ImageView) view.findViewById(R.id.iv_coll);
                vVar.f38083c = (TextView) view.findViewById(R.id.tv_title);
                vVar.f38084d = (TextView) view.findViewById(R.id.tv_size);
                vVar.f38086f = (RelativeLayout) view.findViewById(R.id.ll_gameform);
                vVar.f38087g = (RelativeLayout) view.findViewById(R.id.rl_content);
                view.setTag(vVar);
            } else {
                vVar = (v) view.getTag();
            }
            if (n0.this.S0.get(i2).getGame_list().get(0).getGame_ico() != null && !n0.this.S0.get(i2).getGame_list().get(0).getGame_ico().equals("")) {
                vVar.f38081a.setImageURI(n0.this.S0.get(i2).getGame_list().get(0).getGame_ico());
            } else {
                vVar.f38081a.setImageResource(R.drawable.main_normal_icon);
            }
            vVar.f38083c.setText(n0.this.S0.get(i2).getTitle());
            vVar.f38084d.setText(n0.this.S0.get(i2).getGame_count() + "款");
            if (n0.this.S0.get(i2).getCurrent_game_state().equals("0")) {
                vVar.f38082b.setBackgroundResource(R.drawable.follow_none_image);
            } else {
                vVar.f38082b.setBackgroundResource(R.drawable.followed_image);
                n0.this.f38048x0++;
            }
            vVar.f38087g.setOnClickListener(new a(i2, vVar));
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamedetialModleFourFragemnt.java */
    /* loaded from: classes3.dex */
    public class v {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f38081a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f38082b;

        /* renamed from: c  reason: collision with root package name */
        TextView f38083c;

        /* renamed from: d  reason: collision with root package name */
        TextView f38084d;

        /* renamed from: e  reason: collision with root package name */
        TextView f38085e;

        /* renamed from: f  reason: collision with root package name */
        RelativeLayout f38086f;

        /* renamed from: g  reason: collision with root package name */
        RelativeLayout f38087g;

        v() {
        }
    }

    private void I0() {
        try {
            GameScore game_score = this.B0.getGame_score();
            if ("1".equals(this.B0.getComment_score_switch()) && game_score != null && com.join.mgps.Util.d2.i(game_score.getScore())) {
                if (!"0.0".equals(game_score.getScore()) && !"0".equals(game_score.getScore())) {
                    this.f38006h1.setText(game_score.getScore());
                    this.f37994b1.setIntegerMark(false);
                    this.f37994b1.setEnabled(false);
                    this.f37994b1.setStarMark(game_score.getTotal_stars());
                    this.f38004g1.setVisibility(0);
                    return;
                }
                this.f38006h1.setText("暂无评分");
                this.f38006h1.setTextSize(14.0f);
                this.f38006h1.setTextColor(Color.parseColor("#8a8a8a"));
                this.f37994b1.setIntegerMark(false);
                this.f37994b1.setEnabled(false);
                this.f37994b1.setStarMark(game_score.getTotal_stars());
                this.f38004g1.setVisibility(0);
                return;
            }
            this.f38004g1.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static n0 f0(String str, ExtBean extBean, boolean z3) {
        o0 o0Var = new o0();
        Bundle bundle = new Bundle();
        bundle.putBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA, z3);
        bundle.putSerializable("extBean", extBean);
        bundle.putString("gameId", str);
        bundle.putBoolean("isFromVideo", false);
        o0Var.setArguments(bundle);
        return o0Var;
    }

    public static n0 g0(String str, ExtBean extBean, boolean z3, boolean z4) {
        o0 o0Var = new o0();
        Bundle bundle = new Bundle();
        bundle.putBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA, z3);
        bundle.putSerializable("extBean", extBean);
        bundle.putString("gameId", str);
        bundle.putBoolean("isFromVideo", z4);
        o0Var.setArguments(bundle);
        return o0Var;
    }

    private int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", q.a.f73954a);
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private void n0() {
        try {
            if (this.f38003g != null) {
                if (!com.join.mgps.Util.d2.i(this.B0.getGame_info_top_video_url()) && !com.join.mgps.Util.d2.i(this.B0.getGame_info_top_pic())) {
                    this.f38001f.setVisibility(0);
                    this.f38005h.setVisibility(8);
                    this.f38003g.setVisibility(8);
                    return;
                }
                String game_info_top_video_url = this.B0.getGame_info_top_video_url();
                if (com.join.mgps.Util.d2.h(game_info_top_video_url)) {
                    MyImageLoader.d(this.f38005h, R.drawable.banner_normal_icon, this.B0.getGame_info_top_pic());
                    this.f38003g.setVisibility(8);
                    this.f38005h.setVisibility(0);
                }
                if (com.join.mgps.Util.d2.i(game_info_top_video_url)) {
                    MyImageLoader.h(this.f38003g.f17628a, this.B0.getGame_info_top_pic());
                    this.f38003g.setMuteWhenPlay(false);
                    this.f38003g.setPlayTag(this.f38050y0);
                    if (this.f38052z0) {
                        com.join.android.app.component.video.f.c(this.f38003g, game_info_top_video_url, false, "");
                        com.join.android.app.component.video.f.a(this.f38003g);
                        this.f38003g.setSurfaceToPlay();
                        this.f38003g.setCover(this.B0.getGame_info_top_pic());
                        return;
                    }
                    this.f38003g.setUp(game_info_top_video_url, StandardVideoView.C, this.B0.getGame_name(), this.B0.getGame_info_top_pic());
                    this.f38036t0.autoPlayVideo(this.f38003g);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void q0() {
    }

    private void r0(String str, String str2, StatFactory.VolcanoOther volcanoOther, boolean z3) {
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
                    StatFactory.Companion.getInstance(this.f38036t0).sendEvent(new StatFactory.VolcanoEvent(Event.check, str2, new StatFactory.SpmData("wufun", str4, str6, str5, true), volcanoOther, z3));
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
                StatFactory.Companion.getInstance(this.f38036t0).sendEvent(new StatFactory.VolcanoEvent(Event.check, str2, new StatFactory.SpmData("wufun", str4, str6, str5, true), volcanoOther, z3));
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
            StatFactory.Companion.getInstance(this.f38036t0).sendEvent(new StatFactory.VolcanoEvent(Event.check, str2, new StatFactory.SpmData("wufun", str4, str6, str5, true), volcanoOther, z3));
        }
        str4 = "home";
        str5 = "0";
        str6 = "";
        StatFactory.Companion.getInstance(this.f38036t0).sendEvent(new StatFactory.VolcanoEvent(Event.check, str2, new StatFactory.SpmData("wufun", str4, str6, str5, true), volcanoOther, z3));
    }

    void A0() {
        try {
            this.f38019n1.clearAnimation();
            this.f38019n1.setVisibility(8);
            this.f38012k1.setImageResource(R.drawable.line_white_bg);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void B0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f38036t0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void C0() {
        XListView2 xListView2 = this.L0;
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
    public void D0(int i2) {
        try {
            if (i2 < 100) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f38010j1.getLayoutParams();
                layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.wdp24);
                layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.wdp24);
                this.f38010j1.setLayoutParams(layoutParams);
                this.f38010j1.setCompoundDrawables(null, null, null, null);
                this.f38010j1.setBackgroundResource(R.drawable.mygame_big_round);
                this.f38010j1.setPadding(1, 0, 0, 1);
            } else {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f38010j1.getLayoutParams();
                layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
                layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
                layoutParams2.setMargins(4, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 0, 0);
                this.f38010j1.setGravity(17);
                this.f38010j1.setLayoutParams(layoutParams2);
                this.f38010j1.setCompoundDrawables(null, null, null, null);
                this.f38010j1.setBackgroundResource(R.drawable.message_round);
                this.f38010j1.setPadding(1, 0, 2, 1);
            }
            this.f38010j1.setVisibility(0);
            TextView textView = this.f38010j1;
            textView.setText(i2 + "");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void E0(int i2) {
        if (i2 == 0) {
            A0();
        } else {
            z0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F0() {
        XListView2 xListView2 = this.L0;
        if (xListView2 != null) {
            try {
                xListView2.t();
                this.L0.u();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void G0() {
        try {
            A0();
            this.f38010j1.setVisibility(8);
            this.f38010j1.setText("");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void H0(boolean z3) {
        ExtBean extBean = this.f37995c;
        if (extBean == null || !"checkgame".equals(extBean.getFrom())) {
            return;
        }
        com.join.mgps.Util.k1.c().b(this.f38036t0, this.f37995c.getFrom_id(), new f(z3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0(GamedetialModleFourBean gamedetialModleFourBean) {
        List<DownloadTask> D;
        boolean z3;
        if (gamedetialModleFourBean.getBt_game_switch() == 1) {
            gamedetialModleFourBean.setNodeId(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
        } else {
            gamedetialModleFourBean.setNodeId("0");
        }
        this.C0 = gamedetialModleFourBean;
        this.B0 = gamedetialModleFourBean;
        try {
            if (gamedetialModleFourBean.getBt_game_switch() == 1) {
                this.f38021o0.setVisibility(0);
                this.f38021o0.removeAllViews();
                List<TipBean> game_bt_tag = gamedetialModleFourBean.getGame_bt_tag();
                if (game_bt_tag != null) {
                    int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.wdp10);
                    int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.wdp3);
                    boolean z4 = true;
                    for (TipBean tipBean : game_bt_tag) {
                        TextView textView = new TextView(this.f38036t0);
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
                        this.f38021o0.addView(textView);
                        z4 = false;
                    }
                }
                if (gamedetialModleFourBean.getTag_info() != null) {
                    UtilsMy.G(gamedetialModleFourBean.getTag_info(), this.f38024p0, this.f38036t0);
                }
            }
            gamedetialModleFourBean.set_from_type(this.f37995c.get_from_type());
            gamedetialModleFourBean.set_from(101);
            gamedetialModleFourBean.setRecPosition(this.f37995c.getRecPosition());
            if (!TextUtils.isEmpty(this.f37995c.getVolcanoOther())) {
                gamedetialModleFourBean.setPosition_path((StatFactory.VolcanoOther) JsonMapper.getInstance().fromJson(this.f37995c.getVolcanoOther(), StatFactory.VolcanoOther.class));
            }
            this.C0.set_from_type(this.f37995c.get_from_type());
            this.C0.set_from(101);
            this.C0.setRecPosition(this.f37995c.getRecPosition());
            if (!TextUtils.isEmpty(this.f37995c.getVolcanoOther())) {
                this.C0.setPosition_path((StatFactory.VolcanoOther) JsonMapper.getInstance().fromJson(this.f37995c.getVolcanoOther(), StatFactory.VolcanoOther.class));
            }
            this.H.setVisibility(0);
            this.I.setVisibility(8);
            this.J.setVisibility(8);
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
            arrayList.add(new x.a("详情", b0.k0(this.f37993b, this.f37997d, this.f37995c)));
            arrayList.add(new x.a("点评", com.join.mgps.fragment.w.S(commentAlllistIntentData)));
            arrayList.add(new x.a("游戏单", com.join.mgps.fragment.j2.X(gamedetialModleFourBean.getGame_company_id(), this.f37993b)));
            this.f38009j.setAdapter(new com.join.mgps.adapter.x(getChildFragmentManager(), arrayList));
            this.f38009j.setOffscreenPageLimit(3);
            this.f38007i.setViewPager(this.f38009j);
            if (arrayList.size() == 1) {
                this.f38013l.setVisibility(8);
                this.f38011k.setVisibility(8);
            }
            p0(gamedetialModleFourBean);
            this.f38011k.setData(gamedetialModleFourBean);
            if (this.f37997d && g1.f.G().B(this.f37993b) == null) {
                com.php25.PDownload.d.c(gamedetialModleFourBean.getDownloadtaskDown(), this.f38036t0);
                onDetailDownload();
            }
            GamedetialModleFourBean gamedetialModleFourBean2 = this.C0;
            if (gamedetialModleFourBean2 != null) {
                if (gamedetialModleFourBean2.getGame_follow() == 1) {
                    this.D.setImageResource(R.drawable.followed_image);
                    this.E.setText("已收藏");
                } else {
                    this.D.setImageResource(R.drawable.follow_none_image);
                    this.E.setText("收藏");
                }
            }
            if (gamedetialModleFourBean.getMod_info() != null) {
                D = g1.f.G().C(gamedetialModleFourBean.getMod_info().getMain_game_id(), gamedetialModleFourBean.getMod_info().getMod_game_id());
            } else {
                D = g1.f.G().D(this.C0.getPackageName());
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
                    this.f38008i1 = g1.f.G().B(this.f37993b);
                } else if (z5) {
                    if (this.C0.getMod_info() != null) {
                        this.f38008i1 = g1.f.G().B(this.C0.getMod_info().getMod_game_id());
                    }
                } else if (z3) {
                    this.f38008i1 = g1.f.G().B(this.f37993b);
                } else {
                    if (this.C0.getMod_info() != null) {
                        this.f38008i1 = g1.f.G().B(this.C0.getMod_info().getMod_game_id());
                    }
                    if (this.f38008i1 == null) {
                        this.f38008i1 = g1.f.G().B(this.f37993b);
                    }
                }
            }
            DownloadTask downloadTask2 = this.f38008i1;
            if (downloadTask2 == null) {
                this.f38008i1 = this.C0.getDownloadtaskDown();
                if (UtilsMy.e0(this.C0.getTag_info())) {
                    if (this.f38008i1.getMod_info() == null) {
                        this.f38008i1.setFileType(Dtype.android.name());
                        if (com.join.android.app.common.utils.a.g0(this.f38036t0).c(this.f38036t0, this.C0.getPackageName())) {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f38036t0).k(this.f38036t0, this.C0.getPackageName());
                            if (com.join.mgps.Util.d2.i(this.C0.getVer()) && k4.d() < Integer.parseInt(this.C0.getVer())) {
                                this.f38008i1.setStatus(9);
                            } else {
                                this.f38008i1.setStatus(5);
                            }
                        } else {
                            this.f38008i1.setStatus(0);
                        }
                    }
                } else {
                    this.f38008i1.setStatus(0);
                }
            } else {
                downloadTask2.setDownloadType(0);
                this.f38008i1.setTask_down_type(0);
                this.f38008i1.setScreenshot_pic(this.C0.getScreenshot_pic());
            }
            if (("" + this.C0.getPlugin_num()).equals("" + ConstantIntEnum.H5.value())) {
                GamedetialModleFourBean gamedetialModleFourBean3 = this.C0;
                gamedetialModleFourBean3.setDown_count(gamedetialModleFourBean3.getStart_count());
            }
            updateButn();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.broadcast.bespeak.sussess"})
    public void K0() {
        this.C0.setGame_book(1);
        updateButn();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void M() {
        try {
            AccountBean accountData = AccountUtil_.getInstance_(this.f38036t0).getAccountData();
            LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
            linkedMultiValueMap.add("uid", Integer.valueOf(accountData.getUid()));
            linkedMultiValueMap.add("token", accountData.getToken());
            linkedMultiValueMap.add("group_id", f37988x1);
            linkedMultiValueMap.add("game_id", this.f37993b);
            linkedMultiValueMap.add("game_title", f37989y1);
            linkedMultiValueMap.add("device_id", this.f38042v0);
            linkedMultiValueMap.add("version", this.f38045w0);
            GameFromBooleanBean Q = this.O0.Q(linkedMultiValueMap);
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
    public void N(String str, String str2, v vVar) {
        try {
            if (com.join.android.app.common.utils.f.j(this.f38036t0)) {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", Integer.valueOf(this.f38031r1.getUid()));
                linkedMultiValueMap.add("token", this.f38031r1.getToken());
                linkedMultiValueMap.add("group_id", str);
                linkedMultiValueMap.add("game_id", str2);
                linkedMultiValueMap.add("device_id", this.f38042v0);
                linkedMultiValueMap.add("version", this.f38045w0);
                GameFromBooleanBean z3 = this.O0.z(linkedMultiValueMap);
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
    @Click
    public void O() {
        this.f38027q0.setVisibility(8);
        ((GamedetailVideoMainActivity_) getActivity()).shakeAnimback();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P() {
        try {
            XListView2 xListView2 = this.L0;
            if (xListView2 != null) {
                xListView2.k();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void V(GameFromPopoWinBean gameFromPopoWinBean) {
        for (int i2 = 0; i2 < gameFromPopoWinBean.getData().size(); i2++) {
            this.S0.add(gameFromPopoWinBean.getData().get(i2));
        }
        if (gameFromPopoWinBean.getData().size() < 10 && this.L0 != null) {
            C0();
        }
        u uVar = this.M0;
        if (uVar != null) {
            uVar.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void W() {
        this.f38036t0.clickBack();
        h0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void X() {
        try {
            this.f38025p1 = g1.f.G().O();
            int W = g1.f.G().W();
            this.f38028q1 = W;
            E0(W);
            int i2 = this.f38025p1;
            if (i2 != 0) {
                D0(i2);
            } else {
                G0();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z() {
        if (this.S0.size() > 0) {
            this.S0.clear();
            u uVar = this.M0;
            if (uVar != null) {
                uVar.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void a0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f38036t0);
    }

    void addFrom(DownloadTask downloadTask) {
        ExtBean extBean = this.f37995c;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || downloadTask == null || !"112".equals(this.f37995c.getFrom())) {
            return;
        }
        ExtBean extBean2 = new ExtBean();
        extBean2.setFrom("101");
        extBean2.setPosition("112");
        extBean2.setLocation(this.f37995c.getLocation());
        downloadTask.setExt(JsonMapper.toJsonString(extBean2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f37993b = arguments.getString("gameId");
            this.f37997d = arguments.getBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA);
            this.f38052z0 = arguments.getBoolean("isFromVideo");
            this.f37995c = (ExtBean) arguments.getSerializable("extBean");
        }
        this.f38050y0 = this.f37991a + System.currentTimeMillis();
        if (this.f38052z0) {
            this.f38050y0 = "PapaMainAdapter";
        }
        if (this.f37995c == null) {
            this.f37995c = new ExtBean();
        }
        GamedetailVideoMainActivity gamedetailVideoMainActivity = (GamedetailVideoMainActivity) getActivity();
        this.f38036t0 = gamedetailVideoMainActivity;
        if (gamedetailVideoMainActivity.gethideOrshowCover()) {
            this.f38027q0.setVisibility(0);
        } else {
            this.f38027q0.setVisibility(8);
        }
        this.I.setVisibility(8);
        this.J.setVisibility(8);
        this.H.setVisibility(8);
        this.f38033s0 = com.join.mgps.rpc.impl.c.P1();
        this.N0 = com.join.mgps.rpc.impl.a.b0();
        this.O0 = com.join.mgps.rpc.impl.a.b0();
        com.join.mgps.Util.c0.a().d(this);
        RequestBeanUtil.getInstance(this.f38036t0);
        this.f38045w0 = RequestBeanUtil.getVersionAndVersionName();
        this.f38039u0 = new com.join.android.app.common.manager.b(this.f38036t0);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            this.f38036t0.getWindow().setFlags(67108864, 67108864);
            this.f38039u0.m(true);
            this.f38039u0.n(R.color.black_30_alpha);
            View childAt = ((ViewGroup) this.f38036t0.findViewById(16908290)).getChildAt(0);
            if (childAt != null) {
                ViewCompat.setFitsSystemWindows(childAt, false);
            }
            getResources().getDimensionPixelSize(getResources().getIdentifier("status_bar_height", "dimen", q.a.f73954a));
        }
        if (i2 >= 21) {
            this.f38039u0.n(R.color.black_alpha);
            GamedetailVideoMainActivity gamedetailVideoMainActivity2 = this.f38036t0;
            com.join.mgps.Util.z1.c(gamedetailVideoMainActivity2, com.join.mgps.Util.z1.d(gamedetailVideoMainActivity2));
        }
        GamedetialModleFourBean modleFourBeanShow = ((GamedetailVideoMainActivity) getActivity()).getModleFourBeanShow();
        if (modleFourBeanShow != null) {
            this.I.setVisibility(8);
            this.J.setVisibility(8);
            this.H.setVisibility(0);
            J0(modleFourBeanShow);
        } else {
            d0();
        }
        this.A0 = getStatusBarHeight(this.f38036t0);
        this.G.getBackground().setAlpha(0);
        CollapsingToolbarLayout.LayoutParams layoutParams = (CollapsingToolbarLayout.LayoutParams) this.G.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f38030r0.getLayoutParams();
        if (i2 >= 21) {
            layoutParams2.height = this.A0;
            this.f38030r0.setLayoutParams(layoutParams2);
            ((FrameLayout.LayoutParams) layoutParams).height = getResources().getDimensionPixelOffset(R.dimen.wdp98) + this.A0;
            this.G.setLayoutParams(layoutParams);
        } else {
            ((FrameLayout.LayoutParams) layoutParams).height = getResources().getDimensionPixelOffset(R.dimen.wdp98);
            this.G.setLayoutParams(layoutParams);
            layoutParams2.height = 1;
            this.f38030r0.setLayoutParams(layoutParams2);
        }
        this.f38020o.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new i());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void b0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f38036t0);
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void backpressedTofinishActivity() {
        StandardVideoView standardVideoView = this.f38003g;
        if (standardVideoView == null) {
            return;
        }
        standardVideoView.taskShotPic(new p());
        if (this.f38003g.getTimeHas() < 2000) {
            this.f38003g.onAutoCompletion();
        }
        com.join.android.app.component.video.e.f(this.f38003g);
        this.f38003g.getGSYVideoManager().i(this.f38003g);
        this.V0 = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void c0() {
        if (AccountUtil_.getInstance_(this.f38036t0).isTourist()) {
            ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(this.f38036t0).flags(268435456)).start();
            return;
        }
        m0();
        e0();
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
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f38034s1
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f38034s1
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f38037t1
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f38037t1
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f38034s1
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f38034s1
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f38037t1
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f38037t1
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f38037t1
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f38037t1
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f38034s1
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f38034s1
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f38037t1
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f38037t1
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f38037t1
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f38037t1
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f38034s1
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f38034s1
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f38037t1
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f38037t1
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.n0.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void changeGameFollow(int i2) {
        String str;
        if (com.join.android.app.common.utils.f.j(this.f38036t0)) {
            AccountBean accountData = AccountUtil_.getInstance_(this.f38036t0).getAccountData();
            this.f38031r1 = accountData;
            int uid = accountData != null ? accountData.getUid() : 0;
            try {
                PackageInfo packageInfo = this.f38036t0.getPackageManager().getPackageInfo(this.f38036t0.getPackageName(), 0);
                str = packageInfo.versionCode + "_" + packageInfo.versionName;
            } catch (PackageManager.NameNotFoundException e4) {
                e4.printStackTrace();
                str = "";
            }
            RequestdetialFolowAndBeSpeak requestdetialFolowAndBeSpeak = new RequestdetialFolowAndBeSpeak();
            requestdetialFolowAndBeSpeak.setApp_ver(str);
            requestdetialFolowAndBeSpeak.setGame_id(this.C0.getCrc_sign_id());
            requestdetialFolowAndBeSpeak.setUid(uid);
            requestdetialFolowAndBeSpeak.setMobile(this.f38031r1.getMobile());
            CommonRequestBean<RequestGameIdArgs> detialFollowAnd = RequestBeanUtil.getInstance(this.f38036t0).getDetialFollowAnd(requestdetialFolowAndBeSpeak);
            ResultMainBean resultMainBean = null;
            if (i2 == 1) {
                resultMainBean = this.f38033s0.O0(detialFollowAnd);
            } else if (i2 == 2) {
                resultMainBean = this.f38033s0.D(detialFollowAnd);
            } else if (i2 == 3) {
                resultMainBean = this.f38033s0.o(detialFollowAnd);
            } else if (i2 == 4) {
                resultMainBean = this.f38033s0.d0(detialFollowAnd);
            }
            if (resultMainBean != null) {
                updateTitleButn(resultMainBean, i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void d0() {
        GamedetialModleFourBean data;
        if (com.join.android.app.common.utils.f.j(this.f38036t0)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this.f38036t0).getAccountData();
                if (accountData == null) {
                    accountData = new AccountBean();
                }
                RequestModel requestModel = new RequestModel();
                requestModel.setDefault(this.f38036t0);
                requestModel.setArgs(new RequestGameIdArgs(this.f37993b, 1, accountData.getUid()));
                ResponseModel<GamedetialModleFourBean> body = com.join.mgps.rpc.impl.h.L().J().F0(requestModel.makeSign()).execute().body();
                if (body != null && body.getCode() == 200 && (data = body.getData()) != null) {
                    J0(data);
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
    public void e0() {
        try {
            if (com.join.android.app.common.utils.f.j(this.f38036t0)) {
                if (IntentUtil.getInstance().goLoginInteractive(this.f38036t0)) {
                    return;
                }
                this.f38042v0 = "";
                AccountBean accountData = AccountUtil_.getInstance_(this.f38036t0).getAccountData();
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", Integer.valueOf(accountData.getUid()));
                linkedMultiValueMap.add("token", accountData.getToken());
                linkedMultiValueMap.add("current_game_id", this.f37993b);
                int i2 = this.R0;
                this.R0 = i2 + 1;
                linkedMultiValueMap.add("page", Integer.valueOf(i2));
                linkedMultiValueMap.add("device_id", this.f38042v0);
                linkedMultiValueMap.add("version ", this.f38045w0);
                GameFromPopoWinBean O = this.O0.O(linkedMultiValueMap);
                if (O != null && O.getError() == 0 && O.getData() != null) {
                    F0();
                    if (this.R0 == 2) {
                        Z();
                    }
                    V(O);
                    return;
                } else if (O != null && O.getError() == 701) {
                    IntentUtil.getInstance().goMyAccountLoginActivity(this.f38036t0);
                    x0("Token已失效，请重新登录");
                    IntentUtil.getInstance().goLogin(this.f38036t0);
                    k0();
                    return;
                } else {
                    C0();
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
                this.f38034s1.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.f38037t1.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public ViewPager getViewPager() {
        return this.f38009j;
    }

    void h0() {
        ExtBean extBean = this.f37995c;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || !this.f37995c.getFrom().equals("updateFromMarket")) {
            return;
        }
        IntentUtil.getInstance().goMGMainActivity2Front(this.f38036t0);
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void hideCover() {
        this.f38027q0.setVisibility(8);
    }

    boolean i0() {
        GamedetialModleFourBean gamedetialModleFourBean = this.B0;
        return (gamedetialModleFourBean == null || gamedetialModleFourBean.getGame_screen_shot() == null || this.B0.getGame_screen_shot().size() <= 0) ? false : true;
    }

    void initView() {
        try {
            this.K.setVisibility(8);
            this.F.setText(this.B0.getGame_name());
            n0();
            l0();
            if (!com.join.mgps.Util.d2.i(this.B0.getGame_info_top_video_url()) && !com.join.mgps.Util.d2.i(this.B0.getGame_info_top_pic())) {
                this.f38026q.setVisibility(0);
                this.f38029r.setVisibility(8);
                this.f38032s.setVisibility(8);
                this.G.getBackground().setAlpha(255);
                int dimensionPixelSize = getResources().getDimensionPixelSize(getResources().getIdentifier("status_bar_height", "dimen", q.a.f73954a));
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f38017n.getLayoutParams();
                layoutParams.height = dimensionPixelSize;
                this.f38017n.setLayoutParams(layoutParams);
            }
            this.X0 = (TextView) this.f38036t0.findViewById(R.id.appName);
            this.Y0 = (TextView) this.f38036t0.findViewById(R.id.appCompany);
            this.Z0 = (TextView) this.f38036t0.findViewById(R.id.appSize);
            this.f37992a1 = (TextView) this.f38036t0.findViewById(R.id.appDownloadCount);
            this.f37994b1 = (MStarBar) this.f38036t0.findViewById(R.id.comment_head_mstarBar);
            this.W0 = (SimpleDraweeView) this.f38036t0.findViewById(R.id.appIcon);
            this.f37996c1 = (LinearLayout) this.f38036t0.findViewById(R.id.companyLayout);
            this.f37998d1 = (LinearLayout) this.f38036t0.findViewById(R.id.layoutGift);
            this.f38000e1 = (SimpleDraweeView) this.f38036t0.findViewById(R.id.giftImage);
            this.f38002f1 = (TextView) this.f38036t0.findViewById(R.id.giftContent);
            this.f38004g1 = (LinearLayout) this.f38036t0.findViewById(R.id.scoreLayout);
            this.f38006h1 = (TextView) this.f38036t0.findViewById(R.id.comment_head_point_tx);
            MyImageLoader.h(this.W0, this.B0.getIco_remote());
            this.X0.setText(this.B0.getGame_name());
            this.Y0.setText(this.B0.getCompany_name());
            if (this.B0.getBespeak_switch() == 1) {
                if (this.B0.getAppSize() != null && !"0.00".equals(this.B0.getAppSize())) {
                    TextView textView = this.Z0;
                    textView.setText(this.B0.getAppSize() + "M");
                    this.Z0.setVisibility(0);
                } else {
                    this.Z0.setVisibility(8);
                }
                if (this.B0.getBespeak_count() == null) {
                    this.f37992a1.setText("已有0人预约");
                } else {
                    TextView textView2 = this.f37992a1;
                    textView2.setText("已有" + this.B0.getBespeak_count() + "人预约");
                }
            } else {
                this.Z0.setVisibility(0);
                this.f37992a1.setText(com.join.mgps.Util.d2.c(this.B0.getDown_count()));
                TextView textView3 = this.Z0;
                textView3.setText(this.B0.getAppSize() + "M");
                try {
                    if (this.B0.getDown_status() == 5 && this.B0.getSp_tag_info() != null && this.B0.getSp_tag_info().getDown_res() != null) {
                        this.f37992a1.setText(this.B0.getSp_tag_info().getDown_res().getName());
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            if (this.B0.getPlugin_num() != null) {
                String plugin_num = this.B0.getPlugin_num();
                if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                    this.Z0.setVisibility(8);
                    this.f37992a1.setText(com.join.mgps.Util.d2.c(this.B0.getDown_count()).replace("安装", this.f38036t0.getResources().getString(R.string.download_status_finished)));
                }
            }
            I0();
            this.f38004g1.setOnClickListener(new q());
            if (com.join.mgps.Util.d2.h(this.B0.getCompany_name())) {
                this.f37996c1.setVisibility(8);
            } else {
                this.f37996c1.setVisibility(8);
                this.f37998d1.setOnClickListener(new a());
            }
            this.Y0.setOnClickListener(new b());
            if (this.B0.getShare_config() != null && this.B0.getShare_config().getShare_switch() == 1) {
                this.f37998d1.setVisibility(0);
                MyImageLoader.d(this.f38000e1, R.drawable.user_gift, "");
                this.f37998d1.setOnClickListener(new c());
            } else {
                this.f37998d1.setVisibility(8);
            }
            if (this.B0.getActivity_entry() != null) {
                this.f37998d1.setVisibility(0);
                MyImageLoader.h(this.f38000e1, this.B0.getActivity_entry().getPic());
                this.f38002f1.setText(this.B0.getActivity_entry().getTitle());
                y0();
                this.f37998d1.setOnClickListener(new d());
                return;
            }
            this.f37998d1.setVisibility(8);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void instalButtomButn() {
        ExtBean extBean;
        boolean z3;
        int game_book = this.C0.getGame_book();
        if (this.C0.getBespeak_switch() == 1 && game_book != 1 && this.C0.getDown_status() == 2) {
            if (IntentUtil.getInstance().goLoginNetGame(this.f38036t0) || this.C0.getGame_book() == 1) {
                return;
            }
            changeGameFollow(4);
            return;
        }
        if (("" + this.C0.getPlugin_num()).equals("" + ConstantIntEnum.H5.value())) {
            IntentUtil.getInstance().goShareWebActivity(this.f38036t0, this.C0.getDown_url_remote());
            UtilsMy.h2(this.f38008i1, this.f38036t0);
        }
        DownloadTask downloadTask = this.f38008i1;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (this.f38008i1 != null && UtilsMy.m0(this.C0.getPay_tag_info(), this.C0.getCrc_sign_id()) > 0) {
            status = 43;
        }
        GamedetialModleFourBean gamedetialModleFourBean = this.C0;
        if (gamedetialModleFourBean != null && gamedetialModleFourBean.getMod_info() != null) {
            List<DownloadTask> C = g1.f.G().C(this.C0.getMod_info().getMain_game_id(), this.C0.getMod_info().getMod_game_id());
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
                    this.f38008i1 = g1.f.G().B(this.f37993b);
                } else if (z4) {
                    if (this.C0.getMod_info() != null) {
                        this.f38008i1 = g1.f.G().B(this.C0.getMod_info().getMod_game_id());
                    }
                } else if (z3) {
                    this.f38008i1 = g1.f.G().B(this.f37993b);
                } else {
                    if (this.C0.getMod_info() != null) {
                        this.f38008i1 = g1.f.G().B(this.C0.getMod_info().getMod_game_id());
                    }
                    if (this.f38008i1 == null) {
                        this.f38008i1 = g1.f.G().B(this.f37993b);
                    }
                }
            } else {
                this.f38008i1 = null;
            }
        }
        DownloadTask downloadTask3 = this.f38008i1;
        if (downloadTask3 != null && downloadTask3.getStatus() != 0) {
            DownloadTask downloadTask4 = this.f38008i1;
            if (downloadTask4 != null && (status == 2 || status == 10)) {
                com.php25.PDownload.d.h(downloadTask4);
            } else if (status == 12 || status == 27) {
                return;
            } else {
                if (status == 13) {
                    com.php25.PDownload.d.k(this.f38036t0, downloadTask4);
                    return;
                } else if (status == 5) {
                    UtilsMy.f3(this.f38036t0, downloadTask4, PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                } else if (status == 42) {
                    downloadTask4.setVer(this.C0.getVer());
                    this.f38008i1.setVer_name(this.C0.getVer_name());
                    this.f38008i1.setUrl(this.C0.getDown_url_remote());
                    this.f38008i1.setCfg_ver(this.C0.getCfg_ver());
                    this.f38008i1.setCfg_ver_name(this.C0.getCfg_ver_name());
                    this.f38008i1.setCfg_down_url(this.C0.getCfg_down_url());
                    this.f38008i1.setPay_game_amount(this.C0.getPay_tag_info() != null ? this.C0.getPay_tag_info().getPay_game_amount() : 0);
                    DownloadTask downloadTask5 = this.f38008i1;
                    Where where = Where.detail;
                    downloadTask5.setKeyword(where.name());
                    this.f38008i1.setKeyword(where.name());
                    UtilsMy.w3(this.f38036t0, this.f38008i1);
                } else if (status == 9) {
                    if (!com.join.android.app.common.utils.f.j(this.f38036t0)) {
                        com.join.mgps.Util.i2.a(this.f38036t0).b("无网络连接");
                        return;
                    }
                    if (this.C0.getGame_detailed() != null && com.join.mgps.Util.d2.i(this.C0.getGame_detailed().getTpl_two_qq())) {
                        com.join.mgps.Util.a0.c0(this.f38036t0).Y(this.f38036t0, this.C0.getGame_detailed().getTpl_two_qq_key(), this.C0.getGame_detailed().getAd_pic_qq(), this.C0.getGame_detailed().getTpl_two_qq());
                    }
                    int downloadType = this.f38008i1.getDownloadType();
                    if (downloadType == 0 || downloadType == 1) {
                        if (this.f38008i1.getCrc_link_type_val() == null || this.f38008i1.getCrc_link_type_val().equals("")) {
                            return;
                        }
                        addFrom(this.f38008i1);
                        if (UtilsMy.T0(this.f38036t0, this.f38008i1)) {
                            return;
                        }
                        if (this.C0.getDown_status() == 5) {
                            UtilsMy.R0(this.f38036t0, this.f38008i1);
                            return;
                        }
                        com.php25.PDownload.d.b(this.f38008i1);
                        this.f38008i1.setVer(this.C0.getVer());
                        this.f38008i1.setVer_name(this.C0.getVer_name());
                        this.f38008i1.setUrl(this.C0.getDown_url_remote());
                        this.f38008i1.setCfg_ver(this.C0.getCfg_ver());
                        this.f38008i1.setCfg_ver_name(this.C0.getCfg_ver_name());
                        this.f38008i1.setCfg_down_url(this.C0.getCfg_down_url());
                        this.f38008i1.setPay_game_amount(this.C0.getPay_tag_info() != null ? this.C0.getPay_tag_info().getPay_game_amount() : 0);
                        this.f38008i1.setKeyword(Where.detail.name());
                        if (UtilsMy.o0(this.C0.getPay_tag_info(), this.C0.getCrc_sign_id()) > 0) {
                            ExtBean extBean2 = this.f37995c;
                            if (extBean2 != null && "checkgame".equals(extBean2.getFrom())) {
                                UtilsMy.n3(this.f38036t0, this.f37993b, this.f37995c.getFrom_id());
                            } else {
                                if (!UtilsMy.T0(this.f38036t0, this.f38008i1)) {
                                    if (this.C0.getDown_status() == 5) {
                                        UtilsMy.R0(this.f38036t0, this.f38008i1);
                                    } else {
                                        UtilsMy.m3(this.f38036t0, this.f37993b);
                                    }
                                }
                                onDetailDownload();
                            }
                        } else {
                            UtilsMy.g1(this.f38008i1, this.C0);
                            if (!UtilsMy.T0(this.f38036t0, this.f38008i1)) {
                                if (this.C0.getDown_status() == 5) {
                                    UtilsMy.R0(this.f38036t0, this.f38008i1);
                                } else {
                                    UtilsMy.F0(this.f38036t0, this.f38008i1, this.C0.getTp_down_url(), this.C0.getOther_down_switch(), this.C0.getCdn_down_switch());
                                }
                            }
                            onDetailDownload();
                        }
                    } else if (downloadType == 2) {
                        UtilsMy.z3(this.f38008i1);
                    }
                } else if (11 == status) {
                    UtilsMy.j3(downloadTask4, this.f38036t0);
                } else if (43 == status) {
                    downloadTask4.setKeyword(Where.detail.name());
                    if (this.C0 != null) {
                        addFrom(this.f38008i1);
                        if (this.C0.getGame_detailed() != null && com.join.mgps.Util.d2.i(this.C0.getGame_detailed().getTpl_two_qq())) {
                            com.join.mgps.Util.a0.c0(this.f38036t0).Y(this.f38036t0, this.C0.getGame_detailed().getTpl_two_qq_key(), this.C0.getGame_detailed().getAd_pic_qq(), this.C0.getGame_detailed().getTpl_two_qq());
                        }
                        if (UtilsMy.o0(this.C0.getPay_tag_info(), this.C0.getCrc_sign_id()) > 0) {
                            ExtBean extBean3 = this.f37995c;
                            if (extBean3 != null && "checkgame".equals(extBean3.getFrom())) {
                                UtilsMy.n3(this.f38036t0, this.f37993b, this.f37995c.getFrom_id());
                            } else {
                                if (!UtilsMy.T0(this.f38036t0, this.f38008i1)) {
                                    if (this.C0.getDown_status() == 5) {
                                        UtilsMy.R0(this.f38036t0, this.f38008i1);
                                    } else {
                                        UtilsMy.m3(this.f38036t0, this.f37993b);
                                    }
                                }
                                onDetailDownload();
                            }
                        } else {
                            UtilsMy.g1(this.f38008i1, this.C0);
                            if (!UtilsMy.T0(this.f38036t0, this.f38008i1)) {
                                if (this.C0.getDown_status() == 5) {
                                    UtilsMy.R0(this.f38036t0, this.f38008i1);
                                } else {
                                    UtilsMy.F0(this.f38036t0, this.f38008i1, this.C0.getTp_down_url(), this.C0.getOther_down_switch(), this.C0.getCdn_down_switch());
                                }
                            }
                        }
                    }
                } else if (48 != status) {
                    downloadTask4.setKeyword(Where.detail.name());
                    if (this.C0 != null) {
                        addFrom(this.f38008i1);
                        if (this.C0.getGame_detailed() != null && com.join.mgps.Util.d2.i(this.C0.getGame_detailed().getTpl_two_qq())) {
                            com.join.mgps.Util.a0.c0(this.f38036t0).Y(this.f38036t0, this.C0.getGame_detailed().getTpl_two_qq_key(), this.C0.getGame_detailed().getAd_pic_qq(), this.C0.getGame_detailed().getTpl_two_qq());
                        }
                        if (UtilsMy.o0(this.C0.getPay_tag_info(), this.C0.getCrc_sign_id()) > 0) {
                            ExtBean extBean4 = this.f37995c;
                            if (extBean4 != null && "checkgame".equals(extBean4.getFrom())) {
                                UtilsMy.n3(this.f38036t0, this.f37993b, this.f37995c.getFrom_id());
                            } else {
                                if (!UtilsMy.T0(this.f38036t0, this.f38008i1)) {
                                    if (this.C0.getDown_status() == 5) {
                                        UtilsMy.R0(this.f38036t0, this.f38008i1);
                                    } else {
                                        UtilsMy.m3(this.f38036t0, this.f37993b);
                                    }
                                }
                                onDetailDownload();
                            }
                        } else {
                            UtilsMy.g1(this.f38008i1, this.C0);
                            if (!UtilsMy.T0(this.f38036t0, this.f38008i1)) {
                                if (this.C0.getDown_status() == 5) {
                                    UtilsMy.R0(this.f38036t0, this.f38008i1);
                                } else {
                                    UtilsMy.F0(this.f38036t0, this.f38008i1, this.C0.getTp_down_url(), this.C0.getOther_down_switch(), this.C0.getCdn_down_switch());
                                }
                            }
                        }
                    }
                }
            }
            updateButn();
            return;
        }
        DownloadTask downloadTask6 = this.f38008i1;
        if (downloadTask6 != null) {
            String ext = downloadTask6.getExt();
            if (com.join.mgps.Util.d2.i(ext) && (extBean = (ExtBean) JsonMapper.getInstance().fromJson(ext, ExtBean.class)) != null) {
                String recPosition = extBean.getRecPosition();
                if (com.join.mgps.Util.d2.i(recPosition) && com.join.mgps.Util.d2.i(extBean.getVolcanoOther())) {
                    r0(recPosition, this.f37993b, (StatFactory.VolcanoOther) JsonMapper.getInstance().fromJson(extBean.getVolcanoOther(), StatFactory.VolcanoOther.class), UtilsMy.F1(this.f38008i1.getTipBeans()));
                }
            }
        }
        String recPosition2 = this.B0.getRecPosition();
        this.B0.setRecPosition(recPosition2 + "-999-");
        this.B0.setReMarks(this.f37995c.getReMarks());
        UtilsMy.M0(this.f38036t0, this.C0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void iv_back() {
        this.f38036t0.clickBack();
        h0();
    }

    boolean j0() {
        return com.join.mgps.Util.d2.i(this.B0.getGame_info_top_video_url()) || com.join.mgps.Util.d2.i(this.B0.getGame_info_top_pic());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void k0() {
        PopupWindow popupWindow = this.D0;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    void l0() {
        this.f38015m.setAdapter(this.f38046w1);
        this.f38011k.setViewPager(this.f38015m);
        if (MViewpagerV4.class.isInstance(this.f38015m)) {
            ((MViewpagerV4) this.f38015m).setIntercept(false);
        }
        this.f38011k.setOnPageChangeListener(new h());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void m0() {
        View inflate = LayoutInflater.from(this.f38036t0).inflate(R.layout.popo_item, (ViewGroup) null);
        t0(0.4f);
        PopupWindow popupWindow = new PopupWindow(inflate, -1, -1, true);
        this.D0 = popupWindow;
        popupWindow.setTouchable(true);
        this.D0.setOutsideTouchable(true);
        this.D0.setFocusable(true);
        this.D0.setBackgroundDrawable(new ColorDrawable());
        this.D0.setSoftInputMode(16);
        this.D0.setOnDismissListener(new j());
        XListView2 xListView2 = (XListView2) inflate.findViewById(R.id.listview);
        this.L0 = xListView2;
        xListView2.setPullRefreshEnable(new k());
        this.L0.setPullLoadEnable(new l());
        this.J0 = (TextView) inflate.findViewById(R.id.tv_show_tips);
        this.G0 = (LinearLayout) inflate.findViewById(R.id.ll_our);
        this.E0 = (LinearLayout) inflate.findViewById(R.id.ll_show_finish);
        this.F0 = (LinearLayout) inflate.findViewById(R.id.ll_dismiss);
        this.H0 = (EditText) inflate.findViewById(R.id.game_ed);
        this.I0 = (TextView) inflate.findViewById(R.id.tv_finish);
        this.K0 = (LinearLayout) inflate.findViewById(R.id.ll_build);
        this.F0.setOnClickListener(new m());
        this.K0.setOnClickListener(new n());
        this.I0.setOnClickListener(new o());
        u uVar = new u();
        this.M0 = uVar;
        this.L0.setAdapter((ListAdapter) uVar);
        this.D0.showAtLocation(LayoutInflater.from(this.f38036t0).inflate(R.layout.gamedetial_modle_three_activity, (ViewGroup) null), 81, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void o0() {
        this.f38036t0.clickBack();
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public boolean onBackPressedMy() {
        return com.join.android.app.component.video.a.c0(this.f38036t0, this.f38050y0);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (!this.f38052z0) {
            StandardVideoView standardVideoView = this.f38003g;
            if (standardVideoView != null) {
                standardVideoView.release();
            }
            com.join.android.app.component.video.a.n0(this.f38050y0);
        }
        com.join.mgps.Util.c0.a().e(this);
    }

    void onDetailDownload() {
        ExtBean extBean = this.f37995c;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || !this.f37995c.getFrom().equals("downloadCenter")) {
            return;
        }
        MobclickAgent.onEvent(this.f38036t0, "detailDownload4.2.0.6");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    void onDownloadSpeed(com.join.mgps.event.k kVar) {
        if (kVar == null || TextUtils.isEmpty(kVar.a())) {
            return;
        }
        ProgressBar progressBar = this.f38049y;
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
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.n0.onEventMainThread(com.join.mgps.event.l):void");
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        StandardVideoView standardVideoView;
        StandardVideoView standardVideoView2;
        super.onPause();
        this.f38040u1 = true;
        try {
            boolean z3 = this.f38052z0;
            if (!z3 && (standardVideoView2 = this.f38003g) != null) {
                standardVideoView2.onVideoPause();
            } else if (z3 && (standardVideoView = this.f38003g) != null && !this.V0) {
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
        this.f38040u1 = false;
        this.f38031r1 = AccountUtil_.getInstance_(this.f38036t0).getAccountData();
        if (f37990z1) {
            this.R0 = 1;
            f37990z1 = false;
            e0();
        }
        if (this.f38026q.getVisibility() == 4 && (standardVideoView = this.f38003g) != null) {
            standardVideoView.onVideoResume(false);
        }
        X();
        GamedetialModleFourBean gamedetialModleFourBean2 = this.C0;
        if (gamedetialModleFourBean2 != null) {
            if (gamedetialModleFourBean2.getMod_info() != null) {
                D = g1.f.G().C(this.C0.getMod_info().getMod_game_id(), this.C0.getMod_info().getMain_game_id());
            } else {
                D = g1.f.G().D(this.C0.getPackageName());
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
                    r1 = g1.f.G().B(this.f37993b);
                } else if (z4) {
                    if (this.C0.getMod_info() != null) {
                        r1 = g1.f.G().B(this.C0.getMod_info().getMod_game_id());
                    }
                } else if (z3) {
                    r1 = g1.f.G().B(this.f37993b);
                } else {
                    r1 = this.C0.getMod_info() != null ? g1.f.G().B(this.C0.getMod_info().getMod_game_id()) : null;
                    if (r1 == null) {
                        r1 = g1.f.G().B(this.f37993b);
                    }
                }
            }
        }
        if (r1 == null && (gamedetialModleFourBean = this.C0) != null) {
            this.f38008i1 = gamedetialModleFourBean.getDownloadtaskDown();
        }
        if (r1 == null || this.f38008i1 == null) {
            return;
        }
        try {
            this.f38008i1 = r1;
            if (r1.getFileType().equals(Dtype.android.name()) && this.f38008i1.getStatus() == 5) {
                if (this.C0.getMod_info() == null) {
                    com.join.android.app.common.utils.a g02 = com.join.android.app.common.utils.a.g0(this.f38036t0);
                    GamedetailVideoMainActivity gamedetailVideoMainActivity = this.f38036t0;
                    String packageName = this.f38008i1.getPackageName();
                    APKUtils.DEVICE_TYPE device_type = APKUtils.DEVICE_TYPE.ALL;
                    if (Boolean.valueOf(g02.d(gamedetailVideoMainActivity, packageName, device_type)).booleanValue()) {
                        APKUtils.a l4 = com.join.android.app.common.utils.a.g0(this.f38036t0).l(this.f38036t0, this.f38008i1.getPackageName(), device_type);
                        if (com.join.mgps.Util.d2.i(this.f38008i1.getVer()) && l4.d() < Integer.parseInt(this.f38008i1.getVer())) {
                            this.f38008i1.setStatus(9);
                        } else {
                            this.f38008i1.setStatus(5);
                        }
                    } else {
                        this.f38008i1.setStatus(0);
                    }
                }
            } else {
                this.f38008i1.setStatus(r1.getStatus());
            }
            updateButn();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void p0(GamedetialModleFourBean gamedetialModleFourBean) {
        try {
            this.f38043v1.clear();
            if (j0()) {
                View inflate = LayoutInflater.from(this.f38036t0).inflate(R.layout.gamedetail_item_video, (ViewGroup) this.f38015m, false);
                this.f37999e = (RelativeLayout) inflate.findViewById(R.id.videolayout);
                this.f38001f = inflate.findViewById(R.id.nullView);
                this.f38003g = (StandardVideoView) inflate.findViewById(R.id.videoPlayer);
                this.f38005h = (SimpleDraweeView) inflate.findViewById(R.id.iv_book_bg);
                ((RelativeLayout.LayoutParams) this.f38003g.getLayoutParams()).height = -1;
                ((RelativeLayout.LayoutParams) this.f38005h.getLayoutParams()).height = -1;
                n0();
                this.f38043v1.add(inflate);
            } else {
                this.f38039u0.n(R.color.black_30_alpha);
                this.f38030r0.setVisibility(0);
            }
            if (!j0()) {
                this.f38015m.setVisibility(4);
                if (this.f38001f == null) {
                    this.f38001f = new View(this.f38036t0);
                }
                this.f38015m.getLayoutParams().height = getResources().getDimensionPixelOffset(R.dimen.wdp100);
                this.f38001f.setVisibility(0);
            }
            this.f38013l.setVisibility(8);
            this.f38011k.setVisibility(8);
            this.f38013l.setVisibility(8);
            this.f38011k.postInvalidate();
            this.f38046w1.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void pauseVideo() {
        this.f38040u1 = true;
        StandardVideoView standardVideoView = this.f38003g;
        if (standardVideoView != null) {
            standardVideoView.onVideoPause();
        }
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void playVideo() {
        StandardVideoView standardVideoView = this.f38003g;
        if (standardVideoView != null) {
            this.f38036t0.autoPlayVideo(standardVideoView);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void progress_layout() {
        DownloadTask downloadTask = this.f38008i1;
        if (downloadTask == null) {
            return;
        }
        if (downloadTask.getStatus() == 2) {
            updateButn();
            com.php25.PDownload.d.h(this.f38008i1);
        } else if (this.f38008i1.getStatus() == 3 || this.f38008i1.getStatus() == 6) {
            updateButn();
            com.php25.PDownload.d.c(this.f38008i1, this.f38036t0);
            onDetailDownload();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        showLoding();
        d0();
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void resumVideo() {
        this.f38040u1 = false;
        StandardVideoView standardVideoView = this.f38003g;
        if (standardVideoView != null) {
            if (standardVideoView.d()) {
                this.f38003g.startPlayLogic();
            } else if (this.f38026q.getVisibility() == 4) {
                this.f38003g.onVideoResume(false);
            }
        }
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    @UiThread
    public void setCommentNumber(String str) {
        try {
            TextView j4 = this.f38007i.j(1);
            j4.setWidth(getResources().getDimensionPixelOffset(R.dimen.wdp220));
            j4.setText("点评(" + str + ")");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f38036t0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showInstallButn() {
        GamedetialModleFourBean gamedetialModleFourBean = this.C0;
        if (gamedetialModleFourBean == null || TextUtils.isEmpty(gamedetialModleFourBean.getCrc_sign_id())) {
            return;
        }
        try {
            this.f38038u.setVisibility(8);
            this.f38041v.setVisibility(0);
            this.f38035t.setVisibility(0);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            this.I.setVisibility(0);
            this.J.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0035 -> B:18:0x003d). Please submit an issue!!! */
    @UiThread
    public void showLodingFailed() {
        try {
            this.I.setVisibility(8);
            try {
                GamedetialModleFourBean gamedetialModleFourBean = this.C0;
                if (gamedetialModleFourBean == null || com.join.mgps.Util.d2.h(gamedetialModleFourBean.getCrc_sign_id())) {
                    this.J.setVisibility(0);
                    this.K.setVisibility(0);
                    if (com.join.android.app.common.utils.f.j(this.f38036t0)) {
                        this.f38018n0.setVisibility(8);
                    } else {
                        this.f38018n0.setVisibility(0);
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
            this.f38041v.setVisibility(8);
            this.f38035t.setVisibility(8);
            this.f38038u.setVisibility(0);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        Toast.makeText(this.f38036t0, str, 0).show();
    }

    public void t0(float f4) {
        WindowManager.LayoutParams attributes = this.f38036t0.getWindow().getAttributes();
        attributes.alpha = f4;
        if (f4 == 1.0f) {
            this.f38036t0.getWindow().clearFlags(2);
        } else {
            this.f38036t0.getWindow().addFlags(2);
        }
        this.f38036t0.getWindow().setAttributes(attributes);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void u0(v vVar) {
        vVar.f38082b.setBackgroundResource(R.drawable.follow_none_image);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateButn() {
        GamedetialModleFourBean gamedetialModleFourBean = this.C0;
        if (gamedetialModleFourBean == null || this.f38008i1 == null) {
            return;
        }
        if (gamedetialModleFourBean.getDel_tag() == 1 && !this.C0.getCompany_name().equals("SNK")) {
            this.f38035t.setEnabled(false);
            this.f38035t.setBackgroundResource(R.drawable.detial_simple_grey_selecter);
            this.f38035t.setText("已下架");
            showInstallButn();
        } else if (this.f38041v == null) {
        } else {
            UtilsMy.v2(this.C0.getSp_tag_info(), this.f38041v, this.f38008i1);
            if (this.C0.getPlugin_num() != null) {
                String plugin_num = this.C0.getPlugin_num();
                if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                    this.f38035t.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
                    this.f38035t.setText("开始");
                    showInstallButn();
                    return;
                }
            }
            this.f38035t.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
            DownloadTask downloadTask = this.f38008i1;
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            if (UtilsMy.m0(this.C0.getPay_tag_info(), this.C0.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status == 9) {
                showInstallButn();
                this.f38035t.setText("更新");
                this.f38044w.setImageResource(R.drawable.detail_comment_download_continue);
                this.f38044w.setImageResource(R.drawable.detial_simple_install_selecter);
            } else if (status == 12) {
                showInstallButn();
                this.f38035t.setText("解压中..");
            } else if (status == 13) {
                showInstallButn();
                this.f38035t.setText("解压");
                this.f38044w.setImageResource(R.drawable.detail_comment_download_continue);
            } else if (status == 11) {
                showInstallButn();
                this.f38035t.setText("安装");
                this.f38035t.setBackgroundResource(R.drawable.detial_simple_install_selecter);
                this.f38044w.setImageResource(R.drawable.detial_simple_install_selecter);
            } else if (status == 5 || status == 42) {
                showInstallButn();
                H0(true);
                this.f38035t.setBackgroundResource(R.drawable.detial_simple_open_selecter);
                this.f38035t.setText(this.f38036t0.getResources().getString(R.string.download_status_finished));
                this.f38044w.setImageResource(R.drawable.detail_comment_download_continue);
            } else if (status == 2) {
                showProgress();
                this.f38044w.setImageResource(R.drawable.detail_comment_download_pause);
                UtilsMy.C3(this.f38008i1);
                this.f38049y.setProgress((int) this.f38008i1.getProgress());
                TextView textView = this.f38047x;
                textView.setText(this.f38008i1.getProgress() + "%");
            } else if (status == 3 || status == 6 || status == 27) {
                showProgress();
                this.f38044w.setImageResource(R.drawable.detail_comment_download_continue);
                UtilsMy.C3(this.f38008i1);
                this.f38049y.setProgress((int) this.f38008i1.getProgress());
                TextView textView2 = this.f38047x;
                textView2.setText(this.f38008i1.getProgress() + "%");
            } else if (status == 10) {
                showInstallButn();
                TextView textView3 = this.f38035t;
                textView3.setText("等待\u3000" + this.C0.getSize() + "M");
                this.f38044w.setImageResource(R.drawable.detail_comment_download_continue);
            } else if (status == 1) {
            } else {
                if (status == 43) {
                    showInstallButn();
                    if (UtilsMy.m0(this.C0.getPay_tag_info(), this.C0.getCrc_sign_id()) > 0) {
                        this.f38035t.setText(this.f38036t0.getResources().getString(R.string.pay_game_amount, this.C0.getPay_tag_info().getPayGameAmount()));
                    } else {
                        this.f38035t.setText(this.f38036t0.getResources().getString(R.string.download_status_download));
                    }
                    this.f38044w.setImageResource(R.drawable.detail_comment_download_continue);
                    GamedetialModleFourBean gamedetialModleFourBean2 = this.C0;
                    if (gamedetialModleFourBean2 != null) {
                        if (gamedetialModleFourBean2.getBespeak_switch() == 1 && this.C0.getDown_status() == 2) {
                            if (this.C0.getGame_book() == 1) {
                                this.f38035t.setText("已预约");
                                UtilsMy.m0(this.C0.getPay_tag_info(), this.C0.getCrc_sign_id());
                                UtilsMy.z2(this.f38035t, this.C0);
                                return;
                            }
                            this.f38035t.setText("预约");
                            return;
                        }
                        UtilsMy.m0(this.C0.getPay_tag_info(), this.C0.getCrc_sign_id());
                        UtilsMy.z2(this.f38035t, this.C0);
                    }
                } else if (status == 48) {
                    showInstallButn();
                    this.f38035t.setText(this.f38036t0.getResources().getString(R.string.download_status_installing));
                } else {
                    showInstallButn();
                    if (UtilsMy.m0(this.C0.getPay_tag_info(), this.C0.getCrc_sign_id()) > 0) {
                        this.f38035t.setText(this.f38036t0.getResources().getString(R.string.pay_game_amount, this.C0.getPay_tag_info().getPayGameAmount()));
                    } else {
                        this.f38035t.setText(this.f38036t0.getResources().getString(R.string.download_status_download));
                    }
                    this.f38044w.setImageResource(R.drawable.detail_comment_download_continue);
                    GamedetialModleFourBean gamedetialModleFourBean3 = this.C0;
                    if (gamedetialModleFourBean3 != null) {
                        if (gamedetialModleFourBean3.getBespeak_switch() == 1 && (this.C0.getDown_status() == 2 || this.C0.getDown_status() == 6)) {
                            if (this.C0.getGame_book() == 1) {
                                this.f38035t.setText("已预约");
                                UtilsMy.m0(this.C0.getPay_tag_info(), this.C0.getCrc_sign_id());
                                UtilsMy.z2(this.f38035t, this.C0);
                                return;
                            }
                            this.f38035t.setText("预约");
                            return;
                        }
                        UtilsMy.m0(this.C0.getPay_tag_info(), this.C0.getCrc_sign_id());
                        UtilsMy.z2(this.f38035t, this.C0);
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
            this.C.setDownloadGameNum(O);
            if (O > 0) {
                this.C.d();
            } else {
                this.C.g();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void updateProgress(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        ProgressBar progressBar = this.f38049y;
        if (progressBar instanceof DownloadProgressBar) {
            ((DownloadProgressBar) progressBar).update(downloadTask.getCrc_link_type_val(), 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateTitleButn(ResultMainBean resultMainBean, int i2) {
        if (resultMainBean.getFlag() == 1) {
            if (i2 == 1) {
                this.C0.setGame_follow(0);
            } else if (i2 == 2) {
                this.C0.setGame_follow(1);
                com.join.mgps.Util.i2.a(this.f38036t0).b("收藏成功");
                this.D.setImageResource(R.drawable.followed_image);
                this.E.setText("已收藏");
            } else if (i2 == 3) {
                this.C0.setGame_book(0);
            } else if (i2 == 4) {
                this.C0.setGame_book(1);
                Intent intent = new Intent("com.broadcast.bespeak.sussess");
                intent.putExtra("gameid", this.C0.getCrc_sign_id());
                this.f38036t0.sendBroadcast(intent);
                com.join.mgps.Util.a0.c0(this.f38036t0).O(this.f38036t0, 1, new g()).show();
            }
            q0();
            updateButn();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void v0() {
        ShareBean shareBean = new ShareBean();
        String share_url = this.C0.getShare_url();
        shareBean.setqZoneShareUrl(share_url);
        shareBean.setQqUrl(share_url);
        shareBean.setWechatFriendUrl(share_url);
        shareBean.setWechatShareUrl(share_url);
        shareBean.setWeiboShareUrl(share_url);
        shareBean.setTitle(this.C0.getGame_name());
        shareBean.setText(this.C0.getInfo());
        shareBean.setImageUrl(this.C0.getIco_remote());
        shareBean.setFrom(2);
        shareBean.setGameId(this.C0.getGame_id());
        if (this.C0.getShare_config() != null && this.C0.getShare_config().getShare_switch() == 1) {
            shareBean.setIntentData(this.C0.getShare_config().getJump_info());
        }
        com.join.mgps.Util.r.r(this.f38036t0, shareBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void w0() {
        ShareBean shareBean = new ShareBean();
        String share_url = this.C0.getShare_url();
        shareBean.setqZoneShareUrl(share_url);
        shareBean.setQqUrl(share_url);
        shareBean.setWechatFriendUrl(share_url);
        shareBean.setWechatShareUrl(share_url);
        shareBean.setWeiboShareUrl(share_url);
        shareBean.setImageUrl(this.C0.getIco_remote());
        shareBean.setTitle(this.C0.getGame_name());
        shareBean.setText(this.C0.getInfo());
        shareBean.setFrom(2);
        shareBean.setGameId(this.C0.getGame_id());
        if (this.C0.getShare_config() != null && this.C0.getShare_config().getShare_switch() == 1) {
            shareBean.setIntentData(this.C0.getShare_config().getJump_info());
        }
        com.join.mgps.Util.r.r(this.f38036t0, shareBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void x0(String str) {
        Toast.makeText(this.f38036t0, str, 0).show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 4000)
    public void y0() {
        com.join.mgps.Util.c.g(this.f38000e1);
        y0();
    }

    void z0() {
        try {
            this.f38012k1.setImageResource(R.drawable.line_blue_bg);
            Animation loadAnimation = AnimationUtils.loadAnimation(this.f38036t0, R.anim.img_translate);
            this.f38022o1 = loadAnimation;
            loadAnimation.setFillAfter(true);
            this.f38019n1.setVisibility(0);
            this.f38019n1.startAnimation(this.f38022o1);
            this.f38022o1.setAnimationListener(new e());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
