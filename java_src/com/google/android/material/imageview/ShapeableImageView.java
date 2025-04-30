package com.google.android.material.imageview;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.material.R;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.m;
import com.google.android.material.shape.n;
import com.google.android.material.shape.q;
/* loaded from: classes2.dex */
public class ShapeableImageView extends AppCompatImageView implements q {

    /* renamed from: v  reason: collision with root package name */
    private static final int f15014v = R.style.Widget_MaterialComponents_ShapeableImageView;

    /* renamed from: w  reason: collision with root package name */
    private static final int f15015w = Integer.MIN_VALUE;

    /* renamed from: d  reason: collision with root package name */
    private final n f15016d;

    /* renamed from: e  reason: collision with root package name */
    private final RectF f15017e;

    /* renamed from: f  reason: collision with root package name */
    private final RectF f15018f;

    /* renamed from: g  reason: collision with root package name */
    private final Paint f15019g;

    /* renamed from: h  reason: collision with root package name */
    private final Paint f15020h;

    /* renamed from: i  reason: collision with root package name */
    private final Path f15021i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private ColorStateList f15022j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private MaterialShapeDrawable f15023k;

    /* renamed from: l  reason: collision with root package name */
    private m f15024l;
    @Dimension

    /* renamed from: m  reason: collision with root package name */
    private float f15025m;

    /* renamed from: n  reason: collision with root package name */
    private Path f15026n;
    @Dimension

    /* renamed from: o  reason: collision with root package name */
    private int f15027o;
    @Dimension

    /* renamed from: p  reason: collision with root package name */
    private int f15028p;
    @Dimension

    /* renamed from: q  reason: collision with root package name */
    private int f15029q;
    @Dimension

    /* renamed from: r  reason: collision with root package name */
    private int f15030r;
    @Dimension

    /* renamed from: s  reason: collision with root package name */
    private int f15031s;
    @Dimension

    /* renamed from: t  reason: collision with root package name */
    private int f15032t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f15033u;

    @TargetApi(21)
    /* loaded from: classes2.dex */
    class a extends ViewOutlineProvider {

