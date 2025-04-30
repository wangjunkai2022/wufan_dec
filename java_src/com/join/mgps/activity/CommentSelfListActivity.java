package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import com.BaseAppCompatActivity;
import com.MApplication;
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
import com.join.mgps.dto.FavoritesCenterData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.pref.PrefDef_;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
@EActivity(R.layout.activity_comment_self_list)
/* loaded from: classes3.dex */
public class CommentSelfListActivity extends BaseAppCompatActivity implements AbsListView.OnScrollListener {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    RelativeLayout f29312a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    RelativeLayout f29313b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ImageView f29314c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    ImageView f29315d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    View f29316e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    View f29317f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    XListView2 f29318g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    View f29319h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    ForumLoadingView f29320i;

    /* renamed from: j  reason: collision with root package name */
    com.join.mgps.rpc.b f29321j;

    /* renamed from: k  reason: collision with root package name */
    com.join.mgps.rpc.e f29322k;
    @Pref

    /* renamed from: l  reason: collision with root package name */
    PrefDef_ f29323l;
    @Extra

    /* renamed from: m  reason: collision with root package name */
    int f29324m;

    /* renamed from: n  reason: collision with root package name */
    public int f29325n;

    /* renamed from: o  reason: collision with root package name */
    public int f29326o;

    /* renamed from: p  reason: collision with root package name */
    private com.join.mgps.customview.j f29327p;

    /* renamed from: q  reason: collision with root package name */
    private CommentSelfListAdapter f29328q;

    /* renamed from: s  reason: collision with root package name */
    Context f29330s;

    /* renamed from: t  reason: collision with root package name */
    FavoritesCenterData f29331t;

    /* renamed from: r  reason: collision with root package name */
    private List<CommentSelfListBean> f29329r = new ArrayList();

    /* renamed from: u  reason: collision with root package name */
    Handler f29332u = new Handler();

    /* renamed from: v  reason: collision with root package name */
    com.join.mgps.customview.t f29333v = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (CommentSelfListActivity.this.L0()) {
                CommentSelfListActivity commentSelfListActivity = CommentSelfListActivity.this;
                commentSelfListActivity.J0(commentSelfListActivity.f29325n + 1);
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
            if (CommentSelfListActivity.this.L0()) {
                CommentSelfListActivity.this.Y0();
                CommentSelfListActivity commentSelfListActivity = CommentSelfListActivity.this;
                commentSelfListActivity.f29326o = 0;
                commentSelfListActivity.f29325n = 0;
                commentSelfListActivity.J0(1);
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
            CommentSelfListActivity commentSelfListActivity = CommentSelfListActivity.this;
            if (!commentSelfListActivity.isLogined(commentSelfListActivity)) {
                CommentSelfListActivity.this.showMessage(commentSelfListActivity.getString(R.string.forum_user_not_login));
            } else if (!CommentSelfListActivity.this.b1()) {
                CommentSelfListActivity.this.W0();
            } else {
                CommentSelfListActivity.this.Q0(i2, str, i4);
                CommentSelfListActivity.this.H0(i2, str, i4);
            }
        }

        @Override // com.join.mgps.adapter.CommentSelfListAdapter.j
        public void b(int i2, String str, int i4) {
            CommentSelfListActivity commentSelfListActivity = CommentSelfListActivity.this;
            if (!commentSelfListActivity.isLogined(commentSelfListActivity)) {
                CommentSelfListActivity.this.showMessage(commentSelfListActivity.getString(R.string.forum_user_not_login));
            } else if (!CommentSelfListActivity.this.b1()) {
                CommentSelfListActivity.this.W0();
            } else {
                CommentSelfListActivity.this.R0(i2, str, i4);
                CommentSelfListActivity.this.P0(i2, str, i4);
            }
        }

        @Override // com.join.mgps.adapter.CommentSelfListAdapter.j
        public void c(int i2, String str, String str2) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            CommentSelfListActivity commentSelfListActivity = CommentSelfListActivity.this;
            intentUtil.goCommentDetailActivity(commentSelfListActivity, i2 + "", str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            XListView2 xListView2 = CommentSelfListActivity.this.f29318g;
            if (xListView2 == null) {
                return;
            }
            xListView2.u();
            CommentSelfListActivity.this.f29318g.t();
            CommentSelfListActivity commentSelfListActivity = CommentSelfListActivity.this;
            if (commentSelfListActivity.f29326o == -1) {
                commentSelfListActivity.f29318g.setNoMore();
            }
            if (CommentSelfListActivity.this.f29329r.size() != 0) {
                if (CommentSelfListActivity.this.f29329r.size() < 10) {
                    CommentSelfListActivity.this.f29318g.setNoMore();
                    return;
                }
                return;
            }
            CommentSelfListActivity.this.f29318g.f();
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
            CommentSelfListActivity.this.G0(1);
            CommentSelfListActivity.this.getData();
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
            CommentSelfListActivity.this.G0(1);
            CommentSelfListActivity.this.getData();
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
            CommentSelfListActivity.this.G0(1);
            CommentSelfListActivity.this.getData();
        }
    }

