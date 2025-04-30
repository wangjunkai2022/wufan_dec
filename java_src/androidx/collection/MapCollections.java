package androidx.collection;

import androidx.annotation.Nullable;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class MapCollections<K, V> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    MapCollections<K, V>.EntrySet f1691a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    MapCollections<K, V>.KeySet f1692b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    MapCollections<K, V>.ValuesCollection f1693c;

    /* loaded from: classes.dex */
    final class ArrayIterator<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        final int f1694a;

        /* renamed from: b  reason: collision with root package name */
        int f1695b;

        /* renamed from: c  reason: collision with root package name */
        int f1696c;

        /* renamed from: d  reason: collision with root package name */
        boolean f1697d = false;

        ArrayIterator(int i2) {
            this.f1694a = i2;
            this.f1695b = MapCollections.this.d();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f1696c < this.f1695b;
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T t3 = (T) MapCollections.this.b(this.f1696c, this.f1694a);
                this.f1696c++;
                this.f1697d = true;
                return t3;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f1697d) {
                int i2 = this.f1696c - 1;
                this.f1696c = i2;
                this.f1695b--;
                this.f1697d = false;
                MapCollections.this.h(i2);
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* loaded from: classes.dex */
    final class EntrySet implements Set<Map.Entry<K, V>> {
        EntrySet() {
        }

        @Override // java.util.Set, java.util.Collection
        public /* bridge */ /* synthetic */ boolean add(Object obj) {
            return add((Map.Entry) ((Map.Entry) obj));
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int d4 = MapCollections.this.d();
            for (Map.Entry<K, V> entry : collection) {
                MapCollections.this.g(entry.getKey(), entry.getValue());
            }
            return d4 != MapCollections.this.d();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            MapCollections.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                int e4 = MapCollections.this.e(entry.getKey());
                if (e4 < 0) {
                    return false;
                }
                return ContainerHelpers.equal(MapCollections.this.b(e4, 1), entry.getValue());
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                if (!contains(it2.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return MapCollections.equalsSetHelper(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i2 = 0;
            for (int d4 = MapCollections.this.d() - 1; d4 >= 0; d4--) {
                Object b4 = MapCollections.this.b(d4, 0);
                Object b5 = MapCollections.this.b(d4, 1);
                i2 += (b4 == null ? 0 : b4.hashCode()) ^ (b5 == null ? 0 : b5.hashCode());
            }
            return i2;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return MapCollections.this.d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new MapIterator();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return MapCollections.this.d();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        public boolean add(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes.dex */
    final class KeySet implements Set<K> {
        KeySet() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(K k4) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            MapCollections.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return MapCollections.this.e(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return MapCollections.containsAllHelper(MapCollections.this.c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return MapCollections.equalsSetHelper(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i2 = 0;
            for (int d4 = MapCollections.this.d() - 1; d4 >= 0; d4--) {
                Object b4 = MapCollections.this.b(d4, 0);
                i2 += b4 == null ? 0 : b4.hashCode();
            }
            return i2;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return MapCollections.this.d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new ArrayIterator(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int e4 = MapCollections.this.e(obj);
            if (e4 >= 0) {
                MapCollections.this.h(e4);
                return true;
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return MapCollections.removeAllHelper(MapCollections.this.c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return MapCollections.retainAllHelper(MapCollections.this.c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return MapCollections.this.d();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return MapCollections.this.toArrayHelper(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) MapCollections.this.toArrayHelper(tArr, 0);
        }
    }

    /* loaded from: classes.dex */
    final class MapIterator implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        int f1701a;

        /* renamed from: c  reason: collision with root package name */
        boolean f1703c = false;

        /* renamed from: b  reason: collision with root package name */
        int f1702b = -1;

        MapIterator() {
            this.f1701a = MapCollections.this.d() - 1;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (this.f1703c) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    return ContainerHelpers.equal(entry.getKey(), MapCollections.this.b(this.f1702b, 0)) && ContainerHelpers.equal(entry.getValue(), MapCollections.this.b(this.f1702b, 1));
                }
                return false;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (this.f1703c) {
                return (K) MapCollections.this.b(this.f1702b, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (this.f1703c) {
                return (V) MapCollections.this.b(this.f1702b, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f1702b < this.f1701a;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (this.f1703c) {
                Object b4 = MapCollections.this.b(this.f1702b, 0);
                Object b5 = MapCollections.this.b(this.f1702b, 1);
                return (b4 == null ? 0 : b4.hashCode()) ^ (b5 != null ? b5.hashCode() : 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f1703c) {
                MapCollections.this.h(this.f1702b);
                this.f1702b--;
                this.f1701a--;
                this.f1703c = false;
                return;
            }
            throw new IllegalStateException();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v3) {
            if (this.f1703c) {
                return (V) MapCollections.this.i(this.f1702b, v3);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + SimpleComparison.EQUAL_TO_OPERATION + getValue();
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            if (hasNext()) {
                this.f1702b++;
                this.f1703c = true;
                return this;
            }
            throw new NoSuchElementException();
        }
    }

    /* loaded from: classes.dex */
    final class ValuesCollection implements Collection<V> {
        ValuesCollection() {
        }

        @Override // java.util.Collection
        public boolean add(V v3) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public void clear() {
            MapCollections.this.a();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return MapCollections.this.f(obj) >= 0;
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                if (!contains(it2.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return MapCollections.this.d() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new ArrayIterator(1);
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int f4 = MapCollections.this.f(obj);
            if (f4 >= 0) {
                MapCollections.this.h(f4);
                return true;
            }
            return false;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            int d4 = MapCollections.this.d();
            int i2 = 0;
            boolean z3 = false;
            while (i2 < d4) {
                if (collection.contains(MapCollections.this.b(i2, 1))) {
                    MapCollections.this.h(i2);
                    i2--;
                    d4--;
                    z3 = true;
                }
                i2++;
            }
            return z3;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            int d4 = MapCollections.this.d();
            int i2 = 0;
            boolean z3 = false;
            while (i2 < d4) {
                if (!collection.contains(MapCollections.this.b(i2, 1))) {
                    MapCollections.this.h(i2);
                    i2--;
                    d4--;
                    z3 = true;
                }
                i2++;
            }
            return z3;
        }

        @Override // java.util.Collection
        public int size() {
            return MapCollections.this.d();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return MapCollections.this.toArrayHelper(1);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) MapCollections.this.toArrayHelper(tArr, 1);
        }
    }

    public static <K, V> boolean containsAllHelper(Map<K, V> map, Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (!map.containsKey(it2.next())) {
                return false;
            }
        }
        return true;
    }

    public static <T> boolean equalsSetHelper(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static <K, V> boolean removeAllHelper(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            map.remove(it2.next());
        }
        return size != map.size();
    }

    public static <K, V> boolean retainAllHelper(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it2 = map.keySet().iterator();
        while (it2.hasNext()) {
            if (!collection.contains(it2.next())) {
                it2.remove();
            }
        }
        return size != map.size();
    }

    protected abstract void a();

    protected abstract Object b(int i2, int i4);

    protected abstract Map<K, V> c();

    protected abstract int d();

    protected abstract int e(Object obj);

    protected abstract int f(Object obj);

    protected abstract void g(K k4, V v3);

    public Set<Map.Entry<K, V>> getEntrySet() {
        if (this.f1691a == null) {
            this.f1691a = new EntrySet();
        }
        return this.f1691a;
    }

    public Set<K> getKeySet() {
        if (this.f1692b == null) {
            this.f1692b = new KeySet();
        }
        return this.f1692b;
    }

    public Collection<V> getValues() {
        if (this.f1693c == null) {
            this.f1693c = new ValuesCollection();
        }
        return this.f1693c;
    }

    protected abstract void h(int i2);

    protected abstract V i(int i2, V v3);

    public Object[] toArrayHelper(int i2) {
        int d4 = d();
        Object[] objArr = new Object[d4];
        for (int i4 = 0; i4 < d4; i4++) {
            objArr[i4] = b(i4, i2);
        }
        return objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T[] toArrayHelper(T[] tArr, int i2) {
        int d4 = d();
        if (tArr.length < d4) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), d4));
        }
        for (int i4 = 0; i4 < d4; i4++) {
            tArr[i4] = b(i4, i2);
        }
        if (tArr.length > d4) {
            tArr[d4] = null;
        }
        return tArr;
    }
}
