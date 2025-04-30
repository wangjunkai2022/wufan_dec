package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.adapter.o2;
import com.join.mgps.customview.TabPageIndicator;
/* loaded from: classes3.dex */
public class TabPageBoxIndicator extends HorizontalScrollView implements f0 {

    /* renamed from: m  reason: collision with root package name */
    private static final CharSequence f46414m = "";

    /* renamed from: a  reason: collision with root package name */
    private Runnable f46415a;

    /* renamed from: b  reason: collision with root package name */
    private final View.OnClickListener f46416b;

    /* renamed from: c  reason: collision with root package name */
    private final IcsLinearLayout f46417c;

    /* renamed from: d  reason: collision with root package name */
    private ViewPager f46418d;

    /* renamed from: e  reason: collision with root package name */
    private ViewPager.OnPageChangeListener f46419e;

    /* renamed from: f  reason: collision with root package name */
    private int f46420f;

    /* renamed from: g  reason: collision with root package name */
    private int f46421g;

    /* renamed from: h  reason: collision with root package name */
    private TabPageIndicator.d f46422h;

    /* renamed from: i  reason: collision with root package name */
    private int f46423i;

    /* renamed from: j  reason: collision with root package name */
    private int f46424j;

    /* renamed from: k  reason: collision with root package name */
    private int f46425k;

    /* renamed from: l  reason: collision with root package name */
    private int f46426l;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int currentItem = TabPageBoxIndicator.this.f46418d.getCurrentItem();
            int b4 = ((e) view).b();
            TabPageBoxIndicator.this.f46418d.setCurrentItem(b4);
            if (currentItem != b4 || TabPageBoxIndicator.this.f46422h == null) {
                return;
            }
            TabPageBoxIndicator.this.f46422h.a(b4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f46428a;

        b(View view) {
            this.f46428a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            TabPageBoxIndicator.this.smoothScrollTo(this.f46428a.getLeft() - ((TabPageBoxIndicator.this.getWidth() - this.f46428a.getWidth()) / 2), 0);
            TabPageBoxIndicator.this.f46415a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f46430a;

        c(int i2) {
            this.f46430a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TabPageBoxIndicator.this.setCurrentItem(this.f46430a);
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        void a(int i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class e extends TextView {

        /* renamed from: a  reason: collision with root package name */
        private int f46432a;

        public e(Context context) {
            super(context, null, R.attr.vpiTabPageIndicatorStyle);
        }

        public int b() {
            return this.f46432a;
        }

        @Override // android.widget.TextView, android.view.View
        public void onMeasure(int i2, int i4) {
            super.onMeasure(i2, i4);
            if (TabPageBoxIndicator.this.f46420f <= 0 || getMeasuredWidth() <= TabPageBoxIndicator.this.f46420f) {
                return;
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(TabPageBoxIndicator.this.f46420f, 1073741824), i4);
        }
    }

    public TabPageBoxIndicator(Context context) {
        this(context, null);
    }

    private void e(int i2, CharSequence charSequence, int i4) {
        RadioGroup.LayoutParams layoutParams = new RadioGroup.LayoutParams(0, -1, 1.0f);
        layoutParams.setMargins(com.join.mgps.Util.b0.a(getContext(), 13.0f), com.join.mgps.Util.b0.a(getContext(), 10.0f), com.join.mgps.Util.b0.a(getContext(), 13.0f), com.join.mgps.Util.b0.a(getContext(), 9.0f));
        e eVar = new e(getContext());
        eVar.f46432a = i2;
        eVar.setFocusable(true);
        eVar.setOnClickListener(this.f46416b);
        eVar.setText(charSequence);
        eVar.setTextSize(16.0f);
        eVar.setPadding(com.join.mgps.Util.b0.a(getContext(), 18.0f), com.join.mgps.Util.b0.a(getContext(), 2.0f), com.join.mgps.Util.b0.a(getContext(), 18.0f), com.join.mgps.Util.b0.a(getContext(), 2.0f));
        eVar.setTextColor(this.f46423i);
        eVar.setGravity(17);
        eVar.setBackgroundResource(R.drawable.bg_border_8a8a8a_6);
        if (i4 != 0) {
            eVar.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, i4);
        }
        eVar.setOnClickListener(new c(i2));
        this.f46417c.addView(eVar, layoutParams);
    }

    private void f(int i2) {
        View childAt = this.f46417c.getChildAt(i2);
        Runnable runnable = this.f46415a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        b bVar = new b(childAt);
        this.f46415a = bVar;
        post(bVar);
    }

    @Override // com.join.mgps.customview.f0
    public void notifyDataSetChanged() {
        this.f46417c.removeAllViews();
        PagerAdapter adapter = this.f46418d.getAdapter();
        o2 o2Var = adapter instanceof o2 ? (o2) adapter : null;
        int count = adapter.getCount();
        for (int i2 = 0; i2 < count; i2++) {
            CharSequence pageTitle = adapter.getPageTitle(i2);
            if (pageTitle == null) {
                pageTitle = f46414m;
            }
            int i4 = R.drawable.line_main_color;
            if (o2Var != null) {
                i4 = o2Var.a(i2);
            }
            e(i2, pageTitle, i4);
        }
        if (this.f46421g > count) {
            this.f46421g = count - 1;
        }
        setCurrentItem(this.f46421g);
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f46415a;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f46415a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i4) {
        int mode = View.MeasureSpec.getMode(i2);
        boolean z3 = mode == 1073741824;
        setFillViewport(z3);
        int childCount = this.f46417c.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f46420f = -1;
        } else if (childCount > 2) {
            this.f46420f = (int) (View.MeasureSpec.getSize(i2) * 0.4f);
        } else {
            this.f46420f = View.MeasureSpec.getSize(i2) / 2;
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i2, i4);
        int measuredWidth2 = getMeasuredWidth();
        if (!z3 || measuredWidth == measuredWidth2) {
            return;
        }
        setCurrentItem(this.f46421g);
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i2) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.f46419e;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrollStateChanged(i2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i2, float f4, int i4) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.f46419e;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrolled(i2, f4, i4);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i2) {
        setCurrentItem(i2);
        ViewPager.OnPageChangeListener onPageChangeListener = this.f46419e;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageSelected(i2);
        }
    }

