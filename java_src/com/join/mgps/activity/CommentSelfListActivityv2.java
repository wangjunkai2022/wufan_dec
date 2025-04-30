package com.join.mgps.activity;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.adapter.CommentSelfListAdapter;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CommentPraiseBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.CommentSelfListBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
@EActivity(R.layout.activity_comment_self_list_v2)
/* loaded from: classes3.dex */
public class CommentSelfListActivityv2 extends BaseAppCompatActivity implements AbsListView.OnScrollListener {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    RelativeLayout f29375a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ImageView f29376b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f29377c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f29378d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    XListView2 f29379e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    ForumLoadingView f29380f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    PtrClassicFrameLayout f29381g;

    /* renamed from: h  reason: collision with root package name */
    com.join.mgps.rpc.e f29382h;
    @Pref

    /* renamed from: i  reason: collision with root package name */
    PrefDef_ f29383i;

    /* renamed from: j  reason: collision with root package name */
    public int f29384j;

    /* renamed from: k  reason: collision with root package name */
    public int f29385k;

    /* renamed from: l  reason: collision with root package name */
    private com.join.mgps.customview.j f29386l;

    /* renamed from: m  reason: collision with root package name */
    private CommentSelfListAdapter f29387m;

    /* renamed from: n  reason: collision with root package name */
    private List<CommentSelfListBean> f29388n = new ArrayList();

    /* renamed from: o  reason: collision with root package name */
    Handler f29389o = new Handler();

