package com.join.mgps.fragment;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AESUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentCreatActivity_;
import com.join.mgps.activity.CommentDetailActivity_;
import com.join.mgps.adapter.CommentAllListFragmentAdapter;
import com.join.mgps.customview.LoadMoreRecyclerView;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentAlllistIntentData;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.CommentPraiseBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.CommentTokenBean;
import com.join.mgps.dto.RequestCommentAllListArgs;
import com.join.mgps.dto.RequestCommentpraiseArgs;
import com.join.mgps.pref.PrefDef_;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: CommentAllListFragment.java */
@EFragment(R.layout.comment_all_list_fragment)
/* loaded from: classes.dex */
public class w extends Fragment implements CommentAllListFragmentAdapter.h {
    private CommentAllListFragmentAdapter B;
    private List<CommentAllListFragmentAdapter.i> C;
    private List<CommentBaseBean> D;

    /* renamed from: a  reason: collision with root package name */
    private Context f50592a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ImageView f50593b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f50594c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f50595d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LoadMoreRecyclerView f50596e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f50597f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f50598g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    NestedScrollView f50599h;

    /* renamed from: i  reason: collision with root package name */
    com.join.mgps.rpc.e f50600i;
    @Pref

    /* renamed from: j  reason: collision with root package name */
    PrefDef_ f50601j;

    /* renamed from: k  reason: collision with root package name */
    String f50602k;

    /* renamed from: l  reason: collision with root package name */
    String f50603l;

    /* renamed from: m  reason: collision with root package name */
    float f50604m;

    /* renamed from: n  reason: collision with root package name */
    String f50605n;

    /* renamed from: o  reason: collision with root package name */
    String f50606o;

    /* renamed from: p  reason: collision with root package name */
    String f50607p;

    /* renamed from: q  reason: collision with root package name */
    int f50608q;

    /* renamed from: r  reason: collision with root package name */
    int f50609r;

    /* renamed from: s  reason: collision with root package name */
    String f50610s;

    /* renamed from: t  reason: collision with root package name */
    int f50611t;

    /* renamed from: w  reason: collision with root package name */
    private AccountBean f50614w;

    /* renamed from: x  reason: collision with root package name */
    private int f50615x;

    /* renamed from: y  reason: collision with root package name */
    private String f50616y;

    /* renamed from: z  reason: collision with root package name */
    private CommentBaseBean f50617z;

    /* renamed from: u  reason: collision with root package name */
    private int f50612u = 1;

    /* renamed from: v  reason: collision with root package name */
    private boolean f50613v = false;
    private List<CommentAllListBean> A = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommentAllListFragment.java */
    /* loaded from: classes4.dex */
    public class a implements LoadMoreRecyclerView.c {
        a() {
        }

        @Override // com.join.mgps.customview.LoadMoreRecyclerView.c
        public void onLoadMore() {
            w.this.O();
        }
    }

    public static w S(CommentAlllistIntentData commentAlllistIntentData) {
        Bundle bundle = new Bundle();
        bundle.putSerializable("intentData", commentAlllistIntentData);
        x xVar = new x();
        xVar.setArguments(bundle);
        return xVar;
    }

    @Override // com.join.mgps.adapter.CommentAllListFragmentAdapter.h
    public void A() {
        W();
    }

    void M(List<CommentBaseBean> list) {
        for (int i2 = 0; list != null && i2 < list.size(); i2++) {
            CommentBaseBean commentBaseBean = list.get(i2);
            if (commentBaseBean.isTitle()) {
                this.C.add(new CommentAllListFragmentAdapter.i(CommentAllListFragmentAdapter.ViewType.TITLE, new CommentAllListFragmentAdapter.i.a(commentBaseBean)));
            } else {
                this.C.add(new CommentAllListFragmentAdapter.i(CommentAllListFragmentAdapter.ViewType.COMMENT, new CommentAllListFragmentAdapter.i.a(commentBaseBean)));
            }
        }
    }

