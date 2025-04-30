package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class SlidingTabLayout extends HorizontalScrollView {

    /* renamed from: k  reason: collision with root package name */
    private static final int f46164k = 24;

    /* renamed from: l  reason: collision with root package name */
    private static final int f46165l = 16;

    /* renamed from: m  reason: collision with root package name */
    private static final int f46166m = 12;

    /* renamed from: a  reason: collision with root package name */
    private int f46167a;

    /* renamed from: b  reason: collision with root package name */
    private int f46168b;

    /* renamed from: c  reason: collision with root package name */
    private int f46169c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f46170d;

    /* renamed from: e  reason: collision with root package name */
    private ViewPager f46171e;

    /* renamed from: f  reason: collision with root package name */
    private SparseArray<String> f46172f;

    /* renamed from: g  reason: collision with root package name */
    private ViewPager.OnPageChangeListener f46173g;

    /* renamed from: h  reason: collision with root package name */
    private final l0 f46174h;

    /* renamed from: i  reason: collision with root package name */
    private int f46175i;

    /* renamed from: j  reason: collision with root package name */
    private List<TextView> f46176j;

    /* loaded from: classes3.dex */
    private class b implements ViewPager.OnPageChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private int f46177a;

        private b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
            this.f46177a = i2;
            if (SlidingTabLayout.this.f46173g != null) {
                SlidingTabLayout.this.f46173g.onPageScrollStateChanged(i2);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
            int childCount = SlidingTabLayout.this.f46174h.getChildCount();
            if (childCount == 0 || i2 < 0 || i2 >= childCount) {
                return;
            }
            SlidingTabLayout.this.f46174h.b(i2, f4);
            View childAt = SlidingTabLayout.this.f46174h.getChildAt(i2);
            SlidingTabLayout.this.h(i2, childAt != null ? (int) (childAt.getWidth() * f4) : 0);
            if (SlidingTabLayout.this.f46173g != null) {
                SlidingTabLayout.this.f46173g.onPageScrolled(i2, f4, i4);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            if (this.f46177a == 0) {
                SlidingTabLayout.this.f46174h.b(i2, 0.0f);
                SlidingTabLayout.this.h(i2, 0);
            }
            int i4 = 0;
            while (i4 < SlidingTabLayout.this.f46174h.getChildCount()) {
                SlidingTabLayout.this.f46174h.getChildAt(i4).setSelected(i2 == i4);
                i4++;
            }
            if (SlidingTabLayout.this.f46173g != null) {
                SlidingTabLayout.this.f46173g.onPageSelected(i2);
            }
            for (int i5 = 0; i5 < SlidingTabLayout.this.f46176j.size(); i5++) {
                TextView textView = (TextView) SlidingTabLayout.this.f46176j.get(i5);
                if (i5 == i2) {
                    textView.setTextColor(SlidingTabLayout.this.getResources().getColor(R.color.main_yello_color));
                } else {
                    textView.setTextColor(-10395295);
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
            for (int i2 = 0; i2 < SlidingTabLayout.this.f46174h.getChildCount(); i2++) {
                if (view == SlidingTabLayout.this.f46174h.getChildAt(i2)) {
                    SlidingTabLayout.this.f46171e.setCurrentItem(i2);
                    ((TextView) SlidingTabLayout.this.f46174h.getChildAt(i2)).setTextColor(SlidingTabLayout.this.getResources().getColor(R.color.main_yello_color));
                } else {
                    ((TextView) SlidingTabLayout.this.f46174h.getChildAt(i2)).setTextColor(-10395295);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        int a(int i2);
    }

    public SlidingTabLayout(Context context) {
        this(context, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v4, types: [android.view.View, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v5, types: [android.widget.LinearLayout, com.join.mgps.customview.l0] */
    private void g() {
        View view;
        TextView textView;
        PagerAdapter adapter = this.f46171e.getAdapter();
        c cVar = new c();
        this.f46176j.clear();
        for (int i2 = 0; i2 < adapter.getCount(); i2++) {
            if (this.f46168b != 0) {
                view = LayoutInflater.from(getContext()).inflate(this.f46168b, (ViewGroup) this.f46174h, false);
                textView = (TextView) view.findViewById(this.f46169c);
                this.f46176j.add(textView);
            } else {
                view = null;
                textView = null;
            }
            if (view == null) {
                view = f(getContext());
            }
            if (textView == null && TextView.class.isInstance(view)) {
                textView = view;
            }
            if (this.f46170d) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
                int i4 = this.f46175i;
                layoutParams.setMargins(i4, 0, i4, 0);
            }
            textView.setText(adapter.getPageTitle(i2));
            view.setOnClickListener(cVar);
            String str = this.f46172f.get(i2, null);
            if (str != null) {
                view.setContentDescription(str);
            }
            this.f46174h.addView(view);
            if (i2 == this.f46171e.getCurrentItem()) {
                view.setSelected(true);
                textView.setTextColor(getResources().getColor(R.color.classify_title_color));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(int i2, int i4) {
        View childAt;
        int childCount = this.f46174h.getChildCount();
        if (childCount == 0 || i2 < 0 || i2 >= childCount || (childAt = this.f46174h.getChildAt(i2)) == null) {
            return;
        }
        int left = childAt.getLeft() + i4;
        if (i2 > 0 || i4 > 0) {
            left -= this.f46167a;
        }
        scrollTo(left, 0);
    }

    protected TextView f(Context context) {
        TextView textView = new TextView(context);
        textView.setGravity(17);
        textView.setTextSize(2, 12.0f);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(16843534, typedValue, true);
        textView.setBackgroundResource(typedValue.resourceId);
        int i2 = (int) (getResources().getDisplayMetrics().density * 16.0f);
        textView.setPadding(i2, i2, i2, i2);
        return textView;
    }

    public int getMarginWidth() {
        return this.f46175i;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewPager viewPager = this.f46171e;
        if (viewPager != null) {
            h(viewPager.getCurrentItem(), 0);
        }
    }

    public void setContentDescription(int i2, String str) {
        this.f46172f.put(i2, str);
    }

    public void setCustomTabColorizer(d dVar) {
        this.f46174h.d(dVar);
    }

    public void setCustomTabView(int i2, int i4) {
        this.f46168b = i2;
        this.f46169c = i4;
    }

    public void setDistributeEvenly(boolean z3) {
        this.f46170d = z3;
    }

    public void setMarginWidth(int i2) {
        this.f46175i = i2;
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f46173g = onPageChangeListener;
    }

    public void setSelectedIndicatorColors(int... iArr) {
        this.f46174h.e(iArr);
    }

    public void setViewPager(ViewPager viewPager) {
        this.f46174h.removeAllViews();
        this.f46171e = viewPager;
        if (viewPager != null) {
            viewPager.setOnPageChangeListener(new b());
            g();
        }
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46172f = new SparseArray<>();
        this.f46176j = new ArrayList();
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        this.f46167a = (int) (getResources().getDisplayMetrics().density * 24.0f);
        l0 l0Var = new l0(context);
        this.f46174h = l0Var;
        addView(l0Var, -1, -2);
    }
}
