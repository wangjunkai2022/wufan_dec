package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class ScrimInsetsFrameLayout extends FrameLayout {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    Drawable f15054a;

    /* renamed from: b  reason: collision with root package name */
    Rect f15055b;

    /* renamed from: c  reason: collision with root package name */
    private Rect f15056c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f15057d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f15058e;

    /* loaded from: classes2.dex */
    class a implements OnApplyWindowInsetsListener {
        a() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
            ScrimInsetsFrameLayout scrimInsetsFrameLayout = ScrimInsetsFrameLayout.this;
            if (scrimInsetsFrameLayout.f15055b == null) {
                scrimInsetsFrameLayout.f15055b = new Rect();
            }
            ScrimInsetsFrameLayout.this.f15055b.set(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
            ScrimInsetsFrameLayout.this.a(windowInsetsCompat);
            ScrimInsetsFrameLayout.this.setWillNotDraw(!windowInsetsCompat.hasSystemWindowInsets() || ScrimInsetsFrameLayout.this.f15054a == null);
            ViewCompat.postInvalidateOnAnimation(ScrimInsetsFrameLayout.this);
            return windowInsetsCompat.consumeSystemWindowInsets();
        }
    }

    public ScrimInsetsFrameLayout(@NonNull Context context) {
        this(context, null);
    }

    protected void a(WindowInsetsCompat windowInsetsCompat) {
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f15055b == null || this.f15054a == null) {
            return;
        }
        int save = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        if (this.f15057d) {
            this.f15056c.set(0, 0, width, this.f15055b.top);
            this.f15054a.setBounds(this.f15056c);
            this.f15054a.draw(canvas);
        }
        if (this.f15058e) {
            this.f15056c.set(0, height - this.f15055b.bottom, width, height);
            this.f15054a.setBounds(this.f15056c);
            this.f15054a.draw(canvas);
        }
        Rect rect = this.f15056c;
        Rect rect2 = this.f15055b;
        rect.set(0, rect2.top, rect2.left, height - rect2.bottom);
        this.f15054a.setBounds(this.f15056c);
        this.f15054a.draw(canvas);
        Rect rect3 = this.f15056c;
        Rect rect4 = this.f15055b;
        rect3.set(width - rect4.right, rect4.top, width, height - rect4.bottom);
        this.f15054a.setBounds(this.f15056c);
        this.f15054a.draw(canvas);
        canvas.restoreToCount(save);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.f15054a;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.f15054a;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public void setDrawBottomInsetForeground(boolean z3) {
        this.f15058e = z3;
    }

    public void setDrawTopInsetForeground(boolean z3) {
        this.f15057d = z3;
    }

    public void setScrimInsetForeground(@Nullable Drawable drawable) {
        this.f15054a = drawable;
    }

    public ScrimInsetsFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScrimInsetsFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f15056c = new Rect();
        this.f15057d = true;
        this.f15058e = true;
        TypedArray j4 = o.j(context, attributeSet, R.styleable.ScrimInsetsFrameLayout, i2, R.style.Widget_Design_ScrimInsetsFrameLayout, new int[0]);
        this.f15054a = j4.getDrawable(R.styleable.ScrimInsetsFrameLayout_insetForeground);
        j4.recycle();
        setWillNotDraw(true);
        ViewCompat.setOnApplyWindowInsetsListener(this, new a());
    }
}
