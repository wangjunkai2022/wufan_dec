package com.join.mgps.fragment;

import android.content.Context;
import android.graphics.Color;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.ForumBaseAdapter;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.MyFlowLayout;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.RecommenGroupClassify;
import com.join.mgps.dto.RecommendLabelTag;
import com.join.mgps.dto.ResultMainBean;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: ForumPostsFragment.java */
@EFragment(R.layout.mg_forum_all_fragment)
/* loaded from: classes.dex */
public class s0 extends u0 implements AbsListView.OnScrollListener {
    private static final String C = "key_groups_data";
    private static final String D = "key_fragment_pos";

    /* renamed from: a  reason: collision with root package name */
    private int f50180a;

    /* renamed from: b  reason: collision with root package name */
    private RecommenGroupClassify f50181b;

    /* renamed from: c  reason: collision with root package name */
    private Context f50182c;

    /* renamed from: d  reason: collision with root package name */
    private int f50183d;

    /* renamed from: e  reason: collision with root package name */
    private List<RecommendLabelTag> f50184e;

    /* renamed from: f  reason: collision with root package name */
    private List<ForumBean.ForumPostsBean> f50185f;

    /* renamed from: g  reason: collision with root package name */
    private com.join.mgps.customview.j f50186g;

    /* renamed from: h  reason: collision with root package name */
    private ForumBaseAdapter f50187h;

    /* renamed from: j  reason: collision with root package name */
    com.join.android.app.component.video.c f50189j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    ForumLoadingView f50190k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    XListView2 f50191l;

    /* renamed from: m  reason: collision with root package name */
    com.join.mgps.rpc.h f50192m;

    /* renamed from: n  reason: collision with root package name */
    public int f50193n;

    /* renamed from: o  reason: collision with root package name */
    public int f50194o;

    /* renamed from: q  reason: collision with root package name */
    ConnectivityManager f50196q;

    /* renamed from: r  reason: collision with root package name */
    MyFlowLayout f50197r;

    /* renamed from: t  reason: collision with root package name */
    private com.join.mgps.rpc.d f50199t;

    /* renamed from: i  reason: collision with root package name */
    String f50188i = "ForumPostsFragment";

    /* renamed from: p  reason: collision with root package name */
    boolean f50195p = false;

    /* renamed from: s  reason: collision with root package name */
    List<Integer> f50198s = new ArrayList();

    /* renamed from: u  reason: collision with root package name */
    boolean f50200u = false;

    /* renamed from: v  reason: collision with root package name */
    private Map<String, DownloadTask> f50201v = new ConcurrentHashMap();

    /* renamed from: w  reason: collision with root package name */
    Map<String, DownloadTask> f50202w = new HashMap();

    /* renamed from: x  reason: collision with root package name */
    Map<String, DownloadTask> f50203x = new HashMap();

    /* renamed from: y  reason: collision with root package name */
    private List<DownloadTask> f50204y = new ArrayList();

