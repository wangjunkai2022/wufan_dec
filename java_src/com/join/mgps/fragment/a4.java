package com.join.mgps.fragment;

import android.widget.RelativeLayout;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SlidingTabLayout1;
import com.join.mgps.customview.ViewPagerCompat;
import com.join.mgps.dto.PayCenterOrderRequest;
import java.util.ArrayList;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;
/* compiled from: RankFragmentNew.java */
@EFragment(R.layout.fragment_rank_new)
/* loaded from: classes4.dex */
public class a4 extends Fragment {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    SlidingTabLayout1 f48328a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    RelativeLayout f48329b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ViewPagerCompat f48330c;

    /* renamed from: d  reason: collision with root package name */
    private com.join.mgps.customview.d0 f48331d;

    /* renamed from: e  reason: collision with root package name */
    int f48332e = 1;

    /* renamed from: f  reason: collision with root package name */
    boolean f48333f = false;

    /* compiled from: RankFragmentNew.java */
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
            a4.this.f48332e = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void M() {
        if (this.f48333f) {
            this.f48329b.setVisibility(8);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(com.join.mgps.activity.d.b0(1001, "1"));
        arrayList.add(com.join.mgps.activity.d.b0(1001, PayCenterOrderRequest.PAY_TYPE_RECHARGE));
        arrayList.add(com.join.mgps.activity.d.b0(1001, "3"));
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add("  单机榜  ");
        arrayList2.add("模拟器榜");
        arrayList2.add("  网游榜  ");
        com.join.mgps.customview.d0 d0Var = new com.join.mgps.customview.d0(getChildFragmentManager(), arrayList, arrayList2);
        this.f48331d = d0Var;
        d0Var.d(arrayList, arrayList2);
        this.f48331d.notifyDataSetChanged();
        this.f48330c.setAdapter(this.f48331d);
        this.f48330c.setOffscreenPageLimit(3);
        this.f48328a.setViewPager(this.f48330c);
        N();
        this.f48328a.g();
        this.f48328a.setOnPageChangeListener(new a());
        Q(this.f48332e);
    }

    void N() {
        if (this.f48328a.getChildCount() < 4) {
            this.f48328a.setShouldExpand(true);
        } else {
            this.f48328a.setShouldExpand(false);
        }
    }

    public void O(int i2) {
        this.f48332e = i2;
    }

    public void P(boolean z3) {
        this.f48333f = z3;
    }

    void Q(int i2) {
        ViewPagerCompat viewPagerCompat = this.f48330c;
        if (viewPagerCompat != null) {
            viewPagerCompat.setCurrentItem(i2);
        }
    }
}
