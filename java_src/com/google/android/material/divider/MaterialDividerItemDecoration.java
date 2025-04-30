package com.google.android.material.divider;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import com.google.android.material.internal.o;
import com.google.android.material.resources.c;
/* loaded from: classes2.dex */
public class MaterialDividerItemDecoration extends RecyclerView.ItemDecoration {

    /* renamed from: i  reason: collision with root package name */
    public static final int f14852i = 0;

    /* renamed from: j  reason: collision with root package name */
    public static final int f14853j = 1;

    /* renamed from: k  reason: collision with root package name */
    private static final int f14854k = R.style.Widget_MaterialComponents_MaterialDivider;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private Drawable f14855a;

    /* renamed from: b  reason: collision with root package name */
    private int f14856b;
    @ColorInt

    /* renamed from: c  reason: collision with root package name */
    private int f14857c;

    /* renamed from: d  reason: collision with root package name */
    private int f14858d;

    /* renamed from: e  reason: collision with root package name */
    private int f14859e;

    /* renamed from: f  reason: collision with root package name */
    private int f14860f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f14861g;

    /* renamed from: h  reason: collision with root package name */
    private final Rect f14862h;

    public MaterialDividerItemDecoration(@NonNull Context context, int i2) {
        this(context, null, i2);
    }

    private void a(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
        int height;
        int i2;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i2 = recyclerView.getPaddingTop();
            height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            canvas.clipRect(recyclerView.getPaddingLeft(), i2, recyclerView.getWidth() - recyclerView.getPaddingRight(), height);
        } else {
            height = recyclerView.getHeight();
            i2 = 0;
        }
        int i4 = i2 + this.f14859e;
        int i5 = height - this.f14860f;
        int childCount = recyclerView.getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = recyclerView.getChildAt(i6);
            recyclerView.getLayoutManager().getDecoratedBoundsWithMargins(childAt, this.f14862h);
            int round = this.f14862h.right + Math.round(childAt.getTranslationX());
            this.f14855a.setBounds((round - this.f14855a.getIntrinsicWidth()) - this.f14856b, i4, round, i5);
            this.f14855a.draw(canvas);
        }
        canvas.restore();
    }

    private void b(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
        int width;
        int i2;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i2 = recyclerView.getPaddingLeft();
            width = recyclerView.getWidth() - recyclerView.getPaddingRight();
            canvas.clipRect(i2, recyclerView.getPaddingTop(), width, recyclerView.getHeight() - recyclerView.getPaddingBottom());
        } else {
            width = recyclerView.getWidth();
            i2 = 0;
        }
        boolean z3 = ViewCompat.getLayoutDirection(recyclerView) == 1;
        int i4 = i2 + (z3 ? this.f14860f : this.f14859e);
        int i5 = width - (z3 ? this.f14859e : this.f14860f);
        int childCount = recyclerView.getChildCount();
        if (!this.f14861g) {
            childCount--;
        }
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = recyclerView.getChildAt(i6);
            recyclerView.getDecoratedBoundsWithMargins(childAt, this.f14862h);
            int round = this.f14862h.bottom + Math.round(childAt.getTranslationY());
            this.f14855a.setBounds(i4, (round - this.f14855a.getIntrinsicHeight()) - this.f14856b, i5, round);
            this.f14855a.draw(canvas);
        }
        canvas.restore();
    }

    @ColorInt
    public int c() {
        return this.f14857c;
    }

    @Px
    public int d() {
        return this.f14860f;
    }

    @Px
    public int e() {
        return this.f14859e;
    }

    @Px
    public int f() {
        return this.f14856b;
    }

    public int g() {
        return this.f14858d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        rect.set(0, 0, 0, 0);
        if (this.f14858d == 1) {
            rect.bottom = this.f14855a.getIntrinsicHeight() + this.f14856b;
        } else {
            rect.right = this.f14855a.getIntrinsicWidth() + this.f14856b;
        }
    }

    public boolean h() {
        return this.f14861g;
    }

    public void i(@ColorInt int i2) {
        this.f14857c = i2;
        Drawable wrap = DrawableCompat.wrap(this.f14855a);
        this.f14855a = wrap;
        DrawableCompat.setTint(wrap, i2);
    }

    public void j(@NonNull Context context, @ColorRes int i2) {
        i(ContextCompat.getColor(context, i2));
    }

    public void k(@Px int i2) {
        this.f14860f = i2;
    }

    public void l(@NonNull Context context, @DimenRes int i2) {
        k(context.getResources().getDimensionPixelOffset(i2));
    }

    public void m(@Px int i2) {
        this.f14859e = i2;
    }

    public void n(@NonNull Context context, @DimenRes int i2) {
        m(context.getResources().getDimensionPixelOffset(i2));
    }

    public void o(@Px int i2) {
        this.f14856b = i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        if (recyclerView.getLayoutManager() == null) {
            return;
        }
        if (this.f14858d == 1) {
            b(canvas, recyclerView);
        } else {
            a(canvas, recyclerView);
        }
    }

    public void p(@NonNull Context context, @DimenRes int i2) {
        o(context.getResources().getDimensionPixelSize(i2));
    }

    public void q(boolean z3) {
        this.f14861g = z3;
    }

    public void setOrientation(int i2) {
        if (i2 != 0 && i2 != 1) {
            throw new IllegalArgumentException("Invalid orientation: " + i2 + ". It should be either HORIZONTAL or VERTICAL");
        }
        this.f14858d = i2;
    }

    public MaterialDividerItemDecoration(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        this(context, attributeSet, R.attr.materialDividerStyle, i2);
    }

    public MaterialDividerItemDecoration(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2, int i4) {
        this.f14862h = new Rect();
        TypedArray j4 = o.j(context, attributeSet, R.styleable.MaterialDivider, i2, f14854k, new int[0]);
        this.f14857c = c.a(context, j4, R.styleable.MaterialDivider_dividerColor).getDefaultColor();
        this.f14856b = j4.getDimensionPixelSize(R.styleable.MaterialDivider_dividerThickness, context.getResources().getDimensionPixelSize(R.dimen.material_divider_thickness));
        this.f14859e = j4.getDimensionPixelOffset(R.styleable.MaterialDivider_dividerInsetStart, 0);
        this.f14860f = j4.getDimensionPixelOffset(R.styleable.MaterialDivider_dividerInsetEnd, 0);
        this.f14861g = j4.getBoolean(R.styleable.MaterialDivider_lastItemDecorated, true);
        j4.recycle();
        this.f14855a = new ShapeDrawable();
        i(this.f14857c);
        setOrientation(i4);
    }
}
