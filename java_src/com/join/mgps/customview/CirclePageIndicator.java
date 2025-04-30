package com.join.mgps.customview;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewConfigurationCompat;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class CirclePageIndicator extends View implements f0 {

    /* renamed from: r  reason: collision with root package name */
    private static final int f45048r = -1;

    /* renamed from: a  reason: collision with root package name */
    private float f45049a;

    /* renamed from: b  reason: collision with root package name */
    private final Paint f45050b;

    /* renamed from: c  reason: collision with root package name */
    private final Paint f45051c;

    /* renamed from: d  reason: collision with root package name */
    private final Paint f45052d;

    /* renamed from: e  reason: collision with root package name */
    private ViewPager f45053e;

    /* renamed from: f  reason: collision with root package name */
    private ViewPager.OnPageChangeListener f45054f;

    /* renamed from: g  reason: collision with root package name */
    private int f45055g;

    /* renamed from: h  reason: collision with root package name */
    private int f45056h;

    /* renamed from: i  reason: collision with root package name */
    private float f45057i;

    /* renamed from: j  reason: collision with root package name */
    private int f45058j;

    /* renamed from: k  reason: collision with root package name */
    private int f45059k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f45060l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f45061m;

    /* renamed from: n  reason: collision with root package name */
    private int f45062n;

    /* renamed from: o  reason: collision with root package name */
    private float f45063o;

    /* renamed from: p  reason: collision with root package name */
    private int f45064p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f45065q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        int f45066a;

        /* loaded from: classes3.dex */
        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f45066a);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f45066a = parcel.readInt();
        }
    }

    public CirclePageIndicator(Context context) {
        this(context, null);
    }

    private int c(int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824 || this.f45053e == null) {
            return size;
        }
        int count = getCount();
        float f4 = this.f45049a;
        int paddingLeft = (int) (getPaddingLeft() + getPaddingRight() + (count * 2 * f4) + ((count - 1) * f4) + 2.0f);
        return mode == Integer.MIN_VALUE ? Math.min(paddingLeft, size) : paddingLeft;
    }

    private int d(int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            return size;
        }
        int paddingTop = (int) ((this.f45049a * 2.0f) + getPaddingTop() + getPaddingBottom() + 1.0f);
        return mode == Integer.MIN_VALUE ? Math.min(paddingTop, size) : paddingTop;
    }

    public boolean a() {
        return this.f45060l;
    }

    public boolean b() {
        return this.f45061m;
    }

    protected int getCount() {
        ViewPager viewPager = this.f45053e;
        if (viewPager == null || viewPager.getAdapter() == null) {
            return 0;
        }
        if (this.f45053e.getAdapter() instanceof m) {
            return this.f45053e.getAdapter().getCount() - 2;
        }
        return this.f45053e.getAdapter().getCount();
    }

    public int getFillColor() {
        return this.f45052d.getColor();
    }

    public int getOrientation() {
        return this.f45059k;
    }

    public int getPageColor() {
        return this.f45050b.getColor();
    }

    public float getRadius() {
        return this.f45049a;
    }

    public int getStrokeColor() {
        return this.f45051c.getColor();
    }

    public float getStrokeWidth() {
        return this.f45051c.getStrokeWidth();
    }

    @Override // com.join.mgps.customview.f0
    public void notifyDataSetChanged() {
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int count;
        int height;
        int paddingTop;
        int paddingBottom;
        int paddingLeft;
        float f4;
        float f5;
        super.onDraw(canvas);
        if (this.f45053e == null || (count = getCount()) == 0) {
            return;
        }
        if (this.f45055g >= count) {
            setCurrentItem(count - 1);
            return;
        }
        if (this.f45059k == 0) {
            height = getWidth();
            paddingTop = getPaddingLeft();
            paddingBottom = getPaddingRight();
            paddingLeft = getPaddingTop();
        } else {
            height = getHeight();
            paddingTop = getPaddingTop();
            paddingBottom = getPaddingBottom();
            paddingLeft = getPaddingLeft();
        }
        float f6 = this.f45049a;
        float f7 = 3.0f * f6;
        float f8 = paddingLeft + f6;
        float f9 = paddingTop + f6;
        if (this.f45060l) {
            f9 += (((height - paddingTop) - paddingBottom) / 2.0f) - (((count * f7) / 2.0f) - (f6 / 2.0f));
        }
        if (this.f45051c.getStrokeWidth() > 0.0f) {
            f6 -= this.f45051c.getStrokeWidth() / 2.0f;
        }
        for (int i2 = 0; i2 < count; i2++) {
            float f10 = (i2 * f7) + f9;
            if (this.f45059k == 0) {
                f5 = f8;
            } else {
                f5 = f10;
                f10 = f8;
            }
            if (this.f45050b.getAlpha() > 0) {
                canvas.drawCircle(f10, f5, f6, this.f45050b);
            }
            float f11 = this.f45049a;
            if (f6 != f11) {
                canvas.drawCircle(f10, f5, f11, this.f45051c);
            }
        }
        boolean z3 = this.f45061m;
        float f12 = (z3 ? this.f45056h : this.f45055g) * f7;
        if (!z3) {
            f12 += this.f45057i * f7;
        }
        if (this.f45059k == 0) {
            float f13 = f9 + f12;
            f4 = f8;
            f8 = f13;
        } else {
            f4 = f9 + f12;
        }
        canvas.drawCircle(f8, f4, this.f45049a, this.f45052d);
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        if (this.f45059k == 0) {
            setMeasuredDimension(c(i2), d(i4));
        } else {
            setMeasuredDimension(d(i2), c(i4));
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i2) {
        this.f45058j = i2;
        ViewPager.OnPageChangeListener onPageChangeListener = this.f45054f;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrollStateChanged(i2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i2, float f4, int i4) {
        this.f45055g = i2;
        this.f45057i = f4;
        invalidate();
        ViewPager.OnPageChangeListener onPageChangeListener = this.f45054f;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrolled(i2, f4, i4);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i2) {
        if (this.f45061m || this.f45058j == 0) {
            this.f45055g = i2;
            this.f45056h = i2;
            invalidate();
        }
        ViewPager.OnPageChangeListener onPageChangeListener = this.f45054f;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageSelected(i2);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        int i2 = savedState.f45066a;
        this.f45055g = i2;
        this.f45056h = i2;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f45066a = this.f45055g;
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (super.onTouchEvent(motionEvent)) {
            return true;
        }
        if (this.f45053e == null || getCount() == 0) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    float x3 = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.f45064p));
                    float f4 = x3 - this.f45063o;
                    if (!this.f45065q && Math.abs(f4) > this.f45062n) {
                        this.f45065q = true;
                    }
                    if (this.f45065q) {
                        this.f45063o = x3;
                        if (this.f45053e.isFakeDragging() || this.f45053e.beginFakeDrag()) {
                            this.f45053e.fakeDragBy(f4);
                        }
                    }
                } else if (action != 3) {
                    if (action == 5) {
                        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
                        this.f45063o = MotionEventCompat.getX(motionEvent, actionIndex);
                        this.f45064p = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                    } else if (action == 6) {
                        int actionIndex2 = MotionEventCompat.getActionIndex(motionEvent);
                        if (MotionEventCompat.getPointerId(motionEvent, actionIndex2) == this.f45064p) {
                            this.f45064p = MotionEventCompat.getPointerId(motionEvent, actionIndex2 == 0 ? 1 : 0);
                        }
                        this.f45063o = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.f45064p));
                    }
                }
            }
            if (!this.f45065q) {
                int count = getCount();
                float width = getWidth();
                float f5 = width / 2.0f;
                float f6 = width / 6.0f;
                if (this.f45055g > 0 && motionEvent.getX() < f5 - f6) {
                    if (action != 3) {
                        this.f45053e.setCurrentItem(this.f45055g - 1);
                    }
                    return true;
                } else if (this.f45055g < count - 1 && motionEvent.getX() > f5 + f6) {
                    if (action != 3) {
                        this.f45053e.setCurrentItem(this.f45055g + 1);
                    }
                    return true;
                }
            }
            this.f45065q = false;
            this.f45064p = -1;
            if (this.f45053e.isFakeDragging()) {
                this.f45053e.endFakeDrag();
            }
        } else {
            this.f45064p = MotionEventCompat.getPointerId(motionEvent, 0);
            this.f45063o = motionEvent.getX();
        }
        return true;
    }

    public void setCentered(boolean z3) {
        this.f45060l = z3;
        invalidate();
    }

    @Override // com.join.mgps.customview.f0
    public void setCurrentItem(int i2) {
        ViewPager viewPager = this.f45053e;
        if (viewPager != null) {
            viewPager.setCurrentItem(i2);
            this.f45055g = i2;
            invalidate();
            return;
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    public void setFillColor(int i2) {
        this.f45052d.setColor(i2);
        invalidate();
    }

    @Override // com.join.mgps.customview.f0
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f45054f = onPageChangeListener;
    }

    public void setOrientation(int i2) {
        if (i2 != 0 && i2 != 1) {
            throw new IllegalArgumentException("Orientation must be either HORIZONTAL or VERTICAL.");
        }
        this.f45059k = i2;
        requestLayout();
    }

    public void setPageColor(int i2) {
        this.f45050b.setColor(i2);
        invalidate();
    }

    public void setRadius(float f4) {
        this.f45049a = f4;
        invalidate();
    }

    public void setSnap(boolean z3) {
        this.f45061m = z3;
        invalidate();
    }

    public void setStrokeColor(int i2) {
        this.f45051c.setColor(i2);
        invalidate();
    }

    public void setStrokeWidth(float f4) {
        this.f45051c.setStrokeWidth(f4);
        invalidate();
    }

    @Override // com.join.mgps.customview.f0
    public void setViewPager(ViewPager viewPager) {
        ViewPager viewPager2 = this.f45053e;
        if (viewPager2 == viewPager) {
            return;
        }
        if (viewPager2 != null) {
            viewPager2.setOnPageChangeListener(null);
        }
        if (viewPager.getAdapter() != null) {
            this.f45053e = viewPager;
            viewPager.setOnPageChangeListener(this);
            invalidate();
            return;
        }
        throw new IllegalStateException("ViewPager does not have adapter instance.");
    }

    public CirclePageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.vpiCirclePageIndicatorStyle);
    }

    public CirclePageIndicator(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        Paint paint = new Paint(1);
        this.f45050b = paint;
        Paint paint2 = new Paint(1);
        this.f45051c = paint2;
        Paint paint3 = new Paint(1);
        this.f45052d = paint3;
        this.f45063o = -1.0f;
        this.f45064p = -1;
        if (isInEditMode()) {
            return;
        }
        Resources resources = getResources();
        int color = resources.getColor(R.color.default_circle_indicator_page_color);
        int color2 = resources.getColor(R.color.default_circle_indicator_fill_color);
        int integer = resources.getInteger(R.integer.default_circle_indicator_orientation);
        int color3 = resources.getColor(R.color.default_circle_indicator_stroke_color);
        float dimension = resources.getDimension(R.dimen.default_circle_indicator_stroke_width);
        float dimension2 = resources.getDimension(R.dimen.default_circle_indicator_radius);
        boolean z3 = resources.getBoolean(R.bool.default_circle_indicator_centered);
        boolean z4 = resources.getBoolean(R.bool.default_circle_indicator_snap);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CirclePageIndicator, i2, 0);
        this.f45060l = obtainStyledAttributes.getBoolean(2, z3);
        this.f45059k = obtainStyledAttributes.getInt(0, integer);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(obtainStyledAttributes.getColor(4, color));
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setColor(obtainStyledAttributes.getColor(7, color3));
        paint2.setStrokeWidth(obtainStyledAttributes.getDimension(8, dimension));
        paint3.setStyle(Paint.Style.FILL);
        paint3.setColor(obtainStyledAttributes.getColor(3, color2));
        this.f45049a = obtainStyledAttributes.getDimension(5, dimension2);
        this.f45061m = obtainStyledAttributes.getBoolean(6, z4);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        if (drawable != null) {
            setBackgroundDrawable(drawable);
        }
        obtainStyledAttributes.recycle();
        this.f45062n = ViewConfigurationCompat.getScaledPagingTouchSlop(ViewConfiguration.get(context));
    }

    @Override // com.join.mgps.customview.f0
    public void setViewPager(ViewPager viewPager, int i2) {
        setViewPager(viewPager);
        setCurrentItem(i2);
    }
}
