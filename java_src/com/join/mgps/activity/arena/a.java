package com.join.mgps.activity.arena;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.common.utils.f;
import com.join.android.app.common.utils.j;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.t0;
import com.join.mgps.adapter.t1;
import com.join.mgps.customview.TabPageIndicator;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.GameListBean;
import com.join.mgps.dto.GameTypeBean;
import com.join.mgps.dto.NewArenaGameListBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.rpc.k;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
/* compiled from: ArenaGameListFragmentMain.java */
@EFragment(R.layout.activity_arena_gamelist_fragment)
/* loaded from: classes3.dex */
public class a extends Fragment {

    /* renamed from: r  reason: collision with root package name */
    private static final int f36700r = 10;

    /* renamed from: s  reason: collision with root package name */
    public static final int f36701s = 1;

    /* renamed from: t  reason: collision with root package name */
    public static final int f36702t = 2;

    /* renamed from: u  reason: collision with root package name */
    public static final int f36703u = 3;

    /* renamed from: v  reason: collision with root package name */
    public static final int f36704v = 4;

    /* renamed from: w  reason: collision with root package name */
    public static final int f36705w = 35;

    /* renamed from: x  reason: collision with root package name */
    public static final int f36706x = 31;

    /* renamed from: a  reason: collision with root package name */
    k f36707a;

    /* renamed from: b  reason: collision with root package name */
    int f36708b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f36709c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    XRecyclerView f36710d;

    /* renamed from: e  reason: collision with root package name */
    ViewPager f36711e;

    /* renamed from: f  reason: collision with root package name */
    TabPageIndicator f36712f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f36713g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    RelativeLayout f36714h;

    /* renamed from: j  reason: collision with root package name */
    Activity f36716j;
    @Bean

    /* renamed from: l  reason: collision with root package name */
    com.join.mgps.Util.b f36718l;

    /* renamed from: m  reason: collision with root package name */
    private t1 f36719m;

    /* renamed from: p  reason: collision with root package name */
    private com.join.mgps.fragment.c[] f36722p;

    /* renamed from: i  reason: collision with root package name */
    private boolean f36715i = false;

    /* renamed from: k  reason: collision with root package name */
    private int f36717k = 1;

    /* renamed from: n  reason: collision with root package name */
    private List<GameInfoBean> f36720n = new ArrayList();

    /* renamed from: o  reason: collision with root package name */
    private ArrayList<GameTypeBean> f36721o = new ArrayList<>();

    /* renamed from: q  reason: collision with root package name */
    private ArrayList<GameInfoBean> f36723q = new ArrayList<>();

    /* compiled from: ArenaGameListFragmentMain.java */
    /* renamed from: com.join.mgps.activity.arena.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0157a extends GridLayoutManager.SpanSizeLookup {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GridLayoutManager f36724a;

        C0157a(GridLayoutManager gridLayoutManager) {
            this.f36724a = gridLayoutManager;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int i2) {
            if (a.this.f36720n.size() == i2) {
                return this.f36724a.getSpanCount();
            }
            return 1;
        }
    }

    /* compiled from: ArenaGameListFragmentMain.java */
    /* loaded from: classes3.dex */
    class b implements t1.e {
        b() {
        }

        @Override // com.join.mgps.adapter.t1.e
        public void a(int i2) {
            GameRoomListActivity_.v4(a.this.f36716j).c((GameInfoBean) a.this.f36720n.get(i2)).a(true).b(true).start();
        }
    }

