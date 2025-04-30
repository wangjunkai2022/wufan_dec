package androidx.recyclerview.widget;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2.dex */
public abstract class SimpleItemAnimator extends RecyclerView.ItemAnimator {

    /* renamed from: h  reason: collision with root package name */
    private static final boolean f7215h = false;

    /* renamed from: i  reason: collision with root package name */
    private static final String f7216i = "SimpleItemAnimator";

    /* renamed from: g  reason: collision with root package name */
    boolean f7217g = true;

    public abstract boolean animateAdd(RecyclerView.ViewHolder viewHolder);

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public boolean animateAppearance(@NonNull RecyclerView.ViewHolder viewHolder, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        int i2;
        int i4;
        if (itemHolderInfo != null && ((i2 = itemHolderInfo.left) != (i4 = itemHolderInfo2.left) || itemHolderInfo.top != itemHolderInfo2.top)) {
            return animateMove(viewHolder, i2, itemHolderInfo.top, i4, itemHolderInfo2.top);
        }
        return animateAdd(viewHolder);
    }

    public abstract boolean animateChange(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i2, int i4, int i5, int i6);

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public boolean animateChange(@NonNull RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ViewHolder viewHolder2, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        int i2;
        int i4;
        int i5 = itemHolderInfo.left;
        int i6 = itemHolderInfo.top;
        if (viewHolder2.shouldIgnore()) {
            int i7 = itemHolderInfo.left;
            i4 = itemHolderInfo.top;
            i2 = i7;
        } else {
            i2 = itemHolderInfo2.left;
            i4 = itemHolderInfo2.top;
        }
        return animateChange(viewHolder, viewHolder2, i5, i6, i2, i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public boolean animateDisappearance(@NonNull RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        int i2 = itemHolderInfo.left;
        int i4 = itemHolderInfo.top;
        View view = viewHolder.itemView;
        int left = itemHolderInfo2 == null ? view.getLeft() : itemHolderInfo2.left;
        int top = itemHolderInfo2 == null ? view.getTop() : itemHolderInfo2.top;
        if (!viewHolder.isRemoved() && (i2 != left || i4 != top)) {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            return animateMove(viewHolder, i2, i4, left, top);
        }
        return animateRemove(viewHolder);
    }

    public abstract boolean animateMove(RecyclerView.ViewHolder viewHolder, int i2, int i4, int i5, int i6);

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public boolean animatePersistence(@NonNull RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        int i2 = itemHolderInfo.left;
        int i4 = itemHolderInfo2.left;
        if (i2 == i4 && itemHolderInfo.top == itemHolderInfo2.top) {
            dispatchMoveFinished(viewHolder);
            return false;
        }
        return animateMove(viewHolder, i2, itemHolderInfo.top, i4, itemHolderInfo2.top);
    }

    public abstract boolean animateRemove(RecyclerView.ViewHolder viewHolder);

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public boolean canReuseUpdatedViewHolder(@NonNull RecyclerView.ViewHolder viewHolder) {
        return !this.f7217g || viewHolder.isInvalid();
    }

    public final void dispatchAddFinished(RecyclerView.ViewHolder viewHolder) {
        onAddFinished(viewHolder);
        dispatchAnimationFinished(viewHolder);
    }

    public final void dispatchAddStarting(RecyclerView.ViewHolder viewHolder) {
        onAddStarting(viewHolder);
    }

    public final void dispatchChangeFinished(RecyclerView.ViewHolder viewHolder, boolean z3) {
        onChangeFinished(viewHolder, z3);
        dispatchAnimationFinished(viewHolder);
    }

    public final void dispatchChangeStarting(RecyclerView.ViewHolder viewHolder, boolean z3) {
        onChangeStarting(viewHolder, z3);
    }

    public final void dispatchMoveFinished(RecyclerView.ViewHolder viewHolder) {
        onMoveFinished(viewHolder);
        dispatchAnimationFinished(viewHolder);
    }

    public final void dispatchMoveStarting(RecyclerView.ViewHolder viewHolder) {
        onMoveStarting(viewHolder);
    }

    public final void dispatchRemoveFinished(RecyclerView.ViewHolder viewHolder) {
        onRemoveFinished(viewHolder);
        dispatchAnimationFinished(viewHolder);
    }

    public final void dispatchRemoveStarting(RecyclerView.ViewHolder viewHolder) {
        onRemoveStarting(viewHolder);
    }

    public boolean getSupportsChangeAnimations() {
        return this.f7217g;
    }

    public void onAddFinished(RecyclerView.ViewHolder viewHolder) {
    }

    public void onAddStarting(RecyclerView.ViewHolder viewHolder) {
    }

    public void onChangeFinished(RecyclerView.ViewHolder viewHolder, boolean z3) {
    }

    public void onChangeStarting(RecyclerView.ViewHolder viewHolder, boolean z3) {
    }

    public void onMoveFinished(RecyclerView.ViewHolder viewHolder) {
    }

    public void onMoveStarting(RecyclerView.ViewHolder viewHolder) {
    }

    public void onRemoveFinished(RecyclerView.ViewHolder viewHolder) {
    }

    public void onRemoveStarting(RecyclerView.ViewHolder viewHolder) {
    }

    public void setSupportsChangeAnimations(boolean z3) {
        this.f7217g = z3;
    }
}
