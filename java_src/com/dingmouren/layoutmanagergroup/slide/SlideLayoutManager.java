package com.dingmouren.layoutmanagergroup.slide;

import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.view.MotionEventCompat;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;
/* loaded from: classes2.dex */
public class SlideLayoutManager extends RecyclerView.LayoutManager {

    /* renamed from: a  reason: collision with root package name */
    private RecyclerView f11217a;

    /* renamed from: b  reason: collision with root package name */
    private ItemTouchHelper f11218b;

    /* renamed from: c  reason: collision with root package name */
    private View.OnTouchListener f11219c = new a();

    /* loaded from: classes2.dex */
    class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            RecyclerView.ViewHolder childViewHolder = SlideLayoutManager.this.f11217a.getChildViewHolder(view);
            if (MotionEventCompat.getActionMasked(motionEvent) == 0) {
                SlideLayoutManager.this.f11218b.startSwipe(childViewHolder);
                return false;
            }
            return false;
        }
    }

    public SlideLayoutManager(@NonNull RecyclerView recyclerView, @NonNull ItemTouchHelper itemTouchHelper) {
        this.f11217a = (RecyclerView) c(recyclerView);
        this.f11218b = (ItemTouchHelper) c(itemTouchHelper);
    }

    private <T> T c(T t3) {
        Objects.requireNonNull(t3);
        return t3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i2;
        detachAndScrapAttachedViews(recycler);
        int itemCount = getItemCount();
        if (itemCount <= 3) {
            for (int i4 = itemCount - 1; i4 >= 0; i4--) {
                View viewForPosition = recycler.getViewForPosition(i4);
                addView(viewForPosition);
                measureChildWithMargins(viewForPosition, 0, 0);
                int width = (getWidth() - getDecoratedMeasuredWidth(viewForPosition)) / 2;
                int height = (getHeight() - getDecoratedMeasuredHeight(viewForPosition)) / 5;
                layoutDecoratedWithMargins(viewForPosition, width, height, width + getDecoratedMeasuredWidth(viewForPosition), height + getDecoratedMeasuredHeight(viewForPosition));
                if (i4 > 0) {
                    float f4 = 1.0f - (i4 * 0.1f);
                    viewForPosition.setScaleX(f4);
                    viewForPosition.setScaleY(f4);
                    viewForPosition.setTranslationY((viewForPosition.getMeasuredHeight() * i4) / 14);
                } else {
                    viewForPosition.setOnTouchListener(this.f11219c);
                }
            }
            return;
        }
        for (int i5 = 3; i5 >= 0; i5--) {
            View viewForPosition2 = recycler.getViewForPosition(i5);
            addView(viewForPosition2);
            measureChildWithMargins(viewForPosition2, 0, 0);
            int width2 = (getWidth() - getDecoratedMeasuredWidth(viewForPosition2)) / 2;
            int height2 = (getHeight() - getDecoratedMeasuredHeight(viewForPosition2)) / 5;
            layoutDecoratedWithMargins(viewForPosition2, width2, height2, width2 + getDecoratedMeasuredWidth(viewForPosition2), height2 + getDecoratedMeasuredHeight(viewForPosition2));
            if (i5 == 3) {
                float f5 = 1.0f - ((i5 - 1) * 0.1f);
                viewForPosition2.setScaleX(f5);
                viewForPosition2.setScaleY(f5);
                viewForPosition2.setTranslationY((i2 * viewForPosition2.getMeasuredHeight()) / 14);
            } else if (i5 > 0) {
                float f6 = 1.0f - (i5 * 0.1f);
                viewForPosition2.setScaleX(f6);
                viewForPosition2.setScaleY(f6);
                viewForPosition2.setTranslationY((viewForPosition2.getMeasuredHeight() * i5) / 14);
            } else {
                viewForPosition2.setOnTouchListener(this.f11219c);
            }
        }
    }
}
