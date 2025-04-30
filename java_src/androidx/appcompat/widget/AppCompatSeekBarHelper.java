package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.annotation.Nullable;
import androidx.appcompat.R;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
/* loaded from: classes.dex */
class AppCompatSeekBarHelper extends AppCompatProgressBarHelper {

    /* renamed from: d  reason: collision with root package name */
    private final SeekBar f1034d;

    /* renamed from: e  reason: collision with root package name */
    private Drawable f1035e;

    /* renamed from: f  reason: collision with root package name */
    private ColorStateList f1036f;

    /* renamed from: g  reason: collision with root package name */
    private PorterDuff.Mode f1037g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f1038h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f1039i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatSeekBarHelper(SeekBar seekBar) {
        super(seekBar);
        this.f1036f = null;
        this.f1037g = null;
        this.f1038h = false;
        this.f1039i = false;
        this.f1034d = seekBar;
    }

    private void f() {
        Drawable drawable = this.f1035e;
        if (drawable != null) {
            if (this.f1038h || this.f1039i) {
                Drawable wrap = DrawableCompat.wrap(drawable.mutate());
                this.f1035e = wrap;
                if (this.f1038h) {
                    DrawableCompat.setTintList(wrap, this.f1036f);
                }
                if (this.f1039i) {
                    DrawableCompat.setTintMode(this.f1035e, this.f1037g);
                }
                if (this.f1035e.isStateful()) {
                    this.f1035e.setState(this.f1034d.getDrawableState());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.widget.AppCompatProgressBarHelper
    public void c(AttributeSet attributeSet, int i2) {
        super.c(attributeSet, i2);
        Context context = this.f1034d.getContext();
        int[] iArr = R.styleable.AppCompatSeekBar;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i2, 0);
        SeekBar seekBar = this.f1034d;
        ViewCompat.saveAttributeDataForStyleable(seekBar, seekBar.getContext(), iArr, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i2, 0);
        Drawable drawableIfKnown = obtainStyledAttributes.getDrawableIfKnown(R.styleable.AppCompatSeekBar_android_thumb);
        if (drawableIfKnown != null) {
            this.f1034d.setThumb(drawableIfKnown);
        }
        m(obtainStyledAttributes.getDrawable(R.styleable.AppCompatSeekBar_tickMark));
        int i4 = R.styleable.AppCompatSeekBar_tickMarkTintMode;
        if (obtainStyledAttributes.hasValue(i4)) {
            this.f1037g = DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(i4, -1), this.f1037g);
            this.f1039i = true;
        }
        int i5 = R.styleable.AppCompatSeekBar_tickMarkTint;
        if (obtainStyledAttributes.hasValue(i5)) {
            this.f1036f = obtainStyledAttributes.getColorStateList(i5);
            this.f1038h = true;
        }
        obtainStyledAttributes.recycle();
        f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(Canvas canvas) {
        if (this.f1035e != null) {
            int max = this.f1034d.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f1035e.getIntrinsicWidth();
                int intrinsicHeight = this.f1035e.getIntrinsicHeight();
                int i2 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i4 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f1035e.setBounds(-i2, -i4, i2, i4);
                float width = ((this.f1034d.getWidth() - this.f1034d.getPaddingLeft()) - this.f1034d.getPaddingRight()) / max;
                int save = canvas.save();
                canvas.translate(this.f1034d.getPaddingLeft(), this.f1034d.getHeight() / 2);
                for (int i5 = 0; i5 <= max; i5++) {
                    this.f1035e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(save);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        Drawable drawable = this.f1035e;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.f1034d.getDrawableState())) {
            this.f1034d.invalidateDrawable(drawable);
        }
    }

    @Nullable
    Drawable i() {
        return this.f1035e;
    }

    @Nullable
    ColorStateList j() {
        return this.f1036f;
    }

    @Nullable
    PorterDuff.Mode k() {
        return this.f1037g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l() {
        Drawable drawable = this.f1035e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    void m(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f1035e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1035e = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f1034d);
            DrawableCompat.setLayoutDirection(drawable, ViewCompat.getLayoutDirection(this.f1034d));
            if (drawable.isStateful()) {
                drawable.setState(this.f1034d.getDrawableState());
            }
            f();
        }
        this.f1034d.invalidate();
    }

    void n(@Nullable ColorStateList colorStateList) {
        this.f1036f = colorStateList;
        this.f1038h = true;
        f();
    }

    void o(@Nullable PorterDuff.Mode mode) {
        this.f1037g = mode;
        this.f1039i = true;
        f();
    }
}