    private void I0() {
        com.join.mgps.customview.t tVar = this.f29333v;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.f29333v.dismiss();
    }

    private void K0() {
        XListView2 xListView2 = this.f29318g;
        if (xListView2 == null) {
            return;
        }
        xListView2.setPreLoadCount(com.join.mgps.Util.i0.f27593e);
        this.f29318g.setPullLoadEnable(new a());
        b bVar = new b();
        this.f29327p = bVar;
        this.f29318g.setPullRefreshEnable(bVar);
        CommentSelfListAdapter commentSelfListAdapter = new CommentSelfListAdapter(this, this.f29324m);
        this.f29328q = commentSelfListAdapter;
        commentSelfListAdapter.o(new c());
        this.f29318g.setOnScrollListener(this);
        this.f29318g.setAdapter((ListAdapter) this.f29328q);
        G0(1);
    }

    private void S0(CommentSelfListBean commentSelfListBean, boolean z3) {
        if (commentSelfListBean == null || commentSelfListBean.getGame_info() == null || commentSelfListBean.getSelf_comment() == null) {
            return;
        }
        int id = commentSelfListBean.getSelf_comment().getId();
        String game_id = commentSelfListBean.getGame_info().getGame_id();
        this.f29328q.c(new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.COMMENT_LIST_ITEM_HEADER, new CommentSelfListAdapter.k.c(z3, id, game_id, commentSelfListBean.getGame_info().getGame_ico(), commentSelfListBean.getGame_info().getGame_name(), commentSelfListBean.getGame_info().getComment_score_switch(), commentSelfListBean.getSelf_comment().getAdd_times(), commentSelfListBean.getSelf_comment().getStars_score(), commentSelfListBean.getSelf_comment().getIs_old())));
        this.f29328q.c(new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.COMMENT_LIST_ITEM_CONTENT, new CommentSelfListAdapter.k.a(id, game_id, commentSelfListBean.getSelf_comment().getContent(), commentSelfListBean.getSelf_comment().getIs_old(), commentSelfListBean.getGame_info().getComment_score_switch())));
        this.f29328q.c(new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.COMMENT_LIST_ITEM_FOOTER, new CommentSelfListAdapter.k.b(id, game_id, commentSelfListBean.getSelf_comment().getPraise_count(), commentSelfListBean.getSelf_comment().getDespise_count(), commentSelfListBean.getSelf_comment().getReply_count(), commentSelfListBean.getSelf_comment().getIs_praise(), commentSelfListBean.getSelf_comment().getIs_despise(), commentSelfListBean.getSelf_comment().getIs_old(), commentSelfListBean.getGame_info().getComment_score_switch())));
    }

    private void T0() {
        int i2 = 0;
        while (i2 < this.f29329r.size()) {
            S0(this.f29329r.get(i2), i2 == 0);
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
    public void G0(int i2) {
        if (i2 == 1) {
            this.f29320i.m();
            this.f29320i.j(1);
        } else if (i2 == 2) {
            this.f29320i.m();
            this.f29320i.j(2);
        } else if (i2 == 4) {
            this.f29320i.j(4);
            ForumLoadingView forumLoadingView = this.f29320i;
            forumLoadingView.setListener(new e(forumLoadingView));
        } else if (i2 == 16) {
            this.f29320i.setFailedMsg("加载失败~");
            ForumLoadingView forumLoadingView2 = this.f29320i;
            forumLoadingView2.setListener(new h(forumLoadingView2));
            this.f29320i.j(16);
        } else if (i2 == 9) {
            this.f29320i.j(9);
            ForumLoadingView forumLoadingView3 = this.f29320i;
            forumLoadingView3.setListener(new f(forumLoadingView3));
            this.f29320i.j(9);
        } else if (i2 != 10) {
        } else {
            this.f29320i.setFailedMsg("没有更多点评哦~");
            ForumLoadingView forumLoadingView4 = this.f29320i;
            forumLoadingView4.setListener(new g(forumLoadingView4));
            this.f29320i.setReloadingVisibility(0);
            this.f29320i.j(10);
            this.f29320i.setFailedImgVisibility(8);
            this.f29320i.setReloadingVisibility(0);
            this.f29320i.setFailedReloadingRes(R.drawable.papa_loading_null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void H0(int i2, String str, int i4) {
        try {
            if (!com.join.mgps.Util.i0.Y0(this)) {
                com.join.mgps.Util.i0.L0(this);
                com.join.mgps.Util.i2.a(this).b("尚未登录，请先登录！");
                return;
            }
            CommentResponse<CommentPraiseBean> f4 = this.f29322k.f(RequestBeanUtil.getInstance(this).getCommentPraiseRequestBean(AccountUtil_.getInstance_(this).getUid(), this.f29323l.commentToken().d(), AccountUtil_.getInstance_(this).getToken(), i2, str, i4));
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
                Q0(i2, str, i4);
            } else if (TextUtils.isEmpty(f4.getMsg())) {
                D0(i4 == 1 ? "点踩成功" : "取消点踩成功");
            } else {
                D0(f4.getMsg());
            }
            if (code == 706) {
                W0();
            }
        } catch (Exception e4) {
            D0(i4 != 1 ? "取消点踩失败" : "点踩失败");
            Q0(i2, str, i4);
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00aa, code lost:
        if (r11.f29326o != (-1)) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00ea, code lost:
        if (r11.f29326o == (-1)) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00ec, code lost:
        r11.f29326o = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00ee, code lost:
        Y0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:?, code lost:
        return;
     */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void J0(int r12) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.CommentSelfListActivity.J0(int):void");
    }

    boolean L0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            return true;
        }
        D0(getString(R.string.net_connect_failed));
        G0(9);
        Y0();
        return false;
    }

    void M0() {
        J0(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65498r})
    public void N0(Intent intent) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O0() {
        CommentSelfListAdapter.k kVar;
        CommentSelfListAdapter.k kVar2;
        CommentSelfListAdapter commentSelfListAdapter = this.f29328q;
        if (commentSelfListAdapter != null && commentSelfListAdapter.k() != null) {
            this.f29328q.k().clear();
        }
        this.f29328q.c(new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.FAVORITES_TITLE, this.f29331t.getMember_info()));
        FavoritesCenterData favoritesCenterData = this.f29331t;
        if (favoritesCenterData != null && favoritesCenterData.getCreate_group_list() != null && this.f29331t.getCreate_group_list().size() > 0) {
            if (this.f29331t.getCreate_group_list().size() < 10) {
                kVar2 = new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.FAVORITES_ITEM_TITLE, 1);
            } else {
                kVar2 = new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.FAVORITES_ITEM_TITLE, 2);
            }
            this.f29328q.c(kVar2);
            this.f29328q.c(new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.FAVORITES_F, this.f29331t.getCreate_group_list()));
        }
        FavoritesCenterData favoritesCenterData2 = this.f29331t;
        if (favoritesCenterData2 != null && favoritesCenterData2.getBook_group_list() != null && this.f29331t.getBook_group_list().size() > 0) {
            if (this.f29331t.getBook_group_list().size() < 10) {
                kVar = new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.FAVORITES_ITEM_TITLE, 3);
            } else {
                kVar = new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.FAVORITES_ITEM_TITLE, 4);
            }
            this.f29328q.c(kVar);
            this.f29328q.c(new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.FAVORITES_F, this.f29331t.getBook_group_list()));
        }
        if (this.f29329r.size() > 0) {
            this.f29328q.c(new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.FAVORITES_ITEM_TITLE, 5));
        } else {
            this.f29318g.f();
        }
        T0();
        this.f29328q.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void P0(int i2, String str, int i4) {
        try {
            if (!com.join.mgps.Util.i0.Y0(this)) {
                com.join.mgps.Util.i0.L0(this);
                com.join.mgps.Util.i2.a(this).b("尚未登录，请先登录！");
                return;
            }
            CommentResponse<CommentPraiseBean> i5 = this.f29322k.i(RequestBeanUtil.getInstance(this).getCommentPraiseRequestBean(AccountUtil_.getInstance_(this).getUid(), this.f29323l.commentToken().d(), AccountUtil_.getInstance_(this).getToken(), i2, str, i4));
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
                R0(i2, str, i4);
            } else if (TextUtils.isEmpty(i5.getMsg())) {
                D0(i4 == 1 ? "点赞成功" : "取消点赞成功");
            } else {
                D0(i5.getMsg());
            }
            if (code == 706) {
                W0();
            }
        } catch (Exception e4) {
            D0(i4 != 1 ? "取消点赞失败" : "点赞失败");
            R0(i2, str, i4);
            e4.printStackTrace();
        }
    }

    void Q0(int i2, String str, int i4) {
        CommentSelfListBean next;
        List<CommentSelfListBean> list = this.f29329r;
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<CommentSelfListBean> it2 = this.f29329r.iterator();
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
                O0();
                return;
            }
        }
    }

    void R0(int i2, String str, int i4) {
        CommentSelfListBean next;
        List<CommentSelfListBean> list = this.f29329r;
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<CommentSelfListBean> it2 = this.f29329r.iterator();
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
                O0();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void U0() {
        IntentUtil.getInstance().goMYAccountDetialActivity(this, AccountUtil_.getInstance_(this).getAccountData());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void V0() {
        IntentUtil.getInstance().goMYAccountDetialActivity(this, AccountUtil_.getInstance_(this).getAccountData());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W0() {
        com.join.mgps.Util.a0.c0(this).m(this);
    }

    void X0(int i2, List<CommentSelfListBean> list) {
        if (i2 == 1) {
            this.f29329r.clear();
        }
        if (this.f29331t != null) {
            this.f29329r.addAll(list);
        }
        O0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Y0() {
        this.f29332u.postDelayed(new d(), 100L);
    }

    @Receiver(actions = {f1.a.f65498r})
    public void Z0(Context context) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a1(FavoritesCenterData favoritesCenterData) {
        this.f29331t = favoritesCenterData;
        M0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        if (Build.VERSION.SDK_INT >= 21) {
            getWindow().setFlags(67108864, 67108864);
            new com.join.android.app.common.manager.b(this).n(R.color.black_30_alpha);
        }
        this.f29330s = this;
        this.f29322k = com.join.mgps.rpc.impl.d.m();
        if (this.f29324m != AccountUtil_.getInstance_(this).getAccountData().getUid() && this.f29324m != 0) {
            this.f29316e.setVisibility(8);
            this.f29317f.setVisibility(8);
        } else {
            this.f29316e.setVisibility(0);
            this.f29317f.setVisibility(0);
        }
        try {
            this.f29321j = com.join.mgps.rpc.impl.a.b0();
            K0();
            getData();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    boolean b1() {
        if (accountBean(this) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this).isTourist();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 100)
    public void getData() {
        if (com.join.android.app.common.utils.f.j(this.f29330s)) {
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("uid", "" + this.f29324m);
                hashMap.put("device_id", "");
                StringBuilder sb = new StringBuilder();
                sb.append("");
                RequestBeanUtil.getInstance(this);
                sb.append(RequestBeanUtil.getVersionAndVersionName());
                hashMap.put("version ", sb.toString());
                hashMap.put("page", "1");
                hashMap.put("type", "");
                ForumResponse<FavoritesCenterData> X = this.f29321j.X(hashMap);
                if (X == null || X.getError() != 0) {
                    return;
                }
                a1(X.getData());
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        G0(9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        MApplication.f9223q.l();
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        G0(this.f29320i.getLoadingState());
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        if (i2 == 0) {
            View childAt = this.f29318g.getChildAt(0);
            if (childAt != null && childAt.getTop() == 0) {
                this.f29313b.setVisibility(0);
                this.f29312a.setVisibility(8);
                this.f29319h.setVisibility(8);
            } else if (this.f29312a.getVisibility() == 8) {
                this.f29313b.setVisibility(8);
                this.f29312a.setVisibility(0);
                this.f29319h.setVisibility(0);
            }
        } else if (this.f29312a.getVisibility() == 8) {
            this.f29313b.setVisibility(8);
            this.f29312a.setVisibility(0);
            this.f29319h.setVisibility(0);
        }
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
