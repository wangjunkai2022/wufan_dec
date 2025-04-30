package com.psk.kotlin.util;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SpacesItemDecoration.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J(\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016R\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/psk/kotlin/util/SpacesItemDecoration;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "Landroid/graphics/Rect;", "outRect", "Landroid/view/View;", "view", "Landroidx/recyclerview/widget/RecyclerView;", "parent", "Landroidx/recyclerview/widget/RecyclerView$State;", NoticeTopAnimActivityDialog_.f34402n, "", "getItemOffsets", "", "space", "I", "<init>", "(I)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes4.dex */
public final class SpacesItemDecoration extends RecyclerView.ItemDecoration {
    private final int space;

    public SpacesItemDecoration(int i2) {
        this.space = i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(@NotNull Rect outRect, @NotNull View view, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(outRect, "outRect");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        super.getItemOffsets(outRect, view, parent, state);
        int i2 = this.space;
        outRect.left = i2;
        outRect.right = i2;
        outRect.bottom = i2;
        if (parent.getChildPosition(view) == 0) {
            outRect.top = this.space;
        }
    }
}
