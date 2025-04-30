package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.cardview.R;
/* loaded from: classes.dex */
public class CardView extends FrameLayout {

    /* renamed from: h  reason: collision with root package name */
    private static final int[] f1606h = {16842801};

    /* renamed from: i  reason: collision with root package name */
    private static final CardViewImpl f1607i;

    /* renamed from: a  reason: collision with root package name */
    private boolean f1608a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f1609b;

    /* renamed from: c  reason: collision with root package name */
    int f1610c;

    /* renamed from: d  reason: collision with root package name */
    int f1611d;

    /* renamed from: e  reason: collision with root package name */
    final Rect f1612e;

    /* renamed from: f  reason: collision with root package name */
    final Rect f1613f;

    /* renamed from: g  reason: collision with root package name */
    private final CardViewDelegate f1614g;

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            f1607i = new CardViewApi21Impl();
        } else if (i2 >= 17) {
            f1607i = new CardViewApi17Impl();
        } else {
            f1607i = new CardViewBaseImpl();
        }
        f1607i.initStatic();
    }

    public CardView(@NonNull Context context) {
        this(context, null);
    }

    @NonNull
    public ColorStateList getCardBackgroundColor() {
        return f1607i.getBackgroundColor(this.f1614g);
    }

    public float getCardElevation() {
        return f1607i.getElevation(this.f1614g);
    }

    @Px
    public int getContentPaddingBottom() {
        return this.f1612e.bottom;
    }

    @Px
    public int getContentPaddingLeft() {
        return this.f1612e.left;
    }

    @Px
    public int getContentPaddingRight() {
        return this.f1612e.right;
    }

    @Px
    public int getContentPaddingTop() {
        return this.f1612e.top;
    }

    public float getMaxCardElevation() {
        return f1607i.getMaxElevation(this.f1614g);
    }

    public boolean getPreventCornerOverlap() {
        return this.f1609b;
    }

    public float getRadius() {
        return f1607i.getRadius(this.f1614g);
    }

    public boolean getUseCompatPadding() {
        return this.f1608a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i4) {
        CardViewImpl cardViewImpl = f1607i;
        if (!(cardViewImpl instanceof CardViewApi21Impl)) {
            int mode = View.MeasureSpec.getMode(i2);
            if (mode == Integer.MIN_VALUE || mode == 1073741824) {
                i2 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(cardViewImpl.getMinWidth(this.f1614g)), View.MeasureSpec.getSize(i2)), mode);
            }
            int mode2 = View.MeasureSpec.getMode(i4);
            if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
                i4 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(cardViewImpl.getMinHeight(this.f1614g)), View.MeasureSpec.getSize(i4)), mode2);
            }
            super.onMeasure(i2, i4);
            return;
        }
        super.onMeasure(i2, i4);
    }

    public void setCardBackgroundColor(@ColorInt int i2) {
        f1607i.setBackgroundColor(this.f1614g, ColorStateList.valueOf(i2));
    }

    public void setCardElevation(float f4) {
        f1607i.setElevation(this.f1614g, f4);
    }

    public void setContentPadding(@Px int i2, @Px int i4, @Px int i5, @Px int i6) {
        this.f1612e.set(i2, i4, i5, i6);
        f1607i.updatePadding(this.f1614g);
    }

    public void setMaxCardElevation(float f4) {
        f1607i.setMaxElevation(this.f1614g, f4);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i2) {
        this.f1611d = i2;
        super.setMinimumHeight(i2);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i2) {
        this.f1610c = i2;
        super.setMinimumWidth(i2);
    }

    @Override // android.view.View
    public void setPadding(int i2, int i4, int i5, int i6) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i2, int i4, int i5, int i6) {
    }

    public void setPreventCornerOverlap(boolean z3) {
        if (z3 != this.f1609b) {
            this.f1609b = z3;
            f1607i.onPreventCornerOverlapChanged(this.f1614g);
        }
    }

    public void setRadius(float f4) {
        f1607i.setRadius(this.f1614g, f4);
    }

    public void setUseCompatPadding(boolean z3) {
        if (this.f1608a != z3) {
            this.f1608a = z3;
            f1607i.onCompatPaddingChanged(this.f1614g);
        }
    }

    public CardView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.cardViewStyle);
    }

    public void setCardBackgroundColor(@Nullable ColorStateList colorStateList) {
        f1607i.setBackgroundColor(this.f1614g, colorStateList);
    }

    public CardView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        int color;
        ColorStateList valueOf;
        Rect rect = new Rect();
        this.f1612e = rect;
        this.f1613f = new Rect();
        CardViewDelegate cardViewDelegate = new CardViewDelegate() { // from class: androidx.cardview.widget.CardView.1

            /* renamed from: a  reason: collision with root package name */
            private Drawable f1615a;

            @Override // androidx.cardview.widget.CardViewDelegate
            public Drawable getCardBackground() {
                return this.f1615a;
            }

            @Override // androidx.cardview.widget.CardViewDelegate
            public View getCardView() {
                return CardView.this;
            }

            @Override // androidx.cardview.widget.CardViewDelegate
            public boolean getPreventCornerOverlap() {
                return CardView.this.getPreventCornerOverlap();
            }

            @Override // androidx.cardview.widget.CardViewDelegate
            public boolean getUseCompatPadding() {
                return CardView.this.getUseCompatPadding();
            }

            @Override // androidx.cardview.widget.CardViewDelegate
            public void setCardBackground(Drawable drawable) {
                this.f1615a = drawable;
                CardView.this.setBackgroundDrawable(drawable);
            }

            @Override // androidx.cardview.widget.CardViewDelegate
            public void setMinWidthHeightInternal(int i4, int i5) {
                CardView cardView = CardView.this;
                if (i4 > cardView.f1610c) {
                    CardView.super.setMinimumWidth(i4);
                }
                CardView cardView2 = CardView.this;
                if (i5 > cardView2.f1611d) {
                    CardView.super.setMinimumHeight(i5);
                }
            }

            @Override // androidx.cardview.widget.CardViewDelegate
            public void setShadowPadding(int i4, int i5, int i6, int i7) {
                CardView.this.f1613f.set(i4, i5, i6, i7);
                CardView cardView = CardView.this;
                Rect rect2 = cardView.f1612e;
                CardView.super.setPadding(i4 + rect2.left, i5 + rect2.top, i6 + rect2.right, i7 + rect2.bottom);
            }
        };
        this.f1614g = cardViewDelegate;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CardView, i2, R.style.CardView);
        int i4 = R.styleable.CardView_cardBackgroundColor;
        if (obtainStyledAttributes.hasValue(i4)) {
            valueOf = obtainStyledAttributes.getColorStateList(i4);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(f1606h);
            int color2 = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color2, fArr);
            if (fArr[2] > 0.5f) {
                color = getResources().getColor(R.color.cardview_light_background);
            } else {
                color = getResources().getColor(R.color.cardview_dark_background);
            }
            valueOf = ColorStateList.valueOf(color);
        }
        ColorStateList colorStateList = valueOf;
        float dimension = obtainStyledAttributes.getDimension(R.styleable.CardView_cardCornerRadius, 0.0f);
        float dimension2 = obtainStyledAttributes.getDimension(R.styleable.CardView_cardElevation, 0.0f);
        float dimension3 = obtainStyledAttributes.getDimension(R.styleable.CardView_cardMaxElevation, 0.0f);
        this.f1608a = obtainStyledAttributes.getBoolean(R.styleable.CardView_cardUseCompatPadding, false);
        this.f1609b = obtainStyledAttributes.getBoolean(R.styleable.CardView_cardPreventCornerOverlap, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CardView_contentPadding, 0);
        rect.left = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CardView_contentPaddingLeft, dimensionPixelSize);
        rect.top = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CardView_contentPaddingTop, dimensionPixelSize);
        rect.right = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CardView_contentPaddingRight, dimensionPixelSize);
        rect.bottom = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CardView_contentPaddingBottom, dimensionPixelSize);
        float f4 = dimension2 > dimension3 ? dimension2 : dimension3;
        this.f1610c = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CardView_android_minWidth, 0);
        this.f1611d = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CardView_android_minHeight, 0);
        obtainStyledAttributes.recycle();
        f1607i.initialize(cardViewDelegate, context, colorStateList, dimension, dimension2, f4);
    }
}
