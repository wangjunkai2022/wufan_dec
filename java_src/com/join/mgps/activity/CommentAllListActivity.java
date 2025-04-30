package com.join.mgps.activity;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AESUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.adapter.CommentAllListAdapter;
import com.join.mgps.customview.HistogramView;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.CommentPraiseBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.CommentTokenBean;
import com.join.mgps.dto.RequestCommentAllListArgs;
import com.join.mgps.dto.RequestCommentpraiseArgs;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.comment_all_list_activity)
/* loaded from: classes.dex */
public class CommentAllListActivity extends BaseAppCompatActivity implements CommentAllListAdapter.h {
    private TextView A;
    private TextView B;
    private TextView C;
    private TextView D;
    private HistogramView E;
    private HistogramView F;
    private HistogramView G;
    private HistogramView H;
    private HistogramView I;

    /* renamed from: a  reason: collision with root package name */
    private Context f29049a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ImageView f29050b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f29051c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f29052d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    PtrClassicFrameLayout f29053e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    XListView2 f29054f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f29055g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f29056h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    LinearLayout f29057i;

    /* renamed from: j  reason: collision with root package name */
    com.join.mgps.rpc.e f29058j;
    @Pref

    /* renamed from: k  reason: collision with root package name */
    PrefDef_ f29059k;
    @Extra

    /* renamed from: l  reason: collision with root package name */
    String f29060l;
    @Extra

    /* renamed from: m  reason: collision with root package name */
    String f29061m;
    @Extra

    /* renamed from: n  reason: collision with root package name */
    float f29062n;

    /* renamed from: n0  reason: collision with root package name */
    private AccountBean f29063n0;
    @Extra

    /* renamed from: o  reason: collision with root package name */
    String f29064o;

    /* renamed from: o0  reason: collision with root package name */
    private int f29065o0;
    @Extra

    /* renamed from: p  reason: collision with root package name */
    String f29066p;

    /* renamed from: p0  reason: collision with root package name */
    private String f29067p0;
    @Extra

    /* renamed from: q  reason: collision with root package name */
    String f29068q;

    /* renamed from: q0  reason: collision with root package name */
    private CommentBaseBean f29069q0;
    @Extra

    /* renamed from: r  reason: collision with root package name */
    int f29070r;
    @Extra

    /* renamed from: s  reason: collision with root package name */
    int f29072s;

    /* renamed from: s0  reason: collision with root package name */
    private CommentAllListAdapter f29073s0;
    @Extra

    /* renamed from: t  reason: collision with root package name */
    String f29074t;

    /* renamed from: t0  reason: collision with root package name */
    private List<CommentAllListAdapter.i> f29075t0;
    @Extra

    /* renamed from: u  reason: collision with root package name */
    int f29076u;

    /* renamed from: u0  reason: collision with root package name */
    private List<CommentBaseBean> f29077u0;

    /* renamed from: v  reason: collision with root package name */
    private View f29078v;

    /* renamed from: w  reason: collision with root package name */
    private LinearLayout f29079w;

    /* renamed from: x  reason: collision with root package name */
    private LinearLayout f29080x;

    /* renamed from: y  reason: collision with root package name */
    private LinearLayout f29081y;

    /* renamed from: z  reason: collision with root package name */
    private MStarBar f29082z;
    private int J = 1;
    private boolean K = false;

