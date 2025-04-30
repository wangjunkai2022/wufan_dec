package androidx.viewpager.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.method.SingleLineTransformationMethod;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.TextViewCompat;
import androidx.viewpager.widget.ViewPager;
import java.lang.ref.WeakReference;
import java.util.Locale;
@ViewPager.DecorView
/* loaded from: classes2.dex */
public class PagerTitleStrip extends ViewGroup {

    /* renamed from: o  reason: collision with root package name */
    private static final int[] f8043o = {16842804, 16842901, 16842904, 16842927};

    /* renamed from: p  reason: collision with root package name */
    private static final int[] f8044p = {16843660};

    /* renamed from: q  reason: collision with root package name */
    private static final float f8045q = 0.6f;

    /* renamed from: r  reason: collision with root package name */
    private static final int f8046r = 16;

    /* renamed from: a  reason: collision with root package name */
    ViewPager f8047a;

    /* renamed from: b  reason: collision with root package name */
    TextView f8048b;

    /* renamed from: c  reason: collision with root package name */
    TextView f8049c;

    /* renamed from: d  reason: collision with root package name */
    TextView f8050d;

    /* renamed from: e  reason: collision with root package name */
    private int f8051e;

    /* renamed from: f  reason: collision with root package name */
    float f8052f;

    /* renamed from: g  reason: collision with root package name */
    private int f8053g;

    /* renamed from: h  reason: collision with root package name */
    private int f8054h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f8055i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f8056j;

    /* renamed from: k  reason: collision with root package name */
    private final PageListener f8057k;

    /* renamed from: l  reason: collision with root package name */
    private WeakReference<PagerAdapter> f8058l;

    /* renamed from: m  reason: collision with root package name */
    private int f8059m;

    /* renamed from: n  reason: collision with root package name */
    int f8060n;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class PageListener extends DataSetObserver implements ViewPager.OnPageChangeListener, ViewPager.OnAdapterChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private int f8061a;

