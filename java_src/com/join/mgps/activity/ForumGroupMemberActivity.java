package com.join.mgps.activity;

import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.adapter.ForumBaseAdapter;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumResponse;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.mg_forum_group_member_activity)
/* loaded from: classes3.dex */
public class ForumGroupMemberActivity extends BaseAppCompatActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    XListView2 f29834a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f29835b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ForumLoadingView f29836c;

    /* renamed from: d  reason: collision with root package name */
    com.join.mgps.rpc.h f29837d;
    @Extra

    /* renamed from: e  reason: collision with root package name */
    int f29838e;

    /* renamed from: f  reason: collision with root package name */
    public int f29839f;

    /* renamed from: g  reason: collision with root package name */
    public int f29840g;

    /* renamed from: i  reason: collision with root package name */
    private com.join.mgps.customview.j f29842i;

    /* renamed from: j  reason: collision with root package name */
    private ForumBaseAdapter f29843j;

    /* renamed from: k  reason: collision with root package name */
    private List<ForumData.GroupMemberBean> f29844k;

    /* renamed from: l  reason: collision with root package name */
    private List<ForumData.GroupMemberBean> f29845l;

    /* renamed from: m  reason: collision with root package name */
    private ForumData.GroupMemberBean f29846m;

    /* renamed from: o  reason: collision with root package name */
    com.join.android.app.component.video.c f29848o;

    /* renamed from: h  reason: collision with root package name */
    private Handler f29841h = new Handler();

    /* renamed from: n  reason: collision with root package name */
    String f29847n = "ForumGroupMemberActivity";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (ForumGroupMemberActivity.this.K0()) {
                ForumGroupMemberActivity forumGroupMemberActivity = ForumGroupMemberActivity.this;
                forumGroupMemberActivity.H0(forumGroupMemberActivity.f29839f + 1);
                return;
            }
            ForumGroupMemberActivity.this.R0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (ForumGroupMemberActivity.this.K0()) {
                ForumGroupMemberActivity forumGroupMemberActivity = ForumGroupMemberActivity.this;
                forumGroupMemberActivity.f29839f = 0;
                forumGroupMemberActivity.f29840g = 0;
                forumGroupMemberActivity.H0(1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends ForumBaseAdapter.y0 {
        c() {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.y0, com.join.mgps.adapter.ForumBaseAdapter.r0
        public void m(int i2) {
            ForumGroupMemberActivity.this.G0(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            XListView2 xListView2 = ForumGroupMemberActivity.this.f29834a;
            if (xListView2 == null) {
                return;
            }
            xListView2.u();
            ForumGroupMemberActivity.this.f29834a.t();
            ForumGroupMemberActivity forumGroupMemberActivity = ForumGroupMemberActivity.this;
            if (forumGroupMemberActivity.f29840g == -1) {
                forumGroupMemberActivity.f29834a.setNoMore();
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
            ForumGroupMemberActivity.this.L0();
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
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
            ForumGroupMemberActivity.this.L0();
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
            ForumGroupMemberActivity.this.L0();
        }
    }

    private void I0() {
        this.f29834a.setPreLoadCount(com.join.mgps.Util.i0.f27593e);
        this.f29834a.setPullLoadEnable(new a());
        b bVar = new b();
        this.f29842i = bVar;
        this.f29834a.setPullRefreshEnable(bVar);
        ForumBaseAdapter forumBaseAdapter = new ForumBaseAdapter(this, this.f29848o);
        this.f29843j = forumBaseAdapter;
        forumBaseAdapter.p0(this.f29847n);
        this.f29843j.v0(new c());
        this.f29834a.setAdapter((ListAdapter) this.f29843j);
    }

    private void J0() {
        I0();
    }

    private void O0() {
        List<ForumData.GroupMemberBean> list = this.f29844k;
        if (list == null || list.size() == 0) {
            return;
        }
        this.f29843j.e(new ForumBaseAdapter.n1(ForumBaseAdapter.ViewType.GROUP_MEMBER_SECTION_TITLE, new ForumBaseAdapter.n1.d("组员们")));
        String uid = AccountUtil_.getInstance_(this).getUid();
        int i2 = 0;
        while (i2 < this.f29844k.size()) {
            ForumData.GroupMemberBean groupMemberBean = this.f29844k.get(i2);
            this.f29843j.e(new ForumBaseAdapter.n1(ForumBaseAdapter.ViewType.GROUP_MEMBER_ITEM, new ForumBaseAdapter.n1.c(groupMemberBean.getAvatar_src(), groupMemberBean.getNickname(), false, groupMemberBean.getGrade(), groupMemberBean.getJoin_time(), (TextUtils.isEmpty(uid) || TextUtils.isEmpty(groupMemberBean.getUid()) || !uid.equals(groupMemberBean.getUid())) ? false : true, false, this.f29838e, Integer.parseInt(groupMemberBean.getUid()))));
            i2++;
            uid = uid;
        }
    }

    private void P0() {
        List<ForumData.GroupMemberBean> list = this.f29845l;
        if (list == null || list.size() == 0) {
            return;
        }
        this.f29843j.e(new ForumBaseAdapter.n1(ForumBaseAdapter.ViewType.GROUP_MEMBER_SECTION_TITLE, new ForumBaseAdapter.n1.d("管理们")));
        String uid = AccountUtil_.getInstance_(this).getUid();
        int i2 = 0;
        while (i2 < this.f29845l.size()) {
            ForumData.GroupMemberBean groupMemberBean = this.f29845l.get(i2);
            this.f29843j.e(new ForumBaseAdapter.n1(ForumBaseAdapter.ViewType.GROUP_MEMBER_ITEM, new ForumBaseAdapter.n1.c(groupMemberBean.getAvatar_src(), groupMemberBean.getNickname(), true, groupMemberBean.getGrade(), groupMemberBean.getJoin_time(), (TextUtils.isEmpty(uid) || TextUtils.isEmpty(groupMemberBean.getUid()) || !uid.equals(groupMemberBean.getUid())) ? false : true, false, this.f29838e, Integer.parseInt(groupMemberBean.getUid()))));
            i2++;
            uid = uid;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void D0(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void E0(boolean z3) {
        ForumData.GroupMemberBean groupMemberBean = this.f29846m;
        if (groupMemberBean != null) {
            groupMemberBean.setIs_joined(z3);
        }
        M0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F0(int i2) {
        ForumLoadingView forumLoadingView = this.f29836c;
        if (forumLoadingView == null) {
            return;
        }
        if (i2 == 1) {
            forumLoadingView.j(1);
        } else if (i2 == 2) {
            forumLoadingView.j(2);
        } else if (i2 == 4) {
            forumLoadingView.j(4);
        } else if (i2 == 16) {
            forumLoadingView.setFailedMsg("加载失败，再试试吧~");
            ForumLoadingView forumLoadingView2 = this.f29836c;
            forumLoadingView2.setListener(new g(forumLoadingView2));
            this.f29836c.j(16);
        } else if (i2 == 9) {
            forumLoadingView.setListener(new e(forumLoadingView));
            this.f29836c.j(9);
        } else if (i2 != 10) {
        } else {
            forumLoadingView.setFailedMsg("没有更多内容哦~");
            ForumLoadingView forumLoadingView3 = this.f29836c;
            forumLoadingView3.setListener(new f(forumLoadingView3));
            this.f29836c.setReloadingVisibility(0);
            this.f29836c.j(10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void G0(int i2) {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                ForumResponse<ForumData.HomepageRecommendLabel> i4 = this.f29837d.i(i2, AccountUtil_.getInstance_(this).getUid(), AccountUtil_.getInstance_(this).getToken());
                if (i4 != null && i4.getData() != null) {
                    if (i4.getError() == 0) {
                        E0(false);
                    }
                    D0(i4.getData().getMsg());
                    return;
                }
                D0(getString(R.string.exit_group_failed));
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        D0(getString(R.string.net_connect_failed));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x008d, code lost:
        if (r8.f29840g != (-1)) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0092, code lost:
        r8.f29840g = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00ad, code lost:
        if (r8.f29840g == (-1)) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00af, code lost:
        r8.f29840g = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00b1, code lost:
        R0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:?, code lost:
        return;
     */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void H0(int r9) {
        /*
            r8 = this;
            boolean r0 = com.join.android.app.common.utils.f.j(r8)
            if (r0 == 0) goto Lbf
            r0 = 4
            r1 = 1
            r2 = 0
            r3 = -1
            int r4 = r8.f29840g     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            if (r4 == r3) goto L90
            if (r4 != r9) goto L12
            goto L90
        L12:
            r8.f29840g = r9     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            com.join.mgps.Util.AccountUtil_ r4 = com.join.mgps.Util.AccountUtil_.getInstance_(r8)     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            java.lang.String r4 = r4.getUid()     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            com.join.mgps.Util.AccountUtil_ r5 = com.join.mgps.Util.AccountUtil_.getInstance_(r8)     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            java.lang.String r5 = r5.getToken()     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            com.join.mgps.rpc.h r6 = r8.f29837d     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            int r7 = r8.f29838e     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            com.join.mgps.dto.ForumResponse r4 = r6.Z(r7, r9, r4, r5)     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            if (r4 == 0) goto L8b
            int r5 = r4.getError()     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            if (r5 != 0) goto L8b
            java.lang.Object r5 = r4.getData()     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            if (r5 != 0) goto L47
            r8.F0(r0)     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            int r9 = r8.f29840g
            if (r9 == r3) goto L43
            r8.f29840g = r2
        L43:
            r8.R0()
            return
        L47:
            java.lang.Object r4 = r4.getData()     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            com.join.mgps.dto.ForumData$GroupFans r4 = (com.join.mgps.dto.ForumData.GroupFans) r4     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            java.util.List r5 = r4.getList()     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            if (r5 == 0) goto L5d
            java.util.List r5 = r4.getList()     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            int r5 = r5.size()     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            if (r5 != 0) goto L82
        L5d:
            if (r9 != r1) goto L6f
            java.util.List r5 = r4.getManagers()     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            if (r5 == 0) goto L71
            java.util.List r5 = r4.getList()     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            int r5 = r5.size()     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            if (r5 == 0) goto L71
        L6f:
            if (r9 <= r1) goto L82
        L71:
            r8.f29840g = r3     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            r4 = 10
            r8.F0(r4)     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            int r9 = r8.f29840g
            if (r9 == r3) goto L7e
            r8.f29840g = r2
        L7e:
            r8.R0()
            return
        L82:
            r8.Q0(r9, r4)     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            r8.f29839f = r9     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            r4 = 2
            r8.F0(r4)     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
        L8b:
            int r9 = r8.f29840g
            if (r9 == r3) goto Lb1
            goto Laf
        L90:
            if (r4 == r3) goto L94
            r8.f29840g = r2
        L94:
            r8.R0()
            return
        L98:
            r9 = move-exception
            goto Lb5
        L9a:
            r4 = move-exception
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L98
            r8.R0()     // Catch: java.lang.Throwable -> L98
            if (r9 != r1) goto La8
            com.join.mgps.customview.ForumLoadingView r9 = r8.f29836c     // Catch: java.lang.Throwable -> L98
            r9.m()     // Catch: java.lang.Throwable -> L98
        La8:
            r8.F0(r0)     // Catch: java.lang.Throwable -> L98
            int r9 = r8.f29840g
            if (r9 == r3) goto Lb1
        Laf:
            r8.f29840g = r2
        Lb1:
            r8.R0()
            goto Lce
        Lb5:
            int r0 = r8.f29840g
            if (r0 == r3) goto Lbb
            r8.f29840g = r2
        Lbb:
            r8.R0()
            throw r9
        Lbf:
            r9 = 2131821062(0x7f110206, float:1.9274857E38)
            java.lang.String r9 = r8.getString(r9)
            r8.D0(r9)
            r9 = 9
            r8.F0(r9)
        Lce:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.ForumGroupMemberActivity.H0(int):void");
    }

    boolean K0() {
        if (com.join.android.app.common.utils.f.j(getBaseContext())) {
            return true;
        }
        D0(getString(R.string.net_connect_failed));
        F0(9);
        R0();
        return false;
    }

    void L0() {
        H0(1);
    }

    synchronized void M0() {
        ForumBaseAdapter forumBaseAdapter = this.f29843j;
        if (forumBaseAdapter != null && forumBaseAdapter.r() != null) {
            this.f29843j.r().clear();
        }
        P0();
        O0();
        ForumBaseAdapter forumBaseAdapter2 = this.f29843j;
        if (forumBaseAdapter2 != null) {
            forumBaseAdapter2.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void N0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        ForumBaseAdapter forumBaseAdapter = this.f29843j;
        if (forumBaseAdapter != null) {
            forumBaseAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q0(int i2, ForumData.GroupFans groupFans) {
        if (groupFans == null) {
            return;
        }
        if (this.f29844k == null) {
            this.f29844k = new ArrayList();
        }
        if (this.f29845l == null) {
            this.f29845l = new ArrayList();
        }
        if (i2 == 1) {
            this.f29846m = groupFans.getMe();
            this.f29844k.clear();
            this.f29845l.clear();
            if (groupFans.getManagers() != null) {
                this.f29845l.addAll(groupFans.getManagers());
            }
        }
        if (groupFans.getList() != null) {
            this.f29844k.addAll(groupFans.getList());
        }
        M0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R0() {
        this.f29841h.postDelayed(new d(), 1500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f29837d = com.join.mgps.rpc.impl.f.A0();
        this.f29835b.setVisibility(0);
        this.f29835b.setText("小组成员");
        this.f29848o = new com.join.android.app.component.video.c(this, this.f29847n);
        J0();
        F0(1);
        L0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.join.android.app.component.video.c cVar = this.f29848o;
        if (cVar != null) {
            cVar.z();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        com.join.android.app.component.video.c cVar = this.f29848o;
        if (cVar != null) {
            cVar.A();
        }
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        com.join.android.app.component.video.c cVar = this.f29848o;
        if (cVar != null) {
            cVar.B();
        }
    }
}
