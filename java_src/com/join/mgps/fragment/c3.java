package com.join.mgps.fragment;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.label.MainLabelActivity;
import com.join.mgps.adapter.ForumBaseAdapter;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: LabelFragment.java */
@EFragment(R.layout.fragment_lable)
/* loaded from: classes.dex */
public class c3 extends u0 implements AbsListView.OnScrollListener {
    private static final int D = 10;

    /* renamed from: b  reason: collision with root package name */
    int f48475b;

    /* renamed from: c  reason: collision with root package name */
    int f48476c;

    /* renamed from: d  reason: collision with root package name */
    int f48477d;

    /* renamed from: e  reason: collision with root package name */
    String f48478e;

    /* renamed from: f  reason: collision with root package name */
    com.join.mgps.rpc.h f48479f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f48480g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f48481h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    XListView2 f48482i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    PtrClassicFrameLayout f48483j;

    /* renamed from: k  reason: collision with root package name */
    Activity f48484k;

    /* renamed from: l  reason: collision with root package name */
    private ForumBaseAdapter f48485l;

    /* renamed from: n  reason: collision with root package name */
    public int f48487n;

    /* renamed from: o  reason: collision with root package name */
    public int f48488o;

    /* renamed from: q  reason: collision with root package name */
    com.join.mgps.customview.j f48490q;

    /* renamed from: s  reason: collision with root package name */
    com.join.android.app.component.video.c f48492s;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    ImageView f48493t;

    /* renamed from: u  reason: collision with root package name */
    private com.join.mgps.rpc.d f48494u;

    /* renamed from: a  reason: collision with root package name */
    String f48474a = "";

    /* renamed from: m  reason: collision with root package name */
    boolean f48486m = true;

    /* renamed from: p  reason: collision with root package name */
    private List<ForumBean.ForumPostsBean> f48489p = new ArrayList();

    /* renamed from: r  reason: collision with root package name */
    String f48491r = "LabelFragment";

    /* renamed from: v  reason: collision with root package name */
    private Map<String, DownloadTask> f48495v = new ConcurrentHashMap();

    /* renamed from: w  reason: collision with root package name */
    Map<String, DownloadTask> f48496w = new HashMap();

    /* renamed from: x  reason: collision with root package name */
    Map<String, DownloadTask> f48497x = new HashMap();

    /* renamed from: y  reason: collision with root package name */
    private List<DownloadTask> f48498y = new ArrayList();