        PageListener() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnAdapterChangeListener
        public void onAdapterChanged(ViewPager viewPager, PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
            PagerTitleStrip.this.a(pagerAdapter, pagerAdapter2);
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
            pagerTitleStrip.b(pagerTitleStrip.f8047a.getCurrentItem(), PagerTitleStrip.this.f8047a.getAdapter());
            PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
            float f4 = pagerTitleStrip2.f8052f;
            if (f4 < 0.0f) {
                f4 = 0.0f;
            }
            pagerTitleStrip2.c(pagerTitleStrip2.f8047a.getCurrentItem(), f4, true);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
            this.f8061a = i2;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
            if (f4 > 0.5f) {
                i2++;
            }
            PagerTitleStrip.this.c(i2, f4, false);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            if (this.f8061a == 0) {
                PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
                pagerTitleStrip.b(pagerTitleStrip.f8047a.getCurrentItem(), PagerTitleStrip.this.f8047a.getAdapter());
                PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
                float f4 = pagerTitleStrip2.f8052f;
                if (f4 < 0.0f) {
                    f4 = 0.0f;
                }
                pagerTitleStrip2.c(pagerTitleStrip2.f8047a.getCurrentItem(), f4, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class SingleLineAllCapsTransform extends SingleLineTransformationMethod {

        /* renamed from: a  reason: collision with root package name */
        private Locale f8063a;

        SingleLineAllCapsTransform(Context context) {
            this.f8063a = context.getResources().getConfiguration().locale;
        }

        @Override // android.text.method.ReplacementTransformationMethod, android.text.method.TransformationMethod
        public CharSequence getTransformation(CharSequence charSequence, View view) {
            CharSequence transformation = super.getTransformation(charSequence, view);
            if (transformation != null) {
                return transformation.toString().toUpperCase(this.f8063a);
            }
            return null;
        }
    }

    public PagerTitleStrip(@NonNull Context context) {
        this(context, null);
    }

    private static void setSingleLineAllCaps(TextView textView) {
        textView.setTransformationMethod(new SingleLineAllCapsTransform(textView.getContext()));
    }

    void a(PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
        if (pagerAdapter != null) {
            pagerAdapter.unregisterDataSetObserver(this.f8057k);
            this.f8058l = null;
        }
        if (pagerAdapter2 != null) {
            pagerAdapter2.registerDataSetObserver(this.f8057k);
            this.f8058l = new WeakReference<>(pagerAdapter2);
        }
        ViewPager viewPager = this.f8047a;
        if (viewPager != null) {
            this.f8051e = -1;
            this.f8052f = -1.0f;
            b(viewPager.getCurrentItem(), pagerAdapter2);
            requestLayout();
        }
    }

    void b(int i2, PagerAdapter pagerAdapter) {
        int count = pagerAdapter != null ? pagerAdapter.getCount() : 0;
        this.f8055i = true;
        CharSequence charSequence = null;
        this.f8048b.setText((i2 < 1 || pagerAdapter == null) ? null : pagerAdapter.getPageTitle(i2 - 1));
        this.f8049c.setText((pagerAdapter == null || i2 >= count) ? null : pagerAdapter.getPageTitle(i2));
        int i4 = i2 + 1;
        if (i4 < count && pagerAdapter != null) {
            charSequence = pagerAdapter.getPageTitle(i4);
        }
        this.f8050d.setText(charSequence);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.8f)), Integer.MIN_VALUE);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), Integer.MIN_VALUE);
        this.f8048b.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f8049c.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f8050d.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f8051e = i2;
        if (!this.f8056j) {
            c(i2, this.f8052f, false);
        }
        this.f8055i = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(int i2, float f4, boolean z3) {
        int i4;
        int i5;
        int i6;
        int i7;
        if (i2 != this.f8051e) {
            b(i2, this.f8047a.getAdapter());
        } else if (!z3 && f4 == this.f8052f) {
            return;
        }
        this.f8056j = true;
        int measuredWidth = this.f8048b.getMeasuredWidth();
        int measuredWidth2 = this.f8049c.getMeasuredWidth();
        int measuredWidth3 = this.f8050d.getMeasuredWidth();
        int i8 = measuredWidth2 / 2;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i9 = paddingRight + i8;
        int i10 = (width - (paddingLeft + i8)) - i9;
        float f5 = 0.5f + f4;
        if (f5 > 1.0f) {
            f5 -= 1.0f;
        }
        int i11 = ((width - i9) - ((int) (i10 * f5))) - i8;
        int i12 = measuredWidth2 + i11;
        int baseline = this.f8048b.getBaseline();
        int baseline2 = this.f8049c.getBaseline();
        int baseline3 = this.f8050d.getBaseline();
        int max = Math.max(Math.max(baseline, baseline2), baseline3);
        int i13 = max - baseline;
        int i14 = max - baseline2;
        int i15 = max - baseline3;
        int max2 = Math.max(Math.max(this.f8048b.getMeasuredHeight() + i13, this.f8049c.getMeasuredHeight() + i14), this.f8050d.getMeasuredHeight() + i15);
        int i16 = this.f8054h & 112;
        if (i16 == 16) {
            i4 = (((height - paddingTop) - paddingBottom) - max2) / 2;
        } else if (i16 != 80) {
            i5 = i13 + paddingTop;
            i6 = i14 + paddingTop;
            i7 = paddingTop + i15;
            TextView textView = this.f8049c;
            textView.layout(i11, i6, i12, textView.getMeasuredHeight() + i6);
            int min = Math.min(paddingLeft, (i11 - this.f8053g) - measuredWidth);
            TextView textView2 = this.f8048b;
            textView2.layout(min, i5, measuredWidth + min, textView2.getMeasuredHeight() + i5);
            int max3 = Math.max((width - paddingRight) - measuredWidth3, i12 + this.f8053g);
            TextView textView3 = this.f8050d;
            textView3.layout(max3, i7, max3 + measuredWidth3, textView3.getMeasuredHeight() + i7);
            this.f8052f = f4;
            this.f8056j = false;
        } else {
            i4 = (height - paddingBottom) - max2;
        }
        i5 = i13 + i4;
        i6 = i14 + i4;
        i7 = i4 + i15;
        TextView textView4 = this.f8049c;
        textView4.layout(i11, i6, i12, textView4.getMeasuredHeight() + i6);
        int min2 = Math.min(paddingLeft, (i11 - this.f8053g) - measuredWidth);
        TextView textView22 = this.f8048b;
        textView22.layout(min2, i5, measuredWidth + min2, textView22.getMeasuredHeight() + i5);
        int max32 = Math.max((width - paddingRight) - measuredWidth3, i12 + this.f8053g);
        TextView textView32 = this.f8050d;
        textView32.layout(max32, i7, max32 + measuredWidth3, textView32.getMeasuredHeight() + i7);
        this.f8052f = f4;
        this.f8056j = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMinHeight() {
        Drawable background = getBackground();
        if (background != null) {
            return background.getIntrinsicHeight();
        }
        return 0;
    }

    public int getTextSpacing() {
        return this.f8053g;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof ViewPager) {
            ViewPager viewPager = (ViewPager) parent;
            PagerAdapter adapter = viewPager.getAdapter();
            viewPager.setInternalPageChangeListener(this.f8057k);
            viewPager.addOnAdapterChangeListener(this.f8057k);
            this.f8047a = viewPager;
            WeakReference<PagerAdapter> weakReference = this.f8058l;
            a(weakReference != null ? weakReference.get() : null, adapter);
            return;
        }
        throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPager viewPager = this.f8047a;
        if (viewPager != null) {
            a(viewPager.getAdapter(), null);
            this.f8047a.setInternalPageChangeListener(null);
            this.f8047a.removeOnAdapterChangeListener(this.f8057k);
            this.f8047a = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        if (this.f8047a != null) {
            float f4 = this.f8052f;
            if (f4 < 0.0f) {
                f4 = 0.0f;
            }
            c(this.f8051e, f4, true);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        int max;
        if (View.MeasureSpec.getMode(i2) == 1073741824) {
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int childMeasureSpec = ViewGroup.getChildMeasureSpec(i4, paddingTop, -2);
            int size = View.MeasureSpec.getSize(i2);
            int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i2, (int) (size * 0.2f), -2);
            this.f8048b.measure(childMeasureSpec2, childMeasureSpec);
            this.f8049c.measure(childMeasureSpec2, childMeasureSpec);
            this.f8050d.measure(childMeasureSpec2, childMeasureSpec);
            if (View.MeasureSpec.getMode(i4) == 1073741824) {
                max = View.MeasureSpec.getSize(i4);
            } else {
                max = Math.max(getMinHeight(), this.f8049c.getMeasuredHeight() + paddingTop);
            }
            setMeasuredDimension(size, View.resolveSizeAndState(max, i4, this.f8049c.getMeasuredState() << 16));
            return;
        }
        throw new IllegalStateException("Must measure with an exact width");
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f8055i) {
            return;
        }
        super.requestLayout();
    }

    public void setGravity(int i2) {
        this.f8054h = i2;
        requestLayout();
    }

    public void setNonPrimaryAlpha(@FloatRange(from = 0.0d, to = 1.0d) float f4) {
        int i2 = ((int) (f4 * 255.0f)) & 255;
        this.f8059m = i2;
        int i4 = (i2 << 24) | (this.f8060n & 16777215);
        this.f8048b.setTextColor(i4);
        this.f8050d.setTextColor(i4);
    }

    public void setTextColor(@ColorInt int i2) {
        this.f8060n = i2;
        this.f8049c.setTextColor(i2);
        int i4 = (this.f8059m << 24) | (this.f8060n & 16777215);
        this.f8048b.setTextColor(i4);
        this.f8050d.setTextColor(i4);
    }

    public void setTextSize(int i2, float f4) {
        this.f8048b.setTextSize(i2, f4);
        this.f8049c.setTextSize(i2, f4);
        this.f8050d.setTextSize(i2, f4);
    }

    public void setTextSpacing(int i2) {
        this.f8053g = i2;
        requestLayout();
    }

    public PagerTitleStrip(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8051e = -1;
        this.f8052f = -1.0f;
        this.f8057k = new PageListener();
        TextView textView = new TextView(context);
        this.f8048b = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.f8049c = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.f8050d = textView3;
        addView(textView3);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f8043o);
        boolean z3 = false;
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            TextViewCompat.setTextAppearance(this.f8048b, resourceId);
            TextViewCompat.setTextAppearance(this.f8049c, resourceId);
            TextViewCompat.setTextAppearance(this.f8050d, resourceId);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            setTextSize(0, dimensionPixelSize);
        }
        if (obtainStyledAttributes.hasValue(2)) {
            int color = obtainStyledAttributes.getColor(2, 0);
            this.f8048b.setTextColor(color);
            this.f8049c.setTextColor(color);
            this.f8050d.setTextColor(color);
        }
        this.f8054h = obtainStyledAttributes.getInteger(3, 80);
        obtainStyledAttributes.recycle();
        this.f8060n = this.f8049c.getTextColors().getDefaultColor();
        setNonPrimaryAlpha(f8045q);
        this.f8048b.setEllipsize(TextUtils.TruncateAt.END);
        this.f8049c.setEllipsize(TextUtils.TruncateAt.END);
        this.f8050d.setEllipsize(TextUtils.TruncateAt.END);
        if (resourceId != 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, f8044p);
            z3 = obtainStyledAttributes2.getBoolean(0, false);
            obtainStyledAttributes2.recycle();
        }
        if (z3) {
            setSingleLineAllCaps(this.f8048b);
            setSingleLineAllCaps(this.f8049c);
            setSingleLineAllCaps(this.f8050d);
        } else {
            this.f8048b.setSingleLine();
            this.f8049c.setSingleLine();
            this.f8050d.setSingleLine();
        }
        this.f8053g = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }
}