    /* renamed from: p  reason: collision with root package name */
    com.join.mgps.customview.t f29390p = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (CommentSelfListActivityv2.this.K0()) {
                CommentSelfListActivityv2 commentSelfListActivityv2 = CommentSelfListActivityv2.this;
                commentSelfListActivityv2.I0(commentSelfListActivityv2.f29384j + 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (CommentSelfListActivityv2.this.K0()) {
                CommentSelfListActivityv2.this.U0();
                CommentSelfListActivityv2 commentSelfListActivityv2 = CommentSelfListActivityv2.this;
                commentSelfListActivityv2.f29385k = 0;
                commentSelfListActivityv2.f29384j = 0;
                commentSelfListActivityv2.I0(1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements CommentSelfListAdapter.j {
        c() {
        }

        @Override // com.join.mgps.adapter.CommentSelfListAdapter.j
        public void a(int i2, String str, int i4) {
            CommentSelfListActivityv2 commentSelfListActivityv2 = CommentSelfListActivityv2.this;
            if (!commentSelfListActivityv2.isLogined(commentSelfListActivityv2)) {
                CommentSelfListActivityv2.this.showMessage(commentSelfListActivityv2.getString(R.string.forum_user_not_login));
            } else if (!CommentSelfListActivityv2.this.V0()) {
                CommentSelfListActivityv2.this.S0();
            } else {
                CommentSelfListActivityv2.this.O0(i2, str, i4);
                CommentSelfListActivityv2.this.G0(i2, str, i4);
            }
        }

        @Override // com.join.mgps.adapter.CommentSelfListAdapter.j
        public void b(int i2, String str, int i4) {
            CommentSelfListActivityv2 commentSelfListActivityv2 = CommentSelfListActivityv2.this;
            if (!commentSelfListActivityv2.isLogined(commentSelfListActivityv2)) {
                CommentSelfListActivityv2.this.showMessage(commentSelfListActivityv2.getString(R.string.forum_user_not_login));
            } else if (!CommentSelfListActivityv2.this.V0()) {
                CommentSelfListActivityv2.this.S0();
            } else {
                CommentSelfListActivityv2.this.P0(i2, str, i4);
                CommentSelfListActivityv2.this.N0(i2, str, i4);
            }
        }

        @Override // com.join.mgps.adapter.CommentSelfListAdapter.j
        public void c(int i2, String str, String str2) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            CommentSelfListActivityv2 commentSelfListActivityv2 = CommentSelfListActivityv2.this;
            intentUtil.goCommentDetailActivity(commentSelfListActivityv2, i2 + "", str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            XListView2 xListView2 = CommentSelfListActivityv2.this.f29379e;
            if (xListView2 == null) {
                return;
            }
            xListView2.u();
            CommentSelfListActivityv2.this.f29379e.t();
            CommentSelfListActivityv2 commentSelfListActivityv2 = CommentSelfListActivityv2.this;
            if (commentSelfListActivityv2.f29385k == -1) {
                commentSelfListActivityv2.f29379e.setNoMore();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends ForumLoadingView.e {
        e(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            super.a(view);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            CommentSelfListActivityv2.this.F0(1);
            CommentSelfListActivityv2.this.L0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends ForumLoadingView.e {
        f(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            super.a(view);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            CommentSelfListActivityv2.this.F0(1);
            CommentSelfListActivityv2.this.L0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends ForumLoadingView.e {
        g(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends ForumLoadingView.e {
        h(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            CommentSelfListActivityv2.this.F0(1);
            CommentSelfListActivityv2.this.L0();
        }
    }

    private void H0() {
        com.join.mgps.customview.t tVar = this.f29390p;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.f29390p.dismiss();
    }

    private void J0() {
        this.f29377c.setVisibility(0);
        this.f29377c.setText("我的点评");
        this.f29381g.j(true);
        XListView2 xListView2 = this.f29379e;
        if (xListView2 == null) {
            return;
        }
        xListView2.setPreLoadCount(com.join.mgps.Util.i0.f27593e);
        this.f29379e.setPullLoadEnable(new a());
        b bVar = new b();
        this.f29386l = bVar;
        this.f29379e.setPullRefreshEnable(bVar);
        CommentSelfListAdapter commentSelfListAdapter = new CommentSelfListAdapter(this);
        this.f29387m = commentSelfListAdapter;
        commentSelfListAdapter.o(new c());
        this.f29379e.setOnScrollListener(this);
        this.f29379e.setAdapter((ListAdapter) this.f29387m);
        F0(1);
    }

    private void Q0(CommentSelfListBean commentSelfListBean, boolean z3) {
        if (commentSelfListBean == null || commentSelfListBean.getGame_info() == null || commentSelfListBean.getSelf_comment() == null) {
            return;
        }
        int id = commentSelfListBean.getSelf_comment().getId();
        String game_id = commentSelfListBean.getGame_info().getGame_id();
        this.f29387m.c(new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.COMMENT_LIST_ITEM_HEADER, new CommentSelfListAdapter.k.c(z3, id, game_id, commentSelfListBean.getGame_info().getGame_ico(), commentSelfListBean.getGame_info().getGame_name(), commentSelfListBean.getGame_info().getComment_score_switch(), commentSelfListBean.getSelf_comment().getAdd_times(), commentSelfListBean.getSelf_comment().getStars_score(), commentSelfListBean.getSelf_comment().getIs_old())));
        this.f29387m.c(new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.COMMENT_LIST_ITEM_CONTENT, new CommentSelfListAdapter.k.a(id, game_id, commentSelfListBean.getSelf_comment().getContent(), commentSelfListBean.getSelf_comment().getIs_old(), commentSelfListBean.getGame_info().getComment_score_switch())));
        this.f29387m.c(new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.COMMENT_LIST_ITEM_FOOTER, new CommentSelfListAdapter.k.b(id, game_id, commentSelfListBean.getSelf_comment().getPraise_count(), commentSelfListBean.getSelf_comment().getDespise_count(), commentSelfListBean.getSelf_comment().getReply_count(), commentSelfListBean.getSelf_comment().getIs_praise(), commentSelfListBean.getSelf_comment().getIs_despise(), commentSelfListBean.getSelf_comment().getIs_old(), commentSelfListBean.getGame_info().getComment_score_switch())));
    }

    private void R0() {
        int i2 = 0;
        while (i2 < this.f29388n.size()) {
            Q0(this.f29388n.get(i2), i2 == 0);
            i2++;
        }
    }

    private AccountBean accountBean(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLogined(Context context) {
        AccountBean accountBean = accountBean(context);
        return accountBean != null && com.join.mgps.Util.d2.i(accountBean.getToken());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void D0(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F0(int i2) {
        if (i2 == 1) {
            this.f29380f.m();
            this.f29380f.j(1);
        } else if (i2 == 2) {
            this.f29380f.m();
            this.f29380f.j(2);
        } else if (i2 == 4) {
            this.f29380f.j(4);
            ForumLoadingView forumLoadingView = this.f29380f;
            forumLoadingView.setListener(new e(forumLoadingView));
        } else if (i2 == 16) {
            this.f29380f.setFailedMsg("加载失败~");
            ForumLoadingView forumLoadingView2 = this.f29380f;
            forumLoadingView2.setListener(new h(forumLoadingView2));
            this.f29380f.j(16);
        } else if (i2 == 9) {
            this.f29380f.j(9);
            ForumLoadingView forumLoadingView3 = this.f29380f;
            forumLoadingView3.setListener(new f(forumLoadingView3));
            this.f29380f.j(9);
        } else if (i2 != 10) {
        } else {
            this.f29380f.setFailedMsg("没有更多点评哦~");
            ForumLoadingView forumLoadingView4 = this.f29380f;
            forumLoadingView4.setListener(new g(forumLoadingView4));
            this.f29380f.setReloadingVisibility(0);
            this.f29380f.j(10);
            this.f29380f.setFailedImgVisibility(8);
            this.f29380f.setReloadingVisibility(0);
            this.f29380f.setFailedReloadingRes(R.drawable.papa_loading_null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void G0(int i2, String str, int i4) {
        try {
            if (!com.join.mgps.Util.i0.Y0(this)) {
                com.join.mgps.Util.i0.L0(this);
                com.join.mgps.Util.i2.a(this).b("尚未登录，请先登录！");
                return;
            }
            CommentResponse<CommentPraiseBean> f4 = this.f29382h.f(RequestBeanUtil.getInstance(this).getCommentPraiseRequestBean(AccountUtil_.getInstance_(this).getUid(), this.f29383i.commentToken().d(), AccountUtil_.getInstance_(this).getToken(), i2, str, i4));
            if (f4 == null) {
                return;
            }
            int code = f4.getCode();
            if (code != 0) {
                if (TextUtils.isEmpty(f4.getMsg())) {
                    D0(i4 == 1 ? "点踩失败" : "取消点踩失败");
                } else {
                    D0(f4.getMsg());
                }
                O0(i2, str, i4);
            } else if (TextUtils.isEmpty(f4.getMsg())) {
                D0(i4 == 1 ? "点踩成功" : "取消点踩成功");
            } else {
                D0(f4.getMsg());
            }
            if (code == 706) {
                S0();
            }
        } catch (Exception e4) {
            D0(i4 != 1 ? "取消点踩失败" : "点踩失败");
            O0(i2, str, i4);
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0094, code lost:
        if (r10.f29385k != (-1)) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00e6, code lost:
        if (r10.f29385k == (-1)) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00e8, code lost:
        r10.f29385k = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00ea, code lost:
        U0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:?, code lost:
        return;
     */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void I0(int r11) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.CommentSelfListActivityv2.I0(int):void");
    }

    boolean K0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            return true;
        }
        D0(getString(R.string.net_connect_failed));
        F0(9);
        U0();
        return false;
    }

    void L0() {
        I0(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M0() {
        CommentSelfListAdapter commentSelfListAdapter = this.f29387m;
        if (commentSelfListAdapter != null && commentSelfListAdapter.k() != null) {
            this.f29387m.k().clear();
        }
        R0();
        this.f29387m.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void N0(int i2, String str, int i4) {
        try {
            if (!com.join.mgps.Util.i0.Y0(this)) {
                com.join.mgps.Util.i0.L0(this);
                com.join.mgps.Util.i2.a(this).b("尚未登录，请先登录！");
                return;
            }
            CommentResponse<CommentPraiseBean> i5 = this.f29382h.i(RequestBeanUtil.getInstance(this).getCommentPraiseRequestBean(AccountUtil_.getInstance_(this).getUid(), this.f29383i.commentToken().d(), AccountUtil_.getInstance_(this).getToken(), i2, str, i4));
            if (i5 == null) {
                return;
            }
            int code = i5.getCode();
            if (code != 0) {
                if (TextUtils.isEmpty(i5.getMsg())) {
                    D0(i4 == 1 ? "点赞失败" : "取消点赞失败");
                } else {
                    D0(i5.getMsg());
                }
                P0(i2, str, i4);
            } else if (TextUtils.isEmpty(i5.getMsg())) {
                D0(i4 == 1 ? "点赞成功" : "取消点赞成功");
            } else {
                D0(i5.getMsg());
            }
            if (code == 706) {
                S0();
            }
        } catch (Exception e4) {
            D0(i4 != 1 ? "取消点赞失败" : "点赞失败");
            P0(i2, str, i4);
            e4.printStackTrace();
        }
    }

    void O0(int i2, String str, int i4) {
        CommentSelfListBean next;
        List<CommentSelfListBean> list = this.f29388n;
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<CommentSelfListBean> it2 = this.f29388n.iterator();
        while (it2.hasNext() && (next = it2.next()) != null) {
            if (next.getSelf_comment().getId() == i2 && next.getSelf_comment() != null && !TextUtils.isEmpty(next.getSelf_comment().getGame_id()) && next.getSelf_comment().getGame_id().equals(str)) {
                int is_despise = next.getSelf_comment().getIs_despise();
                int despise_count = next.getSelf_comment().getDespise_count();
                int i5 = is_despise == 1 ? despise_count - 1 : despise_count + 1;
                if (i5 < 0) {
                    i5 = 0;
                }
                next.getSelf_comment().setIs_despise(is_despise == 1 ? 0 : 1);
                next.getSelf_comment().setDespise_count(i5);
                int is_praise = next.getSelf_comment().getIs_praise();
                if (is_despise != 1 && is_praise == 1) {
                    int praise_count = next.getSelf_comment().getPraise_count();
                    int i6 = is_praise == 1 ? praise_count - 1 : praise_count + 1;
                    if (i6 < 0) {
                        i6 = 0;
                    }
                    next.getSelf_comment().setIs_praise(is_praise == 1 ? 0 : 1);
                    next.getSelf_comment().setPraise_count(i6);
                }
                M0();
                return;
            }
        }
    }

    void P0(int i2, String str, int i4) {
        CommentSelfListBean next;
        List<CommentSelfListBean> list = this.f29388n;
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<CommentSelfListBean> it2 = this.f29388n.iterator();
        while (it2.hasNext() && (next = it2.next()) != null) {
            if (next.getSelf_comment().getId() == i2 && next.getSelf_comment() != null && !TextUtils.isEmpty(next.getSelf_comment().getGame_id()) && next.getSelf_comment().getGame_id().equals(str)) {
                int is_praise = next.getSelf_comment().getIs_praise();
                int praise_count = next.getSelf_comment().getPraise_count();
                int i5 = is_praise == 1 ? praise_count - 1 : praise_count + 1;
                if (i5 < 0) {
                    i5 = 0;
                }
                next.getSelf_comment().setIs_praise(is_praise == 1 ? 0 : 1);
                next.getSelf_comment().setPraise_count(i5);
                int is_despise = next.getSelf_comment().getIs_despise();
                if (is_praise != 1 && is_despise == 1) {
                    int despise_count = next.getSelf_comment().getDespise_count();
                    int i6 = is_despise == 1 ? despise_count - 1 : despise_count + 1;
                    if (i6 < 0) {
                        i6 = 0;
                    }
                    next.getSelf_comment().setIs_despise(is_despise == 1 ? 0 : 1);
                    next.getSelf_comment().setDespise_count(i6);
                }
                M0();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S0() {
        com.join.mgps.Util.a0.c0(this).m(this);
    }

    void T0(int i2, List<CommentSelfListBean> list) {
        if (i2 == 1) {
            this.f29388n.clear();
        }
        if (list != null) {
            this.f29388n.addAll(list);
        }
        M0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U0() {
        this.f29389o.postDelayed(new d(), 100L);
    }

    boolean V0() {
        if (accountBean(this) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this).isTourist();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f29382h = com.join.mgps.rpc.impl.d.m();
        try {
            J0();
            L0();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        F0(this.f29380f.getLoadingState());
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }
}
