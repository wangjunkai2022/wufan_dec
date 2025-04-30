package com.join.kotlin.ui.coupon;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CouponViewHolder.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\bR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/join/kotlin/ui/coupon/CouponViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/view/View;", "item", "Landroid/view/View;", "getItem", "()Landroid/view/View;", "setItem", "(Landroid/view/View;)V", "<init>", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class CouponViewHolder extends RecyclerView.ViewHolder {
    @NotNull
    private View item;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CouponViewHolder(@NotNull View item) {
        super(item);
        Intrinsics.checkNotNullParameter(item, "item");
        this.item = item;
    }

    @NotNull
    public final View getItem() {
        return this.item;
    }

    public final void setItem(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.item = view;
    }
}
