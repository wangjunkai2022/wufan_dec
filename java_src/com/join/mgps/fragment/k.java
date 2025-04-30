package com.join.mgps.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.WindowManager;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.MGMainActivity_;
import com.join.mgps.activity.MGMainClassifyFragment;
import com.join.mgps.activity.SearchHintActivity_;
import com.join.mgps.customview.SlidingTabLayout2;
import com.papa.sim.statistic.Where;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;
/* compiled from: ClassifyRankFragment.java */
@EFragment(R.layout.fragment_classify_rank)
/* loaded from: classes4.dex */
public class k extends d {

    /* renamed from: a  reason: collision with root package name */
    private com.join.mgps.customview.d0 f49124a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ViewPager f49125b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    SlidingTabLayout2 f49126c;

    /* renamed from: f  reason: collision with root package name */
    private int f49129f;

    /* renamed from: g  reason: collision with root package name */
    private Context f49130g;

    /* renamed from: d  reason: collision with root package name */
    ArrayList<Fragment> f49127d = new ArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    List<String> f49128e = new ArrayList();

    /* renamed from: h  reason: collision with root package name */
    int f49131h = 0;

    /* compiled from: ClassifyRankFragment.java */
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
            k kVar = k.this;
            kVar.f49131h = i2;
            kVar.N(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void M() {
        com.papa.sim.statistic.p.l(this.f49130g).m2(Where.battle, AccountUtil_.getInstance_(getActivity()).getUid());
        SearchHintActivity_.S1(this.f49130g).start();
    }

    void N(int i2) {
        if (getActivity() != null && (getActivity() instanceof MGMainActivity_)) {
            ((MGMainActivity_) getActivity()).setClassifyPrimaryIndex(i2);
        }
    }

    public void O(int i2) {
        com.join.mgps.customview.d0 d0Var;
        ViewPager viewPager;
        if (i2 < 0 || (d0Var = this.f49124a) == null || i2 >= d0Var.getCount() || (viewPager = this.f49125b) == null || viewPager.getCurrentItem() == i2) {
            return;
        }
        this.f49125b.setCurrentItem(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        Context context = getContext();
        this.f49130g = context;
        this.f49129f = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getWidth();
        this.f49127d.add(new j());
        this.f49127d.add(new b4());
        this.f49127d.add(new a3());
        this.f49128e.add("分类");
        this.f49128e.add("排行");
        this.f49128e.add("专题");
        com.join.mgps.customview.d0 d0Var = new com.join.mgps.customview.d0(getChildFragmentManager(), this.f49127d, this.f49128e);
        this.f49124a = d0Var;
        this.f49125b.setAdapter(d0Var);
        this.f49125b.setOffscreenPageLimit(2);
        this.f49126c.setCustomTabView(R.layout.tab_indicator, 16908308);
        this.f49126c.setSelectedIndicatorColors(-882134);
        this.f49126c.setDistributeEvenly(true);
        this.f49126c.setMarginWidth(com.join.mgps.Util.b0.a(getContext(), 5.0f));
        this.f49126c.setViewPager(this.f49125b);
        this.f49126c.setOnPageChangeListener(new a());
        initData();
        try {
            Bundle arguments = getArguments();
            if (arguments != null) {
                int i2 = arguments.getInt(MGMainClassifyFragment.H);
                if (i2 == 6) {
                    this.f49131h = 2;
                }
                if (i2 == 0) {
                    int i4 = arguments.getInt("classfyShowType");
                    if (i4 == 1) {
                        this.f49131h = 1;
                    } else if (i4 == 2) {
                        this.f49131h = 0;
                    } else if (i4 == 3) {
                        this.f49131h = 2;
                    }
                } else if (i2 == 1) {
                    this.f49131h = 0;
                } else if (i2 == 6) {
                    this.f49131h = 2;
                } else {
                    this.f49131h = 1;
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        O(this.f49131h);
        N(this.f49131h);
    }

    void initData() {
        if (getActivity() != null && (getActivity() instanceof MGMainActivity_)) {
            this.f49131h = ((MGMainActivity_) getActivity()).getClassifyPrimaryIndex();
        }
    }

    @Override // com.join.mgps.fragment.d
    protected void lazyLoad() {
    }
}
