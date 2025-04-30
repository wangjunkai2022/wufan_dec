package com.join.mgps.activity;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.view.ClearEditText;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.posting.PostingActivity;
import com.join.mgps.adapter.ForumProfileMessageReplyAdapter;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.KeyboardListenLayout;
import com.join.mgps.customview.RewardType;
import com.join.mgps.customview.XListView;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.GroupInfoBean;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.TouristLoginRequestBean;
import com.join.mgps.pref.PrefDef_;
import it.sephiroth.android.library.widget.HListView;
import java.io.File;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
@EActivity(R.layout.mg_forum_profile_message_reply_activity)
/* loaded from: classes3.dex */
public class ForumProfileMessageReplyActivity extends BaseActivity {
    public static final String Q0 = "key_forum_comment_bean";
    public static final String R0 = "key_forum_post_bean";
    public static final String S0 = "key_forum_reply_bean";
    private static final int T0 = 9;
    private PopupWindow C0;
    private Button D0;
    private Button E0;
    private com.join.mgps.dialog.p0 J;
    private com.join.mgps.dialog.q0 K;
    private com.join.mgps.dialog.s1 O0;
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    RelativeLayout f30571a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ImageView f30572b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f30573c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f30574d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    ForumLoadingView f30575e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    ClearEditText f30576f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    Button f30577g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    Button f30578h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    TextView f30579i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ImageView f30580j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    TextView f30581k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    Button f30582l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    LinearLayout f30583m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    View f30584n;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    LinearLayout f30586o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    HListView f30588p;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    XListView f30590q;

    /* renamed from: r  reason: collision with root package name */
    ForumProfileMessageReplyAdapter f30592r;

    /* renamed from: s  reason: collision with root package name */
    List<ForumProfileMessageReplyAdapter.u> f30594s;

    /* renamed from: t  reason: collision with root package name */
    ForumBean.ForumCommentBean f30596t;

    /* renamed from: u  reason: collision with root package name */
    ForumBean.ForumPostsBean f30598u;

    /* renamed from: v  reason: collision with root package name */
    ForumBean.ForumCommentReplyBean f30600v;
    @StringRes(resName = "net_excption")

    /* renamed from: w  reason: collision with root package name */
    String f30602w;

    /* renamed from: w0  reason: collision with root package name */
    private int f30603w0;
    @StringRes(resName = "connect_server_excption")

    /* renamed from: x  reason: collision with root package name */
    String f30604x;

    /* renamed from: x0  reason: collision with root package name */
    private int f30605x0;

    /* renamed from: y  reason: collision with root package name */
    com.join.mgps.rpc.h f30606y;

    /* renamed from: y0  reason: collision with root package name */
    private int f30607y0;

    /* renamed from: z  reason: collision with root package name */
    com.join.mgps.rpc.b f30608z;

    /* renamed from: z0  reason: collision with root package name */
    private String f30609z0;
    private boolean A = false;
    private final int B = 0;
    private final int C = 16;
    private final int D = 32;
    private final int E = 17;
    private final int F = 18;
    private final int G = 20;
    private final int H = 24;
    private int I = 0;

    /* renamed from: n0  reason: collision with root package name */
    private final int f30585n0 = 1;

    /* renamed from: o0  reason: collision with root package name */
    private final int f30587o0 = 2;

    /* renamed from: p0  reason: collision with root package name */
    private final int f30589p0 = 4;

    /* renamed from: q0  reason: collision with root package name */
    private final int f30591q0 = 17;

    /* renamed from: r0  reason: collision with root package name */
    private final int f30593r0 = 18;

    /* renamed from: s0  reason: collision with root package name */
    private final int f30595s0 = 20;

    /* renamed from: t0  reason: collision with root package name */
    private final int f30597t0 = 33;

    /* renamed from: u0  reason: collision with root package name */
    private final int f30599u0 = 34;

