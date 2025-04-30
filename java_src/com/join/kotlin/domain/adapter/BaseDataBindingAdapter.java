package com.join.kotlin.domain.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.alipay.sdk.authjs.a;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseDataBindingAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0017\b&\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0003*\u00020\u00022\b\u0012\u0004\u0012\u00020\u00050\u0004:\u0003ABCB\u000f\u0012\u0006\u0010.\u001a\u00020-¢\u0006\u0004\b@\u00103J\u0016\u0010\t\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0016JU\u0010\t\u001a\u00020\b2K\u0010\u0011\u001aG\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000f\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\b0\nH\u0016J\u0016\u0010\u0014\u001a\u00020\b2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012H\u0016J\u0016\u0010\u0017\u001a\u00020\b2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015H\u0016J\u0018\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u000bH\u0016J&\u0010 \u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000b2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dH\u0016J\u0018\u0010 \u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000bH\u0016J\b\u0010!\u001a\u00020\u000bH\u0016J\u0010\u0010\"\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000bH%J)\u0010$\u001a\u00020\b2\u0006\u0010#\u001a\u00028\u00012\u0006\u0010\u000f\u001a\u00028\u00002\b\u0010\u001c\u001a\u0004\u0018\u00010\u0005H$¢\u0006\u0004\b$\u0010%J)\u0010&\u001a\u00020\b2\u0006\u0010#\u001a\u00028\u00012\u0006\u0010\u000f\u001a\u00028\u00002\b\u0010\u001c\u001a\u0004\u0018\u00010\u0005H$¢\u0006\u0004\b&\u0010%R*\u0010'\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\"\u0010.\u001a\u00020-8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R*\u00104\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00068\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R*\u0010:\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00128\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?¨\u0006D"}, d2 = {"Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;", "M", "Landroidx/databinding/ViewDataBinding;", "B", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;", "onItemClickListener", "", "setOnItemClickListener", "Lkotlin/Function3;", "", "Lkotlin/ParameterName;", "name", "viewId", "item", "position", a.f9679m, "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;", "onItemLongClickListener", "setOnItemLongClickListener", "", "list", "submitList", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "holder", "", "", "payloads", "onBindViewHolder", "getItemCount", "getLayoutResId", "binding", "onBindItem", "(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V", "onBindItemPayloads", "listDatas", "Ljava/util/List;", "getListDatas", "()Ljava/util/List;", "setListDatas", "(Ljava/util/List;)V", "Landroid/content/Context;", "mContext", "Landroid/content/Context;", "getMContext", "()Landroid/content/Context;", "setMContext", "(Landroid/content/Context;)V", "mOnItemClickListener", "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;", "getMOnItemClickListener", "()Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;", "setMOnItemClickListener", "(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;)V", "mOnItemLongClickListener", "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;", "getMOnItemLongClickListener", "()Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;", "setMOnItemLongClickListener", "(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;)V", "<init>", "BaseBindingViewHolder", "OnItemClickListener", "OnItemLongClickListener", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public abstract class BaseDataBindingAdapter<M, B extends ViewDataBinding> extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    @Nullable
    private List<? extends M> listDatas;
    @NotNull
    private Context mContext;
    @Nullable
    private OnItemClickListener<M> mOnItemClickListener;
    @Nullable
    private OnItemLongClickListener<M> mOnItemLongClickListener;

    /* compiled from: BaseDataBindingAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$BaseBindingViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/view/View;", "itemView", "<init>", "(Landroid/view/View;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class BaseBindingViewHolder extends RecyclerView.ViewHolder {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BaseBindingViewHolder(@NotNull View itemView) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
        }
    }

    /* compiled from: BaseDataBindingAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u0000*\u0004\b\u0002\u0010\u00012\u00020\u0002J'\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00028\u00022\u0006\u0010\u0006\u001a\u00020\u0003H&¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;", "M", "", "", "viewId", "item", "position", "", "onItemClick", "(ILjava/lang/Object;I)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public interface OnItemClickListener<M> {
        void onItemClick(int i2, M m4, int i4);
    }

    /* compiled from: BaseDataBindingAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u0000*\u0004\b\u0002\u0010\u00012\u00020\u0002J'\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00028\u00022\u0006\u0010\u0006\u001a\u00020\u0003H&¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;", "M", "", "", "viewId", "item", "position", "", "onItemLongClick", "(ILjava/lang/Object;I)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public interface OnItemLongClickListener<M> {
        void onItemLongClick(int i2, M m4, int i4);
    }

    public BaseDataBindingAdapter(@NotNull Context mContext) {
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        this.mContext = mContext;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<? extends M> list = this.listDatas;
        if (list != null) {
            Intrinsics.checkNotNull(list);
            return list.size();
        }
        return 0;
    }

    @LayoutRes
    protected abstract int getLayoutResId(int i2);

    @Nullable
    public final List<M> getListDatas() {
        return (List<? extends M>) this.listDatas;
    }

    @NotNull
    public final Context getMContext() {
        return this.mContext;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final OnItemClickListener<M> getMOnItemClickListener() {
        return this.mOnItemClickListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final OnItemLongClickListener<M> getMOnItemLongClickListener() {
        return this.mOnItemLongClickListener;
    }

    protected abstract void onBindItem(@NotNull B b4, M m4, @Nullable RecyclerView.ViewHolder viewHolder);

    protected abstract void onBindItemPayloads(@NotNull B b4, M m4, @Nullable RecyclerView.ViewHolder viewHolder);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i2, @NotNull List<Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        if (payloads.isEmpty()) {
            super.onBindViewHolder(holder, i2, payloads);
            return;
        }
        ViewDataBinding binding = DataBindingUtil.getBinding(holder.itemView);
        Intrinsics.checkNotNull(binding);
        List<? extends M> list = this.listDatas;
        M m4 = list != null ? list.get(i2) : null;
        Intrinsics.checkNotNull(m4);
        onBindItemPayloads(binding, m4, holder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i2) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        ViewDataBinding inflate = DataBindingUtil.inflate(LayoutInflater.from(this.mContext), getLayoutResId(i2), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "DataBindingUtil.inflate(…          false\n        )");
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return new BaseBindingViewHolder(root);
    }

    public final void setListDatas(@Nullable List<? extends M> list) {
        this.listDatas = list;
    }

    public final void setMContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.mContext = context;
    }

    protected final void setMOnItemClickListener(@Nullable OnItemClickListener<M> onItemClickListener) {
        this.mOnItemClickListener = onItemClickListener;
    }

    protected final void setMOnItemLongClickListener(@Nullable OnItemLongClickListener<M> onItemLongClickListener) {
        this.mOnItemLongClickListener = onItemLongClickListener;
    }

    public void setOnItemClickListener(@NotNull OnItemClickListener<M> onItemClickListener) {
        Intrinsics.checkNotNullParameter(onItemClickListener, "onItemClickListener");
        this.mOnItemClickListener = onItemClickListener;
    }

    public void setOnItemLongClickListener(@NotNull OnItemLongClickListener<M> onItemLongClickListener) {
        Intrinsics.checkNotNullParameter(onItemLongClickListener, "onItemLongClickListener");
        this.mOnItemLongClickListener = onItemLongClickListener;
    }

    public void submitList(@NotNull List<? extends M> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.listDatas = list;
    }

    public void setOnItemClickListener(@NotNull final Function3<? super Integer, ? super M, ? super Integer, Unit> func) {
        Intrinsics.checkNotNullParameter(func, "func");
        this.mOnItemClickListener = new OnItemClickListener<M>() { // from class: com.join.kotlin.domain.adapter.BaseDataBindingAdapter$setOnItemClickListener$1
            @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter.OnItemClickListener
            public void onItemClick(int i2, M m4, int i4) {
                Function3.this.invoke(Integer.valueOf(i2), m4, Integer.valueOf(i4));
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull final RecyclerView.ViewHolder holder, final int i2) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        ViewDataBinding binding = DataBindingUtil.getBinding(holder.itemView);
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.domain.adapter.BaseDataBindingAdapter$onBindViewHolder$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseDataBindingAdapter.OnItemClickListener mOnItemClickListener;
                if (BaseDataBindingAdapter.this.getMOnItemClickListener() == null || (mOnItemClickListener = BaseDataBindingAdapter.this.getMOnItemClickListener()) == null) {
                    return;
                }
                View view2 = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(view2, "holder.itemView");
                int id = view2.getId();
                List listDatas = BaseDataBindingAdapter.this.getListDatas();
                Intrinsics.checkNotNull(listDatas);
                mOnItemClickListener.onItemClick(id, listDatas.get(i2), i2);
            }
        });
        holder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.join.kotlin.domain.adapter.BaseDataBindingAdapter$onBindViewHolder$2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                if (BaseDataBindingAdapter.this.getMOnItemLongClickListener() != null) {
                    BaseDataBindingAdapter.OnItemLongClickListener mOnItemLongClickListener = BaseDataBindingAdapter.this.getMOnItemLongClickListener();
                    if (mOnItemLongClickListener != null) {
                        View view2 = holder.itemView;
                        Intrinsics.checkNotNullExpressionValue(view2, "holder.itemView");
                        int id = view2.getId();
                        List listDatas = BaseDataBindingAdapter.this.getListDatas();
                        Intrinsics.checkNotNull(listDatas);
                        mOnItemLongClickListener.onItemLongClick(id, listDatas.get(i2), i2);
                        return true;
                    }
                    return true;
                }
                return false;
            }
        });
        Intrinsics.checkNotNull(binding);
        List<? extends M> list = this.listDatas;
        M m4 = list != null ? list.get(i2) : null;
        Intrinsics.checkNotNull(m4);
        onBindItem(binding, m4, holder);
        binding.executePendingBindings();
    }
}
