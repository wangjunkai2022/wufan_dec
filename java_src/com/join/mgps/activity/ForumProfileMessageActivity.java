package com.join.mgps.activity;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.adapter.ForumProfileMessageAdapter;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ForumBean;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
@EActivity(R.layout.mg_forum_profile_message_activity)
/* loaded from: classes3.dex */
public class ForumProfileMessageActivity extends BaseActivity implements AbsListView.OnScrollListener {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    ImageView f30524a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f30525b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ForumLoadingView f30526c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    XListView2 f30527d;

    /* renamed from: e  reason: collision with root package name */
    List<ForumBean.ForumProfileMessageBean> f30528e;

    /* renamed from: f  reason: collision with root package name */
    ForumProfileMessageAdapter f30529f;

    /* renamed from: g  reason: collision with root package name */
    List<ForumProfileMessageAdapter.j> f30530g;
    @StringRes(resName = "net_excption")

    /* renamed from: h  reason: collision with root package name */
    String f30531h;
    @StringRes(resName = "connect_server_excption")

    /* renamed from: i  reason: collision with root package name */
    String f30532i;

    /* renamed from: j  reason: collision with root package name */
    com.join.mgps.rpc.h f30533j;

    /* renamed from: k  reason: collision with root package name */
    private int f30534k = 0;

    /* renamed from: l  reason: collision with root package name */
    private int f30535l = 0;

    /* renamed from: m  reason: collision with root package name */
    private final int f30536m = 0;

    /* renamed from: n  reason: collision with root package name */
    private final int f30537n = 16;

    /* renamed from: o  reason: collision with root package name */
    private final int f30538o = 32;

    /* renamed from: p  reason: collision with root package name */
    private final int f30539p = 17;

    /* renamed from: q  reason: collision with root package name */
    private final int f30540q = 18;

    /* renamed from: r  reason: collision with root package name */
    private final int f30541r = 20;

    /* renamed from: s  reason: collision with root package name */
    private final int f30542s = 24;

    /* renamed from: t  reason: collision with root package name */
    private int f30543t = 0;

    /* renamed from: u  reason: collision with root package name */
    ForumProfileMessageAdapter.d f30544u = new a();

    /* renamed from: v  reason: collision with root package name */
    Handler f30545v = new b();

    /* loaded from: classes3.dex */
    class a implements ForumProfileMessageAdapter.d {
        a() {
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageAdapter.d
        public void a(int i2, int i4, int i5, String str) {
            ForumBean.ForumCommentReplyBean forumCommentReplyBean;
            ForumBean.ForumCommentBean forumCommentBean = new ForumBean.ForumCommentBean();
            forumCommentBean.setPid(i4);
            forumCommentBean.setNickname(str);
            if (i5 != 0) {
                forumCommentReplyBean = new ForumBean.ForumCommentReplyBean();
                forumCommentReplyBean.setRid(i5);
                forumCommentReplyBean.setNickname(str);
            } else {
                forumCommentReplyBean = null;
            }
            ForumProfileMessageActivity forumProfileMessageActivity = ForumProfileMessageActivity.this;
            com.join.mgps.Util.i0.A0(forumProfileMessageActivity, forumProfileMessageActivity.K0(i2), forumCommentBean, forumCommentReplyBean);
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageAdapter.d
        public void d(int i2) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(i2);
            com.join.mgps.Util.i0.v0(ForumProfileMessageActivity.this, forumPostsBean);
        }
    }

