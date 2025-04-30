package com.join.mgps.customview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
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
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import java.util.Locale;
/* loaded from: classes3.dex */
public class SlidingTabLayoutDownloadCenter extends HorizontalScrollView {
    private static final int[] K = {16842901, 16842904};
    private Typeface A;
    private int B;
    private int C;
    private int D;
    private Locale E;
    private int F;
    private boolean G;
    int H;
    int I;
    int J;

    /* renamed from: a  reason: collision with root package name */
    protected LinearLayout.LayoutParams f46276a;

    /* renamed from: b  reason: collision with root package name */
    protected LinearLayout.LayoutParams f46277b;

    /* renamed from: c  reason: collision with root package name */
    private final d f46278c;

    /* renamed from: d  reason: collision with root package name */
    public ViewPager.OnPageChangeListener f46279d;

    /* renamed from: e  reason: collision with root package name */
    protected LinearLayout f46280e;

    /* renamed from: f  reason: collision with root package name */
    protected ViewPager f46281f;

    /* renamed from: g  reason: collision with root package name */
    protected int f46282g;

    /* renamed from: h  reason: collision with root package name */
    protected int f46283h;

    /* renamed from: i  reason: collision with root package name */
    protected float f46284i;

    /* renamed from: j  reason: collision with root package name */
    private Paint f46285j;

    /* renamed from: k  reason: collision with root package name */
    private Paint f46286k;

    /* renamed from: l  reason: collision with root package name */
    protected int f46287l;

    /* renamed from: m  reason: collision with root package name */
    protected int f46288m;

    /* renamed from: n  reason: collision with root package name */
    protected int f46289n;

    /* renamed from: o  reason: collision with root package name */
    protected boolean f46290o;

    /* renamed from: p  reason: collision with root package name */
    protected boolean f46291p;

    /* renamed from: q  reason: collision with root package name */
    protected int f46292q;

    /* renamed from: r  reason: collision with root package name */
    protected int f46293r;

    /* renamed from: s  reason: collision with root package name */
    protected float f46294s;

    /* renamed from: t  reason: collision with root package name */
    protected int f46295t;

    /* renamed from: u  reason: collision with root package name */
    protected int f46296u;

    /* renamed from: v  reason: collision with root package name */
    protected int f46297v;

    /* renamed from: w  reason: collision with root package name */
    protected int f46298w;

    /* renamed from: x  reason: collision with root package name */
    private int f46299x;

    /* renamed from: y  reason: collision with root package name */
    private int f46300y;

