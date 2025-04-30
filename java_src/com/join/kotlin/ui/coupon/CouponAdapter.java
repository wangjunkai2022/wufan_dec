package com.join.kotlin.ui.coupon;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.DataBindingUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.p8;
import com.join.mgps.dto.BTGameCouponBean;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CouponAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b#\u0010$J\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0014\u0010\f\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bJ\u0018\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\u000e\u001a\u00020\u0005H\u0016R\"\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR(\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006%"}, d2 = {"Lcom/join/kotlin/ui/coupon/CouponAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/join/kotlin/ui/coupon/CouponViewHolder;", "Landroid/view/ViewGroup;", "p0", "", "p1", "onCreateViewHolder", "", "Lcom/join/mgps/dto/BTGameCouponBean;", "list", "", "submitList", "onBindViewHolder", "getItemCount", "Lcom/join/kotlin/ui/coupon/ClickProxy;", "clickProxy", "Lcom/join/kotlin/ui/coupon/ClickProxy;", "getClickProxy", "()Lcom/join/kotlin/ui/coupon/ClickProxy;", "setClickProxy", "(Lcom/join/kotlin/ui/coupon/ClickProxy;)V", "Landroid/content/Context;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "listDatas", "Ljava/util/List;", "getListDatas", "()Ljava/util/List;", "setListDatas", "(Ljava/util/List;)V", "<init>", "(Landroid/content/Context;Lcom/join/kotlin/ui/coupon/ClickProxy;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class CouponAdapter extends RecyclerView.Adapter<CouponViewHolder> {
    @NotNull
    private ClickProxy clickProxy;
    @NotNull
    private Context context;
    public List<? extends BTGameCouponBean> listDatas;

    public CouponAdapter(@NotNull Context context, @NotNull ClickProxy clickProxy) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(clickProxy, "clickProxy");
        this.context = context;
        this.clickProxy = clickProxy;
    }

    @NotNull
    public final ClickProxy getClickProxy() {
        return this.clickProxy;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<? extends BTGameCouponBean> list = this.listDatas;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listDatas");
        }
        return list.size();
    }

    @NotNull
    public final List<BTGameCouponBean> getListDatas() {
        List list = this.listDatas;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listDatas");
        }
        return list;
    }

    public final void setClickProxy(@NotNull ClickProxy clickProxy) {
        Intrinsics.checkNotNullParameter(clickProxy, "<set-?>");
        this.clickProxy = clickProxy;
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }

    public final void setListDatas(@NotNull List<? extends BTGameCouponBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.listDatas = list;
    }

    public final void submitList(@NotNull List<? extends BTGameCouponBean> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.listDatas = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull CouponViewHolder p02, int i2) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        p8 p8Var = (p8) DataBindingUtil.getBinding(p02.getItem());
        if (p8Var != null) {
            List<? extends BTGameCouponBean> list = this.listDatas;
            if (list == null) {
                Intrinsics.throwUninitializedPropertyAccessException("listDatas");
            }
            p8Var.i1(list.get(i2));
        }
        if (p8Var != null) {
            p8Var.executePendingBindings();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public CouponViewHolder onCreateViewHolder(@NotNull ViewGroup p02, int i2) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        p8 databinfding = (p8) DataBindingUtil.inflate(LayoutInflater.from(this.context), R.layout.coupon_list_item_layout, p02, false);
        Intrinsics.checkNotNullExpressionValue(databinfding, "databinfding");
        databinfding.j1(this.clickProxy);
        View root = databinfding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "databinfding.root");
        return new CouponViewHolder(root);
    }
}
