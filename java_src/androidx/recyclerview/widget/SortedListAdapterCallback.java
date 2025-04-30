package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SortedList;
/* loaded from: classes2.dex */
public abstract class SortedListAdapterCallback<T2> extends SortedList.Callback<T2> {

    /* renamed from: a  reason: collision with root package name */
    final RecyclerView.Adapter f7241a;

    public SortedListAdapterCallback(RecyclerView.Adapter adapter) {
        this.f7241a = adapter;
    }

    @Override // androidx.recyclerview.widget.SortedList.Callback
    public void onChanged(int i2, int i4) {
        this.f7241a.notifyItemRangeChanged(i2, i4);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onInserted(int i2, int i4) {
        this.f7241a.notifyItemRangeInserted(i2, i4);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onMoved(int i2, int i4) {
        this.f7241a.notifyItemMoved(i2, i4);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onRemoved(int i2, int i4) {
        this.f7241a.notifyItemRangeRemoved(i2, i4);
    }

    @Override // androidx.recyclerview.widget.SortedList.Callback, androidx.recyclerview.widget.ListUpdateCallback
    public void onChanged(int i2, int i4, Object obj) {
        this.f7241a.notifyItemRangeChanged(i2, i4, obj);
    }
}
