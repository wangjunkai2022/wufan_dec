package com.psk.kotlin.util;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: GridSpacingItemDecoration.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0012\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0013\u0010\u0014J(\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016R\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0012\u001a\u00020\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u000e¨\u0006\u0015"}, d2 = {"Lcom/psk/kotlin/util/GridSpacingItemDecoration;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "Landroid/graphics/Rect;", "outRect", "Landroid/view/View;", "view", "Landroidx/recyclerview/widget/RecyclerView;", "parent", "Landroidx/recyclerview/widget/RecyclerView$State;", NoticeTopAnimActivityDialog_.f34402n, "", "getItemOffsets", "", "spacing", "I", "", "includeEdge", "Z", "spanCount", "<init>", "(IIZ)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes4.dex */
public final class GridSpacingItemDecoration extends RecyclerView.ItemDecoration {
    private final boolean includeEdge;
    private final int spacing;
    private final int spanCount;

    public GridSpacingItemDecoration(int i2, int i4, boolean z3) {
        this.spanCount = i2;
        this.spacing = i4;
        this.includeEdge = z3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(@NotNull Rect outRect, @NotNull View view, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(outRect, "outRect");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        super.getItemOffsets(outRect, view, parent, state);
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        int i2 = this.spanCount;
        int i4 = childAdapterPosition % i2;
        if (this.includeEdge) {
            int i5 = this.spacing;
            outRect.left = i5 - ((i4 * i5) / i2);
            outRect.right = ((i4 + 1) * i5) / i2;
            if (childAdapterPosition < i2) {
                outRect.top = i5;
            }
            outRect.bottom = i5;
            return;
        }
        int i6 = this.spacing;
        outRect.left = (i4 * i6) / i2;
        outRect.right = i6 - (((i4 + 1) * i6) / i2);
        if (childAdapterPosition >= i2) {
            outRect.top = i6;
        }
    }
}
