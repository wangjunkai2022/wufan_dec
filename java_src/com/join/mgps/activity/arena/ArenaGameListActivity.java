package com.join.mgps.activity.arena;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.BaseFragmentActivity;
import com.join.android.app.common.utils.f;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.t0;
import com.join.mgps.adapter.s1;
import com.join.mgps.customview.TabPageIndicator;
import com.join.mgps.customview.XListView2;
import com.join.mgps.customview.i;
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
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.activity_arena_gamelist)
/* loaded from: classes3.dex */
public class ArenaGameListActivity extends BaseFragmentActivity {

    /* renamed from: r  reason: collision with root package name */
    private static final int f36303r = 10;

    /* renamed from: s  reason: collision with root package name */
    public static final int f36304s = 1;

    /* renamed from: t  reason: collision with root package name */
    public static final int f36305t = 2;

    /* renamed from: u  reason: collision with root package name */
    public static final int f36306u = 3;

    /* renamed from: v  reason: collision with root package name */
    public static final int f36307v = 4;

    /* renamed from: w  reason: collision with root package name */
    private static final int f36308w = 35;

    /* renamed from: x  reason: collision with root package name */
    private static final int f36309x = 31;

    /* renamed from: a  reason: collision with root package name */
    k f36310a;
    @Extra

    /* renamed from: b  reason: collision with root package name */
    int f36311b;
    @ViewById(R.id.title_textview)

    /* renamed from: c  reason: collision with root package name */
    TextView f36312c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f36313d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    XListView2 f36314e;

    /* renamed from: f  reason: collision with root package name */
    ViewPager f36315f;

    /* renamed from: g  reason: collision with root package name */
    TabPageIndicator f36316g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f36317h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    RelativeLayout f36318i;
    @Bean

    /* renamed from: l  reason: collision with root package name */
    com.join.mgps.Util.b f36321l;

    /* renamed from: m  reason: collision with root package name */
    private s1 f36322m;

    /* renamed from: p  reason: collision with root package name */
    private com.join.mgps.fragment.c[] f36325p;

    /* renamed from: j  reason: collision with root package name */
    private boolean f36319j = false;

    /* renamed from: k  reason: collision with root package name */
    private int f36320k = 1;

    /* renamed from: n  reason: collision with root package name */
    private List<GameInfoBean> f36323n = new ArrayList();

    /* renamed from: o  reason: collision with root package name */
    private ArrayList<GameTypeBean> f36324o = new ArrayList<>();

    /* renamed from: q  reason: collision with root package name */
    private ArrayList<GameInfoBean> f36326q = new ArrayList<>();