    /* renamed from: z  reason: collision with root package name */
    private int f46301z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        int f46302a;

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
            parcel.writeInt(this.f46302a);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f46302a = parcel.readInt();
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
                SlidingTabLayoutDownloadCenter.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            } else {
                SlidingTabLayoutDownloadCenter.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
            SlidingTabLayoutDownloadCenter slidingTabLayoutDownloadCenter = SlidingTabLayoutDownloadCenter.this;
            slidingTabLayoutDownloadCenter.f46283h = slidingTabLayoutDownloadCenter.f46281f.getCurrentItem();
            SlidingTabLayoutDownloadCenter slidingTabLayoutDownloadCenter2 = SlidingTabLayoutDownloadCenter.this;
            slidingTabLayoutDownloadCenter2.f(slidingTabLayoutDownloadCenter2.f46283h, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f46304a;

        b(int i2) {
            this.f46304a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SlidingTabLayoutDownloadCenter.this.f46281f.setCurrentItem(this.f46304a);
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        int a(int i2);
    }

    /* loaded from: classes3.dex */
    protected class d implements ViewPager.OnPageChangeListener {
        protected d() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
            if (i2 == 0) {
                SlidingTabLayoutDownloadCenter slidingTabLayoutDownloadCenter = SlidingTabLayoutDownloadCenter.this;
                slidingTabLayoutDownloadCenter.f(slidingTabLayoutDownloadCenter.f46281f.getCurrentItem(), 0);
            }
            ViewPager.OnPageChangeListener onPageChangeListener = SlidingTabLayoutDownloadCenter.this.f46279d;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageScrollStateChanged(i2);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
            SlidingTabLayoutDownloadCenter slidingTabLayoutDownloadCenter = SlidingTabLayoutDownloadCenter.this;
            slidingTabLayoutDownloadCenter.f46283h = i2;
            slidingTabLayoutDownloadCenter.f46284i = f4;
            if (slidingTabLayoutDownloadCenter.f46280e.getChildAt(i2) != null) {
                SlidingTabLayoutDownloadCenter slidingTabLayoutDownloadCenter2 = SlidingTabLayoutDownloadCenter.this;
                slidingTabLayoutDownloadCenter2.f(i2, (int) (slidingTabLayoutDownloadCenter2.f46280e.getChildAt(i2).getWidth() * f4));
            }
            SlidingTabLayoutDownloadCenter.this.invalidate();
            ViewPager.OnPageChangeListener onPageChangeListener = SlidingTabLayoutDownloadCenter.this.f46279d;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageScrolled(i2, f4, i4);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            SlidingTabLayoutDownloadCenter.this.h();
            ViewPager.OnPageChangeListener onPageChangeListener = SlidingTabLayoutDownloadCenter.this.f46279d;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageSelected(i2);
            }
        }
    }

    public SlidingTabLayoutDownloadCenter(Context context) {
        this(context, null);
    }

    protected void a(int i2, int i4) {
        ImageButton imageButton = new ImageButton(getContext());
        imageButton.setImageResource(i4);
        b(i2, imageButton);
    }

    protected void b(int i2, View view) {
        view.setFocusable(true);
        view.setOnClickListener(new b(i2));
        int i4 = this.f46297v;
        view.setPadding(i4, 0, i4, 0);
        this.f46280e.addView(view, i2, this.f46290o ? this.f46277b : this.f46276a);
    }

    protected void c(int i2, String str) {
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        TextView textView = new TextView(getContext());
        textView.setId(16908308);
        textView.setText(str);
        textView.setGravity(17);
        textView.setSingleLine();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        textView.setLayoutParams(layoutParams);
        textView.setSingleLine(true);
        layoutParams.addRule(13);
        TextView textView2 = new TextView(getContext());
        textView2.setId(16908309);
        textView2.setTextColor(Color.parseColor("#ffffff"));
        textView2.setBackgroundResource(R.drawable.mygame_big_round);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.setMargins((int) (com.join.android.app.common.utils.j.n(getContext()).g() * 7.0f), 0, 0, 0);
        layoutParams2.addRule(15, -1);
        layoutParams2.addRule(1, textView.getId());
        textView2.setLayoutParams(layoutParams2);
        textView2.setVisibility(8);
        textView2.setSingleLine(true);
        textView2.setTextSize(8.0f);
        textView2.setGravity(17);
        relativeLayout.addView(textView);
        relativeLayout.addView(textView2);
        b(i2, relativeLayout);
    }

    public boolean d() {
        return this.f46291p;
    }

    public void e() {
        this.f46280e.removeAllViews();
        this.f46282g = this.f46281f.getAdapter().getCount();
        for (int i2 = 0; i2 < this.f46282g; i2++) {
            if (this.f46281f.getAdapter() instanceof c) {
                a(i2, ((c) this.f46281f.getAdapter()).a(i2));
            } else {
                c(i2, this.f46281f.getAdapter().getPageTitle(i2).toString());
            }
        }
        h();
        getViewTreeObserver().addOnGlobalLayoutListener(new a());
    }

    protected void f(int i2, int i4) {
        if (this.f46282g == 0) {
            return;
        }
        int left = this.f46280e.getChildAt(i2).getLeft() + i4;
        if (i2 > 0 || i4 > 0) {
            left -= this.f46292q;
        }
        if (left != this.C) {
            this.C = left;
            scrollTo(left, 0);
        }
    }

    void g(TextView textView, int i2) {
        textView.setVisibility(0);
        if (i2 < 100) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) textView.getLayoutParams();
            layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            textView.setLayoutParams(layoutParams);
            textView.setCompoundDrawables(null, null, null, null);
            textView.setBackgroundResource(R.drawable.mygame_big_round);
            textView.setPadding(1, 0, 0, 1);
        } else {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) textView.getLayoutParams();
            layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
            layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams2.setMargins(0, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 4, 0);
            textView.setGravity(17);
            textView.setLayoutParams(layoutParams2);
            textView.setCompoundDrawables(null, null, null, null);
            textView.setBackgroundResource(R.drawable.message_round);
            textView.setPadding(1, 0, 2, 1);
        }
        textView.setText(i2 + "");
    }

    public int getDividerColor() {
        return this.f46289n;
    }

    public int getDividerPadding() {
        return this.f46296u;
    }

    public int getIndicatorColor() {
        return this.f46287l;
    }

    public int getIndicatorHeight() {
        return this.f46293r;
    }

    public float getIndicatorRatioH() {
        return this.f46294s;
    }

    public int getScrollOffset() {
        return this.f46292q;
    }

    public boolean getShouldExpand() {
        return this.f46290o;
    }

    public int getTabBackground() {
        return this.D;
    }

    public int getTabPaddingLeftRight() {
        return this.f46297v;
    }

    public int getTextColor() {
        return this.f46300y;
    }

    public int getTextSize() {
        return this.f46299x;
    }

    public int getUnderlineColor() {
        return this.f46288m;
    }

    public int getUnderlineHeight() {
        return this.f46295t;
    }

    protected void h() {
        for (int i2 = 0; i2 < this.f46282g; i2++) {
            View childAt = this.f46280e.getChildAt(i2);
            childAt.setBackgroundResource(this.D);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                textView.setTextSize(0, this.f46299x);
                textView.setTypeface(this.A, this.B);
                textView.setTextColor(this.f46300y);
                ViewPager viewPager = this.f46281f;
                if (viewPager != null && i2 == viewPager.getCurrentItem()) {
                    textView.setTextColor(this.f46301z);
                }
                if (this.f46291p) {
                    if (Build.VERSION.SDK_INT >= 14) {
                        textView.setAllCaps(true);
                    } else {
                        textView.setText(textView.getText().toString().toUpperCase(this.E));
                    }
                }
            } else if (childAt instanceof RelativeLayout) {
                TextView textView2 = (TextView) childAt.findViewById(16908308);
                TextView textView3 = (TextView) childAt.findViewById(16908309);
                if (textView2 != null) {
                    textView2.setTextSize(0, this.f46299x);
                    textView2.setTypeface(this.A, this.B);
                    textView2.setTextColor(this.f46300y);
                    ViewPager viewPager2 = this.f46281f;
                    if (viewPager2 != null && i2 == viewPager2.getCurrentItem()) {
                        textView2.setTextColor(this.f46301z);
                    }
                    ViewPager viewPager3 = this.f46281f;
                    if (viewPager3 != null && viewPager3.getAdapter() != null && (this.f46281f.getAdapter() instanceof d0)) {
                        textView2.setText(this.f46281f.getAdapter().getPageTitle(i2));
                    }
                    if (this.f46291p) {
                        if (Build.VERSION.SDK_INT >= 14) {
                            textView2.setAllCaps(true);
                        } else {
                            textView2.setText(textView2.getText().toString().toUpperCase(this.E));
                        }
                    }
                }
                if (textView3 != null && (this.f46281f.getAdapter() instanceof d0) && i2 == 1) {
                    int i4 = this.I;
                    if (i4 > 0) {
                        g(textView3, i4);
                    } else {
                        textView3.setVisibility(8);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        View childAt;
        int i2;
        super.onDraw(canvas);
        if (isInEditMode() || this.f46282g == 0) {
            return;
        }
        int height = getHeight();
        this.f46285j.setColor(this.f46287l);
        float left = childAt.getLeft() * 1.0f;
        float right = this.f46280e.getChildAt(this.f46283h).getRight();
        if (this.f46284i > 0.0f && (i2 = this.f46283h) < this.f46282g - 1) {
            View childAt2 = this.f46280e.getChildAt(i2 + 1);
            float f4 = this.f46284i;
            left = (childAt2.getLeft() * f4) + ((1.0f - f4) * left);
            right = (childAt2.getRight() * f4) + ((1.0f - f4) * right);
        }
        float f5 = (int) (((1.0f - this.f46294s) * (right - left)) / 2.0f);
        float f6 = height;
        canvas.drawRect(left + f5, height - this.f46293r, right - f5, f6, this.f46285j);
        this.f46285j.setColor(this.f46288m);
        canvas.drawRect(0.0f, height - this.f46295t, this.f46280e.getWidth(), f6, this.f46285j);
        this.f46286k.setColor(this.f46289n);
        for (int i4 = 0; i4 < this.f46282g - 1; i4++) {
            View childAt3 = this.f46280e.getChildAt(i4);
            canvas.drawLine(childAt3.getRight(), this.f46296u, childAt3.getRight(), height - this.f46296u, this.f46286k);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f46283h = savedState.f46302a;
        requestLayout();
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f46302a = this.f46283h;
        return savedState;
    }

    public void setAllCaps(boolean z3) {
        this.f46291p = z3;
    }

    public void setBadgeSize(int i2, int i4, int i5) {
        this.H = i2;
        this.I = i4;
        this.J = i5;
        h();
    }

    public void setDividerColor(int i2) {
        this.f46289n = i2;
        invalidate();
    }

    public void setDividerColorResource(int i2) {
        this.f46289n = getResources().getColor(i2);
        invalidate();
    }

    public void setDividerPadding(int i2) {
        this.f46296u = i2;
        invalidate();
    }

    public void setIndicatorColor(int i2) {
        this.f46287l = i2;
        invalidate();
    }

    public void setIndicatorColorResource(int i2) {
        this.f46287l = getResources().getColor(i2);
        invalidate();
    }

    public void setIndicatorHeight(int i2) {
        this.f46293r = i2;
        invalidate();
    }

    public void setIndicatorRatioH(float f4) {
        this.f46294s = f4;
        invalidate();
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f46279d = onPageChangeListener;
    }

    public void setRoundShow(int i2, boolean z3) {
        this.F = i2;
        this.G = z3;
        h();
    }

    public void setScrollOffset(int i2) {
        this.f46292q = i2;
        invalidate();
    }

    public void setShouldExpand(boolean z3) {
        this.f46290o = z3;
        requestLayout();
    }

    public void setTabBackground(int i2) {
        this.D = i2;
    }

    public void setTabPaddingLeftRight(int i2) {
        this.f46297v = i2;
        h();
    }

    public void setTextColor(int i2) {
        this.f46300y = i2;
        h();
    }

    public void setTextColorResource(int i2) {
        this.f46300y = getResources().getColor(i2);
        h();
    }

    public void setTextSize(int i2) {
        this.f46299x = i2;
        h();
    }

    public void setTypeface(Typeface typeface, int i2) {
        this.A = typeface;
        this.B = i2;
        h();
    }

    public void setUnderlineColor(int i2) {
        this.f46288m = i2;
        invalidate();
    }

    public void setUnderlineColorResource(int i2) {
        this.f46288m = getResources().getColor(i2);
        invalidate();
    }

    public void setUnderlineHeight(int i2) {
        this.f46295t = i2;
        invalidate();
    }

    public void setViewPager(ViewPager viewPager) {
        this.f46281f = viewPager;
        if (viewPager.getAdapter() != null) {
            viewPager.setOnPageChangeListener(this.f46278c);
            e();
            return;
        }
        throw new IllegalStateException("ViewPager does not have adapter instance.");
    }

    public SlidingTabLayoutDownloadCenter(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingTabLayoutDownloadCenter(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46278c = new d();
        this.f46283h = 0;
        this.f46284i = 0.0f;
        this.f46287l = -756480;
        this.f46288m = -1315861;
        this.f46289n = 16777215;
        this.f46290o = false;
        this.f46291p = true;
        this.f46292q = 52;
        this.f46293r = 3;
        this.f46294s = 0.6f;
        this.f46295t = 1;
        this.f46296u = 12;
        this.f46297v = 24;
        this.f46298w = 1;
        this.f46299x = 14;
        this.f46300y = -11711155;
        this.f46301z = -756480;
        this.A = null;
        this.B = 0;
        this.C = 0;
        this.D = R.drawable.background_tab;
        this.F = 0;
        this.G = false;
        this.H = 0;
        this.I = 0;
        this.J = 0;
        setFillViewport(true);
        setWillNotDraw(false);
        LinearLayout linearLayout = new LinearLayout(context);
        this.f46280e = linearLayout;
        linearLayout.setOrientation(0);
        this.f46280e.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(this.f46280e);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f46292q = (int) TypedValue.applyDimension(1, this.f46292q, displayMetrics);
        this.f46293r = (int) TypedValue.applyDimension(1, this.f46293r, displayMetrics);
        this.f46295t = (int) TypedValue.applyDimension(0, this.f46295t, displayMetrics);
        this.f46296u = (int) TypedValue.applyDimension(1, this.f46296u, displayMetrics);
        this.f46297v = (int) TypedValue.applyDimension(1, this.f46297v, displayMetrics);
        this.f46298w = (int) TypedValue.applyDimension(1, this.f46298w, displayMetrics);
        this.f46299x = (int) TypedValue.applyDimension(1, this.f46299x, displayMetrics);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SlidingTab);
        this.f46299x = obtainStyledAttributes.getDimensionPixelSize(3, this.f46299x);
        this.f46300y = obtainStyledAttributes.getColor(1, this.f46300y);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.PagerSlidingTabStrip);
        this.f46287l = obtainStyledAttributes2.getColor(2, this.f46287l);
        this.f46288m = obtainStyledAttributes2.getColor(9, this.f46288m);
        this.f46289n = obtainStyledAttributes2.getColor(0, this.f46289n);
        this.f46293r = obtainStyledAttributes2.getDimensionPixelSize(3, this.f46293r);
        this.f46295t = obtainStyledAttributes2.getDimensionPixelSize(10, this.f46295t);
        this.f46296u = obtainStyledAttributes2.getDimensionPixelSize(1, this.f46296u);
        this.f46297v = obtainStyledAttributes2.getDimensionPixelSize(7, this.f46297v);
        this.D = obtainStyledAttributes2.getResourceId(6, this.D);
        this.f46290o = obtainStyledAttributes2.getBoolean(5, this.f46290o);
        this.f46292q = obtainStyledAttributes2.getDimensionPixelSize(4, this.f46292q);
        this.f46291p = obtainStyledAttributes2.getBoolean(8, this.f46291p);
        obtainStyledAttributes2.recycle();
        Paint paint = new Paint();
        this.f46285j = paint;
        paint.setAntiAlias(true);
        this.f46285j.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f46286k = paint2;
        paint2.setAntiAlias(true);
        this.f46286k.setStrokeWidth(this.f46298w);
        this.f46276a = new LinearLayout.LayoutParams(-2, -1);
        this.f46277b = new LinearLayout.LayoutParams(0, -1, 1.0f);
        if (this.E == null) {
            this.E = getResources().getConfiguration().locale;
        }
    }
}