        /* renamed from: a  reason: collision with root package name */
        private final Rect f15034a = new Rect();

        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            if (ShapeableImageView.this.f15024l == null) {
                return;
            }
            if (ShapeableImageView.this.f15023k == null) {
                ShapeableImageView.this.f15023k = new MaterialShapeDrawable(ShapeableImageView.this.f15024l);
            }
            ShapeableImageView.this.f15017e.round(this.f15034a);
            ShapeableImageView.this.f15023k.setBounds(this.f15034a);
            ShapeableImageView.this.f15023k.getOutline(outline);
        }
    }

    public ShapeableImageView(Context context) {
        this(context, null, 0);
    }

    private void e(Canvas canvas) {
        if (this.f15022j == null) {
            return;
        }
        this.f15019g.setStrokeWidth(this.f15025m);
        int colorForState = this.f15022j.getColorForState(getDrawableState(), this.f15022j.getDefaultColor());
        if (this.f15025m <= 0.0f || colorForState == 0) {
            return;
        }
        this.f15019g.setColor(colorForState);
        canvas.drawPath(this.f15021i, this.f15019g);
    }

    private boolean f() {
        return (this.f15031s == Integer.MIN_VALUE && this.f15032t == Integer.MIN_VALUE) ? false : true;
    }

    private boolean g() {
        return Build.VERSION.SDK_INT >= 17 && getLayoutDirection() == 1;
    }

    private void h(int i2, int i4) {
        this.f15017e.set(getPaddingLeft(), getPaddingTop(), i2 - getPaddingRight(), i4 - getPaddingBottom());
        this.f15016d.d(this.f15024l, 1.0f, this.f15017e, this.f15021i);
        this.f15026n.rewind();
        this.f15026n.addPath(this.f15021i);
        this.f15018f.set(0.0f, 0.0f, i2, i4);
        this.f15026n.addRect(this.f15018f, Path.Direction.CCW);
    }

    @Dimension
    public int getContentPaddingBottom() {
        return this.f15030r;
    }

    @Dimension
    public final int getContentPaddingEnd() {
        int i2 = this.f15032t;
        return i2 != Integer.MIN_VALUE ? i2 : g() ? this.f15027o : this.f15029q;
    }

    @Dimension
    public int getContentPaddingLeft() {
        int i2;
        int i4;
        if (f()) {
            if (g() && (i4 = this.f15032t) != Integer.MIN_VALUE) {
                return i4;
            }
            if (!g() && (i2 = this.f15031s) != Integer.MIN_VALUE) {
                return i2;
            }
        }
        return this.f15027o;
    }

    @Dimension
    public int getContentPaddingRight() {
        int i2;
        int i4;
        if (f()) {
            if (g() && (i4 = this.f15031s) != Integer.MIN_VALUE) {
                return i4;
            }
            if (!g() && (i2 = this.f15032t) != Integer.MIN_VALUE) {
                return i2;
            }
        }
        return this.f15029q;
    }

    @Dimension
    public final int getContentPaddingStart() {
        int i2 = this.f15031s;
        return i2 != Integer.MIN_VALUE ? i2 : g() ? this.f15029q : this.f15027o;
    }

    @Dimension
    public int getContentPaddingTop() {
        return this.f15028p;
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingBottom() {
        return super.getPaddingBottom() - getContentPaddingBottom();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingEnd() {
        return super.getPaddingEnd() - getContentPaddingEnd();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingLeft() {
        return super.getPaddingLeft() - getContentPaddingLeft();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingRight() {
        return super.getPaddingRight() - getContentPaddingRight();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingStart() {
        return super.getPaddingStart() - getContentPaddingStart();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingTop() {
        return super.getPaddingTop() - getContentPaddingTop();
    }

    @Override // com.google.android.material.shape.q
    @NonNull
    public m getShapeAppearanceModel() {
        return this.f15024l;
    }

    @Nullable
    public ColorStateList getStrokeColor() {
        return this.f15022j;
    }

    @Dimension
    public float getStrokeWidth() {
        return this.f15025m;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setLayerType(2, null);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        setLayerType(0, null);
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.f15026n, this.f15020h);
        e(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        if (this.f15033u) {
            return;
        }
        int i5 = Build.VERSION.SDK_INT;
        if (i5 <= 19 || isLayoutDirectionResolved()) {
            this.f15033u = true;
            if (i5 >= 21 && (isPaddingRelative() || f())) {
                setPaddingRelative(super.getPaddingStart(), super.getPaddingTop(), super.getPaddingEnd(), super.getPaddingBottom());
            } else {
                setPadding(super.getPaddingLeft(), super.getPaddingTop(), super.getPaddingRight(), super.getPaddingBottom());
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        super.onSizeChanged(i2, i4, i5, i6);
        h(i2, i4);
    }

    public void setContentPadding(@Dimension int i2, @Dimension int i4, @Dimension int i5, @Dimension int i6) {
        this.f15031s = Integer.MIN_VALUE;
        this.f15032t = Integer.MIN_VALUE;
        super.setPadding((super.getPaddingLeft() - this.f15027o) + i2, (super.getPaddingTop() - this.f15028p) + i4, (super.getPaddingRight() - this.f15029q) + i5, (super.getPaddingBottom() - this.f15030r) + i6);
        this.f15027o = i2;
        this.f15028p = i4;
        this.f15029q = i5;
        this.f15030r = i6;
    }

    @RequiresApi(17)
    public void setContentPaddingRelative(@Dimension int i2, @Dimension int i4, @Dimension int i5, @Dimension int i6) {
        super.setPaddingRelative((super.getPaddingStart() - getContentPaddingStart()) + i2, (super.getPaddingTop() - this.f15028p) + i4, (super.getPaddingEnd() - getContentPaddingEnd()) + i5, (super.getPaddingBottom() - this.f15030r) + i6);
        this.f15027o = g() ? i5 : i2;
        this.f15028p = i4;
        if (!g()) {
            i2 = i5;
        }
        this.f15029q = i2;
        this.f15030r = i6;
    }

    @Override // android.view.View
    public void setPadding(@Dimension int i2, @Dimension int i4, @Dimension int i5, @Dimension int i6) {
        super.setPadding(i2 + getContentPaddingLeft(), i4 + getContentPaddingTop(), i5 + getContentPaddingRight(), i6 + getContentPaddingBottom());
    }

    @Override // android.view.View
    public void setPaddingRelative(@Dimension int i2, @Dimension int i4, @Dimension int i5, @Dimension int i6) {
        super.setPaddingRelative(i2 + getContentPaddingStart(), i4 + getContentPaddingTop(), i5 + getContentPaddingEnd(), i6 + getContentPaddingBottom());
    }

    @Override // com.google.android.material.shape.q
    public void setShapeAppearanceModel(@NonNull m mVar) {
        this.f15024l = mVar;
        MaterialShapeDrawable materialShapeDrawable = this.f15023k;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setShapeAppearanceModel(mVar);
        }
        h(getWidth(), getHeight());
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        this.f15022j = colorStateList;
        invalidate();
    }

    public void setStrokeColorResource(@ColorRes int i2) {
        setStrokeColor(AppCompatResources.getColorStateList(getContext(), i2));
    }

    public void setStrokeWidth(@Dimension float f4) {
        if (this.f15025m != f4) {
            this.f15025m = f4;
            invalidate();
        }
    }

    public void setStrokeWidthResource(@DimenRes int i2) {
        setStrokeWidth(getResources().getDimensionPixelSize(i2));
    }

    public ShapeableImageView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ShapeableImageView(android.content.Context r7, @androidx.annotation.Nullable android.util.AttributeSet r8, int r9) {
        /*
            r6 = this;
            int r0 = com.google.android.material.imageview.ShapeableImageView.f15014v
            android.content.Context r7 = com.google.android.material.theme.overlay.a.c(r7, r8, r9, r0)
            r6.<init>(r7, r8, r9)
            com.google.android.material.shape.n r7 = com.google.android.material.shape.n.k()
            r6.f15016d = r7
            android.graphics.Path r7 = new android.graphics.Path
            r7.<init>()
            r6.f15021i = r7
            r7 = 0
            r6.f15033u = r7
            android.content.Context r1 = r6.getContext()
            android.graphics.Paint r2 = new android.graphics.Paint
            r2.<init>()
            r6.f15020h = r2
            r3 = 1
            r2.setAntiAlias(r3)
            r4 = -1
            r2.setColor(r4)
            android.graphics.PorterDuffXfermode r4 = new android.graphics.PorterDuffXfermode
            android.graphics.PorterDuff$Mode r5 = android.graphics.PorterDuff.Mode.DST_OUT
            r4.<init>(r5)
            r2.setXfermode(r4)
            android.graphics.RectF r2 = new android.graphics.RectF
            r2.<init>()
            r6.f15017e = r2
            android.graphics.RectF r2 = new android.graphics.RectF
            r2.<init>()
            r6.f15018f = r2
            android.graphics.Path r2 = new android.graphics.Path
            r2.<init>()
            r6.f15026n = r2
            int[] r2 = com.google.android.material.R.styleable.ShapeableImageView
            android.content.res.TypedArray r2 = r1.obtainStyledAttributes(r8, r2, r9, r0)
            int r4 = com.google.android.material.R.styleable.ShapeableImageView_strokeColor
            android.content.res.ColorStateList r4 = com.google.android.material.resources.c.a(r1, r2, r4)
            r6.f15022j = r4
            int r4 = com.google.android.material.R.styleable.ShapeableImageView_strokeWidth
            int r4 = r2.getDimensionPixelSize(r4, r7)
            float r4 = (float) r4
            r6.f15025m = r4
            int r4 = com.google.android.material.R.styleable.ShapeableImageView_contentPadding
            int r7 = r2.getDimensionPixelSize(r4, r7)
            r6.f15027o = r7
            r6.f15028p = r7
            r6.f15029q = r7
            r6.f15030r = r7
            int r4 = com.google.android.material.R.styleable.ShapeableImageView_contentPaddingLeft
            int r4 = r2.getDimensionPixelSize(r4, r7)
            r6.f15027o = r4
            int r4 = com.google.android.material.R.styleable.ShapeableImageView_contentPaddingTop
            int r4 = r2.getDimensionPixelSize(r4, r7)
            r6.f15028p = r4
            int r4 = com.google.android.material.R.styleable.ShapeableImageView_contentPaddingRight
            int r4 = r2.getDimensionPixelSize(r4, r7)
            r6.f15029q = r4
            int r4 = com.google.android.material.R.styleable.ShapeableImageView_contentPaddingBottom
            int r7 = r2.getDimensionPixelSize(r4, r7)
            r6.f15030r = r7
            int r7 = com.google.android.material.R.styleable.ShapeableImageView_contentPaddingStart
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            int r7 = r2.getDimensionPixelSize(r7, r4)
            r6.f15031s = r7
            int r7 = com.google.android.material.R.styleable.ShapeableImageView_contentPaddingEnd
            int r7 = r2.getDimensionPixelSize(r7, r4)
            r6.f15032t = r7
            r2.recycle()
            android.graphics.Paint r7 = new android.graphics.Paint
            r7.<init>()
            r6.f15019g = r7
            android.graphics.Paint$Style r2 = android.graphics.Paint.Style.STROKE
            r7.setStyle(r2)
            r7.setAntiAlias(r3)
            com.google.android.material.shape.m$b r7 = com.google.android.material.shape.m.e(r1, r8, r9, r0)
            com.google.android.material.shape.m r7 = r7.m()
            r6.f15024l = r7
            int r7 = android.os.Build.VERSION.SDK_INT
            r8 = 21
            if (r7 < r8) goto Lcc
            com.google.android.material.imageview.ShapeableImageView$a r7 = new com.google.android.material.imageview.ShapeableImageView$a
            r7.<init>()
            r6.setOutlineProvider(r7)
        Lcc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.imageview.ShapeableImageView.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
