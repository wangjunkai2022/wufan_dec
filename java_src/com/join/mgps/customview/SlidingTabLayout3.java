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
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import java.util.Locale;
/* loaded from: classes3.dex */
public class SlidingTabLayout3 extends HorizontalScrollView {
    private static final int[] H = {16842901, 16842904};
    private Typeface A;
    private int B;
    private int C;
    private int D;
    private Locale E;
    private int F;
    private boolean G;

    /* renamed from: a  reason: collision with root package name */
    protected LinearLayout.LayoutParams f46227a;

    /* renamed from: b  reason: collision with root package name */
    protected LinearLayout.LayoutParams f46228b;

    /* renamed from: c  reason: collision with root package name */
    private final d f46229c;

    /* renamed from: d  reason: collision with root package name */
    public ViewPager.OnPageChangeListener f46230d;

    /* renamed from: e  reason: collision with root package name */
    protected LinearLayout f46231e;

    /* renamed from: f  reason: collision with root package name */
    protected ViewPager f46232f;

    /* renamed from: g  reason: collision with root package name */
    protected int f46233g;

    /* renamed from: h  reason: collision with root package name */
    protected int f46234h;

    /* renamed from: i  reason: collision with root package name */
    protected float f46235i;

    /* renamed from: j  reason: collision with root package name */
    private Paint f46236j;

    /* renamed from: k  reason: collision with root package name */
    private Paint f46237k;

    /* renamed from: l  reason: collision with root package name */
    protected int f46238l;

    /* renamed from: m  reason: collision with root package name */
    protected int f46239m;

    /* renamed from: n  reason: collision with root package name */
    protected int f46240n;

    /* renamed from: o  reason: collision with root package name */
    protected boolean f46241o;

    /* renamed from: p  reason: collision with root package name */
    protected boolean f46242p;

    /* renamed from: q  reason: collision with root package name */
    protected int f46243q;

    /* renamed from: r  reason: collision with root package name */
    protected int f46244r;

    /* renamed from: s  reason: collision with root package name */
    protected float f46245s;

    /* renamed from: t  reason: collision with root package name */
    protected int f46246t;

    /* renamed from: u  reason: collision with root package name */
    protected int f46247u;

    /* renamed from: v  reason: collision with root package name */
    protected int f46248v;

    /* renamed from: w  reason: collision with root package name */
    protected int f46249w;

    /* renamed from: x  reason: collision with root package name */
    private int f46250x;

    /* renamed from: y  reason: collision with root package name */
    private int f46251y;

