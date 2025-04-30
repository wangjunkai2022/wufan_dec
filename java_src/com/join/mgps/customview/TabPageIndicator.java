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
/* loaded from: classes3.dex */
public class TabPageIndicator extends HorizontalScrollView implements f0 {

    /* renamed from: m  reason: collision with root package name */
    private static final CharSequence f46434m = "";

    /* renamed from: a  reason: collision with root package name */
    private Runnable f46435a;

    /* renamed from: b  reason: collision with root package name */
    private final View.OnClickListener f46436b;

    /* renamed from: c  reason: collision with root package name */
    private final IcsLinearLayout f46437c;

    /* renamed from: d  reason: collision with root package name */
    private ViewPager f46438d;

    /* renamed from: e  reason: collision with root package name */
    private ViewPager.OnPageChangeListener f46439e;

    /* renamed from: f  reason: collision with root package name */
    private int f46440f;

    /* renamed from: g  reason: collision with root package name */
    private int f46441g;

    /* renamed from: h  reason: collision with root package name */
    private d f46442h;

    /* renamed from: i  reason: collision with root package name */
    private int f46443i;

    /* renamed from: j  reason: collision with root package name */
    private int f46444j;

    /* renamed from: k  reason: collision with root package name */
    private int f46445k;

    /* renamed from: l  reason: collision with root package name */
    private int f46446l;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int currentItem = TabPageIndicator.this.f46438d.getCurrentItem();
            int b4 = ((e) view).b();
            TabPageIndicator.this.f46438d.setCurrentItem(b4);
            if (currentItem != b4 || TabPageIndicator.this.f46442h == null) {
                return;
            }
            TabPageIndicator.this.f46442h.a(b4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f46448a;

        b(View view) {
            this.f46448a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            TabPageIndicator.this.smoothScrollTo(this.f46448a.getLeft() - ((TabPageIndicator.this.getWidth() - this.f46448a.getWidth()) / 2), 0);
            TabPageIndicator.this.f46435a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f46450a;

        c(int i2) {
            this.f46450a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TabPageIndicator.this.setCurrentItem(this.f46450a);
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
        private int f46452a;

        public e(Context context) {
            super(context, null, R.attr.vpiTabPageIndicatorStyle);
        }

        public int b() {
            return this.f46452a;
        }

        @Override // android.widget.TextView, android.view.View
        public void onMeasure(int i2, int i4) {
            super.onMeasure(i2, i4);
            if (TabPageIndicator.this.f46440f <= 0 || getMeasuredWidth() <= TabPageIndicator.this.f46440f) {
                return;
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(TabPageIndicator.this.f46440f, 1073741824), i4);
        }
    }

    public TabPageIndicator(Context context) {
        this(context, null);
    }

    private void e(int i2, CharSequence charSequence, int i4) {
        RadioGroup.LayoutParams layoutParams = new RadioGroup.LayoutParams(0, -1, 1.0f);
        layoutParams.setMargins(40, 0, 40, 0);
        e eVar = new e(getContext());
        eVar.f46452a = i2;
        eVar.setFocusable(true);
        eVar.setOnClickListener(this.f46436b);
        eVar.setText(charSequence);
        eVar.setTextSize(16.0f);
        eVar.setTextColor(this.f46443i);
        eVar.setGravity(17);
        if (i4 != 0) {
            eVar.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, i4);
        }
        eVar.setOnClickListener(new c(i2));
        this.f46437c.addView(eVar, layoutParams);
    }

    private void f(int i2) {
        View childAt = this.f46437c.getChildAt(i2);
        Runnable runnable = this.f46435a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        b bVar = new b(childAt);
        this.f46435a = bVar;
        post(bVar);
    }

    @Override // com.join.mgps.customview.f0
    public void notifyDataSetChanged() {
        this.f46437c.removeAllViews();
        PagerAdapter adapter = this.f46438d.getAdapter();
        o2 o2Var = adapter instanceof o2 ? (o2) adapter : null;
        int count = adapter.getCount();
        for (int i2 = 0; i2 < count; i2++) {
            CharSequence pageTitle = adapter.getPageTitle(i2);
            if (pageTitle == null) {
                pageTitle = f46434m;
            }
            int i4 = R.drawable.line_main_color;
            if (o2Var != null) {
                i4 = o2Var.a(i2);
            }
            e(i2, pageTitle, i4);
        }
        if (this.f46441g > count) {
            this.f46441g = count - 1;
        }
        setCurrentItem(this.f46441g);
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f46435a;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f46435a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i4) {
        int mode = View.MeasureSpec.getMode(i2);
        boolean z3 = mode == 1073741824;
        setFillViewport(z3);
        int childCount = this.f46437c.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f46440f = -1;
        } else if (childCount > 2) {
            this.f46440f = (int) (View.MeasureSpec.getSize(i2) * 0.4f);
        } else {
            this.f46440f = View.MeasureSpec.getSize(i2) / 2;
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i2, i4);
        int measuredWidth2 = getMeasuredWidth();
        if (!z3 || measuredWidth == measuredWidth2) {
            return;
        }
        setCurrentItem(this.f46441g);
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i2) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.f46439e;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrollStateChanged(i2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i2, float f4, int i4) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.f46439e;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrolled(i2, f4, i4);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i2) {
        setCurrentItem(i2);
        ViewPager.OnPageChangeListener onPageChangeListener = this.f46439e;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageSelected(i2);
        }
    }

    @Override // com.join.mgps.customview.f0
    public void setCurrentItem(int i2) {
        ViewPager viewPager = this.f46438d;
        if (viewPager == null) {
            return;
        }
        this.f46441g = i2;
        viewPager.setCurrentItem(i2);
        int childCount = this.f46437c.getChildCount();
        int i4 = 0;
        while (i4 < childCount) {
            View childAt = this.f46437c.getChildAt(i4);
            boolean z3 = i4 == i2;
            e eVar = (e) childAt;
            if (i4 == i2) {
                eVar.setTextColor(this.f46444j);
                eVar.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, this.f46445k);
            } else {
                eVar.setTextColor(this.f46443i);
                eVar.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, this.f46446l);
            }
            childAt.setSelected(z3);
            if (z3) {
                f(i2);
            }
            i4++;
        }
    }

    public void setNormalBottomDrawableBound(int i2) {
        this.f46446l = i2;
    }

    public void setNormalTextColor(int i2) {
        this.f46443i = i2;
    }

    @Override // com.join.mgps.customview.f0
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f46439e = onPageChangeListener;
    }

    public void setOnTabReselectedListener(d dVar) {
        this.f46442h = dVar;
    }

    public void setSelectedBottomDrawableBounds(int i2) {
        this.f46445k = i2;
    }

    public void setSelectedTextColor(int i2) {
        this.f46444j = i2;
    }

    @Override // com.join.mgps.customview.f0
    public void setViewPager(ViewPager viewPager) {
        ViewPager viewPager2 = this.f46438d;
        if (viewPager2 == viewPager) {
            return;
        }
        if (viewPager2 != null) {
            viewPager2.setOnPageChangeListener(null);
        }
        if (viewPager.getAdapter() != null) {
            this.f46438d = viewPager;
            viewPager.setOnPageChangeListener(this);
            notifyDataSetChanged();
            return;
        }
        throw new IllegalStateException("ViewPager does not have adapter instance.");
    }

    public TabPageIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46436b = new a();
        this.f46443i = -9868951;
        this.f46444j = -688602;
        this.f46445k = R.drawable.line_main_color;
        this.f46446l = R.drawable.line_white;
        setHorizontalScrollBarEnabled(false);
        IcsLinearLayout icsLinearLayout = new IcsLinearLayout(context, R.attr.vpiTabPageIndicatorStyle);
        this.f46437c = icsLinearLayout;
        addView(icsLinearLayout, new ViewGroup.LayoutParams(-2, -1));
    }

    @Override // com.join.mgps.customview.f0
    public void setViewPager(ViewPager viewPager, int i2) {
        setViewPager(viewPager);
        setCurrentItem(i2);
    }
}
