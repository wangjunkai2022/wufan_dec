package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2.dex */
public final class AdapterListUpdateCallback implements ListUpdateCallback {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RecyclerView.Adapter f6713a;

    public AdapterListUpdateCallback(@NonNull RecyclerView.Adapter adapter) {
        this.f6713a = adapter;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onChanged(int i2, int i4, Object obj) {
        this.f6713a.notifyItemRangeChanged(i2, i4, obj);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onInserted(int i2, int i4) {
        this.f6713a.notifyItemRangeInserted(i2, i4);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onMoved(int i2, int i4) {
        this.f6713a.notifyItemMoved(i2, i4);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onRemoved(int i2, int i4) {
        this.f6713a.notifyItemRangeRemoved(i2, i4);
    }
}
