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
public class SlidingTabLayout2 extends HorizontalScrollView {

    /* renamed from: k  reason: collision with root package name */
    private static final int f46211k = 24;

    /* renamed from: l  reason: collision with root package name */
    private static final int f46212l = 16;

    /* renamed from: m  reason: collision with root package name */
    private static final int f46213m = 12;

    /* renamed from: a  reason: collision with root package name */
    private int f46214a;

    /* renamed from: b  reason: collision with root package name */
    private int f46215b;

    /* renamed from: c  reason: collision with root package name */
    private int f46216c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f46217d;

    /* renamed from: e  reason: collision with root package name */
    private ViewPager f46218e;

    /* renamed from: f  reason: collision with root package name */
    private SparseArray<String> f46219f;

    /* renamed from: g  reason: collision with root package name */
    private ViewPager.OnPageChangeListener f46220g;

    /* renamed from: h  reason: collision with root package name */
    private final m0 f46221h;

    /* renamed from: i  reason: collision with root package name */
    private int f46222i;

    /* renamed from: j  reason: collision with root package name */
    private List<TextView> f46223j;

    /* loaded from: classes3.dex */
    private class b implements ViewPager.OnPageChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private int f46224a;

        private b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
            this.f46224a = i2;
            if (SlidingTabLayout2.this.f46220g != null) {
                SlidingTabLayout2.this.f46220g.onPageScrollStateChanged(i2);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
            int childCount = SlidingTabLayout2.this.f46221h.getChildCount();
            if (childCount == 0 || i2 < 0 || i2 >= childCount) {
                return;
            }
            SlidingTabLayout2.this.f46221h.c(i2, f4);
            View childAt = SlidingTabLayout2.this.f46221h.getChildAt(i2);
            SlidingTabLayout2.this.h(i2, childAt != null ? (int) (childAt.getWidth() * f4) : 0);
            if (SlidingTabLayout2.this.f46220g != null) {
                SlidingTabLayout2.this.f46220g.onPageScrolled(i2, f4, i4);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            if (this.f46224a == 0) {
                SlidingTabLayout2.this.f46221h.c(i2, 0.0f);
                SlidingTabLayout2.this.h(i2, 0);
            }
            int i4 = 0;
            while (i4 < SlidingTabLayout2.this.f46221h.getChildCount()) {
                SlidingTabLayout2.this.f46221h.getChildAt(i4).setSelected(i2 == i4);
                i4++;
            }
            if (SlidingTabLayout2.this.f46220g != null) {
                SlidingTabLayout2.this.f46220g.onPageSelected(i2);
            }
            for (int i5 = 0; i5 < SlidingTabLayout2.this.f46223j.size(); i5++) {
                TextView textView = (TextView) SlidingTabLayout2.this.f46223j.get(i5);
                if (i5 == i2) {
                    textView.setTextColor(SlidingTabLayout2.this.getResources().getColor(R.color.main_yello_color));
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
            for (int i2 = 0; i2 < SlidingTabLayout2.this.f46221h.getChildCount(); i2++) {
                if (view == SlidingTabLayout2.this.f46221h.getChildAt(i2)) {
                    SlidingTabLayout2.this.f46218e.setCurrentItem(i2);
                    ((TextView) SlidingTabLayout2.this.f46221h.getChildAt(i2)).setTextColor(SlidingTabLayout2.this.getResources().getColor(R.color.main_yello_color));
                } else {
                    ((TextView) SlidingTabLayout2.this.f46221h.getChildAt(i2)).setTextColor(-10395295);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        int a(int i2);
    }

    public SlidingTabLayout2(Context context) {
        this(context, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v4, types: [android.view.View, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v5, types: [android.widget.LinearLayout, com.join.mgps.customview.m0] */
    private void g() {
        View view;
        TextView textView;
        PagerAdapter adapter = this.f46218e.getAdapter();
        c cVar = new c();
        this.f46223j.clear();
        for (int i2 = 0; i2 < adapter.getCount(); i2++) {
            if (this.f46215b != 0) {
                view = LayoutInflater.from(getContext()).inflate(this.f46215b, (ViewGroup) this.f46221h, false);
                textView = (TextView) view.findViewById(this.f46216c);
                this.f46223j.add(textView);
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
            if (this.f46217d) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
                int i4 = this.f46222i;
                layoutParams.setMargins(i4, 0, i4, 0);
            }
            textView.setText(adapter.getPageTitle(i2));
            view.setOnClickListener(cVar);
            String str = this.f46219f.get(i2, null);
            if (str != null) {
                view.setContentDescription(str);
            }
            this.f46221h.addView(view);
            if (i2 == this.f46218e.getCurrentItem()) {
                view.setSelected(true);
                textView.setTextColor(getResources().getColor(R.color.classify_title_color));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(int i2, int i4) {
        View childAt;
        int childCount = this.f46221h.getChildCount();
        if (childCount == 0 || i2 < 0 || i2 >= childCount || (childAt = this.f46221h.getChildAt(i2)) == null) {
            return;
        }
        int left = childAt.getLeft() + i4;
        if (i2 > 0 || i4 > 0) {
            left -= this.f46214a;
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
        return this.f46222i;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewPager viewPager = this.f46218e;
        if (viewPager != null) {
            h(viewPager.getCurrentItem(), 0);
        }
    }

    public void setContentDescription(int i2, String str) {
        this.f46219f.put(i2, str);
    }

    public void setCustomTabColorizer(d dVar) {
        this.f46221h.e(dVar);
    }

    public void setCustomTabView(int i2, int i4) {
        this.f46215b = i2;
        this.f46216c = i4;
    }

    public void setDistributeEvenly(boolean z3) {
        this.f46217d = z3;
    }

    public void setMarginWidth(int i2) {
        this.f46222i = i2;
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f46220g = onPageChangeListener;
    }

    public void setSelectedIndicatorColors(int... iArr) {
        this.f46221h.f(iArr);
    }

    public void setViewPager(ViewPager viewPager) {
        this.f46221h.removeAllViews();
        this.f46218e = viewPager;
        if (viewPager != null) {
            viewPager.setOnPageChangeListener(new b());
            g();
        }
    }

    public SlidingTabLayout2(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingTabLayout2(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46219f = new SparseArray<>();
        this.f46223j = new ArrayList();
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        this.f46214a = (int) (getResources().getDisplayMetrics().density * 24.0f);
        m0 m0Var = new m0(context);
        this.f46221h = m0Var;
        addView(m0Var, -1, -2);
    }
}