    /* loaded from: classes3.dex */
    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            GameRoomListActivity_.v4(ArenaGameListActivity.this).c((GameInfoBean) ArenaGameListActivity.this.f36323n.get(i2)).a(true).b(true).start();
        }
    }

    /* loaded from: classes3.dex */
    class b implements i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (ArenaGameListActivity.this.f36319j) {
                if (!f.j(ArenaGameListActivity.this)) {
                    ArenaGameListActivity.this.f36314e.t();
                    i2.a(ArenaGameListActivity.this).b(ArenaGameListActivity.this.getString(R.string.net_connect_failed));
                    return;
                }
                ArenaGameListActivity.this.M0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class c extends FragmentPagerAdapter {
        public c(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return ArenaGameListActivity.this.f36324o.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i2) {
            return ArenaGameListActivity.this.J0(i2);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int i2) {
            return ((GameTypeBean) ArenaGameListActivity.this.f36324o.get(i2)).getTitle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Fragment J0(int i2) {
        com.join.mgps.fragment.c cVar = this.f36325p[i2];
        if (cVar != null) {
            return cVar;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("game_type", this.f36324o.get(i2).getId());
        int i4 = this.f36311b;
        if (i4 == 2) {
            bundle.putInt("room_type", 35);
        } else if (i4 == 3) {
            bundle.putInt("room_type", 31);
        }
        if (i2 == 0) {
            bundle.putInt("pn", 2);
            bundle.putSerializable("datas", this.f36326q);
        } else {
            bundle.putInt("pn", 1);
        }
        com.join.mgps.fragment.c cVar2 = new com.join.mgps.fragment.c();
        cVar2.setArguments(bundle);
        this.f36325p[i2] = cVar2;
        return cVar2;
    }

    private void getData() {
        if (f.j(this)) {
            showLoading();
            K0();
            return;
        }
        N0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H0() {
        this.f36313d.setVisibility(8);
        this.f36317h.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0(ResultResMainBean<NewArenaGameListBean> resultResMainBean) {
        this.f36324o.addAll(resultResMainBean.getData().getGame_type());
        this.f36326q.addAll(resultResMainBean.getData().getGame_list());
        this.f36325p = new com.join.mgps.fragment.c[this.f36324o.size()];
        this.f36315f.setAdapter(new c(getSupportFragmentManager()));
        this.f36315f.setOffscreenPageLimit(this.f36324o.size());
        this.f36315f.setCurrentItem(0);
        this.f36316g.setNormalTextColor(getResources().getColor(R.color.color_2D6273));
        this.f36316g.setSelectedTextColor(getResources().getColor(R.color.white));
        this.f36316g.setSelectedBottomDrawableBounds(R.drawable.line_white);
        this.f36316g.setNormalBottomDrawableBound(R.drawable.trans);
        this.f36316g.setViewPager(this.f36315f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void K0() {
        if (this.f36311b == 1) {
            M0();
        } else {
            L0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void L0() {
        ResultResMainBean<NewArenaGameListBean> resultResMainBean = null;
        try {
            int i2 = this.f36311b;
            if (i2 == 2) {
                resultResMainBean = this.f36310a.w(35, 1, 1);
            } else if (i2 == 3) {
                resultResMainBean = this.f36310a.w(31, 1, 1);
            }
            if (isFinishing()) {
                return;
            }
            if (Build.VERSION.SDK_INT < 17 || !isDestroyed()) {
                if (resultResMainBean != null && resultResMainBean.getData() != null && resultResMainBean.getData().getGame_type() != null) {
                    I0(resultResMainBean);
                    H0();
                    return;
                }
                N0();
            }
        } catch (Exception unused) {
            N0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void M0() {
        try {
            ResultResMainBean<GameListBean> m4 = this.f36310a.m(this.f36321l.getAccountData().getUid(), this.f36321l.getAccountData().getToken(), this.f36320k);
            if (isFinishing()) {
                return;
            }
            if (Build.VERSION.SDK_INT < 17 || !isDestroyed()) {
                if (m4 != null && m4.getData() != null) {
                    List<GameInfoBean> game_list = m4.getData().getGame_list();
                    if (game_list != null && game_list.size() > 0) {
                        this.f36319j = game_list.size() >= 10;
                    } else {
                        this.f36319j = false;
                    }
                    O0(game_list);
                    if (this.f36320k <= 1) {
                        H0();
                    }
                    if (this.f36319j) {
                        this.f36320k++;
                        return;
                    }
                    return;
                }
                if (this.f36320k <= 1) {
                    N0();
                }
            }
        } catch (Exception e4) {
            t0.b("ArenaGameListActivity", "requestRecentGameList Exception :" + e4.getMessage());
            if (this.f36320k <= 1) {
                N0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N0() {
        this.f36314e.setVisibility(8);
        this.f36313d.setVisibility(8);
        this.f36317h.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O0(List<GameInfoBean> list) {
        if (this.f36314e.getVisibility() == 8) {
            this.f36314e.setVisibility(0);
        }
        if (list != null && list.size() > 0) {
            this.f36323n.addAll(list);
        }
        if (!this.f36319j) {
            this.f36314e.setNoMore();
            if (this.f36323n.size() <= 0) {
                this.f36314e.setVisibility(8);
                return;
            }
        } else {
            this.f36314e.t();
        }
        this.f36322m.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f36310a = com.join.mgps.rpc.impl.k.n0();
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.title_bar_layout);
        relativeLayout.setBackgroundColor(getResources().getColor(R.color.color_1F4959));
        relativeLayout.findViewById(R.id.line).setVisibility(8);
        ((ImageView) relativeLayout.findViewById(R.id.back_image)).setImageDrawable(getResources().getDrawable(R.drawable.icon_back_2));
        this.f36312c.setTextColor(-1);
        this.f36313d = (LinearLayout) findViewById(R.id.loding_layout);
        this.f36317h = (LinearLayout) findViewById(R.id.loding_faile);
        this.f36312c.setGravity(17);
        s1 s1Var = new s1(this, this.f36323n, false);
        this.f36322m = s1Var;
        this.f36314e.setAdapter((ListAdapter) s1Var);
        int i2 = this.f36311b;
        if (i2 == 1) {
            this.f36312c.setText("最近");
            this.f36314e.setVisibility(0);
            this.f36314e.setOnItemClickListener(new a());
            this.f36314e.setPullLoadEnable(new b());
            this.f36318i.setVisibility(8);
            getData();
            return;
        }
        if (i2 == 2) {
            this.f36312c.setText("FC对战");
        } else if (i2 == 3) {
            this.f36312c.setText("街机对战");
        } else if (i2 == 4) {
            this.f36312c.setText("其他");
        }
        this.f36314e.setVisibility(8);
        this.f36318i.setVisibility(0);
        this.f36315f = (ViewPager) findViewById(R.id.viewPager);
        this.f36316g = (TabPageIndicator) findViewById(R.id.pageIndicator);
        getData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        getData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoading() {
        this.f36313d.setVisibility(0);
        this.f36317h.setVisibility(8);
    }
}
