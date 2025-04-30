package com.join.kotlin.ui.modleregin.adapter;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.b9;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.mgps.business.CollectionBeanSubBusiness;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HGamelistAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\"\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014J\"\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014¨\u0006\u0012"}, d2 = {"Lcom/join/kotlin/ui/modleregin/adapter/HGamelistAdapter;", "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;", "Lcom/join/mgps/business/CollectionBeanSubBusiness;", "Lcom/join/android/app/mgsim/wufun/databinding/b9;", "", "viewType", "getLayoutResId", "binding", "item", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "holder", "", "onBindItem", "onBindItemPayloads", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class HGamelistAdapter extends BaseDataBindingAdapter<CollectionBeanSubBusiness, b9> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HGamelistAdapter(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    protected int getLayoutResId(int i2) {
        return R.layout.databinding_hgamelist_item;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItem(@NotNull b9 binding, @NotNull CollectionBeanSubBusiness item, @Nullable RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        binding.setVariable(9, item);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItemPayloads(@NotNull b9 binding, @NotNull CollectionBeanSubBusiness item, @Nullable RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        binding.setVariable(9, item);
    }
}
