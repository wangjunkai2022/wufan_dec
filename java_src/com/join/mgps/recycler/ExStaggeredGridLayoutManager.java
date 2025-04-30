package com.join.mgps.recycler;

import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
/* loaded from: classes4.dex */
public class ExStaggeredGridLayoutManager extends StaggeredGridLayoutManager {
    private final String C;
    GridLayoutManager.SpanSizeLookup D;

    public ExStaggeredGridLayoutManager(int i2, int i4) {
        super(i2, i4);
        this.C = getClass().getSimpleName();
    }

    public GridLayoutManager.SpanSizeLookup getSpanSizeLookup() {
        return this.D;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onMeasure(RecyclerView.Recycler recycler, RecyclerView.State state, int i2, int i4) {
        for (int i5 = 0; i5 < getItemCount(); i5++) {
            if (this.D.getSpanSize(i5) > 1) {
                try {
                    View viewForPosition = recycler.getViewForPosition(i5);
                    if (viewForPosition != null) {
                        ((StaggeredGridLayoutManager.LayoutParams) viewForPosition.getLayoutParams()).setFullSpan(true);
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }
        super.onMeasure(recycler, state, i2, i4);
    }

    public void setSpanSizeLookup(GridLayoutManager.SpanSizeLookup spanSizeLookup) {
        this.D = spanSizeLookup;
    }
}
