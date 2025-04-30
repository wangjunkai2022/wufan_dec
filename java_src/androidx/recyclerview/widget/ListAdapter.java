package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.AsyncDifferConfig;
import androidx.recyclerview.widget.AsyncListDiffer;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class ListAdapter<T, VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<VH> {

    /* renamed from: a  reason: collision with root package name */
    final AsyncListDiffer<T> f7032a;

    /* renamed from: b  reason: collision with root package name */
    private final AsyncListDiffer.ListListener<T> f7033b;

    protected ListAdapter(@NonNull DiffUtil.ItemCallback<T> itemCallback) {
        AsyncListDiffer.ListListener<T> listListener = new AsyncListDiffer.ListListener<T>() { // from class: androidx.recyclerview.widget.ListAdapter.1
            @Override // androidx.recyclerview.widget.AsyncListDiffer.ListListener
            public void onCurrentListChanged(@NonNull List<T> list, @NonNull List<T> list2) {
                ListAdapter.this.onCurrentListChanged(list, list2);
            }
        };
        this.f7033b = listListener;
        AsyncListDiffer<T> asyncListDiffer = new AsyncListDiffer<>(new AdapterListUpdateCallback(this), new AsyncDifferConfig.Builder(itemCallback).build());
        this.f7032a = asyncListDiffer;
        asyncListDiffer.addListListener(listListener);
    }

    @NonNull
    public List<T> getCurrentList() {
        return this.f7032a.getCurrentList();
    }

    protected T getItem(int i2) {
        return this.f7032a.getCurrentList().get(i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f7032a.getCurrentList().size();
    }

    public void onCurrentListChanged(@NonNull List<T> list, @NonNull List<T> list2) {
    }

    public void submitList(@Nullable List<T> list) {
        this.f7032a.submitList(list);
    }

    public void submitList(@Nullable List<T> list, @Nullable Runnable runnable) {
        this.f7032a.submitList(list, runnable);
    }

    protected ListAdapter(@NonNull AsyncDifferConfig<T> asyncDifferConfig) {
        AsyncListDiffer.ListListener<T> listListener = new AsyncListDiffer.ListListener<T>() { // from class: androidx.recyclerview.widget.ListAdapter.1
            @Override // androidx.recyclerview.widget.AsyncListDiffer.ListListener
            public void onCurrentListChanged(@NonNull List<T> list, @NonNull List<T> list2) {
                ListAdapter.this.onCurrentListChanged(list, list2);
            }
        };
        this.f7033b = listListener;
        AsyncListDiffer<T> asyncListDiffer = new AsyncListDiffer<>(new AdapterListUpdateCallback(this), asyncDifferConfig);
        this.f7032a = asyncListDiffer;
        asyncListDiffer.addListListener(listListener);
    }
}
