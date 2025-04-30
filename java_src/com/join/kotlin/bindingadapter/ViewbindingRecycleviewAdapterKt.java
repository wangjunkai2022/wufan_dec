package com.join.kotlin.bindingadapter;

import androidx.databinding.BindingAdapter;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewbindingRecycleviewAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aM\u0010\r\u001a\u00020\f2\u0006\u0010\u0001\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u00052\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0004\b\r\u0010\u000e\u001a \u0010\u0011\u001a\u00020\f2\u0006\u0010\u0001\u001a\u00020\u000f2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0007¨\u0006\u0012"}, d2 = {"Lcom/join/android/app/component/xrecyclerview/XRecyclerView;", "recyclerView", "", "", "xsubmitList", "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;", "Landroidx/databinding/ViewDataBinding;", "xadapter", "", "showStatus", "Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;", "listener", "", "xrecycleviewadapterBinding", "(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;Ljava/util/List;Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;Ljava/lang/Integer;Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V", "Landroidx/recyclerview/widget/RecyclerView;", "submitList", "recycleviewdataBinding", "app_wufunNormalRelease"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class ViewbindingRecycleviewAdapterKt {
    @BindingAdapter(requireAll = false, value = {"submitList"})
    public static final void recycleviewdataBinding(@NotNull RecyclerView recyclerView, @Nullable List<? extends Object> list) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        if (recyclerView.getAdapter() == null || list == null) {
            return;
        }
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        Objects.requireNonNull(adapter, "null cannot be cast to non-null type com.join.kotlin.domain.adapter.BaseDataBindingAdapter<kotlin.Any, androidx.databinding.ViewDataBinding>");
        ((BaseDataBindingAdapter) adapter).submitList(list);
    }

    @BindingAdapter(requireAll = false, value = {"xsubmitList", "xadapter", "showStatus", "listener"})
    public static final void xrecycleviewadapterBinding(@NotNull XRecyclerView recyclerView, @NotNull List<? extends Object> xsubmitList, @NotNull BaseDataBindingAdapter<Object, ViewDataBinding> xadapter, @Nullable Integer num, @Nullable XRecyclerView.f fVar) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(xsubmitList, "xsubmitList");
        Intrinsics.checkNotNullParameter(xadapter, "xadapter");
        if (recyclerView.getAdapter() == null) {
            recyclerView.setAdapter(xadapter);
        }
        xadapter.submitList(xsubmitList);
        if (fVar != null) {
            recyclerView.setLoadingMoreEnabled(true);
            recyclerView.setLoadingListener(fVar);
        }
        if (num != null && num.intValue() == 1) {
            recyclerView.t1();
        } else if (num != null && num.intValue() == 3) {
            recyclerView.s1();
        } else if (num != null && num.intValue() == 4) {
            recyclerView.setNoMore();
        } else if (num != null && num.intValue() == 2) {
            recyclerView.q1();
        } else {
            recyclerView.t1();
        }
    }
}
