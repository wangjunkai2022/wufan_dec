package androidx.databinding;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import androidx.databinding.CallbackRegistry;
import androidx.databinding.ObservableList;
/* loaded from: classes.dex */
public class ListChangeRegistry extends CallbackRegistry<ObservableList.OnListChangedCallback, ObservableList, ListChanges> {

    /* renamed from: h  reason: collision with root package name */
    private static final int f5227h = 0;

    /* renamed from: i  reason: collision with root package name */
    private static final int f5228i = 1;

    /* renamed from: j  reason: collision with root package name */
    private static final int f5229j = 2;

    /* renamed from: k  reason: collision with root package name */
    private static final int f5230k = 3;

    /* renamed from: l  reason: collision with root package name */
    private static final int f5231l = 4;

    /* renamed from: g  reason: collision with root package name */
    private static final Pools.SynchronizedPool<ListChanges> f5226g = new Pools.SynchronizedPool<>(10);

    /* renamed from: m  reason: collision with root package name */
    private static final CallbackRegistry.NotifierCallback<ObservableList.OnListChangedCallback, ObservableList, ListChanges> f5232m = new CallbackRegistry.NotifierCallback<ObservableList.OnListChangedCallback, ObservableList, ListChanges>() { // from class: androidx.databinding.ListChangeRegistry.1
        @Override // androidx.databinding.CallbackRegistry.NotifierCallback
        public void onNotifyCallback(ObservableList.OnListChangedCallback onListChangedCallback, ObservableList observableList, int i2, ListChanges listChanges) {
            if (i2 == 1) {
                onListChangedCallback.onItemRangeChanged(observableList, listChanges.start, listChanges.count);
            } else if (i2 == 2) {
                onListChangedCallback.onItemRangeInserted(observableList, listChanges.start, listChanges.count);
            } else if (i2 == 3) {
                onListChangedCallback.onItemRangeMoved(observableList, listChanges.start, listChanges.to, listChanges.count);
            } else if (i2 != 4) {
                onListChangedCallback.onChanged(observableList);
            } else {
                onListChangedCallback.onItemRangeRemoved(observableList, listChanges.start, listChanges.count);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class ListChanges {
        public int count;
        public int start;
        public int to;

        ListChanges() {
        }
    }

    public ListChangeRegistry() {
        super(f5232m);
    }

    private static ListChanges h(int i2, int i4, int i5) {
        ListChanges acquire = f5226g.acquire();
        if (acquire == null) {
            acquire = new ListChanges();
        }
        acquire.start = i2;
        acquire.to = i4;
        acquire.count = i5;
        return acquire;
    }

    public void notifyChanged(@NonNull ObservableList observableList) {
        notifyCallbacks(observableList, 0, (ListChanges) null);
    }

    public void notifyInserted(@NonNull ObservableList observableList, int i2, int i4) {
        notifyCallbacks(observableList, 2, h(i2, 0, i4));
    }

    public void notifyMoved(@NonNull ObservableList observableList, int i2, int i4, int i5) {
        notifyCallbacks(observableList, 3, h(i2, i4, i5));
    }

    public void notifyRemoved(@NonNull ObservableList observableList, int i2, int i4) {
        notifyCallbacks(observableList, 4, h(i2, 0, i4));
    }

    @Override // androidx.databinding.CallbackRegistry
    public synchronized void notifyCallbacks(@NonNull ObservableList observableList, int i2, ListChanges listChanges) {
        super.notifyCallbacks((ListChangeRegistry) observableList, i2, (int) listChanges);
        if (listChanges != null) {
            f5226g.release(listChanges);
        }
    }

    public void notifyChanged(@NonNull ObservableList observableList, int i2, int i4) {
        notifyCallbacks(observableList, 1, h(i2, 0, i4));
    }
}
