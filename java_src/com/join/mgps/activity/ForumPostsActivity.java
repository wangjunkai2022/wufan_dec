package com.join.mgps.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.common.view.ClearEditText;
import com.join.android.app.component.album.MyAlbumActivity;
import com.join.android.app.component.album.lib.ImageLoader;
import com.join.android.app.component.video.MediaController;
import com.join.android.app.component.video.MyVideoView;
import com.join.android.app.component.video.StandardVideoViewJC;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.HtmlDocUtil;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.activity.posting.PostingActivity;
import com.join.mgps.adapter.ForumPostsAdapter;
import com.join.mgps.customview.BaiduAdBannerRelativeLayout;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.KeyboardListenLayout;
import com.join.mgps.customview.RewardType;
import com.join.mgps.customview.WrapContentGridView;
import com.join.mgps.customview.XListView4ForumPost;
import com.join.mgps.customview.e;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.GroupInfoBean;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.RecommendLabelTag;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.TouristLoginRequestBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.join.mgps.ptr.PtrFrameLayout;
import com.tencent.bugly.Bugly;
import fm.jiecao.jcvideoplayer_lib.JCVideoPlayer;
import it.sephiroth.android.library.widget.AbsHListView;
import it.sephiroth.android.library.widget.HListView;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import net.bither.util.b;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.WindowFeature;
import org.androidannotations.annotations.res.StringRes;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@WindowFeature({10})
@EActivity(R.layout.mg_forum_post_activity)
/* loaded from: classes.dex */
public class ForumPostsActivity extends BaseAppCompatActivity implements AbsListView.OnScrollListener {

    /* renamed from: j2  reason: collision with root package name */
    private static final String f30024j2;

    /* renamed from: k2  reason: collision with root package name */
    public static final String f30025k2;

    /* renamed from: l2  reason: collision with root package name */
    public static final int f30026l2 = 3;

    /* renamed from: m2  reason: collision with root package name */
    private static final int f30027m2 = 9;

    /* renamed from: n2  reason: collision with root package name */
    public static final String f30028n2 = "key_mediacmd";

    /* renamed from: o2  reason: collision with root package name */
    public static final String f30029o2 = "key_mediacmd_params";
    LinearLayout A;
    View B;
    View C;
    @ViewById
    FrameLayout C1;
    ImageView D;
    @ViewById
    RelativeLayout D1;
    ImageView E;
    @ViewById
    MyVideoView E1;
    ImageView F;
    @ViewById
    SimpleDraweeView F1;
    ImageView G;
    private int G0;
    @ViewById
    ImageView G1;
    private int H0;
    @ViewById
    LinearLayout H1;
    private int I0;
    MediaController I1;
    private String J0;
    int J1;
    String K1;
    String L1;
    private com.join.mgps.dialog.p0 M0;
    boolean M1;
    private com.join.mgps.dialog.q0 N0;
    @ViewById
    PtrClassicFrameLayout Y1;
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    RelativeLayout f30030a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ImageView f30033b;

    /* renamed from: b1  reason: collision with root package name */
    private e0 f30034b1;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f30036c;

    /* renamed from: c1  reason: collision with root package name */
    com.join.mgps.rpc.b f30037c1;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    XListView4ForumPost f30039d;

    /* renamed from: d1  reason: collision with root package name */
    private BaiduAdBannerRelativeLayout f30040d1;

    /* renamed from: d2  reason: collision with root package name */
    i0 f30041d2;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    ForumLoadingView f30042e;

    /* renamed from: e1  reason: collision with root package name */
    private com.join.mgps.rpc.d f30043e1;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f30045f;

    /* renamed from: f1  reason: collision with root package name */
    private List<ForumBean.ForumGagType> f30046f1;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f30048g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f30051h;

    /* renamed from: h2  reason: collision with root package name */
    public AbsListView f30053h2;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    LinearLayout f30054i;
    public com.join.mgps.recycler.c i2;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ClearEditText f30056j;

    /* renamed from: j1  reason: collision with root package name */
    j0 f30057j1;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    Button f30058k;

    /* renamed from: k1  reason: collision with root package name */
    List<String> f30059k1;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    Button f30060l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    TextView f30062m;

    /* renamed from: m1  reason: collision with root package name */
    private com.join.mgps.dialog.s1 f30063m1;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    ImageView f30064n;
    @StringRes(resName = "net_excption")

    /* renamed from: n0  reason: collision with root package name */
    String f30065n0;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    TextView f30067o;
    @StringRes(resName = "connect_server_excption")

    /* renamed from: o0  reason: collision with root package name */
    String f30068o0;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    Button f30070p;

    /* renamed from: p0  reason: collision with root package name */
    com.join.mgps.rpc.h f30071p0;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    LinearLayout f30073q;
    @Extra

    /* renamed from: q0  reason: collision with root package name */
    ExtBean f30074q0;

    /* renamed from: q1  reason: collision with root package name */
    WrapContentGridView f30075q1;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    View f30076r;

    /* renamed from: r0  reason: collision with root package name */
    ForumBean.ForumPostsBean f30077r0;

    /* renamed from: r1  reason: collision with root package name */
    f0 f30078r1;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    LinearLayout f30079s;

    /* renamed from: s0  reason: collision with root package name */
    ForumBean.GameInfo f30080s0;

    /* renamed from: s1  reason: collision with root package name */
    private com.join.mgps.dialog.p0 f30081s1;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    HListView f30082t;

    /* renamed from: t0  reason: collision with root package name */
    volatile List<ForumBean.ForumCommentBean> f30083t0;

    /* renamed from: t1  reason: collision with root package name */
    private int f30084t1;

    /* renamed from: u  reason: collision with root package name */
    LinearLayout f30085u;

    /* renamed from: u0  reason: collision with root package name */
    Hashtable<Integer, ForumBean.ForumCommentBean> f30086u0;

    /* renamed from: v  reason: collision with root package name */
    LinearLayout f30088v;

    /* renamed from: v0  reason: collision with root package name */
    ForumPostsAdapter f30089v0;

    /* renamed from: w  reason: collision with root package name */
    LinearLayout f30091w;

    /* renamed from: w0  reason: collision with root package name */
    List<ForumPostsAdapter.u0> f30092w0;

    /* renamed from: x  reason: collision with root package name */
    View f30094x;

    /* renamed from: y  reason: collision with root package name */
    LinearLayout f30097y;

    /* renamed from: z  reason: collision with root package name */
    LinearLayout f30100z;
    final String H = "asc";
    final String I = "desc";
    int J = 0;
    String K = "asc";

    /* renamed from: x0  reason: collision with root package name */
    private final int f30095x0 = 1;

    /* renamed from: y0  reason: collision with root package name */
    private final int f30098y0 = 2;

    /* renamed from: z0  reason: collision with root package name */
    private final int f30101z0 = 4;
    private final int A0 = 17;
    private final int B0 = 18;
    private final int C0 = 20;
    private final int D0 = 33;
    private final int E0 = 34;
    private final int F0 = 36;
    private int K0 = 1;
    ForumPostsAdapter.i0 L0 = new k();
    private int O0 = 0;
    private int P0 = 0;
    private final int Q0 = 0;
    private final int R0 = 16;
    private final int S0 = 32;
    private final int T0 = 17;
    private final int U0 = 18;
    private final int V0 = 20;
    private final int W0 = 24;
    private int X0 = 0;
    int Y0 = 0;
    private b.e Z0 = new v();

    /* renamed from: a1  reason: collision with root package name */
    Handler f30031a1 = new x();

    /* renamed from: g1  reason: collision with root package name */
    private boolean f30049g1 = false;

    /* renamed from: h1  reason: collision with root package name */
    boolean f30052h1 = false;

    /* renamed from: i1  reason: collision with root package name */
    boolean f30055i1 = false;

    /* renamed from: l1  reason: collision with root package name */
    List<RecommendLabelTag> f30061l1 = new ArrayList();

    /* renamed from: n1  reason: collision with root package name */
    private final PostingActivity.m f30066n1 = new h();

    /* renamed from: o1  reason: collision with root package name */
    volatile boolean f30069o1 = false;

    /* renamed from: p1  reason: collision with root package name */
    View.OnClickListener f30072p1 = new i();

    /* renamed from: u1  reason: collision with root package name */
    boolean f30087u1 = false;

    /* renamed from: v1  reason: collision with root package name */
    e.d f30090v1 = new o();

    /* renamed from: w1  reason: collision with root package name */
    boolean f30093w1 = false;

    /* renamed from: x1  reason: collision with root package name */
    boolean f30096x1 = false;

    /* renamed from: y1  reason: collision with root package name */
    boolean f30099y1 = false;

    /* renamed from: z1  reason: collision with root package name */
    boolean f30102z1 = false;
    int A1 = -1;
    int B1 = 0;
    boolean N1 = false;
    int O1 = -1;
    int P1 = -1;
    int Q1 = 0;
    com.join.mgps.customview.t R1 = null;
    private Map<String, DownloadTask> S1 = new ConcurrentHashMap();
    Map<String, DownloadTask> T1 = new HashMap();
    Map<String, DownloadTask> U1 = new HashMap();
    private List<DownloadTask> V1 = new ArrayList();
    int W1 = 0;
    boolean X1 = false;
    boolean Z1 = false;

    /* renamed from: a2  reason: collision with root package name */
    boolean f30032a2 = false;

    /* renamed from: b2  reason: collision with root package name */
    boolean f30035b2 = false;

    /* renamed from: c2  reason: collision with root package name */
    boolean f30038c2 = false;

    /* renamed from: e2  reason: collision with root package name */
    public int f30044e2 = 0;

    /* renamed from: f2  reason: collision with root package name */
    public int f30047f2 = 0;

    /* renamed from: g2  reason: collision with root package name */
    public int f30050g2 = 0;

