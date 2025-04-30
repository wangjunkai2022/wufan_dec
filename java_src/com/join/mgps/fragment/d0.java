package com.join.mgps.fragment;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import com.flyco.tablayout.SlidingTabLayout;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.ForumIndexActivity_;
import com.join.mgps.activity.NewArenaMainActivty_;
import com.join.mgps.activity.SearchHintActivity_;
import com.join.mgps.activity.arena.GameRoomListActivity_;
import com.join.mgps.adapter.x;
import com.join.mgps.customview.ViewPagerSlide;
import com.join.mgps.dto.DIscoverTypeBean;
import com.join.mgps.dto.DiscoverListData;
import com.join.mgps.dto.DiscoverListItemBean;
import com.join.mgps.dto.DiscoveryMainDataBean;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.GameWorldResponse;
import it.sephiroth.android.library.widget.AdapterView;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;
/* compiled from: DiscoveryFragmentV2.java */
@EFragment(R.layout.discovery_fragment_layout)
/* loaded from: classes4.dex */
public class d0 extends Fragment implements View.OnClickListener {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    CoordinatorLayout f48513a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    LinearLayout f48514b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f48515c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    ViewPagerSlide f48516d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    Toolbar f48517e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    SlidingTabLayout f48518f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    AppBarLayout f48519g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    RelativeLayout f48520h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    GridView f48521i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    HListView f48522j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    TextView f48523k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    NestedScrollView f48524l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    LinearLayout f48525m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    TextView f48526n;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    TextView f48527o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    TextView f48528p;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    TextView f48529q;
    @Bean

    /* renamed from: r  reason: collision with root package name */
    com.join.mgps.Util.b f48530r;

    /* renamed from: t  reason: collision with root package name */
    private com.join.mgps.rpc.k f48532t;

    /* renamed from: w  reason: collision with root package name */
    private List<DownloadTask> f48535w;

    /* renamed from: x  reason: collision with root package name */
    Context f48536x;

    /* renamed from: y  reason: collision with root package name */
    com.join.mgps.rpc.h f48537y;

    /* renamed from: s  reason: collision with root package name */
    private com.join.mgps.adapter.o f48531s = null;

    /* renamed from: u  reason: collision with root package name */
    private com.join.mgps.adapter.n f48533u = null;

    /* renamed from: v  reason: collision with root package name */
    private String f48534v = "";

    /* renamed from: z  reason: collision with root package name */
    private int f48538z = 3;
    List<DIscoverTypeBean> A = new ArrayList();
    private List<DiscoveryMainDataBean.BattleGameBean> B = null;

    /* compiled from: DiscoveryFragmentV2.java */
    /* loaded from: classes4.dex */
    class a implements AppBarLayout.OnOffsetChangedListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f48539a;

        a(int i2) {
            this.f48539a = i2;
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public void onOffsetChanged(AppBarLayout appBarLayout, int i2) {
            int i4 = -i2;
            if (this.f48539a > i4) {
                d0.this.f48518f.setVisibility(8);
                d0.this.f48529q.setVisibility(8);
            } else {
                d0.this.f48518f.setVisibility(0);
                d0.this.f48529q.setVisibility(0);
                float abs = Math.abs((i2 + this.f48539a) * 1.0f) / (appBarLayout.getTotalScrollRange() - this.f48539a);
                d0.this.f48518f.setAlpha(abs);
                d0.this.f48529q.setAlpha(abs * 0.8f);
            }
            if (i4 == appBarLayout.getTotalScrollRange()) {
                d0.this.f48518f.setAlpha(1.0f);
                d0.this.f48516d.setSlide(true);
                return;
            }
            d0.this.f48516d.setSlide(false);
        }
    }

