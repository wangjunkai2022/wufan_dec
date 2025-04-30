package com.join.mgps.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes3.dex */
public class DrawableDividerItemDecoration extends RecyclerView.ItemDecoration {

    /* renamed from: a  reason: collision with root package name */
    private Drawable f45399a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f45400b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f45401c;

    public DrawableDividerItemDecoration(Context context, AttributeSet attributeSet) {
        this.f45400b = false;
        this.f45401c = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16843284});
        this.f45399a = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
    }

    private int a(RecyclerView recyclerView) {
        if (recyclerView.getLayoutManager() instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) recyclerView.getLayoutManager()).getOrientation();
        }
        throw new IllegalStateException("DividerItemDecoration can only be used with a LinearLayoutManager.");
    }

    private boolean b(RecyclerView recyclerView) {
        if (recyclerView.getLayoutManager() instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) recyclerView.getLayoutManager()).getReverseLayout();
        }
        throw new IllegalStateException("DividerItemDecoration can only be used with a LinearLayoutManager.");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        super.getItemOffsets(rect, view, recyclerView, state);
        if (this.f45399a != null && recyclerView.getChildPosition(view) >= 1) {
            if (a(recyclerView) == 1) {
                rect.top = this.f45399a.getIntrinsicHeight();
            } else {
                rect.left = this.f45399a.getIntrinsicWidth();
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        int paddingTop;
        int i2;
        int height;
        int i4;
        if (this.f45399a == null) {
            super.onDrawOver(canvas, recyclerView, state);
            return;
        }
        int a4 = a(recyclerView);
        int childCount = recyclerView.getChildCount();
        int i5 = 0;
        if (a4 == 1) {
            int intrinsicHeight = this.f45399a.getIntrinsicHeight();
            int paddingLeft = recyclerView.getPaddingLeft();
            i4 = recyclerView.getWidth() - recyclerView.getPaddingRight();
            i2 = intrinsicHeight;
            i5 = paddingLeft;
            height = 0;
            paddingTop = 0;
        } else {
            int intrinsicWidth = this.f45399a.getIntrinsicWidth();
            paddingTop = recyclerView.getPaddingTop();
            i2 = intrinsicWidth;
            height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            i4 = 0;
        }
        for (int i6 = !this.f45400b ? 1 : 0; i6 < childCount; i6++) {
            View childAt = recyclerView.getChildAt(i6);
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
            if (a4 == 1) {
                if (b(recyclerView)) {
                    height = childAt.getBottom() - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    paddingTop = height - i2;
                } else {
                    int top = childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                    paddingTop = top;
                    height = top + i2;
                }
            } else if (b(recyclerView)) {
                int right = childAt.getRight() - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                i4 = right;
                i5 = right - i2;
            } else {
                i5 = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                i4 = i5 + i2;
            }
            this.f45399a.setBounds(i5, paddingTop, i4, height);
            this.f45399a.draw(canvas);
        }
        if (!this.f45401c || childCount <= 0) {
            return;
        }
        View childAt2 = recyclerView.getChildAt(childCount - 1);
        RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) childAt2.getLayoutParams();
        if (a4 == 1) {
            paddingTop = childAt2.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
            height = paddingTop + i2;
        } else {
            i5 = childAt2.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
            i4 = i5 + i2;
        }
        this.f45399a.setBounds(i5, paddingTop, i4, height);
        this.f45399a.draw(canvas);
    }

    public DrawableDividerItemDecoration(Context context, AttributeSet attributeSet, boolean z3, boolean z4) {
        this(context, attributeSet);
        this.f45400b = z3;
        this.f45401c = z4;
    }

    public DrawableDividerItemDecoration(Drawable drawable) {
        this.f45400b = false;
        this.f45401c = false;
        this.f45399a = drawable;
    }

    public DrawableDividerItemDecoration(Drawable drawable, boolean z3, boolean z4) {
        this(drawable);
        this.f45400b = z3;
        this.f45401c = z4;
    }
}