    /* renamed from: z  reason: collision with root package name */
    private int f46252z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        int f46253a;

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
            parcel.writeInt(this.f46253a);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f46253a = parcel.readInt();
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
                SlidingTabLayout3.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            } else {
                SlidingTabLayout3.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
            SlidingTabLayout3 slidingTabLayout3 = SlidingTabLayout3.this;
            slidingTabLayout3.f46234h = slidingTabLayout3.f46232f.getCurrentItem();
            SlidingTabLayout3 slidingTabLayout32 = SlidingTabLayout3.this;
            slidingTabLayout32.f(slidingTabLayout32.f46234h, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f46255a;

        b(int i2) {
            this.f46255a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SlidingTabLayout3.this.f46232f.setCurrentItem(this.f46255a);
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
                SlidingTabLayout3 slidingTabLayout3 = SlidingTabLayout3.this;
                slidingTabLayout3.f(slidingTabLayout3.f46232f.getCurrentItem(), 0);
            }
            ViewPager.OnPageChangeListener onPageChangeListener = SlidingTabLayout3.this.f46230d;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageScrollStateChanged(i2);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
            SlidingTabLayout3 slidingTabLayout3 = SlidingTabLayout3.this;
            slidingTabLayout3.f46234h = i2;
            slidingTabLayout3.f46235i = f4;
            if (slidingTabLayout3.f46231e.getChildAt(i2) != null) {
                SlidingTabLayout3 slidingTabLayout32 = SlidingTabLayout3.this;
                slidingTabLayout32.f(i2, (int) (slidingTabLayout32.f46231e.getChildAt(i2).getWidth() * f4));
            }
            SlidingTabLayout3.this.invalidate();
            ViewPager.OnPageChangeListener onPageChangeListener = SlidingTabLayout3.this.f46230d;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageScrolled(i2, f4, i4);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            SlidingTabLayout3.this.g();
            ViewPager.OnPageChangeListener onPageChangeListener = SlidingTabLayout3.this.f46230d;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageSelected(i2);
            }
        }
    }

    public SlidingTabLayout3(Context context) {
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
        int i4 = this.f46248v;
        view.setPadding(i4, 0, i4, 0);
        this.f46231e.addView(view, i2, this.f46241o ? this.f46228b : this.f46227a);
    }

    protected void c(int i2, String str) {
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        TextView textView = new TextView(getContext());
        textView.setText(str);
        textView.setGravity(17);
        textView.setSingleLine();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        textView.setLayoutParams(layoutParams);
        layoutParams.addRule(13);
        ImageView imageView = new ImageView(getContext());
        imageView.setImageResource(R.drawable.mygame_litle_round);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        int g4 = (int) (com.join.android.app.common.utils.j.n(getContext()).g() * 7.0f);
        layoutParams2.height = g4;
        layoutParams2.width = g4;
        layoutParams2.setMargins(0, g4, g4, 0);
        layoutParams2.addRule(11, -1);
        imageView.setLayoutParams(layoutParams2);
        imageView.setVisibility(8);
        relativeLayout.addView(textView);
        relativeLayout.addView(imageView);
        b(i2, relativeLayout);
    }

    public boolean d() {
        return this.f46242p;
    }

    public void e() {
        this.f46231e.removeAllViews();
        this.f46233g = this.f46232f.getAdapter().getCount();
        for (int i2 = 0; i2 < this.f46233g; i2++) {
            if (this.f46232f.getAdapter() instanceof c) {
                a(i2, ((c) this.f46232f.getAdapter()).a(i2));
            } else {
                c(i2, this.f46232f.getAdapter().getPageTitle(i2).toString());
            }
        }
        g();
        getViewTreeObserver().addOnGlobalLayoutListener(new a());
    }

    protected void f(int i2, int i4) {
        if (this.f46233g == 0) {
            return;
        }
        int left = this.f46231e.getChildAt(i2).getLeft() + i4;
        if (i2 > 0 || i4 > 0) {
            left -= this.f46243q;
        }
        if (left != this.C) {
            this.C = left;
            scrollTo(left, 0);
        }
    }

    protected void g() {
        for (int i2 = 0; i2 < this.f46233g; i2++) {
            View childAt = this.f46231e.getChildAt(i2);
            childAt.setBackgroundResource(this.D);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                textView.setTextSize(0, this.f46250x);
                textView.setTypeface(this.A, this.B);
                textView.setTextColor(this.f46251y);
                ViewPager viewPager = this.f46232f;
                if (viewPager != null && i2 == viewPager.getCurrentItem()) {
                    textView.setTextColor(this.f46252z);
                }
                if (this.f46242p) {
                    if (Build.VERSION.SDK_INT >= 14) {
                        textView.setAllCaps(true);
                    } else {
                        textView.setText(textView.getText().toString().toUpperCase(this.E));
                    }
                }
            } else if (childAt instanceof RelativeLayout) {
                RelativeLayout relativeLayout = (RelativeLayout) childAt;
                int childCount = relativeLayout.getChildCount();
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt2 = relativeLayout.getChildAt(i4);
                    if (childAt2 instanceof TextView) {
                        TextView textView2 = (TextView) childAt2;
                        textView2.setTextSize(0, this.f46250x);
                        textView2.setTypeface(this.A, this.B);
                        textView2.setTextColor(this.f46251y);
                        ViewPager viewPager2 = this.f46232f;
                        if (viewPager2 != null && i2 == viewPager2.getCurrentItem()) {
                            textView2.setTextColor(this.f46252z);
                        }
                        if (this.f46242p) {
                            if (Build.VERSION.SDK_INT >= 14) {
                                textView2.setAllCaps(true);
                            } else {
                                textView2.setText(textView2.getText().toString().toUpperCase(this.E));
                            }
                        }
                    } else if (this.F == i2 && (childAt2 instanceof ImageView)) {
                        if (this.G) {
                            childAt2.setVisibility(0);
                        } else {
                            childAt2.setVisibility(8);
                        }
                    }
                }
            }
        }
    }

    public int getDividerColor() {
        return this.f46240n;
    }

    public int getDividerPadding() {
        return this.f46247u;
    }

    public int getIndicatorColor() {
        return this.f46238l;
    }

    public int getIndicatorHeight() {
        return this.f46244r;
    }

    public float getIndicatorRatioH() {
        return this.f46245s;
    }

    public int getScrollOffset() {
        return this.f46243q;
    }

    public boolean getShouldExpand() {
        return this.f46241o;
    }

    public int getTabBackground() {
        return this.D;
    }

    public int getTabPaddingLeftRight() {
        return this.f46248v;
    }

    public int getTextColor() {
        return this.f46251y;
    }

    public int getTextSize() {
        return this.f46250x;
    }

    public int getUnderlineColor() {
        return this.f46239m;
    }

    public int getUnderlineHeight() {
        return this.f46246t;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        View childAt;
        int i2;
        super.onDraw(canvas);
        if (isInEditMode() || this.f46233g == 0) {
            return;
        }
        int height = getHeight();
        this.f46236j.setColor(this.f46238l);
        float left = childAt.getLeft() * 1.0f;
        float right = this.f46231e.getChildAt(this.f46234h).getRight();
        if (this.f46235i > 0.0f && (i2 = this.f46234h) < this.f46233g - 1) {
            View childAt2 = this.f46231e.getChildAt(i2 + 1);
            float f4 = this.f46235i;
            left = (childAt2.getLeft() * f4) + ((1.0f - f4) * left);
            right = (childAt2.getRight() * f4) + ((1.0f - f4) * right);
        }
        float f5 = (int) (((1.0f - this.f46245s) * (right - left)) / 2.0f);
        float f6 = height;
        canvas.drawRect(left + f5, height - this.f46244r, right - f5, f6, this.f46236j);
        this.f46236j.setColor(this.f46239m);
        canvas.drawRect(0.0f, height - this.f46246t, this.f46231e.getWidth(), f6, this.f46236j);
        this.f46237k.setColor(this.f46240n);
        for (int i4 = 0; i4 < this.f46233g - 1; i4++) {
            View childAt3 = this.f46231e.getChildAt(i4);
            canvas.drawLine(childAt3.getRight(), this.f46247u, childAt3.getRight(), height - this.f46247u, this.f46237k);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f46234h = savedState.f46253a;
        requestLayout();
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f46253a = this.f46234h;
        return savedState;
    }

    public void setAllCaps(boolean z3) {
        this.f46242p = z3;
    }

    public void setDividerColor(int i2) {
        this.f46240n = i2;
        invalidate();
    }

    public void setDividerColorResource(int i2) {
        this.f46240n = getResources().getColor(i2);
        invalidate();
    }

    public void setDividerPadding(int i2) {
        this.f46247u = i2;
        invalidate();
    }

    public void setIndicatorColor(int i2) {
        this.f46238l = i2;
        invalidate();
    }

    public void setIndicatorColorResource(int i2) {
        this.f46238l = getResources().getColor(i2);
        invalidate();
    }

    public void setIndicatorHeight(int i2) {
        this.f46244r = i2;
        invalidate();
    }

    public void setIndicatorRatioH(float f4) {
        this.f46245s = f4;
        invalidate();
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f46230d = onPageChangeListener;
    }

    public void setRoundShow(int i2, boolean z3) {
        this.F = i2;
        this.G = z3;
        g();
    }

    public void setScrollOffset(int i2) {
        this.f46243q = i2;
        invalidate();
    }

    public void setShouldExpand(boolean z3) {
        this.f46241o = z3;
        requestLayout();
    }

    public void setTabBackground(int i2) {
        this.D = i2;
    }

    public void setTabPaddingLeftRight(int i2) {
        this.f46248v = i2;
        g();
    }

    public void setTextColor(int i2) {
        this.f46251y = i2;
        g();
    }

    public void setTextColorResource(int i2) {
        this.f46251y = getResources().getColor(i2);
        g();
    }

    public void setTextSize(int i2) {
        this.f46250x = i2;
        g();
    }

    public void setTypeface(Typeface typeface, int i2) {
        this.A = typeface;
        this.B = i2;
        g();
    }

    public void setUnderlineColor(int i2) {
        this.f46239m = i2;
        invalidate();
    }

    public void setUnderlineColorResource(int i2) {
        this.f46239m = getResources().getColor(i2);
        invalidate();
    }

    public void setUnderlineHeight(int i2) {
        this.f46246t = i2;
        invalidate();
    }

    public void setViewPager(ViewPager viewPager) {
        this.f46232f = viewPager;
        if (viewPager.getAdapter() != null) {
            viewPager.setOnPageChangeListener(this.f46229c);
            e();
            return;
        }
        throw new IllegalStateException("ViewPager does not have adapter instance.");
    }

    public SlidingTabLayout3(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingTabLayout3(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46229c = new d();
        this.f46234h = 0;
        this.f46235i = 0.0f;
        this.f46238l = -756480;
        this.f46239m = -1315861;
        this.f46240n = 16777215;
        this.f46241o = false;
        this.f46242p = true;
        this.f46243q = 52;
        this.f46244r = 3;
        this.f46245s = 0.6f;
        this.f46246t = 1;
        this.f46247u = 12;
        this.f46248v = 24;
        this.f46249w = 1;
        this.f46250x = 14;
        this.f46251y = -11711155;
        this.f46252z = -756480;
        this.A = null;
        this.B = 0;
        this.C = 0;
        this.D = R.drawable.background_tab;
        this.F = 0;
        this.G = false;
        setFillViewport(true);
        setWillNotDraw(false);
        LinearLayout linearLayout = new LinearLayout(context);
        this.f46231e = linearLayout;
        linearLayout.setOrientation(0);
        this.f46231e.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(this.f46231e);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f46243q = (int) TypedValue.applyDimension(1, this.f46243q, displayMetrics);
        this.f46244r = (int) TypedValue.applyDimension(1, this.f46244r, displayMetrics);
        this.f46246t = (int) TypedValue.applyDimension(0, this.f46246t, displayMetrics);
        this.f46247u = (int) TypedValue.applyDimension(1, this.f46247u, displayMetrics);
        this.f46248v = (int) TypedValue.applyDimension(1, this.f46248v, displayMetrics);
        this.f46249w = (int) TypedValue.applyDimension(1, this.f46249w, displayMetrics);
        this.f46250x = (int) TypedValue.applyDimension(1, this.f46250x, displayMetrics);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SlidingTab);
        this.f46250x = obtainStyledAttributes.getDimensionPixelSize(3, this.f46250x);
        this.f46251y = obtainStyledAttributes.getColor(1, this.f46251y);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.PagerSlidingTabStrip);
        this.f46238l = obtainStyledAttributes2.getColor(2, this.f46238l);
        this.f46239m = obtainStyledAttributes2.getColor(9, this.f46239m);
        this.f46240n = obtainStyledAttributes2.getColor(0, this.f46240n);
        this.f46244r = obtainStyledAttributes2.getDimensionPixelSize(3, this.f46244r);
        this.f46246t = obtainStyledAttributes2.getDimensionPixelSize(10, this.f46246t);
        this.f46247u = obtainStyledAttributes2.getDimensionPixelSize(1, this.f46247u);
        this.f46248v = obtainStyledAttributes2.getDimensionPixelSize(7, this.f46248v);
        this.D = obtainStyledAttributes2.getResourceId(6, this.D);
        this.f46241o = obtainStyledAttributes2.getBoolean(5, this.f46241o);
        this.f46243q = obtainStyledAttributes2.getDimensionPixelSize(4, this.f46243q);
        this.f46242p = obtainStyledAttributes2.getBoolean(8, this.f46242p);
        obtainStyledAttributes2.recycle();
        Paint paint = new Paint();
        this.f46236j = paint;
        paint.setAntiAlias(true);
        this.f46236j.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f46237k = paint2;
        paint2.setAntiAlias(true);
        this.f46237k.setStrokeWidth(this.f46249w);
        this.f46227a = new LinearLayout.LayoutParams(-2, -1);
        this.f46228b = new LinearLayout.LayoutParams(0, -1, 1.0f);
        if (this.E == null) {
            this.E = getResources().getConfiguration().locale;
        }
    }
}