    /* renamed from: v0  reason: collision with root package name */
    private final int f30601v0 = 36;
    private int A0 = 2;
    int B0 = 0;
    ForumProfileMessageReplyAdapter.o F0 = new i();
    Handler G0 = new j();
    private boolean H0 = false;
    boolean I0 = false;
    boolean J0 = false;
    boolean K0 = false;
    boolean L0 = false;
    boolean M0 = false;
    com.join.mgps.customview.t N0 = null;
    private final PostingActivity.m P0 = new h();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends ForumLoadingView.e {
        a(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            super.a(view);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            Context applicationContext = ForumProfileMessageReplyActivity.this.getApplicationContext();
            if (com.join.mgps.Util.i0.Y0(applicationContext)) {
                ForumProfileMessageReplyActivity.this.q1();
                return;
            }
            ForumProfileMessageReplyActivity.this.showToast("用户未登录，请登录！");
            com.join.mgps.Util.i0.L0(applicationContext);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumProfileMessageReplyActivity.this.b1();
            if (ForumProfileMessageReplyActivity.this.f30605x0 == -1) {
                return;
            }
            if (ForumProfileMessageReplyActivity.this.A0 == 1) {
                ForumProfileMessageReplyActivity.this.A0 = 2;
            }
            if (ForumProfileMessageReplyActivity.this.A0 == 2) {
                ForumProfileMessageReplyActivity.this.A0 = 4;
            }
            ForumProfileMessageReplyActivity.this.f30576f.requestFocus();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumProfileMessageReplyActivity.this.b1();
            if (ForumProfileMessageReplyActivity.this.f30605x0 == -1) {
                return;
            }
            if (ForumProfileMessageReplyActivity.this.A0 == 1) {
                ForumProfileMessageReplyActivity.this.A0 = 17;
            }
            if (ForumProfileMessageReplyActivity.this.A0 == 2) {
                ForumProfileMessageReplyActivity.this.A0 = 18;
            }
            if (ForumProfileMessageReplyActivity.this.A0 == 4) {
                ForumProfileMessageReplyActivity.this.A0 = 20;
            }
            ForumProfileMessageReplyActivity.this.T1(ForumProfileMessageReplyActivity.this.f30605x0, ForumProfileMessageReplyActivity.this.f30607y0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnTouchListener {
        d() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 4) {
                ForumProfileMessageReplyActivity.this.C0.dismiss();
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumProfileMessageReplyActivity.this.J.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements DialogInterface.OnCancelListener {
        f() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            ForumProfileMessageReplyActivity.this.B0 = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30616a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30617b;

        g(int i2, int i4) {
            this.f30616a = i2;
            this.f30617b = i4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumProfileMessageReplyActivity.this.A0 != 17) {
                if (ForumProfileMessageReplyActivity.this.A0 == 18 || ForumProfileMessageReplyActivity.this.A0 == 20) {
                    ForumProfileMessageReplyActivity.this.X0(this.f30617b);
                }
            } else {
                ForumProfileMessageReplyActivity.this.W0(this.f30616a);
            }
            ForumProfileMessageReplyActivity.this.J.dismiss();
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
            ForumProfileMessageReplyActivity.this.finish();
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
                IntentUtil.getInstance().goShareWebActivity(ForumProfileMessageReplyActivity.this, com.join.mgps.rpc.g.f51551t);
            } else if (i2 != 4356) {
            } else {
                IntentUtil.getInstance().goShareWebActivity(ForumProfileMessageReplyActivity.this, com.join.mgps.rpc.g.f51548s);
            }
        }
    }

    /* loaded from: classes3.dex */
    class i implements ForumProfileMessageReplyAdapter.o {
        i() {
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void a(int i2) {
            ForumProfileMessageReplyActivity forumProfileMessageReplyActivity = ForumProfileMessageReplyActivity.this;
            if (!com.join.mgps.Util.i0.Y0(forumProfileMessageReplyActivity)) {
                com.join.mgps.Util.i2.a(forumProfileMessageReplyActivity).b("用户未登录，请登录");
                com.join.mgps.Util.i0.L0(forumProfileMessageReplyActivity);
            } else if (ForumProfileMessageReplyActivity.this.Z1()) {
                ForumProfileMessageReplyActivity.this.G1();
                ForumProfileMessageReplyActivity.this.v1();
            } else {
                ForumProfileMessageReplyActivity.this.N1();
            }
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void b(int i2) {
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void c(int i2, int i4, String str) {
            ForumProfileMessageReplyActivity.this.F1(i2, i4, str);
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void d(int i2) {
            ForumProfileMessageReplyActivity.this.A0 = 17;
            ForumProfileMessageReplyActivity.this.T1(i2, 0);
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void e(View view, int i2, int i4) {
            ForumProfileMessageReplyActivity.this.f30605x0 = i2;
            ForumProfileMessageReplyActivity.this.f30607y0 = 0;
            ForumProfileMessageReplyActivity.this.R1(view.findViewById(R.id.comment_message), 1);
            AccountBean T = com.join.mgps.Util.i0.T(view.getContext());
            if (T == null) {
                return;
            }
            if (i4 == T.getUid()) {
                ForumProfileMessageReplyActivity.this.L1(true, true);
            } else {
                ForumProfileMessageReplyActivity.this.L1(false, true);
            }
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void f(int i2) {
            ForumProfileMessageReplyActivity.this.e1(0, i2);
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void g(int i2) {
            ForumProfileMessageReplyActivity.this.A0 = 18;
            ForumProfileMessageReplyActivity.this.T1(0, i2);
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void h(int i2, String str) {
            ForumProfileMessageReplyActivity.this.V0(i2, str);
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void i(View view, int i2) {
            ForumProfileMessageReplyActivity.this.h1(true);
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void j(int i2) {
            ForumProfileMessageReplyActivity.this.e1(i2, 0);
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void k(int i2, int i4, String str) {
            ForumProfileMessageReplyActivity.this.h1(true);
            ForumProfileMessageReplyActivity.this.A0 = 4;
            ForumProfileMessageReplyActivity.this.f30605x0 = i2;
            ForumProfileMessageReplyActivity.this.f30607y0 = i4;
            ForumProfileMessageReplyActivity.this.f30576f.setText("");
            ForumProfileMessageReplyActivity.this.f30576f.requestFocus();
            ForumProfileMessageReplyActivity forumProfileMessageReplyActivity = ForumProfileMessageReplyActivity.this;
            forumProfileMessageReplyActivity.showSystemKeyBoard(forumProfileMessageReplyActivity.f30576f);
            ClearEditText clearEditText = ForumProfileMessageReplyActivity.this.f30576f;
            clearEditText.setHint("回复" + str + ":");
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void l(View view, int i2, int i4, int i5) {
            ForumProfileMessageReplyActivity.this.h1(true);
            ForumProfileMessageReplyActivity.this.A0 = 4;
            ForumProfileMessageReplyActivity.this.f30605x0 = i2;
            ForumProfileMessageReplyActivity.this.f30607y0 = i4;
            ForumProfileMessageReplyActivity.this.R1(view, 4);
            AccountBean T = com.join.mgps.Util.i0.T(view.getContext());
            if (T == null) {
                return;
            }
            if (i5 == T.getUid()) {
                ForumProfileMessageReplyActivity.this.L1(true, true);
            } else {
                ForumProfileMessageReplyActivity.this.L1(false, true);
            }
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void m() {
            ForumProfileMessageReplyActivity.this.U0();
        }
    }

    /* loaded from: classes3.dex */
    class j extends Handler {
        j() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            ForumProfileMessageReplyActivity.this.f30590q.r();
            ForumProfileMessageReplyActivity.this.f30590q.q();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k implements KeyboardListenLayout.a {
        k() {
        }

        @Override // com.join.mgps.customview.KeyboardListenLayout.a
        public void onHidden() {
        }

        @Override // com.join.mgps.customview.KeyboardListenLayout.a
        public void onShown() {
            ForumProfileMessageReplyActivity.this.h1(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements View.OnFocusChangeListener {
        l() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z3) {
            if (z3) {
                ForumProfileMessageReplyActivity.this.f30579i.setVisibility(8);
                ForumProfileMessageReplyActivity.this.f30577g.setVisibility(8);
                ForumProfileMessageReplyActivity.this.f30580j.setVisibility(8);
                ForumProfileMessageReplyActivity.this.f30578h.setVisibility(0);
                ForumProfileMessageReplyActivity.this.showSystemKeyBoard(view);
                return;
            }
            ForumProfileMessageReplyActivity.this.f30579i.setVisibility(0);
            ForumProfileMessageReplyActivity.this.f30578h.setVisibility(8);
            ForumProfileMessageReplyActivity.this.f30580j.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m implements com.join.mgps.customview.i {
        m() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (!com.join.android.app.common.utils.f.j(ForumProfileMessageReplyActivity.this)) {
                ForumProfileMessageReplyActivity forumProfileMessageReplyActivity = ForumProfileMessageReplyActivity.this;
                forumProfileMessageReplyActivity.showToast(forumProfileMessageReplyActivity.getString(R.string.net_connect_failed));
                ForumProfileMessageReplyActivity.this.W1();
                return;
            }
            ForumProfileMessageReplyActivity.this.W1();
            ForumProfileMessageReplyActivity.this.f30590q.setNoMore();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n implements com.join.mgps.customview.j {
        n() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (!com.join.android.app.common.utils.f.j(ForumProfileMessageReplyActivity.this)) {
                ForumProfileMessageReplyActivity.this.W1();
                ForumProfileMessageReplyActivity forumProfileMessageReplyActivity = ForumProfileMessageReplyActivity.this;
                forumProfileMessageReplyActivity.showToast(forumProfileMessageReplyActivity.getString(R.string.net_connect_failed));
                return;
            }
            ForumProfileMessageReplyActivity.this.f1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o extends ForumLoadingView.e {
        o(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            super.a(view);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            Context applicationContext = ForumProfileMessageReplyActivity.this.getApplicationContext();
            if (com.join.mgps.Util.i0.Y0(applicationContext)) {
                ForumProfileMessageReplyActivity.this.q1();
                return;
            }
            ForumProfileMessageReplyActivity.this.showToast("用户未登录，请登录！");
            com.join.mgps.Util.i0.L0(applicationContext);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p extends ForumLoadingView.e {
        p(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            super.a(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q extends ForumLoadingView.e {
        q(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            Context applicationContext = ForumProfileMessageReplyActivity.this.getApplicationContext();
            if (com.join.mgps.Util.i0.Y0(applicationContext)) {
                ForumProfileMessageReplyActivity.this.q1();
                return;
            }
            ForumProfileMessageReplyActivity.this.showToast("用户未登录，请登录！");
            com.join.mgps.Util.i0.L0(applicationContext);
        }
    }

    private void D1() {
        if (AccountUtil_.getInstance_(this).isTourist()) {
            touristLogin();
        } else {
            showMessage(getString(R.string.forum_user_login_invalid));
        }
    }

    private void E1() {
        ForumBean.ForumCommentBean forumCommentBean = this.f30596t;
        if (forumCommentBean != null) {
            int size = forumCommentBean.getReply_list() != null ? this.f30596t.getReply_list().size() : 0;
            TextView textView = this.f30579i;
            textView.setText("已有" + size + "条回复");
            return;
        }
        this.f30579i.setText("已有0条回复");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G1() {
        boolean is_praise = this.f30598u.is_praise();
        int praise = this.f30598u.getPraise();
        this.f30598u.setPraise(is_praise ? praise - 1 : praise + 1);
        this.f30598u.setIs_praise(!is_praise);
        r1(this.f30598u.is_praise(), this.f30598u.getPraise());
    }

    private void J1() {
        if (!isLogined(this)) {
            showMessage(getString(R.string.forum_user_not_login));
        } else if (!Z1()) {
            N1();
        } else {
            ForumRequestBean.ForumCommentReplyRequestBean Y = com.join.mgps.Util.i0.Y(this, this.f30605x0, this.f30609z0, this.f30607y0);
            Y.setDevice_id("");
            ForumResponse<ForumData.ForumCommentReplyReplyData> J = this.f30606y.J(Y.getParams());
            if (J == null) {
                V1(1);
            } else if (J.getError() == 706) {
                showToast(getString(R.string.tour_perfect_info_for_comment_toast));
                N1();
            } else {
                ForumData.ForumCommentReplyReplyData data = J.getData();
                if (data.isResult()) {
                    V1(2);
                    ForumBean.ForumCommentReplyBean forumCommentReplyBean = new ForumBean.ForumCommentReplyBean();
                    AccountBean T = com.join.mgps.Util.i0.T(this);
                    forumCommentReplyBean.setUid(T.getUid());
                    forumCommentReplyBean.setNickname(T.getNickname());
                    forumCommentReplyBean.setMessage(Y.getMessage());
                    forumCommentReplyBean.setAdd_time(System.currentTimeMillis() / 1000);
                    forumCommentReplyBean.setRrid(this.f30607y0);
                    if (this.f30607y0 != 0) {
                        forumCommentReplyBean.setRid(data.getRid());
                        y1(forumCommentReplyBean);
                        U1(RewardType.REPLY_POST, data.getReward_money(), data.getReward_exp());
                    }
                } else if (data.getError_type() == 1) {
                    S1(data.getError_type());
                } else {
                    if (TextUtils.isEmpty(data.getMsg())) {
                        showToast(data.getMsg());
                    }
                    V1(1);
                }
            }
        }
    }

    private void K1() {
        if (!isLogined(this)) {
            showMessage(getString(R.string.forum_user_not_login));
        } else if (!Z1()) {
            N1();
        } else {
            ForumRequestBean.ForumCommentReplyRequestBean Y = com.join.mgps.Util.i0.Y(this, this.f30605x0, this.f30609z0, this.f30607y0);
            Y.setDevice_id("");
            ForumResponse<ForumData.ForumCommentReplyData> l02 = this.f30606y.l0(Y.getParams());
            if (l02 == null) {
                V1(1);
            } else if (l02.getError() == 706) {
                showToast(getString(R.string.tour_perfect_info_for_comment_toast));
                N1();
            } else {
                ForumData.ForumCommentReplyData data = l02.getData();
                if (data.isResult()) {
                    V1(2);
                    ForumBean.ForumCommentReplyBean forumCommentReplyBean = new ForumBean.ForumCommentReplyBean();
                    AccountBean T = com.join.mgps.Util.i0.T(this);
                    forumCommentReplyBean.setUid(T.getUid());
                    forumCommentReplyBean.setNickname(T.getNickname());
                    forumCommentReplyBean.setMessage(Y.getMessage());
                    forumCommentReplyBean.setAdd_time(System.currentTimeMillis() / 1000);
                    forumCommentReplyBean.setRrid(this.f30607y0);
                    forumCommentReplyBean.setRid(data.getRid());
                    x1(forumCommentReplyBean);
                    U1(RewardType.REPLY_POST, data.getReward_money(), data.getReward_exp());
                } else if (data.getError_type() == 1) {
                    S1(data.getError_type());
                } else {
                    if (TextUtils.isEmpty(data.getMsg())) {
                        showToast(data.getMsg());
                    }
                    V1(1);
                }
            }
        }
    }

    private void Z0(List<String> list) {
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

    private void a1() {
        com.join.mgps.customview.t tVar = this.N0;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.N0.dismiss();
    }

    private AccountBean accountBean(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b1() {
        PopupWindow popupWindow = this.C0;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        this.C0.dismiss();
    }

    private boolean i1(View view, MotionEvent motionEvent) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i2 = iArr[0];
        int i4 = iArr[1];
        return motionEvent.getX() >= ((float) i2) && motionEvent.getX() <= ((float) (i2 + view.getWidth())) && motionEvent.getY() >= ((float) i4) && motionEvent.getY() <= ((float) (i4 + view.getHeight()));
    }

    private boolean isLogined(Context context) {
        AccountBean accountBean = accountBean(context);
        return accountBean != null && com.join.mgps.Util.d2.i(accountBean.getToken());
    }

    private void j1() {
        View inflate = LayoutInflater.from(this).inflate(R.layout.mg_forum_popupwindow_layout, (ViewGroup) null);
        this.C0 = new PopupWindow(inflate, -2, -2);
        this.E0 = (Button) inflate.findViewById(R.id.btn_forum_comment);
        this.D0 = (Button) inflate.findViewById(R.id.btn_forum_comment_delete);
        this.E0.setOnClickListener(new b());
        this.D0.setOnClickListener(new c());
        this.C0.setBackgroundDrawable(new BitmapDrawable());
        this.C0.setTouchable(true);
        this.C0.setOutsideTouchable(true);
        this.C0.setTouchInterceptor(new d());
    }

    private void k1() {
        this.f30573c.setText("我的消息");
        this.f30574d.setText("查看主贴");
        String str = (String) getIntent().getSerializableExtra(Q0);
        String str2 = (String) getIntent().getSerializableExtra(R0);
        String str3 = (String) getIntent().getSerializableExtra(S0);
        if (!com.join.mgps.Util.d2.h(str)) {
            this.f30596t = (ForumBean.ForumCommentBean) JsonMapper.getInstance().fromJson(str, JsonMapper.getInstance().createCollectionType(ForumBean.ForumCommentBean.class, new Class[0]));
        }
        if (!com.join.mgps.Util.d2.h(str2)) {
            this.f30598u = (ForumBean.ForumPostsBean) JsonMapper.getInstance().fromJson(str2, JsonMapper.getInstance().createCollectionType(ForumBean.ForumPostsBean.class, new Class[0]));
        }
        if (!com.join.mgps.Util.d2.h(str3)) {
            this.f30600v = (ForumBean.ForumCommentReplyBean) JsonMapper.getInstance().fromJson(str3, JsonMapper.getInstance().createCollectionType(ForumBean.ForumCommentReplyBean.class, new Class[0]));
        }
        ForumBean.ForumCommentBean forumCommentBean = this.f30596t;
        if (forumCommentBean != null && this.f30598u != null) {
            this.f30605x0 = forumCommentBean.getPid();
            this.K = new com.join.mgps.dialog.q0(this);
            j1();
            this.f30580j.setVisibility(8);
            U0();
            try {
                ((KeyboardListenLayout) this.f30571a.getParent()).setOnSoftKeyboardListener(new k());
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            this.f30577g.setVisibility(8);
            this.f30576f.setOnFocusChangeListener(new l());
            this.f30590q.setPreLoadCount(com.join.mgps.Util.i0.f27593e);
            this.f30590q.setPullLoadEnable(new m());
            this.f30590q.setPullRefreshEnable(new n());
            this.f30592r = new ForumProfileMessageReplyAdapter(this);
            this.f30594s = new ArrayList();
            this.f30592r.C(this.F0);
            this.f30590q.setAdapter((ListAdapter) this.f30592r);
            ForumBean.ForumCommentBean forumCommentBean2 = this.f30596t;
            if (forumCommentBean2 != null && forumCommentBean2.getPid() != 0) {
                this.f30605x0 = this.f30596t.getPid();
            }
            ForumBean.ForumPostsBean forumPostsBean = this.f30598u;
            if (forumPostsBean != null && forumPostsBean.getPid() != 0) {
                this.f30603w0 = this.f30598u.getPid();
            }
            ForumBean.ForumCommentReplyBean forumCommentReplyBean = this.f30600v;
            if (forumCommentReplyBean == null || forumCommentReplyBean.getRid() == 0) {
                return;
            }
            this.f30607y0 = this.f30600v.getRid();
            return;
        }
        finish();
    }

    private void o1() {
        R0(18);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q1() {
        R0(0);
        o1();
        if (com.join.android.app.common.utils.f.j(this)) {
            p1();
            return;
        }
        showToast(getString(R.string.net_connect_failed));
        R0(17);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void A1(int i2) {
        ForumBean.ForumCommentBean forumCommentBean = this.f30596t;
        if (forumCommentBean.getReply_list() == null || forumCommentBean.getReply_list().size() == 0) {
            return;
        }
        for (ForumBean.ForumCommentReplyBean forumCommentReplyBean : forumCommentBean.getReply_list()) {
            if (forumCommentReplyBean.getRid() == i2) {
                forumCommentBean.getReply_list().remove(forumCommentReplyBean);
                t1();
                return;
            }
        }
    }

    void B1(ForumRequestBean.ForumPostsCommentRequestBean forumPostsCommentRequestBean, ForumResponse<ForumData.ForumPostsCommentData> forumResponse) {
        try {
            try {
            } catch (Exception e4) {
                e4.printStackTrace();
                V1(1);
            }
            if (forumResponse == null) {
                V1(1);
            } else {
                ForumData.ForumPostsCommentData data = forumResponse.getData();
                if (data.isResult()) {
                    V1(2);
                    ForumBean.ForumCommentBean forumCommentBean = new ForumBean.ForumCommentBean();
                    forumCommentBean.setPid(data.getPid());
                    AccountBean T = com.join.mgps.Util.i0.T(this);
                    forumCommentBean.setUid(T.getUid());
                    forumCommentBean.setNickname(T.getNickname());
                    forumCommentBean.setAvatar_src(T.getAvatarSrc());
                    forumCommentBean.setMessage(forumPostsCommentRequestBean.getMessage());
                    forumCommentBean.setAdd_time(System.currentTimeMillis() / 1000);
                    forumCommentBean.setPic_list(data.getPic_list());
                    forumCommentBean.setRaw_pic_list(data.getRaw_pic_list());
                    forumCommentBean.setFloor(data.getFloor());
                    z1(forumCommentBean);
                    U1(RewardType.COMMENT_POST, data.getReward_money(), data.getReward_exp());
                    C1(1);
                    Z0(forumPostsCommentRequestBean.getImages());
                } else if (data.getError_type() == 1) {
                    c1();
                    S1(data.getError_type());
                } else if (!TextUtils.isEmpty(data.getMsg())) {
                    c1();
                    showToast(data.getMsg());
                } else {
                    V1(1);
                }
            }
        } finally {
            U0();
            g1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void C1(int i2) {
        t1();
    }

    void F1(int i2, int i4, String str) {
        h1(true);
        this.A0 = 4;
        this.f30605x0 = i2;
        this.f30607y0 = i4;
        this.f30576f.setText("");
        this.f30576f.requestFocus();
        showSystemKeyBoard(this.f30576f);
        ClearEditText clearEditText = this.f30576f;
        clearEditText.setHint("回复" + str + ":");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void H1() {
        try {
            if (com.join.android.app.common.utils.f.j(this)) {
                if (!com.join.mgps.Util.i0.Y0(this)) {
                    com.join.mgps.Util.i0.L0(this);
                    com.join.mgps.Util.i2.a(this).b("尚未登录，请先登录！");
                    return;
                }
                V1(0);
                this.B0 = 1;
                net.bither.util.b.q().y();
                return;
            }
            this.B0 = 0;
            showToast(getString(R.string.net_connect_failed));
        } catch (Exception e4) {
            this.B0 = 0;
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void I1() {
        try {
            try {
            } catch (Exception e4) {
                e4.printStackTrace();
                V1(1);
            }
            if (!com.join.mgps.Util.i0.Y0(this)) {
                com.join.mgps.Util.i0.L0(this);
                showToast("尚未登录，请先登录！");
                return;
            }
            V1(0);
            synchronized (Integer.valueOf(this.f30607y0)) {
                if (this.f30607y0 == 0) {
                    K1();
                } else {
                    J1();
                }
            }
        } finally {
            U0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L1(boolean z3, boolean z4) {
        if (this.C0 == null) {
            j1();
        }
        View contentView = this.C0.getContentView();
        Button button = (Button) contentView.findViewById(R.id.btn_forum_comment);
        Button button2 = (Button) contentView.findViewById(R.id.btn_forum_comment_delete);
        View findViewById = contentView.findViewById(R.id.divider_forum_comment_1);
        if (!z3) {
            button2.setVisibility(8);
            findViewById.setVisibility(8);
            return;
        }
        button2.setVisibility(0);
        findViewById.setVisibility(0);
        button.setVisibility(0);
    }

    void M1(ForumBean.ForumCommentBean forumCommentBean) {
        if (forumCommentBean == null) {
            return;
        }
        try {
            AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
            forumCommentBean.getForum_auth();
            this.f30598u.getHelp();
            this.f30598u.getSolve_flg();
            int auth = this.f30598u.getAuth();
            if (accountData != null) {
                accountData.getUid();
                this.f30598u.getUid();
            }
            if (accountData != null) {
                forumCommentBean.getUid();
                accountData.getUid();
            }
            forumCommentBean.getUid();
            this.f30598u.getUid();
            this.f30594s.add(new ForumProfileMessageReplyAdapter.u(ForumProfileMessageReplyAdapter.ViewType.PROFILE_HEADER, new ForumProfileMessageReplyAdapter.u.b(true, forumCommentBean.getAvatar_src(), forumCommentBean.getNickname(), forumCommentBean.getAdd_time(), forumCommentBean.getPid(), false, forumCommentBean.getVip_level(), forumCommentBean.getSvip_level(), forumCommentBean.getUid())));
            this.f30594s.add(new ForumProfileMessageReplyAdapter.u(ForumProfileMessageReplyAdapter.ViewType.PROFILE_MESSAGE_ITEM, new ForumProfileMessageReplyAdapter.u.c(forumCommentBean.getPid(), forumCommentBean.getMessage())));
            for (int i2 = 0; this.f30596t.getPic_list() != null && i2 < this.f30596t.getPic_list().size(); i2++) {
                this.f30594s.add(new ForumProfileMessageReplyAdapter.u(ForumProfileMessageReplyAdapter.ViewType.PROFILE_COMMENT_IMAGE, new ForumProfileMessageReplyAdapter.u.a(this.f30596t.getPic_list().get(i2), i2, this.f30596t.getRaw_pic_list())));
            }
            forumCommentBean.getReply_list();
            this.f30594s.add(new ForumProfileMessageReplyAdapter.u(ForumProfileMessageReplyAdapter.ViewType.PROFILE_MESSAGE_REPLY_ITEM, new ForumProfileMessageReplyAdapter.u.d(forumCommentBean.getPid(), forumCommentBean, auth)));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N1() {
        com.join.mgps.Util.a0.c0(this).m(this);
    }

    void O1() {
        this.f30583m.setVisibility(0);
        this.f30584n.setVisibility(0);
        this.f30586o.setVisibility(8);
        hideSystemKeyBoard(this.f30586o);
        this.J0 = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void P0() {
        if (!com.join.mgps.Util.i0.Y0(this)) {
            com.join.mgps.Util.i2.a(this).b("用户未登录，请登录");
            com.join.mgps.Util.i0.L0(this);
        } else if (!Z1()) {
            N1();
        } else {
            this.f30577g.startAnimation(AnimationUtils.loadAnimation(this, R.anim.scale_reset));
            G1();
            v1();
        }
    }

    void P1() {
        this.f30583m.setVisibility(0);
        this.f30584n.setVisibility(8);
        this.f30586o.setVisibility(0);
        hideSystemKeyBoard(this.f30586o);
        this.J0 = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Q0() {
        String obj = this.f30576f.getText().toString();
        this.f30609z0 = obj;
        if (com.join.mgps.Util.d2.h(obj)) {
            com.join.mgps.Util.i2.a(this).b("回复内容不能为空");
            return;
        }
        int i2 = this.A0;
        if (i2 == 1) {
            H1();
        } else if (i2 == 2) {
            I1();
        } else if (i2 == 4) {
            I1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q1() {
        this.f30590q.q();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R0(int i2) {
        int i4 = this.I;
        if (i4 == 32) {
            return;
        }
        if (i2 == 32) {
            this.I = 32;
            this.f30575e.j(2);
        } else if (i2 == 0) {
            this.I = 0;
            this.f30575e.m();
            this.f30575e.j(1);
        } else {
            this.I = i2 | i4;
            if (S0(-11)) {
                this.I = 16;
                ForumLoadingView forumLoadingView = this.f30575e;
                forumLoadingView.setListener(new o(forumLoadingView));
                this.f30575e.j(9);
            } else if (S0(22)) {
                this.I = 16;
                this.f30575e.setFailedMsg("该评论已经删除~");
                ForumLoadingView forumLoadingView2 = this.f30575e;
                forumLoadingView2.setListener(new p(forumLoadingView2));
                this.f30575e.j(10);
            } else if (!S0(31) && !S0(26)) {
                if (S0(17)) {
                    this.I = 16;
                    ForumLoadingView forumLoadingView3 = this.f30575e;
                    forumLoadingView3.setListener(new a(forumLoadingView3));
                    this.f30575e.j(9);
                }
            } else {
                this.I = 16;
                this.f30575e.setFailedMsg("加载失败，再试试吧~");
                ForumLoadingView forumLoadingView4 = this.f30575e;
                forumLoadingView4.setListener(new q(forumLoadingView4));
                this.f30575e.j(16);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R1(View view, int i2) {
        float f4 = getResources().getDisplayMetrics().scaledDensity;
        int i4 = getResources().getDisplayMetrics().widthPixels;
        this.C0.showAsDropDown(view, 0, (int) ((view.getMeasuredHeight() * (-1)) - (f4 * 40.0f)));
        this.A0 = i2;
        if (i2 == 2) {
            this.f30607y0 = 0;
        }
    }

    boolean S0(int i2) {
        return (this.I & i2) == i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S1(int i2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T0() {
        int i2 = this.f30605x0;
        if (i2 != 0) {
            int i4 = this.f30607y0;
            if (i4 != 0) {
                F1(i2, i4, this.f30600v.getNickname());
            } else {
                V0(i2, this.f30596t.getNickname());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T1(int i2, int i4) {
        if (this.J == null) {
            com.join.mgps.dialog.p0 p0Var = new com.join.mgps.dialog.p0(this);
            this.J = p0Var;
            p0Var.f("确定");
            this.J.d("取消");
            this.J.b(8);
            this.J.g("确定要删除该评论吗？").c(new e());
            this.J.setCancelable(true);
            this.J.setOnCancelListener(new f());
        }
        int i5 = this.A0;
        if (i5 == 17) {
            this.J.g("确定要删除该评论吗？");
        } else if (i5 == 18 || i5 == 20) {
            this.J.g("确定要删除该回复吗？");
        }
        this.J.e(new g(i2, i4));
        if (this.J.isShowing()) {
            return;
        }
        this.J.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U0() {
        this.f30582l.setVisibility(8);
        this.A0 = 2;
        this.f30579i.setVisibility(0);
        this.f30577g.setVisibility(8);
        this.f30578h.setVisibility(8);
        this.f30580j.setVisibility(8);
        hideSystemKeyBoard(this.f30576f);
        this.f30576f.setText("");
        this.f30576f.setHint("添加回复");
        this.f30576f.clearFocus();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U1(RewardType rewardType, int i2, int i4) {
    }

    void V0(int i2, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("cid=");
        sb.append(i2);
        sb.append(" cNickname=");
        sb.append(str);
        this.A0 = 2;
        this.f30605x0 = i2;
        this.f30607y0 = 0;
        this.f30576f.setText("");
        this.f30576f.requestFocus();
        h1(true);
        showSystemKeyBoard(this.f30576f);
        ClearEditText clearEditText = this.f30576f;
        clearEditText.setHint("回复" + str + ":");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void V1(int i2) {
        if (this.K == null) {
            this.K = new com.join.mgps.dialog.q0(this);
        }
        this.K.c(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void W0(int i2) {
        try {
            try {
                if (com.join.android.app.common.utils.f.j(this)) {
                    ForumRequestBean.ForumCommentDeleteRequestBean W = com.join.mgps.Util.i0.W(this, i2);
                    ForumResponse<ForumData.ForumCommentDeleteData> forumResponse = null;
                    if (W != null) {
                        W.setDevice_id("");
                        forumResponse = this.f30606y.d0(W.getParams());
                    }
                    if (forumResponse == null) {
                        if (!com.join.mgps.Util.i0.Y0(this)) {
                            com.join.mgps.Util.i0.L0(this);
                        }
                    } else if (forumResponse.getData().isResult()) {
                        showToast("评论已删除");
                        w1(i2);
                    } else {
                        showToast("评论删除失败");
                    }
                } else {
                    showToast(getString(R.string.net_connect_failed));
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                showToast("评论删除失败");
            }
        } finally {
            U0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W1() {
        if (this.f30590q.g()) {
            this.G0.sendEmptyMessageDelayed(0, 3000L);
        } else {
            this.G0.sendEmptyMessage(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void X0(int i2) {
        if (i2 == 0) {
            return;
        }
        try {
            ForumRequestBean.ForumCommentReplyDeleteRequestBean X = com.join.mgps.Util.i0.X(this, i2);
            ForumResponse<ForumData.ForumCommentReplyDeleteData> forumResponse = null;
            if (X != null) {
                X.setDevice_id("");
                forumResponse = this.f30606y.A(X.getParams());
            }
            if (forumResponse == null) {
                if (com.join.mgps.Util.i0.Y0(this)) {
                    return;
                }
                com.join.mgps.Util.i0.L0(this);
            } else if (forumResponse.getData().isResult()) {
                A1(i2);
                showToast("回复已删除");
            } else {
                showToast("回复删除失败");
            }
        } catch (Exception e4) {
            showToast("回复删除失败");
            e4.printStackTrace();
        }
    }

    void X1(ForumRequestBean.ForumPostsCommentRequestBean forumPostsCommentRequestBean) {
        try {
            if (!isLogined(this)) {
                showMessage(getString(R.string.forum_user_not_login));
            } else if (!Z1()) {
                N1();
            } else if (forumPostsCommentRequestBean != null) {
                forumPostsCommentRequestBean.setDevice_id("");
                ForumResponse<ForumData.ForumPostsCommentData> z02 = this.f30606y.z0(forumPostsCommentRequestBean.getParams1());
                int error = z02.getError();
                if (error == 706) {
                    showToast(getString(R.string.tour_perfect_info_for_comment_toast));
                    N1();
                    return;
                }
                if (error == 701) {
                    D1();
                }
                B1(forumPostsCommentRequestBean, z02);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            V1(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Y0() {
        ForumData.ForumPostsDeleteData data;
        if (com.join.android.app.common.utils.f.j(this)) {
            boolean z3 = true;
            if (this.M0) {
                return;
            }
            this.M0 = true;
            int pid = this.f30598u.getPid();
            try {
                try {
                    if (com.join.mgps.Util.i0.c0(this, pid) != null) {
                        ForumResponse<ForumData.ForumPostsDeleteData> q02 = this.f30606y.q0(com.join.mgps.Util.i0.c0(this, pid).getParams());
                        if (q02 == null || q02.getError() != 0 || (data = q02.getData()) == null || !data.isResult()) {
                            z3 = false;
                        }
                        if (z3) {
                            showToast("帖子删除成功");
                            finish();
                        } else {
                            showToast("帖子删除失败");
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return;
            } finally {
                this.M0 = false;
            }
        }
        showToast(getString(R.string.net_connect_failed));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Y1(ForumBean.ForumCommentBean forumCommentBean) {
        this.f30596t = forumCommentBean;
        E1();
        W1();
        t1();
    }

    boolean Z1() {
        if (accountBean(this) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this).isTourist();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f30606y = com.join.mgps.rpc.impl.f.A0();
        this.f30608z = com.join.mgps.rpc.impl.a.b0();
        k1();
        q1();
        if (com.join.mgps.Util.i0.Y0(this)) {
            return;
        }
        showToast("用户未登录，请登录！");
        com.join.mgps.Util.i0.L0(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        if (this.J0) {
            return;
        }
        if (this.H0) {
            U0();
        } else {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c1() {
        try {
            com.join.mgps.dialog.q0 q0Var = this.K;
            if (q0Var == null || !q0Var.isShowing()) {
                return;
            }
            this.K.dismiss();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void d1() {
        if (this.K0) {
            return;
        }
        this.K0 = true;
        ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
        try {
            ForumBean.ForumPostsBean forumPostsBean2 = this.f30598u;
            if (forumPostsBean2 != null) {
                forumPostsBean = (ForumBean.ForumPostsBean) forumPostsBean2.clone();
            }
        } catch (CloneNotSupportedException e4) {
            e4.printStackTrace();
        }
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                try {
                } catch (Exception e5) {
                    showToast(getString(R.string.forum_post_report_fail));
                    e5.printStackTrace();
                }
                if (!com.join.mgps.Util.i0.Y0(this)) {
                    com.join.mgps.Util.i0.L0(this);
                    showToast(getString(R.string.forum_user_not_login));
                    this.K0 = false;
                    return;
                }
                AccountBean T = com.join.mgps.Util.i0.T(this);
                ForumResponse<ForumData.ForumPostsReportData> c4 = this.f30606y.c(new ForumRequestBean.ForumPostsReportRequestBean(T.getUid(), T.getToken(), forumPostsBean.getPid(), "").getParams());
                if (c4 != null) {
                    int error = c4.getError();
                    if (error == 0) {
                        ForumData.ForumPostsReportData data = c4.getData();
                        if (data != null) {
                            if (data.isResult()) {
                                showToast(getString(R.string.forum_post_report_success));
                            } else {
                                showToast(getString(R.string.forum_post_report_fail));
                            }
                        } else {
                            showToast(getString(R.string.forum_post_report_fail));
                        }
                    } else if (error == 701) {
                        showToast(getString(R.string.forum_user_login_invalid));
                    }
                } else {
                    showToast(getString(R.string.forum_post_report_fail));
                }
                return;
            } finally {
                this.K0 = false;
            }
        }
        showToast(getString(R.string.net_connect_failed));
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        InputMethodManager inputMethodManager;
        if (motionEvent.getAction() == 0) {
            View currentFocus = getCurrentFocus();
            if (!l1(motionEvent) && m1(currentFocus, motionEvent) && (inputMethodManager = (InputMethodManager) getSystemService("input_method")) != null) {
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
    @Background
    public void e1(int i2, int i4) {
        String str = i2 != 0 ? "评论举报成功" : "回复举报成功";
        String str2 = i2 != 0 ? "评论举报失败" : "回复举报失败";
        if (com.join.android.app.common.utils.f.j(this)) {
            if (this.L0) {
                return;
            }
            this.L0 = true;
            Integer num = new Integer(i2);
            Integer num2 = new Integer(i4);
            try {
                try {
                } catch (Exception e4) {
                    showToast(str2);
                    e4.printStackTrace();
                }
                if (!com.join.mgps.Util.i0.Y0(this)) {
                    com.join.mgps.Util.i0.L0(this);
                    showToast(getString(R.string.forum_user_not_login));
                    this.L0 = false;
                    return;
                }
                AccountBean T = com.join.mgps.Util.i0.T(this);
                ForumResponse<ForumData.ForumPostsReportData> c4 = this.f30606y.c(new ForumRequestBean.ForumPostsReportRequestBean(T.getUid(), T.getToken(), 0, num.intValue(), num2.intValue(), "").getParams());
                if (c4 != null) {
                    int error = c4.getError();
                    if (error == 0) {
                        ForumData.ForumPostsReportData data = c4.getData();
                        if (data != null) {
                            if (data.isResult()) {
                                showToast(str);
                            } else {
                                showToast(str2);
                            }
                        } else {
                            showToast(str2);
                        }
                    } else if (error == 701) {
                        showToast(getString(R.string.forum_user_login_invalid));
                    }
                } else {
                    showToast(str2);
                }
                return;
            } finally {
                this.L0 = false;
            }
        }
        showToast(getString(R.string.net_connect_failed));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void f1() {
        ForumBean.ForumCommentBean forumCommentBean;
        ForumResponse<ForumData.ForumProfileMessageReplyData> c02;
        if (this.A) {
            return;
        }
        this.A = true;
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                try {
                    AccountBean T = com.join.mgps.Util.i0.T(this);
                    forumCommentBean = null;
                    c02 = com.join.mgps.Util.i0.Y0(this) ? this.f30606y.c0(T.getUid(), T.getToken(), this.f30596t.getPid(), "") : null;
                } catch (Exception e4) {
                    R0(24);
                    e4.printStackTrace();
                }
                if (c02.getError() == 701) {
                    showToast(getString(R.string.forum_user_not_login));
                    R0(20);
                } else {
                    ForumData.ForumProfileMessageReplyData data = c02.getData();
                    if (data != null) {
                        forumCommentBean = data.getComment();
                    } else {
                        R0(24);
                    }
                    if (forumCommentBean != null) {
                        Y1(forumCommentBean);
                    }
                    if (forumCommentBean != null && forumCommentBean.getPid() != 0) {
                        R0(32);
                        T0();
                        return;
                    }
                    R0(20);
                }
                return;
            } finally {
                this.A = false;
                W1();
            }
        }
        showToast(getString(R.string.net_connect_failed));
        R0(17);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g1() {
        this.f30583m.setVisibility(8);
        this.f30584n.setVisibility(8);
        this.f30586o.setVisibility(8);
        this.J0 = false;
    }

    void h1(boolean z3) {
        g1();
        if (z3) {
            this.f30582l.setVisibility(8);
        } else {
            this.f30582l.setVisibility(0);
        }
        this.I0 = z3;
    }

    public void hideSystemKeyBoard(View view) {
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
        this.H0 = false;
    }

    public boolean l1(MotionEvent motionEvent) {
        int[] iArr = {R.id.layout_chat_cell_container};
        for (int i2 = 0; i2 < 1; i2++) {
            if (i1(findViewById(iArr[i2]), motionEvent)) {
                return true;
            }
        }
        return false;
    }

    public boolean m1(View view, MotionEvent motionEvent) {
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
    @Click
    public void n1() {
        if (this.f30598u == null) {
            this.f30598u = new ForumBean.ForumPostsBean();
        }
        com.join.mgps.Util.i0.v0(this, this.f30598u);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.J0) {
            return;
        }
        if (this.H0) {
            U0();
        } else {
            super.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.I == 16) {
            q1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void p1() {
        f1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void r1(boolean z3, int i2) {
        if (z3) {
            this.f30577g.setBackgroundResource(R.drawable.like);
        } else {
            this.f30577g.setBackgroundResource(R.drawable.unlike);
        }
        t1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void s1() {
        this.f30592r.u(this.f30594s);
        this.f30592r.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    public void showSystemKeyBoard(View view) {
        ((InputMethodManager) getSystemService("input_method")).showSoftInput(view, 0);
        this.H0 = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    synchronized void t1() {
        this.f30594s.clear();
        M1(this.f30596t);
        s1();
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
            AccountResultMainBean<AccountTokenSuccess> s3 = this.f30608z.s(touristLoginRequestBean.getParams());
            if (s3 != null && s3.getError() == 0) {
                if (s3.getData().is_success()) {
                    AccountUtil_.getInstance_(this).saveAccountData(s3.getData().getUser_info(), this);
                    u1();
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
    public void u1() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void v1() {
        try {
            if (!com.join.mgps.Util.i0.Y0(this)) {
                com.join.mgps.Util.i0.L0(this);
                com.join.mgps.Util.i2.a(this).b("尚未登录，请先登录！");
                return;
            }
            ForumRequestBean.ForumPostsPraiseRequestBean e02 = com.join.mgps.Util.i0.e0(this, this.f30603w0);
            e02.setDevice_id("");
            ForumResponse<ForumData.ForumPostsPraiseData> o3 = this.f30606y.o(e02.getParams());
            if (o3 == null) {
                return;
            }
            if (o3.getError() == 706) {
                G1();
                N1();
                return;
            }
            ForumData.ForumPostsPraiseData data = o3.getData();
            boolean is_praise = this.f30598u.is_praise();
            if (data.isResult()) {
                if (is_praise) {
                    showToast("点赞成功");
                } else {
                    showToast("取消点赞成功");
                }
            } else if (is_praise) {
                showToast("点赞失败");
            } else {
                showToast("取消点赞失败");
            }
            com.join.mgps.Util.i0.m1(e02, data);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void w1(int i2) {
        E1();
        t1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void x1(ForumBean.ForumCommentReplyBean forumCommentReplyBean) {
        try {
            ForumBean.ForumCommentBean forumCommentBean = this.f30596t;
            if (forumCommentReplyBean.getRrid() == 0 && this.f30605x0 == forumCommentBean.getPid()) {
                List<ForumBean.ForumCommentReplyBean> reply_list = forumCommentBean.getReply_list();
                if (reply_list == null) {
                    reply_list = new ArrayList<>();
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(forumCommentReplyBean);
                arrayList.addAll(reply_list);
                forumCommentBean.setReply_list(arrayList);
            }
            E1();
            t1();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void y1(ForumBean.ForumCommentReplyBean forumCommentReplyBean) {
        ForumBean.ForumCommentBean forumCommentBean = this.f30596t;
        List<ForumBean.ForumCommentReplyBean> reply_list = forumCommentBean.getReply_list();
        if (reply_list != null && reply_list.size() != 0) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(reply_list);
            int i2 = 0;
            while (true) {
                if (i2 >= reply_list.size()) {
                    break;
                }
                ForumBean.ForumCommentReplyBean forumCommentReplyBean2 = reply_list.get(i2);
                if (forumCommentReplyBean2.getRid() == forumCommentReplyBean.getRrid()) {
                    forumCommentReplyBean.setRuid(forumCommentReplyBean2.getUid());
                    forumCommentReplyBean.setRnickname(forumCommentReplyBean2.getNickname());
                    reply_list.clear();
                    reply_list.add(forumCommentReplyBean);
                    reply_list.addAll(arrayList);
                    this.f30592r.notifyDataSetChanged();
                    break;
                }
                i2++;
            }
        } else {
            ArrayList arrayList2 = new ArrayList();
            forumCommentReplyBean.setRuid(forumCommentBean.getUid());
            forumCommentReplyBean.setRnickname(forumCommentBean.getNickname());
            arrayList2.add(forumCommentReplyBean);
            forumCommentBean.setReply_list(arrayList2);
            this.f30592r.notifyDataSetChanged();
        }
        E1();
        t1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void z1(ForumBean.ForumCommentBean forumCommentBean) {
        t1();
    }
}