    /* renamed from: z  reason: collision with root package name */
    int f48499z = 0;
    boolean A = false;
    boolean B = true;
    com.join.mgps.customview.t C = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LabelFragment.java */
    /* loaded from: classes4.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            XListView2 xListView2 = c3.this.f48482i;
            if (xListView2 == null) {
                return;
            }
            xListView2.u();
            c3.this.f48482i.t();
            c3 c3Var = c3.this;
            if (c3Var.f48488o == -1) {
                c3Var.f48482i.setNoMore();
                c3 c3Var2 = c3.this;
                if (c3Var2.f48487n == 0) {
                    c3Var2.t0();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LabelFragment.java */
    /* loaded from: classes4.dex */
    public class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (!com.join.android.app.common.utils.f.j(c3.this.f48484k)) {
                c3.this.w0();
                c3.this.u0();
                return;
            }
            c3.this.S();
        }
    }

    /* compiled from: LabelFragment.java */
    /* loaded from: classes4.dex */
    class c implements com.join.mgps.listener.f {
        c() {
        }

        @Override // com.join.mgps.listener.f
        public void a(int i2) {
            XListView2 xListView2 = c3.this.f48482i;
            xListView2.smoothScrollToPositionFromTop(i2, xListView2.getResources().getDimensionPixelOffset(R.dimen.wdp100));
        }
    }

    /* compiled from: LabelFragment.java */
    /* loaded from: classes4.dex */
    class d extends ForumBaseAdapter.y0 {
        d() {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.y0, com.join.mgps.adapter.ForumBaseAdapter.r0
        public void a(int i2) {
            c3 c3Var = c3.this;
            if (!c3Var.isLogined(c3Var.f48484k)) {
                c3 c3Var2 = c3.this;
                c3Var2.showMessage(c3Var2.f48484k.getString(R.string.forum_user_not_login));
            } else if (!c3.this.A0()) {
                c3.this.p0();
            } else {
                c3.this.k0(i2);
                c3.this.b0(i2);
            }
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.y0, com.join.mgps.adapter.ForumBaseAdapter.r0
        public void d(int i2) {
            super.d(i2);
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(i2);
            com.join.mgps.Util.i0.v0(c3.this.f48484k, forumPostsBean);
        }
    }

    /* compiled from: LabelFragment.java */
    /* loaded from: classes4.dex */
    class e implements com.join.mgps.customview.j {
        e() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (!com.join.android.app.common.utils.f.j(c3.this.f48484k)) {
                c3.this.w0();
                c3.this.u0();
                return;
            }
            c3 c3Var = c3.this;
            c3Var.f48488o = 0;
            c3Var.f48487n = 0;
            c3Var.S();
        }
    }

    private AccountBean N(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    private void P() {
        com.join.mgps.customview.t tVar = this.C;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.C.dismiss();
    }

    private void R() {
        if (com.join.android.app.common.utils.f.j(this.f48484k)) {
            r0();
            S();
            return;
        }
        q0();
    }

    private void d0(DownloadTask downloadTask) {
        try {
            Iterator<DownloadTask> it2 = this.f48498y.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                DownloadTask next = it2.next();
                if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    this.f48495v.remove(next.getCrc_link_type_val());
                    it2.remove();
                    break;
                }
            }
            Z(downloadTask, 2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void e0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f48495v;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            Z(downloadTask, 3);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void f0(DownloadTask downloadTask) {
        UtilsMy.E3(this.f48498y, downloadTask);
        if (!this.f48495v.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f48498y.add(downloadTask);
            this.f48495v.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        Z(downloadTask, 0);
    }

    private void g0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f48495v;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f48498y.add(downloadTask);
            this.f48495v.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        DownloadTask downloadTask2 = this.f48495v.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        downloadTask2.setGameZipPath(downloadTask.getGameZipPath());
        Z(downloadTask, 1);
    }

    private void h0() {
        int i2 = 0;
        while (true) {
            List<DownloadTask> list = this.f48498y;
            if (list == null || i2 >= list.size()) {
                return;
            }
            Z(g1.f.G().B(this.f48498y.get(i2).getCrc_link_type_val()), 4);
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLogined(Context context) {
        AccountBean N = N(context);
        return N != null && com.join.mgps.Util.d2.i(N.getToken());
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0248  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void n0(com.join.mgps.dto.ForumBean.ForumPostsBean r24) {
        /*
            Method dump skipped, instructions count: 864
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.c3.n0(com.join.mgps.dto.ForumBean$ForumPostsBean):void");
    }

    private void o0() {
        for (int i2 = 0; i2 < this.f48489p.size(); i2++) {
            n0(this.f48489p.get(i2));
        }
    }

    boolean A0() {
        if (N(this.f48484k) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this.f48484k).isTourist();
    }

    public void O() {
        try {
            com.join.android.app.component.video.c cVar = this.f48492s;
            if (cVar != null) {
                cVar.F(1);
                this.f48492s.m(this.f48482i);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Q(String str) {
        Context context = getContext();
        if (com.join.android.app.common.utils.f.j(context)) {
            if (this.f48499z == 1) {
                return;
            }
            try {
                try {
                    AccountBean accountData = AccountUtil_.getInstance_(context).getAccountData();
                    ResultMainBean<List<DetailResultBean>> R = this.f48494u.R(RequestBeanUtil.getInstance(context).getAppDetialBean(str, accountData != null ? accountData.getUid() : 0, null));
                    if (R != null && R.getFlag() != 0) {
                        List<DetailResultBean> data = R.getMessages().getData();
                        if (data.size() != 0) {
                            DetailResultBean detailResultBean = data.get(0);
                            if (this.A) {
                                v0(detailResultBean);
                            }
                        }
                    } else if (R != null && R.getFlag() != 0) {
                        showToast("获取游戏信息失败");
                    } else {
                        showToast("获取游戏信息失败");
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    showToast("获取游戏信息失败");
                }
                return;
            } finally {
                this.f48499z = 0;
                this.A = false;
            }
        }
        showToast("获取游戏信息失败");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0086, code lost:
        q0();
     */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void S() {
        /*
            r12 = this;
            int r0 = r12.f48487n
            r1 = 1
            int r0 = r0 + r1
            android.app.Activity r2 = r12.f48484k
            boolean r2 = com.join.android.app.common.utils.f.j(r2)
            if (r2 == 0) goto Lb8
            int r2 = r12.f48488o     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            r11 = -1
            if (r2 != r11) goto L15
            r12.w0()
            return
        L15:
            if (r2 != r0) goto L1b
            r12.w0()
            return
        L1b:
            r12.f48488o = r0     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            android.app.Activity r2 = r12.f48484k     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            com.join.mgps.Util.AccountUtil_ r2 = com.join.mgps.Util.AccountUtil_.getInstance_(r2)     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            java.lang.String r3 = r2.getUid()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            android.app.Activity r2 = r12.f48484k     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            com.join.mgps.Util.AccountUtil_ r2 = com.join.mgps.Util.AccountUtil_.getInstance_(r2)     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            java.lang.String r9 = r2.getToken()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            com.join.mgps.rpc.h r2 = r12.f48479f     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            int r4 = r12.f48475b     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            r6 = 10
            int r7 = r12.f48477d     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            java.lang.String r8 = r12.f48474a     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            java.lang.String r10 = r12.f48478e     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            r5 = r0
            com.join.mgps.dto.ResultResMainBean r2 = r2.X(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            android.app.Activity r3 = r12.f48484k     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            if (r3 == 0) goto L8a
            boolean r3 = r3.isFinishing()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            if (r3 != 0) goto L8a
            int r3 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            r4 = 17
            if (r3 < r4) goto L5b
            android.app.Activity r3 = r12.f48484k     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            boolean r3 = r3.isDestroyed()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            if (r3 == 0) goto L5b
            goto L8a
        L5b:
            if (r2 == 0) goto L84
            java.lang.Object r3 = r2.getData()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            if (r3 != 0) goto L64
            goto L84
        L64:
            java.lang.Object r2 = r2.getData()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            java.util.List r2 = (java.util.List) r2     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            if (r2 == 0) goto L7e
            int r3 = r2.size()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            if (r3 != 0) goto L73
            goto L7e
        L73:
            r12.f48487n = r0     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            r12.z0(r2, r0)     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            if (r0 > r1) goto Lb0
            r12.hideLoading()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            goto Lb0
        L7e:
            r12.f48488o = r11     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            r12.w0()
            return
        L84:
            if (r0 > r1) goto Lb0
            r12.q0()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            goto Lb0
        L8a:
            r12.w0()
            return
        L8e:
            r0 = move-exception
            goto Lb4
        L90:
            r2 = move-exception
            java.lang.String r3 = "Label"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8e
            r4.<init>()     // Catch: java.lang.Throwable -> L8e
            java.lang.String r5 = "getListData Exception:"
            r4.append(r5)     // Catch: java.lang.Throwable -> L8e
            java.lang.String r2 = r2.getMessage()     // Catch: java.lang.Throwable -> L8e
            r4.append(r2)     // Catch: java.lang.Throwable -> L8e
            java.lang.String r2 = r4.toString()     // Catch: java.lang.Throwable -> L8e
            com.join.mgps.Util.t0.b(r3, r2)     // Catch: java.lang.Throwable -> L8e
            if (r0 > r1) goto Lb0
            r12.q0()     // Catch: java.lang.Throwable -> L8e
        Lb0:
            r12.w0()
            goto Lc0
        Lb4:
            r12.w0()
            throw r0
        Lb8:
            if (r0 > r1) goto Lbd
            r12.q0()
        Lbd:
            r12.u0()
        Lc0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.c3.S():void");
    }

    public void U() {
        this.f48494u = com.join.mgps.rpc.impl.c.P1();
        com.join.mgps.Util.c0.a().d(this);
    }

    public boolean V() {
        return this.f48486m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void W() {
        this.f48492s.F(1);
        this.f48492s.m(this.f48482i);
    }

    synchronized void X() {
        ForumBaseAdapter forumBaseAdapter = this.f48485l;
        if (forumBaseAdapter != null && forumBaseAdapter.r() != null) {
            this.f48485l.r().clear();
        }
        o0();
        this.f48485l.notifyDataSetChanged();
    }

    void Z(DownloadTask downloadTask, int i2) {
        boolean z3 = false;
        for (int i4 = 0; i4 < this.f48489p.size(); i4++) {
            ForumBean.ForumPostsBean forumPostsBean = this.f48489p.get(i4);
            if (forumPostsBean != null && forumPostsBean.getRelation_game() != null && !TextUtils.isEmpty(forumPostsBean.getRelation_game().getGame_id()) && forumPostsBean.getRelation_game().getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                forumPostsBean.getRelation_game().setDownloadTask(downloadTask);
                z3 |= true;
            }
        }
        if (z3) {
            y0(this.f48489p);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void a0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        ForumBaseAdapter forumBaseAdapter = this.f48485l;
        if (forumBaseAdapter != null) {
            forumBaseAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f48479f = com.join.mgps.rpc.impl.f.A0();
        Context context = getContext();
        this.f48492s = new com.join.android.app.component.video.c(context, this.f48491r + this.f48476c);
        ForumBaseAdapter forumBaseAdapter = new ForumBaseAdapter(this.f48484k, this.f48492s);
        this.f48485l = forumBaseAdapter;
        forumBaseAdapter.Q0(new c());
        ForumBaseAdapter forumBaseAdapter2 = this.f48485l;
        forumBaseAdapter2.p0(this.f48491r + this.f48476c);
        this.f48485l.v0(new d());
        this.f48482i.setAdapter((ListAdapter) this.f48485l);
        this.f48482i.setPreLoadCount(10);
        e eVar = new e();
        this.f48490q = eVar;
        this.f48482i.setPullRefreshEnable(eVar);
        l0();
        this.f48482i.setOnScrollListener(this);
        S();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void b0(int i2) {
        try {
            if (!com.join.mgps.Util.i0.Y0(this.f48484k)) {
                com.join.mgps.Util.i0.L0(this.f48484k);
                com.join.mgps.Util.i2.a(this.f48484k).b("尚未登录，请先登录！");
                return;
            }
            ForumRequestBean.ForumPostsPraiseRequestBean e02 = com.join.mgps.Util.i0.e0(this.f48484k, i2);
            e02.setDevice_id("");
            ForumResponse<ForumData.ForumPostsPraiseData> o3 = this.f48479f.o(e02.getParams());
            if (o3 == null) {
                return;
            }
            if (o3.getError() == 706) {
                k0(i2);
                p0();
                return;
            }
            ForumData.ForumPostsPraiseData data = o3.getData();
            data.isResult();
            com.join.mgps.Util.i0.m1(e02, data);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void c0(ForumBean.GameInfo gameInfo) {
        if (gameInfo != null) {
            try {
                DownloadTask B = g1.f.G().B(gameInfo.getGame_id());
                gameInfo.setDownloadTask(B);
                Map<String, DownloadTask> map = this.f48495v;
                if (map == null || B == null || map.containsKey(B.getCrc_link_type_val())) {
                    return;
                }
                this.f48498y.add(B);
                this.f48495v.put(B.getCrc_link_type_val(), B);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    void changeDownloadTaskNumber(DownloadTask downloadTask, int i2) {
        if (downloadTask == null) {
            return;
        }
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        if (i2 == 2) {
            if (!this.f48496w.containsKey(crc_link_type_val)) {
                this.f48496w.put(crc_link_type_val, downloadTask);
            }
            if (this.f48497x.containsKey(crc_link_type_val)) {
                return;
            }
            this.f48497x.put(crc_link_type_val, downloadTask);
        } else if (i2 != 3) {
            if (i2 != 5) {
                if (i2 == 6) {
                    if (this.f48497x.containsKey(crc_link_type_val)) {
                        this.f48497x.remove(crc_link_type_val);
                        return;
                    }
                    return;
                } else if (i2 == 7) {
                    if (this.f48496w.containsKey(crc_link_type_val)) {
                        this.f48496w.remove(crc_link_type_val);
                    }
                    if (this.f48497x.containsKey(crc_link_type_val)) {
                        this.f48497x.remove(crc_link_type_val);
                        return;
                    }
                    return;
                } else if (i2 == 10) {
                    if (!this.f48496w.containsKey(crc_link_type_val)) {
                        this.f48496w.put(crc_link_type_val, downloadTask);
                    }
                    if (this.f48497x.containsKey(crc_link_type_val)) {
                        return;
                    }
                    this.f48497x.put(crc_link_type_val, downloadTask);
                    return;
                } else if (i2 != 11) {
                    return;
                }
            } else if (this.f48496w.containsKey(crc_link_type_val)) {
                this.f48496w.remove(crc_link_type_val);
            }
            if (this.f48497x.containsKey(crc_link_type_val)) {
                this.f48497x.remove(crc_link_type_val);
            }
        } else if (this.f48497x.containsKey(crc_link_type_val)) {
            this.f48497x.remove(crc_link_type_val);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideLoading() {
        this.f48483j.setVisibility(0);
        this.f48481h.setVisibility(8);
        this.f48480g.setVisibility(8);
        this.f48493t.setVisibility(8);
    }

    public void i0(String str) {
        this.f48478e = str;
        if (com.join.android.app.common.utils.f.j(this.f48484k)) {
            r0();
            com.join.mgps.customview.j jVar = this.f48490q;
            if (jVar != null) {
                jVar.onRefresh();
                return;
            }
            return;
        }
        u0();
    }

    public void j0(String str, boolean z3) {
        if (!TextUtils.equals(this.f48474a, str) || z3) {
            this.f48474a = str;
            if (com.join.android.app.common.utils.f.j(this.f48484k)) {
                l0();
                r0();
                com.join.mgps.customview.j jVar = this.f48490q;
                if (jVar != null) {
                    jVar.onRefresh();
                    return;
                }
                return;
            }
            u0();
        }
    }

    void k0(int i2) {
        ForumBean.ForumPostsBean next;
        List<ForumBean.ForumPostsBean> list = this.f48489p;
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<ForumBean.ForumPostsBean> it2 = this.f48489p.iterator();
        while (it2.hasNext() && (next = it2.next()) != null) {
            if (next.getPid() == i2) {
                next.setPraise(next.is_praise() ? next.getPraise() - 1 : next.getPraise() + 1);
                next.setIs_praise(!next.is_praise());
                X();
                return;
            }
        }
    }

    void l0() {
        this.f48482i.setPullLoadEnable(new b());
    }

    @Override // com.join.mgps.fragment.d
    protected void lazyLoad() {
    }

    public void m0(boolean z3) {
        this.f48486m = z3;
    }

    @Override // ru.noties.scrollable.b
    public boolean o(int i2) {
        XListView2 xListView2 = this.f48482i;
        return xListView2 != null && xListView2.canScrollVertically(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.f48484k = (Activity) context;
    }

    public boolean onBackPressedMy() {
        Context context = getContext();
        return com.join.android.app.component.video.a.c0(context, this.f48491r + this.f48476c);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        this.f48475b = arguments.getInt("tag_id");
        this.f48477d = arguments.getInt("type");
        this.f48476c = arguments.getInt("position");
        this.f48478e = arguments.getString("fid");
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.join.android.app.component.video.c cVar = this.f48492s;
        if (cVar != null) {
            cVar.z();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f48484k = null;
        this.f48489p.clear();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        changeDownloadTaskNumber(a4, lVar.c());
        StringBuilder sb = new StringBuilder();
        sb.append("zip DownloadStatus =");
        sb.append(lVar.c());
        switch (lVar.c()) {
            case 2:
                x0(a4, 1);
                return;
            case 3:
                x0(a4, 2);
                return;
            case 4:
            case 9:
            default:
                return;
            case 5:
            case 11:
                x0(a4, 5);
                return;
            case 6:
                x0(a4, 6);
                return;
            case 7:
                x0(a4, 3);
                return;
            case 8:
                x0(a4, 4);
                return;
            case 10:
                x0(a4, 7);
                return;
            case 12:
                x0(a4, 8);
                return;
            case 13:
                x0(a4, 9);
                return;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        com.join.android.app.component.video.c cVar = this.f48492s;
        if (cVar != null) {
            cVar.A();
        }
        super.onPause();
        this.B = false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        FragmentActivity activity = getActivity();
        if (activity instanceof MainLabelActivity) {
            if (((MainLabelActivity) activity).J0() == this.f48476c) {
                this.B = true;
                if (this.f48482i != null) {
                    W();
                    return;
                }
                return;
            }
            this.B = false;
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        if (getActivity() == null || !this.B) {
            return;
        }
        this.f48492s.e(absListView, i2, i4, i5);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        if (this.B && i2 == 0) {
            if (Fresco.getImagePipeline().H()) {
                Fresco.getImagePipeline().N();
            }
            if (getActivity() != null) {
                this.f48492s.i(absListView, i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void p0() {
        com.join.mgps.Util.a0.c0(this.f48484k).m(this.f48484k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void q0() {
        this.f48483j.setVisibility(8);
        this.f48481h.setVisibility(8);
        this.f48480g.setVisibility(0);
        this.f48493t.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void r0() {
        this.f48483j.setVisibility(8);
        this.f48481h.setVisibility(0);
        this.f48480g.setVisibility(8);
        this.f48493t.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        R();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f48484k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this.f48484k).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(getContext()).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void t0() {
        this.f48483j.setVisibility(8);
        this.f48481h.setVisibility(8);
        this.f48480g.setVisibility(8);
        this.f48493t.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void u0() {
        Activity activity = this.f48484k;
        if (activity != null) {
            com.join.mgps.Util.i2.a(activity).b(getString(R.string.net_connect_failed));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void v0(DetailResultBean detailResultBean) {
        DownloadTask downloadtaskDown;
        if (detailResultBean == null || (downloadtaskDown = detailResultBean.getDownloadtaskDown()) == null) {
            return;
        }
        boolean z3 = false;
        for (int i2 = 0; i2 < this.f48489p.size(); i2++) {
            ForumBean.ForumPostsBean forumPostsBean = this.f48489p.get(i2);
            if (forumPostsBean != null && forumPostsBean.getRelation_game() != null && !TextUtils.isEmpty(forumPostsBean.getRelation_game().getGame_id()) && forumPostsBean.getRelation_game().getGame_id().equals(downloadtaskDown.getCrc_link_type_val())) {
                forumPostsBean.getRelation_game().setDownloadTask(downloadtaskDown);
                z3 |= true;
            }
        }
        if (z3) {
            y0(this.f48489p);
        }
        if (UtilsMy.n0(downloadtaskDown.getPay_game_amount(), downloadtaskDown.getCrc_link_type_val()) > 0) {
            UtilsMy.m3(getContext(), downloadtaskDown.getCrc_link_type_val());
            return;
        }
        UtilsMy.d1(downloadtaskDown, detailResultBean);
        if (UtilsMy.T0(getContext(), downloadtaskDown)) {
            return;
        }
        if (detailResultBean.getDown_status() == 5) {
            UtilsMy.R0(getContext(), downloadtaskDown);
        } else {
            UtilsMy.F0(getContext(), downloadtaskDown, downloadtaskDown.getTp_down_url(), downloadtaskDown.getOther_down_switch(), downloadtaskDown.getCdn_down_switch());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void w0() {
        this.mHandler.postDelayed(new a(), 100L);
    }

    @Override // ru.noties.scrollable.j
    public void x(int i2, long j4) {
        XListView2 xListView2 = this.f48482i;
        if (xListView2 != null) {
            xListView2.smoothScrollBy(i2, (int) j4);
        }
    }

    void x0(DownloadTask downloadTask, int i2) {
        if (downloadTask == null) {
            if (i2 != 4) {
                return;
            }
            h0();
            return;
        }
        switch (i2) {
            case 1:
            case 2:
            case 7:
            case 8:
            case 9:
                f0(downloadTask);
                return;
            case 3:
                d0(downloadTask);
                return;
            case 4:
                h0();
                return;
            case 5:
                g0(downloadTask);
                return;
            case 6:
                e0(downloadTask);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void y0(List<ForumBean.ForumPostsBean> list) {
        X();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void z0(List<ForumBean.ForumPostsBean> list, int i2) {
        if (i2 <= 1) {
            if (list.size() <= 0) {
                t0();
                return;
            }
            this.f48489p.clear();
            l0();
            ForumBaseAdapter forumBaseAdapter = this.f48485l;
            if (forumBaseAdapter != null && forumBaseAdapter.r() != null) {
                this.f48485l.r().clear();
            }
        }
        if (list == null || list.size() < 0) {
            return;
        }
        this.f48489p.addAll(list);
        for (int i4 = 0; i4 < list.size(); i4++) {
            n0(list.get(i4));
        }
        this.f48485l.notifyDataSetChanged();
    }
}
