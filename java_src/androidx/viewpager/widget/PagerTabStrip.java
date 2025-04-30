package androidx.viewpager.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
/* loaded from: classes2.dex */
public class PagerTabStrip extends PagerTitleStrip {
    private static final String I = "PagerTabStrip";
    private static final int J = 3;
    private static final int K = 6;

    /* renamed from: n0  reason: collision with root package name */
    private static final int f8028n0 = 16;

    /* renamed from: o0  reason: collision with root package name */
    private static final int f8029o0 = 32;

    /* renamed from: p0  reason: collision with root package name */
    private static final int f8030p0 = 64;

    /* renamed from: q0  reason: collision with root package name */
    private static final int f8031q0 = 1;

    /* renamed from: r0  reason: collision with root package name */
    private static final int f8032r0 = 32;
    private int A;
    private boolean B;
    private boolean C;
    private int D;
    private boolean E;
    private float F;
    private float G;
    private int H;

    /* renamed from: s  reason: collision with root package name */
    private int f8033s;

    /* renamed from: t  reason: collision with root package name */
    private int f8034t;

    /* renamed from: u  reason: collision with root package name */
    private int f8035u;

    /* renamed from: v  reason: collision with root package name */
    private int f8036v;

    /* renamed from: w  reason: collision with root package name */
    private int f8037w;

    /* renamed from: x  reason: collision with root package name */
    private int f8038x;

    /* renamed from: y  reason: collision with root package name */
    private final Paint f8039y;

    /* renamed from: z  reason: collision with root package name */
    private final Rect f8040z;

    public PagerTabStrip(@NonNull Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.viewpager.widget.PagerTitleStrip
    public void c(int i2, float f4, boolean z3) {
        Rect rect = this.f8040z;
        int height = getHeight();
        int left = this.f8049c.getLeft() - this.f8038x;
        int right = this.f8049c.getRight() + this.f8038x;
        int i4 = height - this.f8034t;
        rect.set(left, i4, right, height);
        super.c(i2, f4, z3);
        this.A = (int) (Math.abs(f4 - 0.5f) * 2.0f * 255.0f);
        rect.union(this.f8049c.getLeft() - this.f8038x, i4, this.f8049c.getRight() + this.f8038x, height);
        invalidate(rect);
    }

    public boolean getDrawFullUnderline() {
        return this.B;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.viewpager.widget.PagerTitleStrip
    public int getMinHeight() {
        return Math.max(super.getMinHeight(), this.f8037w);
    }

    @ColorInt
    public int getTabIndicatorColor() {
        return this.f8033s;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        int left = this.f8049c.getLeft() - this.f8038x;
        int right = this.f8049c.getRight() + this.f8038x;
        this.f8039y.setColor((this.A << 24) | (this.f8033s & 16777215));
        float f4 = height;
        canvas.drawRect(left, height - this.f8034t, right, f4, this.f8039y);
        if (this.B) {
            this.f8039y.setColor((-16777216) | (this.f8033s & 16777215));
            canvas.drawRect(getPaddingLeft(), height - this.D, getWidth() - getPaddingRight(), f4, this.f8039y);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0 || !this.E) {
            float x3 = motionEvent.getX();
            float y3 = motionEvent.getY();
            if (action == 0) {
                this.F = x3;
                this.G = y3;
                this.E = false;
            } else if (action != 1) {
                if (action == 2 && (Math.abs(x3 - this.F) > this.H || Math.abs(y3 - this.G) > this.H)) {
                    this.E = true;
                }
            } else if (x3 < this.f8049c.getLeft() - this.f8038x) {
                ViewPager viewPager = this.f8047a;
                viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
            } else if (x3 > this.f8049c.getRight() + this.f8038x) {
                ViewPager viewPager2 = this.f8047a;
                viewPager2.setCurrentItem(viewPager2.getCurrentItem() + 1);
            }
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i2) {
        super.setBackgroundColor(i2);
        if (this.C) {
            return;
        }
        this.B = (i2 & (-16777216)) == 0;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.C) {
            return;
        }
        this.B = drawable == null;
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i2) {
        super.setBackgroundResource(i2);
        if (this.C) {
            return;
        }
        this.B = i2 == 0;
    }

    public void setDrawFullUnderline(boolean z3) {
        this.B = z3;
        this.C = true;
        invalidate();
    }

    @Override // android.view.View
    public void setPadding(int i2, int i4, int i5, int i6) {
        int i7 = this.f8035u;
        if (i6 < i7) {
            i6 = i7;
        }
        super.setPadding(i2, i4, i5, i6);
    }

    public void setTabIndicatorColor(@ColorInt int i2) {
        this.f8033s = i2;
        this.f8039y.setColor(i2);
        invalidate();
    }

    public void setTabIndicatorColorResource(@ColorRes int i2) {
        setTabIndicatorColor(ContextCompat.getColor(getContext(), i2));
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public void setTextSpacing(int i2) {
        int i4 = this.f8036v;
        if (i2 < i4) {
            i2 = i4;
        }
        super.setTextSpacing(i2);
    }

    public PagerTabStrip(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.f8039y = paint;
        this.f8040z = new Rect();
        this.A = 255;
        this.B = false;
        this.C = false;
        int i2 = this.f8060n;
        this.f8033s = i2;
        paint.setColor(i2);
        float f4 = context.getResources().getDisplayMetrics().density;
        this.f8034t = (int) ((3.0f * f4) + 0.5f);
        this.f8035u = (int) ((6.0f * f4) + 0.5f);
        this.f8036v = (int) (64.0f * f4);
        this.f8038x = (int) ((16.0f * f4) + 0.5f);
        this.D = (int) ((1.0f * f4) + 0.5f);
        this.f8037w = (int) ((f4 * 32.0f) + 0.5f);
        this.H = ViewConfiguration.get(context).getScaledTouchSlop();
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        setTextSpacing(getTextSpacing());
        setWillNotDraw(false);
        this.f8048b.setFocusable(true);
        this.f8048b.setOnClickListener(new View.OnClickListener() { // from class: androidx.viewpager.widget.PagerTabStrip.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ViewPager viewPager = PagerTabStrip.this.f8047a;
                viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
            }
        });
        this.f8050d.setFocusable(true);
        this.f8050d.setOnClickListener(new View.OnClickListener() { // from class: androidx.viewpager.widget.PagerTabStrip.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ViewPager viewPager = PagerTabStrip.this.f8047a;
                viewPager.setCurrentItem(viewPager.getCurrentItem() + 1);
            }
        });
        if (getBackground() == null) {
            this.B = true;
        }
    }
}
