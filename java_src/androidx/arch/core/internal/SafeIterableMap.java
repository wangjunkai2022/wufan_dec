package androidx.arch.core.internal;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class SafeIterableMap<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: a  reason: collision with root package name */
    Entry<K, V> f1578a;

    /* renamed from: b  reason: collision with root package name */
    private Entry<K, V> f1579b;

    /* renamed from: c  reason: collision with root package name */
    private WeakHashMap<SupportRemove<K, V>, Boolean> f1580c = new WeakHashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private int f1581d = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class AscendingIterator<K, V> extends ListIterator<K, V> {
        AscendingIterator(Entry<K, V> entry, Entry<K, V> entry2) {
            super(entry, entry2);
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.ListIterator
        Entry<K, V> a(Entry<K, V> entry) {
            return entry.f1585d;
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.ListIterator
        Entry<K, V> b(Entry<K, V> entry) {
            return entry.f1584c;
        }
    }

    /* loaded from: classes.dex */
    private static class DescendingIterator<K, V> extends ListIterator<K, V> {
        DescendingIterator(Entry<K, V> entry, Entry<K, V> entry2) {
            super(entry, entry2);
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.ListIterator
        Entry<K, V> a(Entry<K, V> entry) {
            return entry.f1584c;
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.ListIterator
        Entry<K, V> b(Entry<K, V> entry) {
            return entry.f1585d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Entry<K, V> implements Map.Entry<K, V> {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        final K f1582a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        final V f1583b;

        /* renamed from: c  reason: collision with root package name */
        Entry<K, V> f1584c;

        /* renamed from: d  reason: collision with root package name */
        Entry<K, V> f1585d;

        Entry(@NonNull K k4, @NonNull V v3) {
            this.f1582a = k4;
            this.f1583b = v3;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof Entry) {
                Entry entry = (Entry) obj;
                return this.f1582a.equals(entry.f1582a) && this.f1583b.equals(entry.f1583b);
            }
            return false;
        }

        @Override // java.util.Map.Entry
        @NonNull
        public K getKey() {
            return this.f1582a;
        }

        @Override // java.util.Map.Entry
        @NonNull
        public V getValue() {
            return this.f1583b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f1582a.hashCode() ^ this.f1583b.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v3) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f1582a + SimpleComparison.EQUAL_TO_OPERATION + this.f1583b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class IteratorWithAdditions implements Iterator<Map.Entry<K, V>>, SupportRemove<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private Entry<K, V> f1586a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f1587b = true;

        IteratorWithAdditions() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f1587b) {
                return SafeIterableMap.this.f1578a != null;
            }
            Entry<K, V> entry = this.f1586a;
            return (entry == null || entry.f1584c == null) ? false : true;
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.SupportRemove
        public void supportRemove(@NonNull Entry<K, V> entry) {
            Entry<K, V> entry2 = this.f1586a;
            if (entry == entry2) {
                Entry<K, V> entry3 = entry2.f1585d;
                this.f1586a = entry3;
                this.f1587b = entry3 == null;
            }
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            if (this.f1587b) {
                this.f1587b = false;
                this.f1586a = SafeIterableMap.this.f1578a;
            } else {
                Entry<K, V> entry = this.f1586a;
                this.f1586a = entry != null ? entry.f1584c : null;
            }
            return this.f1586a;
        }
    }

    /* loaded from: classes.dex */
    private static abstract class ListIterator<K, V> implements Iterator<Map.Entry<K, V>>, SupportRemove<K, V> {

        /* renamed from: a  reason: collision with root package name */
        Entry<K, V> f1589a;

        /* renamed from: b  reason: collision with root package name */
        Entry<K, V> f1590b;

        ListIterator(Entry<K, V> entry, Entry<K, V> entry2) {
            this.f1589a = entry2;
            this.f1590b = entry;
        }

        private Entry<K, V> c() {
            Entry<K, V> entry = this.f1590b;
            Entry<K, V> entry2 = this.f1589a;
            if (entry == entry2 || entry2 == null) {
                return null;
            }
            return b(entry);
        }

        abstract Entry<K, V> a(Entry<K, V> entry);

        abstract Entry<K, V> b(Entry<K, V> entry);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f1590b != null;
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.SupportRemove
        public void supportRemove(@NonNull Entry<K, V> entry) {
            if (this.f1589a == entry && entry == this.f1590b) {
                this.f1590b = null;
                this.f1589a = null;
            }
            Entry<K, V> entry2 = this.f1589a;
            if (entry2 == entry) {
                this.f1589a = a(entry2);
            }
            if (this.f1590b == entry) {
                this.f1590b = c();
            }
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            Entry<K, V> entry = this.f1590b;
            this.f1590b = c();
            return entry;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface SupportRemove<K, V> {
        void supportRemove(@NonNull Entry<K, V> entry);
    }

    protected Entry<K, V> a(K k4) {
        Entry<K, V> entry = this.f1578a;
        while (entry != null && !entry.f1582a.equals(k4)) {
            entry = entry.f1584c;
        }
        return entry;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Entry<K, V> b(@NonNull K k4, @NonNull V v3) {
        Entry<K, V> entry = new Entry<>(k4, v3);
        this.f1581d++;
        Entry<K, V> entry2 = this.f1579b;
        if (entry2 == null) {
            this.f1578a = entry;
            this.f1579b = entry;
            return entry;
        }
        entry2.f1584c = entry;
        entry.f1585d = entry2;
        this.f1579b = entry;
        return entry;
    }

    public Iterator<Map.Entry<K, V>> descendingIterator() {
        DescendingIterator descendingIterator = new DescendingIterator(this.f1579b, this.f1578a);
        this.f1580c.put(descendingIterator, Boolean.FALSE);
        return descendingIterator;
    }

    public Map.Entry<K, V> eldest() {
        return this.f1578a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SafeIterableMap) {
            SafeIterableMap safeIterableMap = (SafeIterableMap) obj;
            if (size() != safeIterableMap.size()) {
                return false;
            }
            Iterator<Map.Entry<K, V>> it2 = iterator();
            Iterator<Map.Entry<K, V>> it3 = safeIterableMap.iterator();
            while (it2.hasNext() && it3.hasNext()) {
                Map.Entry<K, V> next = it2.next();
                Map.Entry<K, V> next2 = it3.next();
                if ((next == null && next2 != null) || (next != null && !next.equals(next2))) {
                    return false;
                }
            }
            return (it2.hasNext() || it3.hasNext()) ? false : true;
        }
        return false;
    }

    public int hashCode() {
        Iterator<Map.Entry<K, V>> it2 = iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            i2 += it2.next().hashCode();
        }
        return i2;
    }

    @Override // java.lang.Iterable
    @NonNull
    public Iterator<Map.Entry<K, V>> iterator() {
        AscendingIterator ascendingIterator = new AscendingIterator(this.f1578a, this.f1579b);
        this.f1580c.put(ascendingIterator, Boolean.FALSE);
        return ascendingIterator;
    }

    public SafeIterableMap<K, V>.IteratorWithAdditions iteratorWithAdditions() {
        SafeIterableMap<K, V>.IteratorWithAdditions iteratorWithAdditions = new IteratorWithAdditions();
        this.f1580c.put(iteratorWithAdditions, Boolean.FALSE);
        return iteratorWithAdditions;
    }

    public Map.Entry<K, V> newest() {
        return this.f1579b;
    }

    public V putIfAbsent(@NonNull K k4, @NonNull V v3) {
        Entry<K, V> a4 = a(k4);
        if (a4 != null) {
            return a4.f1583b;
        }
        b(k4, v3);
        return null;
    }

    public V remove(@NonNull K k4) {
        Entry<K, V> a4 = a(k4);
        if (a4 == null) {
            return null;
        }
        this.f1581d--;
        if (!this.f1580c.isEmpty()) {
            for (SupportRemove<K, V> supportRemove : this.f1580c.keySet()) {
                supportRemove.supportRemove(a4);
            }
        }
        Entry<K, V> entry = a4.f1585d;
        if (entry != null) {
            entry.f1584c = a4.f1584c;
        } else {
            this.f1578a = a4.f1584c;
        }
        Entry<K, V> entry2 = a4.f1584c;
        if (entry2 != null) {
            entry2.f1585d = entry;
        } else {
            this.f1579b = entry;
        }
        a4.f1584c = null;
        a4.f1585d = null;
        return a4.f1583b;
    }

    public int size() {
        return this.f1581d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator<Map.Entry<K, V>> it2 = iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().toString());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
