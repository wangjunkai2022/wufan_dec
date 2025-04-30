package com.join.mgps.activity;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.view.ClearEditText;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AESUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.CommentDetailAdapter;
import com.join.mgps.customview.CopyTextViewNew;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.VipView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dialog.b;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CommentCreateArgs;
import com.join.mgps.dto.CommentCreateBean;
import com.join.mgps.dto.CommentDetailBean;
import com.join.mgps.dto.CommentPraiseBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.CommentTokenBean;
import com.join.mgps.dto.DeleteCommentArgs;
import com.join.mgps.dto.RequestCommentDetailArgs;
import com.join.mgps.dto.RequestCommentpraiseArgs;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.WindowFeature;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@WindowFeature({10})
@EActivity(R.layout.comment_detail_activity)
/* loaded from: classes.dex */
public class CommentDetailActivity extends BaseAppCompatActivity implements CommentDetailAdapter.h {
    private TextView A0;
    private TextView B0;
    private TextView C0;
    private ImageView D0;
    private int E;
    private TextView E0;
    private AccountBean F;
    private ImageView F0;
    private View G;
    private TextView G0;
    private LinearLayout H;
    private ImageView H0;
    private SimpleDraweeView I;
    private TextView I0;
    private SimpleDraweeView J;
    private TextView K;
    private String L0;
    private String M0;
    private String N0;
    private String O0;
    private String P0;
    private String R0;
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    ImageView f29173a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f29174b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ImageView f29175c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f29176d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    PtrClassicFrameLayout f29177e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    XListView2 f29178f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f29179g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f29180h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    LinearLayout f29181i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    Button f29182j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    Button f29183k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    TextView f29184l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    ClearEditText f29185m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    Button f29186n;

    /* renamed from: n0  reason: collision with root package name */
    private TextView f29187n0;
    @Extra

    /* renamed from: o  reason: collision with root package name */
    String f29188o;

    /* renamed from: o0  reason: collision with root package name */
    private VipView f29189o0;
    @Extra

    /* renamed from: p  reason: collision with root package name */
    String f29190p;

    /* renamed from: p0  reason: collision with root package name */
    private TextView f29191p0;
    @Extra

    /* renamed from: q  reason: collision with root package name */
    String f29192q;

    /* renamed from: q0  reason: collision with root package name */
    private TextView f29193q0;
    @Extra

    /* renamed from: r  reason: collision with root package name */
    String f29194r;

    /* renamed from: r0  reason: collision with root package name */
    private TextView f29195r0;
    @Extra

    /* renamed from: s  reason: collision with root package name */
    int f29196s;

    /* renamed from: s0  reason: collision with root package name */
    private TextView f29197s0;
    @Extra

    /* renamed from: t  reason: collision with root package name */
    int f29198t;

    /* renamed from: t0  reason: collision with root package name */
    private TextView f29199t0;
    @Extra

    /* renamed from: u  reason: collision with root package name */
    String f29200u;

    /* renamed from: u0  reason: collision with root package name */
    private CopyTextViewNew f29201u0;
    @Extra

    /* renamed from: v  reason: collision with root package name */
    int f29202v;

    /* renamed from: v0  reason: collision with root package name */
    private TextView f29203v0;

    /* renamed from: w  reason: collision with root package name */
    com.join.mgps.rpc.e f29204w;

    /* renamed from: w0  reason: collision with root package name */
    private ImageView f29205w0;
    @Pref

    /* renamed from: x  reason: collision with root package name */
    PrefDef_ f29206x;

    /* renamed from: x0  reason: collision with root package name */
    private ImageView f29207x0;

    /* renamed from: y  reason: collision with root package name */
    private Context f29208y;

    /* renamed from: y0  reason: collision with root package name */
    private MStarBar f29209y0;

    /* renamed from: z  reason: collision with root package name */
    private CommentDetailAdapter f29210z;

