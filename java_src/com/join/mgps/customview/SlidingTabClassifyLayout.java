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
import com.join.mgps.customview.SlidingTabLayout;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class SlidingTabClassifyLayout extends HorizontalScrollView {

    /* renamed from: n  reason: collision with root package name */
    private static final int f46115n = 24;

    /* renamed from: o  reason: collision with root package name */
    private static final int f46116o = 16;

    /* renamed from: p  reason: collision with root package name */
    private static final int f46117p = 12;

    /* renamed from: a  reason: collision with root package name */
    private int f46118a;

    /* renamed from: b  reason: collision with root package name */
    private int f46119b;

    /* renamed from: c  reason: collision with root package name */
    private int f46120c;

    /* renamed from: d  reason: collision with root package name */
    private int f46121d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f46122e;

    /* renamed from: f  reason: collision with root package name */
    private ViewPager f46123f;

    /* renamed from: g  reason: collision with root package name */
    private SparseArray<String> f46124g;

    /* renamed from: h  reason: collision with root package name */
    private ViewPager.OnPageChangeListener f46125h;

    /* renamed from: i  reason: collision with root package name */
    private final l0 f46126i;

    /* renamed from: j  reason: collision with root package name */
    private List<TextView> f46127j;

    /* renamed from: k  reason: collision with root package name */
    private List<TextView> f46128k;

    /* renamed from: l  reason: collision with root package name */
    LinearLayout.LayoutParams f46129l;

    /* renamed from: m  reason: collision with root package name */
    LinearLayout.LayoutParams f46130m;

    /* loaded from: classes3.dex */
    private class b implements ViewPager.OnPageChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private int f46131a;

        private b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
            this.f46131a = i2;
            if (SlidingTabClassifyLayout.this.f46125h != null) {
                SlidingTabClassifyLayout.this.f46125h.onPageScrollStateChanged(i2);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
            int childCount = SlidingTabClassifyLayout.this.f46126i.getChildCount();
            if (childCount == 0 || i2 < 0 || i2 >= childCount) {
                return;
            }
            SlidingTabClassifyLayout.this.f46126i.b(i2, f4);
            View childAt = SlidingTabClassifyLayout.this.f46126i.getChildAt(i2);
            SlidingTabClassifyLayout.this.i(i2, childAt != null ? (int) (childAt.getWidth() * f4) : 0);
            if (SlidingTabClassifyLayout.this.f46125h != null) {
                SlidingTabClassifyLayout.this.f46125h.onPageScrolled(i2, f4, i4);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            if (this.f46131a == 0) {
                SlidingTabClassifyLayout.this.f46126i.b(i2, 0.0f);
                SlidingTabClassifyLayout.this.i(i2, 0);
            }
            int i4 = 0;
            while (i4 < SlidingTabClassifyLayout.this.f46126i.getChildCount()) {
                SlidingTabClassifyLayout.this.f46126i.getChildAt(i4).setSelected(i2 == i4);
                i4++;
            }
            if (SlidingTabClassifyLayout.this.f46125h != null) {
                SlidingTabClassifyLayout.this.f46125h.onPageSelected(i2);
            }
            for (int i5 = 0; i5 < SlidingTabClassifyLayout.this.f46127j.size(); i5++) {
                TextView textView = (TextView) SlidingTabClassifyLayout.this.f46128k.get(i5);
                TextView textView2 = (TextView) SlidingTabClassifyLayout.this.f46127j.get(i5);
                if (i5 == i2) {
                    textView2.setBackgroundColor(-1);
                    textView2.setTextColor(SlidingTabClassifyLayout.this.getResources().getColor(R.color.classify_title_color));
                    textView.setBackgroundColor(-1);
                } else {
                    textView2.setBackgroundColor(-1);
                    textView2.setTextColor(SlidingTabClassifyLayout.this.getResources().getColor(R.color.classify_plat_color));
                    textView.setBackgroundColor(-1);
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
            for (int i2 = 0; i2 < SlidingTabClassifyLayout.this.f46126i.getChildCount(); i2++) {
                if (view == SlidingTabClassifyLayout.this.f46126i.getChildAt(i2)) {
                    SlidingTabClassifyLayout.this.f46123f.setCurrentItem(i2);
                    return;
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        int a(int i2);
    }

    public SlidingTabClassifyLayout(Context context) {
        this(context, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v4, types: [android.view.View, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v4, types: [android.widget.LinearLayout, com.join.mgps.customview.l0] */
    private void h() {
        View view;
        TextView textView;
        TextView textView2;
        PagerAdapter adapter = this.f46123f.getAdapter();
        c cVar = new c();
        for (int i2 = 0; i2 < adapter.getCount(); i2++) {
            if (this.f46119b != 0) {
                view = LayoutInflater.from(getContext()).inflate(this.f46119b, (ViewGroup) this.f46126i, false);
                textView = (TextView) view.findViewById(this.f46120c);
                textView2 = (TextView) view.findViewById(this.f46121d);
                this.f46127j.add(textView);
                this.f46128k.add(textView2);
            } else {
                view = null;
                textView = null;
                textView2 = null;
            }
            if (view == null) {
                view = g(getContext());
            }
            if (textView == null && TextView.class.isInstance(view)) {
                textView = view;
            }
            if (this.f46122e) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
            }
            textView.setText(adapter.getPageTitle(i2));
            textView.setTextColor(getResources().getColor(R.color.classify_plat_color));
            textView2.setBackgroundColor(-1);
            view.setOnClickListener(cVar);
            String str = this.f46124g.get(i2, null);
            if (str != null) {
                view.setContentDescription(str);
            }
            this.f46126i.addView(view);
            if (i2 == this.f46123f.getCurrentItem()) {
                view.setSelected(true);
                view.setBackgroundColor(-1);
                textView.setTextColor(getResources().getColor(R.color.classify_title_color));
                textView2.setBackgroundColor(-1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(int i2, int i4) {
        View childAt;
        int childCount = this.f46126i.getChildCount();
        if (childCount == 0 || i2 < 0 || i2 >= childCount || (childAt = this.f46126i.getChildAt(i2)) == null) {
            return;
        }
        int left = childAt.getLeft() + i4;
        if (i2 > 0 || i4 > 0) {
            left -= this.f46118a;
        }
        scrollTo(left, 0);
    }

    protected LinearLayout g(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
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
        linearLayout.addView(textView, this.f46129l);
        linearLayout.addView(new TextView(context), this.f46130m);
        return linearLayout;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewPager viewPager = this.f46123f;
        if (viewPager != null) {
            i(viewPager.getCurrentItem(), 0);
        }
    }

    public void setContentDescription(int i2, String str) {
        this.f46124g.put(i2, str);
    }

    public void setCustomTabColorizer(d dVar) {
        this.f46126i.d((SlidingTabLayout.d) dVar);
    }

    public void setCustomTabView(int i2, int i4, int i5) {
        this.f46119b = i2;
        this.f46120c = i4;
        this.f46121d = i5;
    }

    public void setDistributeEvenly(boolean z3) {
        this.f46122e = z3;
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f46125h = onPageChangeListener;
    }

    public void setSelectedIndicatorColors(int... iArr) {
        this.f46126i.e(iArr);
    }

    public void setViewPager(ViewPager viewPager) {
        this.f46126i.removeAllViews();
        this.f46123f = viewPager;
        if (viewPager != null) {
            viewPager.setOnPageChangeListener(new b());
            h();
        }
    }

    public SlidingTabClassifyLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingTabClassifyLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46124g = new SparseArray<>();
        this.f46127j = new ArrayList();
        this.f46128k = new ArrayList();
        this.f46129l = new LinearLayout.LayoutParams(-1, -2);
        this.f46130m = new LinearLayout.LayoutParams(-1, 10);
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        this.f46118a = (int) (getResources().getDisplayMetrics().density * 24.0f);
        l0 l0Var = new l0(context);
        this.f46126i = l0Var;
        addView(l0Var, -1, -2);
    }
}
