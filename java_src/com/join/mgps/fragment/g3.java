package com.join.mgps.fragment;

import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.customview.SlidingTabLayout1;
import com.join.mgps.customview.ViewPagerCompat;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Where;
import java.util.ArrayList;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
/* compiled from: MarketFragment.java */
@EFragment(R.layout.fragment_market_new)
/* loaded from: classes4.dex */
public class g3 extends Fragment {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    SlidingTabLayout1 f48750a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ViewPagerCompat f48751b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f48752c;
    @Pref

    /* renamed from: d  reason: collision with root package name */
    PrefDef_ f48753d;

    /* renamed from: e  reason: collision with root package name */
    private com.join.mgps.customview.d0 f48754e;

    /* renamed from: f  reason: collision with root package name */
    int f48755f = 0;

    /* renamed from: g  reason: collision with root package name */
    com.join.mgps.activity.f2 f48756g;

    /* renamed from: h  reason: collision with root package name */
    c4 f48757h;

    /* compiled from: MarketFragment.java */
    /* loaded from: classes4.dex */
    class a implements ViewPager.OnPageChangeListener {
        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            if (i2 == 0) {
                g3.this.O();
            } else if (i2 == 1) {
                g3.this.f48756g.j1();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void M() {
        ArrayList arrayList = new ArrayList();
        this.f48756g = new com.join.mgps.activity.g2();
        this.f48757h = new d4();
        arrayList.add(this.f48756g);
        arrayList.add(this.f48757h);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add("首页");
        arrayList2.add("排行");
        com.join.mgps.customview.d0 d0Var = new com.join.mgps.customview.d0(getChildFragmentManager(), arrayList, arrayList2);
        this.f48754e = d0Var;
        d0Var.d(arrayList, arrayList2);
        this.f48754e.notifyDataSetChanged();
        this.f48751b.setAdapter(this.f48754e);
        this.f48751b.setOffscreenPageLimit(3);
        this.f48750a.setViewPager(this.f48751b);
        Q();
        this.f48750a.g();
        this.f48750a.setOnPageChangeListener(new a());
        R(this.f48755f);
        if (com.join.mgps.Util.d2.i(this.f48753d.defaultSearchKeyword().d())) {
            this.f48752c.setText(this.f48753d.defaultSearchKeyword().d());
        }
    }

    public void N() {
        com.join.mgps.activity.f2 f2Var;
        ViewPagerCompat viewPagerCompat = this.f48751b;
        if (viewPagerCompat == null || viewPagerCompat.getCurrentItem() != 0 || (f2Var = this.f48756g) == null) {
            return;
        }
        f2Var.f0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 400)
    public void O() {
        this.f48756g.f0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void P() {
        com.papa.sim.statistic.p.l(getActivity()).m2(Where.index, AccountUtil_.getInstance_(getActivity()).getUid());
        IntentUtil.getInstance().goSearchHintActivity(getActivity(), "");
    }

    void Q() {
        if (this.f48750a.getChildCount() < 4) {
            this.f48750a.setShouldExpand(true);
        } else {
            this.f48750a.setShouldExpand(false);
        }
    }

    void R(int i2) {
        ViewPagerCompat viewPagerCompat = this.f48751b;
        if (viewPagerCompat != null) {
            viewPagerCompat.setCurrentItem(i2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        super.onHiddenChanged(z3);
        if (z3) {
            this.f48756g.j1();
        }
    }
}
