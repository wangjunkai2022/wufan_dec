package com.join.mgps.customview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import java.util.List;
import java.util.Locale;
/* loaded from: classes3.dex */
public class SlidingTabLayout1 extends HorizontalScrollView {
    private static final int[] I = {16842901, 16842904};
    protected int A;
    protected Typeface B;
    protected int C;
    private int D;
    protected int E;
    protected Locale F;
    List<String> G;
    private d H;

    /* renamed from: a  reason: collision with root package name */
    protected LinearLayout.LayoutParams f46180a;

    /* renamed from: b  reason: collision with root package name */
    protected LinearLayout.LayoutParams f46181b;

    /* renamed from: c  reason: collision with root package name */
    private final e f46182c;

    /* renamed from: d  reason: collision with root package name */
    public ViewPager.OnPageChangeListener f46183d;

    /* renamed from: e  reason: collision with root package name */
    protected LinearLayout f46184e;

    /* renamed from: f  reason: collision with root package name */
    protected ViewPager f46185f;

    /* renamed from: g  reason: collision with root package name */
    protected int f46186g;

    /* renamed from: h  reason: collision with root package name */
    protected int f46187h;

    /* renamed from: i  reason: collision with root package name */
    protected float f46188i;

    /* renamed from: j  reason: collision with root package name */
    protected Paint f46189j;

    /* renamed from: k  reason: collision with root package name */
    protected Paint f46190k;

    /* renamed from: l  reason: collision with root package name */
    protected int f46191l;

    /* renamed from: m  reason: collision with root package name */
    protected int f46192m;

    /* renamed from: n  reason: collision with root package name */
    protected int f46193n;

    /* renamed from: o  reason: collision with root package name */
    protected boolean f46194o;

    /* renamed from: p  reason: collision with root package name */
    protected boolean f46195p;

    /* renamed from: q  reason: collision with root package name */
    protected int f46196q;

    /* renamed from: r  reason: collision with root package name */
    protected int f46197r;

    /* renamed from: s  reason: collision with root package name */
    protected float f46198s;

    /* renamed from: t  reason: collision with root package name */
    protected int f46199t;

    /* renamed from: u  reason: collision with root package name */
    protected int f46200u;

    /* renamed from: v  reason: collision with root package name */
    protected int f46201v;

    /* renamed from: w  reason: collision with root package name */
    protected int f46202w;

    /* renamed from: x  reason: collision with root package name */
    protected int f46203x;

    /* renamed from: y  reason: collision with root package name */
    protected int f46204y;

    /* renamed from: z  reason: collision with root package name */
    protected int f46205z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        int f46206a;