    @Override // com.join.mgps.customview.f0
    public void setCurrentItem(int i2) {
        ViewPager viewPager = this.f46418d;
        if (viewPager == null) {
            return;
        }
        this.f46421g = i2;
        viewPager.setCurrentItem(i2);
        int childCount = this.f46417c.getChildCount();
        int i4 = 0;
        while (i4 < childCount) {
            View childAt = this.f46417c.getChildAt(i4);
            boolean z3 = i4 == i2;
            e eVar = (e) childAt;
            if (i4 == i2) {
                eVar.setBackgroundResource(R.drawable.bg_border_f47500_6);
                eVar.setTextColor(this.f46424j);
                eVar.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, this.f46425k);
            } else {
                eVar.setBackgroundResource(R.drawable.bg_border_8a8a8a_6);
                eVar.setTextColor(this.f46423i);
                eVar.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, this.f46426l);
            }
            childAt.setSelected(z3);
            if (z3) {
                f(i2);
            }
            i4++;
        }
    }

    public void setNormalBottomDrawableBound(int i2) {
        this.f46426l = i2;
    }

    public void setNormalTextColor(int i2) {
        this.f46423i = i2;
    }

    @Override // com.join.mgps.customview.f0
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f46419e = onPageChangeListener;
    }

    public void setOnTabReselectedListener(TabPageIndicator.d dVar) {
        this.f46422h = dVar;
    }

    public void setSelectedBottomDrawableBounds(int i2) {
        this.f46425k = i2;
    }

    public void setSelectedTextColor(int i2) {
        this.f46424j = i2;
    }

    @Override // com.join.mgps.customview.f0
    public void setViewPager(ViewPager viewPager) {
        ViewPager viewPager2 = this.f46418d;
        if (viewPager2 == viewPager) {
            return;
        }
        if (viewPager2 != null) {
            viewPager2.setOnPageChangeListener(null);
        }
        if (viewPager.getAdapter() != null) {
            this.f46418d = viewPager;
            viewPager.setOnPageChangeListener(this);
            notifyDataSetChanged();
            return;
        }
        throw new IllegalStateException("ViewPager does not have adapter instance.");
    }

    public TabPageBoxIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46416b = new a();
        this.f46423i = -7697782;
        this.f46424j = -1;
        this.f46425k = R.drawable.line_main_color;
        this.f46426l = R.drawable.line_white;
        setHorizontalScrollBarEnabled(false);
        IcsLinearLayout icsLinearLayout = new IcsLinearLayout(context, R.attr.vpiTabPageIndicatorStyle);
        this.f46417c = icsLinearLayout;
        addView(icsLinearLayout, new ViewGroup.LayoutParams(-2, -1));
    }

    @Override // com.join.mgps.customview.f0
    public void setViewPager(ViewPager viewPager, int i2) {
        setViewPager(viewPager);
        setCurrentItem(i2);
    }
}