    @UiThread
    public void N(int i2, int i4) {
        if (i4 == 1) {
            this.B.h(i2, 1);
        } else {
            this.B.i(i2, 1);
        }
        this.f50596e.getAdapter().notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void O() {
        if (com.join.android.app.common.utils.f.j(this.f50592a)) {
            this.f50613v = true;
            try {
                CommentResponse b4 = this.f50600i.b(Q());
                if (b4 != null) {
                    if (b4.getCode() != 0) {
                        U(b4);
                    }
                    CommentAllListBean.ScoringDetailsBean scoring_details = b4.getData_info().getScoring_details();
                    CommentAllListBean.SelfCommentBean self_comment = b4.getData_info().getSelf_comment();
                    this.f50617z = self_comment;
                    this.B.l(self_comment);
                    List<CommentAllListBean.HotCommentBean> hot_comment = b4.getData_info().getHot_comment();
                    List<CommentAllListBean.GeneralCommentBean> general_comment = b4.getData_info().getGeneral_comment();
                    List<CommentBaseBean> arrayList = new ArrayList<>();
                    if (hot_comment != null && hot_comment.size() > 0) {
                        CommentBaseBean commentBaseBean = new CommentBaseBean();
                        commentBaseBean.setIs_hot(1);
                        commentBaseBean.setTitle(true);
                        commentBaseBean.setPn(this.f50612u);
                        arrayList.add(commentBaseBean);
                        arrayList.addAll(hot_comment);
                    }
                    if (this.f50617z != null && this.f50612u == 1) {
                        CommentBaseBean commentBaseBean2 = new CommentBaseBean();
                        commentBaseBean2.setIs_hot(2);
                        commentBaseBean2.setTitle(true);
                        commentBaseBean2.setPn(this.f50612u);
                        arrayList.add(commentBaseBean2);
                        this.f50617z.setPn(this.f50612u);
                        arrayList.add(this.f50617z);
                    }
                    if (general_comment != null && general_comment.size() > 0) {
                        if (this.f50612u == 1 && this.f50617z == null) {
                            CommentBaseBean commentBaseBean3 = new CommentBaseBean();
                            commentBaseBean3.setIs_hot(2);
                            commentBaseBean3.setTitle(true);
                            commentBaseBean3.setPn(this.f50612u);
                            arrayList.add(commentBaseBean3);
                        }
                        for (int i2 = 0; i2 < general_comment.size(); i2++) {
                            CommentBaseBean commentBaseBean4 = general_comment.get(i2);
                            commentBaseBean4.setPn(this.f50612u);
                            arrayList.add(commentBaseBean4);
                        }
                    }
                    V(arrayList, scoring_details);
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

    public RequestCommentpraiseArgs P(String str, int i2, int i4) {
        String str2;
        String str3 = Build.MODEL;
        this.f50616y = this.f50601j.commentToken().d();
        AccountBean accountData = AccountUtil_.getInstance_(this.f50592a).getAccountData();
        this.f50614w = accountData;
        if (accountData != null) {
            this.f50615x = accountData.getUid();
            str2 = this.f50614w.getToken();
        } else {
            str2 = "";
        }
        return RequestBeanUtil.getInstance(this.f50592a).getPraiseComment(this.f50605n, this.f50616y, str3, str, str2, this.f50615x, i2, i4);
    }

    public RequestCommentAllListArgs Q() {
        this.f50614w = AccountUtil_.getInstance_(this.f50592a).getAccountData();
        this.f50616y = this.f50601j.commentToken().d();
        AccountBean accountBean = this.f50614w;
        if (accountBean != null) {
            this.f50615x = accountBean.getUid();
        }
        return RequestBeanUtil.getInstance(this.f50592a).getRequestCommentAllList(this.f50612u, 10, this.f50605n, this.f50615x, this.f50616y);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R() {
        if (com.join.android.app.common.utils.f.j(this.f50592a)) {
            try {
                CommentResponse<CommentTokenBean> c4 = this.f50600i.c(RequestBeanUtil.getInstance(this.f50592a).getTokenRequestBean(AccountUtil_.getInstance_(this.f50592a).getUid(), ""));
                if (c4 == null || c4.getCode() != 0 || c4.getData_info() == null || TextUtils.isEmpty(c4.getData_info().getToken())) {
                    return;
                }
                this.f50601j.commentToken().g(AESUtils.f(c4.getData_info().getToken() + "|" + c4.getData_info().getTimes()));
                this.f50601j.lastCheckInTime().g(Long.valueOf(System.currentTimeMillis()));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T(String str, boolean z3, int i2, int i4) {
        com.join.mgps.Util.i2.a(this.f50592a).b(str);
        if (z3) {
            if (i4 == 1) {
                this.B.i(i2, 0);
            } else {
                this.B.h(i2, 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U(CommentResponse commentResponse) {
        if (commentResponse.getCode() == 801) {
            R();
            com.join.mgps.Util.i2.a(this.f50592a).b("数据访问失败，请稍候再试！");
            return;
        }
        com.join.mgps.Util.i2.a(this.f50592a).b(commentResponse.getMsg());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void V(List<CommentBaseBean> list, CommentAllListBean.ScoringDetailsBean scoringDetailsBean) {
        String str;
        try {
            if (this.f50612u == 1) {
                if (list.size() > 0) {
                    this.f50596e.setVisibility(0);
                    this.f50599h.setVisibility(8);
                } else {
                    this.f50596e.setVisibility(8);
                    this.f50599h.setVisibility(0);
                }
                this.f50598g.setVisibility(8);
                this.f50597f.setVisibility(8);
                this.D.clear();
                this.C.clear();
                if (scoringDetailsBean != null && (str = this.f50607p) != null && str.equals("1")) {
                    this.C.add(new CommentAllListFragmentAdapter.i(CommentAllListFragmentAdapter.ViewType.HEAD, scoringDetailsBean));
                }
            }
            this.f50612u++;
            this.D.addAll(list);
            M(list);
            if (list.size() == 0) {
                this.f50596e.c1(false);
            } else {
                this.f50596e.c1(true);
            }
            this.B.notifyDataSetChanged();
            if (list.size() == 0) {
                this.f50596e.c1(false);
            } else {
                X();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void W() {
        if (IntentUtil.getInstance().goLoginInteractive(this.f50592a)) {
            return;
        }
        AccountBean accountData = AccountUtil_.getInstance_(this.f50592a).getAccountData();
        if (!com.join.mgps.Util.d2.h(accountData.getNickname()) && (!accountData.getAccount().equals(accountData.getNickname()) || !accountData.getAccount().startsWith("pa"))) {
            if (this.B.f() != -1 && this.f50617z != null) {
                CommentCreatActivity_.U0(this.f50592a).f(this.f50605n).j(this.f50606o).d(this.f50607p).c(this.f50617z.getId()).e(Float.valueOf(this.f50617z.getStars_score()).floatValue()).h(this.f50610s).g(1).a(this.f50608q).b(this.f50617z.getContent()).start();
                return;
            } else {
                CommentCreatActivity_.U0(this.f50592a).f(this.f50605n).j(this.f50606o).a(this.f50608q).d(this.f50607p).h(this.f50610s).g(1).start();
                return;
            }
        }
        IntentUtil.getInstance().goChangeNickname(this.f50592a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void X() {
        try {
            this.f50596e.setLoadingMore(false);
            this.f50596e.c1(true);
            if (this.D.size() < 10) {
                this.f50596e.c1(false);
            }
            this.B.notifyDataSetChanged();
            this.f50613v = false;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        this.f50600i = com.join.mgps.rpc.impl.d.m();
        CommentAlllistIntentData commentAlllistIntentData = (CommentAlllistIntentData) getArguments().getSerializable("intentData");
        this.f50602k = commentAlllistIntentData.getCommentId();
        this.f50603l = commentAlllistIntentData.getCommentContent();
        this.f50604m = commentAlllistIntentData.getCommentStars();
        this.f50605n = commentAlllistIntentData.getGameId();
        this.f50606o = commentAlllistIntentData.getPackageName();
        this.f50607p = commentAlllistIntentData.getCommentScoreSwitch();
        this.f50608q = commentAlllistIntentData.getBespeakSwitch();
        this.f50609r = commentAlllistIntentData.getSgcSwitch();
        this.f50610s = commentAlllistIntentData.getGameType();
        this.f50611t = commentAlllistIntentData.getGameIsStart();
        this.f50592a = getContext();
        this.f50594c.setText("全部点评");
        if (!org.greenrobot.eventbus.c.f().m(this)) {
            org.greenrobot.eventbus.c.f().t(this);
        }
        AccountBean accountData = AccountUtil_.getInstance_(this.f50592a).getAccountData();
        this.f50614w = accountData;
        if (accountData != null) {
            this.f50615x = accountData.getUid();
        }
        this.f50616y = this.f50601j.commentToken().d();
        showLoding();
        O();
        this.D = new ArrayList();
        ArrayList arrayList = new ArrayList();
        this.C = arrayList;
        this.B = new CommentAllListFragmentAdapter(this.f50592a, this.f50615x, arrayList, this.f50607p, this.f50609r, this);
        this.f50596e.setLayoutManager(new LinearLayoutManager(getContext()));
        this.f50596e.setAdapter(this.B);
        this.f50596e.setVerticalScrollBarEnabled(false);
        this.f50596e.setAutoLoadMoreEnable(true);
        this.f50596e.setLoadMoreListener(new a());
    }

    @Override // com.join.mgps.adapter.CommentAllListFragmentAdapter.h
    @Background
    public void d(CommentBaseBean commentBaseBean, int i2, int i4) {
        if (com.join.android.app.common.utils.f.j(this.f50592a)) {
            try {
                CommentResponse<CommentPraiseBean> h4 = this.f50600i.h(P(commentBaseBean.getId(), i4, commentBaseBean.getPn()));
                if (h4 != null) {
                    if (h4.getCode() == 801) {
                        U(h4);
                    } else if (h4.getSucc() != 1) {
                        T(h4.getMsg(), true, i2, 1);
                    }
                    if (h4.getSucc() == 1) {
                        N(i2, 1);
                        return;
                    }
                    return;
                }
                T("操作失败，请稍候再试~", true, i2, 1);
                return;
            } catch (Exception e4) {
                T("操作失败，请稍候再试~", true, i2, 1);
                e4.printStackTrace();
                return;
            }
        }
        T("网络连接失败，再试试吧~", true, i2, 1);
    }

    @Override // com.join.mgps.adapter.CommentAllListFragmentAdapter.h
    @Background
    public void e(CommentBaseBean commentBaseBean, int i2, int i4) {
        if (com.join.android.app.common.utils.f.j(this.f50592a)) {
            try {
                CommentResponse<CommentPraiseBean> l4 = this.f50600i.l(P(commentBaseBean.getId(), i4, commentBaseBean.getPn()));
                if (l4 != null) {
                    if (l4.getCode() == 801) {
                        U(l4);
                    } else if (l4.getSucc() != 1) {
                        T(l4.getMsg(), true, i2, 2);
                    }
                    if (l4.getSucc() == 1) {
                        N(i2, 2);
                        return;
                    }
                    return;
                }
                T("操作失败，请稍候再试~", true, i2, 2);
                return;
            } catch (Exception e4) {
                T("操作失败，请稍候再试~", true, i2, 2);
                e4.printStackTrace();
                return;
            }
        }
        T("网络连接失败，再试试吧~", true, i2, 2);
    }

    @Override // com.join.mgps.adapter.CommentAllListFragmentAdapter.h
    public void f(CommentBaseBean commentBaseBean) {
        CommentDetailActivity_.k2(this.f50592a).d(commentBaseBean.getGame_id()).b(commentBaseBean.getId()).f(this.f50610s).a(this.f50608q).e(this.f50611t).h(this.f50609r).g(this.f50606o).c(this.f50607p).start();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onChangeComment(com.join.mgps.event.h hVar) {
        this.f50612u = 1;
        O();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().y(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f50612u = 1;
        O();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(getContext());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            this.f50596e.setVisibility(8);
            this.f50598g.setVisibility(8);
            this.f50599h.setVisibility(8);
            this.f50597f.setVisibility(0);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        try {
            List<CommentAllListBean> list = this.A;
            if (list != null && list.size() != 0) {
                Toast.makeText(this.f50592a, getString(R.string.net_connect_failed), 0).show();
                X();
            }
            this.f50596e.setVisibility(8);
            this.f50598g.setVisibility(0);
            this.f50597f.setVisibility(8);
            this.f50599h.setVisibility(8);
            X();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this.f50592a).b(str);
    }
}
