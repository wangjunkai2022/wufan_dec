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
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SlidingTabLayout;
import com.join.mgps.dto.ForumBean;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class SlidingTabDetailLayout extends HorizontalScrollView {

    /* renamed from: n  reason: collision with root package name */
    private static final int f46134n = 24;

    /* renamed from: o  reason: collision with root package name */
    private static final int f46135o = 16;

    /* renamed from: p  reason: collision with root package name */
    private static final int f46136p = 12;

    /* renamed from: a  reason: collision with root package name */
    private int f46137a;

    /* renamed from: b  reason: collision with root package name */
    private int f46138b;

    /* renamed from: c  reason: collision with root package name */
    private int f46139c;

    /* renamed from: d  reason: collision with root package name */
    private int f46140d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f46141e;

    /* renamed from: f  reason: collision with root package name */
    private ViewPager f46142f;

    /* renamed from: g  reason: collision with root package name */
    private SparseArray<String> f46143g;

    /* renamed from: h  reason: collision with root package name */
    private ViewPager.OnPageChangeListener f46144h;

    /* renamed from: i  reason: collision with root package name */
    private final l0 f46145i;

    /* renamed from: j  reason: collision with root package name */
    private List<TextView> f46146j;

    /* renamed from: k  reason: collision with root package name */
    private List<TextView> f46147k;

    /* renamed from: l  reason: collision with root package name */
    LinearLayout.LayoutParams f46148l;

    /* renamed from: m  reason: collision with root package name */
    LinearLayout.LayoutParams f46149m;

    /* loaded from: classes3.dex */
    private class b implements ViewPager.OnPageChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private int f46150a;

        private b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
            this.f46150a = i2;
            if (SlidingTabDetailLayout.this.f46144h != null) {
                SlidingTabDetailLayout.this.f46144h.onPageScrollStateChanged(i2);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
            View childAt;
            View childAt2;
            int childCount = SlidingTabDetailLayout.this.f46145i.getChildCount();
            if (childCount == 0 || i2 < 0 || i2 >= childCount) {
                return;
            }
            SlidingTabDetailLayout.this.f46145i.b(i2, f4);
            SlidingTabDetailLayout.this.i(i2, SlidingTabDetailLayout.this.f46145i.getChildAt(i2) != null ? (int) (childAt.getWidth() * f4) : 0);
            if (SlidingTabDetailLayout.this.f46144h != null) {
                SlidingTabDetailLayout.this.f46144h.onPageScrolled(i2, f4, i4);
            }
            if (i2 != 1 || (childAt2 = SlidingTabDetailLayout.this.f46142f.getChildAt(i2 + 1)) == null) {
                return;
            }
            TextView textView = (TextView) childAt2.findViewById(R.id.textGoto);
            ImageView imageView = (ImageView) childAt2.findViewById(R.id.imageGoto);
            double d4 = f4;
            if (d4 >= 0.3d) {
                textView.setText("释\n放\n进\n入\n专\n区\n讨\n论");
                imageView.setRotation(180.0f);
                if (d4 == 0.45d) {
                    ForumBean forumBean = new ForumBean();
                    forumBean.setFid(2);
                    SlidingTabDetailLayout.this.f46142f.setCurrentItem(1);
                    com.join.mgps.Util.j0.I1(SlidingTabDetailLayout.this.getContext());
                    com.join.mgps.Util.i0.r0(SlidingTabDetailLayout.this.getContext(), forumBean);
                    return;
                }
                return;
            }
            imageView.setRotation(f4 * 60.0f);
            textView.setText("滑\n动\n进\n入\n专\n区\n讨\n论");
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            if (i2 == 2) {
                ForumBean forumBean = new ForumBean();
                forumBean.setFid(2);
                SlidingTabDetailLayout.this.f46142f.setCurrentItem(1);
                com.join.mgps.Util.j0.I1(SlidingTabDetailLayout.this.getContext());
                com.join.mgps.Util.i0.r0(SlidingTabDetailLayout.this.getContext(), forumBean);
            }
            if (this.f46150a == 0) {
                SlidingTabDetailLayout.this.f46145i.b(i2, 0.0f);
                SlidingTabDetailLayout.this.i(i2, 0);
            }
            int i4 = 0;
            while (i4 < SlidingTabDetailLayout.this.f46145i.getChildCount()) {
                SlidingTabDetailLayout.this.f46145i.getChildAt(i4).setSelected(i2 == i4);
                i4++;
            }
            if (SlidingTabDetailLayout.this.f46144h != null) {
                SlidingTabDetailLayout.this.f46144h.onPageSelected(i2);
            }
            for (int i5 = 0; i5 < SlidingTabDetailLayout.this.f46146j.size(); i5++) {
                TextView textView = (TextView) SlidingTabDetailLayout.this.f46147k.get(i5);
                TextView textView2 = (TextView) SlidingTabDetailLayout.this.f46146j.get(i5);
                if (i2 != 2) {
                    if (i5 == i2) {
                        textView2.setBackgroundColor(0);
                        textView2.setTextColor(SlidingTabDetailLayout.this.getResources().getColor(R.color.classify_title_color));
                        textView.setBackgroundColor(SlidingTabDetailLayout.this.getResources().getColor(R.color.classify_title_color));
                    } else {
                        textView2.setBackgroundColor(0);
                        textView2.setTextColor(SlidingTabDetailLayout.this.getResources().getColor(R.color.slide_title_color));
                        textView.setBackgroundColor(0);
                    }
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
            for (int i2 = 0; i2 < SlidingTabDetailLayout.this.f46145i.getChildCount(); i2++) {
                if (view == SlidingTabDetailLayout.this.f46145i.getChildAt(i2)) {
                    SlidingTabDetailLayout.this.f46142f.setCurrentItem(i2);
                    return;
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        int a(int i2);
    }

    public SlidingTabDetailLayout(Context context) {
        this(context, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v4, types: [android.view.View, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v7, types: [android.widget.LinearLayout, com.join.mgps.customview.l0] */
    private void h() {
        View view;
        TextView textView;
        TextView textView2;
        PagerAdapter adapter = this.f46142f.getAdapter();
        c cVar = new c();
        for (int i2 = 0; i2 < adapter.getCount(); i2++) {
            if (this.f46138b != 0) {
                view = LayoutInflater.from(getContext()).inflate(this.f46138b, (ViewGroup) this.f46145i, false);
                textView = (TextView) view.findViewById(this.f46139c);
                textView2 = (TextView) view.findViewById(this.f46140d);
                this.f46146j.add(textView);
                this.f46147k.add(textView2);
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
            if (this.f46141e) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
            }
            textView.setText(adapter.getPageTitle(i2));
            textView.setTextColor(getResources().getColor(R.color.slide_title_color));
            textView2.setBackgroundColor(0);
            view.setOnClickListener(cVar);
            String str = this.f46143g.get(i2, null);
            if (str != null) {
                view.setContentDescription(str);
            }
            this.f46145i.addView(view);
            if (i2 == this.f46142f.getCurrentItem()) {
                view.setSelected(true);
                view.setBackgroundColor(0);
                textView.setTextColor(getResources().getColor(R.color.classify_title_color));
                textView2.setBackgroundColor(getResources().getColor(R.color.classify_title_color));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(int i2, int i4) {
        View childAt;
        int childCount = this.f46145i.getChildCount();
        if (childCount == 0 || i2 < 0 || i2 >= childCount || (childAt = this.f46145i.getChildAt(i2)) == null) {
            return;
        }
        int left = childAt.getLeft() + i4;
        if (i2 > 0 || i4 > 0) {
            left -= this.f46137a;
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
        linearLayout.addView(textView, this.f46148l);
        linearLayout.addView(new TextView(context), this.f46149m);
        return linearLayout;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewPager viewPager = this.f46142f;
        if (viewPager != null) {
            i(viewPager.getCurrentItem(), 0);
        }
    }

    public void setContentDescription(int i2, String str) {
        this.f46143g.put(i2, str);
    }

    public void setCustomTabColorizer(d dVar) {
        this.f46145i.d((SlidingTabLayout.d) dVar);
    }

    public void setCustomTabView(int i2, int i4, int i5) {
        this.f46138b = i2;
        this.f46139c = i4;
        this.f46140d = i5;
    }

    public void setDistributeEvenly(boolean z3) {
        this.f46141e = z3;
    }

    public void setOnPageChangeListener() {
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f46144h = onPageChangeListener;
    }

    public void setSelectedIndicatorColors(int... iArr) {
        this.f46145i.e(iArr);
    }

    public void setViewPager(ViewPager viewPager) {
        this.f46145i.removeAllViews();
        this.f46142f = viewPager;
        if (viewPager != null) {
            viewPager.setOnPageChangeListener(new b());
            h();
        }
    }

    public SlidingTabDetailLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingTabDetailLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46143g = new SparseArray<>();
        this.f46146j = new ArrayList();
        this.f46147k = new ArrayList();
        this.f46148l = new LinearLayout.LayoutParams(-1, -2);
        this.f46149m = new LinearLayout.LayoutParams(-1, 10);
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        this.f46137a = (int) (getResources().getDisplayMetrics().density * 24.0f);
        l0 l0Var = new l0(context);
        this.f46145i = l0Var;
        addView(l0Var, -1, -2);
    }
}