    /* renamed from: r0  reason: collision with root package name */
    private List<CommentAllListBean> f29071r0 = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentAllListActivity.this.Q0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (CommentAllListActivity.this.K) {
                return;
            }
            CommentAllListActivity.this.I0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements com.join.mgps.customview.j {
        c() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (CommentAllListActivity.this.K) {
                return;
            }
            CommentAllListActivity.this.J = 1;
            CommentAllListActivity.this.I0();
        }
    }

    private int H0(Context context, float f4) {
        return (int) ((f4 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    void F0(List<CommentBaseBean> list) {
        for (int i2 = 0; list != null && i2 < list.size(); i2++) {
            CommentBaseBean commentBaseBean = list.get(i2);
            if (commentBaseBean.isTitle()) {
                this.f29075t0.add(new CommentAllListAdapter.i(CommentAllListAdapter.ViewType.TITLE, new CommentAllListAdapter.i.a(commentBaseBean)));
            } else {
                this.f29075t0.add(new CommentAllListAdapter.i(CommentAllListAdapter.ViewType.COMMENT, new CommentAllListAdapter.i.a(commentBaseBean)));
            }
        }
    }

    @UiThread
    public void G0(int i2, int i4) {
        if (i4 == 1) {
            this.f29073s0.i(i2, 1);
        } else {
            this.f29073s0.j(i2, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void I0() {
        if (com.join.android.app.common.utils.f.j(this.f29049a)) {
            this.K = true;
            try {
                CommentResponse b4 = this.f29058j.b(K0());
                if (b4 != null) {
                    if (b4.getCode() != 0) {
                        N0(b4);
                    }
                    CommentAllListBean.ScoringDetailsBean scoring_details = b4.getData_info().getScoring_details();
                    this.f29069q0 = b4.getData_info().getSelf_comment();
                    List<CommentAllListBean.HotCommentBean> hot_comment = b4.getData_info().getHot_comment();
                    List<CommentAllListBean.GeneralCommentBean> general_comment = b4.getData_info().getGeneral_comment();
                    List<CommentBaseBean> arrayList = new ArrayList<>();
                    if (scoring_details != null) {
                        O0(scoring_details);
                    }
                    if (hot_comment != null && hot_comment.size() > 0) {
                        CommentBaseBean commentBaseBean = new CommentBaseBean();
                        commentBaseBean.setIs_hot(1);
                        commentBaseBean.setTitle(true);
                        commentBaseBean.setPn(this.J);
                        arrayList.add(commentBaseBean);
                        arrayList.addAll(hot_comment);
                    }
                    if (this.f29069q0 != null && this.J == 1) {
                        CommentBaseBean commentBaseBean2 = new CommentBaseBean();
                        commentBaseBean2.setIs_hot(2);
                        commentBaseBean2.setTitle(true);
                        commentBaseBean2.setPn(this.J);
                        arrayList.add(commentBaseBean2);
                        this.f29069q0.setPn(this.J);
                        arrayList.add(this.f29069q0);
                    }
                    if (general_comment != null && general_comment.size() > 0) {
                        if (this.J == 1 && this.f29069q0 == null) {
                            CommentBaseBean commentBaseBean3 = new CommentBaseBean();
                            commentBaseBean3.setIs_hot(2);
                            commentBaseBean3.setTitle(true);
                            commentBaseBean3.setPn(this.J);
                            arrayList.add(commentBaseBean3);
                        }
                        for (int i2 = 0; i2 < general_comment.size(); i2++) {
                            CommentBaseBean commentBaseBean4 = general_comment.get(i2);
                            commentBaseBean4.setPn(this.J);
                            arrayList.add(commentBaseBean4);
                        }
                    }
                    P0(arrayList);
                    return;
                }
                showLodingFailed();
                return;
            } catch (Exception e4) {
                showLodingFailed();
                e4.printStackTrace();
                return;
            }
        }
        showLodingFailed();
    }

    public RequestCommentpraiseArgs J0(String str, int i2, int i4) {
        String str2;
        String str3 = Build.MODEL;
        this.f29067p0 = this.f29059k.commentToken().d();
        AccountBean accountData = AccountUtil_.getInstance_(this.f29049a).getAccountData();
        this.f29063n0 = accountData;
        if (accountData != null) {
            this.f29065o0 = accountData.getUid();
            str2 = this.f29063n0.getToken();
        } else {
            str2 = "";
        }
        return RequestBeanUtil.getInstance(this.f29049a).getPraiseComment(this.f29064o, this.f29067p0, str3, str, str2, this.f29065o0, i2, i4);
    }

    public RequestCommentAllListArgs K0() {
        this.f29063n0 = AccountUtil_.getInstance_(this.f29049a).getAccountData();
        this.f29067p0 = this.f29059k.commentToken().d();
        AccountBean accountBean = this.f29063n0;
        if (accountBean != null) {
            this.f29065o0 = accountBean.getUid();
        }
        return RequestBeanUtil.getInstance(this.f29049a).getRequestCommentAllList(this.J, 10, this.f29064o, this.f29065o0, this.f29067p0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void L0() {
        if (com.join.android.app.common.utils.f.j(this.f29049a)) {
            try {
                CommentResponse<CommentTokenBean> c4 = this.f29058j.c(RequestBeanUtil.getInstance(this).getTokenRequestBean(AccountUtil_.getInstance_(this).getUid(), ""));
                if (c4 == null || c4.getCode() != 0 || c4.getData_info() == null || TextUtils.isEmpty(c4.getData_info().getToken())) {
                    return;
                }
                this.f29059k.commentToken().g(AESUtils.f(c4.getData_info().getToken() + "|" + c4.getData_info().getTimes()));
                this.f29059k.lastCheckInTime().g(Long.valueOf(System.currentTimeMillis()));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M0(String str, boolean z3, int i2, int i4) {
        com.join.mgps.Util.i2.a(this.f29049a).b(str);
        if (z3) {
            if (i4 == 1) {
                this.f29073s0.j(i2, 0);
            } else {
                this.f29073s0.i(i2, 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N0(CommentResponse commentResponse) {
        if (commentResponse.getCode() == 801) {
            L0();
            com.join.mgps.Util.i2.a(this.f29049a).b("数据访问失败，请稍候再试！");
            return;
        }
        com.join.mgps.Util.i2.a(this.f29049a).b(commentResponse.getMsg());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O0(CommentAllListBean.ScoringDetailsBean scoringDetailsBean) {
        HistogramView[] histogramViewArr = {this.E, this.F, this.G, this.H, this.I};
        String[] strArr = {"#F47500", "#FFA423", "#FFB53D", "#FBCD36", "#E4DECA"};
        this.C.setText(new DecimalFormat("#.0").format(Double.valueOf(scoringDetailsBean.getTotal_score()).doubleValue()));
        this.f29082z.setStarMark(scoringDetailsBean.getTotal_stars());
        double[] dArr = {Double.valueOf(scoringDetailsBean.getStars_score5()).doubleValue(), Double.valueOf(scoringDetailsBean.getStars_score4()).doubleValue(), Double.valueOf(scoringDetailsBean.getStars_score3()).doubleValue(), Double.valueOf(scoringDetailsBean.getStars_score2()).doubleValue(), Double.valueOf(scoringDetailsBean.getStars_score1()).doubleValue()};
        double d4 = 0.0d;
        int i2 = 0;
        for (int i4 = 0; i4 < 5; i4++) {
            double d5 = dArr[i4];
            if (dArr[i4] > d4) {
                d4 = dArr[i4];
                i2 = i4;
            }
        }
        this.D.setText(scoringDetailsBean.getP_count() + "人");
        if (scoringDetailsBean.getP_count() <= 0) {
            this.f29082z.setStarMark(0.0d);
            this.B.setVisibility(0);
            this.C.setVisibility(8);
            this.D.setVisibility(8);
        } else {
            this.f29080x.setVisibility(0);
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, H0(this, 10.0f));
        for (int i5 = 0; i5 < 5; i5++) {
            histogramViewArr[i5].setAnim(false);
            if (dArr[i5] == 0.0d) {
                histogramViewArr[i5].setProgress(0.0d);
            } else if (i5 == i2) {
                histogramViewArr[i5].setProgress(1.0d);
            } else if (d4 == dArr[i5]) {
                histogramViewArr[i5].setProgress(1.0d);
            } else {
                histogramViewArr[i5].setProgress(dArr[i5] / d4);
            }
            histogramViewArr[i5].setRateBackgroundColor(strArr[i5]);
            histogramViewArr[i5].setLayoutParams(layoutParams);
            histogramViewArr[i5].setOrientation(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P0(List<CommentBaseBean> list) {
        if (this.J == 1) {
            if (list.size() > 0) {
                this.f29054f.setVisibility(0);
                this.f29053e.setVisibility(0);
                this.f29057i.setVisibility(8);
                this.f29052d.setVisibility(8);
            } else {
                this.f29054f.setVisibility(8);
                this.f29053e.setVisibility(8);
                this.f29057i.setVisibility(0);
                this.f29052d.setVisibility(0);
            }
            this.f29056h.setVisibility(8);
            this.f29055g.setVisibility(8);
            this.f29077u0.clear();
            this.f29075t0.clear();
        }
        this.J++;
        this.f29077u0.addAll(list);
        F0(list);
        this.f29054f.t();
        this.f29054f.u();
        if (list.size() <= 0) {
            this.f29054f.setNoMore();
        }
        this.f29073s0.notifyDataSetChanged();
        R0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Q0() {
        if (IntentUtil.getInstance().goLoginInteractive(this.f29049a)) {
            return;
        }
        if (this.f29073s0.g() != -1 && this.f29069q0 != null) {
            CommentCreatActivity_.U0(this.f29049a).f(this.f29064o).j(this.f29066p).d(this.f29068q).c(this.f29069q0.getId()).e(Float.valueOf(this.f29069q0.getStars_score()).floatValue()).h(this.f29074t).g(1).a(this.f29070r).b(this.f29069q0.getContent()).start();
        } else {
            CommentCreatActivity_.U0(this.f29049a).f(this.f29064o).j(this.f29066p).a(this.f29070r).d(this.f29068q).h(this.f29074t).g(1).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R0() {
        this.f29054f.t();
        this.f29054f.u();
        this.K = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        this.f29058j = com.join.mgps.rpc.impl.d.m();
        this.f29049a = this;
        this.f29051c.setText("全部点评");
        org.greenrobot.eventbus.c.f().t(this);
        AccountBean accountData = AccountUtil_.getInstance_(this.f29049a).getAccountData();
        this.f29063n0 = accountData;
        if (accountData != null) {
            this.f29065o0 = accountData.getUid();
        }
        this.f29067p0 = this.f29059k.commentToken().d();
        View inflate = LayoutInflater.from(this).inflate(R.layout.comment_list_head_view, (ViewGroup) null);
        this.f29078v = inflate;
        this.E = (HistogramView) inflate.findViewById(R.id.oneHv);
        this.F = (HistogramView) this.f29078v.findViewById(R.id.twoHv);
        this.G = (HistogramView) this.f29078v.findViewById(R.id.threeHv);
        this.H = (HistogramView) this.f29078v.findViewById(R.id.fourHv);
        this.I = (HistogramView) this.f29078v.findViewById(R.id.fiveHv);
        this.f29082z = (MStarBar) this.f29078v.findViewById(R.id.comment_head_mstarBar);
        this.C = (TextView) this.f29078v.findViewById(R.id.comment_head_point_tx);
        this.B = (TextView) this.f29078v.findViewById(R.id.comment_head_nopoint_tx);
        this.D = (TextView) this.f29078v.findViewById(R.id.comment_head_num_tx);
        TextView textView = (TextView) this.f29078v.findViewById(R.id.editText5);
        this.A = textView;
        textView.setText("写评论");
        this.f29079w = (LinearLayout) this.f29078v.findViewById(R.id.start_ll);
        this.f29080x = (LinearLayout) this.f29078v.findViewById(R.id.point_ll);
        this.f29078v.findViewById(R.id.goCommit).setOnClickListener(new a());
        this.f29082z.setIntegerMark(false);
        this.f29082z.setEnabled(false);
        showLoding();
        I0();
        this.f29077u0 = new ArrayList();
        this.f29075t0 = new ArrayList();
        this.f29073s0 = new CommentAllListAdapter(this.f29049a, this.f29065o0, this.f29075t0, this.f29068q, this.f29072s, this);
        String str = this.f29068q;
        if (str != null && str.equals("1")) {
            this.f29054f.addHeaderView(this.f29078v);
            this.f29052d.setVisibility(8);
        } else {
            this.f29052d.setVisibility(0);
        }
        this.f29054f.setAdapter((ListAdapter) this.f29073s0);
        this.f29054f.setPreLoadCount(10);
        this.f29054f.setVerticalScrollBarEnabled(false);
        this.f29054f.setPullLoadEnable(new b());
        this.f29054f.setPullRefreshEnable(new c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    @Override // com.join.mgps.adapter.CommentAllListAdapter.h
    @Background
    public void d(CommentBaseBean commentBaseBean, int i2, int i4) {
        if (com.join.android.app.common.utils.f.j(this.f29049a)) {
            try {
                CommentResponse<CommentPraiseBean> h4 = this.f29058j.h(J0(commentBaseBean.getId(), i4, commentBaseBean.getPn()));
                if (h4 != null) {
                    if (h4.getCode() == 801) {
                        N0(h4);
                    } else if (h4.getSucc() != 1) {
                        M0(h4.getMsg(), true, i2, 1);
                    }
                    if (h4.getSucc() == 1) {
                        G0(i2, 1);
                        return;
                    }
                    return;
                }
                M0("操作失败，请稍候再试~", true, i2, 1);
                return;
            } catch (Exception e4) {
                M0("操作失败，请稍候再试~", true, i2, 1);
                e4.printStackTrace();
                return;
            }
        }
        M0("网络连接失败，再试试吧~", true, i2, 1);
    }

    @Override // com.join.mgps.adapter.CommentAllListAdapter.h
    @Background
    public void e(CommentBaseBean commentBaseBean, int i2, int i4) {
        if (com.join.android.app.common.utils.f.j(this.f29049a)) {
            try {
                CommentResponse<CommentPraiseBean> l4 = this.f29058j.l(J0(commentBaseBean.getId(), i4, commentBaseBean.getPn()));
                if (l4 != null) {
                    if (l4.getCode() == 801) {
                        N0(l4);
                    } else if (l4.getSucc() != 1) {
                        M0(l4.getMsg(), true, i2, 2);
                    }
                    if (l4.getSucc() == 1) {
                        G0(i2, 2);
                        return;
                    }
                    return;
                }
                M0("操作失败，请稍候再试~", true, i2, 2);
                return;
            } catch (Exception e4) {
                M0("操作失败，请稍候再试~", true, i2, 2);
                e4.printStackTrace();
                return;
            }
        }
        M0("网络连接失败，再试试吧~", true, i2, 2);
    }

    @Override // com.join.mgps.adapter.CommentAllListAdapter.h
    public void f(CommentBaseBean commentBaseBean) {
        CommentDetailActivity_.k2(this.f29049a).d(commentBaseBean.getGame_id()).b(commentBaseBean.getId()).f(this.f29074t).a(this.f29070r).e(this.f29076u).h(this.f29072s).g(this.f29066p).c(this.f29068q).start();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onChangeComment(com.join.mgps.event.h hVar) {
        this.J = 1;
        I0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().y(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f29054f.setVisibility(8);
        this.f29053e.setVisibility(8);
        this.f29056h.setVisibility(8);
        this.f29057i.setVisibility(8);
        this.f29055g.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        List<CommentAllListBean> list = this.f29071r0;
        if (list != null && list.size() != 0) {
            Toast.makeText(this, getString(R.string.net_connect_failed), 0).show();
        } else {
            this.f29054f.setVisibility(8);
            this.f29053e.setVisibility(8);
            this.f29056h.setVisibility(0);
            this.f29055g.setVisibility(8);
            this.f29057i.setVisibility(8);
            this.f29052d.setVisibility(0);
        }
        R0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this.f29049a).b(str);
    }
}