    /* compiled from: ArenaGameListFragmentMain.java */
    /* loaded from: classes3.dex */
    class c implements XRecyclerView.f {
        c() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onLoadMore() {
            if (a.this.f36715i) {
                if (!f.j(a.this.f36716j)) {
                    a.this.f36710d.y1();
                    i2.a(a.this.f36716j).b(a.this.getString(R.string.net_connect_failed));
                    return;
                }
                a.this.W();
            }
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onRefresh() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ArenaGameListFragmentMain.java */
    /* loaded from: classes3.dex */
    public class d extends FragmentPagerAdapter {
        public d(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return a.this.f36721o.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i2) {
            return a.this.T(i2);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int i2) {
            return ((GameTypeBean) a.this.f36721o.get(i2)).getTitle();
        }
    }

    private void R() {
        if (f.j(this.f36716j)) {
            U();
        } else {
            X();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Fragment T(int i2) {
        com.join.mgps.fragment.c cVar = this.f36722p[i2];
        if (cVar != null) {
            return cVar;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("game_type", this.f36721o.get(i2).getId());
        int i4 = this.f36708b;
        if (i4 == 2) {
            bundle.putInt("room_type", 35);
        } else if (i4 == 3) {
            bundle.putInt("room_type", 31);
        }
        if (i2 == 0) {
            bundle.putInt("pn", 2);
            bundle.putSerializable("datas", this.f36723q);
        } else {
            bundle.putInt("pn", 1);
        }
        com.join.mgps.fragment.c cVar2 = new com.join.mgps.fragment.c();
        cVar2.setArguments(bundle);
        this.f36722p[i2] = cVar2;
        return cVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Q() {
        this.f36716j.finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S(ResultResMainBean<NewArenaGameListBean> resultResMainBean) {
        this.f36721o.addAll(resultResMainBean.getData().getGame_type());
        this.f36723q.addAll(resultResMainBean.getData().getGame_list());
        this.f36722p = new com.join.mgps.fragment.c[this.f36721o.size()];
        this.f36711e.setAdapter(new d(getChildFragmentManager()));
        this.f36711e.setOffscreenPageLimit(this.f36721o.size());
        this.f36711e.setCurrentItem(0);
        this.f36712f.setNormalTextColor(getResources().getColor(R.color.color_2D6273));
        this.f36712f.setSelectedTextColor(getResources().getColor(R.color.white));
        this.f36712f.setSelectedBottomDrawableBounds(R.drawable.line_white);
        this.f36712f.setNormalBottomDrawableBound(R.drawable.trans);
        this.f36712f.setViewPager(this.f36711e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void U() {
        if (this.f36708b == 1) {
            W();
        } else {
            V();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void V() {
        ResultResMainBean<NewArenaGameListBean> resultResMainBean = null;
        try {
            int i2 = this.f36708b;
            if (i2 == 2) {
                resultResMainBean = this.f36707a.w(35, 1, 1);
            } else if (i2 == 3) {
                resultResMainBean = this.f36707a.w(31, 1, 1);
            }
            if (this.f36716j.isFinishing()) {
                return;
            }
            if (Build.VERSION.SDK_INT < 17 || !this.f36716j.isDestroyed()) {
                if (resultResMainBean != null && resultResMainBean.getData() != null && resultResMainBean.getData().getGame_type() != null) {
                    S(resultResMainBean);
                    hideLoading();
                    return;
                }
                X();
            }
        } catch (Exception unused) {
            X();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void W() {
        try {
            ResultResMainBean<GameListBean> m4 = this.f36707a.m(this.f36718l.getAccountData().getUid(), this.f36718l.getAccountData().getToken(), this.f36717k);
            if (this.f36716j.isFinishing()) {
                return;
            }
            if (Build.VERSION.SDK_INT < 17 || !this.f36716j.isDestroyed()) {
                if (m4 != null && m4.getData() != null) {
                    List<GameInfoBean> game_list = m4.getData().getGame_list();
                    if (game_list != null && game_list.size() > 0) {
                        this.f36715i = game_list.size() >= 10;
                    } else {
                        this.f36715i = false;
                    }
                    a0(game_list);
                    if (this.f36717k <= 1) {
                        hideLoading();
                    }
                    if (this.f36715i) {
                        this.f36717k++;
                        return;
                    }
                    return;
                }
                if (this.f36717k <= 1) {
                    X();
                }
            }
        } catch (Exception e4) {
            t0.b("ArenaGameListActivity", "requestRecentGameList Exception :" + e4.getMessage());
            if (this.f36717k <= 1) {
                X();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void X() {
        this.f36710d.setVisibility(8);
        this.f36709c.setVisibility(8);
        this.f36713g.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z() {
        this.f36709c.setVisibility(8);
        this.f36713g.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a0(List<GameInfoBean> list) {
        if (this.f36710d.getVisibility() == 8) {
            this.f36710d.setVisibility(0);
        }
        if (list != null && list.size() > 0) {
            this.f36720n.addAll(list);
        }
        this.f36719m.e(this.f36720n);
        this.f36710d.y1();
        this.f36710d.z1();
        if (!this.f36715i) {
            this.f36710d.setNoMore();
            if (this.f36720n.size() <= 0) {
                this.f36710d.setVisibility(8);
                return;
            }
        } else {
            this.f36710d.y1();
        }
        this.f36719m.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        Bundle arguments = getArguments();
        this.f36716j = getActivity();
        this.f36708b = arguments.getInt(ArenaGameListActivity_.A);
        this.f36707a = com.join.mgps.rpc.impl.k.n0();
        t1 t1Var = new t1(this.f36716j, false);
        this.f36719m = t1Var;
        this.f36710d.setAdapter(t1Var);
        this.f36710d.setPreLoadCount(6);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(getActivity(), ((double) j.n(getActivity()).j(this.f36716j)) >= 1.9d ? 3 : 2);
        this.f36710d.setLayoutManager(gridLayoutManager);
        gridLayoutManager.setSpanSizeLookup(new C0157a(gridLayoutManager));
        if (this.f36708b == 1) {
            this.f36710d.setVisibility(0);
            this.f36719m.f(new b());
            this.f36710d.setLoadingMoreEnabled(true);
            this.f36710d.setPullRefreshEnabled(false);
            this.f36710d.setLoadingListener(new c());
            this.f36714h.setVisibility(8);
            Z();
            R();
            return;
        }
        this.f36710d.setVisibility(8);
        this.f36714h.setVisibility(0);
        this.f36711e = (ViewPager) this.f36716j.findViewById(R.id.viewPager);
        this.f36712f = (TabPageIndicator) this.f36716j.findViewById(R.id.pageIndicator);
        Z();
        R();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = me.relex.photodraweeview.d.f72676b0)
    public void hideLoading() {
        this.f36709c.setVisibility(8);
        this.f36713g.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        Z();
        R();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f36716j);
    }
}
