package com.join.mgps.fragment;

import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.ForumActivity;
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
/* compiled from: ForumGroupPostsFragment.java */
@EFragment(R.layout.mg_forum_all_fragment)
/* loaded from: classes.dex */
public class o0 extends u0 implements AbsListView.OnScrollListener {
    private static final String C = "key_groups_data";
    private static final String D = "key_groups_id";
    private static final String E = "key_groups_name";
    private static final String F = "key_fragment_pos";

    /* renamed from: a  reason: collision with root package name */
    private int f49535a;

    /* renamed from: b  reason: collision with root package name */
    private RecommenGroupClassify f49536b;

    /* renamed from: c  reason: collision with root package name */
    private Context f49537c;

    /* renamed from: d  reason: collision with root package name */
    private int f49538d;

    /* renamed from: e  reason: collision with root package name */
    private List<RecommendLabelTag> f49539e;

    /* renamed from: f  reason: collision with root package name */
    private List<ForumBean.ForumPostsBean> f49540f;

    /* renamed from: g  reason: collision with root package name */
    private com.join.mgps.customview.j f49541g;

    /* renamed from: h  reason: collision with root package name */
    private ForumBaseAdapter f49542h;

    /* renamed from: i  reason: collision with root package name */
    private int f49543i;

    /* renamed from: j  reason: collision with root package name */
    private String f49544j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    ForumLoadingView f49545k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    XListView2 f49546l;

    /* renamed from: n  reason: collision with root package name */
    com.join.android.app.component.video.c f49548n;

    /* renamed from: o  reason: collision with root package name */
    com.join.mgps.rpc.h f49549o;

    /* renamed from: p  reason: collision with root package name */
    public int f49550p;

    /* renamed from: q  reason: collision with root package name */
    public int f49551q;

    /* renamed from: r  reason: collision with root package name */
    MyFlowLayout f49552r;

    /* renamed from: t  reason: collision with root package name */
    private com.join.mgps.rpc.d f49554t;

    /* renamed from: m  reason: collision with root package name */
    String f49547m = "ForumGroupPostsFragment";

    /* renamed from: s  reason: collision with root package name */
    List<Integer> f49553s = new ArrayList();

    /* renamed from: u  reason: collision with root package name */
    private Map<String, DownloadTask> f49555u = new ConcurrentHashMap();

    /* renamed from: v  reason: collision with root package name */
    Map<String, DownloadTask> f49556v = new HashMap();

    /* renamed from: w  reason: collision with root package name */
    Map<String, DownloadTask> f49557w = new HashMap();

    /* renamed from: x  reason: collision with root package name */
    private List<DownloadTask> f49558x = new ArrayList();

    /* renamed from: y  reason: collision with root package name */
    int f49559y = 0;

