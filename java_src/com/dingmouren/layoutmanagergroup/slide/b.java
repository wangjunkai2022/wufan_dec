package com.dingmouren.layoutmanagergroup.slide;

import android.graphics.Canvas;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import java.util.Objects;
/* compiled from: ItemTouchHelperCallback.java */
/* loaded from: classes2.dex */
public class b<T> extends ItemTouchHelper.Callback {

    /* renamed from: g  reason: collision with root package name */
    private final RecyclerView.Adapter f11230g;

    /* renamed from: h  reason: collision with root package name */
    private List<T> f11231h;

    /* renamed from: i  reason: collision with root package name */
    private c<T> f11232i;

    /* JADX WARN: Multi-variable type inference failed */
    public b(@NonNull RecyclerView.Adapter adapter, @NonNull List<T> list) {
        this.f11230g = (RecyclerView.Adapter) g(adapter);
        this.f11231h = (List) g(list);
    }

    private <T> T g(T t3) {
        Objects.requireNonNull(t3);
        return t3;
    }

    private float h(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        return recyclerView.getWidth() * getSwipeThreshold(viewHolder);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        super.clearView(recyclerView, viewHolder);
        viewHolder.itemView.setRotation(0.0f);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        return ItemTouchHelper.Callback.makeMovementFlags(0, recyclerView.getLayoutManager() instanceof SlideLayoutManager ? 12 : 0);
    }

    public void i(c<T> cVar) {
        this.f11232i = cVar;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean isItemViewSwipeEnabled() {
        return false;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onChildDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f4, float f5, int i2, boolean z3) {
        super.onChildDraw(canvas, recyclerView, viewHolder, f4, f5, i2, z3);
        View view = viewHolder.itemView;
        if (i2 == 1) {
            float h4 = f4 / h(recyclerView, viewHolder);
            if (h4 > 1.0f) {
                h4 = 1.0f;
            } else if (h4 < -1.0f) {
                h4 = -1.0f;
            }
            view.setRotation(15.0f * h4);
            int childCount = recyclerView.getChildCount();
            if (childCount > 3) {
                for (int i4 = 1; i4 < childCount - 1; i4++) {
                    View childAt = recyclerView.getChildAt(i4);
                    float f6 = (childCount - i4) - 1;
                    float f7 = 1.0f - (f6 * 0.1f);
                    childAt.setScaleX((Math.abs(h4) * 0.1f) + f7);
                    childAt.setScaleY(f7 + (Math.abs(h4) * 0.1f));
                    childAt.setTranslationY(((f6 - Math.abs(h4)) * view.getMeasuredHeight()) / 14.0f);
                }
            } else {
                for (int i5 = 0; i5 < childCount - 1; i5++) {
                    View childAt2 = recyclerView.getChildAt(i5);
                    float f8 = (childCount - i5) - 1;
                    float f9 = 1.0f - (f8 * 0.1f);
                    childAt2.setScaleX((Math.abs(h4) * 0.1f) + f9);
                    childAt2.setScaleY(f9 + (Math.abs(h4) * 0.1f));
                    childAt2.setTranslationY(((f8 - Math.abs(h4)) * view.getMeasuredHeight()) / 14.0f);
                }
            }
            c<T> cVar = this.f11232i;
            if (cVar != null) {
                if (h4 != 0.0f) {
                    cVar.b(viewHolder, h4, h4 < 0.0f ? 4 : 8);
                } else {
                    cVar.b(viewHolder, h4, 1);
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
        return false;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSwiped(RecyclerView.ViewHolder viewHolder, int i2) {
        c<T> cVar;
        viewHolder.itemView.setOnTouchListener(null);
        T remove = this.f11231h.remove(viewHolder.getLayoutPosition());
        this.f11230g.notifyDataSetChanged();
        c<T> cVar2 = this.f11232i;
        if (cVar2 != null) {
            cVar2.a(viewHolder, remove, i2 == 4 ? 1 : 4);
        }
        if (this.f11230g.getItemCount() != 0 || (cVar = this.f11232i) == null) {
            return;
        }
        cVar.c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(@NonNull RecyclerView.Adapter adapter, @NonNull List<T> list, c<T> cVar) {
        this.f11230g = (RecyclerView.Adapter) g(adapter);
        this.f11231h = (List) g(list);
        this.f11232i = cVar;
    }
}