    /* renamed from: z  reason: collision with root package name */
    int f50205z = 0;
    boolean A = false;
    com.join.mgps.customview.t B = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumPostsFragment.java */
    /* loaded from: classes4.dex */
    public class a extends ForumLoadingView.e {
        a(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumPostsFragment.java */
    /* loaded from: classes4.dex */
    public class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (s0.this.a0()) {
                s0 s0Var = s0.this;
                s0Var.V(s0Var.f50193n + 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumPostsFragment.java */
    /* loaded from: classes4.dex */
    public class c implements com.join.mgps.customview.j {
        c() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (s0.this.a0()) {
                if ((s0.this.getParentFragment() instanceof q0) && ((q0) s0.this.getParentFragment()).k0()) {
                    s0.this.x0();
                }
                s0 s0Var = s0.this;
                s0Var.f50194o = 0;
                s0Var.f50193n = 0;
                List<Integer> list = s0Var.f50198s;
                if (list != null) {
                    list.clear();
                }
                s0.this.V(1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumPostsFragment.java */
    /* loaded from: classes4.dex */
    public class d implements com.join.mgps.listener.f {
        d() {
        }

        @Override // com.join.mgps.listener.f
        public void a(int i2) {
            s0 s0Var = s0.this;
            s0Var.f50191l.smoothScrollToPositionFromTop(i2, s0Var.f50182c.getResources().getDimensionPixelOffset(R.dimen.wdp100));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumPostsFragment.java */
    /* loaded from: classes4.dex */
    public class e extends ForumBaseAdapter.y0 {
        e() {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.y0, com.join.mgps.adapter.ForumBaseAdapter.r0
        public void a(int i2) {
            s0 s0Var = s0.this;
            if (!s0Var.isLogined(s0Var.f50182c)) {
                s0 s0Var2 = s0.this;
                s0Var2.showMessage(s0Var2.f50182c.getString(R.string.forum_user_not_login));
            } else if (!s0.this.A0()) {
                s0.this.u0();
            } else {
                s0.this.o0(i2);
                s0.this.g0(i2);
            }
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.y0, com.join.mgps.adapter.ForumBaseAdapter.r0
        public void d(int i2) {
            super.d(i2);
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(i2);
            com.join.mgps.Util.i0.v0(s0.this.f50182c, forumPostsBean);
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.y0, com.join.mgps.adapter.ForumBaseAdapter.r0
        public void e(String str) {
            s0 s0Var = s0.this;
            s0Var.A = true;
            s0Var.S(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumPostsFragment.java */
    /* loaded from: classes4.dex */
    public class f implements com.join.mgps.customview.i {
        f() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (s0.this.a0()) {
                s0 s0Var = s0.this;
                s0Var.V(s0Var.f50193n + 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumPostsFragment.java */
    /* loaded from: classes4.dex */
    public class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.join.mgps.Util.u0.e("XListView", "stopXlistRefreshAndLoadMore");
            XListView2 xListView2 = s0.this.f50191l;
            if (xListView2 == null) {
                return;
            }
            xListView2.u();
            s0.this.f50191l.t();
            com.join.mgps.Util.u0.e("XListView", "stopXlistRefreshAndLoadMore111111111111");
            if (s0.this.f50194o == -1) {
                com.join.mgps.Util.u0.e("XListView", "stopXlistRefreshAndLoadMore222222222");
                s0.this.f50191l.setNoMore();
            }
            if ((s0.this.getParentFragment() instanceof q0) && ((q0) s0.this.getParentFragment()).a0() == s0.this.f50180a) {
                ((q0) s0.this.getParentFragment()).E0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumPostsFragment.java */
    /* loaded from: classes4.dex */
    public class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecommendLabelTag f50213a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ TextView f50214b;

        h(RecommendLabelTag recommendLabelTag, TextView textView) {
            this.f50213a = recommendLabelTag;
            this.f50214b = textView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean isSelected = view.isSelected();
            view.setSelected(!isSelected);
            if (isSelected) {
                if (s0.this.f50198s.contains(Integer.valueOf(this.f50213a.getTag_id()))) {
                    s0.this.f50198s.remove(Integer.valueOf(this.f50213a.getTag_id()));
                }
            } else {
                s0.this.f50198s.add(Integer.valueOf(this.f50213a.getTag_id()));
            }
            this.f50214b.getPaint().setFakeBoldText(!isSelected);
            this.f50214b.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumPostsFragment.java */
    /* loaded from: classes4.dex */
    public class i extends ForumLoadingView.e {
        i(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            super.a(view);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            s0.this.Q(1);
            s0.this.J();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumPostsFragment.java */
    /* loaded from: classes4.dex */
    public class j extends ForumLoadingView.e {
        j(ForumLoadingView forumLoadingView) {
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

    private AccountBean P(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    private void R() {
        com.join.mgps.customview.t tVar = this.B;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.B.dismiss();
    }

    private void U() {
        String string = getArguments().getString(C);
        int i2 = getArguments().getInt(D);
        if (com.join.mgps.Util.d2.i(string)) {
            this.f50181b = (RecommenGroupClassify) JsonMapper.getInstance().fromJson(string, RecommenGroupClassify.class);
        }
        this.f50180a = i2;
    }

    public static Fragment W(RecommenGroupClassify recommenGroupClassify, int i2) {
        t0 t0Var = new t0();
        Bundle bundle = new Bundle();
        bundle.putCharSequence(C, JsonMapper.toJsonString(recommenGroupClassify));
        bundle.putInt(D, i2);
        t0Var.setArguments(bundle);
        return t0Var;
    }

    private void Z() {
        XListView2 xListView2 = this.f50191l;
        if (xListView2 == null) {
            return;
        }
        xListView2.setPreLoadCount(com.join.mgps.Util.i0.f27593e);
        this.f50191l.setPullLoadEnable(new b());
        c cVar = new c();
        this.f50186g = cVar;
        this.f50191l.setPullRefreshEnable(cVar);
        this.f50189j = new com.join.android.app.component.video.c(getContext(), this.f50188i);
        ForumBaseAdapter forumBaseAdapter = new ForumBaseAdapter(this.f50182c, this.f50189j);
        this.f50187h = forumBaseAdapter;
        forumBaseAdapter.Q0(new d());
        this.f50187h.p0(this.f50188i);
        this.f50187h.v0(new e());
        this.f50191l.setOnScrollListener(this);
        this.f50191l.setAdapter((ListAdapter) this.f50187h);
        Q(1);
    }

    private View c0(RecommendLabelTag recommendLabelTag) {
        View inflate = View.inflate(getContext(), R.layout.forum_group_tag_item, null);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
        marginLayoutParams.rightMargin = (int) TypedValue.applyDimension(1, 20.0f, getResources().getDisplayMetrics());
        marginLayoutParams.bottomMargin = (int) TypedValue.applyDimension(1, 10.0f, getResources().getDisplayMetrics());
        inflate.setLayoutParams(marginLayoutParams);
        TextView textView = (TextView) inflate.findViewById(R.id.tagTv);
        if (textView == null) {
            return null;
        }
        textView.setBackgroundResource(R.color.transparent);
        textView.setTextColor(Color.parseColor("#3CA4FD"));
        textView.setText("#" + recommendLabelTag.getTag_name() + "#");
        textView.setOnClickListener(new h(recommendLabelTag, textView));
        return inflate;
    }

    private void i0(DownloadTask downloadTask) {
        try {
            Iterator<DownloadTask> it2 = this.f50204y.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                DownloadTask next = it2.next();
                if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    this.f50201v.remove(next.getCrc_link_type_val());
                    it2.remove();
                    break;
                }
            }
            e0(downloadTask, 2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLogined(Context context) {
        AccountBean P = P(context);
        return P != null && com.join.mgps.Util.d2.i(P.getToken());
    }

    private void j0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f50201v;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            e0(downloadTask, 3);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void k0(DownloadTask downloadTask) {
        UtilsMy.E3(this.f50204y, downloadTask);
        if (!this.f50201v.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f50204y.add(downloadTask);
            this.f50201v.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        e0(downloadTask, 0);
    }

    private void l0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f50201v;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f50204y.add(downloadTask);
            this.f50201v.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        DownloadTask downloadTask2 = this.f50201v.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        downloadTask2.setGameZipPath(downloadTask.getGameZipPath());
        e0(downloadTask, 1);
    }

    private void m0() {
        int i2 = 0;
        while (true) {
            List<DownloadTask> list = this.f50204y;
            if (list == null || i2 >= list.size()) {
                return;
            }
            e0(g1.f.G().B(this.f50204y.get(i2).getCrc_link_type_val()), 4);
            i2++;
        }
    }

    private void p0() {
        List<RecommendLabelTag> list = this.f50184e;
        if (list == null || list.size() < 1) {
            return;
        }
        if (this.f50197r == null) {
            MyFlowLayout myFlowLayout = new MyFlowLayout(this.f50182c);
            this.f50197r = myFlowLayout;
            this.f50191l.addHeaderView(myFlowLayout);
        }
        this.f50197r.removeAllViews();
        for (RecommendLabelTag recommendLabelTag : this.f50184e) {
            View c02 = c0(recommendLabelTag);
            if (c02 != null) {
                this.f50197r.addView(c02);
            }
        }
        if (this.f50191l.getHeaderViewsCount() > 0) {
            this.f50191l.removeHeaderView(this.f50197r);
        }
    }

    private void q0() {
        List<RecommendLabelTag> list = this.f50184e;
        if (list == null || list.size() < 1) {
            return;
        }
        this.f50187h.e(new ForumBaseAdapter.n1(ForumBaseAdapter.ViewType.TAG_FLOW_LAYOUT, new ForumBaseAdapter.n1.a0(this.f50184e)));
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x023c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void r0(com.join.mgps.dto.ForumBean.ForumPostsBean r22) {
        /*
            Method dump skipped, instructions count: 851
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.s0.r0(com.join.mgps.dto.ForumBean$ForumPostsBean):void");
    }

    private void t0() {
        for (int i2 = 0; i2 < this.f50185f.size(); i2++) {
            r0(this.f50185f.get(i2));
        }
    }

    boolean A0() {
        if (P(this.f50182c) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this.f50182c).isTourist();
    }

    synchronized void J() {
        V(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q(int i2) {
        ForumLoadingView forumLoadingView = this.f50190k;
        if (forumLoadingView == null) {
            return;
        }
        if (i2 == 1) {
            forumLoadingView.m();
            this.f50190k.j(1);
        } else if (i2 == 2) {
            forumLoadingView.m();
            this.f50190k.j(2);
        } else if (i2 == 4) {
            forumLoadingView.j(4);
        } else if (i2 == 16) {
            forumLoadingView.setFailedMsg("加载失败~");
            ForumLoadingView forumLoadingView2 = this.f50190k;
            forumLoadingView2.setListener(new a(forumLoadingView2));
            this.f50190k.j(16);
        } else if (i2 == 9) {
            forumLoadingView.j(9);
            ForumLoadingView forumLoadingView3 = this.f50190k;
            forumLoadingView3.setListener(new i(forumLoadingView3));
            this.f50190k.j(9);
        } else if (i2 != 10) {
        } else {
            RecommenGroupClassify recommenGroupClassify = this.f50181b;
            String gname = recommenGroupClassify != null ? recommenGroupClassify.getGname() : "";
            if (com.join.mgps.Util.d2.h(gname)) {
                gname = "帖子";
            }
            ForumLoadingView forumLoadingView4 = this.f50190k;
            forumLoadingView4.setFailedMsg("没有更多" + gname + "帖哦~");
            ForumLoadingView forumLoadingView5 = this.f50190k;
            forumLoadingView5.setListener(new j(forumLoadingView5));
            this.f50190k.setReloadingVisibility(0);
            this.f50190k.j(10);
            this.f50190k.setFailedImgVisibility(8);
            this.f50190k.setReloadingVisibility(0);
            this.f50190k.setFailedReloadingRes(R.drawable.papa_loading_null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void S(String str) {
        Context context = getContext();
        if (b0(context)) {
            if (this.f50205z == 1) {
                return;
            }
            try {
                try {
                    AccountBean accountData = AccountUtil_.getInstance_(context).getAccountData();
                    ResultMainBean<List<DetailResultBean>> R = this.f50199t.R(RequestBeanUtil.getInstance(context).getAppDetialBean(str, accountData != null ? accountData.getUid() : 0, null));
                    if (R != null && R.getFlag() != 0) {
                        List<DetailResultBean> data = R.getMessages().getData();
                        if (data.size() != 0) {
                            DetailResultBean detailResultBean = data.get(0);
                            if (this.A) {
                                w0(detailResultBean);
                            }
                        }
                    } else if (R != null && R.getFlag() != 0) {
                        T("获取游戏信息失败");
                    } else {
                        T("获取游戏信息失败");
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    T("获取游戏信息失败");
                }
                return;
            } finally {
                this.f50205z = 0;
                this.A = false;
            }
        }
        T("获取游戏信息失败");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00ac, code lost:
        if (r7.f50194o != (-1)) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00cf, code lost:
        if (r7.f50194o == (-1)) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00d1, code lost:
        r7.f50194o = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00d3, code lost:
        x0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:?, code lost:
        return;
     */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void V(int r8) {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.s0.V(int):void");
    }

    public void X() {
        this.f50199t = com.join.mgps.rpc.impl.c.P1();
        try {
            com.join.mgps.Util.c0.a().d(this);
            this.f50200u = true;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    boolean a0() {
        if (b0(this.f50182c)) {
            return true;
        }
        if (isAdded() && this.f50182c != null) {
            T(getString(R.string.net_connect_failed));
        }
        Q(9);
        x0();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f50192m = com.join.mgps.rpc.impl.f.A0();
        this.f50182c = getActivity();
        U();
        if (!this.f50200u) {
            X();
        }
        Z();
        J();
    }

    boolean b0(Context context) {
        NetworkInfo[] allNetworkInfo;
        if (context == null) {
            try {
                context = getActivity();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        if (context == null) {
            return false;
        }
        if (this.f50196q == null) {
            this.f50196q = (ConnectivityManager) context.getSystemService("connectivity");
        }
        ConnectivityManager connectivityManager = this.f50196q;
        if (connectivityManager != null && (allNetworkInfo = connectivityManager.getAllNetworkInfo()) != null) {
            for (NetworkInfo networkInfo : allNetworkInfo) {
                if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                    return true;
                }
            }
        }
        return false;
    }

    void changeDownloadTaskNumber(DownloadTask downloadTask, int i2) {
        if (downloadTask == null) {
            return;
        }
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        if (i2 == 2) {
            if (!this.f50202w.containsKey(crc_link_type_val)) {
                this.f50202w.put(crc_link_type_val, downloadTask);
            }
            if (this.f50203x.containsKey(crc_link_type_val)) {
                return;
            }
            this.f50203x.put(crc_link_type_val, downloadTask);
        } else if (i2 != 3) {
            if (i2 != 5) {
                if (i2 == 6) {
                    if (this.f50203x.containsKey(crc_link_type_val)) {
                        this.f50203x.remove(crc_link_type_val);
                        return;
                    }
                    return;
                } else if (i2 == 7) {
                    if (this.f50202w.containsKey(crc_link_type_val)) {
                        this.f50202w.remove(crc_link_type_val);
                    }
                    if (this.f50203x.containsKey(crc_link_type_val)) {
                        this.f50203x.remove(crc_link_type_val);
                        return;
                    }
                    return;
                } else if (i2 == 10) {
                    if (!this.f50202w.containsKey(crc_link_type_val)) {
                        this.f50202w.put(crc_link_type_val, downloadTask);
                    }
                    if (this.f50203x.containsKey(crc_link_type_val)) {
                        return;
                    }
                    this.f50203x.put(crc_link_type_val, downloadTask);
                    return;
                } else if (i2 != 11) {
                    return;
                }
            } else if (this.f50202w.containsKey(crc_link_type_val)) {
                this.f50202w.remove(crc_link_type_val);
            }
            if (this.f50203x.containsKey(crc_link_type_val)) {
                this.f50203x.remove(crc_link_type_val);
            }
        } else if (this.f50203x.containsKey(crc_link_type_val)) {
            this.f50203x.remove(crc_link_type_val);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void d0() {
        ForumBaseAdapter forumBaseAdapter = this.f50187h;
        if (forumBaseAdapter != null && forumBaseAdapter.r() != null) {
            this.f50187h.r().clear();
        }
        q0();
        t0();
        this.f50187h.notifyDataSetChanged();
    }

    void e0(DownloadTask downloadTask, int i2) {
        if (downloadTask == null) {
            return;
        }
        int i4 = 0;
        boolean z3 = false;
        while (true) {
            List<ForumBean.ForumPostsBean> list = this.f50185f;
            if (list == null || i4 >= list.size()) {
                break;
            }
            ForumBean.ForumPostsBean forumPostsBean = this.f50185f.get(i4);
            if (forumPostsBean != null && forumPostsBean.getRelation_game() != null && !TextUtils.isEmpty(forumPostsBean.getRelation_game().getGame_id()) && forumPostsBean.getRelation_game().getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                forumPostsBean.getRelation_game().setDownloadTask(downloadTask);
                z3 |= true;
            }
            i4++;
        }
        if (z3) {
            d0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void f0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        ForumBaseAdapter forumBaseAdapter = this.f50187h;
        if (forumBaseAdapter != null) {
            forumBaseAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void g0(int i2) {
        try {
            if (!com.join.mgps.Util.i0.Y0(this.f50182c)) {
                com.join.mgps.Util.i0.L0(this.f50182c);
                com.join.mgps.Util.i2.a(this.f50182c).b("尚未登录，请先登录！");
                return;
            }
            ForumRequestBean.ForumPostsPraiseRequestBean e02 = com.join.mgps.Util.i0.e0(this.f50182c, i2);
            e02.setDevice_id("");
            ForumResponse<ForumData.ForumPostsPraiseData> o3 = this.f50192m.o(e02.getParams());
            if (o3 == null) {
                return;
            }
            if (o3.getError() == 706) {
                o0(i2);
                u0();
                return;
            }
            ForumData.ForumPostsPraiseData data = o3.getData();
            data.isResult();
            com.join.mgps.Util.i0.m1(e02, data);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void h0(ForumBean.GameInfo gameInfo) {
        if (gameInfo != null) {
            try {
                DownloadTask B = g1.f.G().B(gameInfo.getGame_id());
                gameInfo.setDownloadTask(B);
                Map<String, DownloadTask> map = this.f50201v;
                if (map == null || B == null || map.containsKey(B.getCrc_link_type_val())) {
                    return;
                }
                this.f50204y.add(B);
                this.f50201v.put(B.getCrc_link_type_val(), B);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    @Override // com.join.mgps.fragment.d
    protected void lazyLoad() {
    }

    public void n0() {
        XListView2 xListView2 = this.f50191l;
        if (xListView2 != null) {
            xListView2.setPullLoadEnable(new f());
        }
        com.join.mgps.customview.j jVar = this.f50186g;
        if (jVar != null) {
            jVar.onRefresh();
        }
    }

    @Override // ru.noties.scrollable.b
    public boolean o(int i2) {
        XListView2 xListView2 = this.f50191l;
        return xListView2 != null && xListView2.canScrollVertically(i2);
    }

    void o0(int i2) {
        ForumBean.ForumPostsBean next;
        List<ForumBean.ForumPostsBean> list = this.f50185f;
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<ForumBean.ForumPostsBean> it2 = this.f50185f.iterator();
        while (it2.hasNext() && (next = it2.next()) != null) {
            if (next.getPid() == i2) {
                next.setPraise(next.is_praise() ? next.getPraise() - 1 : next.getPraise() + 1);
                next.setIs_praise(!next.is_praise());
                d0();
                return;
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.join.android.app.component.video.c cVar = this.f50189j;
        if (cVar != null) {
            cVar.z();
        }
        com.join.mgps.Util.c0.a().e(this);
        this.f50200u = false;
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
                z0(a4, 1);
                return;
            case 3:
                z0(a4, 2);
                return;
            case 4:
            case 9:
            default:
                return;
            case 5:
            case 11:
                z0(a4, 5);
                return;
            case 6:
                z0(a4, 6);
                return;
            case 7:
                z0(a4, 3);
                return;
            case 8:
                z0(a4, 4);
                return;
            case 10:
                z0(a4, 7);
                return;
            case 12:
                z0(a4, 8);
                return;
            case 13:
                z0(a4, 9);
                return;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        com.join.android.app.component.video.c cVar = this.f50189j;
        if (cVar != null) {
            cVar.A();
        }
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ForumLoadingView forumLoadingView = this.f50190k;
        if (forumLoadingView != null) {
            Q(forumLoadingView.getLoadingState());
        }
        com.join.android.app.component.video.c cVar = this.f50189j;
        if (cVar != null) {
            cVar.B();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        if (getActivity() != null) {
            this.f50189j.e(absListView, i2, i4, i5);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        if (i2 == 0 && Fresco.getImagePipeline().H()) {
            Fresco.getImagePipeline().N();
        }
        if (getActivity() != null) {
            this.f50189j.i(absListView, i2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        com.join.mgps.Util.u0.e("ForumPostsFragment" + this.f50180a, "onViewCreated");
        this.f50195p = true;
    }

    @Override // com.join.mgps.fragment.d, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z3) {
        super.setUserVisibleHint(z3);
        com.join.mgps.Util.u0.e("ForumPostsFragment" + this.f50180a, "setUserVisibleHint--isVisibleToUser=" + z3 + " isInit=" + this.f50195p);
        if (z3 && this.f50193n < 1 && this.f50194o == 0) {
            J();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this.f50182c).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void u0() {
        com.join.mgps.Util.a0.c0(this.f50182c).m(this.f50182c);
    }

    void v0(int i2, ForumData.HomepageRecommendLabel homepageRecommendLabel) {
        List<RecommendLabelTag> recommend_tags = homepageRecommendLabel.getRecommend_tags();
        List<ForumBean.ForumPostsBean> post_list = homepageRecommendLabel.getPost_list();
        if (this.f50184e == null) {
            this.f50184e = new ArrayList();
        }
        if (this.f50185f == null) {
            this.f50185f = new ArrayList();
        }
        if (i2 == 1) {
            this.f50184e.clear();
            this.f50185f.clear();
            if (homepageRecommendLabel.getLabel_switcher() == 1 && recommend_tags != null && recommend_tags.size() > 0) {
                RecommendLabelTag recommendLabelTag = new RecommendLabelTag();
                recommendLabelTag.setTag_id(-1);
                recommendLabelTag.setTag_name(this.f50182c.getResources().getString(R.string.mg_f_all_tag));
                this.f50184e.add(recommendLabelTag);
                this.f50184e.addAll(recommend_tags);
            }
        }
        if (post_list != null) {
            this.f50185f.addAll(post_list);
        }
        d0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void w0(DetailResultBean detailResultBean) {
        DownloadTask downloadtaskDown;
        if (detailResultBean == null || (downloadtaskDown = detailResultBean.getDownloadtaskDown()) == null) {
            return;
        }
        boolean z3 = false;
        for (int i2 = 0; i2 < this.f50185f.size(); i2++) {
            ForumBean.ForumPostsBean forumPostsBean = this.f50185f.get(i2);
            if (forumPostsBean != null && forumPostsBean.getRelation_game() != null && !TextUtils.isEmpty(forumPostsBean.getRelation_game().getGame_id()) && forumPostsBean.getRelation_game().getGame_id().equals(downloadtaskDown.getCrc_link_type_val())) {
                forumPostsBean.getRelation_game().setDownloadTask(downloadtaskDown);
                z3 |= true;
            }
        }
        if (z3) {
            d0();
        }
        if (UtilsMy.n0(downloadtaskDown.getPay_game_amount(), downloadtaskDown.getCrc_link_type_val()) > 0) {
            UtilsMy.m3(this.f50182c, downloadtaskDown.getCrc_link_type_val());
            return;
        }
        UtilsMy.d1(downloadtaskDown, detailResultBean);
        if (UtilsMy.T0(this.f50182c, downloadtaskDown)) {
            return;
        }
        if (detailResultBean.getDown_status() == 5) {
            UtilsMy.R0(this.f50182c, downloadtaskDown);
        } else {
            UtilsMy.F0(this.f50182c, downloadtaskDown, downloadtaskDown.getTp_down_url(), downloadtaskDown.getOther_down_switch(), downloadtaskDown.getCdn_down_switch());
        }
    }

    @Override // ru.noties.scrollable.j
    public void x(int i2, long j4) {
        XListView2 xListView2 = this.f50191l;
        if (xListView2 != null) {
            xListView2.smoothScrollBy(i2, (int) j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void x0() {
        this.mHandler.postDelayed(new g(), 100L);
    }

    public void y0() {
        com.join.android.app.component.video.c cVar = this.f50189j;
        if (cVar != null) {
            cVar.F(1);
            this.f50189j.m(this.f50191l);
        }
    }

    void z0(DownloadTask downloadTask, int i2) {
        if (downloadTask == null) {
            if (i2 != 4) {
                return;
            }
            m0();
            return;
        }
        switch (i2) {
            case 1:
            case 2:
            case 7:
            case 8:
            case 9:
                k0(downloadTask);
                return;
            case 3:
                i0(downloadTask);
                return;
            case 4:
                m0();
                return;
            case 5:
                l0(downloadTask);
                return;
            case 6:
                j0(downloadTask);
                return;
            default:
                return;
        }
    }
}
