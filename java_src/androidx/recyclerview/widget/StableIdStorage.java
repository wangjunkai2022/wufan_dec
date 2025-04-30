package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.collection.LongSparseArray;
/* loaded from: classes2.dex */
interface StableIdStorage {

    /* loaded from: classes2.dex */
    public static class IsolatedStableIdStorage implements StableIdStorage {

        /* renamed from: a  reason: collision with root package name */
        long f7242a = 0;

        /* loaded from: classes2.dex */
        class WrapperStableIdLookup implements StableIdLookup {

            /* renamed from: a  reason: collision with root package name */
            private final LongSparseArray<Long> f7243a = new LongSparseArray<>();

            WrapperStableIdLookup() {
            }

            @Override // androidx.recyclerview.widget.StableIdStorage.StableIdLookup
            public long localToGlobal(long j4) {
                Long l4 = this.f7243a.get(j4);
                if (l4 == null) {
                    l4 = Long.valueOf(IsolatedStableIdStorage.this.a());
                    this.f7243a.put(j4, l4);
                }
                return l4.longValue();
            }
        }

        long a() {
            long j4 = this.f7242a;
            this.f7242a = 1 + j4;
            return j4;
        }

        @Override // androidx.recyclerview.widget.StableIdStorage
        @NonNull
        public StableIdLookup createStableIdLookup() {
            return new WrapperStableIdLookup();
        }
    }

    /* loaded from: classes2.dex */
    public static class NoStableIdStorage implements StableIdStorage {

        /* renamed from: a  reason: collision with root package name */
        private final StableIdLookup f7245a = new StableIdLookup() { // from class: androidx.recyclerview.widget.StableIdStorage.NoStableIdStorage.1
            @Override // androidx.recyclerview.widget.StableIdStorage.StableIdLookup
            public long localToGlobal(long j4) {
                return -1L;
            }
        };

        @Override // androidx.recyclerview.widget.StableIdStorage
        @NonNull
        public StableIdLookup createStableIdLookup() {
            return this.f7245a;
        }
    }

    /* loaded from: classes2.dex */
    public static class SharedPoolStableIdStorage implements StableIdStorage {

        /* renamed from: a  reason: collision with root package name */
        private final StableIdLookup f7247a = new StableIdLookup() { // from class: androidx.recyclerview.widget.StableIdStorage.SharedPoolStableIdStorage.1
            @Override // androidx.recyclerview.widget.StableIdStorage.StableIdLookup
            public long localToGlobal(long j4) {
                return j4;
            }
        };

        @Override // androidx.recyclerview.widget.StableIdStorage
        @NonNull
        public StableIdLookup createStableIdLookup() {
            return this.f7247a;
        }
    }

    /* loaded from: classes2.dex */
    public interface StableIdLookup {
        long localToGlobal(long j4);
    }

    @NonNull
    StableIdLookup createStableIdLookup();
}