        /* loaded from: classes3.dex */
        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        }

        /* synthetic */ SavedState(Parcel parcel, a aVar) {
            this(parcel);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f46206a);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f46206a = parcel.readInt();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        @SuppressLint({"NewApi"})
        public void onGlobalLayout() {
            if (Build.VERSION.SDK_INT < 16) {
                SlidingTabLayout1.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            } else {
                SlidingTabLayout1.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
            SlidingTabLayout1 slidingTabLayout1 = SlidingTabLayout1.this;
            slidingTabLayout1.f46187h = slidingTabLayout1.f46185f.getCurrentItem();
            SlidingTabLayout1 slidingTabLayout12 = SlidingTabLayout1.this;
            slidingTabLayout12.h(slidingTabLayout12.f46187h, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f46208a;

        b(int i2) {
            this.f46208a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SlidingTabLayout1 slidingTabLayout1 = SlidingTabLayout1.this;
            ViewPager viewPager = slidingTabLayout1.f46185f;
            if (viewPager != null) {
                viewPager.setCurrentItem(this.f46208a);
                return;
            }
            slidingTabLayout1.f46187h = this.f46208a;
            slidingTabLayout1.H.a(SlidingTabLayout1.this.f46187h);
            SlidingTabLayout1.this.i();
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        int a(int i2);
    }

    /* loaded from: classes3.dex */
    public interface d {
        void a(int i2);
    }

    /* loaded from: classes3.dex */
    protected class e implements ViewPager.OnPageChangeListener {
        protected e() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
            if (i2 == 0) {
                SlidingTabLayout1 slidingTabLayout1 = SlidingTabLayout1.this;
                slidingTabLayout1.h(slidingTabLayout1.f46185f.getCurrentItem(), 0);
            }
            ViewPager.OnPageChangeListener onPageChangeListener = SlidingTabLayout1.this.f46183d;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageScrollStateChanged(i2);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
            SlidingTabLayout1 slidingTabLayout1 = SlidingTabLayout1.this;
            slidingTabLayout1.f46187h = i2;
            slidingTabLayout1.f46188i = f4;
            if (slidingTabLayout1.f46184e.getChildAt(i2) != null) {
                SlidingTabLayout1 slidingTabLayout12 = SlidingTabLayout1.this;
                slidingTabLayout12.h(i2, (int) (slidingTabLayout12.f46184e.getChildAt(i2).getWidth() * f4));
            }
            SlidingTabLayout1.this.invalidate();
            ViewPager.OnPageChangeListener onPageChangeListener = SlidingTabLayout1.this.f46183d;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageScrolled(i2, f4, i4);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            SlidingTabLayout1.this.i();
            ViewPager.OnPageChangeListener onPageChangeListener = SlidingTabLayout1.this.f46183d;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageSelected(i2);
            }
        }
    }

    public SlidingTabLayout1(Context context) {
        this(context, null);
    }

    protected void b(int i2, int i4) {
        ImageButton imageButton = new ImageButton(getContext());
        imageButton.setImageResource(i4);
        c(i2, imageButton);
    }

    protected void c(int i2, View view) {
        view.setFocusable(true);
        view.setOnClickListener(new b(i2));
        int i4 = this.f46201v;
        view.setPadding(i4, 0, i4, 0);
        this.f46184e.addView(view, i2, this.f46194o ? this.f46181b : this.f46180a);
    }

    protected void d(int i2, String str) {
        TextView textView = new TextView(getContext());
        textView.setText(str);
        textView.setGravity(17);
        textView.setSingleLine();
        c(i2, textView);
    }

    protected void e(Canvas canvas) {
        View childAt;
        int i2;
        if (isInEditMode() || this.f46186g == 0) {
            return;
        }
        int height = getHeight();
        this.f46189j.setColor(this.f46191l);
        float left = childAt.getLeft() * 1.0f;
        float right = this.f46184e.getChildAt(this.f46187h).getRight();
        if (this.f46188i > 0.0f && (i2 = this.f46187h) < this.f46186g - 1) {
            View childAt2 = this.f46184e.getChildAt(i2 + 1);
            float f4 = this.f46188i;
            left = (childAt2.getLeft() * f4) + ((1.0f - f4) * left);
            right = (childAt2.getRight() * f4) + ((1.0f - f4) * right);
        }
        float f5 = (int) (((1.0f - this.f46198s) * (right - left)) / 2.0f);
        float f6 = height;
        canvas.drawRect(left + f5, height - this.f46197r, right - f5, f6, this.f46189j);
        this.f46189j.setColor(this.f46192m);
        canvas.drawRect(0.0f, height - this.f46199t, this.f46184e.getWidth(), f6, this.f46189j);
        this.f46190k.setColor(this.f46193n);
        for (int i4 = 0; i4 < this.f46186g - 1; i4++) {
            View childAt3 = this.f46184e.getChildAt(i4);
            canvas.drawLine(childAt3.getRight(), this.f46200u, childAt3.getRight(), height - this.f46200u, this.f46190k);
        }
    }

    public boolean f() {
        return this.f46195p;
    }

    public void g() {
        this.f46184e.removeAllViews();
        ViewPager viewPager = this.f46185f;
        int i2 = 0;
        if (viewPager != null && viewPager.getAdapter() != null) {
            this.f46186g = this.f46185f.getAdapter().getCount();
            while (i2 < this.f46186g) {
                if (this.f46185f.getAdapter() instanceof c) {
                    b(i2, ((c) this.f46185f.getAdapter()).a(i2));
                } else {
                    d(i2, this.f46185f.getAdapter().getPageTitle(i2).toString());
                }
                i2++;
            }
            i();
            getViewTreeObserver().addOnGlobalLayoutListener(new a());
            return;
        }
        this.f46186g = this.G.size();
        while (i2 < this.f46186g) {
            d(i2, this.G.get(i2));
            i2++;
        }
        i();
    }

    public int getDividerColor() {
        return this.f46193n;
    }

    public int getDividerPadding() {
        return this.f46200u;
    }

    public int getIndicatorColor() {
        return this.f46191l;
    }

    public int getIndicatorHeight() {
        return this.f46197r;
    }

    public float getIndicatorRatioH() {
        return this.f46198s;
    }

    public int getScrollOffset() {
        return this.f46196q;
    }

    public boolean getShouldExpand() {
        return this.f46194o;
    }

    public int getTabBackground() {
        return this.E;
    }

    public int getTabPaddingLeftRight() {
        return this.f46201v;
    }

    public int getTextColor() {
        return this.f46205z;
    }

    public int getTextSize() {
        return this.f46203x;
    }

    public int getUnderlineColor() {
        return this.f46192m;
    }

    public int getUnderlineHeight() {
        return this.f46199t;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void h(int i2, int i4) {
        if (this.f46186g == 0) {
            return;
        }
        int left = this.f46184e.getChildAt(i2).getLeft() + i4;
        if (i2 > 0 || i4 > 0) {
            left -= this.f46196q;
        }
        if (left != this.D) {
            this.D = left;
            scrollTo(left, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void i() {
        for (int i2 = 0; i2 < this.f46186g; i2++) {
            View childAt = this.f46184e.getChildAt(i2);
            childAt.setBackgroundResource(this.E);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                textView.setTextSize(0, this.f46203x);
                textView.setTypeface(this.B, this.C);
                textView.setTextColor(this.f46205z);
                ViewPager viewPager = this.f46185f;
                if (viewPager != null && i2 == viewPager.getCurrentItem()) {
                    textView.setTextColor(this.A);
                }
                if (this.G != null && i2 == this.f46187h) {
                    textView.setTextColor(this.A);
                }
                if (this.f46195p) {
                    if (Build.VERSION.SDK_INT >= 14) {
                        textView.setAllCaps(true);
                    } else {
                        textView.setText(textView.getText().toString().toUpperCase(this.F));
                    }
                }
            }
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        e(canvas);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f46187h = savedState.f46206a;
        requestLayout();
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f46206a = this.f46187h;
        return savedState;
    }

    public void setAllCaps(boolean z3) {
        this.f46195p = z3;
    }

    public void setDividerColor(int i2) {
        this.f46193n = i2;
        invalidate();
    }

    public void setDividerColorResource(int i2) {
        this.f46193n = getResources().getColor(i2);
        invalidate();
    }

    public void setDividerPadding(int i2) {
        this.f46200u = i2;
        invalidate();
    }

    public void setIndicatorColor(int i2) {
        this.f46191l = i2;
        invalidate();
    }

    public void setIndicatorColorResource(int i2) {
        this.f46191l = getResources().getColor(i2);
        invalidate();
    }

    public void setIndicatorHeight(int i2) {
        this.f46197r = i2;
        invalidate();
    }

    public void setIndicatorRatioH(float f4) {
        this.f46198s = f4;
        invalidate();
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f46183d = onPageChangeListener;
    }

    public void setOntabselected(d dVar) {
        this.H = dVar;
    }

    public void setScrollOffset(int i2) {
        this.f46196q = i2;
        invalidate();
    }

    public void setShouldExpand(boolean z3) {
        this.f46194o = z3;
        requestLayout();
    }

    public void setTabBackground(int i2) {
        this.E = i2;
    }

    public void setTabDatas(List<String> list) {
        this.G = list;
        g();
    }

    public void setTabPaddingLeftRight(int i2) {
        this.f46201v = i2;
        i();
    }

    public void setTextColor(int i2) {
        this.f46205z = i2;
        i();
    }

    public void setTextColorResource(int i2) {
        this.f46205z = getResources().getColor(i2);
        i();
    }

    public void setTextSize(int i2) {
        this.f46203x = i2;
        i();
    }

    public void setTypeface(Typeface typeface, int i2) {
        this.B = typeface;
        this.C = i2;
        i();
    }

    public void setUnderlineColor(int i2) {
        this.f46192m = i2;
        invalidate();
    }

    public void setUnderlineColorResource(int i2) {
        this.f46192m = getResources().getColor(i2);
        invalidate();
    }

    public void setUnderlineHeight(int i2) {
        this.f46199t = i2;
        invalidate();
    }

    public void setViewPager(ViewPager viewPager) {
        this.f46185f = viewPager;
        if (viewPager.getAdapter() != null) {
            viewPager.setOnPageChangeListener(this.f46182c);
            g();
            return;
        }
        throw new IllegalStateException("ViewPager does not have adapter instance.");
    }

    public SlidingTabLayout1(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingTabLayout1(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46182c = new e();
        this.f46187h = 0;
        this.f46188i = 0.0f;
        this.f46191l = -756480;
        this.f46192m = 16020736;
        this.f46193n = 16777215;
        this.f46194o = false;
        this.f46195p = true;
        this.f46196q = 52;
        this.f46197r = 3;
        this.f46198s = 0.3f;
        this.f46199t = 1;
        this.f46200u = 12;
        this.f46201v = 24;
        this.f46202w = 1;
        this.f46203x = 14;
        this.f46204y = 16;
        this.f46205z = -11711155;
        this.A = -756480;
        this.B = null;
        this.C = 0;
        this.D = 0;
        this.E = R.drawable.background_tab;
        this.G = null;
        setFillViewport(true);
        setWillNotDraw(false);
        LinearLayout linearLayout = new LinearLayout(context);
        this.f46184e = linearLayout;
        linearLayout.setOrientation(0);
        this.f46184e.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(this.f46184e);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f46196q = (int) TypedValue.applyDimension(1, this.f46196q, displayMetrics);
        this.f46197r = (int) TypedValue.applyDimension(1, this.f46197r, displayMetrics);
        this.f46199t = (int) TypedValue.applyDimension(0, this.f46199t, displayMetrics);
        this.f46200u = (int) TypedValue.applyDimension(1, this.f46200u, displayMetrics);
        this.f46201v = (int) TypedValue.applyDimension(1, this.f46201v, displayMetrics);
        this.f46202w = (int) TypedValue.applyDimension(1, this.f46202w, displayMetrics);
        this.f46203x = (int) TypedValue.applyDimension(1, this.f46203x, displayMetrics);
        this.f46204y = (int) TypedValue.applyDimension(1, this.f46204y, displayMetrics);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SlidingTab);
        this.f46203x = obtainStyledAttributes.getDimensionPixelSize(3, this.f46203x);
        this.f46204y = obtainStyledAttributes.getDimensionPixelSize(2, this.f46204y);
        this.f46205z = obtainStyledAttributes.getColor(1, this.f46205z);
        this.A = obtainStyledAttributes.getColor(0, this.A);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.PagerSlidingTabStrip);
        this.f46191l = obtainStyledAttributes2.getColor(2, this.f46191l);
        this.f46192m = obtainStyledAttributes2.getColor(9, this.f46192m);
        this.f46193n = obtainStyledAttributes2.getColor(0, this.f46193n);
        this.f46197r = obtainStyledAttributes2.getDimensionPixelSize(3, this.f46197r);
        this.f46199t = obtainStyledAttributes2.getDimensionPixelSize(10, this.f46199t);
        this.f46200u = obtainStyledAttributes2.getDimensionPixelSize(1, this.f46200u);
        this.f46201v = obtainStyledAttributes2.getDimensionPixelSize(7, this.f46201v);
        this.E = obtainStyledAttributes2.getResourceId(6, this.E);
        this.f46194o = obtainStyledAttributes2.getBoolean(5, this.f46194o);
        this.f46196q = obtainStyledAttributes2.getDimensionPixelSize(4, this.f46196q);
        this.f46195p = obtainStyledAttributes2.getBoolean(8, this.f46195p);
        obtainStyledAttributes2.recycle();
        Paint paint = new Paint();
        this.f46189j = paint;
        paint.setAntiAlias(true);
        this.f46189j.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f46190k = paint2;
        paint2.setAntiAlias(true);
        this.f46190k.setStrokeWidth(this.f46202w);
        this.f46180a = new LinearLayout.LayoutParams(-2, -1);
        this.f46181b = new LinearLayout.LayoutParams(0, -1, 1.0f);
        if (this.F == null) {
            this.F = getResources().getConfiguration().locale;
        }
    }
}
