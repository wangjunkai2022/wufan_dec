package androidx.recyclerview.widget;

import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StableIdStorage;
import androidx.recyclerview.widget.ViewTypeStorage;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class NestedAdapterWrapper {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ViewTypeStorage.ViewTypeLookup f7059a;
    public final RecyclerView.Adapter<RecyclerView.ViewHolder> adapter;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final StableIdStorage.StableIdLookup f7060b;

    /* renamed from: c  reason: collision with root package name */
    final Callback f7061c;

    /* renamed from: d  reason: collision with root package name */
    int f7062d;

    /* renamed from: e  reason: collision with root package name */
    private RecyclerView.AdapterDataObserver f7063e = new RecyclerView.AdapterDataObserver() { // from class: androidx.recyclerview.widget.NestedAdapterWrapper.1
        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            NestedAdapterWrapper nestedAdapterWrapper = NestedAdapterWrapper.this;
            nestedAdapterWrapper.f7062d = nestedAdapterWrapper.adapter.getItemCount();
            NestedAdapterWrapper nestedAdapterWrapper2 = NestedAdapterWrapper.this;
            nestedAdapterWrapper2.f7061c.onChanged(nestedAdapterWrapper2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i2, int i4) {
            NestedAdapterWrapper nestedAdapterWrapper = NestedAdapterWrapper.this;
            nestedAdapterWrapper.f7061c.onItemRangeChanged(nestedAdapterWrapper, i2, i4, null);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i2, int i4) {
            NestedAdapterWrapper nestedAdapterWrapper = NestedAdapterWrapper.this;
            nestedAdapterWrapper.f7062d += i4;
            nestedAdapterWrapper.f7061c.onItemRangeInserted(nestedAdapterWrapper, i2, i4);
            NestedAdapterWrapper nestedAdapterWrapper2 = NestedAdapterWrapper.this;
            if (nestedAdapterWrapper2.f7062d <= 0 || nestedAdapterWrapper2.adapter.getStateRestorationPolicy() != RecyclerView.Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY) {
                return;
            }
            NestedAdapterWrapper nestedAdapterWrapper3 = NestedAdapterWrapper.this;
            nestedAdapterWrapper3.f7061c.onStateRestorationPolicyChanged(nestedAdapterWrapper3);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i2, int i4, int i5) {
            Preconditions.checkArgument(i5 == 1, "moving more than 1 item is not supported in RecyclerView");
            NestedAdapterWrapper nestedAdapterWrapper = NestedAdapterWrapper.this;
            nestedAdapterWrapper.f7061c.onItemRangeMoved(nestedAdapterWrapper, i2, i4);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i2, int i4) {
            NestedAdapterWrapper nestedAdapterWrapper = NestedAdapterWrapper.this;
            nestedAdapterWrapper.f7062d -= i4;
            nestedAdapterWrapper.f7061c.onItemRangeRemoved(nestedAdapterWrapper, i2, i4);
            NestedAdapterWrapper nestedAdapterWrapper2 = NestedAdapterWrapper.this;
            if (nestedAdapterWrapper2.f7062d >= 1 || nestedAdapterWrapper2.adapter.getStateRestorationPolicy() != RecyclerView.Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY) {
                return;
            }
            NestedAdapterWrapper nestedAdapterWrapper3 = NestedAdapterWrapper.this;
            nestedAdapterWrapper3.f7061c.onStateRestorationPolicyChanged(nestedAdapterWrapper3);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onStateRestorationPolicyChanged() {
            NestedAdapterWrapper nestedAdapterWrapper = NestedAdapterWrapper.this;
            nestedAdapterWrapper.f7061c.onStateRestorationPolicyChanged(nestedAdapterWrapper);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i2, int i4, @Nullable Object obj) {
            NestedAdapterWrapper nestedAdapterWrapper = NestedAdapterWrapper.this;
            nestedAdapterWrapper.f7061c.onItemRangeChanged(nestedAdapterWrapper, i2, i4, obj);
        }
    };

    /* loaded from: classes2.dex */
    interface Callback {
        void onChanged(@NonNull NestedAdapterWrapper nestedAdapterWrapper);

        void onItemRangeChanged(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i2, int i4);

        void onItemRangeChanged(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i2, int i4, @Nullable Object obj);

        void onItemRangeInserted(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i2, int i4);

        void onItemRangeMoved(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i2, int i4);

        void onItemRangeRemoved(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i2, int i4);

        void onStateRestorationPolicyChanged(NestedAdapterWrapper nestedAdapterWrapper);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NestedAdapterWrapper(RecyclerView.Adapter<RecyclerView.ViewHolder> adapter, Callback callback, ViewTypeStorage viewTypeStorage, StableIdStorage.StableIdLookup stableIdLookup) {
        this.adapter = adapter;
        this.f7061c = callback;
        this.f7059a = viewTypeStorage.createViewTypeWrapper(this);
        this.f7060b = stableIdLookup;
        this.f7062d = adapter.getItemCount();
        adapter.registerAdapterDataObserver(this.f7063e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.adapter.unregisterAdapterDataObserver(this.f7063e);
        this.f7059a.dispose();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.f7062d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c(int i2) {
        return this.f7059a.localToGlobal(this.adapter.getItemViewType(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(RecyclerView.ViewHolder viewHolder, int i2) {
        this.adapter.bindViewHolder(viewHolder, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RecyclerView.ViewHolder e(ViewGroup viewGroup, int i2) {
        return this.adapter.onCreateViewHolder(viewGroup, this.f7059a.globalToLocal(i2));
    }

    public long getItemId(int i2) {
        return this.f7060b.localToGlobal(this.adapter.getItemId(i2));
    }
}