    /* renamed from: z0  reason: collision with root package name */
    private LinearLayout f29211z0;
    private int A = 1;
    private boolean B = false;
    private List<CommentDetailAdapter.j> C = new ArrayList();
    private List<CommentDetailBean.MainCommentBean> D = new ArrayList();
    private CommentDetailBean.MainCommentBean J0 = null;
    private Context K0 = this;
    private int Q0 = 1;
    private String S0 = "";
    com.join.mgps.dialog.x0 T0 = null;
    private String U0 = "desc";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (IntentUtil.getInstance().goLoginInteractive(CommentDetailActivity.this.K0)) {
                return;
            }
            CommentDetailActivity commentDetailActivity = CommentDetailActivity.this;
            commentDetailActivity.M1(view, commentDetailActivity.G0, CommentDetailActivity.this.J0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClearEditText clearEditText = CommentDetailActivity.this.f29185m;
            clearEditText.setHint("@" + CommentDetailActivity.this.J0.getUser_name() + "：");
            CommentDetailActivity.this.f29185m.setFocusable(true);
            CommentDetailActivity.this.f29185m.setFocusableInTouchMode(true);
            CommentDetailActivity.this.f29185m.requestFocus();
            ((InputMethodManager) CommentDetailActivity.this.f29185m.getContext().getSystemService("input_method")).showSoftInput(CommentDetailActivity.this.f29185m, 0);
            CommentDetailActivity commentDetailActivity = CommentDetailActivity.this;
            commentDetailActivity.N0 = commentDetailActivity.f29188o;
            CommentDetailActivity.this.Q0 = 1;
            CommentDetailActivity commentDetailActivity2 = CommentDetailActivity.this;
            commentDetailActivity2.O0 = commentDetailActivity2.J0.getUser_name();
            CommentDetailActivity commentDetailActivity3 = CommentDetailActivity.this;
            commentDetailActivity3.P0 = commentDetailActivity3.J0.getUid();
            CommentDetailActivity.this.S0 = "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TextView f29214a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.MainCommentBean f29215b;

        c(TextView textView, CommentDetailBean.MainCommentBean mainCommentBean) {
            this.f29214a = textView;
            this.f29215b = mainCommentBean;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            long longValue = Long.valueOf(this.f29214a.getText().toString()).longValue();
            TextView textView = this.f29214a;
            textView.setText((longValue + 1) + "");
            CommentDetailActivity.this.e1();
            CommentDetailActivity.this.t1(this.f29215b, 1);
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
    public class d implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TextView f29217a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.MainCommentBean f29218b;

        d(TextView textView, CommentDetailBean.MainCommentBean mainCommentBean) {
            this.f29217a = textView;
            this.f29218b = mainCommentBean;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            long longValue = Long.valueOf(this.f29217a.getText().toString()).longValue();
            TextView textView = this.f29217a;
            textView.setText((longValue + 1) + "");
            CommentDetailActivity.this.f1();
            CommentDetailActivity.this.L1(this.f29218b, 1);
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
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PopupWindow f29220a;

        e(PopupWindow popupWindow) {
            this.f29220a = popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f29220a.dismiss();
            if (CommentDetailActivity.this.B) {
                return;
            }
            CommentDetailActivity.this.D.clear();
            CommentDetailActivity.this.C.clear();
            if (CommentDetailActivity.this.U0.equals("desc")) {
                CommentDetailActivity.this.U0 = "asc";
            } else {
                CommentDetailActivity.this.U0 = "desc";
            }
            CommentDetailActivity.this.A = 1;
            CommentDetailActivity commentDetailActivity = CommentDetailActivity.this;
            commentDetailActivity.m1(commentDetailActivity.U0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PopupWindow f29222a;

        f(PopupWindow popupWindow) {
            this.f29222a = popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f29222a.dismiss();
            IntentUtil intentUtil = IntentUtil.getInstance();
            Context context = CommentDetailActivity.this.f29208y;
            intentUtil.goShareWebActivity(context, com.join.mgps.rpc.g.f51527l + "/user/comment_report?comment_id=" + CommentDetailActivity.this.f29188o);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f29224a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f29225b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f29226c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f29227d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f29228e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ String f29229f;

        g(com.join.mgps.customview.t tVar, String str, String str2, int i2, String str3, String str4) {
            this.f29224a = tVar;
            this.f29225b = str;
            this.f29226c = str2;
            this.f29227d = i2;
            this.f29228e = str3;
            this.f29229f = str4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (IntentUtil.getInstance().goLoginInteractive(CommentDetailActivity.this.K0)) {
                this.f29224a.dismiss();
                return;
            }
            com.join.mgps.customview.t tVar = this.f29224a;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f29224a.dismiss();
            ClearEditText clearEditText = CommentDetailActivity.this.f29185m;
            clearEditText.setHint("@" + this.f29225b + "：");
            CommentDetailActivity.this.N0 = this.f29226c;
            CommentDetailActivity.this.Q0 = this.f29227d;
            CommentDetailActivity.this.O0 = this.f29225b;
            CommentDetailActivity.this.P0 = this.f29228e;
            CommentDetailActivity.this.S0 = this.f29229f;
            CommentDetailActivity.this.F1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f29231a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f29232b;

        h(com.join.mgps.customview.t tVar, String str) {
            this.f29231a = tVar;
            this.f29232b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f29231a.dismiss();
            IntentUtil intentUtil = IntentUtil.getInstance();
            Context context = CommentDetailActivity.this.f29208y;
            intentUtil.goShareWebActivity(context, com.join.mgps.rpc.g.f51527l + "/user/comment_report?comment_id=" + this.f29232b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f29234a;

        i(com.join.mgps.customview.t tVar) {
            this.f29234a = tVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f29234a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ((InputMethodManager) CommentDetailActivity.this.f29185m.getContext().getSystemService("input_method")).showSoftInput(CommentDetailActivity.this.f29185m, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (IntentUtil.getInstance().goLoginInteractive(CommentDetailActivity.this.K0)) {
                return;
            }
            CommentDetailActivity commentDetailActivity = CommentDetailActivity.this;
            commentDetailActivity.R0 = commentDetailActivity.f29185m.getText().toString();
            if (CommentDetailActivity.this.R0.length() == 0) {
                com.join.mgps.Util.i2.a(CommentDetailActivity.this.f29208y).b("不能发表空字符串");
            } else if (CommentDetailActivity.this.R0.length() <= 3) {
                com.join.mgps.Util.i2.a(CommentDetailActivity.this.f29208y).b("超过3个字才可以发表");
            } else {
                ((InputMethodManager) CommentDetailActivity.this.getSystemService("input_method")).hideSoftInputFromWindow(CommentDetailActivity.this.getCurrentFocus().getWindowToken(), 2);
                CommentDetailActivity commentDetailActivity2 = CommentDetailActivity.this;
                commentDetailActivity2.K1(commentDetailActivity2.M0, CommentDetailActivity.this.R0, Build.MODEL, CommentDetailActivity.this.P0, CommentDetailActivity.this.O0, CommentDetailActivity.this.N0, CommentDetailActivity.this.Q0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements com.join.mgps.customview.i {
        l() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (CommentDetailActivity.this.B) {
                return;
            }
            CommentDetailActivity commentDetailActivity = CommentDetailActivity.this;
            commentDetailActivity.m1(commentDetailActivity.U0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m implements com.join.mgps.customview.j {
        m() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (CommentDetailActivity.this.B) {
                return;
            }
            CommentDetailActivity.this.A = 1;
            CommentDetailActivity commentDetailActivity = CommentDetailActivity.this;
            commentDetailActivity.m1(commentDetailActivity.U0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.MainCommentBean f29240a;

        n(CommentDetailBean.MainCommentBean mainCommentBean) {
            this.f29240a = mainCommentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(Integer.parseInt(this.f29240a.getUid())).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o implements View.OnLongClickListener {
        o() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goGameDetialActivity(CommentDetailActivity.this.f29208y, CommentDetailActivity.this.f29190p, "0", 0, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!CommentDetailActivity.this.J0.getUid().equals(String.valueOf(CommentDetailActivity.this.E)) || IntentUtil.getInstance().goLoginInteractive(CommentDetailActivity.this.K0)) {
                return;
            }
            CommentCreatActivity_.U0(CommentDetailActivity.this.f29208y).f(CommentDetailActivity.this.f29190p).j(CommentDetailActivity.this.f29194r).d(CommentDetailActivity.this.f29192q).c(CommentDetailActivity.this.f29188o).e(Float.valueOf(CommentDetailActivity.this.J0.getStars_score()).floatValue()).h(CommentDetailActivity.this.f29200u).g(1).i(true).a(CommentDetailActivity.this.f29196s).k(CommentDetailActivity.this.J0.getMobile_phone_model()).b(CommentDetailActivity.this.J0.getContent()).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class r implements View.OnClickListener {

        /* loaded from: classes3.dex */
        class a implements b.c {
            a() {
            }

            @Override // com.join.mgps.dialog.b.c
            public void ClickCancleButn(com.join.mgps.dialog.b bVar) {
                bVar.dismiss();
            }

            @Override // com.join.mgps.dialog.b.c
            public void ClickOKButn(com.join.mgps.dialog.b bVar) {
                bVar.dismiss();
                CommentDetailActivity.this.j1();
            }
        }

        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            new com.join.mgps.dialog.b(CommentDetailActivity.this.f29208y, R.style.HKDialogLoading).g("您确定要删除自己的点评？").j("确定").d("取消").k("提示").i(new a()).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (IntentUtil.getInstance().goLoginInteractive(CommentDetailActivity.this.K0)) {
                return;
            }
            CommentDetailActivity commentDetailActivity = CommentDetailActivity.this;
            commentDetailActivity.u1(view, commentDetailActivity.E0, CommentDetailActivity.this.J0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F1() {
        this.f29185m.setFocusable(true);
        this.f29185m.setFocusableInTouchMode(true);
        this.f29185m.requestFocus();
        new Handler().postDelayed(new j(), 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M1(View view, TextView textView, CommentDetailBean.MainCommentBean mainCommentBean) {
        if (mainCommentBean == null) {
            return;
        }
        if (mainCommentBean.getIs_despise() == 1) {
            I1();
            ((ImageView) view).setImageResource(R.drawable.down_ic);
            t1(mainCommentBean, 2);
            return;
        }
        mainCommentBean.setIs_despise(1);
        if (AccountUtil_.getInstance_(this.K0).getAccountData() != null) {
            ((ImageView) view).setImageResource(R.drawable.downed_ic);
            Animation loadAnimation = AnimationUtils.loadAnimation(this.K0, R.anim.scale_reset);
            view.startAnimation(loadAnimation);
            loadAnimation.setAnimationListener(new c(textView, mainCommentBean));
            return;
        }
        IntentUtil.getInstance().goLoginInteractive(this.K0);
    }

    private void g1(List<CommentDetailBean.MainCommentBean> list, boolean z3) {
        for (int i2 = 0; list != null && i2 < list.size(); i2++) {
            CommentDetailBean.MainCommentBean mainCommentBean = list.get(i2);
            CommentDetailAdapter.j jVar = new CommentDetailAdapter.j(CommentDetailAdapter.ViewType.COMMENT, new CommentDetailAdapter.j.a(mainCommentBean));
            if (z3) {
                this.C.add(0, jVar);
            } else {
                this.C.add(jVar);
            }
            List<CommentDetailBean.MainCommentBean.SubCommentBean> sub_comment = mainCommentBean.getSub_comment();
            if (sub_comment != null && sub_comment.size() > 0) {
                CommentDetailAdapter.j jVar2 = new CommentDetailAdapter.j(CommentDetailAdapter.ViewType.REPLY, new CommentDetailAdapter.j.b(mainCommentBean.getId(), mainCommentBean, 0, true));
                if (z3) {
                    this.C.add(0, jVar2);
                } else {
                    this.C.add(jVar2);
                }
            }
        }
    }

    private RequestCommentDetailArgs l1(String str) {
        String str2 = Build.MODEL;
        this.L0 = this.f29206x.commentToken().d();
        AccountBean accountData = AccountUtil_.getInstance_(this.f29208y).getAccountData();
        this.F = accountData;
        if (accountData != null) {
            this.E = accountData.getUid();
        }
        return RequestBeanUtil.getInstance(this.f29208y).getCommentDetailList(str, this.f29188o, this.f29190p, this.E, this.A, 10, str2, this.L0);
    }

    private void s1() {
        View inflate = LayoutInflater.from(this).inflate(R.layout.comment_detail_head_view, (ViewGroup) null);
        this.G = inflate;
        this.H = (LinearLayout) inflate.findViewById(R.id.commentDetailTopLl);
        this.I = (SimpleDraweeView) this.G.findViewById(R.id.appIcon);
        this.J = (SimpleDraweeView) this.G.findViewById(R.id.usericon);
        this.K = (TextView) this.G.findViewById(R.id.gameName);
        this.f29187n0 = (TextView) this.G.findViewById(R.id.userName);
        this.f29189o0 = (VipView) this.G.findViewById(R.id.levelTv);
        this.f29191p0 = (TextView) this.G.findViewById(R.id.isMe);
        this.f29193q0 = (TextView) this.G.findViewById(R.id.isConnoisseurs);
        this.f29195r0 = (TextView) this.G.findViewById(R.id.comment_head_num_tx);
        this.f29197s0 = (TextView) this.G.findViewById(R.id.time);
        this.f29199t0 = (TextView) this.G.findViewById(R.id.content);
        this.f29201u0 = (CopyTextViewNew) this.G.findViewById(R.id.contentWeb);
        this.f29203v0 = (TextView) this.G.findViewById(R.id.more);
        this.f29205w0 = (ImageView) this.G.findViewById(R.id.isAuth);
        this.f29207x0 = (ImageView) this.G.findViewById(R.id.isGood);
        MStarBar mStarBar = (MStarBar) this.G.findViewById(R.id.comment_head_mstarBar);
        this.f29209y0 = mStarBar;
        mStarBar.setIntegerMark(false);
        this.f29209y0.setEnabled(false);
        this.f29211z0 = (LinearLayout) this.G.findViewById(R.id.editLl);
        this.A0 = (TextView) this.G.findViewById(R.id.editTx);
        this.B0 = (TextView) this.G.findViewById(R.id.deleteTx);
        this.C0 = (TextView) this.G.findViewById(R.id.phoneModle);
        this.D0 = (ImageView) this.G.findViewById(R.id.parise);
        this.E0 = (TextView) this.G.findViewById(R.id.pariseNumber);
        this.F0 = (ImageView) this.G.findViewById(R.id.down);
        this.G0 = (TextView) this.G.findViewById(R.id.downNumber);
        this.H0 = (ImageView) this.G.findViewById(R.id.message);
        this.I0 = (TextView) this.G.findViewById(R.id.messageNumber);
        this.f29203v0.setVisibility(8);
        this.f29199t0.setVisibility(8);
        this.f29201u0.setVisibility(0);
        this.f29201u0.setOnLongClickListener(new o());
        this.H.setOnClickListener(new p());
        this.A0.setOnClickListener(new q());
        this.B0.setOnClickListener(new r());
        this.D0.setOnClickListener(new s());
        this.F0.setOnClickListener(new a());
        this.H0.setOnClickListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u1(View view, TextView textView, CommentDetailBean.MainCommentBean mainCommentBean) {
        if (mainCommentBean == null) {
            return;
        }
        if (mainCommentBean.getIs_praise() == 1) {
            J1();
            ((ImageView) view).setImageResource(R.drawable.up_ic);
            L1(mainCommentBean, 2);
            return;
        }
        mainCommentBean.setIs_praise(1);
        if (AccountUtil_.getInstance_(this.K0).getAccountData() != null) {
            ((ImageView) view).setImageResource(R.drawable.uped_ic);
            Animation loadAnimation = AnimationUtils.loadAnimation(this.K0, R.anim.scale_reset);
            view.startAnimation(loadAnimation);
            loadAnimation.setAnimationListener(new d(textView, mainCommentBean));
            return;
        }
        IntentUtil.getInstance().goLoginInteractive(this.K0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void A1(String str, boolean z3, int i2, int i4) {
        com.join.mgps.Util.i2.a(this.f29208y).b(str);
        if (z3 && i4 == 1) {
            this.f29210z.j(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void B1(String str, CommentCreateBean.InfoBean infoBean, boolean z3) {
        k1();
        com.join.mgps.Util.i2.a(this.f29208y).b(str);
        if (z3) {
            ArrayList arrayList = new ArrayList();
            if (this.N0 == this.f29188o) {
                CommentDetailBean.MainCommentBean mainCommentBean = new CommentDetailBean.MainCommentBean();
                mainCommentBean.setId(infoBean.getId());
                mainCommentBean.setUid(infoBean.getUid());
                mainCommentBean.setUser_name(infoBean.getUser_name());
                mainCommentBean.setRank(infoBean.getRank());
                mainCommentBean.setHead_portrait(infoBean.getHead_portrait());
                mainCommentBean.setGame_id(infoBean.getGame_id());
                mainCommentBean.setContent(infoBean.getContent());
                mainCommentBean.setMobile_phone_model(infoBean.getMobile_phone_model());
                mainCommentBean.setPraise_count(String.valueOf(infoBean.getPraise_count()));
                mainCommentBean.setDespise_count(String.valueOf(infoBean.getDespise_count()));
                mainCommentBean.setStart_game_count(String.valueOf(infoBean.getStart_game_count()));
                mainCommentBean.setStars_score(infoBean.getStars_score());
                mainCommentBean.setApproval_rate(infoBean.getApproval_rate());
                mainCommentBean.setAdd_times(String.valueOf(infoBean.getAdd_times()));
                mainCommentBean.setIs_belong_to(infoBean.getIs_despise());
                mainCommentBean.setReply_count(String.valueOf(infoBean.getReply_count()));
                mainCommentBean.setIs_praise(infoBean.getIs_praise());
                mainCommentBean.setIs_despise(infoBean.getIs_despise());
                mainCommentBean.setIs_old(String.valueOf(infoBean.getIs_old()));
                mainCommentBean.setPn(this.Q0);
                mainCommentBean.setVip_level(infoBean.getVip_level());
                mainCommentBean.setSvip_level(infoBean.getSvip_level());
                arrayList.add(0, mainCommentBean);
                this.D.addAll(0, arrayList);
                g1(arrayList, true);
            } else {
                int i2 = -1;
                for (int i4 = 0; i4 < this.D.size(); i4++) {
                    if (this.D.get(i4).getId().equals(this.S0)) {
                        i2 = i4;
                    }
                }
                if (i2 == -1) {
                    return;
                }
                CommentDetailBean.MainCommentBean mainCommentBean2 = this.D.get(i2);
                if (this.N0 != mainCommentBean2.getId() && mainCommentBean2.getSub_comment() != null) {
                    int size = mainCommentBean2.getSub_comment().size();
                    for (int i5 = 0; i5 < size; i5++) {
                        mainCommentBean2.getSub_comment().get(i5).getId().equals(this.N0);
                    }
                }
                CommentDetailBean.MainCommentBean.SubCommentBean subCommentBean = new CommentDetailBean.MainCommentBean.SubCommentBean();
                subCommentBean.setId(infoBean.getId());
                subCommentBean.setUid(infoBean.getUid());
                subCommentBean.setUser_name(infoBean.getUser_name());
                subCommentBean.setGame_id(infoBean.getGame_id());
                subCommentBean.setContent(infoBean.getContent());
                subCommentBean.setVip_level(infoBean.getVip_level());
                subCommentBean.setSvip_level(infoBean.getSvip_level());
                subCommentBean.setReply_vip_level(infoBean.getReply_vip_level());
                subCommentBean.setReply_svip_level(infoBean.getReply_svip_level());
                if (mainCommentBean2.getSub_comment() == null) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(subCommentBean);
                    mainCommentBean2.setSub_comment(arrayList2);
                } else {
                    mainCommentBean2.getSub_comment().add(0, subCommentBean);
                }
                this.D.set(i2, mainCommentBean2);
                this.C.clear();
                g1(this.D, false);
            }
            this.f29210z.notifyDataSetChanged();
            this.f29185m.setText("");
            this.f29185m.setHint("添加评论");
            this.N0 = this.f29188o;
            this.Q0 = 1;
            this.O0 = this.J0.getUser_name();
            this.P0 = this.J0.getUid();
            this.S0 = "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void C1(CommentDetailBean.MainCommentBean mainCommentBean) {
        String str;
        if (mainCommentBean != null) {
            this.O0 = mainCommentBean.getUser_name();
            this.P0 = mainCommentBean.getUid();
            UtilsMy.E2(this, mainCommentBean.getHead_portrait(), this.J);
            this.J.setOnClickListener(new n(mainCommentBean));
            this.f29187n0.setText(mainCommentBean.getUser_name());
            this.f29187n0.setTextColor(-16777216);
            if (mainCommentBean.getVip_level() > 0) {
                this.f29187n0.setTextColor(getResources().getColor(R.color.vip_color));
            }
            if (mainCommentBean.getSvip_level() > 0) {
                this.f29187n0.setTextColor(getResources().getColor(R.color.vip_svip_color));
            }
            this.f29189o0.setVipData(mainCommentBean.getVip_level(), mainCommentBean.getSvip_level());
            String uid = mainCommentBean.getUid();
            if (uid.equals("" + this.E)) {
                this.f29191p0.setVisibility(0);
                if (mainCommentBean.getIs_old().equals("1")) {
                    this.f29211z0.setVisibility(8);
                } else {
                    this.f29211z0.setVisibility(0);
                }
            } else {
                this.f29191p0.setVisibility(8);
                this.f29211z0.setVisibility(8);
            }
            if (mainCommentBean.getRank().equals("")) {
                this.f29205w0.setVisibility(8);
            } else {
                this.f29205w0.setVisibility(0);
            }
            this.f29193q0.setText(mainCommentBean.getRank());
            this.f29201u0.setTextHeader(mainCommentBean.getContent());
            if (!mainCommentBean.getIs_old().equals("1") && mainCommentBean.getMobile_phone_model() != null && !mainCommentBean.getMobile_phone_model().isEmpty()) {
                this.C0.setVisibility(0);
                this.C0.setText(mainCommentBean.getMobile_phone_model());
            } else {
                this.C0.setVisibility(4);
            }
            TextView textView = this.E0;
            textView.setText(mainCommentBean.getPraise_count() + "");
            TextView textView2 = this.G0;
            textView2.setText(mainCommentBean.getDespise_count() + "");
            TextView textView3 = this.I0;
            textView3.setText(mainCommentBean.getReply_count() + "");
            this.f29197s0.setText(com.join.android.app.common.utils.c.a(Long.parseLong(mainCommentBean.getAdd_times() + "000")));
            if (!mainCommentBean.getIs_old().equals("1") && Float.valueOf(mainCommentBean.getStars_score()).floatValue() != 0.0f && ((str = this.f29192q) == null || str.equals("1"))) {
                this.f29209y0.setVisibility(0);
                this.f29209y0.setStarCount(Integer.valueOf(mainCommentBean.getStars_score()).intValue());
                this.f29209y0.setStarMark(Float.valueOf(mainCommentBean.getStars_score()).floatValue());
            } else {
                this.f29209y0.setVisibility(8);
            }
            this.f29195r0.setVisibility(8);
            if (mainCommentBean.getApproval_rate() != null && Double.valueOf(mainCommentBean.getApproval_rate()).doubleValue() > 70.0d) {
                this.f29207x0.setVisibility(0);
            } else {
                this.f29207x0.setVisibility(8);
            }
            if (mainCommentBean.getIs_praise() == 1) {
                this.D0.setImageResource(R.drawable.uped_ic);
            } else {
                this.D0.setImageResource(R.drawable.up_ic);
            }
            if (mainCommentBean.getIs_despise() == 1) {
                this.F0.setImageResource(R.drawable.downed_ic);
            } else {
                this.F0.setImageResource(R.drawable.down_ic);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void D1(CommentDetailBean.GameInfoBean gameInfoBean) {
        if (gameInfoBean != null) {
            if (com.join.mgps.Util.d2.i(gameInfoBean.getGame_ico())) {
                UtilsMy.H2(this, gameInfoBean.getGame_ico(), this.I);
            }
            this.K.setText(gameInfoBean.getGame_name());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void E1() {
        this.f29177e.setVisibility(8);
        this.f29176d.setVisibility(0);
        this.f29181i.setVisibility(8);
        this.f29180h.setVisibility(8);
        this.f29179g.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void G1() {
        this.T0.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H1(List<CommentDetailBean.MainCommentBean> list, int i2) {
        if (this.A == 1) {
            this.f29178f.setVisibility(0);
            this.f29177e.setVisibility(0);
            this.f29181i.setVisibility(0);
            this.f29180h.setVisibility(8);
            this.f29179g.setVisibility(8);
            this.D.clear();
            this.C.clear();
        }
        if (list == null) {
            this.f29178f.setNoMore();
            return;
        }
        this.A++;
        this.D.addAll(list);
        g1(list, false);
        if (list.size() <= 0) {
            this.f29178f.setNoMore();
        }
        this.f29210z.notifyDataSetChanged();
        N1();
    }

    public void I1() {
        long longValue = Long.valueOf(this.J0.getDespise_count()).longValue();
        this.J0.setIs_despise(0);
        long j4 = longValue - 1;
        if (j4 < 0) {
            this.J0.setDespise_count("0");
            return;
        }
        CommentDetailBean.MainCommentBean mainCommentBean = this.J0;
        mainCommentBean.setDespise_count(j4 + "");
    }

    public void J1() {
        long longValue = Long.valueOf(this.J0.getPraise_count()).longValue();
        this.J0.setIs_praise(0);
        long j4 = longValue - 1;
        if (j4 < 0) {
            this.J0.setPraise_count("0");
            return;
        }
        CommentDetailBean.MainCommentBean mainCommentBean = this.J0;
        mainCommentBean.setPraise_count(j4 + "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void K1(String str, String str2, String str3, String str4, String str5, String str6, int i2) {
        if (com.join.android.app.common.utils.f.j(this.f29208y)) {
            G1();
            try {
                CommentResponse<CommentCreateBean> d4 = this.f29204w.d(o1(str, str2, str3, str4, str5, str6, i2));
                if (d4 != null) {
                    if (d4.getCode() != 0) {
                        if (d4.getCode() == 801) {
                            y1(d4);
                        } else {
                            B1(d4.getMsg(), null, false);
                        }
                    } else if (d4.getData_info().getInfo() != null) {
                        B1("内容将在审核后显示！", d4.getData_info().getInfo(), true);
                    }
                } else {
                    B1("回复失败，请稍候再试~", null, false);
                }
                return;
            } catch (Exception e4) {
                B1(e4.getMessage(), null, false);
                e4.printStackTrace();
                return;
            }
        }
        B1("网络连接失败，再试试吧~", null, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void L1(CommentDetailBean.MainCommentBean mainCommentBean, int i2) {
        if (com.join.android.app.common.utils.f.j(this.f29208y)) {
            try {
                CommentResponse<CommentPraiseBean> h4 = this.f29204w.h(n1(mainCommentBean.getId(), i2, mainCommentBean.getPn()));
                if (h4 != null) {
                    if (h4.getSucc() != 1) {
                        if (h4.getCode() == 801) {
                            y1(h4);
                        } else {
                            x1(h4.getMsg(), true, 1);
                        }
                    } else {
                        i1(1);
                    }
                } else {
                    x1("操作失败，请稍候再试~", true, 1);
                }
                return;
            } catch (Exception e4) {
                x1("操作失败，请稍候再试~", true, 1);
                e4.printStackTrace();
                return;
            }
        }
        x1("网络连接失败，再试试吧~", true, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N1() {
        this.f29178f.t();
        this.f29178f.u();
        this.B = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        this.f29204w = com.join.mgps.rpc.impl.d.m();
        this.f29208y = this;
        this.f29174b.setText("点评详情");
        org.greenrobot.eventbus.c.f().t(this);
        this.L0 = this.f29206x.commentToken().d();
        String str = this.f29188o;
        this.M0 = str;
        this.N0 = str;
        this.T0 = com.join.mgps.Util.a0.c0(this.f29208y).x(this.f29208y);
        s1();
        this.f29185m.setShowDeleteIcon(false);
        this.f29182j.setVisibility(8);
        this.f29183k.setVisibility(8);
        this.f29184l.setVisibility(8);
        this.f29186n.setOnClickListener(new k());
        showLoding();
        m1(this.U0);
        this.f29210z = new CommentDetailAdapter(this.f29208y, this.C, this);
        this.f29178f.addHeaderView(this.G);
        this.f29178f.setAdapter((ListAdapter) this.f29210z);
        this.f29178f.setPreLoadCount(10);
        this.f29178f.setVerticalScrollBarEnabled(false);
        this.f29178f.setPullLoadEnable(new l());
        this.f29178f.setPullRefreshEnable(new m());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    public void e1() {
        long longValue = Long.valueOf(this.J0.getDespise_count()).longValue();
        this.J0.setIs_despise(1);
        CommentDetailBean.MainCommentBean mainCommentBean = this.J0;
        mainCommentBean.setDespise_count((longValue + 1) + "");
    }

    public void f1() {
        long longValue = Long.valueOf(this.J0.getPraise_count()).longValue();
        this.J0.setIs_praise(1);
        CommentDetailBean.MainCommentBean mainCommentBean = this.J0;
        mainCommentBean.setPraise_count((longValue + 1) + "");
    }

    void h1(String str, String str2, String str3, String str4, int i2) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.f29208y, R.style.MyDialog);
        tVar.setContentView(R.layout.commentdetail_report_dialog);
        TextView textView = (TextView) tVar.findViewById(R.id.replyTv);
        TextView textView2 = (TextView) tVar.findViewById(R.id.reportTv);
        TextView textView3 = (TextView) tVar.findViewById(R.id.cancelTv);
        textView.setOnClickListener(new g(tVar, str2, str, i2, str3, str4));
        textView2.setOnClickListener(new h(tVar, str));
        textView3.setOnClickListener(new i(tVar));
        tVar.show();
        WindowManager.LayoutParams attributes = tVar.getWindow().getAttributes();
        attributes.gravity = 80;
        attributes.width = -1;
        attributes.height = -2;
        tVar.getWindow().getDecorView().setPadding(0, 0, 0, 0);
        tVar.getWindow().setAttributes(attributes);
    }

    @UiThread
    public void i1(int i2) {
        if (i2 == 1) {
            v1(1);
        } else {
            w1(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void j1() {
        if (com.join.android.app.common.utils.f.j(this.f29208y)) {
            try {
                CommentResponse<CommentPraiseBean> k4 = this.f29204w.k(p1(this.J0.getId(), this.J0.getPn()));
                if (k4 != null) {
                    if (k4.getSucc() != 1) {
                        if (k4.getCode() == 801) {
                            y1(k4);
                        } else {
                            z1(k4.getMsg(), false);
                        }
                    } else {
                        z1("", true);
                    }
                } else {
                    z1("删除失败，请稍候再试~", false);
                }
                return;
            } catch (Exception e4) {
                z1("删除失败，请稍候再试~", false);
                e4.printStackTrace();
                return;
            }
        }
        z1("网络连接失败，再试试吧~", false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void k1() {
        this.T0.dismiss();
    }

    @Override // com.join.mgps.adapter.CommentDetailAdapter.h
    public void m(CommentDetailBean.MainCommentBean.SubCommentBean subCommentBean, int i2, String str) {
        h1(subCommentBean.getId(), subCommentBean.getUser_name(), subCommentBean.getUid(), str, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void m1(String str) {
        if (com.join.android.app.common.utils.f.j(this.f29208y)) {
            this.B = true;
            try {
                CommentResponse<CommentDetailBean> e4 = this.f29204w.e(l1(str));
                if (e4 != null) {
                    if (e4.getCode() != 0) {
                        y1(e4);
                    }
                    if (this.A == 1 && (e4.getData_info().getMain_comment() == null || e4.getData_info().getMain_comment().size() <= 0)) {
                        E1();
                        return;
                    }
                    CommentDetailBean.GameInfoBean game_info = e4.getData_info().getGame_info();
                    List<CommentDetailBean.MainCommentBean> main_comment = e4.getData_info().getMain_comment();
                    if (this.A == 1 && game_info != null) {
                        D1(game_info);
                    }
                    int i2 = 10;
                    if (this.A == 1 && main_comment != null && main_comment.size() > 0) {
                        CommentDetailBean.MainCommentBean mainCommentBean = main_comment.get(0);
                        this.J0 = mainCommentBean;
                        mainCommentBean.setPn(this.A);
                        C1(this.J0);
                        main_comment.remove(0);
                        i2 = 9;
                    }
                    if (main_comment != null) {
                        for (int i4 = 0; i4 < main_comment.size(); i4++) {
                            main_comment.get(i4).setPn(this.A);
                        }
                    }
                    H1(main_comment, i2);
                    return;
                }
                showLodingFailed();
                return;
            } catch (Exception e5) {
                showLodingFailed();
                e5.printStackTrace();
                return;
            }
        }
        showLodingFailed();
    }

    public RequestCommentpraiseArgs n1(String str, int i2, int i4) {
        String str2;
        String str3 = Build.MODEL;
        this.L0 = this.f29206x.commentToken().d();
        AccountBean accountData = AccountUtil_.getInstance_(this.f29208y).getAccountData();
        this.F = accountData;
        if (accountData != null) {
            this.E = accountData.getUid();
            str2 = this.F.getToken();
        } else {
            str2 = "";
        }
        return RequestBeanUtil.getInstance(this.f29208y).getPraiseComment(this.f29190p, this.L0, str3, str, str2, this.E, i2, i4);
    }

    public CommentCreateArgs o1(String str, String str2, String str3, String str4, String str5, String str6, int i2) {
        String str7;
        String str8;
        String str9;
        int i4;
        String d4 = this.f29206x.commentToken().d();
        AccountBean accountData = AccountUtil_.getInstance_(this.f29208y).getAccountData();
        this.F = accountData;
        if (accountData != null) {
            int uid = accountData.getUid();
            String nickname = this.F.getNickname();
            i4 = uid;
            str7 = nickname;
            str8 = this.F.getAvatarSrc();
            str9 = this.F.getToken();
        } else {
            str7 = "";
            str8 = str7;
            str9 = str8;
            i4 = -1;
        }
        return RequestBeanUtil.getInstance(this.f29208y).getReplyCreateCommentBean(this.f29190p, 0.0f, str2, d4, str3, 2, str, str7, str8, str9, i4, str4, str5, str6, i2);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onChangeComment(com.join.mgps.event.h hVar) {
        if (hVar.getType() == 2) {
            this.f29209y0.setStarCount((int) hVar.c());
            this.f29209y0.setStarMark(hVar.c());
            if (hVar.b() != null && !hVar.b().isEmpty()) {
                this.C0.setVisibility(0);
                this.C0.setText(hVar.b());
                return;
            }
            this.C0.setVisibility(4);
            this.J0.setMobile_phone_model("");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().y(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    public DeleteCommentArgs p1(String str, int i2) {
        String str2;
        String str3 = Build.MODEL;
        this.L0 = this.f29206x.commentToken().d();
        AccountBean accountData = AccountUtil_.getInstance_(this.f29208y).getAccountData();
        this.F = accountData;
        if (accountData != null) {
            this.E = accountData.getUid();
            str2 = this.F.getToken();
        } else {
            str2 = "";
        }
        return RequestBeanUtil.getInstance(this.f29208y).getDeleteComment(this.f29190p, this.L0, str3, str, str2, this.E, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void q1() {
        if (com.join.android.app.common.utils.f.j(this.f29208y)) {
            try {
                CommentResponse<CommentTokenBean> c4 = this.f29204w.c(RequestBeanUtil.getInstance(this).getTokenRequestBean(AccountUtil_.getInstance_(this).getUid(), ""));
                if (c4 == null || c4.getCode() != 0 || c4.getData_info() == null || TextUtils.isEmpty(c4.getData_info().getToken())) {
                    return;
                }
                this.f29206x.commentToken().g(AESUtils.f(c4.getData_info().getToken() + "|" + c4.getData_info().getTimes()));
                this.f29206x.lastCheckInTime().g(Long.valueOf(System.currentTimeMillis()));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    @Override // com.join.mgps.adapter.CommentDetailAdapter.h
    public void r(CommentDetailBean.MainCommentBean mainCommentBean, int i2) {
        h1(mainCommentBean.getId(), mainCommentBean.getUser_name(), mainCommentBean.getUid(), mainCommentBean.getId(), mainCommentBean.getPn());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void r1() {
        View inflate = getLayoutInflater().inflate(R.layout.comment_detail_top_popwin, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.pop_list_order_tx);
        TextView textView2 = (TextView) inflate.findViewById(R.id.pop_report_tx);
        PopupWindow popupWindow = new PopupWindow(inflate, -2, -2);
        popupWindow.setBackgroundDrawable(new ColorDrawable(Color.parseColor("#00000000")));
        popupWindow.setFocusable(true);
        popupWindow.setOutsideTouchable(true);
        popupWindow.update();
        popupWindow.showAsDropDown(this.f29175c, 0, 0);
        if (this.U0.equals("desc")) {
            textView.setText("顺序查看");
        } else {
            textView.setText("倒序查看");
        }
        textView.setOnClickListener(new e(popupWindow));
        textView2.setOnClickListener(new f(popupWindow));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f29178f.setVisibility(8);
        this.f29177e.setVisibility(8);
        this.f29181i.setVisibility(8);
        this.f29180h.setVisibility(8);
        this.f29179g.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        N1();
        List<CommentDetailBean.MainCommentBean> list = this.D;
        if (list != null && list.size() != 0) {
            Toast.makeText(this, getString(R.string.net_connect_failed), 0).show();
            return;
        }
        this.f29178f.setVisibility(8);
        this.f29177e.setVisibility(8);
        this.f29181i.setVisibility(8);
        this.f29180h.setVisibility(0);
        this.f29179g.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void t1(CommentDetailBean.MainCommentBean mainCommentBean, int i2) {
        if (com.join.android.app.common.utils.f.j(this.f29208y)) {
            try {
                CommentResponse<CommentPraiseBean> l4 = this.f29204w.l(n1(mainCommentBean.getId(), i2, mainCommentBean.getPn()));
                if (l4 != null) {
                    if (l4.getSucc() != 1) {
                        if (l4.getCode() == 801) {
                            y1(l4);
                        } else {
                            x1(l4.getMsg(), true, 2);
                        }
                    } else {
                        i1(2);
                    }
                } else {
                    x1("操作失败，请稍候再试~", true, 2);
                }
                return;
            } catch (Exception e4) {
                x1("操作失败，请稍候再试~", true, 2);
                e4.printStackTrace();
                return;
            }
        }
        x1("网络连接失败，再试试吧~", true, 2);
    }

    public void v1(int i2) {
        long longValue = Long.valueOf(this.J0.getDespise_count()).longValue();
        if (this.J0.getIs_despise() == 1) {
            this.J0.setIs_despise(0);
            long j4 = longValue - 1;
            if (j4 < 0) {
                this.J0.setDespise_count("0");
            } else {
                CommentDetailBean.MainCommentBean mainCommentBean = this.J0;
                mainCommentBean.setDespise_count(j4 + "");
            }
        } else if (i2 != 1) {
            this.J0.setIs_despise(1);
            CommentDetailBean.MainCommentBean mainCommentBean2 = this.J0;
            mainCommentBean2.setDespise_count((longValue + 1) + "");
        }
        C1(this.J0);
    }

    public void w1(int i2) {
        long longValue = Long.valueOf(this.J0.getPraise_count()).longValue();
        if (this.J0.getIs_praise() == 1) {
            this.J0.setIs_praise(0);
            long j4 = longValue - 1;
            if (j4 < 0) {
                this.J0.setPraise_count("0");
            } else {
                CommentDetailBean.MainCommentBean mainCommentBean = this.J0;
                mainCommentBean.setPraise_count(j4 + "");
            }
        } else if (i2 != 1) {
            this.J0.setIs_praise(1);
            CommentDetailBean.MainCommentBean mainCommentBean2 = this.J0;
            mainCommentBean2.setPraise_count((longValue + 1) + "");
        }
        C1(this.J0);
    }

    @Override // com.join.mgps.adapter.CommentDetailAdapter.h
    @Background
    public void x0(CommentDetailBean.MainCommentBean mainCommentBean, int i2, int i4) {
        if (com.join.android.app.common.utils.f.j(this.f29208y)) {
            try {
                CommentResponse<CommentPraiseBean> h4 = this.f29204w.h(n1(mainCommentBean.getId(), i4, mainCommentBean.getPn()));
                if (h4 != null) {
                    if (h4.getSucc() != 1) {
                        if (h4.getCode() == 801) {
                            y1(h4);
                        } else {
                            A1(h4.getMsg(), true, i2, 1);
                        }
                    }
                } else {
                    A1("操作失败，请稍候再试~", true, i2, 1);
                }
                return;
            } catch (Exception e4) {
                A1("操作失败，请稍候再试~", true, i2, 1);
                e4.printStackTrace();
                return;
            }
        }
        A1("网络连接失败，再试试吧~", true, i2, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void x1(String str, boolean z3, int i2) {
        com.join.mgps.Util.i2.a(this.f29208y).b(str);
        if (z3) {
            if (i2 == 1) {
                w1(0);
            } else {
                v1(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void y1(CommentResponse commentResponse) {
        if (commentResponse.getCode() == 801) {
            q1();
            com.join.mgps.Util.i2.a(this.f29208y).b("数据访问失败，请稍候再试！");
            return;
        }
        com.join.mgps.Util.i2.a(this.f29208y).b(commentResponse.getMsg());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void z1(String str, boolean z3) {
        if (!str.isEmpty()) {
            com.join.mgps.Util.i2.a(this.f29208y).b(str);
        }
        if (z3) {
            org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.h(1, "", 0.0d, 0L, ""));
            finish();
        }
    }
}
