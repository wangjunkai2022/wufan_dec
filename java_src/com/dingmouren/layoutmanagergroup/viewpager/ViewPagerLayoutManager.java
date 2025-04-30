package com.dingmouren.layoutmanagergroup.viewpager;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2.dex */
public class ViewPagerLayoutManager extends LinearLayoutManager {

    /* renamed from: f  reason: collision with root package name */
    private static final String f11233f = "ViewPagerLayoutManager";

    /* renamed from: a  reason: collision with root package name */
    private PagerSnapHelper f11234a;

    /* renamed from: b  reason: collision with root package name */
    private com.dingmouren.layoutmanagergroup.viewpager.a f11235b;

    /* renamed from: c  reason: collision with root package name */
    private RecyclerView f11236c;

    /* renamed from: d  reason: collision with root package name */
    private int f11237d;

    /* renamed from: e  reason: collision with root package name */
    private RecyclerView.OnChildAttachStateChangeListener f11238e;

    /* loaded from: classes2.dex */
    class a implements RecyclerView.OnChildAttachStateChangeListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewAttachedToWindow(View view) {
            if (ViewPagerLayoutManager.this.f11235b == null || ViewPagerLayoutManager.this.getChildCount() != 1) {
                return;
            }
            ViewPagerLayoutManager.this.f11235b.b();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewDetachedFromWindow(View view) {
            if (ViewPagerLayoutManager.this.f11237d >= 0) {
                if (ViewPagerLayoutManager.this.f11235b != null) {
                    ViewPagerLayoutManager.this.f11235b.a(true, ViewPagerLayoutManager.this.getPosition(view));
                }
            } else if (ViewPagerLayoutManager.this.f11235b != null) {
                ViewPagerLayoutManager.this.f11235b.a(false, ViewPagerLayoutManager.this.getPosition(view));
            }
        }
    }

    public ViewPagerLayoutManager(Context context, int i2) {
        super(context, i2, false);
        this.f11238e = new a();
        c();
    }

    private void c() {
        this.f11234a = new PagerSnapHelper();
    }

    public void d(com.dingmouren.layoutmanagergroup.viewpager.a aVar) {
        this.f11235b = aVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f11234a.attachToRecyclerView(recyclerView);
        this.f11236c = recyclerView;
        recyclerView.addOnChildAttachStateChangeListener(this.f11238e);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        super.onLayoutChildren(recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onScrollStateChanged(int i2) {
        if (i2 == 0) {
            int position = getPosition(this.f11234a.findSnapView(this));
            if (this.f11235b == null || getChildCount() != 1) {
                return;
            }
            this.f11235b.c(position, position == getItemCount() - 1);
        } else if (i2 == 1) {
            getPosition(this.f11234a.findSnapView(this));
        } else if (i2 != 2) {
        } else {
            getPosition(this.f11234a.findSnapView(this));
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        this.f11237d = i2;
        return super.scrollHorizontallyBy(i2, recycler, state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        this.f11237d = i2;
        return super.scrollVerticallyBy(i2, recycler, state);
    }

    public ViewPagerLayoutManager(Context context, int i2, boolean z3) {
        super(context, i2, z3);
        this.f11238e = new a();
        c();
    }
}
