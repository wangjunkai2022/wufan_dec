package com.join.mgps.fragment;

import android.content.Context;
import android.os.Build;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.ForumIndexActivity_;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.activity.NewArenaMainActivty_;
import com.join.mgps.activity.SearchHintActivity_;
import com.join.mgps.activity.arena.GameRoomListActivity_;
import com.join.mgps.adapter.ForumBaseAdapter;
import com.join.mgps.customview.MyGridView;
import com.join.mgps.customview.ScrollTextViewLayout;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.DiscoveryMainDataBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.GameWorldResponse;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;
/* compiled from: DiscoveryFragment.java */
@EFragment(R.layout.fragment_discovery)
/* loaded from: classes4.dex */
public class c0 extends Fragment implements View.OnClickListener, AbsListView.OnScrollListener {
    private List<DownloadTask> A;
    private ScrollTextViewLayout B;
    private ImageView C;
    com.join.android.app.component.video.c D;
    MGMainActivity E;
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    RelativeLayout f48437a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    RelativeLayout f48438b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    PtrClassicFrameLayout f48439c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f48440d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f48441e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    XListView2 f48442f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    ImageView f48443g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    TextView f48444h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    View f48445i;
    @Bean

    /* renamed from: j  reason: collision with root package name */
    com.join.mgps.Util.b f48446j;

    /* renamed from: k  reason: collision with root package name */
    private com.join.mgps.rpc.h f48447k;

    /* renamed from: m  reason: collision with root package name */
    private ForumBaseAdapter f48449m;

    /* renamed from: o  reason: collision with root package name */
    private View f48451o;

    /* renamed from: p  reason: collision with root package name */
    private LinearLayout f48452p;

    /* renamed from: q  reason: collision with root package name */
    private GridView f48453q;

    /* renamed from: r  reason: collision with root package name */
    private MyGridView f48454r;

    /* renamed from: s  reason: collision with root package name */
    private ImageView f48455s;

    /* renamed from: t  reason: collision with root package name */
    private RelativeLayout f48456t;

    /* renamed from: u  reason: collision with root package name */
    private LinearLayout f48457u;

    /* renamed from: v  reason: collision with root package name */
    private TextView f48458v;

    /* renamed from: w  reason: collision with root package name */
    private com.join.mgps.rpc.k f48459w;

    /* renamed from: l  reason: collision with root package name */
    private int f48448l = 1;

    /* renamed from: n  reason: collision with root package name */
    private boolean f48450n = false;

    /* renamed from: x  reason: collision with root package name */
    private com.join.mgps.adapter.o f48460x = null;

    /* renamed from: y  reason: collision with root package name */
    private com.join.mgps.adapter.n f48461y = null;

    /* renamed from: z  reason: collision with root package name */
    private String f48462z = "";
    String F = "DiscoveryFragment";
    private List<ForumBean.ForumPostsBean> G = new ArrayList();
    private List<DiscoveryMainDataBean.BattleGameBean> H = null;
    private int I = 0;
    private SparseArray J = new SparseArray(0);

