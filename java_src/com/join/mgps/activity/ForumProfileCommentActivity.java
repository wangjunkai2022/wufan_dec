package com.join.mgps.activity;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.adapter.ForumProfileCommentAdapter;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
@EActivity(R.layout.mg_forum_profile_comment_activity)
/* loaded from: classes3.dex */
public class ForumProfileCommentActivity extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    ImageView f30358a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f30359b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ForumLoadingView f30360c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    PtrClassicFrameLayout f30361d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    XListView2 f30362e;

    /* renamed from: f  reason: collision with root package name */
    List<ForumData.ForumProfileCommentData> f30363f;

    /* renamed from: g  reason: collision with root package name */
    ForumProfileCommentAdapter f30364g;

    /* renamed from: h  reason: collision with root package name */
    List<ForumProfileCommentAdapter.i> f30365h;
    @StringRes(resName = "net_excption")

    /* renamed from: i  reason: collision with root package name */
    String f30366i;
    @StringRes(resName = "connect_server_excption")

    /* renamed from: j  reason: collision with root package name */
    String f30367j;

    /* renamed from: k  reason: collision with root package name */
    com.join.mgps.rpc.h f30368k;

    /* renamed from: l  reason: collision with root package name */
    private int f30369l = 0;

    /* renamed from: m  reason: collision with root package name */
    private int f30370m = 0;

    /* renamed from: n  reason: collision with root package name */
    private final int f30371n = 0;

    /* renamed from: o  reason: collision with root package name */
    private final int f30372o = 16;

    /* renamed from: p  reason: collision with root package name */
    private final int f30373p = 32;

    /* renamed from: q  reason: collision with root package name */
    private final int f30374q = 17;

    /* renamed from: r  reason: collision with root package name */
    private final int f30375r = 18;

    /* renamed from: s  reason: collision with root package name */
    private final int f30376s = 20;

    /* renamed from: t  reason: collision with root package name */
    private final int f30377t = 24;

    /* renamed from: u  reason: collision with root package name */
    private int f30378u = 0;

    /* renamed from: v  reason: collision with root package name */
    ForumProfileCommentAdapter.c f30379v = new a();

    /* renamed from: w  reason: collision with root package name */
    Handler f30380w = new b();

    /* loaded from: classes3.dex */
    class a implements ForumProfileCommentAdapter.c {
        a() {
        }

        @Override // com.join.mgps.adapter.ForumProfileCommentAdapter.c
        public void d(int i2) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(i2);
            com.join.mgps.Util.i0.v0(ForumProfileCommentActivity.this, forumPostsBean);
        }
    }

    /* loaded from: classes3.dex */
    class b extends Handler {
        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            ForumProfileCommentActivity.this.f30362e.u();
            ForumProfileCommentActivity.this.f30362e.t();
            if (ForumProfileCommentActivity.this.f30370m == -1) {
                ForumProfileCommentActivity.this.f30362e.setNoMore();
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
            if (!com.join.android.app.common.utils.f.j(ForumProfileCommentActivity.this)) {
                ForumProfileCommentActivity forumProfileCommentActivity = ForumProfileCommentActivity.this;
                forumProfileCommentActivity.showToast(forumProfileCommentActivity.getString(R.string.net_connect_failed));
                ForumProfileCommentActivity.this.T0();
                return;
            }
            ForumProfileCommentActivity forumProfileCommentActivity2 = ForumProfileCommentActivity.this;
            forumProfileCommentActivity2.K0(forumProfileCommentActivity2.f30369l + 1);
            if (ForumProfileCommentActivity.this.f30370m == -1) {
                ForumProfileCommentActivity.this.T0();
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
            if (com.join.android.app.common.utils.f.j(ForumProfileCommentActivity.this)) {
                ForumProfileCommentActivity.this.f30370m = 0;
                ForumProfileCommentActivity.this.K0(1);
                return;
            }
            ForumProfileCommentActivity forumProfileCommentActivity = ForumProfileCommentActivity.this;
            forumProfileCommentActivity.showToast(forumProfileCommentActivity.getString(R.string.net_connect_failed));
            ForumProfileCommentActivity.this.T0();
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
            ForumProfileCommentActivity.this.O0();
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
            ForumProfileCommentActivity.this.O0();
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
            ForumProfileCommentActivity.this.O0();
        }
    }

    private void L0() {
        this.f30359b.setText("我的评论");
        this.f30363f = new ArrayList();
        this.f30362e.setPreLoadCount(com.join.mgps.Util.i0.f27593e);
        this.f30362e.setPullLoadEnable(new c());
        this.f30362e.setPullRefreshEnable(new d());
        this.f30364g = new ForumProfileCommentAdapter(this);
        this.f30365h = new ArrayList();
        this.f30364g.h(this.f30379v);
        this.f30362e.setAdapter((ListAdapter) this.f30364g);
    }

    private void M0() {
        I0(18);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O0() {
        I0(0);
        M0();
        if (com.join.android.app.common.utils.f.j(this)) {
            N0();
            return;
        }
        showToast(getString(R.string.net_connect_failed));
        I0(17);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0(int i2) {
        int i4 = this.f30378u;
        if (i4 == 32) {
            return;
        }
        if (i2 == 32) {
            this.f30378u = 32;
            this.f30360c.j(2);
        } else if (i2 == 0) {
            this.f30378u = 0;
            this.f30360c.m();
            this.f30360c.j(1);
        } else {
            this.f30378u = i2 | i4;
            if (J0(-11)) {
                this.f30378u = 16;
                ForumLoadingView forumLoadingView = this.f30360c;
                forumLoadingView.setListener(new e(forumLoadingView));
                this.f30360c.j(9);
            } else if (J0(22)) {
                this.f30378u = 16;
                this.f30360c.setFailedMsg("还没有发布评论~");
                ForumLoadingView forumLoadingView2 = this.f30360c;
                forumLoadingView2.setListener(new f(forumLoadingView2));
                this.f30360c.j(10);
                this.f30360c.setReloadingVisibility(0);
                this.f30360c.setFailedReloadingRes(R.drawable.papa_loading_null);
            } else if (!J0(31) && !J0(26)) {
                if (J0(17)) {
                    this.f30378u = 16;
                    ForumLoadingView forumLoadingView3 = this.f30360c;
                    forumLoadingView3.setListener(new h(forumLoadingView3));
                    this.f30360c.j(9);
                }
            } else {
                this.f30378u = 16;
                this.f30360c.setFailedMsg("加载失败，再试试吧~");
                ForumLoadingView forumLoadingView4 = this.f30360c;
                forumLoadingView4.setListener(new g(forumLoadingView4));
                this.f30360c.j(16);
            }
        }
    }

    boolean J0(int i2) {
        return (this.f30378u & i2) == i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0055, code lost:
        if (r11.f30370m != (-1)) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0091, code lost:
        if (r11.f30370m == (-1)) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0093, code lost:
        r11.f30370m = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0095, code lost:
        T0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:?, code lost:
        return;
     */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void K0(int r12) {
        /*
            r11 = this;
            int r0 = r11.f30370m
            if (r12 != r0) goto L5
            return
        L5:
            r1 = -1
            if (r0 != r1) goto Lb
            r11.T0()
        Lb:
            r11.f30370m = r12
            boolean r0 = com.join.android.app.common.utils.f.j(r11)
            if (r0 == 0) goto La3
            r0 = 1
            r2 = 0
            if (r12 <= r0) goto L1a
            r11.S0()     // Catch: java.lang.Throwable -> L84 java.lang.Exception -> L86
        L1a:
            com.join.mgps.dto.AccountBean r3 = com.join.mgps.Util.i0.T(r11)     // Catch: java.lang.Throwable -> L84 java.lang.Exception -> L86
            boolean r4 = com.join.mgps.Util.i0.Y0(r11)     // Catch: java.lang.Throwable -> L84 java.lang.Exception -> L86
            if (r4 == 0) goto L7a
            com.join.mgps.rpc.h r5 = r11.f30368k     // Catch: java.lang.Throwable -> L84 java.lang.Exception -> L86
            int r6 = r3.getUid()     // Catch: java.lang.Throwable -> L84 java.lang.Exception -> L86
            java.lang.String r7 = r3.getToken()     // Catch: java.lang.Throwable -> L84 java.lang.Exception -> L86
            int r9 = com.join.mgps.Util.i0.f27592d     // Catch: java.lang.Throwable -> L84 java.lang.Exception -> L86
            java.lang.String r10 = ""
            r8 = r12
            com.join.mgps.dto.ForumResponse r3 = r5.a(r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L84 java.lang.Exception -> L86
            r4 = 20
            if (r3 == 0) goto L69
            java.lang.Object r3 = r3.getData()     // Catch: java.lang.Throwable -> L84 java.lang.Exception -> L86
            java.util.List r3 = (java.util.List) r3     // Catch: java.lang.Throwable -> L84 java.lang.Exception -> L86
            if (r3 == 0) goto L58
            int r5 = r3.size()     // Catch: java.lang.Throwable -> L84 java.lang.Exception -> L86
            if (r5 == 0) goto L58
            r11.f30369l = r12     // Catch: java.lang.Throwable -> L84 java.lang.Exception -> L86
            r11.U0(r3, r12)     // Catch: java.lang.Throwable -> L84 java.lang.Exception -> L86
            r12 = 32
            r11.I0(r12)     // Catch: java.lang.Throwable -> L84 java.lang.Exception -> L86
            int r12 = r11.f30370m
            if (r12 == r1) goto L95
            goto L93
        L58:
            r11.f30370m = r1     // Catch: java.lang.Throwable -> L84 java.lang.Exception -> L86
            if (r12 != r0) goto L5f
            r11.I0(r4)     // Catch: java.lang.Throwable -> L84 java.lang.Exception -> L86
        L5f:
            int r12 = r11.f30370m
            if (r12 == r1) goto L65
            r11.f30370m = r2
        L65:
            r11.T0()
            return
        L69:
            r11.f30370m = r2     // Catch: java.lang.Throwable -> L84 java.lang.Exception -> L86
            if (r12 != r0) goto L70
            r11.I0(r4)     // Catch: java.lang.Throwable -> L84 java.lang.Exception -> L86
        L70:
            int r12 = r11.f30370m
            if (r12 == r1) goto L76
            r11.f30370m = r2
        L76:
            r11.T0()
            return
        L7a:
            int r12 = r11.f30370m
            if (r12 == r1) goto L80
            r11.f30370m = r2
        L80:
            r11.T0()
            return
        L84:
            r12 = move-exception
            goto L99
        L86:
            r12 = move-exception
            r0 = 24
            r11.I0(r0)     // Catch: java.lang.Throwable -> L84
            r12.printStackTrace()     // Catch: java.lang.Throwable -> L84
            int r12 = r11.f30370m
            if (r12 == r1) goto L95
        L93:
            r11.f30370m = r2
        L95:
            r11.T0()
            goto Lb2
        L99:
            int r0 = r11.f30370m
            if (r0 == r1) goto L9f
            r11.f30370m = r2
        L9f:
            r11.T0()
            throw r12
        La3:
            r12 = 2131821062(0x7f110206, float:1.9274857E38)
            java.lang.String r12 = r11.getString(r12)
            r11.showToast(r12)
            r12 = 17
            r11.I0(r12)
        Lb2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.ForumProfileCommentActivity.K0(int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void N0() {
        K0(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P0() {
        this.f30364g.g(this.f30365h);
        this.f30364g.notifyDataSetChanged();
    }

    synchronized void Q0() {
        if (this.f30363f == null) {
            return;
        }
        this.f30365h.clear();
        int i2 = 0;
        while (i2 < this.f30363f.size()) {
            R0(this.f30363f.get(i2), i2 == 0);
            i2++;
        }
        P0();
    }

    void R0(ForumData.ForumProfileCommentData forumProfileCommentData, boolean z3) {
        try {
            ForumBean.ForumPostsBean posts = forumProfileCommentData.getPosts();
            AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
            String str = "";
            this.f30365h.add(new ForumProfileCommentAdapter.i(ForumProfileCommentAdapter.ViewType.PROFILE_HEADER, new ForumProfileCommentAdapter.i.b(z3, accountData.getAvatarSrc(), accountData.getNickname(), forumProfileCommentData.getLast_update_time(), posts.getFirst() > 0, posts.getPid(), accountData.getVip_level(), accountData.getSvip_level(), posts.getCopper_title() != null ? posts.getCopper_title().getBattleTitle() : "", posts.getCopper_title() != null ? posts.getCopper_title().getBattleColor() : "", posts.getUid())));
            List<ForumBean.ForumProfileCommentBean> list = forumProfileCommentData.getList();
            int i2 = 0;
            while (list != null && i2 < list.size()) {
                this.f30365h.add(new ForumProfileCommentAdapter.i(ForumProfileCommentAdapter.ViewType.PROFILE_MESSAGE_ITEM, new ForumProfileCommentAdapter.i.c(posts.getPid(), i2 == list.size() + (-1), list.get(i2))));
                i2++;
            }
            ForumProfileCommentAdapter.ViewType viewType = ForumProfileCommentAdapter.ViewType.PROFILE_FOOTER;
            int pid = posts.getPid();
            if (posts.getRs_list() != null && posts.getRs_list().size() != 0) {
                str = posts.getRs_list().get(0).getThumb();
            }
            this.f30365h.add(new ForumProfileCommentAdapter.i(viewType, new ForumProfileCommentAdapter.i.a(pid, str, !com.join.mgps.Util.d2.h(posts.getSubject()) ? posts.getSubject() : posts.getMessage())));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T0() {
        if (this.f30362e.i()) {
            this.f30380w.sendEmptyMessageDelayed(0, 3000L);
        } else {
            this.f30380w.sendEmptyMessage(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U0(List<ForumData.ForumProfileCommentData> list, int i2) {
        if (list != null && list.size() != 0) {
            if (i2 == 1) {
                this.f30363f.clear();
                this.f30369l = 1;
                T0();
            }
            this.f30363f.addAll(list);
        }
        T0();
        Q0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f30368k = com.join.mgps.rpc.impl.f.A0();
        L0();
        O0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }
}