    /* compiled from: DiscoveryFragmentV2.java */
    /* loaded from: classes4.dex */
    class b implements AdapterView.OnItemClickListener {
        b() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            com.papa.sim.statistic.p.l(d0.this.getActivity()).f2(AccountUtil_.getInstance_(d0.this.getActivity()).getUid(), "gameEnter");
            DiscoveryMainDataBean.BattleGameBean item = d0.this.f48531s.getItem(i2);
            if (item == null) {
                return;
            }
            GameInfoBean gameInfoBean = new GameInfoBean();
            gameInfoBean.setGame_name(item.getGame_name());
            gameInfoBean.setGame_ico(item.getGame_ico());
            gameInfoBean.setGame_id(item.getGame_id());
            GameRoomListActivity_.v4(d0.this.getActivity()).c(gameInfoBean).start();
        }
    }

    /* compiled from: DiscoveryFragmentV2.java */
    /* loaded from: classes4.dex */
    class c implements AdapterView.d {
        c() {
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(it.sephiroth.android.library.widget.AdapterView<?> adapterView, View view, int i2, long j4) {
            if (adapterView.getAdapter() == null || !(adapterView.getAdapter() instanceof com.join.mgps.adapter.n)) {
                return;
            }
            com.papa.sim.statistic.p.l(d0.this.getActivity()).f2(AccountUtil_.getInstance_(d0.this.getActivity()).getUid(), "groupEnter");
            IntentUtil.getInstance().goForumGroupActivity(adapterView.getContext(), ((com.join.mgps.adapter.n) adapterView.getAdapter()).getItem(i2).getFid(), "discovery");
        }
    }

    private void O() {
        this.f48534v = "";
        List<DownloadTask> N = g1.f.G().N(null);
        this.f48535w = N;
        if (N == null || N.size() <= 0) {
            return;
        }
        for (DownloadTask downloadTask : this.f48535w) {
            if (downloadTask.isIs_fight() == 1) {
                if ("".equals(this.f48534v)) {
                    this.f48534v += downloadTask.getCrc_link_type_val();
                } else {
                    this.f48534v += "," + downloadTask.getCrc_link_type_val();
                }
            }
        }
    }

    public void N() {
        O();
        loadData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.join.update.position"})
    public void P(Intent intent) {
        try {
            this.f48516d.setCurrentItem(0);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public int Q() {
        AppBarLayout appBarLayout = this.f48519g;
        if (appBarLayout != null && appBarLayout.getVisibility() == 0) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) this.f48519g.getLayoutParams()).getBehavior();
            if (behavior instanceof AppBarLayout.Behavior) {
                int topAndBottomOffset = ((AppBarLayout.Behavior) behavior).getTopAndBottomOffset();
                return (topAndBottomOffset != 0 && topAndBottomOffset == (-this.f48519g.getTotalScrollRange())) ? 2 : 1;
            }
        }
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R() {
        try {
            ForumResponse<DiscoverListData<DiscoverListItemBean>> C = this.f48537y.C(AccountUtil_.getInstance_(this.f48536x).getAccountData().getUid(), 1, 1);
            if (C != null) {
                List<DIscoverTypeBean> type_list = C.getData().getType_list();
                if (type_list != null && type_list.size() > 0) {
                    X(type_list);
                } else {
                    T();
                }
            } else {
                T();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            T();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void S() {
        U();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void T() {
        int i2 = this.f48538z;
        if (i2 > 0) {
            this.f48538z = i2 - 1;
            R();
            return;
        }
        V();
    }

    public void U() {
        AppBarLayout appBarLayout = this.f48519g;
        if (appBarLayout != null) {
            appBarLayout.setVisibility(8);
            this.f48524l.setVisibility(8);
            this.f48518f.setVisibility(0);
            this.f48518f.setAlpha(1.0f);
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) this.f48519g.getLayoutParams()).getBehavior();
            if (behavior instanceof AppBarLayout.Behavior) {
                AppBarLayout.Behavior behavior2 = (AppBarLayout.Behavior) behavior;
                if (behavior2.getTopAndBottomOffset() != this.f48519g.getTotalScrollRange()) {
                    behavior2.setTopAndBottomOffset(-this.f48519g.getTotalScrollRange());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void V() {
        List<DiscoveryMainDataBean.BattleGameBean> list = this.B;
        if (list == null || list.size() == 0) {
            try {
                this.f48515c.setVisibility(0);
                this.f48514b.setVisibility(8);
                this.f48513a.setVisibility(8);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W(DiscoveryMainDataBean discoveryMainDataBean) {
        try {
            LinearLayout linearLayout = this.f48515c;
            if (linearLayout == null || discoveryMainDataBean == null) {
                return;
            }
            linearLayout.setVisibility(8);
            this.f48514b.setVisibility(8);
            this.f48513a.setVisibility(0);
            this.B = discoveryMainDataBean.getBattle_game();
            TextView textView = this.f48527o;
            textView.setText(discoveryMainDataBean.getBattle_game_count() + "款");
            List<DiscoveryMainDataBean.BattleGameBean> list = this.B;
            if (list != null && list.size() > 0) {
                if (this.B.size() <= 3) {
                    this.f48521i.setColumnWidth(this.B.size());
                } else {
                    this.f48521i.setColumnWidth(3);
                }
                com.join.mgps.adapter.o oVar = this.f48531s;
                if (oVar == null) {
                    com.join.mgps.adapter.o oVar2 = new com.join.mgps.adapter.o(getActivity(), this.B, this.f48534v);
                    this.f48531s = oVar2;
                    this.f48521i.setAdapter((ListAdapter) oVar2);
                } else {
                    oVar.c(this.B);
                }
                this.f48531s.b(this.f48534v);
            }
            List<DiscoveryMainDataBean.ForumListBean> forum_list = discoveryMainDataBean.getForum_list();
            if (forum_list == null || forum_list.size() <= 0) {
                return;
            }
            com.join.mgps.adapter.n nVar = this.f48533u;
            if (nVar == null) {
                this.f48533u = new com.join.mgps.adapter.n(getActivity(), forum_list);
            } else {
                nVar.b(forum_list);
            }
            this.f48522j.setAdapter((ListAdapter) this.f48533u);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void X(List<DIscoverTypeBean> list) {
        try {
            this.A.clear();
            this.A.addAll(list);
            if (list != null && list.size() != 0) {
                com.join.mgps.adapter.x xVar = new com.join.mgps.adapter.x(getFragmentManager());
                ArrayList arrayList = new ArrayList();
                for (DIscoverTypeBean dIscoverTypeBean : list) {
                    b0 b0Var = new b0();
                    Bundle bundle = new Bundle();
                    bundle.putInt(com.alipay.sdk.cons.b.f9718c, dIscoverTypeBean.getTid());
                    b0Var.setArguments(bundle);
                    arrayList.add(new x.a(dIscoverTypeBean.getName(), b0Var));
                }
                xVar.d(arrayList);
                this.f48516d.setAdapter(xVar);
                ViewPagerSlide viewPagerSlide = this.f48516d;
                int i2 = 4;
                if (list.size() <= 4) {
                    i2 = list.size();
                }
                viewPagerSlide.setOffscreenPageLimit(i2);
                this.f48518f.setViewPager(this.f48516d);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        this.f48536x = getContext();
        this.f48537y = com.join.mgps.rpc.impl.f.A0();
        this.f48524l.setVisibility(8);
        this.f48532t = com.join.mgps.rpc.impl.j.n0();
        this.f48518f.setVisibility(8);
        this.f48519g.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new a(getResources().getDimensionPixelOffset(R.dimen.wdp100)));
        this.f48523k.setOnClickListener(this);
        this.f48525m.setOnClickListener(this);
        this.f48526n.setOnClickListener(this);
        this.f48527o.setOnClickListener(this);
        this.f48520h.setOnClickListener(this);
        this.f48521i.setOnItemClickListener(new b());
        this.f48522j.setOnItemClickListener(new c());
        N();
        R();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loadData() {
        if (com.join.android.app.common.utils.f.j(getActivity())) {
            try {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.put("uid", this.f48530r.getUid());
                linkedMultiValueMap.put("token", this.f48530r.getToken());
                linkedMultiValueMap.put("game_ids", this.f48534v);
                GameWorldResponse<DiscoveryMainDataBean> j02 = this.f48532t.j0(linkedMultiValueMap);
                if (j02 != null && j02.getError() == 0) {
                    W(j02.getData());
                } else {
                    V();
                }
                return;
            } catch (Exception unused) {
                V();
                return;
            }
        }
        V();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.discoveryTitleSearchIv /* 2131297157 */:
                SearchHintActivity_.S1(getActivity()).start();
                return;
            case R.id.discoveryTopRl /* 2131297160 */:
            case R.id.number /* 2131299153 */:
            case R.id.toFightRl /* 2131300413 */:
                NewArenaMainActivty_.F1(getActivity()).start();
                com.papa.sim.statistic.p.l(getActivity()).f2(AccountUtil_.getInstance_(getActivity()).getUid(), "enterLobby");
                return;
            case R.id.toCommunityLl /* 2131300411 */:
            case R.id.toCommunityTx /* 2131300412 */:
                com.papa.sim.statistic.p.l(getActivity()).f2(AccountUtil_.getInstance_(getActivity()).getUid(), "communityEnter");
                ForumIndexActivity_.G0(getContext()).start();
                return;
            default:
                return;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        super.onHiddenChanged(z3);
        if (z3) {
            return;
        }
        N();
        List<DIscoverTypeBean> list = this.A;
        if (list == null || list.size() == 0) {
            R();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        N();
        R();
    }

    public void scrollToTop() {
        AppBarLayout appBarLayout = this.f48519g;
        if (appBarLayout != null) {
            appBarLayout.setVisibility(0);
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) this.f48519g.getLayoutParams()).getBehavior();
            if (behavior instanceof AppBarLayout.Behavior) {
                AppBarLayout.Behavior behavior2 = (AppBarLayout.Behavior) behavior;
                if (behavior2.getTopAndBottomOffset() != 0) {
                    behavior2.setTopAndBottomOffset(0);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f48536x);
    }
}