    /* compiled from: DiscoveryFragment.java */
    /* loaded from: classes4.dex */
    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            com.papa.sim.statistic.p.l(c0.this.getActivity()).f2(AccountUtil_.getInstance_(c0.this.getActivity()).getUid(), "gameEnter");
            DiscoveryMainDataBean.BattleGameBean item = c0.this.f48460x.getItem(i2);
            if (item == null) {
                return;
            }
            GameInfoBean gameInfoBean = new GameInfoBean();
            gameInfoBean.setGame_name(item.getGame_name());
            gameInfoBean.setGame_ico(item.getGame_ico());
            gameInfoBean.setGame_id(item.getGame_id());
            GameRoomListActivity_.v4(c0.this.getActivity()).c(gameInfoBean).start();
        }
    }

    /* compiled from: DiscoveryFragment.java */
    /* loaded from: classes4.dex */
    class b implements AdapterView.OnItemClickListener {
        b() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            if (adapterView.getAdapter() == null || !(adapterView.getAdapter() instanceof com.join.mgps.adapter.n)) {
                return;
            }
            com.papa.sim.statistic.p.l(c0.this.getActivity()).f2(AccountUtil_.getInstance_(c0.this.getActivity()).getUid(), "groupEnter");
            IntentUtil.getInstance().goForumGroupActivity(adapterView.getContext(), ((com.join.mgps.adapter.n) adapterView.getAdapter()).getItem(i2).getFid(), "discovery");
        }
    }

    /* compiled from: DiscoveryFragment.java */
    /* loaded from: classes4.dex */
    class c implements com.join.mgps.listener.f {
        c() {
        }

        @Override // com.join.mgps.listener.f
        public void a(int i2) {
            int height = c0.this.f48438b.getHeight();
            if (height < c0.this.f48442f.getResources().getDimensionPixelOffset(R.dimen.wdp80)) {
                height = c0.this.f48442f.getResources().getDimensionPixelOffset(R.dimen.wdp140);
            }
            c0.this.f48442f.smoothScrollToPositionFromTop(i2, height);
        }
    }

    /* compiled from: DiscoveryFragment.java */
    /* loaded from: classes4.dex */
    class d implements com.join.mgps.customview.i {
        d() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (c0.this.f48450n) {
                return;
            }
            c0.this.X();
        }
    }

    /* compiled from: DiscoveryFragment.java */
    /* loaded from: classes4.dex */
    class e implements com.join.mgps.customview.j {
        e() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (c0.this.f48450n) {
                return;
            }
            c0.this.f48448l = 1;
            com.join.android.app.component.video.c cVar = c0.this.D;
            if (cVar != null) {
                cVar.A();
                c0.this.D.F(1);
            }
            c0.this.G.clear();
            c0.this.X();
        }
    }

    /* compiled from: DiscoveryFragment.java */
    /* loaded from: classes4.dex */
    class f extends ForumBaseAdapter.y0 {
        f() {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.y0, com.join.mgps.adapter.ForumBaseAdapter.r0
        public void a(int i2) {
            c0 c0Var = c0.this;
            if (!c0Var.isLogined(c0Var.getActivity())) {
                c0 c0Var2 = c0.this;
                c0Var2.showMessage(c0Var2.getActivity().getString(R.string.forum_user_not_login));
            } else if (!c0.this.k0()) {
                c0.this.f0();
            } else {
                c0.this.d0(i2);
                c0.this.b0(i2);
            }
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.y0, com.join.mgps.adapter.ForumBaseAdapter.r0
        public void d(int i2) {
            super.d(i2);
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(i2);
            com.join.mgps.Util.i0.v0(c0.this.getActivity(), forumPostsBean);
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.y0, com.join.mgps.adapter.ForumBaseAdapter.r0
        public void e(String str) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiscoveryFragment.java */
    /* loaded from: classes4.dex */
    public class g {

        /* renamed from: a  reason: collision with root package name */
        int f48469a = 0;

        /* renamed from: b  reason: collision with root package name */
        int f48470b = 0;

        g() {
        }
    }

    private AccountBean S(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    private void V() {
        this.f48462z = "";
        List<DownloadTask> N = g1.f.G().N(null);
        this.A = N;
        if (N == null || N.size() <= 0) {
            return;
        }
        for (DownloadTask downloadTask : this.A) {
            if (downloadTask.isIs_fight() == 1) {
                if ("".equals(this.f48462z)) {
                    this.f48462z += downloadTask.getCrc_link_type_val();
                } else {
                    this.f48462z += "," + downloadTask.getCrc_link_type_val();
                }
            }
        }
    }

    private int W() {
        int i2;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            i2 = this.I;
            if (i4 >= i2) {
                break;
            }
            g gVar = (g) this.J.get(i4);
            if (gVar != null) {
                i5 += gVar.f48469a;
            }
            i4++;
        }
        g gVar2 = (g) this.J.get(i2);
        if (gVar2 == null) {
            gVar2 = new g();
        }
        return i5 - gVar2.f48470b;
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0254  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void e0(com.join.mgps.dto.ForumBean.ForumPostsBean r24, int r25) {
        /*
            Method dump skipped, instructions count: 875
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.c0.e0(com.join.mgps.dto.ForumBean$ForumPostsBean, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLogined(Context context) {
        AccountBean S = S(getActivity());
        return S != null && com.join.mgps.Util.d2.i(S.getToken());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void M() {
    }

    public void T() {
        com.join.android.app.component.video.c cVar = this.D;
        if (cVar != null) {
            cVar.F(1);
            this.D.m(this.f48442f);
        }
    }

    public void U() {
        V();
        loadData();
        List<ForumBean.ForumPostsBean> list = this.G;
        if (list == null || list.size() != 0) {
            return;
        }
        X();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void X() {
        if (com.join.android.app.common.utils.f.j(getActivity())) {
            if (this.f48447k == null) {
                this.f48447k = com.join.mgps.rpc.impl.f.A0();
            }
            String uid = AccountUtil_.getInstance_(getActivity()).getUid();
            String token = AccountUtil_.getInstance_(getActivity()).getToken();
            if (this.f48450n) {
                return;
            }
            this.f48450n = true;
            try {
                ForumResponse<List<ForumBean.ForumPostsBean>> W = this.f48447k.W(uid, token, this.f48448l);
                if (W != null && W.getError() == 0) {
                    i0(W.getData());
                } else {
                    h0();
                }
                return;
            } catch (Exception unused) {
                h0();
                return;
            }
        }
        h0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Z() {
        this.f48441e.setVisibility(8);
        this.f48440d.setVisibility(0);
        this.f48439c.setVisibility(8);
        U();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void a0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.B = ((MGMainActivity) getActivity()).scroll_text_layout;
        this.C = ((MGMainActivity) getActivity()).downloadLine;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f48445i.getLayoutParams();
        if (Build.VERSION.SDK_INT >= 21) {
            layoutParams.height = com.join.android.app.common.utils.j.v(getContext());
        }
        this.f48445i.setLayoutParams(layoutParams);
        this.D = new com.join.android.app.component.video.c(getContext(), this.F);
        this.E = (MGMainActivity) getActivity();
        this.f48459w = com.join.mgps.rpc.impl.j.n0();
        View inflate = LayoutInflater.from(getActivity()).inflate(R.layout.part_discovery_header, (ViewGroup) null);
        this.f48451o = inflate;
        this.f48452p = (LinearLayout) inflate.findViewById(R.id.discoveryTopRl);
        this.f48453q = (GridView) this.f48451o.findViewById(R.id.discoveryTopGv);
        this.f48454r = (MyGridView) this.f48451o.findViewById(R.id.discoveryBottomGv);
        this.f48455s = (ImageView) this.f48451o.findViewById(R.id.discoverySearchIv);
        this.f48456t = (RelativeLayout) this.f48451o.findViewById(R.id.toFightRl);
        this.f48457u = (LinearLayout) this.f48451o.findViewById(R.id.toCommunityLl);
        this.f48458v = (TextView) this.f48451o.findViewById(R.id.toCommunityTx);
        View findViewById = this.f48451o.findViewById(R.id.statubar);
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) findViewById.getLayoutParams();
        layoutParams2.height = com.join.android.app.common.utils.j.v(getContext());
        findViewById.setLayoutParams(layoutParams2);
        this.f48455s.setOnClickListener(this);
        this.f48443g.setOnClickListener(this);
        this.f48456t.setOnClickListener(this);
        this.f48457u.setOnClickListener(this);
        this.f48458v.setOnClickListener(this);
        this.f48453q.setOnItemClickListener(new a());
        this.f48454r.setOnItemClickListener(new b());
        this.f48442f.addHeaderView(this.f48451o);
        ForumBaseAdapter forumBaseAdapter = new ForumBaseAdapter(getActivity(), this.D);
        this.f48449m = forumBaseAdapter;
        forumBaseAdapter.Q0(new c());
        this.f48449m.p0(this.F);
        this.f48442f.setAdapter((ListAdapter) this.f48449m);
        this.f48442f.setPreLoadCount(10);
        this.f48442f.setVerticalScrollBarEnabled(false);
        this.f48442f.setPullLoadEnable(new d());
        this.f48442f.setPullRefreshEnable(new e());
        this.f48442f.setOnScrollListener(this);
        U();
        this.f48449m.v0(new f());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void b0(int i2) {
        try {
            if (!com.join.mgps.Util.i0.Y0(getActivity())) {
                com.join.mgps.Util.i0.L0(getActivity());
                com.join.mgps.Util.i2.a(getActivity()).b("尚未登录，请先登录！");
                return;
            }
            ForumRequestBean.ForumPostsPraiseRequestBean e02 = com.join.mgps.Util.i0.e0(getActivity(), i2);
            e02.setDevice_id("");
            ForumResponse<ForumData.ForumPostsPraiseData> o3 = this.f48447k.o(e02.getParams());
            if (o3 == null) {
                return;
            }
            if (o3.getError() == 706) {
                d0(i2);
                f0();
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
    }

    void d0(int i2) {
        List<ForumBean.ForumPostsBean> list = this.G;
        if (list == null || list.size() == 0) {
            return;
        }
        int i4 = 0;
        while (true) {
            if (i4 >= this.G.size()) {
                break;
            }
            ForumBean.ForumPostsBean forumPostsBean = this.G.get(i4);
            if (forumPostsBean.getPid() == i2) {
                this.G.get(i4).setPraise(forumPostsBean.is_praise() ? forumPostsBean.getPraise() - 1 : forumPostsBean.getPraise() + 1);
                this.G.get(i4).setIs_praise(!forumPostsBean.is_praise());
            } else {
                i4++;
            }
        }
        this.f48449m.r().clear();
        for (int i5 = 0; i5 < this.G.size(); i5++) {
            e0(this.G.get(i5), i5);
        }
        this.f48449m.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f0() {
        com.join.mgps.Util.a0.c0(getActivity()).m(getActivity());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g0() {
        try {
            this.f48441e.setVisibility(0);
            this.f48440d.setVisibility(8);
            this.f48439c.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h0() {
        XListView2 xListView2 = this.f48442f;
        if (xListView2 != null) {
            xListView2.t();
            this.f48442f.u();
        }
        this.f48450n = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i0(List<ForumBean.ForumPostsBean> list) {
        if (list == null) {
            return;
        }
        if (this.f48448l == 1) {
            this.f48449m.r().clear();
            this.G.clear();
        }
        this.G.addAll(list);
        for (int size = this.G.size(); size < this.G.size(); size++) {
            e0(this.G.get(size), size);
        }
        this.f48449m.notifyDataSetChanged();
        if (this.f48442f != null) {
            if (list.size() >= 10 && list.size() != 0) {
                this.f48448l++;
                this.f48442f.t();
                this.f48442f.u();
            } else {
                this.f48442f.setNoMore();
                this.f48442f.u();
            }
        }
        this.f48450n = false;
        this.f48449m.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void j0(DiscoveryMainDataBean discoveryMainDataBean) {
        LinearLayout linearLayout = this.f48441e;
        if (linearLayout == null) {
            return;
        }
        linearLayout.setVisibility(8);
        this.f48440d.setVisibility(8);
        this.f48439c.setVisibility(0);
        List<DiscoveryMainDataBean.BattleGameBean> battle_game = discoveryMainDataBean.getBattle_game();
        this.H = battle_game;
        if (battle_game != null && battle_game.size() > 0) {
            if (this.H.size() <= 4) {
                this.f48453q.setColumnWidth(this.H.size());
            } else {
                this.f48453q.setColumnWidth(4);
            }
            com.join.mgps.adapter.o oVar = this.f48460x;
            if (oVar == null) {
                com.join.mgps.adapter.o oVar2 = new com.join.mgps.adapter.o(getActivity(), this.H, this.f48462z);
                this.f48460x = oVar2;
                this.f48453q.setAdapter((ListAdapter) oVar2);
            } else {
                oVar.c(this.H);
            }
            this.f48460x.b(this.f48462z);
        }
        List<DiscoveryMainDataBean.ForumListBean> forum_list = discoveryMainDataBean.getForum_list();
        if (forum_list == null || forum_list.size() <= 0) {
            return;
        }
        com.join.mgps.adapter.n nVar = this.f48461y;
        if (nVar == null) {
            this.f48461y = new com.join.mgps.adapter.n(getActivity(), forum_list);
        } else {
            nVar.b(forum_list);
        }
        this.f48454r.setAdapter((ListAdapter) this.f48461y);
    }

    boolean k0() {
        if (S(getActivity()) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(getActivity()).isTourist();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loadData() {
        if (com.join.android.app.common.utils.f.j(getActivity())) {
            try {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.put("uid", this.f48446j.getUid());
                linkedMultiValueMap.put("token", this.f48446j.getToken());
                linkedMultiValueMap.put("game_ids", this.f48462z);
                GameWorldResponse<DiscoveryMainDataBean> j02 = this.f48459w.j0(linkedMultiValueMap);
                if (j02 != null && j02.getData() != null && j02.getError() == 0) {
                    j0(j02.getData());
                } else {
                    g0();
                }
                return;
            } catch (Exception unused) {
                g0();
                return;
            }
        }
        g0();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.discoverySearchIv && id != R.id.discoveryTitleSearchIv) {
            switch (id) {
                case R.id.toCommunityLl /* 2131300411 */:
                case R.id.toCommunityTx /* 2131300412 */:
                    com.papa.sim.statistic.p.l(getActivity()).f2(AccountUtil_.getInstance_(getActivity()).getUid(), "communityEnter");
                    ForumIndexActivity_.G0(getContext()).start();
                    return;
                case R.id.toFightRl /* 2131300413 */:
                    NewArenaMainActivty_.F1(getActivity()).start();
                    com.papa.sim.statistic.p.l(getActivity()).f2(AccountUtil_.getInstance_(getActivity()).getUid(), "enterLobby");
                    return;
                default:
                    return;
            }
        }
        SearchHintActivity_.S1(getActivity()).start();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.join.android.app.component.video.c cVar = this.D;
        if (cVar != null) {
            cVar.z();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        super.onHiddenChanged(z3);
        if (!z3) {
            U();
            com.join.android.app.component.video.c cVar = this.D;
            if (cVar != null) {
                cVar.B();
                return;
            }
            return;
        }
        com.join.android.app.component.video.c cVar2 = this.D;
        if (cVar2 != null) {
            cVar2.A();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        com.join.android.app.component.video.c cVar;
        if (this.E.getPositionNum() == 4 && (cVar = this.D) != null) {
            cVar.A();
        }
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        com.join.android.app.component.video.c cVar;
        super.onResume();
        if (this.f48460x != null) {
            U();
            if (this.E.getPositionNum() != 4 || (cVar = this.D) == null) {
                return;
            }
            cVar.B();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.D.e(absListView, i2, i4, i5);
        this.I = i2;
        View childAt = absListView.getChildAt(0);
        if (childAt != null) {
            g gVar = (g) this.J.get(i2);
            if (gVar == null) {
                gVar = new g();
            }
            gVar.f48469a = childAt.getHeight();
            gVar.f48470b = childAt.getTop();
            this.J.append(i2, gVar);
            int W = W();
            if (W <= 20) {
                this.f48438b.setVisibility(8);
                this.f48445i.setVisibility(8);
                this.B.setDrawable(getResources().getDrawable(R.drawable.papa_download_butn));
                this.C.setImageResource(R.drawable.line_white_bg);
            } else if (W > 10) {
                this.f48445i.setVisibility(0);
                this.f48438b.setVisibility(0);
                this.B.setDrawable(getResources().getDrawable(R.drawable.papa_download_selector));
                this.C.setImageResource(R.drawable.line_grey_bg);
                if (W >= this.f48451o.getHeight()) {
                    this.f48444h.setText("悟饭头条");
                } else {
                    this.f48444h.setText("发现");
                }
            }
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        this.D.i(absListView, i2);
        if (i2 == 0 && Fresco.getImagePipeline().H()) {
            Fresco.getImagePipeline().N();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(getActivity());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(getActivity()).b(str);
    }
}
