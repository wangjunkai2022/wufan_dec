package com.join.mgps.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
/* compiled from: DividerGridItemDecoration.java */
/* loaded from: classes3.dex */
public class c extends RecyclerView.ItemDecoration {

    /* renamed from: a  reason: collision with root package name */
    private final int[] f46779a;

    /* renamed from: b  reason: collision with root package name */
    private Drawable f46780b;

    public c(Context context) {
        int[] iArr = {16843284};
        this.f46779a = iArr;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        this.f46780b = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
    }

    private int c(RecyclerView recyclerView) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).getSpanCount();
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            return ((StaggeredGridLayoutManager) layoutManager).getSpanCount();
        }
        return -1;
    }

    private boolean d(RecyclerView recyclerView, int i2, int i4, int i5) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return (i2 + 1) % i4 == 0;
        } else if (layoutManager instanceof StaggeredGridLayoutManager) {
            return ((StaggeredGridLayoutManager) layoutManager).getOrientation() == 1 ? (i2 + 1) % i4 == 0 : i2 >= i5 - (i5 % i4);
        } else {
            return false;
        }
    }

    private boolean e(RecyclerView recyclerView, int i2, int i4, int i5) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return i2 >= i5 - (i5 % i4);
        } else if (layoutManager instanceof StaggeredGridLayoutManager) {
            return ((StaggeredGridLayoutManager) layoutManager).getOrientation() == 1 ? i2 >= i5 - (i5 % i4) : (i2 + 1) % i4 == 0;
        } else {
            return false;
        }
    }

    public void a(Canvas canvas, RecyclerView recyclerView) {
        int childCount = recyclerView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
            int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            this.f46780b.setBounds(childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, bottom, childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + this.f46780b.getIntrinsicWidth(), this.f46780b.getIntrinsicHeight() + bottom);
            this.f46780b.draw(canvas);
        }
    }

    public void b(Canvas canvas, RecyclerView recyclerView) {
        int childCount = recyclerView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
            int top = childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            int right = childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            this.f46780b.setBounds(right, top, this.f46780b.getIntrinsicWidth() + right, bottom);
            this.f46780b.draw(canvas);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, int i2, RecyclerView recyclerView) {
        int c4 = c(recyclerView);
        int itemCount = recyclerView.getAdapter().getItemCount();
        if (e(recyclerView, i2, c4, itemCount)) {
            rect.set(0, 0, this.f46780b.getIntrinsicWidth(), 0);
        } else if (d(recyclerView, i2, c4, itemCount)) {
            rect.set(0, 0, 0, this.f46780b.getIntrinsicHeight());
        } else {
            rect.set(0, 0, this.f46780b.getIntrinsicWidth(), this.f46780b.getIntrinsicHeight());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        a(canvas, recyclerView);
        b(canvas, recyclerView);
    }
}
