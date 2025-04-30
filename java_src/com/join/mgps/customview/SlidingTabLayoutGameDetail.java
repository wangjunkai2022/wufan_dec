package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SlidingTabLayout;
import com.join.mgps.dto.GameDetailOneTouchSkill;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class SlidingTabLayoutGameDetail extends HorizontalScrollView {

    /* renamed from: n  reason: collision with root package name */
    private static final int f46307n = 24;

    /* renamed from: o  reason: collision with root package name */
    private static final int f46308o = 16;

    /* renamed from: p  reason: collision with root package name */
    private static final int f46309p = 12;

    /* renamed from: a  reason: collision with root package name */
    private int f46310a;

    /* renamed from: b  reason: collision with root package name */
    private int f46311b;

    /* renamed from: c  reason: collision with root package name */
    private int f46312c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f46313d;

    /* renamed from: e  reason: collision with root package name */
    private ViewPager f46314e;

    /* renamed from: f  reason: collision with root package name */
    private SparseArray<String> f46315f;

    /* renamed from: g  reason: collision with root package name */
    private ViewPager.OnPageChangeListener f46316g;

    /* renamed from: h  reason: collision with root package name */
    private final l0 f46317h;

    /* renamed from: i  reason: collision with root package name */
    private int f46318i;

    /* renamed from: j  reason: collision with root package name */
    private List<View> f46319j;

    /* renamed from: k  reason: collision with root package name */
    private List<SimpleDraweeView> f46320k;

    /* renamed from: l  reason: collision with root package name */
    private List<View> f46321l;

    /* renamed from: m  reason: collision with root package name */
    private List<GameDetailOneTouchSkill> f46322m;

    /* loaded from: classes3.dex */
    private class b implements ViewPager.OnPageChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private int f46323a;

        private b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
            this.f46323a = i2;
            if (SlidingTabLayoutGameDetail.this.f46316g != null) {
                SlidingTabLayoutGameDetail.this.f46316g.onPageScrollStateChanged(i2);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
            int childCount = SlidingTabLayoutGameDetail.this.f46317h.getChildCount();
            if (childCount == 0 || i2 < 0 || i2 >= childCount) {
                return;
            }
            SlidingTabLayoutGameDetail.this.f46317h.b(i2, f4);
            View childAt = SlidingTabLayoutGameDetail.this.f46317h.getChildAt(i2);
            SlidingTabLayoutGameDetail.this.k(i2, childAt != null ? (int) (childAt.getWidth() * f4) : 0);
            if (SlidingTabLayoutGameDetail.this.f46316g != null) {
                SlidingTabLayoutGameDetail.this.f46316g.onPageScrolled(i2, f4, i4);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            if (this.f46323a == 0) {
                SlidingTabLayoutGameDetail.this.f46317h.b(i2, 0.0f);
                SlidingTabLayoutGameDetail.this.k(i2, 0);
            }
            int i4 = 0;
            while (i4 < SlidingTabLayoutGameDetail.this.f46317h.getChildCount()) {
                SlidingTabLayoutGameDetail.this.f46317h.getChildAt(i4).setSelected(i2 == i4);
                i4++;
            }
            if (SlidingTabLayoutGameDetail.this.f46316g != null) {
                SlidingTabLayoutGameDetail.this.f46316g.onPageSelected(i2);
            }
            for (int i5 = 0; i5 < SlidingTabLayoutGameDetail.this.f46319j.size(); i5++) {
                View view = (View) SlidingTabLayoutGameDetail.this.f46319j.get(i5);
                View view2 = (View) SlidingTabLayoutGameDetail.this.f46321l.get(i5);
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) SlidingTabLayoutGameDetail.this.f46320k.get(i5);
                if (i5 == i2) {
                    view2.setVisibility(0);
                    RoundingParams o3 = simpleDraweeView.getHierarchy().o();
                    if (o3 == null) {
                        o3 = RoundingParams.a();
                    }
                    o3.o(Color.parseColor("#FFB38534"));
                    o3.p(SlidingTabLayoutGameDetail.this.getResources().getDimensionPixelOffset(R.dimen.wdp2));
                    simpleDraweeView.getHierarchy().V(o3);
                } else {
                    view2.setVisibility(4);
                    RoundingParams o4 = simpleDraweeView.getHierarchy().o();
                    if (o4 == null) {
                        o4 = RoundingParams.a();
                    }
                    o4.o(Color.parseColor("#ffffff"));
                    o4.p(0.0f);
                    simpleDraweeView.getHierarchy().V(o4);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        private c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            for (int i2 = 0; i2 < SlidingTabLayoutGameDetail.this.f46317h.getChildCount(); i2++) {
                if (view == SlidingTabLayoutGameDetail.this.f46317h.getChildAt(i2)) {
                    SlidingTabLayoutGameDetail.this.f46314e.setCurrentItem(i2);
                    SlidingTabLayoutGameDetail.this.f46317h.getChildAt(i2).findViewById(R.id.indicator).setVisibility(0);
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) SlidingTabLayoutGameDetail.this.f46317h.getChildAt(i2).findViewById(R.id.image);
                    RoundingParams o3 = simpleDraweeView.getHierarchy().o();
                    o3.o(Color.parseColor("#FFB38534"));
                    o3.p(SlidingTabLayoutGameDetail.this.getResources().getDimensionPixelOffset(R.dimen.wdp2));
                    simpleDraweeView.getHierarchy().V(o3);
                } else {
                    SlidingTabLayoutGameDetail.this.f46317h.getChildAt(i2).findViewById(R.id.indicator).setVisibility(4);
                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) SlidingTabLayoutGameDetail.this.f46317h.getChildAt(i2).findViewById(R.id.image);
                    RoundingParams o4 = simpleDraweeView2.getHierarchy().o();
                    o4.p(0.0f);
                    simpleDraweeView2.getHierarchy().V(o4);
                }
            }
        }
    }

    public SlidingTabLayoutGameDetail(Context context) {
        this(context, null);
    }

    private void j() {
        PagerAdapter adapter = this.f46314e.getAdapter();
        c cVar = new c();
        this.f46319j.clear();
        this.f46321l.clear();
        this.f46320k.clear();
        for (int i2 = 0; i2 < adapter.getCount(); i2++) {
            View h4 = h(getContext());
            View findViewById = h4.findViewById(R.id.indicator);
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) h4.findViewById(R.id.image);
            this.f46319j.add(h4);
            this.f46320k.add(simpleDraweeView);
            this.f46321l.add(findViewById);
            if (this.f46313d) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) h4.getLayoutParams();
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
                int i4 = this.f46318i;
                layoutParams.setMargins(i4, 0, i4, 0);
            }
            MyImageLoader.h(simpleDraweeView, this.f46322m.get(i2).getPic());
            h4.setOnClickListener(cVar);
            String str = this.f46315f.get(i2, null);
            if (str != null) {
                h4.setContentDescription(str);
            }
            this.f46317h.addView(h4);
            simpleDraweeView.getHierarchy().o();
            simpleDraweeView.invalidate();
            if (i2 == this.f46314e.getCurrentItem()) {
                h4.setSelected(true);
                findViewById.setVisibility(0);
                RoundingParams o3 = simpleDraweeView.getHierarchy().o();
                o3.o(Color.parseColor("#FFB38534"));
                o3.p(getResources().getDimensionPixelOffset(R.dimen.wdp2));
                simpleDraweeView.getHierarchy().V(o3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(int i2, int i4) {
        View childAt;
        int childCount = this.f46317h.getChildCount();
        if (childCount == 0 || i2 < 0 || i2 >= childCount || (childAt = this.f46317h.getChildAt(i2)) == null) {
            return;
        }
        int left = childAt.getLeft() + i4;
        if (i2 > 0 || i4 > 0) {
            left -= this.f46310a;
        }
        scrollTo(left, 0);
    }

    public List<GameDetailOneTouchSkill> getData() {
        return this.f46322m;
    }

    public int getMarginWidth() {
        return this.f46318i;
    }

    protected View h(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setGravity(1);
        linearLayout.setOrientation(1);
        ImageView i2 = i(context);
        i2.setId(R.id.image);
        linearLayout.addView(i2);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) i2.getLayoutParams();
        layoutParams.gravity = 17;
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.wdp10);
        layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.wdp122);
        layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.wdp122);
        layoutParams.setMargins(dimensionPixelOffset, 0, dimensionPixelOffset, 0);
        ImageView imageView = new ImageView(context);
        imageView.setImageResource(R.drawable.ic_trigon);
        imageView.setId(R.id.indicator);
        linearLayout.addView(imageView);
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.wdp22);
        layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.wdp19);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setVisibility(4);
        return linearLayout;
    }

    public ImageView i(Context context) {
        SimpleDraweeView simpleDraweeView = new SimpleDraweeView(context);
        simpleDraweeView.getHierarchy().H(R.drawable.main_normal_icon);
        simpleDraweeView.getHierarchy().B(R.drawable.main_normal_icon);
        simpleDraweeView.getHierarchy().V(RoundingParams.a());
        return simpleDraweeView;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewPager viewPager = this.f46314e;
        if (viewPager != null) {
            k(viewPager.getCurrentItem(), 0);
        }
    }

    public void setContentDescription(int i2, String str) {
        this.f46315f.put(i2, str);
    }

    public void setCustomTabColorizer(SlidingTabLayout.d dVar) {
        this.f46317h.d(dVar);
    }

    public void setCustomTabView(int i2, int i4) {
        this.f46311b = i2;
        this.f46312c = i4;
    }

    public void setData(List<GameDetailOneTouchSkill> list) {
        this.f46322m.clear();
        if (list != null) {
            this.f46322m.addAll(list);
        }
    }

    public void setDistributeEvenly(boolean z3) {
        this.f46313d = z3;
    }

    public void setMarginWidth(int i2) {
        this.f46318i = i2;
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f46316g = onPageChangeListener;
    }

    public void setSelectedIndicatorColors(int... iArr) {
        this.f46317h.e(iArr);
    }

    public void setViewPager(ViewPager viewPager) {
        this.f46317h.removeAllViews();
        this.f46314e = viewPager;
        if (viewPager != null) {
            viewPager.setOnPageChangeListener(new b());
            j();
        }
    }

    public SlidingTabLayoutGameDetail(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingTabLayoutGameDetail(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46315f = new SparseArray<>();
        this.f46319j = new ArrayList();
        this.f46320k = new ArrayList();
        this.f46321l = new ArrayList();
        this.f46322m = new ArrayList();
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        this.f46310a = (int) (getResources().getDisplayMetrics().density * 24.0f);
        l0 l0Var = new l0(context);
        this.f46317h = l0Var;
        l0Var.e(0);
        addView(l0Var, -1, -2);
    }
}
