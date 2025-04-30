package com.join.mgps.recycler;

import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
/* loaded from: classes4.dex */
public class EndlessRecyclerOnScrollListener extends RecyclerView.OnScrollListener implements d {

    /* renamed from: a  reason: collision with root package name */
    protected LayoutManagerType f51467a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f51468b;

    /* renamed from: c  reason: collision with root package name */
    private int f51469c;

    /* renamed from: d  reason: collision with root package name */
    private int f51470d = 0;

    /* loaded from: classes4.dex */
    public enum LayoutManagerType {
        LinearLayout,
        StaggeredGridLayout,
        GridLayout
    }

    /* loaded from: classes4.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f51471a;

        static {
            int[] iArr = new int[LayoutManagerType.values().length];
            f51471a = iArr;
            try {
                iArr[LayoutManagerType.LinearLayout.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f51471a[LayoutManagerType.GridLayout.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f51471a[LayoutManagerType.StaggeredGridLayout.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private int b(int[] iArr) {
        int i2 = iArr[0];
        for (int i4 : iArr) {
            if (i4 > i2) {
                i2 = i4;
            }
        }
        return i2;
    }

    @Override // com.join.mgps.recycler.d
    public void a(View view) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
        super.onScrollStateChanged(recyclerView, i2);
        this.f51470d = i2;
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        int childCount = layoutManager.getChildCount();
        int itemCount = layoutManager.getItemCount();
        if (childCount <= 0 || this.f51470d != 0 || this.f51469c < itemCount - 1) {
            return;
        }
        a(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrolled(RecyclerView recyclerView, int i2, int i4) {
        super.onScrolled(recyclerView, i2, i4);
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (this.f51467a == null) {
            if (layoutManager instanceof LinearLayoutManager) {
                this.f51467a = LayoutManagerType.LinearLayout;
            } else if (layoutManager instanceof GridLayoutManager) {
                this.f51467a = LayoutManagerType.GridLayout;
            } else if (layoutManager instanceof StaggeredGridLayoutManager) {
                this.f51467a = LayoutManagerType.StaggeredGridLayout;
            } else {
                throw new RuntimeException("Unsupported LayoutManager used. Valid ones are LinearLayoutManager, GridLayoutManager and StaggeredGridLayoutManager");
            }
        }
        int i5 = a.f51471a[this.f51467a.ordinal()];
        if (i5 == 1) {
            this.f51469c = ((LinearLayoutManager) layoutManager).findLastVisibleItemPosition();
        } else if (i5 == 2) {
            this.f51469c = ((GridLayoutManager) layoutManager).findLastVisibleItemPosition();
        } else if (i5 != 3) {
        } else {
            StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
            if (this.f51468b == null) {
                this.f51468b = new int[staggeredGridLayoutManager.getSpanCount()];
            }
            staggeredGridLayoutManager.findLastVisibleItemPositions(this.f51468b);
            this.f51469c = b(this.f51468b);
        }
    }
}
