package com.dingmouren.layoutmanagergroup.picker;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2.dex */
public class PickerLayoutManager extends LinearLayoutManager {

    /* renamed from: j  reason: collision with root package name */
    private static final String f11198j = "PickerLayoutManager";

    /* renamed from: a  reason: collision with root package name */
    private float f11199a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f11200b;

    /* renamed from: c  reason: collision with root package name */
    private LinearSnapHelper f11201c;

    /* renamed from: d  reason: collision with root package name */
    private a f11202d;

    /* renamed from: e  reason: collision with root package name */
    private int f11203e;

    /* renamed from: f  reason: collision with root package name */
    private int f11204f;

    /* renamed from: g  reason: collision with root package name */
    private int f11205g;

    /* renamed from: h  reason: collision with root package name */
    private RecyclerView f11206h;

    /* renamed from: i  reason: collision with root package name */
    private int f11207i;

    /* loaded from: classes2.dex */
    public interface a {
        void a(View view, int i2);
    }

    public PickerLayoutManager(Context context, int i2, boolean z3) {
        super(context, i2, z3);
        this.f11199a = 0.5f;
        this.f11200b = true;
        this.f11205g = -1;
        this.f11201c = new LinearSnapHelper();
        this.f11207i = i2;
    }

    private void a() {
        float width = getWidth() / 2.0f;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            float min = ((((1.0f - this.f11199a) * (-1.0f)) * Math.min(width, Math.abs(width - ((getDecoratedLeft(childAt) + getDecoratedRight(childAt)) / 2.0f)))) / width) + 1.0f;
            childAt.setScaleX(min);
            childAt.setScaleY(min);
            if (this.f11200b) {
                childAt.setAlpha(min);
            }
        }
    }

    private void b() {
        float height = getHeight() / 2.0f;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            float min = ((((1.0f - this.f11199a) * (-1.0f)) * Math.min(height, Math.abs(height - ((getDecoratedTop(childAt) + getDecoratedBottom(childAt)) / 2.0f)))) / height) + 1.0f;
            childAt.setScaleX(min);
            childAt.setScaleY(min);
            if (this.f11200b) {
                childAt.setAlpha(min);
            }
        }
    }

    public void c(a aVar) {
        this.f11202d = aVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f11201c.attachToRecyclerView(recyclerView);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        super.onLayoutChildren(recycler, state);
        if (getItemCount() < 0 || state.isPreLayout()) {
            return;
        }
        int i2 = this.f11207i;
        if (i2 == 0) {
            a();
        } else if (i2 == 1) {
            b();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onMeasure(RecyclerView.Recycler recycler, RecyclerView.State state, int i2, int i4) {
        if (getItemCount() != 0 && this.f11205g != 0) {
            View viewForPosition = recycler.getViewForPosition(0);
            measureChildWithMargins(viewForPosition, i2, i4);
            this.f11203e = viewForPosition.getMeasuredWidth();
            int measuredHeight = viewForPosition.getMeasuredHeight();
            this.f11204f = measuredHeight;
            int i5 = this.f11207i;
            if (i5 == 0) {
                int i6 = ((this.f11205g - 1) / 2) * this.f11203e;
                this.f11206h.setClipToPadding(false);
                this.f11206h.setPadding(i6, 0, i6, 0);
                setMeasuredDimension(this.f11203e * this.f11205g, this.f11204f);
                return;
            } else if (i5 == 1) {
                int i7 = ((this.f11205g - 1) / 2) * measuredHeight;
                this.f11206h.setClipToPadding(false);
                this.f11206h.setPadding(0, i7, 0, i7);
                setMeasuredDimension(this.f11203e, this.f11204f * this.f11205g);
                return;
            } else {
                return;
            }
        }
        super.onMeasure(recycler, state, i2, i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onScrollStateChanged(int i2) {
        LinearSnapHelper linearSnapHelper;
        super.onScrollStateChanged(i2);
        if (i2 != 0 || this.f11202d == null || (linearSnapHelper = this.f11201c) == null) {
            return;
        }
        View findSnapView = linearSnapHelper.findSnapView(this);
        this.f11202d.a(findSnapView, getPosition(findSnapView));
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        a();
        return super.scrollHorizontallyBy(i2, recycler, state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        b();
        return super.scrollVerticallyBy(i2, recycler, state);
    }

    public PickerLayoutManager(Context context, RecyclerView recyclerView, int i2, boolean z3, int i4, float f4, boolean z4) {
        super(context, i2, z3);
        this.f11199a = 0.5f;
        this.f11200b = true;
        this.f11205g = -1;
        this.f11201c = new LinearSnapHelper();
        this.f11205g = i4;
        this.f11207i = i2;
        this.f11206h = recyclerView;
        this.f11200b = z4;
        this.f11199a = f4;
        if (i4 != 0) {
            setAutoMeasureEnabled(false);
        }
    }
}