    /* loaded from: classes3.dex */
    class b extends Handler {
        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            ForumProfileMessageActivity.this.f30527d.u();
            ForumProfileMessageActivity.this.f30527d.t();
            if (ForumProfileMessageActivity.this.f30535l == -1) {
                ForumProfileMessageActivity.this.f30527d.setNoMore();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements com.join.mgps.customview.i {
        c() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (!com.join.android.app.common.utils.f.j(ForumProfileMessageActivity.this)) {
                ForumProfileMessageActivity forumProfileMessageActivity = ForumProfileMessageActivity.this;
                forumProfileMessageActivity.showToast(forumProfileMessageActivity.getString(R.string.net_connect_failed));
                ForumProfileMessageActivity.this.U0();
                return;
            }
            ForumProfileMessageActivity forumProfileMessageActivity2 = ForumProfileMessageActivity.this;
            forumProfileMessageActivity2.L0(forumProfileMessageActivity2.f30534k + 1);
            if (ForumProfileMessageActivity.this.f30535l == -1) {
                ForumProfileMessageActivity.this.U0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements com.join.mgps.customview.j {
        d() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (com.join.android.app.common.utils.f.j(ForumProfileMessageActivity.this)) {
                ForumProfileMessageActivity.this.f30535l = 0;
                ForumProfileMessageActivity.this.L0(1);
                return;
            }
            ForumProfileMessageActivity.this.U0();
            ForumProfileMessageActivity forumProfileMessageActivity = ForumProfileMessageActivity.this;
            forumProfileMessageActivity.showToast(forumProfileMessageActivity.getString(R.string.net_connect_failed));
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
            Context applicationContext = ForumProfileMessageActivity.this.getApplicationContext();
            if (com.join.mgps.Util.i0.Y0(applicationContext)) {
                ForumProfileMessageActivity.this.P0();
                return;
            }
            ForumProfileMessageActivity.this.showToast("用户未登录，请登录！");
            com.join.mgps.Util.i0.L0(applicationContext);
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
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends ForumLoadingView.e {
        g(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            Context applicationContext = ForumProfileMessageActivity.this.getApplicationContext();
            if (com.join.mgps.Util.i0.Y0(applicationContext)) {
                ForumProfileMessageActivity.this.P0();
                return;
            }
            ForumProfileMessageActivity.this.showToast("用户未登录，请登录！");
            com.join.mgps.Util.i0.L0(applicationContext);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends ForumLoadingView.e {
        h(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            super.a(view);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            Context applicationContext = ForumProfileMessageActivity.this.getApplicationContext();
            if (com.join.mgps.Util.i0.Y0(applicationContext)) {
                ForumProfileMessageActivity.this.P0();
                return;
            }
            ForumProfileMessageActivity.this.showToast("用户未登录，请登录！");
            com.join.mgps.Util.i0.L0(applicationContext);
        }
    }

    private void M0() {
        this.f30525b.setText("我的消息");
        this.f30528e = new ArrayList();
        this.f30527d.setPreLoadCount(com.join.mgps.Util.i0.f27593e);
        this.f30527d.setPullLoadEnable(new c());
        this.f30527d.setPullRefreshEnable(new d());
        this.f30529f = new ForumProfileMessageAdapter(this);
        this.f30530g = new ArrayList();
        this.f30529f.j(this.f30544u);
        this.f30527d.setAdapter((ListAdapter) this.f30529f);
        this.f30527d.setOnScrollListener(this);
    }

    private void N0() {
        I0(18);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P0() {
        I0(0);
        N0();
        if (com.join.android.app.common.utils.f.j(this)) {
            O0();
            return;
        }
        showToast(getString(R.string.net_connect_failed));
        I0(17);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0(int i2) {
        int i4 = this.f30543t;
        if (i4 == 32) {
            return;
        }
        if (i2 == 32) {
            this.f30543t = 32;
            this.f30526c.j(2);
        } else if (i2 == 0) {
            this.f30543t = 0;
            this.f30526c.m();
            this.f30526c.j(1);
        } else {
            this.f30543t = i2 | i4;
            if (J0(-11)) {
                this.f30543t = 16;
                ForumLoadingView forumLoadingView = this.f30526c;
                forumLoadingView.setListener(new e(forumLoadingView));
                this.f30526c.j(9);
            } else if (J0(22)) {
                this.f30543t = 16;
                this.f30526c.setFailedMsg("还没有收到消息哦~");
                ForumLoadingView forumLoadingView2 = this.f30526c;
                forumLoadingView2.setListener(new f(forumLoadingView2));
                this.f30526c.j(10);
            } else if (!J0(31) && !J0(26)) {
                if (J0(17)) {
                    this.f30543t = 16;
                    ForumLoadingView forumLoadingView3 = this.f30526c;
                    forumLoadingView3.setListener(new h(forumLoadingView3));
                    this.f30526c.j(9);
                }
            } else {
                this.f30543t = 16;
                this.f30526c.setFailedMsg("加载失败，再试试吧~");
                ForumLoadingView forumLoadingView4 = this.f30526c;
                forumLoadingView4.setListener(new g(forumLoadingView4));
                this.f30526c.j(16);
            }
        }
    }

    boolean J0(int i2) {
        return (this.f30543t & i2) == i2;
    }

    ForumBean.ForumPostsBean K0(int i2) {
        ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
        int i4 = 0;
        while (true) {
            List<ForumBean.ForumProfileMessageBean> list = this.f30528e;
            if (list == null || i4 >= list.size()) {
                return forumPostsBean;
            }
            ForumBean.ForumProfileMessageBean forumProfileMessageBean = this.f30528e.get(i4);
            if (forumProfileMessageBean.getPosts().getPid() == i2) {
                return forumProfileMessageBean.getPosts();
            }
            i4++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0068, code lost:
        if (r12.f30535l != (-1)) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0094, code lost:
        if (r12.f30535l == (-1)) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0096, code lost:
        r12.f30535l = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0098, code lost:
        U0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:?, code lost:
        return;
     */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void L0(int r13) {
        /*
            r12 = this;
            int r0 = r12.f30535l
            if (r13 != r0) goto L5
            return
        L5:
            r1 = -1
            if (r0 != r1) goto Lb
            r12.U0()
        Lb:
            r12.f30535l = r13
            boolean r0 = com.join.android.app.common.utils.f.j(r12)
            if (r0 == 0) goto La6
            r0 = 24
            r2 = 1
            r3 = 0
            if (r13 <= r2) goto L1c
            r12.T0()     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
        L1c:
            com.join.mgps.dto.AccountBean r4 = com.join.mgps.Util.i0.T(r12)     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            boolean r5 = com.join.mgps.Util.i0.Y0(r12)     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            if (r5 == 0) goto L7c
            com.join.mgps.rpc.h r6 = r12.f30533j     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            int r7 = r4.getUid()     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            java.lang.String r8 = r4.getToken()     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            int r10 = com.join.mgps.Util.i0.f27592d     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            java.lang.String r11 = ""
            r9 = r13
            com.join.mgps.dto.ForumResponse r4 = r6.t(r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            r5 = 0
            if (r4 == 0) goto L43
            java.lang.Object r4 = r4.getData()     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            com.join.mgps.dto.ForumData$ForumProfileMessageData r4 = (com.join.mgps.dto.ForumData.ForumProfileMessageData) r4     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            goto L46
        L43:
            r12.f30535l = r3     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            r4 = r5
        L46:
            r6 = 20
            if (r4 == 0) goto L4f
            java.util.List r5 = r4.getMessage_list()     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            goto L54
        L4f:
            if (r13 != r2) goto L54
            r12.I0(r6)     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
        L54:
            if (r5 == 0) goto L6b
            int r4 = r5.size()     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            if (r4 == 0) goto L6b
            r12.f30534k = r13     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            r12.V0(r5, r13)     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            r13 = 32
            r12.I0(r13)     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            int r13 = r12.f30535l
            if (r13 == r1) goto L98
            goto L96
        L6b:
            r12.f30535l = r1     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            if (r13 != r2) goto L72
            r12.I0(r6)     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
        L72:
            int r13 = r12.f30535l
            if (r13 == r1) goto L78
            r12.f30535l = r3
        L78:
            r12.U0()
            return
        L7c:
            r12.I0(r0)     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            int r13 = r12.f30535l
            if (r13 == r1) goto L85
            r12.f30535l = r3
        L85:
            r12.U0()
            return
        L89:
            r13 = move-exception
            goto L9c
        L8b:
            r13 = move-exception
            r12.I0(r0)     // Catch: java.lang.Throwable -> L89
            r13.printStackTrace()     // Catch: java.lang.Throwable -> L89
            int r13 = r12.f30535l
            if (r13 == r1) goto L98
        L96:
            r12.f30535l = r3
        L98:
            r12.U0()
            goto Lb5
        L9c:
            int r0 = r12.f30535l
            if (r0 == r1) goto La2
            r12.f30535l = r3
        La2:
            r12.U0()
            throw r13
        La6:
            r13 = 2131821062(0x7f110206, float:1.9274857E38)
            java.lang.String r13 = r12.getString(r13)
            r12.showToast(r13)
            r13 = 17
            r12.I0(r13)
        Lb5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.ForumProfileMessageActivity.L0(int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void O0() {
        L0(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q0() {
        this.f30529f.h(this.f30530g);
        this.f30529f.notifyDataSetChanged();
    }

    synchronized void R0() {
        if (this.f30528e == null) {
            return;
        }
        this.f30530g.clear();
        int i2 = 0;
        while (i2 < this.f30528e.size()) {
            S0(this.f30528e.get(i2), i2 == 0);
            i2++;
        }
        Q0();
    }

    void S0(ForumBean.ForumProfileMessageBean forumProfileMessageBean, boolean z3) {
        try {
            ForumBean.ForumPostsBean posts = forumProfileMessageBean.getPosts();
            AccountBean accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
            String str = "";
            this.f30530g.add(new ForumProfileMessageAdapter.j(ForumProfileMessageAdapter.ViewType.PROFILE_HEADER, new ForumProfileMessageAdapter.j.b(z3, forumProfileMessageBean.getFrom_avatar_src(), forumProfileMessageBean.getFrom_nickname(), forumProfileMessageBean.getAdd_time(), posts.getFirst() > 0, posts.getPid(), posts.getForum_auth() == 1, forumProfileMessageBean.isFrom_officialAccount(), forumProfileMessageBean.getComment_id(), forumProfileMessageBean.getFrom_type(), forumProfileMessageBean.getRid(), forumProfileMessageBean.getVip_level(), forumProfileMessageBean.getSvip_level(), posts.getCopper_title() != null ? posts.getCopper_title().getBattleTitle() : "", posts.getCopper_title() != null ? posts.getCopper_title().getBattleColor() : "", posts.getUid())));
            this.f30530g.add(new ForumProfileMessageAdapter.j(ForumProfileMessageAdapter.ViewType.PROFILE_MESSAGE_ITEM, new ForumProfileMessageAdapter.j.c(posts.getPid(), forumProfileMessageBean.getFrom_type(), accountData != null ? accountData.getNickname() : "我", forumProfileMessageBean.getMessage(), forumProfileMessageBean.getComment_id(), forumProfileMessageBean.getRid(), false)));
            ForumProfileMessageAdapter.ViewType viewType = ForumProfileMessageAdapter.ViewType.PROFILE_FOOTER;
            int pid = posts.getPid();
            if (posts.getRs_list() != null && posts.getRs_list().size() != 0) {
                str = posts.getRs_list().get(0).getThumb();
            }
            this.f30530g.add(new ForumProfileMessageAdapter.j(viewType, new ForumProfileMessageAdapter.j.a(pid, str, !com.join.mgps.Util.d2.h(posts.getSubject()) ? posts.getSubject() : posts.getMessage(), forumProfileMessageBean.getComment_id(), forumProfileMessageBean.getFrom_type(), forumProfileMessageBean.getFrom_nickname(), forumProfileMessageBean.getRid())));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U0() {
        if (this.f30527d.i()) {
            this.f30545v.sendEmptyMessageDelayed(0, 3000L);
        } else {
            this.f30545v.sendEmptyMessage(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void V0(List<ForumBean.ForumProfileMessageBean> list, int i2) {
        if (list != null && list.size() != 0) {
            if (i2 == 1) {
                this.f30528e.clear();
                this.f30534k = 1;
                U0();
            }
            this.f30528e.addAll(list);
        }
        U0();
        R0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f30533j = com.join.mgps.rpc.impl.f.A0();
        M0();
        P0();
        if (com.join.mgps.Util.i0.Y0(this)) {
            return;
        }
        showToast("用户未登录，请登录！");
        com.join.mgps.Util.i0.L0(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
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
        if (this.f30543t == 16) {
            P0();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        if ((i5 - (i2 + i4) < com.join.mgps.Util.i0.f27594f) && (this.f30535l != -1)) {
            L0(this.f30534k + 1);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }
}