    /* loaded from: classes3.dex */
    public enum MediaCmd {
        CMD_PLAY,
        CMD_PLAY_BACKGROUND,
        CMD_PAUSE,
        CMD_STOP,
        CMD_FULLSCREEN,
        CMD_TRANSLATE_Y
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends ForumLoadingView.e {
        a(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            ForumPostsActivity.this.Y1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a0 implements com.join.mgps.customview.i {
        a0() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (!com.join.android.app.common.utils.f.j(ForumPostsActivity.this)) {
                ForumPostsActivity forumPostsActivity = ForumPostsActivity.this;
                forumPostsActivity.o3(forumPostsActivity.getString(R.string.net_connect_failed));
                ForumPostsActivity.this.r3();
                return;
            }
            ForumPostsActivity forumPostsActivity2 = ForumPostsActivity.this;
            forumPostsActivity2.W1(forumPostsActivity2.O0 + 1);
            if (ForumPostsActivity.this.P0 == -1) {
                ForumPostsActivity.this.r3();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends ForumLoadingView.e {
        b(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            ForumPostsActivity.this.Y1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b0 implements com.join.mgps.customview.j {
        b0() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (com.join.android.app.common.utils.f.j(ForumPostsActivity.this)) {
                ForumPostsActivity.this.P0 = 0;
                ForumPostsActivity.this.Y1();
                return;
            }
            ForumPostsActivity forumPostsActivity = ForumPostsActivity.this;
            forumPostsActivity.o3(forumPostsActivity.getString(R.string.net_connect_failed));
            ForumPostsActivity.this.e1(17);
            ForumPostsActivity.this.r3();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends ForumLoadingView.e {
        c(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            super.a(view);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            ForumPostsActivity.this.Y1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c0 implements AbsListView.OnScrollListener {
        c0() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumPostsActivity.this.M0.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d0 extends ForumLoadingView.e {
        d0(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            super.a(view);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            ForumPostsActivity.this.Y1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements DialogInterface.OnCancelListener {
        e() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            ForumPostsActivity.this.Y0 = 0;
        }
    }

    /* loaded from: classes3.dex */
    public class e0 extends PopupWindow {

        /* renamed from: a  reason: collision with root package name */
        private final Context f30112a;

        /* renamed from: b  reason: collision with root package name */
        private final View f30113b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnTouchListener {
            a() {
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 4) {
                    e0.this.dismiss();
                    return true;
                }
                return false;
            }
        }

        public e0(Context context, View view, int i2, int i4) {
            super(view, i2, i4, true);
            this.f30112a = context;
            this.f30113b = view;
            b();
            a();
        }

        private void a() {
        }

        private void b() {
            setBackgroundDrawable(new BitmapDrawable());
            setTouchable(true);
            setOutsideTouchable(true);
            setTouchInterceptor(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30116a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30117b;

        f(int i2, int i4) {
            this.f30116a = i2;
            this.f30117b = i4;
        }

        private void a(int i2) {
            ForumPostsActivity.this.t1(i2, 0);
        }

        private void b(int i2) {
            ForumPostsActivity.this.t1(0, i2);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumPostsActivity.this.K0 != 17) {
                if (ForumPostsActivity.this.K0 != 18 && ForumPostsActivity.this.K0 != 20) {
                    if (ForumPostsActivity.this.K0 != 33) {
                        if (ForumPostsActivity.this.K0 == 34 || ForumPostsActivity.this.K0 == 36) {
                            b(this.f30117b);
                        }
                    } else {
                        a(this.f30116a);
                    }
                } else {
                    ForumPostsActivity.this.k1(this.f30117b);
                }
            } else {
                ForumPostsActivity.this.j1(this.f30116a);
            }
            ForumPostsActivity.this.M0.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f0 extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        List<g0> f30119a = new ArrayList();

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ForumPostsActivity.this.X2();
                ForumPostsActivity.this.o1();
            }
        }

        /* loaded from: classes3.dex */
        class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ForumPostsActivity.this.r1();
                ForumPostsActivity.this.o1();
            }
        }

        /* loaded from: classes3.dex */
        class c implements View.OnClickListener {
            c() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ForumPostsActivity.this.u1();
                ForumPostsActivity.this.o1();
            }
        }

        /* loaded from: classes3.dex */
        class d implements View.OnClickListener {
            d() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ForumPostsActivity.this.p2();
                ForumPostsActivity.this.o1();
            }
        }

        /* loaded from: classes3.dex */
        class e implements View.OnClickListener {
            e() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ForumPostsActivity.this.p2();
                ForumPostsActivity.this.o1();
            }
        }

        /* loaded from: classes3.dex */
        class f implements View.OnClickListener {
            f() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ForumPostsActivity.this.s1();
                ForumPostsActivity.this.o1();
            }
        }

        /* loaded from: classes3.dex */
        class g implements View.OnClickListener {
            g() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ForumPostsActivity.this.f30084t1 = R.id.extFuncDelete;
                ForumPostsActivity.this.k3();
                ForumPostsActivity.this.o1();
            }
        }

        /* loaded from: classes3.dex */
        class h implements View.OnClickListener {
            h() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ForumPostsActivity.this.f30084t1 = R.id.extFuncBest;
                ForumPostsActivity.this.k3();
                ForumPostsActivity.this.o1();
            }
        }

        /* loaded from: classes3.dex */
        class i implements View.OnClickListener {
            i() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ForumPostsActivity.this.v1();
                ForumPostsActivity.this.o1();
            }
        }

        /* loaded from: classes3.dex */
        class j implements View.OnClickListener {
            j() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ForumPostsActivity.this.w1();
                ForumPostsActivity.this.o1();
            }
        }

        public f0() {
        }

        public List<g0> a(g0 g0Var) {
            if (g0Var == null) {
                return this.f30119a;
            }
            if (this.f30119a == null) {
                this.f30119a = new ArrayList();
            }
            this.f30119a.add(g0Var);
            return this.f30119a;
        }

        public List<g0> b() {
            return this.f30119a;
        }

        public void c(List<g0> list) {
            this.f30119a = list;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<g0> list = this.f30119a;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            List<g0> list = this.f30119a;
            if (list != null) {
                return list.get(i2);
            }
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i2) {
            return super.getItemViewType(i2);
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            h0 h0Var;
            if (view != null) {
                h0Var = (h0) view.getTag();
            } else {
                h0Var = new h0();
                view = LayoutInflater.from(ForumPostsActivity.this).inflate(R.layout.forum_posts_activity_functions_item, (ViewGroup) null);
                h0Var.f30149a = (ImageView) view.findViewById(R.id.icon);
                h0Var.f30150b = (TextView) view.findViewById(R.id.name);
                view.setTag(h0Var);
            }
            g0 g0Var = (g0) getItem(i2);
            int i4 = g0Var.f30142a;
            if (i4 == 1) {
                h0Var.f30149a.setBackgroundResource(g0Var.f30144c ? R.drawable.more_func_favorite_selected : R.drawable.more_func_favorite);
                h0Var.f30150b.setText("收藏");
                view.setOnClickListener(new b());
            } else if (i4 == 2) {
                h0Var.f30149a.setBackgroundResource(R.drawable.more_func_share);
                h0Var.f30150b.setText("分享");
                view.setOnClickListener(new c());
            } else if (i4 == 3) {
                h0Var.f30149a.setBackgroundResource(R.drawable.more_func_alphabet);
                h0Var.f30150b.setText("倒序查看");
                view.setOnClickListener(new d());
            } else if (i4 == 4) {
                h0Var.f30149a.setBackgroundResource(R.drawable.more_func_alphabet_selected);
                h0Var.f30150b.setText("正序查看");
                view.setOnClickListener(new e());
            } else if (i4 == 5) {
                h0Var.f30149a.setBackgroundResource(R.drawable.more_func_report);
                h0Var.f30150b.setText("举报");
                view.setOnClickListener(new f());
            } else if (i4 == 6) {
                h0Var.f30149a.setBackgroundResource(R.drawable.more_func_delete);
                h0Var.f30150b.setText("删帖");
                view.setOnClickListener(new g());
            } else if (i4 == 7) {
                h0Var.f30149a.setBackgroundResource(g0Var.f30145d ? R.drawable.more_func_best_pressed : R.drawable.more_func_best_default);
                h0Var.f30150b.setText("加精");
                view.setOnClickListener(new h());
            } else if (i4 == 8) {
                h0Var.f30149a.setBackgroundResource(R.drawable.more_func_tag_add);
                h0Var.f30150b.setText("收录至话题");
                view.setOnClickListener(new i());
            } else if (i4 == 9) {
                h0Var.f30149a.setBackgroundResource(R.drawable.more_func_tag_del);
                h0Var.f30150b.setText("移除话题");
                view.setOnClickListener(new j());
            } else if (i4 == 10) {
                h0Var.f30149a.setBackgroundResource(g0Var.f30146e ? R.drawable.more_func_first_selected : R.drawable.more_func_first_default);
                h0Var.f30150b.setText("置顶");
                view.setOnClickListener(new a());
            }
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return super.getViewTypeCount();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements j0.c {
        g() {
        }

        @Override // com.join.mgps.activity.ForumPostsActivity.j0.c
        public void a(int i2, String str) {
            ForumPostsActivity.this.f30059k1.remove(i2);
            ForumPostsActivity forumPostsActivity = ForumPostsActivity.this;
            forumPostsActivity.f30057j1.c(forumPostsActivity.f30059k1);
            ForumPostsActivity.this.f30057j1.notifyDataSetChanged();
        }

        @Override // com.join.mgps.activity.ForumPostsActivity.j0.c
        public void b() {
            ForumPostsActivity.this.goMyAlbumActivity4PickPic();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g0 {

        /* renamed from: g  reason: collision with root package name */
        public static final int f30132g = 1;

        /* renamed from: h  reason: collision with root package name */
        public static final int f30133h = 2;

        /* renamed from: i  reason: collision with root package name */
        public static final int f30134i = 3;

        /* renamed from: j  reason: collision with root package name */
        public static final int f30135j = 4;

        /* renamed from: k  reason: collision with root package name */
        public static final int f30136k = 5;

        /* renamed from: l  reason: collision with root package name */
        public static final int f30137l = 6;

        /* renamed from: m  reason: collision with root package name */
        public static final int f30138m = 7;

        /* renamed from: n  reason: collision with root package name */
        public static final int f30139n = 8;

        /* renamed from: o  reason: collision with root package name */
        public static final int f30140o = 9;

        /* renamed from: p  reason: collision with root package name */
        public static final int f30141p = 10;

        /* renamed from: a  reason: collision with root package name */
        public int f30142a;

        /* renamed from: b  reason: collision with root package name */
        public String f30143b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f30144c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f30145d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f30146e;

        g0() {
        }
    }

    /* loaded from: classes3.dex */
    class h implements PostingActivity.m {
        h() {
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void a(int i2) {
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void b(int i2) {
            ForumPostsActivity.this.finish();
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void c(GroupInfoBean groupInfoBean) {
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void d(int i2) {
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void e(int i2) {
            if (i2 == 4355) {
                IntentUtil.getInstance().goShareWebActivity(ForumPostsActivity.this, com.join.mgps.rpc.g.f51551t);
            } else if (i2 != 4356) {
            } else {
                IntentUtil.getInstance().goShareWebActivity(ForumPostsActivity.this, com.join.mgps.rpc.g.f51548s);
            }
        }
    }

    /* loaded from: classes3.dex */
    class h0 {

        /* renamed from: a  reason: collision with root package name */
        public ImageView f30149a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f30150b;

        h0() {
        }
    }

    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            switch (view.getId()) {
                case R.id.moreFuncBest /* 2131298942 */:
                    ForumPostsActivity.this.f30084t1 = R.id.extFuncBest;
                    ForumPostsActivity.this.k3();
                    break;
                case R.id.moreFuncDelete /* 2131298944 */:
                    ForumPostsActivity.this.f30084t1 = R.id.extFuncDelete;
                    ForumPostsActivity.this.k3();
                    break;
                case R.id.moreFuncFavorite /* 2131298946 */:
                    ForumPostsActivity.this.r1();
                    break;
                case R.id.moreFuncReport /* 2131298948 */:
                    ForumPostsActivity.this.s1();
                    break;
                case R.id.moreFuncShare /* 2131298950 */:
                    ForumPostsActivity.this.u1();
                    break;
                case R.id.moreFuncSort /* 2131298952 */:
                    ForumPostsActivity.this.p2();
                    break;
            }
            if (ForumPostsActivity.this.f30034b1.isShowing()) {
                ForumPostsActivity.this.f30034b1.dismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i0 extends Dialog implements View.OnClickListener, AdapterView.OnItemSelectedListener {

        /* renamed from: a  reason: collision with root package name */
        private List<ForumBean.ForumGagType> f30153a;

        /* renamed from: b  reason: collision with root package name */
        k0<ForumBean.ForumGagType> f30154b;

        /* renamed from: c  reason: collision with root package name */
        Spinner f30155c;

        /* renamed from: d  reason: collision with root package name */
        EditText f30156d;

        /* renamed from: e  reason: collision with root package name */
        private String f30157e;

        /* renamed from: f  reason: collision with root package name */
        int f30158f;

        public i0(Context context) {
            super(context, R.style.dialog_error);
            this.f30158f = -1;
            View inflate = LayoutInflater.from(context).inflate(R.layout.mg_forum_post_gag_dialog, (ViewGroup) null);
            setContentView(inflate);
            setCancelable(true);
            setCanceledOnTouchOutside(false);
            inflate.measure(0, 0);
            this.f30155c = (Spinner) com.join.mgps.Util.p2.b(inflate, R.id.spinner);
            this.f30156d = (EditText) com.join.mgps.Util.p2.b(inflate, R.id.txt);
            this.f30156d.setMinHeight(this.f30155c.getMeasuredHeight());
            ((Button) com.join.mgps.Util.p2.b(inflate, R.id.dialog_button_ok)).setOnClickListener(this);
            ((Button) com.join.mgps.Util.p2.b(inflate, R.id.dialog_button_cancle)).setOnClickListener(this);
            this.f30155c.setOnItemSelectedListener(this);
            k0<ForumBean.ForumGagType> k0Var = new k0<>(getContext(), R.layout.mg_forum_post_gag_spinner_item);
            this.f30154b = k0Var;
            this.f30155c.setAdapter((SpinnerAdapter) k0Var);
        }

        public void a(String str) {
            this.f30157e = str;
        }

        public void b(List<ForumBean.ForumGagType> list) {
            if (this.f30153a == null) {
                this.f30153a = new ArrayList();
            }
            this.f30153a.clear();
            this.f30153a.addAll(list);
            if (this.f30154b == null) {
                k0<ForumBean.ForumGagType> k0Var = new k0<>(getContext(), R.layout.mg_forum_post_gag_spinner_item);
                this.f30154b = k0Var;
                this.f30155c.setAdapter((SpinnerAdapter) k0Var);
            }
            this.f30154b.clear();
            ForumBean.ForumGagType forumGagType = new ForumBean.ForumGagType();
            forumGagType.setType(-1);
            forumGagType.setName("设置禁言时间");
            this.f30154b.add(forumGagType);
            this.f30154b.addAll(this.f30153a);
            this.f30154b.notifyDataSetChanged();
        }

        @Override // android.app.Dialog, android.content.DialogInterface
        public void dismiss() {
            this.f30158f = -1;
            super.dismiss();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id != R.id.dialog_button_ok) {
                if (id == R.id.dialog_button_cancle) {
                    dismiss();
                    return;
                }
                return;
            }
            String obj = this.f30156d.getText().toString();
            if (TextUtils.isEmpty(obj)) {
                com.join.mgps.Util.i2.a(getContext()).b("请填写禁言理由");
                return;
            }
            Spinner spinner = this.f30155c;
            int selectedItemPosition = spinner != null ? spinner.getSelectedItemPosition() : 0;
            k0<ForumBean.ForumGagType> k0Var = this.f30154b;
            if (k0Var != null && selectedItemPosition < k0Var.getCount()) {
                ForumBean.ForumGagType item = this.f30154b.getItem(selectedItemPosition);
                if (item.getType() != -1) {
                    this.f30158f = item.getType();
                } else {
                    com.join.mgps.Util.i2.a(getContext()).b("请选择禁言时间");
                    return;
                }
            }
            ForumPostsActivity.this.q2(this.f30157e, this.f30158f, obj);
            dismiss();
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j4) {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* loaded from: classes3.dex */
    class j implements PopupWindow.OnDismissListener {
        j() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            WindowManager.LayoutParams attributes = ForumPostsActivity.this.getWindow().getAttributes();
            attributes.alpha = 1.0f;
            ForumPostsActivity.this.getWindow().setAttributes(attributes);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class j0 extends BaseAdapter {

        /* renamed from: e  reason: collision with root package name */
        private static final String f30161e = "add_image";

        /* renamed from: b  reason: collision with root package name */
        private Context f30163b;

        /* renamed from: d  reason: collision with root package name */
        private c f30165d;

        /* renamed from: c  reason: collision with root package name */
        boolean f30164c = false;

        /* renamed from: a  reason: collision with root package name */
        private List<String> f30162a = new ArrayList();

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                j0 j0Var = j0.this;
                if (j0Var.f30164c) {
                    return;
                }
                j0Var.f30164c = true;
                if (j0Var.f30165d != null) {
                    j0.this.f30165d.b();
                }
            }
        }

        /* loaded from: classes3.dex */
        class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f30167a;

            b(int i2) {
                this.f30167a = i2;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (j0.this.f30165d != null) {
                    c cVar = j0.this.f30165d;
                    int i2 = this.f30167a;
                    cVar.a(i2, (String) j0.this.getItem(i2));
                }
            }
        }

        /* loaded from: classes3.dex */
        public interface c {
            void a(int i2, String str);

            void b();
        }

        /* loaded from: classes3.dex */
        class d {

            /* renamed from: a  reason: collision with root package name */
            ImageView f30169a;

            /* renamed from: b  reason: collision with root package name */
            ImageView f30170b;

            d() {
            }
        }

        public j0(Context context) {
            this.f30163b = context;
        }

        private ImageLoader b() {
            return ImageLoader.r(3, ImageLoader.Type.LIFO);
        }

        private void e(View view, View view2) {
            float f4 = this.f30163b.getResources().getDisplayMetrics().density;
            int i2 = (this.f30163b.getResources().getDisplayMetrics().widthPixels / 4) - 10;
            view2.setLayoutParams(new AbsHListView.LayoutParams(i2, -1));
            ((ViewGroup) view2).getChildAt(0).setLayoutParams(new LinearLayout.LayoutParams(i2, i2));
            view.setLayoutParams(new LinearLayout.LayoutParams(-1, (int) (this.f30163b.getResources().getDisplayMetrics().scaledDensity * 200.0f)));
        }

        public void c(List<String> list) {
            if (this.f30162a == null) {
                this.f30162a = new ArrayList();
            }
            this.f30162a.clear();
            this.f30162a.addAll(list);
            if (list.size() < 9) {
                this.f30162a.add(f30161e);
            }
        }

        public void d(boolean z3) {
            this.f30164c = z3;
        }

        public void f(c cVar) {
            this.f30165d = cVar;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<String> list = this.f30162a;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            List<String> list = this.f30162a;
            if (list == null) {
                return null;
            }
            return list.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            d dVar;
            try {
                if (view != null) {
                    dVar = (d) view.getTag();
                } else {
                    view = LayoutInflater.from(this.f30163b).inflate(R.layout.forum_post_pic_item, (ViewGroup) null);
                    dVar = new d();
                    dVar.f30169a = (ImageView) view.findViewById(R.id.image);
                    dVar.f30170b = (ImageView) view.findViewById(R.id.image_delete);
                    view.setTag(dVar);
                }
                dVar.f30169a.setOnClickListener(null);
                dVar.f30170b.setVisibility(0);
                if (i2 == getCount() - 1 && this.f30162a.get(i2).equals(f30161e)) {
                    dVar.f30170b.setVisibility(8);
                    dVar.f30169a.setImageResource(R.drawable.pic_add);
                    dVar.f30169a.setOnClickListener(new a());
                } else {
                    b().v(this.f30162a.get(i2), dVar.f30169a);
                    dVar.f30170b.setOnClickListener(new b(i2));
                }
                e(viewGroup, view);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            return view;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
        }
    }

    /* loaded from: classes3.dex */
    class k implements ForumPostsAdapter.i0 {
        k() {
        }

        @Override // com.join.mgps.adapter.ForumPostsAdapter.i0
        public void a(int i2) {
            ForumPostsActivity forumPostsActivity = ForumPostsActivity.this;
            if (!com.join.mgps.Util.i0.Y0(forumPostsActivity)) {
                com.join.mgps.Util.i2.a(forumPostsActivity).b("用户未登录，请登录");
                com.join.mgps.Util.i0.L0(forumPostsActivity);
            } else if (ForumPostsActivity.this.u3()) {
                ForumPostsActivity.this.R2();
                ForumPostsActivity.this.r2();
            } else {
                ForumPostsActivity.this.n3(-1);
                ForumPostsActivity.this.d3();
            }
        }

        @Override // com.join.mgps.adapter.ForumPostsAdapter.i0
        public void b(int i2) {
            ForumPostsActivity forumPostsActivity = ForumPostsActivity.this;
            forumPostsActivity.c3(forumPostsActivity.f30077r0);
        }

        @Override // com.join.mgps.adapter.ForumPostsAdapter.i0
        public void c(int i2) {
            ForumPostsAdapter.u0.o oVar = (ForumPostsAdapter.u0.o) ForumPostsActivity.this.f30092w0.get(i2).a();
            ForumPostsActivity.this.A1 = i2;
            Bundle bundle = new Bundle();
            bundle.putString("key_mediacmd", MGMainActivity.MediaCmd.CMD_PLAY.name());
            bundle.putStringArray("key_mediacmd_params", new String[]{ForumPostsActivity.this.A1 + "", oVar.f39796b, oVar.f39795a});
            ForumPostsActivity.this.callbackPlayVideo(bundle);
            ForumPostsActivity.this.d2();
        }

        @Override // com.join.mgps.adapter.ForumPostsAdapter.i0
        public void d(int i2) {
            ForumPostsActivity.this.K0 = 17;
            ForumPostsActivity.this.l3(i2, 0);
        }

        @Override // com.join.mgps.adapter.ForumPostsAdapter.i0
        public void e(String str) {
            ForumPostsActivity forumPostsActivity = ForumPostsActivity.this;
            forumPostsActivity.X1 = true;
            forumPostsActivity.x1(str);
        }

        @Override // com.join.mgps.adapter.ForumPostsAdapter.i0
        public void f(int i2) {
            ForumPostsActivity.this.t1(0, i2);
        }

        @Override // com.join.mgps.adapter.ForumPostsAdapter.i0
        public void g(int i2) {
            ForumPostsActivity.this.K0 = 18;
            ForumPostsActivity.this.l3(0, i2);
        }

        @Override // com.join.mgps.adapter.ForumPostsAdapter.i0
        public void h(int i2, String str) {
            q(i2, str);
        }

        @Override // com.join.mgps.adapter.ForumPostsAdapter.i0
        public void i(View view, int i2) {
            ForumPostsActivity.this.I1(true);
        }

        @Override // com.join.mgps.adapter.ForumPostsAdapter.i0
        public void j(int i2) {
            ForumPostsActivity.this.t1(i2, 0);
        }

        @Override // com.join.mgps.adapter.ForumPostsAdapter.i0
        public void k(int i2, int i4, String str) {
            ForumPostsActivity.this.I1(true);
            ForumPostsActivity.this.K0 = 4;
            ForumPostsActivity.this.H0 = i2;
            ForumPostsActivity.this.I0 = i4;
            ForumPostsActivity.this.f30056j.setText("");
            ForumPostsActivity.this.f30056j.requestFocus();
            ForumPostsActivity forumPostsActivity = ForumPostsActivity.this;
            forumPostsActivity.showSystemKeyBoard(forumPostsActivity.f30056j);
            ClearEditText clearEditText = ForumPostsActivity.this.f30056j;
            clearEditText.setHint("回复" + str + ":");
        }

        @Override // com.join.mgps.adapter.ForumPostsAdapter.i0
        public void l() {
            ForumPostsActivity.this.s1();
        }

        @Override // com.join.mgps.adapter.ForumPostsAdapter.i0
        public void m(int i2) {
            ForumPostsActivity.this.i3(i2);
        }

        @Override // com.join.mgps.adapter.ForumPostsAdapter.i0
        public void n(View view, int i2) {
            ForumPostsActivity.this.I1(true);
        }

        @Override // com.join.mgps.adapter.ForumPostsAdapter.i0
        public void o() {
            ForumPostsActivity.this.h1();
        }

        @Override // com.join.mgps.adapter.ForumPostsAdapter.i0
        public void p(int i2) {
            ForumPostsActivity forumPostsActivity = ForumPostsActivity.this;
            forumPostsActivity.G1(forumPostsActivity.f30077r0.getPid(), i2);
        }

        @UiThread
        void q(int i2, String str) {
            ForumPostsActivity.this.K0 = 2;
            ForumPostsActivity.this.H0 = i2;
            ForumPostsActivity.this.I0 = 0;
            ForumPostsActivity.this.I1(true);
            ForumPostsActivity.this.f30056j.setText("");
            ClearEditText clearEditText = ForumPostsActivity.this.f30056j;
            clearEditText.setHint("回复" + str + ":");
            ForumPostsActivity.this.f30056j.requestFocus();
            ForumPostsActivity forumPostsActivity = ForumPostsActivity.this;
            forumPostsActivity.showSystemKeyBoard(forumPostsActivity.f30056j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k0<T> extends ArrayAdapter<ForumBean.ForumGagType> {

        /* renamed from: a  reason: collision with root package name */
        private int f30173a;

        public k0(@NonNull Context context, @LayoutRes int i2) {
            super(context, i2);
            this.f30173a = i2;
        }

        @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
        public View getDropDownView(int i2, @Nullable View view, @NonNull ViewGroup viewGroup) {
            ForumBean.ForumGagType forumGagType = (ForumBean.ForumGagType) getItem(i2);
            View inflate = ForumPostsActivity.this.getLayoutInflater().inflate(this.f30173a, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(16908308);
            if (textView != null) {
                textView.setText(forumGagType.getName());
            }
            return inflate;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        @NonNull
        public View getView(int i2, @Nullable View view, @NonNull ViewGroup viewGroup) {
            ForumBean.ForumGagType forumGagType = (ForumBean.ForumGagType) getItem(i2);
            View inflate = ForumPostsActivity.this.getLayoutInflater().inflate(this.f30173a, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(16908308);
            if (textView != null) {
                textView.setText(forumGagType.getName());
            }
            return inflate;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements PopupWindow.OnDismissListener {
        l() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            WindowManager.LayoutParams attributes = ForumPostsActivity.this.getWindow().getAttributes();
            attributes.alpha = 1.0f;
            ForumPostsActivity.this.getWindow().setAttributes(attributes);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumPostsActivity.this.f30084t1 = -1;
            ForumPostsActivity.this.f30081s1.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumPostsActivity.this.y1();
            ForumPostsActivity.this.f30081s1.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    class o implements e.d {
        o() {
        }

        @Override // com.join.mgps.customview.e.d
        public void a(int i2) {
        }

        @Override // com.join.mgps.customview.e.d
        public void b(ForumBean.ForumPostsBean forumPostsBean) {
        }

        @Override // com.join.mgps.customview.e.d
        public void c(int i2, boolean z3) {
            if (z3) {
                ForumPostsActivity.this.z1();
            }
        }

        @Override // com.join.mgps.customview.e.d
        public void d(ForumBean.ForumPostsBean forumPostsBean) {
            ForumBean.ForumPostsBean forumPostsBean2 = ForumPostsActivity.this.f30077r0;
            if (forumPostsBean2 != null) {
                forumPostsBean2.setIs_favorite(forumPostsBean.is_favorite());
            }
        }

        @Override // com.join.mgps.customview.e.d
        public void e(ForumBean.ForumPostsBean forumPostsBean) {
            ForumBean.ForumPostsBean forumPostsBean2 = ForumPostsActivity.this.f30077r0;
            if (forumPostsBean2 != null) {
                forumPostsBean2.setBest(forumPostsBean.getBest());
            }
        }

        @Override // com.join.mgps.customview.e.d
        public void onCancel() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p implements MediaPlayer.OnCompletionListener {
        p() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            ForumPostsActivity.this.l2(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q implements MediaPlayer.OnPreparedListener {
        q() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            ForumPostsActivity.this.Q2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class r implements MediaPlayer.OnErrorListener {
        r() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i2, int i4) {
            ForumPostsActivity.this.l2(true);
            com.join.mgps.Util.i2.a(ForumPostsActivity.this.E1.getContext()).b("视频播放失败");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s implements MyVideoView.h {
        s() {
        }

        @Override // com.join.android.app.component.video.MyVideoView.h
        public boolean a(boolean z3) {
            com.join.mgps.Util.u0.e("onScreenChanged", "fullscreen=" + z3);
            ForumPostsActivity.this.A1();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            view.setVisibility(8);
            ForumPostsActivity.this.Q2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class u implements com.join.mgps.ptr.c {
        u() {
        }

        @Override // com.join.mgps.ptr.c
        public void a(PtrFrameLayout ptrFrameLayout) {
        }

        @Override // com.join.mgps.ptr.c
        public void b(PtrFrameLayout ptrFrameLayout, boolean z3, byte b4, com.join.mgps.ptr.indicator.a aVar) {
            ForumPostsActivity.this.d2();
        }

        @Override // com.join.mgps.ptr.c
        public void c(PtrFrameLayout ptrFrameLayout) {
        }

        @Override // com.join.mgps.ptr.c
        public void d(PtrFrameLayout ptrFrameLayout) {
        }

        @Override // com.join.mgps.ptr.c
        public void e(PtrFrameLayout ptrFrameLayout) {
            ForumPostsActivity.this.q3();
        }
    }

    /* loaded from: classes3.dex */
    class v implements b.e {
        v() {
        }

        private void b(List<String> list) {
            ForumPostsActivity forumPostsActivity = ForumPostsActivity.this;
            if (forumPostsActivity.Y0 == 1) {
                forumPostsActivity.Y0 = 2;
                ForumRequestBean.ForumPostsCommentRequestBean b02 = com.join.mgps.Util.i0.b0(forumPostsActivity, forumPostsActivity.G0, ForumPostsActivity.this.J0, ForumPostsActivity.this.f30059k1);
                if (list != null && list.size() != 0) {
                    b02.setImages(list);
                }
                ForumPostsActivity.this.s3(b02);
            }
        }

        @Override // net.bither.util.b.e
        public void a(Boolean bool, Map<String, String> map, Map<String, Integer> map2) {
            List<String> list;
            if (bool.booleanValue() && (list = ForumPostsActivity.this.f30059k1) != null && list.size() != 0) {
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < ForumPostsActivity.this.f30059k1.size(); i2++) {
                    String str = ForumPostsActivity.this.f30059k1.get(i2);
                    int intValue = map2.get(str).intValue();
                    String str2 = map.get(str);
                    if (intValue == 1) {
                        arrayList.add(str2);
                    }
                }
                b(arrayList);
                return;
            }
            b(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class w {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f30186a;

        static {
            int[] iArr = new int[HtmlDocUtil.PostDetail.Type.values().length];
            f30186a = iArr;
            try {
                iArr[HtmlDocUtil.PostDetail.Type.Text.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f30186a[HtmlDocUtil.PostDetail.Type.Image.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f30186a[HtmlDocUtil.PostDetail.Type.Video.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes3.dex */
    class x extends Handler {
        x() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            ForumPostsActivity.this.f30039d.u();
            ForumPostsActivity.this.f30039d.t();
            if (ForumPostsActivity.this.P0 == -1) {
                ForumPostsActivity.this.f30039d.setNoMore();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class y implements KeyboardListenLayout.a {
        y() {
        }

        @Override // com.join.mgps.customview.KeyboardListenLayout.a
        public void onHidden() {
        }

        @Override // com.join.mgps.customview.KeyboardListenLayout.a
        public void onShown() {
            if (ForumPostsActivity.this.K0 == 1) {
                ForumPostsActivity.this.I1(false);
            } else {
                ForumPostsActivity.this.I1(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class z implements View.OnFocusChangeListener {
        z() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z3) {
            if (z3) {
                ForumPostsActivity.this.f30062m.setVisibility(8);
                ForumPostsActivity.this.f30058k.setVisibility(8);
                ForumPostsActivity.this.f30060l.setVisibility(0);
                ForumPostsActivity.this.showSystemKeyBoard(view);
                return;
            }
            ForumPostsActivity.this.f30062m.setVisibility(0);
            ForumPostsActivity.this.f30058k.setVisibility(0);
            ForumPostsActivity.this.f30060l.setVisibility(8);
        }
    }

    static {
        String simpleName = ForumPostsActivity.class.getSimpleName();
        f30024j2 = simpleName;
        f30025k2 = simpleName + "key_forum_posts_bean";
    }

    private void A2(List<ForumBean.ForumGagType> list) {
        if (list == null) {
            return;
        }
        if (this.f30046f1 == null) {
            this.f30046f1 = new ArrayList();
        }
        this.f30046f1.clear();
        this.f30046f1.addAll(list);
    }

    private List<String> D1(Intent intent) {
        Bundle extras;
        if (intent == null || (extras = intent.getExtras()) == null) {
            return null;
        }
        return (List) extras.get(MyAlbumActivity.f17332w);
    }

    private void G2() {
        if (AccountUtil_.getInstance_(this).isTourist()) {
            touristLogin();
        } else {
            showMessage(getString(R.string.forum_user_login_invalid));
        }
    }

    private void H2() {
        int i2 = 0;
        while (true) {
            List<DownloadTask> list = this.V1;
            if (list == null || i2 >= list.size()) {
                return;
            }
            g2(g1.f.G().B(this.V1.get(i2).getCrc_link_type_val()), 4);
            i2++;
        }
    }

    private void J1() {
        this.f30030a.setVisibility(8);
        this.f30039d.setVisibility(8);
        this.f30054i.setVisibility(8);
    }

    private void J2() {
        if (this.f30083t0 != null) {
            TextView textView = this.f30062m;
            textView.setText("已有" + this.f30077r0.getCommit() + "条回复");
            return;
        }
        this.f30062m.setText("已有0条回复");
    }

    private boolean L1(View view, MotionEvent motionEvent) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i2 = iArr[0];
        int i4 = iArr[1];
        return motionEvent.getX() >= ((float) i2) && motionEvent.getX() <= ((float) (i2 + view.getWidth())) && motionEvent.getY() >= ((float) i4) && motionEvent.getY() <= ((float) (i4 + view.getHeight()));
    }

    private void N1() {
        View inflate = LayoutInflater.from(this).inflate(R.layout.forum_posts_activity_functions1, (ViewGroup) null);
        e0 e0Var = new e0(this, inflate, -1, -2);
        this.f30034b1 = e0Var;
        e0Var.setOnDismissListener(new l());
        this.f30075q1 = (WrapContentGridView) inflate.findViewById(R.id.gridView);
        if (this.f30078r1 == null) {
            this.f30078r1 = new f0();
        }
        this.f30075q1.setAdapter((ListAdapter) this.f30078r1);
        P1();
    }

    private void O1() {
        View inflate = LayoutInflater.from(this).inflate(R.layout.forum_posts_activity_functions, (ViewGroup) null);
        e0 e0Var = new e0(this, inflate, -1, -2);
        this.f30034b1 = e0Var;
        e0Var.setOnDismissListener(new j());
        this.f30085u = (LinearLayout) inflate.findViewById(R.id.moreFuncFavorite);
        this.f30088v = (LinearLayout) inflate.findViewById(R.id.moreFuncShare);
        this.f30091w = (LinearLayout) inflate.findViewById(R.id.moreFuncSort);
        this.f30094x = inflate.findViewById(R.id.row2);
        this.f30097y = (LinearLayout) inflate.findViewById(R.id.moreFuncDelete);
        this.f30100z = (LinearLayout) inflate.findViewById(R.id.moreFuncReport);
        this.A = (LinearLayout) inflate.findViewById(R.id.moreFuncBest);
        this.B = inflate.findViewById(R.id.block1);
        this.C = inflate.findViewById(R.id.block2);
        this.D = (ImageView) inflate.findViewById(R.id.moreFuncFavoriteImg);
        this.E = (ImageView) inflate.findViewById(R.id.moreFuncShareImg);
        this.F = (ImageView) inflate.findViewById(R.id.moreFuncSortImg);
        this.G = (ImageView) inflate.findViewById(R.id.moreFuncBestImg);
        this.f30085u.setOnClickListener(this.f30072p1);
        this.f30088v.setOnClickListener(this.f30072p1);
        this.f30091w.setOnClickListener(this.f30072p1);
        this.f30097y.setOnClickListener(this.f30072p1);
        this.f30100z.setOnClickListener(this.f30072p1);
        this.A.setOnClickListener(this.f30072p1);
    }

    private void P1() {
        int i2;
        f0 f0Var = this.f30078r1;
        if (f0Var == null) {
            return;
        }
        if (f0Var.b() != null) {
            this.f30078r1.b().clear();
        }
        int[] iArr = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        String[] strArr = {"收藏", "分享", "倒序查看", "正序查看", "举报", "删帖", "加精", "收录至话题", "移除话题", "置顶"};
        while (i2 < 10) {
            int i4 = iArr[i2];
            String str = strArr[i2];
            g0 g0Var = new g0();
            if (i4 == 7) {
                if (this.f30077r0.is_best_allow()) {
                    if (this.f30077r0.getBest() == 1) {
                        str = "取消精华";
                    }
                    g0Var.f30145d = this.f30077r0.getBest() == 1;
                    g0Var.f30142a = i4;
                    g0Var.f30143b = str;
                    this.f30078r1.a(g0Var);
                }
            } else if (i4 == 6) {
                i2 = this.f30077r0.is_del_allow() ? 0 : i2 + 1;
                g0Var.f30142a = i4;
                g0Var.f30143b = str;
                this.f30078r1.a(g0Var);
            } else if (i4 == 8) {
                if (!this.f30077r0.is_add_tag_allow()) {
                }
                g0Var.f30142a = i4;
                g0Var.f30143b = str;
                this.f30078r1.a(g0Var);
            } else if (i4 == 9) {
                if (!this.f30077r0.is_remove_tag_allow()) {
                }
                g0Var.f30142a = i4;
                g0Var.f30143b = str;
                this.f30078r1.a(g0Var);
            } else if (i4 == 10) {
                if (this.f30077r0.is_first()) {
                    if (this.f30077r0.getFirst() == 1) {
                        str = "取消置顶";
                    }
                    g0Var.f30146e = this.f30077r0.getFirst() == 1;
                    g0Var.f30142a = i4;
                    g0Var.f30143b = str;
                    this.f30078r1.a(g0Var);
                }
            } else {
                if (i4 == 1) {
                    g0Var.f30144c = this.f30077r0.is_favorite();
                } else if (i4 == 3) {
                    if (!this.K.equals("asc")) {
                    }
                } else if (i4 == 4 && !this.K.equals("desc")) {
                }
                g0Var.f30142a = i4;
                g0Var.f30143b = str;
                this.f30078r1.a(g0Var);
            }
        }
        this.f30078r1.notifyDataSetChanged();
    }

    private void Q1() {
        this.f30059k1 = new ArrayList();
        j0 j0Var = new j0(this);
        this.f30057j1 = j0Var;
        j0Var.c(this.f30059k1);
        this.f30057j1.f(new g());
        this.f30082t.setAdapter((ListAdapter) this.f30057j1);
    }

    private void R1() {
        this.f30045f.setVisibility(0);
        M2();
        String str = (String) getIntent().getSerializableExtra(f30025k2);
        if (!com.join.mgps.Util.d2.h(str)) {
            this.f30077r0 = (ForumBean.ForumPostsBean) JsonMapper.getInstance().fromJson(str, JsonMapper.getInstance().createCollectionType(ForumBean.ForumPostsBean.class, new Class[0]));
        }
        if (this.f30077r0 == null) {
            z1();
            return;
        }
        this.N0 = new com.join.mgps.dialog.q0(this);
        this.f30036c.setText("帖子详情");
        h1();
        try {
            ((KeyboardListenLayout) this.f30030a.getParent()).setOnSoftKeyboardListener(new y());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        this.f30056j.setOnFocusChangeListener(new z());
        this.f30083t0 = new ArrayList();
        this.f30086u0 = new Hashtable<>();
        this.f30039d.setPreLoadCount(com.join.mgps.Util.i0.f27593e);
        this.f30039d.setPullLoadEnable(new a0());
        this.f30039d.setPullRefreshEnable(new b0());
        this.f30039d.setOnScrollListener(new c0());
        this.f30039d.requestFocus();
        SpannableString spannableString = new SpannableString("每次最多可以分享9张图");
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#808080")), 8, 9, 33);
        this.f30067o.setText(spannableString);
        Q1();
        this.f30089v0 = new ForumPostsAdapter(this);
        ArrayList arrayList = new ArrayList();
        this.f30092w0 = arrayList;
        this.f30089v0.n0(arrayList);
        this.f30089v0.m0(this.L0);
        this.f30039d.setAdapter((ListAdapter) this.f30089v0);
        this.f30039d.setOnScrollListener(this);
        N1();
        b3();
        this.Y1.j(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R2() {
        boolean is_praise = this.f30077r0.is_praise();
        int praise = this.f30077r0.getPraise();
        this.f30077r0.setPraise(is_praise ? praise - 1 : praise + 1);
        this.f30077r0.setIs_praise(!is_praise);
        a2(this.f30077r0.is_praise(), this.f30077r0.getPraise());
    }

    private void U2() {
        if (!isLogined(this)) {
            showMessage(getString(R.string.forum_user_not_login));
        } else if (!u3()) {
            n3(-1);
            d3();
        } else {
            ForumRequestBean.ForumCommentReplyRequestBean Y = com.join.mgps.Util.i0.Y(this, this.H0, this.J0, this.I0);
            Y.setDevice_id("");
            ForumResponse<ForumData.ForumCommentReplyReplyData> J = this.f30071p0.J(Y.getParams());
            if (J == null) {
                n3(1);
            } else if (J.getError() == 706) {
                o3(getString(R.string.tour_perfect_info_for_comment_toast));
                d3();
            } else {
                ForumData.ForumCommentReplyReplyData data = J.getData();
                if (data.isResult()) {
                    n3(2);
                    ForumBean.ForumCommentReplyBean forumCommentReplyBean = new ForumBean.ForumCommentReplyBean();
                    AccountBean T = com.join.mgps.Util.i0.T(this);
                    forumCommentReplyBean.setUid(T.getUid());
                    forumCommentReplyBean.setNickname(T.getNickname());
                    forumCommentReplyBean.setMessage(Y.getMessage());
                    forumCommentReplyBean.setAdd_time(System.currentTimeMillis() / 1000);
                    forumCommentReplyBean.setRrid(this.I0);
                    if (this.I0 != 0) {
                        forumCommentReplyBean.setRid(data.getRid());
                        x2(forumCommentReplyBean);
                        m3(RewardType.REPLY_POST, data.getReward_money(), data.getReward_exp());
                    }
                } else if (data.getError_type() == 1) {
                    p1();
                    j3(data.getError_type());
                } else if (!TextUtils.isEmpty(data.getMsg())) {
                    p1();
                    o3(data.getMsg());
                } else {
                    n3(1);
                }
            }
        }
    }

    private void V1() {
        e1(18);
    }

    private void V2() {
        if (!isLogined(this)) {
            showMessage(getString(R.string.forum_user_not_login));
        } else if (!u3()) {
            n3(-1);
            d3();
        } else {
            ForumRequestBean.ForumCommentReplyRequestBean Y = com.join.mgps.Util.i0.Y(this, this.H0, this.J0, this.I0);
            Y.setDevice_id("");
            ForumResponse<ForumData.ForumCommentReplyData> l02 = this.f30071p0.l0(Y.getParams());
            if (l02 == null) {
                n3(1);
            } else if (l02.getError() == 706) {
                o3(getString(R.string.tour_perfect_info_for_comment_toast));
                d3();
            } else {
                ForumData.ForumCommentReplyData data = l02.getData();
                if (data.isResult()) {
                    n3(2);
                    ForumBean.ForumCommentReplyBean forumCommentReplyBean = new ForumBean.ForumCommentReplyBean();
                    AccountBean T = com.join.mgps.Util.i0.T(this);
                    forumCommentReplyBean.setUid(T.getUid());
                    forumCommentReplyBean.setNickname(T.getNickname());
                    forumCommentReplyBean.setMessage(Y.getMessage());
                    forumCommentReplyBean.setAdd_time(System.currentTimeMillis() / 1000);
                    forumCommentReplyBean.setRrid(this.I0);
                    forumCommentReplyBean.setRid(data.getRid());
                    w2(forumCommentReplyBean);
                    m3(RewardType.REPLY_POST, data.getReward_money(), data.getReward_exp());
                } else if (data.getError_type() == 1) {
                    p1();
                    j3(data.getError_type());
                } else if (!TextUtils.isEmpty(data.getMsg())) {
                    p1();
                    o3(data.getMsg());
                } else {
                    n3(1);
                }
            }
        }
    }

    private void X1() {
        W1(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y1() {
        ForumPostsAdapter forumPostsAdapter;
        if (this.P0 == 0 && (forumPostsAdapter = this.f30089v0) != null) {
            forumPostsAdapter.p();
        }
        e1(0);
        this.f30039d.k();
        V1();
        if (com.join.android.app.common.utils.f.j(this)) {
            X1();
            return;
        }
        o3(getString(R.string.net_connect_failed));
        e1(17);
    }

    private AccountBean accountBean(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    private void g3(View view) {
        N1();
        WrapContentGridView wrapContentGridView = this.f30075q1;
        if (wrapContentGridView != null) {
            wrapContentGridView.setStretchMode(2);
        }
        L2();
        N2();
        K2();
        P1();
        this.f30034b1.setAnimationStyle(R.style.animation_album_popup);
        this.f30034b1.getContentView().measure(0, 0);
        this.f30034b1.showAsDropDown(view);
    }

    private boolean isLogined(Context context) {
        AccountBean accountBean = accountBean(context);
        return accountBean != null && com.join.mgps.Util.d2.i(accountBean.getToken());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k3() {
        String str;
        switch (this.f30084t1) {
            case R.id.extFuncBest /* 2131297367 */:
                if (this.f30077r0.getBest() != 1) {
                    str = "确定要设为精华吗？";
                    break;
                } else {
                    str = "确定要取消精华吗？";
                    break;
                }
            case R.id.extFuncBestTv /* 2131297368 */:
            case R.id.extFuncCancel /* 2131297369 */:
            case R.id.extFuncFavoriteTv /* 2131297372 */:
            default:
                return;
            case R.id.extFuncDelete /* 2131297370 */:
                str = "确定要删除吗？";
                break;
            case R.id.extFuncFavorite /* 2131297371 */:
                r1();
                return;
            case R.id.extFuncReply /* 2131297373 */:
                str = "确定要回复吗？";
                break;
            case R.id.extFuncReport /* 2131297374 */:
                str = "确定要设为举报吗？";
                break;
            case R.id.extFuncShare /* 2131297375 */:
                com.join.mgps.Util.i0.H1(this, this.f30077r0);
                return;
        }
        if (this.f30081s1 == null) {
            this.f30081s1 = new com.join.mgps.dialog.p0(this);
        }
        this.f30081s1.f("确定");
        this.f30081s1.d("取消");
        this.f30081s1.b(8);
        this.f30081s1.g(str).c(new m());
        this.f30081s1.e(new n());
        if (this.f30081s1.isShowing()) {
            return;
        }
        this.f30081s1.show();
    }

    private void m1(List<String> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            try {
                File file = new File(list.get(i2));
                if (file.getParentFile().exists()) {
                    UtilsMy.delete(file.getParentFile());
                }
                if (file.exists() && file.getAbsolutePath().contains(com.join.mgps.Util.i0.l0().getAbsolutePath())) {
                    UtilsMy.delete(file);
                }
            } catch (Exception unused) {
            }
        }
        net.bither.util.b.q().f72850c = new Hashtable<>();
        net.bither.util.b.q().f72849b = new Hashtable<>();
    }

    private void m2() {
        String str = this.K1;
        String str2 = this.L1;
        this.F1.setVisibility(0);
        this.F1.setScaleType(ImageView.ScaleType.FIT_XY);
        MyImageLoader.h(this.F1, str2);
        LinearLayout linearLayout = this.H1;
        if (this.I1 == null) {
            MediaController mediaController = new MediaController(this);
            this.I1 = mediaController;
            mediaController.q();
            this.I1.hide();
            this.I1.setVisibility(8);
        }
        if (this.E1.isPlaying()) {
            MyVideoView myVideoView = this.E1;
            if (myVideoView != null) {
                myVideoView.I();
                linearLayout.setVisibility(8);
            }
            MediaController mediaController2 = this.I1;
            if (mediaController2 != null) {
                mediaController2.setVisibility(8);
            }
        }
        this.E1.setVisibility(0);
        this.I1.setAnchorView(this.E1);
        this.I1.setMediaPlayer(this.E1);
        this.E1.setMediaController(this.I1);
        this.E1.requestFocus();
        linearLayout.setVisibility(0);
        if (this.E1.E() && !this.E1.isPlaying()) {
            Q2();
            com.join.mgps.Util.u0.e("play a last video ...");
        } else {
            this.E1.setVideoPath(str);
            com.join.mgps.Util.u0.e("play a new video ...");
        }
        this.E1.setOnCompletionListener(new p());
        this.E1.setOnPreparedListener(new q());
        this.E1.setOnErrorListener(new r());
        this.E1.setScreenChangedListener(new s());
        this.G1.setOnClickListener(new t());
    }

    private void n1() {
        com.join.mgps.customview.t tVar = this.R1;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.R1.dismiss();
    }

    private void p3() {
        this.f30030a.setVisibility(0);
        this.f30039d.setVisibility(0);
        this.f30054i.setVisibility(0);
    }

    private void receiveDelete(DownloadTask downloadTask) {
        try {
            Iterator<DownloadTask> it2 = this.V1.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                DownloadTask next = it2.next();
                if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    this.S1.remove(next.getCrc_link_type_val());
                    it2.remove();
                    break;
                }
            }
            g2(downloadTask, 2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.S1;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            g2(downloadTask, 3);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.E3(this.V1, downloadTask);
        if (!this.S1.containsKey(downloadTask.getCrc_link_type_val())) {
            this.V1.add(downloadTask);
            this.S1.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        g2(downloadTask, 0);
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.S1;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.V1.add(downloadTask);
            this.S1.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        DownloadTask downloadTask2 = this.S1.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        downloadTask2.setGameZipPath(downloadTask.getGameZipPath());
        g2(downloadTask, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u1() {
        try {
            if (com.join.android.app.common.utils.f.j(this)) {
                com.join.mgps.Util.i0.H1(this, this.f30077r0);
            } else {
                com.join.mgps.Util.i0.G1(this, this.f30077r0.getPid());
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y1() {
        switch (this.f30084t1) {
            case R.id.extFuncBest /* 2131297367 */:
                q1();
                return;
            case R.id.extFuncDelete /* 2131297370 */:
                l1();
                return;
            case R.id.extFuncFavorite /* 2131297371 */:
                r1();
                return;
            case R.id.extFuncReport /* 2131297374 */:
                s1();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z1() {
        Activity splashActivity = IntentUtil.getInstance().getSplashActivity();
        if (splashActivity != null) {
            splashActivity.finish();
            IntentUtil.getInstance().setSplashActivity(null);
            Intent intent = new Intent();
            intent.setClass(splashActivity, MGMainActivity_.class);
            intent.setFlags(67108864);
            intent.addFlags(536870912);
            startActivity(intent);
        }
        finish();
    }

    void A1() {
        if (getResources().getConfiguration().orientation == 2) {
            this.M1 = false;
            p3();
            a3();
            h2(0, 0);
            return;
        }
        this.M1 = true;
        J1();
        P2();
    }

    String B1(String str, String str2) {
        if (com.join.mgps.Util.d2.h(str2)) {
            return null;
        }
        if (str2.startsWith(com.facebook.common.util.f.f11765a) || str2.startsWith(str)) {
            return str2;
        }
        return str + str2;
    }

    void B2() {
        ForumBean.ForumPostsBean forumPostsBean = this.f30077r0;
        if (forumPostsBean == null) {
            return;
        }
        forumPostsBean.setIs_favorite(!forumPostsBean.is_favorite());
        M2();
    }

    List<String> C1(String str, List<String> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            arrayList.add(B1(str, list.get(i2)));
        }
        return arrayList;
    }

    void C2(ForumBean.GameInfo gameInfo) {
        this.f30080s0 = gameInfo;
        if (gameInfo != null) {
            try {
                DownloadTask B = g1.f.G().B(gameInfo.getGame_id());
                this.f30080s0.setDownloadTask(B);
                Map<String, DownloadTask> map = this.S1;
                if (map == null || B == null || map.containsKey(B.getCrc_link_type_val())) {
                    return;
                }
                this.V1.add(B);
                this.S1.put(B.getCrc_link_type_val(), B);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    void D2(ForumBean.ForumPostsBean forumPostsBean) {
        this.f30077r0 = forumPostsBean;
        if (this.f30083t0 != null) {
            a2(this.f30077r0.is_praise(), this.f30077r0.getPraise());
        }
        if (forumPostsBean != null) {
            C2(forumPostsBean.getRelation_game());
        }
    }

    String E1() {
        String str = "";
        if (this.f30061l1 == null) {
            return "";
        }
        for (int i2 = 0; i2 < this.f30061l1.size(); i2++) {
            str = str + this.f30061l1.get(i2).getTag_id();
            if (i2 != this.f30061l1.size() - 1) {
                str = str + ",";
            }
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00fe, code lost:
        if (r9 != null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x010f, code lost:
        if (r9 == null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0111, code lost:
        r9.clear();
        m1(r8.getImages());
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x011b, code lost:
        H1();
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x011e, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void E2(com.join.mgps.dto.ForumRequestBean.ForumPostsCommentRequestBean r8, com.join.mgps.dto.ForumResponse<com.join.mgps.dto.ForumData.ForumPostsCommentData> r9) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.ForumPostsActivity.E2(com.join.mgps.dto.ForumRequestBean$ForumPostsCommentRequestBean, com.join.mgps.dto.ForumResponse):void");
    }

    int F1(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.Q1 == 0) {
            Resources resources = context.getResources();
            this.Q1 = (int) (((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) * 1.0f) / 1.8f);
        }
        return this.Q1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F2(int i2) {
        ForumBean.ForumPostsBean forumPostsBean = this.f30077r0;
        if (forumPostsBean == null) {
            return;
        }
        forumPostsBean.setCommit(forumPostsBean.getCommit() + i2);
        c2();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void G1(int i2, int i4) {
        ForumResponse<ForumData.ForumPostsHelpSolveData> forumResponse;
        try {
            if (com.join.android.app.common.utils.f.j(this)) {
                try {
                    ForumRequestBean.ForumPostsHelpSolveRequestBean d02 = com.join.mgps.Util.i0.d0(this, i2, i4);
                    forumResponse = null;
                    if (d02 != null) {
                        d02.setDevice_id("");
                        forumResponse = this.f30071p0.j(d02.getParams());
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    o3("采纳失败，请重新操作！");
                }
                if (forumResponse == null) {
                    if (!com.join.mgps.Util.i0.Y0(this)) {
                        com.join.mgps.Util.i0.L0(this);
                    }
                    o3("采纳失败，请重新操作！");
                    return;
                }
                int error = forumResponse.getError();
                if (error == 0) {
                    ForumData.ForumPostsHelpSolveData data = forumResponse.getData();
                    if (data.isResult()) {
                        u2(i4);
                        o3("采纳成功！");
                    } else if (com.join.mgps.Util.d2.h(data.getMessage())) {
                        o3("采纳失败，请重新操作！");
                    } else {
                        o3(data.getMessage());
                    }
                } else if (error == 701) {
                    o3(getResources().getString(R.string.forum_user_login_invalid));
                }
                return;
            }
            o3(getString(R.string.net_connect_failed));
        } finally {
            h1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H1() {
        try {
            this.f30073q.setVisibility(8);
            this.f30076r.setVisibility(8);
            this.f30079s.setVisibility(8);
            this.f30055i1 = false;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void I1(boolean z3) {
        H1();
        if (z3) {
            this.f30070p.setVisibility(8);
        } else {
            this.f30070p.setVisibility(0);
        }
        this.f30052h1 = z3;
    }

    void I2() {
        if (this.N1) {
            this.C1.setVisibility(0);
        } else {
            this.C1.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void K1() {
        goMyAlbumActivity4PickPic();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K2() {
        if (this.G == null) {
            return;
        }
        if (this.f30077r0.getBest() == 1) {
            this.G.setImageResource(R.drawable.more_func_best_pressed);
        } else {
            this.G.setImageResource(R.drawable.more_func_best_default);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L2() {
        if (this.D == null) {
            return;
        }
        if (this.f30077r0.is_favorite()) {
            this.D.setImageResource(R.drawable.more_func_favorite_selected);
        } else {
            this.D.setImageResource(R.drawable.more_func_favorite);
        }
    }

    public void M1() {
        this.f30043e1 = com.join.mgps.rpc.impl.c.P1();
        com.join.mgps.Util.c0.a().d(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M2() {
        if (this.J == 0) {
            this.f30048g.setTextColor(-11184811);
            this.f30048g.setBackgroundResource(R.drawable.post_host_default);
            return;
        }
        this.f30048g.setTextColor(-1);
        this.f30048g.setBackgroundResource(R.drawable.post_host_pressed);
    }

    void N2() {
        if (this.G == null) {
            return;
        }
        if (this.K.equals("asc")) {
            this.F.setImageResource(R.drawable.more_func_alphabet);
        } else {
            this.F.setImageResource(R.drawable.more_func_alphabet_selected);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void O2(String str) {
        ForumData.HomepageRecommendLabel data;
        if (com.join.android.app.common.utils.f.j(this)) {
            boolean z3 = true;
            if (this.f30032a2) {
                return;
            }
            this.f30032a2 = true;
            int pid = this.f30077r0.getPid();
            int post_type = this.f30077r0.getPost_type();
            String uid = AccountUtil_.getInstance_(this).getUid();
            String token = AccountUtil_.getInstance_(this).getToken();
            try {
                try {
                    if (com.join.mgps.Util.i0.c0(this, pid) != null) {
                        ForumResponse<ForumData.HomepageRecommendLabel> a02 = this.f30071p0.a0(pid, post_type, str, uid, token);
                        if (a02 == null || a02.getError() != 0 || (data = a02.getData()) == null || !data.isResult()) {
                            z3 = false;
                        }
                        if (z3) {
                            o3("移除话题成功");
                            f2(str);
                        } else {
                            String msg = (a02 == null || a02.getData() == null) ? "" : a02.getData().getMsg();
                            if (!TextUtils.isEmpty(msg)) {
                                o3(msg);
                            } else {
                                o3("移除话题失败");
                            }
                            List<RecommendLabelTag> list = this.f30061l1;
                            if (list != null) {
                                list.clear();
                            }
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    List<RecommendLabelTag> list2 = this.f30061l1;
                    if (list2 != null) {
                        list2.clear();
                    }
                }
                return;
            } finally {
                this.f30032a2 = false;
            }
        }
        o3(getString(R.string.net_connect_failed));
    }

    RelativeLayout.LayoutParams P2() {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.C1.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = -1;
            layoutParams.height = -1;
            this.C1.setPadding(0, 0, 0, 0);
        }
        RelativeLayout relativeLayout = this.D1;
        if (relativeLayout == null) {
            return layoutParams;
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) relativeLayout.getLayoutParams();
        if (layoutParams2 != null) {
            layoutParams2.height = -1;
        }
        this.C1.setTop(0);
        return layoutParams;
    }

    void Q2() {
        MyVideoView myVideoView = this.E1;
        if (myVideoView.E() & (myVideoView != null)) {
            this.H1.setVisibility(8);
            this.F1.setVisibility(8);
            this.G1.setVisibility(8);
            this.E1.start();
            MediaController mediaController = this.I1;
            if (mediaController != null) {
                mediaController.setVisibility(8);
                return;
            }
            return;
        }
        m2();
    }

    public boolean S1(MotionEvent motionEvent) {
        int[] iArr = {R.id.layout_chat_cell_container};
        for (int i2 = 0; i2 < 1; i2++) {
            if (L1(findViewById(iArr[i2]), motionEvent)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void S2() {
        try {
            if (com.join.android.app.common.utils.f.j(this)) {
                if (!com.join.mgps.Util.i0.Y0(this)) {
                    com.join.mgps.Util.i0.L0(this);
                    o3("尚未登录，请先登录！");
                    return;
                } else if (!TextUtils.isEmpty(this.J0) && !TextUtils.isEmpty(this.J0.trim())) {
                    n3(0);
                    this.Y0 = 1;
                    net.bither.util.b.q().y();
                    return;
                } else {
                    o3("输入内容为空请重新输入！");
                    return;
                }
            }
            this.Y0 = 0;
            o3(getString(R.string.net_connect_failed));
        } catch (Exception e4) {
            this.Y0 = 0;
            e4.printStackTrace();
        }
    }

    boolean T1() {
        if (this.A1 == -1) {
            return false;
        }
        int firstVisiblePosition = this.f30039d.getFirstVisiblePosition();
        int lastVisiblePosition = this.f30039d.getLastVisiblePosition();
        int i2 = this.A1;
        return i2 >= firstVisiblePosition - this.B1 && i2 <= lastVisiblePosition;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void T2() {
        try {
            try {
                if (com.join.android.app.common.utils.f.j(this)) {
                    if (!com.join.mgps.Util.i0.Y0(this)) {
                        com.join.mgps.Util.i0.L0(this);
                        o3("尚未登录，请先登录！");
                    } else if (!TextUtils.isEmpty(this.J0) && !TextUtils.isEmpty(this.J0.trim())) {
                        n3(0);
                        synchronized (Integer.valueOf(this.I0)) {
                            if (this.I0 == 0) {
                                V2();
                            } else {
                                U2();
                            }
                        }
                    } else {
                        o3("输入内容为空请重新输入！");
                    }
                } else {
                    o3(getString(R.string.net_connect_failed));
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                n3(1);
            }
        } finally {
            h1();
        }
    }

    public boolean U1(View view, MotionEvent motionEvent) {
        if (view == null || !(view instanceof EditText)) {
            return false;
        }
        int[] iArr = {0, 0};
        view.getLocationInWindow(iArr);
        int i2 = iArr[0];
        int i4 = iArr[1];
        return motionEvent.getX() <= ((float) i2) || motionEvent.getX() >= ((float) (view.getWidth() + i2)) || motionEvent.getY() <= ((float) i4) || motionEvent.getY() >= ((float) (view.getHeight() + i4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void W0(String str) {
        ForumData.HomepageRecommendLabel data;
        if (com.join.android.app.common.utils.f.j(this)) {
            boolean z3 = true;
            if (this.Z1) {
                return;
            }
            this.Z1 = true;
            int pid = this.f30077r0.getPid();
            int post_type = this.f30077r0.getPost_type();
            String uid = AccountUtil_.getInstance_(this).getUid();
            String token = AccountUtil_.getInstance_(this).getToken();
            try {
                try {
                    if (com.join.mgps.Util.i0.c0(this, pid) != null) {
                        ForumResponse<ForumData.HomepageRecommendLabel> g4 = this.f30071p0.g(pid, post_type, str, uid, token);
                        if (g4 == null || g4.getError() != 0 || (data = g4.getData()) == null || !data.isResult()) {
                            z3 = false;
                        }
                        if (z3) {
                            o3("收录话题成功");
                            e2(str);
                        } else {
                            String msg = (g4 == null || g4.getData() == null) ? "" : g4.getData().getMsg();
                            if (!TextUtils.isEmpty(msg)) {
                                o3(msg);
                            } else {
                                o3("收录话题失败");
                            }
                            List<RecommendLabelTag> list = this.f30061l1;
                            if (list != null) {
                                list.clear();
                            }
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    o3("收录话题失败");
                    List<RecommendLabelTag> list2 = this.f30061l1;
                    if (list2 != null) {
                        list2.clear();
                    }
                }
                return;
            } finally {
                this.Z1 = false;
            }
        }
        o3(getString(R.string.net_connect_failed));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:108:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x012e, code lost:
        if (r26.P0 != (-1)) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0164, code lost:
        if (r26.P0 == (-1)) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0166, code lost:
        r26.P0 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0168, code lost:
        r3();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10, types: [com.join.mgps.dto.ForumResponse] */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v4 */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void W1(int r27) {
        /*
            Method dump skipped, instructions count: 395
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.ForumPostsActivity.W1(int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x0131 A[Catch: all -> 0x018f, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x0010, B:11:0x0016, B:15:0x0028, B:19:0x0037, B:23:0x0042, B:25:0x004a, B:30:0x005d, B:34:0x006a, B:38:0x0079, B:45:0x00a6, B:53:0x00b9, B:61:0x011e, B:62:0x012b, B:64:0x0131, B:66:0x013b, B:67:0x015d, B:69:0x016d, B:73:0x017a), top: B:83:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x016d A[Catch: all -> 0x018f, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x0010, B:11:0x0016, B:15:0x0028, B:19:0x0037, B:23:0x0042, B:25:0x004a, B:30:0x005d, B:34:0x006a, B:38:0x0079, B:45:0x00a6, B:53:0x00b9, B:61:0x011e, B:62:0x012b, B:64:0x0131, B:66:0x013b, B:67:0x015d, B:69:0x016d, B:73:0x017a), top: B:83:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    synchronized void W2(com.join.mgps.dto.ForumBean.ForumCommentBean r32, boolean r33) {
        /*
            Method dump skipped, instructions count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.ForumPostsActivity.W2(com.join.mgps.dto.ForumBean$ForumCommentBean, boolean):void");
    }

    public void X0(AbsListView absListView, int i2, int i4, int i5) {
        if (this.f30044e2 != i2 || i2 == 0) {
            this.f30044e2 = i2;
            this.f30047f2 = i4;
            this.f30050g2 = i5;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void X2() {
        if (com.join.android.app.common.utils.f.j(this)) {
            int i2 = 1;
            if (this.f30035b2) {
                return;
            }
            this.f30035b2 = true;
            try {
                try {
                    ForumResponse<ForumData.ForumResult> h02 = this.f30071p0.h0(this.f30077r0.getPid(), AccountUtil_.getInstance_(this).getUid(), AccountUtil_.getInstance_(this).getToken());
                    ForumData.ForumResult forumResult = null;
                    if (h02 != null && h02.getError() == 0 && (forumResult = h02.getData()) != null && forumResult.isResult()) {
                        if (this.f30077r0.getFirst() != 1) {
                            o3("帖子置顶成功");
                        } else {
                            o3("帖子取消置顶成功");
                        }
                        ForumBean.ForumPostsBean forumPostsBean = this.f30077r0;
                        if (!forumResult.isFirst()) {
                            i2 = 0;
                        }
                        forumPostsBean.setFirst(i2);
                    } else {
                        String msg = (h02 == null || h02.getData() == null) ? "" : h02.getData().getMsg();
                        if (!TextUtils.isEmpty(msg)) {
                            o3(msg);
                        } else {
                            o3("帖子置顶失败");
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return;
            } finally {
                this.f30035b2 = false;
            }
        }
        o3(getString(R.string.net_connect_failed));
    }

    public void Y0(AbsListView absListView, int i2) {
        if (i2 != 0) {
            return;
        }
        Z0(absListView);
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x02de A[Catch: Exception -> 0x0335, all -> 0x03e6, TryCatch #1 {Exception -> 0x0335, blocks: (B:44:0x013b, B:46:0x0147, B:50:0x015a, B:52:0x0164, B:54:0x0177, B:56:0x0181, B:58:0x018f, B:62:0x0198, B:64:0x01a6, B:68:0x01af, B:70:0x01b5, B:72:0x01c3, B:74:0x01c9, B:79:0x01d7, B:80:0x01e8, B:82:0x01ee, B:110:0x02cb, B:89:0x020a, B:90:0x022c, B:91:0x025f, B:93:0x0277, B:94:0x027f, B:99:0x028e, B:104:0x02a1, B:107:0x02ba, B:109:0x02c3, B:111:0x02d4, B:113:0x02de, B:114:0x02e4, B:116:0x02f9, B:120:0x0301, B:122:0x0314, B:127:0x0329, B:126:0x0325, B:47:0x014c, B:49:0x0156), top: B:154:0x013b, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01ee A[Catch: Exception -> 0x0335, all -> 0x03e6, TryCatch #1 {Exception -> 0x0335, blocks: (B:44:0x013b, B:46:0x0147, B:50:0x015a, B:52:0x0164, B:54:0x0177, B:56:0x0181, B:58:0x018f, B:62:0x0198, B:64:0x01a6, B:68:0x01af, B:70:0x01b5, B:72:0x01c3, B:74:0x01c9, B:79:0x01d7, B:80:0x01e8, B:82:0x01ee, B:110:0x02cb, B:89:0x020a, B:90:0x022c, B:91:0x025f, B:93:0x0277, B:94:0x027f, B:99:0x028e, B:104:0x02a1, B:107:0x02ba, B:109:0x02c3, B:111:0x02d4, B:113:0x02de, B:114:0x02e4, B:116:0x02f9, B:120:0x0301, B:122:0x0314, B:127:0x0329, B:126:0x0325, B:47:0x014c, B:49:0x0156), top: B:154:0x013b, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    synchronized void Y2(com.join.mgps.dto.ForumBean.ForumPostsBean r30, boolean r31) {
        /*
            Method dump skipped, instructions count: 1003
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.ForumPostsActivity.Y2(com.join.mgps.dto.ForumBean$ForumPostsBean, boolean):void");
    }

    public void Z0(AbsListView absListView) {
        for (int i2 = 0; i2 < this.f30047f2; i2++) {
            try {
                if (absListView != null && absListView.getChildAt(i2) != null && absListView.getChildAt(i2).findViewById(R.id.videoPlayer) != null) {
                    StandardVideoViewJC standardVideoViewJC = (StandardVideoViewJC) absListView.getChildAt(i2).findViewById(R.id.videoPlayer);
                    Rect rect = new Rect();
                    standardVideoViewJC.getLocalVisibleRect(rect);
                    int height = standardVideoViewJC.getHeight();
                    StringBuilder sb = new StringBuilder();
                    sb.append("child=");
                    sb.append(i2);
                    sb.append(", videoHeight=");
                    sb.append(height);
                    sb.append(", rect.top:");
                    sb.append(rect.top);
                    sb.append(", rect.bottom:");
                    sb.append(rect.bottom);
                    if (rect.top == 0 && rect.bottom == height) {
                        int i4 = standardVideoViewJC.f65554b;
                        if (i4 == 0 || i4 == 7) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("currentState=");
                            sb2.append(i4);
                            sb2.append(" -->performClick");
                            if (standardVideoViewJC.X()) {
                                standardVideoViewJC.f65560h.performClick();
                                this.f30053h2 = absListView;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        JCVideoPlayer.H();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void Z1() {
        Y0(this.f30039d, 0);
    }

    void Z2() {
        ForumBean.ForumPostsBean forumPostsBean = this.f30077r0;
        if (forumPostsBean == null || forumPostsBean.getPid() == 0) {
            return;
        }
        Intent intent = new Intent();
        intent.putExtra(ForumPostsTagSelectActivity_.f30340y, this.f30077r0.getPid());
        intent.putExtra("view", this.f30077r0.getView());
        intent.putExtra("comment", this.f30077r0.getCommit());
        intent.putExtra("praise", this.f30077r0.getPraise());
        intent.putExtra("isPraise", this.f30077r0.is_praise());
        intent.putExtra("isFavorite", this.f30077r0.is_favorite());
        setResult(3, intent);
    }

    public void a1(com.join.mgps.recycler.c cVar) {
        for (int i2 = 0; i2 < (cVar.b() - cVar.a()) - 1; i2++) {
            try {
                if (cVar.getChildAt(i2) != null && cVar.getChildAt(i2).findViewById(R.id.videoPlayer) != null) {
                    StandardVideoViewJC standardVideoViewJC = (StandardVideoViewJC) cVar.getChildAt(i2).findViewById(R.id.videoPlayer);
                    Rect rect = new Rect();
                    standardVideoViewJC.getLocalVisibleRect(rect);
                    int height = (int) (standardVideoViewJC.getHeight() * 0.95f);
                    StringBuilder sb = new StringBuilder();
                    sb.append("child=");
                    sb.append(i2);
                    sb.append(", videoHeight=");
                    sb.append(height);
                    sb.append(", rect.top:");
                    sb.append(rect.top);
                    sb.append(", rect.bottom:");
                    sb.append(rect.bottom);
                    if (rect.bottom - rect.top >= height) {
                        int i4 = standardVideoViewJC.f65554b;
                        if (i4 == 0 || i4 == 7) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("currentState=");
                            sb2.append(i4);
                            sb2.append(" -->performClick");
                            if (standardVideoViewJC.X()) {
                                standardVideoViewJC.f65560h.performClick();
                                this.i2 = cVar;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        JCVideoPlayer.H();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a2(boolean z3, int i2) {
        if (z3) {
            this.f30058k.setBackgroundResource(R.drawable.like);
        } else {
            this.f30058k.setBackgroundResource(R.drawable.unlike);
        }
        c2();
    }

    void a3() {
        RelativeLayout relativeLayout = this.D1;
        if (relativeLayout == null) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) relativeLayout.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = F1(this);
        }
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.C1.getLayoutParams();
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.mg_forum_post_item_padding);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.mg_forum_item_video_padding_top);
        int dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.mg_forum_item_video_padding_bottom);
        if (layoutParams2 != null) {
            layoutParams2.height = -2;
            this.C1.setPadding(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize3);
        }
        this.D1.postInvalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f30071p0 = com.join.mgps.rpc.impl.f.A0();
        this.f30037c1 = com.join.mgps.rpc.impl.a.b0();
        try {
            M1();
            R1();
            Y1();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void b1() {
        if (this.f30055i1) {
            H1();
            return;
        }
        List<String> list = this.f30059k1;
        if ((list != null) & (list.size() > 0)) {
            f3();
        } else {
            goMyAlbumActivity4PickPic();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b2() {
        this.f30089v0.n0(this.f30092w0);
        this.f30089v0.notifyDataSetChanged();
    }

    void b3() {
        this.Y1.e(new u());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        if (this.f30055i1) {
            b1();
        } else if (this.f30049g1) {
            h1();
        } else {
            Z2();
            z1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void c1() {
        if (!com.join.mgps.Util.i0.Y0(this)) {
            com.join.mgps.Util.i2.a(this).b("用户未登录，请登录");
            com.join.mgps.Util.i0.L0(this);
        } else if (!u3()) {
            n3(-1);
            d3();
        } else {
            this.f30058k.startAnimation(AnimationUtils.loadAnimation(this, R.anim.scale_reset));
            R2();
            r2();
        }
    }

    synchronized void c2() {
        this.f30092w0.clear();
        try {
            Y2(this.f30077r0, true);
            BaiduAdBannerRelativeLayout baiduAdBannerRelativeLayout = this.f30040d1;
            if (baiduAdBannerRelativeLayout != null) {
                this.f30092w0.add(new ForumPostsAdapter.u0(ForumPostsAdapter.ViewType.BAIDUADBANNER, baiduAdBannerRelativeLayout));
            }
            int i2 = 0;
            while (this.f30083t0 != null && i2 < this.f30083t0.size()) {
                W2(this.f30083t0.get(i2), i2 == 0);
                i2++;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        b2();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c3(ForumBean.ForumPostsBean forumPostsBean) {
        if (forumPostsBean == null) {
            return;
        }
        View findViewById = findViewById(R.id.bottom);
        com.join.mgps.customview.f z3 = com.join.mgps.customview.f.z(this);
        z3.m(this.f30090v1);
        z3.p(findViewById, forumPostsBean);
    }

    void callbackPlayVideo(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        String string = bundle.getString("key_mediacmd");
        Object[] objArr = (Object[]) bundle.get("key_mediacmd_params");
        com.join.mgps.Util.u0.e("callbackPlayVideo", "cmd=" + string, "params=" + objArr.toString());
        if (string.equals(MediaCmd.CMD_PLAY.name())) {
            String str = null;
            String str2 = null;
            for (int i2 = 0; i2 < objArr.length; i2++) {
                String str3 = (String) objArr[i2];
                if (i2 == 0) {
                    int parseInt = Integer.parseInt(str3);
                    if (parseInt == this.J1) {
                        return;
                    }
                    q3();
                    this.J1 = parseInt;
                } else if (i2 == 1) {
                    str = str3;
                } else if (i2 == 2) {
                    str2 = str3;
                }
            }
            com.join.mgps.Util.u0.e("CMD_PLAY", "videoUrl=" + str, "coverUrl=" + str2);
            this.C1.setVisibility(0);
            this.E1.setVisibility(0);
            this.N1 = true;
            a3();
            k2(str, str2);
        } else if (string.equals(MediaCmd.CMD_PLAY_BACKGROUND.name())) {
            if (this.J1 == -1) {
                return;
            }
            if (Boolean.parseBoolean((String) objArr[0])) {
                this.C1.setVisibility(8);
                this.E1.setVisibility(8);
                this.N1 = false;
                q3();
            } else if (this.J1 != -1) {
                this.C1.setVisibility(0);
                this.E1.setVisibility(0);
                this.N1 = true;
            }
        } else if (string.equals(MediaCmd.CMD_PAUSE.name())) {
            j2();
        } else if (string.equals(MediaCmd.CMD_STOP.name())) {
            q3();
        } else if (string.equals(MediaCmd.CMD_FULLSCREEN.name())) {
            String str4 = Bugly.SDK_IS_DEV;
            for (int i4 = 0; i4 < objArr.length; i4++) {
                if (i4 == 0) {
                    str4 = (String) objArr[0];
                }
                if (i4 == 1) {
                    String str5 = (String) objArr[1];
                }
            }
            Boolean.parseBoolean(str4);
            A1();
        } else if (string.equals(MediaCmd.CMD_TRANSLATE_Y.name())) {
            String str6 = "0";
            String str7 = "0";
            for (int i5 = 0; i5 < objArr.length; i5++) {
                if (i5 == 0) {
                    str6 = (String) objArr[0];
                }
                if (i5 == 1) {
                    str7 = (String) objArr[1];
                }
            }
            int parseInt2 = Integer.parseInt(str6);
            int parseInt3 = Integer.parseInt(str7);
            com.join.mgps.Util.u0.e("CMD_TRANSLATE_Y", "top=" + parseInt2, "offset=" + parseInt3);
            h2(parseInt2, parseInt3);
        }
    }

    void changeDownloadTaskNumber(DownloadTask downloadTask, int i2) {
        if (downloadTask == null) {
            return;
        }
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        if (i2 == 2) {
            if (!this.T1.containsKey(crc_link_type_val)) {
                this.T1.put(crc_link_type_val, downloadTask);
            }
            if (this.U1.containsKey(crc_link_type_val)) {
                return;
            }
            this.U1.put(crc_link_type_val, downloadTask);
        } else if (i2 != 3) {
            if (i2 != 5) {
                if (i2 == 6) {
                    if (this.U1.containsKey(crc_link_type_val)) {
                        this.U1.remove(crc_link_type_val);
                        return;
                    }
                    return;
                } else if (i2 == 7) {
                    if (this.T1.containsKey(crc_link_type_val)) {
                        this.T1.remove(crc_link_type_val);
                    }
                    if (this.U1.containsKey(crc_link_type_val)) {
                        this.U1.remove(crc_link_type_val);
                        return;
                    }
                    return;
                } else if (i2 == 10) {
                    if (!this.T1.containsKey(crc_link_type_val)) {
                        this.T1.put(crc_link_type_val, downloadTask);
                    }
                    if (this.U1.containsKey(crc_link_type_val)) {
                        return;
                    }
                    this.U1.put(crc_link_type_val, downloadTask);
                    return;
                } else if (i2 != 11) {
                    return;
                }
            } else if (this.T1.containsKey(crc_link_type_val)) {
                this.T1.remove(crc_link_type_val);
            }
            if (this.U1.containsKey(crc_link_type_val)) {
                this.U1.remove(crc_link_type_val);
            }
        } else if (this.U1.containsKey(crc_link_type_val)) {
            this.U1.remove(crc_link_type_val);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void d1() {
        String obj = this.f30056j.getText().toString();
        this.J0 = obj;
        if (com.join.mgps.Util.d2.h(obj)) {
            o3("回复内容不能为空");
            return;
        }
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (!com.join.mgps.Util.d2.h(accountData.getNickname()) && (!accountData.getAccount().equals(accountData.getNickname()) || !accountData.getAccount().startsWith("pa"))) {
            int i2 = this.K0;
            if (i2 == 1) {
                S2();
                return;
            } else if (i2 == 2) {
                T2();
                return;
            } else if (i2 == 4) {
                T2();
                return;
            } else {
                return;
            }
        }
        IntentUtil.getInstance().goChangeNickname(this);
    }

    void d2() {
        int i2 = this.A1;
        if (i2 == -1) {
            return;
        }
        int firstVisiblePosition = this.f30039d.getFirstVisiblePosition();
        int lastVisiblePosition = this.f30039d.getLastVisiblePosition();
        String str = f30024j2;
        com.join.mgps.Util.u0.e(str, "notifyPlayViewOffset", "currentPlayPosition=" + this.A1, "firstVisibleItem=" + firstVisiblePosition, "lastVisibleItem=" + lastVisiblePosition);
        int i4 = this.A1;
        if (i4 >= firstVisiblePosition - this.B1 && i4 <= lastVisiblePosition) {
            com.join.mgps.Util.u0.e(str, "notifyPlayViewOffset", "show video view");
            l2(false);
            i2 = (this.A1 - firstVisiblePosition) + this.B1;
        } else {
            com.join.mgps.Util.u0.e(str, "notifyPlayViewOffset", "hide video view");
            l2(true);
        }
        View childAt = this.f30039d.getChildAt(i2);
        if (childAt != null) {
            int bottom = this.f30030a.getBottom();
            int top = childAt.getTop() + this.f30039d.getTop();
            Bundle bundle = new Bundle();
            bundle.putString("key_mediacmd", MGMainActivity.MediaCmd.CMD_TRANSLATE_Y.name());
            bundle.putStringArray("key_mediacmd_params", new String[]{bottom + "", top + ""});
            callbackPlayVideo(bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void d3() {
        com.join.mgps.Util.a0.c0(this).m(this);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        InputMethodManager inputMethodManager;
        if (motionEvent.getAction() == 0) {
            View currentFocus = getCurrentFocus();
            if (!S1(motionEvent) && U1(currentFocus, motionEvent) && (inputMethodManager = (InputMethodManager) getSystemService("input_method")) != null) {
                inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
            }
            return super.dispatchTouchEvent(motionEvent);
        } else if (getWindow().superDispatchTouchEvent(motionEvent)) {
            return true;
        } else {
            return onTouchEvent(motionEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e1(int i2) {
        try {
            int i4 = this.X0;
            if (i4 == 32) {
                return;
            }
            if (i2 == 32) {
                this.X0 = 32;
                this.f30042e.j(2);
            } else if (i2 == 0) {
                this.X0 = 0;
                this.f30042e.m();
                this.f30042e.j(1);
            } else {
                this.X0 = i2 | i4;
                if (g1(-11)) {
                    this.X0 = 16;
                    ForumLoadingView forumLoadingView = this.f30042e;
                    forumLoadingView.setListener(new d0(forumLoadingView));
                    this.f30042e.j(9);
                } else if (g1(22)) {
                    this.X0 = 16;
                    this.f30042e.setFailedMsg("该贴已经删除~");
                    ForumLoadingView forumLoadingView2 = this.f30042e;
                    forumLoadingView2.setListener(new a(forumLoadingView2));
                    this.f30042e.j(10);
                } else {
                    if (!g1(31) && !g1(26)) {
                        if (g1(17)) {
                            this.X0 = 16;
                            ForumLoadingView forumLoadingView3 = this.f30042e;
                            forumLoadingView3.setListener(new c(forumLoadingView3));
                            this.f30042e.j(9);
                        }
                    }
                    this.X0 = 16;
                    this.f30042e.setFailedMsg("加载失败，再试试吧~");
                    ForumLoadingView forumLoadingView4 = this.f30042e;
                    forumLoadingView4.setListener(new b(forumLoadingView4));
                    this.f30042e.j(16);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e2(String str) {
        String[] split;
        if (TextUtils.isEmpty(str) || (split = str.split(",")) == null || split.length == 0) {
            return;
        }
        List asList = Arrays.asList(split);
        ArrayList arrayList = new ArrayList();
        if (this.f30077r0.getEmploy_tags() != null) {
            for (int i2 = 0; i2 < this.f30077r0.getEmploy_tags().size(); i2++) {
                RecommendLabelTag recommendLabelTag = this.f30077r0.getEmploy_tags().get(i2);
                if (!asList.contains(recommendLabelTag.getTag_id() + "")) {
                    this.f30077r0.getEmploy_tags().remove(recommendLabelTag);
                }
            }
        } else {
            arrayList.addAll(this.f30061l1);
        }
        if (arrayList.size() > 0) {
            if (this.f30077r0.getEmploy_tags() != null) {
                this.f30077r0.getEmploy_tags().addAll(arrayList);
            } else {
                this.f30077r0.setTag_list(arrayList);
            }
            c2();
        }
        List<RecommendLabelTag> list = this.f30061l1;
        if (list != null) {
            list.clear();
        }
    }

    void e3() {
        this.f30073q.setVisibility(0);
        this.f30076r.setVisibility(0);
        this.f30079s.setVisibility(8);
        hideSystemKeyBoard(this.f30079s);
        this.f30055i1 = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    void f1() {
        if ((this.f30052h1 && this.f30055i1) || this.f30049g1) {
            return;
        }
        h1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f2(String str) {
        String[] split;
        if (TextUtils.isEmpty(str) || (split = str.split(",")) == null || split.length == 0 || this.f30077r0.getEmploy_tags() == null || this.f30077r0.getEmploy_tags().size() == 0) {
            return;
        }
        List asList = Arrays.asList(split);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < this.f30077r0.getEmploy_tags().size(); i2++) {
            RecommendLabelTag recommendLabelTag = this.f30077r0.getEmploy_tags().get(i2);
            if (asList.contains(recommendLabelTag.getTag_id() + "")) {
                arrayList.add(recommendLabelTag);
            }
        }
        if (arrayList.size() > 0) {
            this.f30077r0.getEmploy_tags().remove(arrayList);
            c2();
        }
        List<RecommendLabelTag> list = this.f30061l1;
        if (list != null) {
            list.clear();
        }
    }

    void f3() {
        this.f30073q.setVisibility(0);
        this.f30076r.setVisibility(8);
        this.f30079s.setVisibility(0);
        hideSystemKeyBoard(this.f30079s);
        this.f30055i1 = true;
    }

    boolean g1(int i2) {
        return (this.X0 & i2) == i2;
    }

    void g2(DownloadTask downloadTask, int i2) {
        com.join.mgps.Util.u0.e(f30024j2, "event=" + i2, "downloadTask=" + downloadTask.toString());
        if (this.f30080s0 == null || !downloadTask.getCrc_link_type_val().equals(this.f30080s0.getGame_id())) {
            return;
        }
        this.f30080s0.setDownloadTask(downloadTask);
        c2();
    }

    public void goMyAlbumActivity4PickPic() {
        Intent intent = new Intent(this, MyAlbumActivity.class);
        Bundle bundle = new Bundle();
        bundle.putSerializable(MyAlbumActivity.f17332w, (Serializable) this.f30059k1);
        intent.putExtras(bundle);
        startActivityForResult(intent, 256);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h1() {
        this.f30070p.setVisibility(8);
        this.J0 = "";
        this.G0 = this.f30077r0.getPid();
        this.H0 = -1;
        this.I0 = -1;
        this.K0 = 1;
        this.f30062m.setVisibility(0);
        this.f30058k.setVisibility(0);
        this.f30060l.setVisibility(8);
        this.f30056j.setText("");
        this.f30056j.setHint("添加评论");
        this.f30056j.clearFocus();
        hideSystemKeyBoard(this.f30056j);
        J2();
    }

    void h2(int i2, int i4) {
        if (getResources().getConfiguration().orientation == 2) {
            ViewCompat.setTranslationY(this.C1, -this.C1.getTop());
            return;
        }
        this.O1 = i2;
        this.P1 = i4;
        com.join.mgps.Util.u0.e("offsetContainer", "mTop=" + this.O1, "mOffsetY=" + this.P1);
        ViewCompat.setTranslationY(this.C1, (float) this.P1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h3() {
    }

    @Override // com.BaseAppCompatActivity
    public void hideKeyBoardHandler() {
        super.hideKeyBoardHandler();
    }

    public void hideSystemKeyBoard(View view) {
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
        this.f30049g1 = false;
    }

    void i1() {
        if (this.f30092w0 == null) {
            return;
        }
        System.gc();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void i2(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        ForumPostsAdapter forumPostsAdapter = this.f30089v0;
        if (forumPostsAdapter != null) {
            forumPostsAdapter.notifyDataSetChanged();
        }
    }

    synchronized void i3(int i2) {
        List<ForumBean.ForumGagType> list = this.f30046f1;
        if (list != null && list.size() != 0) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.f30046f1);
            if (this.f30041d2 == null) {
                this.f30041d2 = new i0(this);
            }
            i0 i0Var = this.f30041d2;
            i0Var.a(i2 + "");
            this.f30041d2.b(arrayList);
            if (this.f30041d2.isShowing()) {
                return;
            }
            this.f30041d2.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void j1(int i2) {
        try {
            try {
                if (com.join.android.app.common.utils.f.j(this)) {
                    ForumRequestBean.ForumCommentDeleteRequestBean W = com.join.mgps.Util.i0.W(this, i2);
                    ForumResponse<ForumData.ForumCommentDeleteData> forumResponse = null;
                    if (W != null) {
                        W.setDevice_id("");
                        forumResponse = this.f30071p0.d0(W.getParams());
                    }
                    if (forumResponse == null) {
                        if (!com.join.mgps.Util.i0.Y0(this)) {
                            com.join.mgps.Util.i0.L0(this);
                        }
                        o3("评论删除失败");
                    } else if (forumResponse.getData().isResult()) {
                        o3("评论已删除");
                        t2(i2);
                    } else {
                        o3("评论删除失败");
                    }
                } else {
                    o3(getString(R.string.net_connect_failed));
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                o3("评论删除失败");
            }
        } finally {
            h1();
        }
    }

    void j2() {
        MyVideoView myVideoView = this.E1;
        if (myVideoView.isPlaying() && (myVideoView != null)) {
            this.E1.pause();
            this.G1.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void j3(int i2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void k1(int i2) {
        if (i2 == 0) {
            return;
        }
        try {
            ForumRequestBean.ForumCommentReplyDeleteRequestBean X = com.join.mgps.Util.i0.X(this, i2);
            ForumResponse<ForumData.ForumCommentReplyDeleteData> forumResponse = null;
            if (X != null) {
                X.setDevice_id("");
                forumResponse = this.f30071p0.A(X.getParams());
            }
            if (forumResponse == null) {
                if (com.join.mgps.Util.i0.Y0(this)) {
                    return;
                }
                com.join.mgps.Util.i0.L0(this);
            } else if (forumResponse.getData().isResult()) {
                z2(i2);
                o3("回复已删除");
            } else {
                o3("回复删除失败");
            }
        } catch (Exception e4) {
            o3("回复删除失败");
            e4.printStackTrace();
        }
    }

    void k2(String str, String str2) {
        String str3 = this.K1;
        if (str3 != null && str3.equals(str) && this.E1.isPlaying()) {
            j2();
            return;
        }
        MyVideoView myVideoView = this.E1;
        if (myVideoView != null) {
            if (myVideoView.E() && this.K1.equals(str)) {
                this.E1.seekTo(0);
                Q2();
            } else {
                this.E1.G();
            }
        }
        this.K1 = str;
        this.L1 = str2;
        if (com.join.mgps.Util.d2.h(str)) {
            q3();
            return;
        }
        this.F1.setVisibility(8);
        this.G1.setVisibility(8);
        m2();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void l1() {
        ForumData.ForumPostsDeleteData data;
        if (com.join.android.app.common.utils.f.j(this)) {
            boolean z3 = true;
            if (this.f30099y1) {
                return;
            }
            this.f30099y1 = true;
            int pid = this.f30077r0.getPid();
            try {
                try {
                    if (com.join.mgps.Util.i0.c0(this, pid) != null) {
                        ForumResponse<ForumData.ForumPostsDeleteData> q02 = this.f30071p0.q0(com.join.mgps.Util.i0.c0(this, pid).getParams());
                        if (q02 == null || q02.getError() != 0 || (data = q02.getData()) == null || !data.isResult()) {
                            z3 = false;
                        }
                        if (z3) {
                            o3("帖子删除成功");
                            z1();
                        } else {
                            o3("帖子删除失败");
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return;
            } finally {
                this.f30099y1 = false;
            }
        }
        o3(getString(R.string.net_connect_failed));
    }

    void l2(boolean z3) {
        Bundle bundle = new Bundle();
        bundle.putString("key_mediacmd", MGMainActivity.MediaCmd.CMD_PLAY_BACKGROUND.name());
        bundle.putStringArray("key_mediacmd_params", new String[]{String.valueOf(z3)});
        callbackPlayVideo(bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void l3(int i2, int i4) {
        try {
            if (this.M0 == null) {
                com.join.mgps.dialog.p0 p0Var = new com.join.mgps.dialog.p0(this);
                this.M0 = p0Var;
                p0Var.f("确定");
                this.M0.d("取消");
                this.M0.b(8);
                this.M0.g("确定要删除该评论吗？").c(new d());
                this.M0.setCancelable(true);
                this.M0.setOnCancelListener(new e());
            }
            int i5 = this.K0;
            if (i5 == 17) {
                this.M0.g("确定要删除该评论吗？");
            } else {
                if (i5 != 18 && i5 != 20) {
                    if (i5 == 33) {
                        this.M0.g("确定要举报该评论吗？");
                    } else if (i5 == 34 || i5 == 36) {
                        this.M0.g("确定要举报该回复吗？");
                    }
                }
                this.M0.g("确定要删除该回复吗？");
            }
            this.M0.e(new f(i2, i4));
            if (this.M0.isShowing()) {
                return;
            }
            this.M0.show();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void m3(RewardType rewardType, int i2, int i4) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void n2() {
        if (this.X0 == 0) {
            return;
        }
        if (this.J == 0) {
            this.J = 1;
        } else {
            this.J = 0;
        }
        M2();
        this.X0 = 0;
        this.P0 = 0;
        this.O0 = 0;
        if (this.f30083t0 != null) {
            this.f30083t0.clear();
        }
        Y1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void n3(int i2) {
        try {
            if (this.N0 == null) {
                this.N0 = new com.join.mgps.dialog.q0(this);
            }
            this.N0.c(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void o1() {
        e0 e0Var = this.f30034b1;
        if (e0Var == null || !e0Var.isShowing()) {
            return;
        }
        this.f30034b1.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void o2() {
        if (this.f30034b1 == null) {
            N1();
        }
        if (this.f30034b1.isShowing()) {
            this.f30034b1.dismiss();
        } else {
            g3(this.f30030a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void o3(CharSequence charSequence) {
        Toast.makeText(this, charSequence, 0).show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i4, Intent intent) {
        int i5;
        super.onActivityResult(i2, i4, intent);
        try {
            if (i2 == 256) {
                this.f30059k1.clear();
                List<String> D1 = D1(intent);
                if (D1 != null) {
                    this.f30059k1.addAll(D1);
                }
                this.f30057j1.c(this.f30059k1);
                this.f30057j1.notifyDataSetChanged();
                this.f30057j1.d(false);
                if (this.f30059k1.size() > 0) {
                    f3();
                    return;
                }
                return;
            }
            if (i2 == 10001 && intent != null && i4 == -1) {
                Bundle extras = intent.getExtras();
                String str = "";
                if (extras != null) {
                    int i6 = extras.getInt("action");
                    str = extras.getString("ids");
                    i5 = i6;
                } else {
                    i5 = 0;
                }
                this.f30061l1 = (List) JsonMapper.getInstance().fromJson(str, JsonMapper.getInstance().createCollectionType(ArrayList.class, RecommendLabelTag.class));
                if (i5 == 1) {
                    W0(E1());
                } else if (i5 == 2) {
                    O2(E1());
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f30055i1) {
            b1();
        } else if (this.f30049g1) {
            h1();
        } else {
            Z2();
            if (JCVideoPlayer.d()) {
                return;
            }
            super.onBackPressed();
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        int i2 = configuration.keyboard;
        if (i2 == 16) {
            if (this.f30055i1) {
                b1();
            }
        } else if (i2 == 16 && this.f30055i1) {
            b1();
        }
        configuration.toString();
        v3(configuration);
        super.onConfigurationChanged(configuration);
        if (configuration.orientation == 2) {
            setSystemUiHide(true);
            return;
        }
        setSystemUiHide(false);
        JCVideoPlayer.d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        com.join.mgps.dialog.q0 q0Var = this.N0;
        if (q0Var != null && q0Var.isShowing()) {
            this.N0.dismiss();
        }
        this.N0 = null;
        net.bither.util.b.q().z(this.Z0);
        net.bither.util.b.q().f72850c = new Hashtable<>();
        net.bither.util.b.q().f72849b = new Hashtable<>();
        i1();
        com.join.mgps.Util.c0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        changeDownloadTaskNumber(a4, lVar.c());
        StringBuilder sb = new StringBuilder();
        sb.append("zip DownloadStatus =");
        sb.append(lVar.c());
        int c4 = lVar.c();
        if (c4 == 2) {
            updateUI(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    updateUI(a4, 6);
                    return;
                } else if (c4 == 7) {
                    updateUI(a4, 3);
                    return;
                } else if (c4 == 8) {
                    updateUI(a4, 4);
                    return;
                } else if (c4 != 48) {
                    switch (c4) {
                        case 10:
                            updateUI(a4, 7);
                            return;
                        case 11:
                            break;
                        case 12:
                            updateUI(a4, 8);
                            return;
                        case 13:
                            updateUI(a4, 9);
                            return;
                        default:
                            return;
                    }
                }
            }
            updateUI(a4, 5);
        } else {
            updateUI(a4, 2);
        }
    }

    @Override // com.BaseAppCompatActivity
    public void onFavoriteChanged(int i2, boolean z3) {
        super.onFavoriteChanged(i2, z3);
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f30077r0);
        com.join.mgps.Util.i0.j(i2, z3, arrayList);
        c2();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4 && keyEvent.getRepeatCount() == 0 && getResources().getConfiguration().orientation == 2) {
            this.M1 = true;
            t3();
            return true;
        }
        if (i2 == 4) {
            z1();
        }
        return super.onKeyDown(i2, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        q3();
        super.onPause();
        if (fm.jiecao.jcvideoplayer_lib.f.c() == null || fm.jiecao.jcvideoplayer_lib.f.c().f65554b != 3) {
            this.f30053h2 = null;
            this.i2 = null;
        }
        JCVideoPlayer.H();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        AbsListView absListView = this.f30053h2;
        if (absListView != null) {
            Z0(absListView);
        } else {
            com.join.mgps.recycler.c cVar = this.i2;
            if (cVar != null) {
                a1(cVar);
            }
        }
        net.bither.util.b.q().e(this.Z0);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        w3(absListView, i2, i4, i5);
        X0(absListView, i2, i4, i5);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        x3(absListView, i2);
        Y0(absListView, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void p1() {
        try {
            com.join.mgps.dialog.q0 q0Var = this.N0;
            if (q0Var == null || !q0Var.isShowing()) {
                return;
            }
            this.N0.dismiss();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void p2() {
        if (this.X0 == 0) {
            return;
        }
        if (this.K.equals("asc")) {
            this.K = "desc";
        } else {
            this.K = "asc";
        }
        N2();
        this.X0 = 0;
        this.P0 = 0;
        Y1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void q1() {
        if (com.join.android.app.common.utils.f.j(this)) {
            if (this.f30102z1) {
                return;
            }
            int i2 = 1;
            this.f30102z1 = true;
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            try {
                ForumBean.ForumPostsBean forumPostsBean2 = this.f30077r0;
                if (forumPostsBean2 != null) {
                    forumPostsBean = (ForumBean.ForumPostsBean) forumPostsBean2.clone();
                }
            } catch (CloneNotSupportedException e4) {
                e4.printStackTrace();
            }
            try {
                try {
                } catch (Exception e5) {
                    ForumBean.ForumPostsBean forumPostsBean3 = this.f30077r0;
                    if (forumPostsBean3 != null) {
                        forumPostsBean3.setBest(forumPostsBean.getBest());
                        K2();
                    }
                    o3(getString(R.string.forum_post_best_fail));
                    e5.printStackTrace();
                }
                if (!com.join.mgps.Util.i0.Y0(this)) {
                    com.join.mgps.Util.i0.L0(this);
                    o3(getString(R.string.forum_user_not_login));
                    this.f30102z1 = false;
                    return;
                }
                AccountBean T = com.join.mgps.Util.i0.T(this);
                ForumResponse<ForumData.ForumPostsBestData> r02 = this.f30071p0.r0(new ForumRequestBean.ForumPostsFavoritesRequestBean(T.getUid(), T.getToken(), forumPostsBean.getPid(), "").getParams());
                if (r02 != null) {
                    int error = r02.getError();
                    if (error == 0) {
                        ForumData.ForumPostsBestData data = r02.getData();
                        if (data != null) {
                            if (data.isResult()) {
                                boolean z3 = data.getBest() == 1;
                                if (z3) {
                                    o3(getString(R.string.forum_post_best_success));
                                } else {
                                    o3(getString(R.string.forum_post_debest_success));
                                }
                                if (!z3) {
                                    i2 = 0;
                                }
                                forumPostsBean.setBest(i2);
                            } else if (com.join.mgps.Util.d2.i(data.getMessage())) {
                                o3(data.getMessage());
                            }
                        } else {
                            o3(getString(R.string.forum_post_best_fail));
                        }
                    } else if (error == 701) {
                        o3(getString(R.string.forum_user_login_invalid));
                    }
                } else {
                    o3(getString(R.string.forum_post_best_fail));
                }
                ForumBean.ForumPostsBean forumPostsBean4 = this.f30077r0;
                if (forumPostsBean4 != null) {
                    forumPostsBean4.setBest(forumPostsBean.getBest());
                    K2();
                }
                return;
            } finally {
                this.f30102z1 = false;
            }
        }
        o3(getString(R.string.net_connect_failed));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void q2(String str, int i2, String str2) {
        ForumData.ForumResult data;
        if (com.join.android.app.common.utils.f.j(this)) {
            boolean z3 = true;
            if (this.f30038c2) {
                return;
            }
            this.f30038c2 = true;
            this.f30077r0.getPid();
            String uid = AccountUtil_.getInstance_(this).getUid();
            String token = AccountUtil_.getInstance_(this).getToken();
            ForumRequestBean.PostGagRequestBean postGagRequestBean = new ForumRequestBean.PostGagRequestBean();
            postGagRequestBean.setUid(uid);
            postGagRequestBean.setToken(token);
            postGagRequestBean.setGag_uid(str);
            postGagRequestBean.setGag_time(i2);
            postGagRequestBean.setRemarks(str2);
            try {
                try {
                    ForumResponse<ForumData.ForumResult> v02 = this.f30071p0.v0(postGagRequestBean.getParams());
                    if (v02 == null || v02.getError() != 0 || (data = v02.getData()) == null || !data.isResult()) {
                        z3 = false;
                    }
                    if (z3) {
                        o3("禁言成功");
                    } else {
                        String msg = (v02 == null || v02.getData() == null) ? "" : v02.getData().getMsg();
                        if (!TextUtils.isEmpty(msg)) {
                            o3(msg);
                        } else {
                            o3("禁言失败");
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return;
            } finally {
                this.f30038c2 = false;
            }
        }
        o3(getString(R.string.net_connect_failed));
    }

    void q3() {
        MyVideoView myVideoView = this.E1;
        if (myVideoView != null) {
            myVideoView.seekTo(0);
            this.E1.I();
            this.J1 = -1;
            this.E1.G();
            this.H1.setVisibility(8);
            MediaController mediaController = this.I1;
            if (mediaController != null) {
                mediaController.setVisibility(8);
            }
            this.G1.setVisibility(0);
            if (getResources().getConfiguration().orientation == 1) {
                this.C1.setVisibility(8);
                this.N1 = false;
                return;
            }
            t3();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void r1() {
        if (this.f30087u1) {
            return;
        }
        this.f30087u1 = true;
        ForumBean.ForumPostsBean forumPostsBean = this.f30077r0;
        forumPostsBean.setIs_favorite(true ^ forumPostsBean.is_favorite());
        L2();
        try {
            if (com.join.android.app.common.utils.f.j(this)) {
                try {
                    AccountUtil_.getInstance_(this).getAccountData();
                } catch (Exception e4) {
                    B2();
                    o3("帖子收藏失败");
                    e4.printStackTrace();
                }
                if (IntentUtil.getInstance().goLoginInteractive(this)) {
                    B2();
                    return;
                }
                AccountBean T = com.join.mgps.Util.i0.T(this);
                ForumRequestBean.ForumPostsFavoritesRequestBean forumPostsFavoritesRequestBean = new ForumRequestBean.ForumPostsFavoritesRequestBean(T.getUid(), T.getToken(), this.f30077r0.getPid(), "");
                int y3 = com.join.android.app.common.utils.j.n(this).y();
                String z3 = com.join.android.app.common.utils.j.n(this).z();
                forumPostsFavoritesRequestBean.setApp_ver(y3 + "_" + z3);
                ForumResponse<ForumData.ForumPostsFavoritesData> k02 = this.f30071p0.k0(forumPostsFavoritesRequestBean.getParams());
                if (k02 != null) {
                    int error = k02.getError();
                    if (error == 0) {
                        ForumData.ForumPostsFavoritesData data = k02.getData();
                        if (data != null) {
                            this.f30077r0.setIs_favorite(data.isFavorites());
                            L2();
                            if (data.isFavorites()) {
                                o3("帖子已收藏");
                            } else {
                                o3("帖子已取消收藏");
                            }
                            com.join.mgps.Util.i0.f1(this.f30077r0.getPid(), data.isFavorites());
                        } else {
                            B2();
                            o3("帖子收藏失败");
                        }
                    } else if (error == 701) {
                        B2();
                        o3("用户验证失效，请重新登录！");
                    }
                } else {
                    B2();
                    o3("帖子收藏失败");
                }
                L2();
                return;
            }
            o3(getString(R.string.net_connect_failed));
            e1(17);
        } finally {
            this.f30087u1 = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void r2() {
        try {
            if (!com.join.mgps.Util.i0.Y0(this)) {
                com.join.mgps.Util.i0.L0(this);
                o3("尚未登录，请先登录！");
                return;
            }
            ForumRequestBean.ForumPostsPraiseRequestBean e02 = com.join.mgps.Util.i0.e0(this, this.G0);
            e02.setDevice_id("");
            ForumResponse<ForumData.ForumPostsPraiseData> o3 = this.f30071p0.o(e02.getParams());
            if (o3 == null) {
                return;
            }
            if (o3.getError() == 706) {
                R2();
                d3();
                return;
            }
            ForumData.ForumPostsPraiseData data = o3.getData();
            boolean is_praise = this.f30077r0.is_praise();
            if (data.isResult()) {
                if (is_praise) {
                    o3("点赞成功");
                } else {
                    o3("取消点赞成功");
                }
            } else if (is_praise) {
                o3("点赞失败");
            } else {
                o3("取消点赞失败");
            }
            com.join.mgps.Util.i0.m1(e02, data);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void r3() {
        XListView4ForumPost xListView4ForumPost = this.f30039d;
        if (xListView4ForumPost == null || this.f30031a1 == null) {
            return;
        }
        try {
            if (xListView4ForumPost.i()) {
                this.f30031a1.sendEmptyMessageDelayed(0, 1500L);
            } else {
                this.f30031a1.sendEmptyMessage(0);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void s1() {
        IntentUtil intentUtil = IntentUtil.getInstance();
        intentUtil.goShareWebActivity(this, com.join.mgps.rpc.g.f51527l + "/group/posts/forum_report/index?pid=" + this.f30077r0.getPid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void s2(ListView listView, int i2, int i4, int i5) {
        if (i4 == i5 - 1 || this.f30069o1) {
            return;
        }
        try {
            try {
                this.f30069o1 = true;
                ArrayList arrayList = new ArrayList();
                for (int i6 = i4 + 1; i6 < this.f30092w0.size(); i6++) {
                    Object itemAtPosition = listView.getItemAtPosition(i4);
                    if (itemAtPosition instanceof ForumPostsAdapter.u0.j) {
                        arrayList.add(((ForumPostsAdapter.u0.j) itemAtPosition).f39772a);
                    } else if (itemAtPosition instanceof ForumPostsAdapter.u0.o) {
                        arrayList.add(((ForumPostsAdapter.u0.o) itemAtPosition).f39795a);
                    } else if (itemAtPosition instanceof ForumPostsAdapter.u0.k) {
                        arrayList.addAll(((ForumPostsAdapter.u0.k) itemAtPosition).f39775a);
                    } else if (itemAtPosition instanceof ForumPostsAdapter.u0.b) {
                        arrayList.add(((ForumPostsAdapter.u0.b) itemAtPosition).f39707a);
                    }
                }
                for (int i7 = 0; i7 < arrayList.size(); i7++) {
                    MyImageLoader.k((String) arrayList.get(i7));
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } finally {
            this.f30069o1 = false;
        }
    }

    void s3(ForumRequestBean.ForumPostsCommentRequestBean forumPostsCommentRequestBean) {
        try {
            if (!isLogined(this)) {
                showMessage(getString(R.string.forum_user_not_login));
            } else if (!u3()) {
                n3(-1);
                d3();
            } else if (forumPostsCommentRequestBean != null) {
                forumPostsCommentRequestBean.setDevice_id("");
                ForumResponse<ForumData.ForumPostsCommentData> z02 = this.f30071p0.z0(forumPostsCommentRequestBean.getParams1());
                if (z02 != null) {
                    int error = z02.getError();
                    if (error == 706) {
                        n3(-1);
                        o3(getString(R.string.tour_perfect_info_for_comment_toast));
                        d3();
                        return;
                    } else if (error == 701) {
                        G2();
                    }
                }
                E2(forumPostsCommentRequestBean, z02);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            n3(1);
        }
    }

    @Override // com.BaseAppCompatActivity
    public void showKeyBoardHandler() {
        super.showKeyBoardHandler();
        if (this.K0 == 1) {
            I1(false);
        } else {
            I1(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    public void showSystemKeyBoard(View view) {
        ((InputMethodManager) getSystemService("input_method")).showSoftInput(view, 0);
        this.f30049g1 = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void startDown(DetailResultBean detailResultBean) {
        DownloadTask downloadtaskDown;
        if (detailResultBean == null || (downloadtaskDown = detailResultBean.getDownloadtaskDown()) == null) {
            return;
        }
        downloadtaskDown.set_from(13203);
        downloadtaskDown.set_from_type(13203);
        ForumBean.GameInfo gameInfo = this.f30080s0;
        if (gameInfo != null && gameInfo.getDownloadTask() == null) {
            this.f30080s0.setDownloadTask(downloadtaskDown);
            c2();
        }
        if (UtilsMy.n0(downloadtaskDown.getPay_game_amount(), downloadtaskDown.getCrc_link_type_val()) > 0) {
            UtilsMy.m3(this, downloadtaskDown.getCrc_link_type_val());
            return;
        }
        UtilsMy.d1(downloadtaskDown, detailResultBean);
        if (UtilsMy.T0(this, downloadtaskDown)) {
            return;
        }
        if (detailResultBean.getDown_status() == 5) {
            UtilsMy.R0(this, downloadtaskDown);
        } else {
            UtilsMy.F0(this, downloadtaskDown, downloadtaskDown.getTp_down_url(), downloadtaskDown.getOther_down_switch(), downloadtaskDown.getCdn_down_switch());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void t1(int i2, int i4) {
        IntentUtil intentUtil = IntentUtil.getInstance();
        intentUtil.goShareWebActivity(this, com.join.mgps.rpc.g.f51527l + "/group/posts/forum_report/index?pid=" + this.f30077r0.getPid() + "&cid=" + i2 + "&rid=" + i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void t2(int i2) {
        int i4 = 0;
        while (true) {
            try {
                if (i4 >= this.f30083t0.size()) {
                    break;
                }
                ForumBean.ForumCommentBean forumCommentBean = this.f30083t0.get(i4);
                if (forumCommentBean.getPid() == i2) {
                    this.f30083t0.remove(forumCommentBean);
                    if (this.f30086u0.contains(Integer.valueOf(i2))) {
                        this.f30086u0.remove(Integer.valueOf(i2));
                    }
                } else {
                    i4++;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        if (this.f30077r0.getCommit() > 0) {
            ForumBean.ForumPostsBean forumPostsBean = this.f30077r0;
            forumPostsBean.setCommit(forumPostsBean.getCommit() - 1);
            J2();
        }
        c2();
    }

    void t3() {
        MyVideoView myVideoView = this.E1;
        if (myVideoView != null) {
            myVideoView.setFullScreen(!this.M1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void touristLogin() {
        if (!com.join.android.app.common.utils.f.j(this) || isLogined(this)) {
            return;
        }
        try {
            TouristLoginRequestBean touristLoginRequestBean = new TouristLoginRequestBean();
            touristLoginRequestBean.setVersion(com.join.android.app.common.utils.j.n(this).z());
            touristLoginRequestBean.setDevice_id("");
            touristLoginRequestBean.setMac("");
            touristLoginRequestBean.setSource(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
            touristLoginRequestBean.setTuid(new PrefDef_(this).touriseTUID().d().longValue());
            touristLoginRequestBean.setSign(com.join.mgps.Util.u1.f(touristLoginRequestBean));
            AccountResultMainBean<AccountTokenSuccess> s3 = this.f30037c1.s(touristLoginRequestBean.getParams());
            if (s3 != null && s3.getError() == 0) {
                if (s3.getData().is_success()) {
                    AccountUtil_.getInstance_(this).saveAccountData(s3.getData().getUser_info(), this);
                } else {
                    error(s3.getData().getError_msg());
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void u2(int i2) {
        try {
            this.f30077r0.setSolve_flg(1);
            int i4 = 0;
            while (true) {
                if (i4 >= this.f30083t0.size()) {
                    break;
                }
                ForumBean.ForumCommentBean forumCommentBean = this.f30083t0.get(i4);
                if (forumCommentBean.getPid() == i2) {
                    forumCommentBean.setAnswer_flg(1);
                    break;
                }
                i4++;
            }
            c2();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    boolean u3() {
        if (accountBean(this) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this).isTourist();
    }

    void updateUI(DownloadTask downloadTask, int i2) {
        if (downloadTask == null) {
            if (i2 != 4) {
                return;
            }
            H2();
            return;
        }
        switch (i2) {
            case 1:
            case 2:
            case 7:
            case 8:
            case 9:
                receiveStart(downloadTask);
                return;
            case 3:
                receiveDelete(downloadTask);
                return;
            case 4:
                H2();
                return;
            case 5:
                receiveSuccess(downloadTask);
                return;
            case 6:
                receiveError(downloadTask);
                return;
            default:
                return;
        }
    }

    void v1() {
        IntentUtil.getInstance().goForumPostsTagSelectActivity(this, 1, this.f30077r0.getPid(), JsonMapper.getInstance().toJson(this.f30077r0.getEmploy_tags()), this.f30077r0.getPost_type());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void v2(List<ForumBean.ForumCommentBean> list, int i2) {
        if (list != null) {
            try {
                if (list.size() != 0) {
                    if (i2 == 1) {
                        this.f30083t0.clear();
                        this.O0 = 1;
                        r3();
                    }
                    for (int i4 = 0; i4 < list.size(); i4++) {
                        int pid = list.get(i4).getPid();
                        if (this.f30086u0.containsKey(Integer.valueOf(pid))) {
                            this.f30083t0.remove(this.f30086u0.get(Integer.valueOf(pid)));
                            this.f30086u0.remove(Integer.valueOf(pid));
                        } else {
                            this.f30086u0.put(Integer.valueOf(pid), list.get(i4));
                        }
                    }
                    this.f30083t0.addAll(list);
                    J2();
                    r3();
                    c2();
                    Z1();
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        this.f30083t0.clear();
        J2();
        r3();
        c2();
        Z1();
    }

    public void v3(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration.orientation == 2) {
            this.f30039d.setVisibility(4);
        } else {
            this.f30039d.setVisibility(0);
        }
    }

    void w1() {
        IntentUtil.getInstance().goForumPostsTagSelectActivity(this, 2, this.f30077r0.getPid(), JsonMapper.getInstance().toJson(this.f30077r0.getTag_list()), this.f30077r0.getPost_type());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void w2(ForumBean.ForumCommentReplyBean forumCommentReplyBean) {
        int i2 = 0;
        while (true) {
            try {
                if (i2 >= this.f30083t0.size()) {
                    break;
                }
                ForumBean.ForumCommentBean forumCommentBean = this.f30083t0.get(i2);
                if (forumCommentReplyBean.getRrid() == 0 && this.H0 == forumCommentBean.getPid()) {
                    List<ForumBean.ForumCommentReplyBean> reply_list = forumCommentBean.getReply_list();
                    if (reply_list == null) {
                        reply_list = new ArrayList<>();
                    }
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(reply_list);
                    arrayList.add(forumCommentReplyBean);
                    forumCommentBean.setReply_list(arrayList);
                } else {
                    i2++;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        ForumBean.ForumPostsBean forumPostsBean = this.f30077r0;
        forumPostsBean.setCommit(forumPostsBean.getCommit() + 1);
        J2();
        com.join.mgps.Util.i2.a(this).b("评论成功，内容将在审核后显示");
        c2();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void w3(AbsListView absListView, int i2, int i4, int i5) {
        d2();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void x1(String str) {
        if (com.join.android.app.common.utils.f.j(this)) {
            if (this.W1 == 1) {
                return;
            }
            try {
                try {
                    AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
                    ResultMainBean<List<DetailResultBean>> R = this.f30043e1.R(RequestBeanUtil.getInstance(this).getAppDetialBean(str, accountData != null ? accountData.getUid() : 0, null));
                    if (R != null && R.getFlag() != 0) {
                        List<DetailResultBean> data = R.getMessages().getData();
                        if (data.size() != 0) {
                            DetailResultBean detailResultBean = data.get(0);
                            if (this.X1) {
                                startDown(detailResultBean);
                            }
                        }
                    } else if (R != null && R.getFlag() != 0) {
                        o3("获取游戏信息失败");
                    } else {
                        o3("获取游戏信息失败");
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    o3("获取游戏信息失败");
                }
                return;
            } finally {
                this.W1 = 0;
                this.X1 = false;
            }
        }
        o3("获取游戏信息失败");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void x2(ForumBean.ForumCommentReplyBean forumCommentReplyBean) {
        for (int i2 = 0; i2 < this.f30083t0.size(); i2++) {
            try {
                ForumBean.ForumCommentBean forumCommentBean = this.f30083t0.get(i2);
                if (this.H0 == forumCommentBean.getPid()) {
                    List<ForumBean.ForumCommentReplyBean> reply_list = forumCommentBean.getReply_list();
                    if (reply_list != null && reply_list.size() != 0) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.addAll(reply_list);
                        int i4 = 0;
                        while (true) {
                            if (i4 < reply_list.size()) {
                                ForumBean.ForumCommentReplyBean forumCommentReplyBean2 = reply_list.get(i4);
                                if (forumCommentReplyBean2.getRid() == forumCommentReplyBean.getRrid()) {
                                    forumCommentReplyBean.setRuid(forumCommentReplyBean2.getUid());
                                    forumCommentReplyBean.setRnickname(forumCommentReplyBean2.getNickname());
                                    arrayList.add(forumCommentReplyBean);
                                    reply_list.clear();
                                    reply_list.addAll(arrayList);
                                    break;
                                }
                                i4++;
                            }
                        }
                    }
                    ArrayList arrayList2 = new ArrayList();
                    forumCommentReplyBean.setRuid(forumCommentBean.getUid());
                    forumCommentReplyBean.setRnickname(forumCommentBean.getNickname());
                    arrayList2.add(forumCommentReplyBean);
                    forumCommentBean.setReply_list(arrayList2);
                    break;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        com.join.mgps.Util.i2.a(this).b("评论成功，内容将在审核后显示");
        c2();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void x3(AbsListView absListView, int i2) {
        if (i2 == 0) {
            l2(!T1());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void y2(ForumBean.ForumCommentBean forumCommentBean) {
        try {
            if (this.f30083t0 == null) {
                this.f30083t0 = new ArrayList();
            }
            this.f30083t0.add(forumCommentBean);
            this.f30086u0.put(Integer.valueOf(forumCommentBean.getPid()), forumCommentBean);
            c2();
            com.join.mgps.Util.i2.a(this).b("评论成功，内容将在审核后显示");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void z2(int i2) {
        try {
            if (this.f30083t0 != null && this.f30083t0.size() != 0) {
                for (ForumBean.ForumCommentBean forumCommentBean : this.f30083t0) {
                    if (forumCommentBean.getReply_list() != null && forumCommentBean.getReply_list().size() != 0) {
                        for (ForumBean.ForumCommentReplyBean forumCommentReplyBean : forumCommentBean.getReply_list()) {
                            if (forumCommentReplyBean.getRid() == i2) {
                                forumCommentBean.getReply_list().remove(forumCommentReplyBean);
                                c2();
                                return;
                            }
                        }
                        continue;
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
