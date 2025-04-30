package androidx.recyclerview.widget;

import android.util.SparseArray;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
interface ViewTypeStorage {

    /* loaded from: classes2.dex */
    public static class IsolatedViewTypeStorage implements ViewTypeStorage {

        /* renamed from: a  reason: collision with root package name */
        SparseArray<NestedAdapterWrapper> f7354a = new SparseArray<>();

        /* renamed from: b  reason: collision with root package name */
        int f7355b = 0;

        /* loaded from: classes2.dex */
        class WrapperViewTypeLookup implements ViewTypeLookup {

            /* renamed from: a  reason: collision with root package name */
            private SparseIntArray f7356a = new SparseIntArray(1);

            /* renamed from: b  reason: collision with root package name */
            private SparseIntArray f7357b = new SparseIntArray(1);

            /* renamed from: c  reason: collision with root package name */
            final NestedAdapterWrapper f7358c;

            WrapperViewTypeLookup(NestedAdapterWrapper nestedAdapterWrapper) {
                this.f7358c = nestedAdapterWrapper;
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public void dispose() {
                IsolatedViewTypeStorage.this.b(this.f7358c);
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public int globalToLocal(int i2) {
                int indexOfKey = this.f7357b.indexOfKey(i2);
                if (indexOfKey >= 0) {
                    return this.f7357b.valueAt(indexOfKey);
                }
                throw new IllegalStateException("requested global type " + i2 + " does not belong to the adapter:" + this.f7358c.adapter);
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public int localToGlobal(int i2) {
                int indexOfKey = this.f7356a.indexOfKey(i2);
                if (indexOfKey > -1) {
                    return this.f7356a.valueAt(indexOfKey);
                }
                int a4 = IsolatedViewTypeStorage.this.a(this.f7358c);
                this.f7356a.put(i2, a4);
                this.f7357b.put(a4, i2);
                return a4;
            }
        }

        int a(NestedAdapterWrapper nestedAdapterWrapper) {
            int i2 = this.f7355b;
            this.f7355b = i2 + 1;
            this.f7354a.put(i2, nestedAdapterWrapper);
            return i2;
        }

        void b(@NonNull NestedAdapterWrapper nestedAdapterWrapper) {
            for (int size = this.f7354a.size() - 1; size >= 0; size--) {
                if (this.f7354a.valueAt(size) == nestedAdapterWrapper) {
                    this.f7354a.removeAt(size);
                }
            }
        }

        @Override // androidx.recyclerview.widget.ViewTypeStorage
        @NonNull
        public ViewTypeLookup createViewTypeWrapper(@NonNull NestedAdapterWrapper nestedAdapterWrapper) {
            return new WrapperViewTypeLookup(nestedAdapterWrapper);
        }

        @Override // androidx.recyclerview.widget.ViewTypeStorage
        @NonNull
        public NestedAdapterWrapper getWrapperForGlobalType(int i2) {
            NestedAdapterWrapper nestedAdapterWrapper = this.f7354a.get(i2);
            if (nestedAdapterWrapper != null) {
                return nestedAdapterWrapper;
            }
            throw new IllegalArgumentException("Cannot find the wrapper for global view type " + i2);
        }
    }

    /* loaded from: classes2.dex */
    public static class SharedIdRangeViewTypeStorage implements ViewTypeStorage {

        /* renamed from: a  reason: collision with root package name */
        SparseArray<List<NestedAdapterWrapper>> f7360a = new SparseArray<>();

        /* loaded from: classes2.dex */
        class WrapperViewTypeLookup implements ViewTypeLookup {

            /* renamed from: a  reason: collision with root package name */
            final NestedAdapterWrapper f7361a;

            WrapperViewTypeLookup(NestedAdapterWrapper nestedAdapterWrapper) {
                this.f7361a = nestedAdapterWrapper;
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public void dispose() {
                SharedIdRangeViewTypeStorage.this.a(this.f7361a);
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public int globalToLocal(int i2) {
                return i2;
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public int localToGlobal(int i2) {
                List<NestedAdapterWrapper> list = SharedIdRangeViewTypeStorage.this.f7360a.get(i2);
                if (list == null) {
                    list = new ArrayList<>();
                    SharedIdRangeViewTypeStorage.this.f7360a.put(i2, list);
                }
                if (!list.contains(this.f7361a)) {
                    list.add(this.f7361a);
                }
                return i2;
            }
        }

        void a(@NonNull NestedAdapterWrapper nestedAdapterWrapper) {
            for (int size = this.f7360a.size() - 1; size >= 0; size--) {
                List<NestedAdapterWrapper> valueAt = this.f7360a.valueAt(size);
                if (valueAt.remove(nestedAdapterWrapper) && valueAt.isEmpty()) {
                    this.f7360a.removeAt(size);
                }
            }
        }

        @Override // androidx.recyclerview.widget.ViewTypeStorage
        @NonNull
        public ViewTypeLookup createViewTypeWrapper(@NonNull NestedAdapterWrapper nestedAdapterWrapper) {
            return new WrapperViewTypeLookup(nestedAdapterWrapper);
        }

        @Override // androidx.recyclerview.widget.ViewTypeStorage
        @NonNull
        public NestedAdapterWrapper getWrapperForGlobalType(int i2) {
            List<NestedAdapterWrapper> list = this.f7360a.get(i2);
            if (list != null && !list.isEmpty()) {
                return list.get(0);
            }
            throw new IllegalArgumentException("Cannot find the wrapper for global view type " + i2);
        }
    }

    /* loaded from: classes2.dex */
    public interface ViewTypeLookup {
        void dispose();

        int globalToLocal(int i2);

        int localToGlobal(int i2);
    }

    @NonNull
    ViewTypeLookup createViewTypeWrapper(@NonNull NestedAdapterWrapper nestedAdapterWrapper);

    @NonNull
    NestedAdapterWrapper getWrapperForGlobalType(int i2);
}
