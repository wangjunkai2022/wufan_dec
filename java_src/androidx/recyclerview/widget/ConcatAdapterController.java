package androidx.recyclerview.widget;

import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.NestedAdapterWrapper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StableIdStorage;
import androidx.recyclerview.widget.ViewTypeStorage;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ConcatAdapterController implements NestedAdapterWrapper.Callback {

    /* renamed from: a  reason: collision with root package name */
    private final ConcatAdapter f6789a;

    /* renamed from: b  reason: collision with root package name */
    private final ViewTypeStorage f6790b;

    /* renamed from: c  reason: collision with root package name */
    private List<WeakReference<RecyclerView>> f6791c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private final IdentityHashMap<RecyclerView.ViewHolder, NestedAdapterWrapper> f6792d = new IdentityHashMap<>();

    /* renamed from: e  reason: collision with root package name */
    private List<NestedAdapterWrapper> f6793e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private WrapperAndLocalPosition f6794f = new WrapperAndLocalPosition();
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final ConcatAdapter.Config.StableIdMode f6795g;

    /* renamed from: h  reason: collision with root package name */
    private final StableIdStorage f6796h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class WrapperAndLocalPosition {

        /* renamed from: a  reason: collision with root package name */
        NestedAdapterWrapper f6797a;

        /* renamed from: b  reason: collision with root package name */
        int f6798b;

        /* renamed from: c  reason: collision with root package name */
        boolean f6799c;

        WrapperAndLocalPosition() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConcatAdapterController(ConcatAdapter concatAdapter, ConcatAdapter.Config config) {
        this.f6789a = concatAdapter;
        if (config.isolateViewTypes) {
            this.f6790b = new ViewTypeStorage.IsolatedViewTypeStorage();
        } else {
            this.f6790b = new ViewTypeStorage.SharedIdRangeViewTypeStorage();
        }
        ConcatAdapter.Config.StableIdMode stableIdMode = config.stableIdMode;
        this.f6795g = stableIdMode;
        if (stableIdMode == ConcatAdapter.Config.StableIdMode.NO_STABLE_IDS) {
            this.f6796h = new StableIdStorage.NoStableIdStorage();
        } else if (stableIdMode == ConcatAdapter.Config.StableIdMode.ISOLATED_STABLE_IDS) {
            this.f6796h = new StableIdStorage.IsolatedStableIdStorage();
        } else if (stableIdMode == ConcatAdapter.Config.StableIdMode.SHARED_STABLE_IDS) {
            this.f6796h = new StableIdStorage.SharedPoolStableIdStorage();
        } else {
            throw new IllegalArgumentException("unknown stable id mode");
        }
    }

    private void c() {
        RecyclerView.Adapter.StateRestorationPolicy d4 = d();
        if (d4 != this.f6789a.getStateRestorationPolicy()) {
            this.f6789a.a(d4);
        }
    }

    private RecyclerView.Adapter.StateRestorationPolicy d() {
        for (NestedAdapterWrapper nestedAdapterWrapper : this.f6793e) {
            RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy = nestedAdapterWrapper.adapter.getStateRestorationPolicy();
            RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy2 = RecyclerView.Adapter.StateRestorationPolicy.PREVENT;
            if (stateRestorationPolicy == stateRestorationPolicy2) {
                return stateRestorationPolicy2;
            }
            if (stateRestorationPolicy == RecyclerView.Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY && nestedAdapterWrapper.b() == 0) {
                return stateRestorationPolicy2;
            }
        }
        return RecyclerView.Adapter.StateRestorationPolicy.ALLOW;
    }

    private int e(NestedAdapterWrapper nestedAdapterWrapper) {
        NestedAdapterWrapper next;
        Iterator<NestedAdapterWrapper> it2 = this.f6793e.iterator();
        int i2 = 0;
        while (it2.hasNext() && (next = it2.next()) != nestedAdapterWrapper) {
            i2 += next.b();
        }
        return i2;
    }

    @NonNull
    private WrapperAndLocalPosition f(int i2) {
        WrapperAndLocalPosition wrapperAndLocalPosition = this.f6794f;
        if (wrapperAndLocalPosition.f6799c) {
            wrapperAndLocalPosition = new WrapperAndLocalPosition();
        } else {
            wrapperAndLocalPosition.f6799c = true;
        }
        Iterator<NestedAdapterWrapper> it2 = this.f6793e.iterator();
        int i4 = i2;
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            NestedAdapterWrapper next = it2.next();
            if (next.b() > i4) {
                wrapperAndLocalPosition.f6797a = next;
                wrapperAndLocalPosition.f6798b = i4;
                break;
            }
            i4 -= next.b();
        }
        if (wrapperAndLocalPosition.f6797a != null) {
            return wrapperAndLocalPosition;
        }
        throw new IllegalArgumentException("Cannot find wrapper for " + i2);
    }

    @Nullable
    private NestedAdapterWrapper g(RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        int i2 = i(adapter);
        if (i2 == -1) {
            return null;
        }
        return this.f6793e.get(i2);
    }

    @NonNull
    private NestedAdapterWrapper h(RecyclerView.ViewHolder viewHolder) {
        NestedAdapterWrapper nestedAdapterWrapper = this.f6792d.get(viewHolder);
        if (nestedAdapterWrapper != null) {
            return nestedAdapterWrapper;
        }
        throw new IllegalStateException("Cannot find wrapper for " + viewHolder + ", seems like it is not bound by this adapter: " + this);
    }

    private int i(RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        int size = this.f6793e.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.f6793e.get(i2).adapter == adapter) {
                return i2;
            }
        }
        return -1;
    }

    private boolean j(RecyclerView recyclerView) {
        for (WeakReference<RecyclerView> weakReference : this.f6791c) {
            if (weakReference.get() == recyclerView) {
                return true;
            }
        }
        return false;
    }

    private void k(WrapperAndLocalPosition wrapperAndLocalPosition) {
        wrapperAndLocalPosition.f6799c = false;
        wrapperAndLocalPosition.f6797a = null;
        wrapperAndLocalPosition.f6798b = -1;
        this.f6794f = wrapperAndLocalPosition;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(int i2, RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        if (i2 >= 0 && i2 <= this.f6793e.size()) {
            if (hasStableIds()) {
                Preconditions.checkArgument(adapter.hasStableIds(), "All sub adapters must have stable ids when stable id mode is ISOLATED_STABLE_IDS or SHARED_STABLE_IDS");
            } else {
                adapter.hasStableIds();
            }
            if (g(adapter) != null) {
                return false;
            }
            NestedAdapterWrapper nestedAdapterWrapper = new NestedAdapterWrapper(adapter, this, this.f6790b, this.f6796h.createStableIdLookup());
            this.f6793e.add(i2, nestedAdapterWrapper);
            for (WeakReference<RecyclerView> weakReference : this.f6791c) {
                RecyclerView recyclerView = weakReference.get();
                if (recyclerView != null) {
                    adapter.onAttachedToRecyclerView(recyclerView);
                }
            }
            if (nestedAdapterWrapper.b() > 0) {
                this.f6789a.notifyItemRangeInserted(e(nestedAdapterWrapper), nestedAdapterWrapper.b());
            }
            c();
            return true;
        }
        throw new IndexOutOfBoundsException("Index must be between 0 and " + this.f6793e.size() + ". Given:" + i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        return a(this.f6793e.size(), adapter);
    }

    public boolean canRestoreState() {
        for (NestedAdapterWrapper nestedAdapterWrapper : this.f6793e) {
            if (!nestedAdapterWrapper.adapter.canRestoreState()) {
                return false;
            }
        }
        return true;
    }

    @Nullable
    public RecyclerView.Adapter<? extends RecyclerView.ViewHolder> getBoundAdapter(RecyclerView.ViewHolder viewHolder) {
        NestedAdapterWrapper nestedAdapterWrapper = this.f6792d.get(viewHolder);
        if (nestedAdapterWrapper == null) {
            return null;
        }
        return nestedAdapterWrapper.adapter;
    }

    public List<RecyclerView.Adapter<? extends RecyclerView.ViewHolder>> getCopyOfAdapters() {
        if (this.f6793e.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(this.f6793e.size());
        for (NestedAdapterWrapper nestedAdapterWrapper : this.f6793e) {
            arrayList.add(nestedAdapterWrapper.adapter);
        }
        return arrayList;
    }

    public long getItemId(int i2) {
        WrapperAndLocalPosition f4 = f(i2);
        long itemId = f4.f6797a.getItemId(f4.f6798b);
        k(f4);
        return itemId;
    }

    public int getItemViewType(int i2) {
        WrapperAndLocalPosition f4 = f(i2);
        int c4 = f4.f6797a.c(f4.f6798b);
        k(f4);
        return c4;
    }

    public int getLocalAdapterPosition(RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter, RecyclerView.ViewHolder viewHolder, int i2) {
        NestedAdapterWrapper nestedAdapterWrapper = this.f6792d.get(viewHolder);
        if (nestedAdapterWrapper == null) {
            return -1;
        }
        int e4 = i2 - e(nestedAdapterWrapper);
        int itemCount = nestedAdapterWrapper.adapter.getItemCount();
        if (e4 >= 0 && e4 < itemCount) {
            return nestedAdapterWrapper.adapter.findRelativeAdapterPositionIn(adapter, viewHolder, e4);
        }
        throw new IllegalStateException("Detected inconsistent adapter updates. The local position of the view holder maps to " + e4 + " which is out of bounds for the adapter with size " + itemCount + ".Make sure to immediately call notify methods in your adapter when you change the backing dataviewHolder:" + viewHolder + "adapter:" + adapter);
    }

    public int getTotalCount() {
        int i2 = 0;
        for (NestedAdapterWrapper nestedAdapterWrapper : this.f6793e) {
            i2 += nestedAdapterWrapper.b();
        }
        return i2;
    }

    public boolean hasStableIds() {
        return this.f6795g != ConcatAdapter.Config.StableIdMode.NO_STABLE_IDS;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean l(RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        int i2 = i(adapter);
        if (i2 == -1) {
            return false;
        }
        NestedAdapterWrapper nestedAdapterWrapper = this.f6793e.get(i2);
        int e4 = e(nestedAdapterWrapper);
        this.f6793e.remove(i2);
        this.f6789a.notifyItemRangeRemoved(e4, nestedAdapterWrapper.b());
        for (WeakReference<RecyclerView> weakReference : this.f6791c) {
            RecyclerView recyclerView = weakReference.get();
            if (recyclerView != null) {
                adapter.onDetachedFromRecyclerView(recyclerView);
            }
        }
        nestedAdapterWrapper.a();
        c();
        return true;
    }

    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        if (j(recyclerView)) {
            return;
        }
        this.f6791c.add(new WeakReference<>(recyclerView));
        for (NestedAdapterWrapper nestedAdapterWrapper : this.f6793e) {
            nestedAdapterWrapper.adapter.onAttachedToRecyclerView(recyclerView);
        }
    }

    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        WrapperAndLocalPosition f4 = f(i2);
        this.f6792d.put(viewHolder, f4.f6797a);
        f4.f6797a.d(viewHolder, f4.f6798b);
        k(f4);
    }

    @Override // androidx.recyclerview.widget.NestedAdapterWrapper.Callback
    public void onChanged(@NonNull NestedAdapterWrapper nestedAdapterWrapper) {
        this.f6789a.notifyDataSetChanged();
        c();
    }

    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return this.f6790b.getWrapperForGlobalType(i2).e(viewGroup, i2);
    }

    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        int size = this.f6791c.size() - 1;
        while (true) {
            if (size < 0) {
                break;
            }
            WeakReference<RecyclerView> weakReference = this.f6791c.get(size);
            if (weakReference.get() == null) {
                this.f6791c.remove(size);
            } else if (weakReference.get() == recyclerView) {
                this.f6791c.remove(size);
                break;
            }
            size--;
        }
        for (NestedAdapterWrapper nestedAdapterWrapper : this.f6793e) {
            nestedAdapterWrapper.adapter.onDetachedFromRecyclerView(recyclerView);
        }
    }

    public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
        NestedAdapterWrapper nestedAdapterWrapper = this.f6792d.get(viewHolder);
        if (nestedAdapterWrapper != null) {
            boolean onFailedToRecycleView = nestedAdapterWrapper.adapter.onFailedToRecycleView(viewHolder);
            this.f6792d.remove(viewHolder);
            return onFailedToRecycleView;
        }
        throw new IllegalStateException("Cannot find wrapper for " + viewHolder + ", seems like it is not bound by this adapter: " + this);
    }

    @Override // androidx.recyclerview.widget.NestedAdapterWrapper.Callback
    public void onItemRangeChanged(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i2, int i4) {
        this.f6789a.notifyItemRangeChanged(i2 + e(nestedAdapterWrapper), i4);
    }

    @Override // androidx.recyclerview.widget.NestedAdapterWrapper.Callback
    public void onItemRangeInserted(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i2, int i4) {
        this.f6789a.notifyItemRangeInserted(i2 + e(nestedAdapterWrapper), i4);
    }

    @Override // androidx.recyclerview.widget.NestedAdapterWrapper.Callback
    public void onItemRangeMoved(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i2, int i4) {
        int e4 = e(nestedAdapterWrapper);
        this.f6789a.notifyItemMoved(i2 + e4, i4 + e4);
    }

    @Override // androidx.recyclerview.widget.NestedAdapterWrapper.Callback
    public void onItemRangeRemoved(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i2, int i4) {
        this.f6789a.notifyItemRangeRemoved(i2 + e(nestedAdapterWrapper), i4);
    }

    @Override // androidx.recyclerview.widget.NestedAdapterWrapper.Callback
    public void onStateRestorationPolicyChanged(NestedAdapterWrapper nestedAdapterWrapper) {
        c();
    }

    public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        h(viewHolder).adapter.onViewAttachedToWindow(viewHolder);
    }

    public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
        h(viewHolder).adapter.onViewDetachedFromWindow(viewHolder);
    }

    public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        NestedAdapterWrapper nestedAdapterWrapper = this.f6792d.get(viewHolder);
        if (nestedAdapterWrapper != null) {
            nestedAdapterWrapper.adapter.onViewRecycled(viewHolder);
            this.f6792d.remove(viewHolder);
            return;
        }
        throw new IllegalStateException("Cannot find wrapper for " + viewHolder + ", seems like it is not bound by this adapter: " + this);
    }

    @Override // androidx.recyclerview.widget.NestedAdapterWrapper.Callback
    public void onItemRangeChanged(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i2, int i4, @Nullable Object obj) {
        this.f6789a.notifyItemRangeChanged(i2 + e(nestedAdapterWrapper), i4, obj);
    }
}