    /* renamed from: z  reason: collision with root package name */
    boolean f49560z = false;
    boolean A = true;
    com.join.mgps.customview.t B = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumGroupPostsFragment.java */
    /* loaded from: classes4.dex */
    public class a extends ForumLoadingView.e {
        a(ForumLoadingView forumLoadingView) {
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
    /* compiled from: ForumGroupPostsFragment.java */
    /* loaded from: classes4.dex */
    public class b extends ForumLoadingView.e {
        b(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumGroupPostsFragment.java */
    /* loaded from: classes4.dex */
    public class c implements com.join.mgps.customview.i {
        c() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (o0.this.b0()) {
                o0 o0Var = o0.this;
                o0Var.W(o0Var.f49550p + 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumGroupPostsFragment.java */
    /* loaded from: classes4.dex */
    public class d implements com.join.mgps.customview.j {
        d() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (o0.this.b0()) {
                if ((o0.this.getActivity() instanceof ForumActivity) && ((ForumActivity) o0.this.getActivity()).U0()) {
                    o0.this.y0();
                }
                o0 o0Var = o0.this;
                o0Var.f49551q = 0;
                o0Var.f49550p = 0;
                o0Var.W(1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumGroupPostsFragment.java */
    /* loaded from: classes4.dex */
    public class e implements com.join.mgps.listener.f {
        e() {
        }

        @Override // com.join.mgps.listener.f
        public void a(int i2) {
            o0 o0Var = o0.this;
            o0Var.f49546l.smoothScrollToPositionFromTop(i2, o0Var.f49537c.getResources().getDimensionPixelOffset(R.dimen.wdp100));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumGroupPostsFragment.java */
    /* loaded from: classes4.dex */
    public class f extends ForumBaseAdapter.y0 {
        f() {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.y0, com.join.mgps.adapter.ForumBaseAdapter.r0
        public void a(int i2) {
            o0 o0Var = o0.this;
            if (!o0Var.isLogined(o0Var.f49537c)) {
                o0 o0Var2 = o0.this;
                o0Var2.showMessage(o0Var2.f49537c.getString(R.string.forum_user_not_login));
            } else if (!o0.this.A0()) {
                o0.this.v0();
            } else {
                o0.this.p0(i2);
                o0.this.h0(i2);
            }
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.y0, com.join.mgps.adapter.ForumBaseAdapter.r0
        public void d(int i2) {
            super.d(i2);
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(i2);
            com.join.mgps.Util.i0.v0(o0.this.f49537c, forumPostsBean);
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.y0, com.join.mgps.adapter.ForumBaseAdapter.r0
        public void e(String str) {
            o0 o0Var = o0.this;
            o0Var.f49560z = true;
            o0Var.U(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumGroupPostsFragment.java */
    /* loaded from: classes4.dex */
    public class g implements XListView2.d {

        /* renamed from: a  reason: collision with root package name */
        private int f49567a;

        g() {
        }

        @Override // com.join.mgps.customview.XListView2.d
        public void a(int i2, int i4, boolean z3, boolean z4) {
            if (this.f49567a != i4) {
                boolean z5 = o0.this.getActivity() instanceof ForumActivity;
                this.f49567a = i4;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumGroupPostsFragment.java */
    /* loaded from: classes4.dex */
    public class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            XListView2 xListView2 = o0.this.f49546l;
            if (xListView2 == null) {
                return;
            }
            xListView2.u();
            o0.this.f49546l.t();
            if ((o0.this.getActivity() instanceof ForumActivity) && ((ForumActivity) o0.this.getActivity()).P0() == o0.this.f49535a) {
                ((ForumActivity) o0.this.getActivity()).g1();
            }
            o0 o0Var = o0.this;
            if (o0Var.f49551q == -1) {
                o0Var.f49546l.setNoMore();
                o0.this.R(10);
                return;
            }
            o0Var.R(2);
        }
    }

    /* compiled from: ForumGroupPostsFragment.java */
    /* loaded from: classes4.dex */
    class i implements com.join.mgps.customview.i {
        i() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (o0.this.b0()) {
                o0 o0Var = o0.this;
                o0Var.W(o0Var.f49550p + 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumGroupPostsFragment.java */
    /* loaded from: classes4.dex */
    public class j implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecommendLabelTag f49571a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ TextView f49572b;

        j(RecommendLabelTag recommendLabelTag, TextView textView) {
            this.f49571a = recommendLabelTag;
            this.f49572b = textView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean isSelected = view.isSelected();
            view.setSelected(!isSelected);
            if (isSelected) {
                if (o0.this.f49553s.contains(Integer.valueOf(this.f49571a.getTag_id()))) {
                    o0.this.f49553s.remove(Integer.valueOf(this.f49571a.getTag_id()));
                }
            } else {
                o0.this.f49553s.add(Integer.valueOf(this.f49571a.getTag_id()));
            }
            this.f49572b.getPaint().setFakeBoldText(!isSelected);
            this.f49572b.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumGroupPostsFragment.java */
    /* loaded from: classes4.dex */
    public class k extends ForumLoadingView.e {
        k(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            super.a(view);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            o0.this.R(1);
            o0.this.J();
        }
    }

    private AccountBean P(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    private void S() {
        com.join.mgps.customview.t tVar = this.B;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.B.dismiss();
    }

    private void V() {
        String string = getArguments().getString(C);
        int i2 = getArguments().getInt(F);
        int i4 = getArguments().getInt(D);
        String string2 = getArguments().getString(E);
        if (com.join.mgps.Util.d2.i(string)) {
            this.f49536b = (RecommenGroupClassify) JsonMapper.getInstance().fromJson(string, RecommenGroupClassify.class);
        }
        this.f49535a = i2;
        this.f49543i = i4;
        this.f49544j = string2;
    }

    public static Fragment X(int i2, String str, RecommenGroupClassify recommenGroupClassify, int i4) {
        p0 p0Var = new p0();
        Bundle bundle = new Bundle();
        bundle.putCharSequence(C, JsonMapper.toJsonString(recommenGroupClassify));
        bundle.putInt(F, i4);
        bundle.putInt(D, i2);
        bundle.putString(E, str);
        p0Var.setArguments(bundle);
        return p0Var;
    }

    private void a0() {
        XListView2 xListView2 = this.f49546l;
        if (xListView2 == null) {
            return;
        }
        xListView2.setPreLoadCount(com.join.mgps.Util.i0.f27593e);
        this.f49546l.setPullLoadEnable(new c());
        d dVar = new d();
        this.f49541g = dVar;
        this.f49546l.setPullRefreshEnable(dVar);
        Context context = this.f49537c;
        this.f49548n = new com.join.android.app.component.video.c(context, this.f49547m + this.f49535a);
        ForumBaseAdapter forumBaseAdapter = new ForumBaseAdapter(this.f49537c, this.f49548n);
        this.f49542h = forumBaseAdapter;
        forumBaseAdapter.Q0(new e());
        ForumBaseAdapter forumBaseAdapter2 = this.f49542h;
        forumBaseAdapter2.p0(this.f49547m + this.f49535a);
        this.f49542h.v0(new f());
        this.f49546l.setOnScrollListener(this);
        this.f49546l.setOnOverScrolled(new g());
        this.f49546l.setAdapter((ListAdapter) this.f49542h);
        R(1);
    }

    private View d0(RecommendLabelTag recommendLabelTag) {
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
        textView.setOnClickListener(new j(recommendLabelTag, textView));
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLogined(Context context) {
        AccountBean P = P(context);
        return P != null && com.join.mgps.Util.d2.i(P.getToken());
    }

    private void j0(DownloadTask downloadTask) {
        try {
            Iterator<DownloadTask> it2 = this.f49558x.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                DownloadTask next = it2.next();
                if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    this.f49555u.remove(next.getCrc_link_type_val());
                    it2.remove();
                    break;
                }
            }
            f0(downloadTask, 2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void k0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f49555u;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            f0(downloadTask, 3);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void l0(DownloadTask downloadTask) {
        UtilsMy.E3(this.f49558x, downloadTask);
        if (!this.f49555u.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f49558x.add(downloadTask);
            this.f49555u.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        f0(downloadTask, 0);
    }

    private void m0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f49555u;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f49558x.add(downloadTask);
            this.f49555u.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        DownloadTask downloadTask2 = this.f49555u.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        downloadTask2.setGameZipPath(downloadTask.getGameZipPath());
        f0(downloadTask, 1);
    }

    private void n0() {
        int i2 = 0;
        while (true) {
            List<DownloadTask> list = this.f49558x;
            if (list == null || i2 >= list.size()) {
                return;
            }
            f0(g1.f.G().B(this.f49558x.get(i2).getCrc_link_type_val()), 4);
            i2++;
        }
    }

    private void q0() {
        List<RecommendLabelTag> list = this.f49539e;
        if (list != null && list.size() >= 1) {
            if (this.f49552r == null) {
                MyFlowLayout myFlowLayout = new MyFlowLayout(this.f49537c);
                this.f49552r = myFlowLayout;
                this.f49546l.addHeaderView(myFlowLayout);
            }
            this.f49552r.removeAllViews();
            for (RecommendLabelTag recommendLabelTag : this.f49539e) {
                View d02 = d0(recommendLabelTag);
                if (d02 != null) {
                    this.f49552r.addView(d02);
                }
            }
        } else if (this.f49546l.getHeaderViewsCount() > 0) {
            this.f49546l.removeHeaderView(this.f49552r);
        }
    }

    private void r0() {
        List<RecommendLabelTag> list = this.f49539e;
        if (list == null || list.size() < 1) {
            return;
        }
        this.f49542h.e(new ForumBaseAdapter.n1(ForumBaseAdapter.ViewType.TAG_FLOW_LAYOUT, new ForumBaseAdapter.n1.a0(this.f49543i, this.f49544j, this.f49539e)));
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x023f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void t0(com.join.mgps.dto.ForumBean.ForumPostsBean r22) {
        /*
            Method dump skipped, instructions count: 843
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.o0.t0(com.join.mgps.dto.ForumBean$ForumPostsBean):void");
    }

    private void u0() {
        for (int i2 = 0; i2 < this.f49540f.size(); i2++) {
            t0(this.f49540f.get(i2));
        }
    }

    boolean A0() {
        if (P(this.f49537c) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this.f49537c).isTourist();
    }

    void J() {
        W(1);
    }

    public void Q() {
        try {
            com.join.android.app.component.video.c cVar = this.f49548n;
            if (cVar != null) {
                cVar.F(1);
                this.f49548n.m(this.f49546l);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R(int i2) {
        ForumLoadingView forumLoadingView = this.f49545k;
        if (forumLoadingView == null) {
            return;
        }
        if (i2 == 1) {
            if (forumLoadingView != null) {
                forumLoadingView.m();
                this.f49545k.j(1);
            }
        } else if (i2 == 2) {
            if (forumLoadingView != null) {
                forumLoadingView.m();
                this.f49545k.j(2);
            }
        } else if (i2 == 4) {
            forumLoadingView.j(4);
        } else if (i2 == 16) {
            forumLoadingView.setFailedMsg("加载失败~");
            ForumLoadingView forumLoadingView2 = this.f49545k;
            forumLoadingView2.setListener(new b(forumLoadingView2));
            this.f49545k.j(16);
        } else if (i2 == 9) {
            forumLoadingView.j(9);
            ForumLoadingView forumLoadingView3 = this.f49545k;
            forumLoadingView3.setListener(new k(forumLoadingView3));
            this.f49545k.j(9);
        } else if (i2 != 10) {
        } else {
            RecommenGroupClassify recommenGroupClassify = this.f49536b;
            String gname = recommenGroupClassify != null ? recommenGroupClassify.getGname() : "";
            if (com.join.mgps.Util.d2.h(gname)) {
                gname = "帖子";
            }
            ForumLoadingView forumLoadingView4 = this.f49545k;
            forumLoadingView4.setFailedMsg("没有更多" + gname + "帖哦~");
            ForumLoadingView forumLoadingView5 = this.f49545k;
            forumLoadingView5.setListener(new a(forumLoadingView5));
            this.f49545k.setReloadingVisibility(0);
            this.f49545k.j(10);
            this.f49545k.setFailedImgVisibility(8);
            this.f49545k.setReloadingVisibility(0);
            this.f49545k.setFailedReloadingRes(R.drawable.papa_loading_null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void U(String str) {
        Context context = getContext();
        if (com.join.android.app.common.utils.f.j(context)) {
            if (this.f49559y == 1) {
                return;
            }
            try {
                try {
                    AccountBean accountData = AccountUtil_.getInstance_(context).getAccountData();
                    ResultMainBean<List<DetailResultBean>> R = this.f49554t.R(RequestBeanUtil.getInstance(context).getAppDetialBean(str, accountData != null ? accountData.getUid() : 0, null));
                    if (R != null && R.getFlag() != 0) {
                        List<DetailResultBean> data = R.getMessages().getData();
                        if (data.size() != 0) {
                            DetailResultBean detailResultBean = data.get(0);
                            if (this.f49560z) {
                                x0(detailResultBean);
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
                this.f49559y = 0;
                this.f49560z = false;
            }
        }
        T("获取游戏信息失败");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0099, code lost:
        if (r12.f49551q != (-1)) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b4, code lost:
        if (r12.f49551q == (-1)) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00b6, code lost:
        r12.f49551q = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00b8, code lost:
        y0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:?, code lost:
        return;
     */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void W(int r13) {
        /*
            r12 = this;
            android.content.Context r0 = r12.f49537c
            boolean r0 = com.join.android.app.common.utils.f.j(r0)
            if (r0 == 0) goto Lc6
            r0 = 4
            r1 = 0
            r2 = -1
            int r3 = r12.f49551q     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            if (r3 != r2) goto L17
            if (r3 == r2) goto L13
            r12.f49551q = r1
        L13:
            r12.y0()
            return
        L17:
            if (r3 != r13) goto L21
            if (r3 == r2) goto L1d
            r12.f49551q = r1
        L1d:
            r12.y0()
            return
        L21:
            r12.f49551q = r13     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            android.content.Context r3 = r12.f49537c     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            com.join.mgps.Util.AccountUtil_ r3 = com.join.mgps.Util.AccountUtil_.getInstance_(r3)     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            java.lang.String r10 = r3.getUid()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            android.content.Context r3 = r12.f49537c     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            com.join.mgps.Util.AccountUtil_ r3 = com.join.mgps.Util.AccountUtil_.getInstance_(r3)     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            java.lang.String r11 = r3.getToken()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            com.join.mgps.dto.RecommenGroupClassify r3 = r12.f49536b     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            int r6 = r3.getGid()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            com.join.mgps.rpc.h r4 = r12.f49549o     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            int r5 = r12.f49543i     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            int r8 = com.join.mgps.activity.ForumActivity.D     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            int r9 = com.join.mgps.Util.i0.f27592d     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            r7 = r13
            com.join.mgps.dto.ForumResponse r3 = r4.M(r5, r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            if (r3 == 0) goto L97
            int r4 = r3.getError()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            if (r4 != 0) goto L97
            java.lang.Object r4 = r3.getData()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            if (r4 != 0) goto L65
            r12.R(r0)     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            int r13 = r12.f49551q
            if (r13 == r2) goto L61
            r12.f49551q = r1
        L61:
            r12.y0()
            return
        L65:
            java.lang.Object r3 = r3.getData()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            com.join.mgps.dto.ForumData$HomepageRecommendLabel r3 = (com.join.mgps.dto.ForumData.HomepageRecommendLabel) r3     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            java.util.List r4 = r3.getPost_list()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            if (r4 == 0) goto L86
            java.util.List r4 = r3.getPost_list()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            int r4 = r4.size()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            if (r4 != 0) goto L7c
            goto L86
        L7c:
            r12.w0(r13, r3)     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            r12.f49550p = r13     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            r3 = 2
            r12.R(r3)     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            goto L97
        L86:
            r12.f49551q = r2     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            r3 = 10
            r12.R(r3)     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9e
            int r13 = r12.f49551q
            if (r13 == r2) goto L93
            r12.f49551q = r1
        L93:
            r12.y0()
            return
        L97:
            int r13 = r12.f49551q
            if (r13 == r2) goto Lb8
            goto Lb6
        L9c:
            r13 = move-exception
            goto Lbc
        L9e:
            r3 = move-exception
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L9c
            r12.y0()     // Catch: java.lang.Throwable -> L9c
            r3 = 1
            if (r13 != r3) goto Laf
            com.join.mgps.customview.ForumLoadingView r13 = r12.f49545k     // Catch: java.lang.Throwable -> L9c
            if (r13 == 0) goto Laf
            r13.m()     // Catch: java.lang.Throwable -> L9c
        Laf:
            r12.R(r0)     // Catch: java.lang.Throwable -> L9c
            int r13 = r12.f49551q
            if (r13 == r2) goto Lb8
        Lb6:
            r12.f49551q = r1
        Lb8:
            r12.y0()
            goto Ld5
        Lbc:
            int r0 = r12.f49551q
            if (r0 == r2) goto Lc2
            r12.f49551q = r1
        Lc2:
            r12.y0()
            throw r13
        Lc6:
            r13 = 2131821062(0x7f110206, float:1.9274857E38)
            java.lang.String r13 = r12.getString(r13)
            r12.T(r13)
            r13 = 9
            r12.R(r13)
        Ld5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.o0.W(int):void");
    }

    public void Z() {
        this.f49554t = com.join.mgps.rpc.impl.c.P1();
        com.join.mgps.Util.c0.a().d(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f49549o = com.join.mgps.rpc.impl.f.A0();
        this.f49537c = getActivity();
        V();
        Z();
        a0();
        this.f49551q = 0;
        this.f49550p = 0;
        J();
    }

    boolean b0() {
        if (com.join.android.app.common.utils.f.j(this.f49537c)) {
            return true;
        }
        T(getString(R.string.net_connect_failed));
        R(9);
        y0();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void c0() {
        this.f49548n.F(1);
        this.f49548n.m(this.f49546l);
    }

    void changeDownloadTaskNumber(DownloadTask downloadTask, int i2) {
        if (downloadTask == null) {
            return;
        }
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        if (i2 == 2) {
            if (!this.f49556v.containsKey(crc_link_type_val)) {
                this.f49556v.put(crc_link_type_val, downloadTask);
            }
            if (this.f49557w.containsKey(crc_link_type_val)) {
                return;
            }
            this.f49557w.put(crc_link_type_val, downloadTask);
        } else if (i2 != 3) {
            if (i2 != 5) {
                if (i2 == 6) {
                    if (this.f49557w.containsKey(crc_link_type_val)) {
                        this.f49557w.remove(crc_link_type_val);
                        return;
                    }
                    return;
                } else if (i2 == 7) {
                    if (this.f49556v.containsKey(crc_link_type_val)) {
                        this.f49556v.remove(crc_link_type_val);
                    }
                    if (this.f49557w.containsKey(crc_link_type_val)) {
                        this.f49557w.remove(crc_link_type_val);
                        return;
                    }
                    return;
                } else if (i2 == 10) {
                    if (!this.f49556v.containsKey(crc_link_type_val)) {
                        this.f49556v.put(crc_link_type_val, downloadTask);
                    }
                    if (this.f49557w.containsKey(crc_link_type_val)) {
                        return;
                    }
                    this.f49557w.put(crc_link_type_val, downloadTask);
                    return;
                } else if (i2 != 11) {
                    return;
                }
            } else if (this.f49556v.containsKey(crc_link_type_val)) {
                this.f49556v.remove(crc_link_type_val);
            }
            if (this.f49557w.containsKey(crc_link_type_val)) {
                this.f49557w.remove(crc_link_type_val);
            }
        } else if (this.f49557w.containsKey(crc_link_type_val)) {
            this.f49557w.remove(crc_link_type_val);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e0() {
        ForumBaseAdapter forumBaseAdapter = this.f49542h;
        if (forumBaseAdapter != null && forumBaseAdapter.r() != null) {
            this.f49542h.r().clear();
        }
        r0();
        u0();
        this.f49542h.notifyDataSetChanged();
        c0();
    }

    void f0(DownloadTask downloadTask, int i2) {
        boolean z3 = false;
        for (int i4 = 0; i4 < this.f49540f.size(); i4++) {
            ForumBean.ForumPostsBean forumPostsBean = this.f49540f.get(i4);
            if (forumPostsBean != null && forumPostsBean.getRelation_game() != null && !TextUtils.isEmpty(forumPostsBean.getRelation_game().getGame_id()) && forumPostsBean.getRelation_game().getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                forumPostsBean.getRelation_game().setDownloadTask(downloadTask);
                z3 |= true;
            }
        }
        if (z3) {
            e0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void g0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        ForumBaseAdapter forumBaseAdapter = this.f49542h;
        if (forumBaseAdapter != null) {
            forumBaseAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void h0(int i2) {
        try {
            if (!com.join.mgps.Util.i0.Y0(this.f49537c)) {
                com.join.mgps.Util.i0.L0(this.f49537c);
                com.join.mgps.Util.i2.a(this.f49537c).b("尚未登录，请先登录！");
                return;
            }
            ForumRequestBean.ForumPostsPraiseRequestBean e02 = com.join.mgps.Util.i0.e0(this.f49537c, i2);
            e02.setDevice_id("");
            ForumResponse<ForumData.ForumPostsPraiseData> o3 = this.f49549o.o(e02.getParams());
            if (o3 == null) {
                return;
            }
            if (o3.getError() == 706) {
                p0(i2);
                v0();
                return;
            }
            ForumData.ForumPostsPraiseData data = o3.getData();
            data.isResult();
            com.join.mgps.Util.i0.m1(e02, data);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void i0(ForumBean.GameInfo gameInfo) {
        if (gameInfo != null) {
            try {
                DownloadTask B = g1.f.G().B(gameInfo.getGame_id());
                gameInfo.setDownloadTask(B);
                Map<String, DownloadTask> map = this.f49555u;
                if (map == null || B == null || map.containsKey(B.getCrc_link_type_val())) {
                    return;
                }
                this.f49558x.add(B);
                this.f49555u.put(B.getCrc_link_type_val(), B);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    @Override // com.join.mgps.fragment.d
    protected void lazyLoad() {
    }

    @Override // ru.noties.scrollable.b
    public boolean o(int i2) {
        XListView2 xListView2 = this.f49546l;
        return xListView2 != null && xListView2.canScrollVertically(i2);
    }

    public void o0() {
        XListView2 xListView2 = this.f49546l;
        if (xListView2 != null) {
            xListView2.setPullLoadEnable(new i());
        }
        com.join.mgps.customview.j jVar = this.f49541g;
        if (jVar != null) {
            jVar.onRefresh();
        }
    }

    public boolean onBackPressedMy() {
        Context context = this.f49537c;
        return com.join.android.app.component.video.a.c0(context, this.f49547m + this.f49535a);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.join.android.app.component.video.c cVar = this.f49548n;
        if (cVar != null) {
            cVar.z();
        }
        com.join.mgps.Util.c0.a().e(this);
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
        super.onPause();
        this.A = false;
        com.join.android.app.component.video.c cVar = this.f49548n;
        if (cVar != null) {
            cVar.A();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        FragmentActivity activity = getActivity();
        if (activity instanceof ForumActivity) {
            if (((ForumActivity) activity).P0() == this.f49535a) {
                this.A = true;
                if (this.f49546l != null) {
                    c0();
                }
            } else {
                this.A = false;
            }
        }
        R(this.f49545k.getLoadingState());
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        if (getActivity() == null || !this.A) {
            return;
        }
        this.f49548n.e(absListView, i2, i4, i5);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        if (this.A) {
            if (i2 == 0 && Fresco.getImagePipeline().H()) {
                Fresco.getImagePipeline().N();
            }
            if (getActivity() != null) {
                this.f49548n.i(absListView, i2);
            }
        }
    }

    void p0(int i2) {
        ForumBean.ForumPostsBean next;
        List<ForumBean.ForumPostsBean> list = this.f49540f;
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<ForumBean.ForumPostsBean> it2 = this.f49540f.iterator();
        while (it2.hasNext() && (next = it2.next()) != null) {
            if (next.getPid() == i2) {
                next.setPraise(next.is_praise() ? next.getPraise() - 1 : next.getPraise() + 1);
                next.setIs_praise(!next.is_praise());
                e0();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this.f49537c).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void v0() {
        com.join.mgps.Util.a0.c0(this.f49537c).m(this.f49537c);
    }

    void w0(int i2, ForumData.HomepageRecommendLabel homepageRecommendLabel) {
        List<RecommendLabelTag> recommend_tags = homepageRecommendLabel.getRecommend_tags();
        List<ForumBean.ForumPostsBean> post_list = homepageRecommendLabel.getPost_list();
        if (this.f49539e == null) {
            this.f49539e = new ArrayList();
        }
        if (this.f49540f == null) {
            this.f49540f = new ArrayList();
        }
        if (i2 == 1) {
            this.f49539e.clear();
            this.f49540f.clear();
            if (recommend_tags != null && recommend_tags.size() > 0) {
                RecommendLabelTag recommendLabelTag = new RecommendLabelTag();
                recommendLabelTag.setTag_id(-1);
                recommendLabelTag.setTag_name(this.f49537c.getResources().getString(R.string.mg_f_all_tag));
                this.f49539e.add(recommendLabelTag);
                this.f49539e.addAll(recommend_tags);
            }
        }
        this.f49540f.addAll(post_list);
        e0();
    }

    @Override // ru.noties.scrollable.j
    public void x(int i2, long j4) {
        XListView2 xListView2 = this.f49546l;
        if (xListView2 != null) {
            xListView2.smoothScrollBy(i2, (int) j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void x0(DetailResultBean detailResultBean) {
        DownloadTask downloadtaskDown;
        if (detailResultBean == null || (downloadtaskDown = detailResultBean.getDownloadtaskDown()) == null) {
            return;
        }
        boolean z3 = false;
        for (int i2 = 0; i2 < this.f49540f.size(); i2++) {
            ForumBean.ForumPostsBean forumPostsBean = this.f49540f.get(i2);
            if (forumPostsBean != null && forumPostsBean.getRelation_game() != null && !TextUtils.isEmpty(forumPostsBean.getRelation_game().getGame_id()) && forumPostsBean.getRelation_game().getGame_id().equals(downloadtaskDown.getCrc_link_type_val())) {
                forumPostsBean.getRelation_game().setDownloadTask(downloadtaskDown);
                z3 |= true;
            }
        }
        if (z3) {
            e0();
        }
        if (UtilsMy.n0(downloadtaskDown.getPay_game_amount(), downloadtaskDown.getCrc_link_type_val()) > 0) {
            UtilsMy.m3(this.f49537c, downloadtaskDown.getCrc_link_type_val());
            return;
        }
        UtilsMy.d1(downloadtaskDown, detailResultBean);
        if (UtilsMy.T0(this.f49537c, downloadtaskDown)) {
            return;
        }
        if (detailResultBean.getDown_status() == 5) {
            UtilsMy.R0(this.f49537c, downloadtaskDown);
        } else {
            UtilsMy.F0(this.f49537c, downloadtaskDown, downloadtaskDown.getTp_down_url(), downloadtaskDown.getOther_down_switch(), downloadtaskDown.getCdn_down_switch());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void y0() {
        this.mHandler.postDelayed(new h(), 1500L);
    }

    void z0(DownloadTask downloadTask, int i2) {
        if (downloadTask == null) {
            if (i2 != 4) {
                return;
            }
            n0();
            return;
        }
        switch (i2) {
            case 1:
            case 2:
            case 7:
            case 8:
            case 9:
                l0(downloadTask);
                return;
            case 3:
                j0(downloadTask);
                return;
            case 4:
                n0();
                return;
            case 5:
                m0(downloadTask);
                return;
            case 6:
                k0(downloadTask);
                return;
            default:
                return;
        }
    }
}
