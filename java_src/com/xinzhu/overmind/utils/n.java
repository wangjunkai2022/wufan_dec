package com.xinzhu.overmind.utils;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MapCollections.java */
/* loaded from: classes3.dex */
public abstract class n<K, V> {

    /* renamed from: a  reason: collision with root package name */
    n<K, V>.b f64758a;

    /* renamed from: b  reason: collision with root package name */
    n<K, V>.c f64759b;

    /* renamed from: c  reason: collision with root package name */
    n<K, V>.e f64760c;

    /* compiled from: MapCollections.java */
    /* loaded from: classes3.dex */
    final class a<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        final int f64761a;

        /* renamed from: b  reason: collision with root package name */
        int f64762b;

        /* renamed from: c  reason: collision with root package name */
        int f64763c;

        /* renamed from: d  reason: collision with root package name */
        boolean f64764d = false;

        a(int offset) {
            this.f64761a = offset;
            this.f64762b = n.this.d();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f64763c < this.f64762b;
        }

        @Override // java.util.Iterator
        public T next() {
            T t3 = (T) n.this.b(this.f64763c, this.f64761a);
            this.f64763c++;
            this.f64764d = true;
            return t3;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f64764d) {
                int i2 = this.f64763c - 1;
                this.f64763c = i2;
                this.f64762b--;
                this.f64764d = false;
                n.this.h(i2);
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* compiled from: MapCollections.java */
    /* loaded from: classes3.dex */
    final class b implements Set<Map.Entry<K, V>> {
        b() {
        }

        @Override // java.util.Set, java.util.Collection
        /* renamed from: a */
        public boolean add(Map.Entry<K, V> object) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int d4 = n.this.d();
            for (Map.Entry<K, V> entry : collection) {
                n.this.g(entry.getKey(), entry.getValue());
            }
            return d4 != n.this.d();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            n.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object o3) {
            if (o3 instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) o3;
                int e4 = n.this.e(entry.getKey());
                if (e4 < 0) {
                    return false;
                }
                return f.c(n.this.b(e4, 1), entry.getValue());
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
        public boolean equals(Object object) {
            return n.k(this, object);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i2 = 0;
            for (int d4 = n.this.d() - 1; d4 >= 0; d4--) {
                Object b4 = n.this.b(d4, 0);
                Object b5 = n.this.b(d4, 1);
                i2 += (b4 == null ? 0 : b4.hashCode()) ^ (b5 == null ? 0 : b5.hashCode());
            }
            return i2;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return n.this.d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new d();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object object) {
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
            return n.this.d();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] array) {
            throw new UnsupportedOperationException();
        }
    }

    /* compiled from: MapCollections.java */
    /* loaded from: classes3.dex */
    final class c implements Set<K> {
        c() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(K object) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            n.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object object) {
            return n.this.e(object) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return n.j(n.this.c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object object) {
            return n.k(this, object);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i2 = 0;
            for (int d4 = n.this.d() - 1; d4 >= 0; d4--) {
                Object b4 = n.this.b(d4, 0);
                i2 += b4 == null ? 0 : b4.hashCode();
            }
            return i2;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return n.this.d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object object) {
            int e4 = n.this.e(object);
            if (e4 >= 0) {
                n.this.h(e4);
                return true;
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return n.o(n.this.c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return n.p(n.this.c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return n.this.d();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return n.this.q(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] array) {
            return (T[]) n.this.r(array, 0);
        }
    }

    /* compiled from: MapCollections.java */
    /* loaded from: classes3.dex */
    final class d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        int f64768a;

        /* renamed from: c  reason: collision with root package name */
        boolean f64770c = false;

        /* renamed from: b  reason: collision with root package name */
        int f64769b = -1;

        d() {
            this.f64768a = n.this.d() - 1;
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<K, V> next() {
            this.f64769b++;
            this.f64770c = true;
            return this;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object o3) {
            if (this.f64770c) {
                if (o3 instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) o3;
                    return f.c(entry.getKey(), n.this.b(this.f64769b, 0)) && f.c(entry.getValue(), n.this.b(this.f64769b, 1));
                }
                return false;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (this.f64770c) {
                return (K) n.this.b(this.f64769b, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (this.f64770c) {
                return (V) n.this.b(this.f64769b, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f64769b < this.f64768a;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            if (this.f64770c) {
                Object b4 = n.this.b(this.f64769b, 0);
                Object b5 = n.this.b(this.f64769b, 1);
                return (b4 == null ? 0 : b4.hashCode()) ^ (b5 != null ? b5.hashCode() : 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f64770c) {
                n.this.h(this.f64769b);
                this.f64769b--;
                this.f64768a--;
                this.f64770c = false;
                return;
            }
            throw new IllegalStateException();
        }

        @Override // java.util.Map.Entry
        public V setValue(V object) {
            if (this.f64770c) {
                return (V) n.this.i(this.f64769b, object);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public final String toString() {
            return getKey() + SimpleComparison.EQUAL_TO_OPERATION + getValue();
        }
    }

    /* compiled from: MapCollections.java */
    /* loaded from: classes3.dex */
    final class e implements Collection<V> {
        e() {
        }

        @Override // java.util.Collection
        public boolean add(V object) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public void clear() {
            n.this.a();
        }

        @Override // java.util.Collection
        public boolean contains(Object object) {
            return n.this.f(object) >= 0;
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
            return n.this.d() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new a(1);
        }

        @Override // java.util.Collection
        public boolean remove(Object object) {
            int f4 = n.this.f(object);
            if (f4 >= 0) {
                n.this.h(f4);
                return true;
            }
            return false;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            int d4 = n.this.d();
            int i2 = 0;
            boolean z3 = false;
            while (i2 < d4) {
                if (collection.contains(n.this.b(i2, 1))) {
                    n.this.h(i2);
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
            int d4 = n.this.d();
            int i2 = 0;
            boolean z3 = false;
            while (i2 < d4) {
                if (!collection.contains(n.this.b(i2, 1))) {
                    n.this.h(i2);
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
            return n.this.d();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return n.this.q(1);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] array) {
            return (T[]) n.this.r(array, 1);
        }
    }

    public static <K, V> boolean j(Map<K, V> map, Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (!map.containsKey(it2.next())) {
                return false;
            }
        }
        return true;
    }

    public static <T> boolean k(Set<T> set, Object object) {
        if (set == object) {
            return true;
        }
        if (object instanceof Set) {
            Set set2 = (Set) object;
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

    public static <K, V> boolean o(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            map.remove(it2.next());
        }
        return size != map.size();
    }

    public static <K, V> boolean p(Map<K, V> map, Collection<?> collection) {
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

    protected abstract Object b(int index, int offset);

    protected abstract Map<K, V> c();

    protected abstract int d();

    protected abstract int e(Object key);

    protected abstract int f(Object key);

    protected abstract void g(K key, V value);

    protected abstract void h(int index);

    protected abstract V i(int index, V value);

    public Set<Map.Entry<K, V>> l() {
        if (this.f64758a == null) {
            this.f64758a = new b();
        }
        return this.f64758a;
    }

    public Set<K> m() {
        if (this.f64759b == null) {
            this.f64759b = new c();
        }
        return this.f64759b;
    }

    public Collection<V> n() {
        if (this.f64760c == null) {
            this.f64760c = new e();
        }
        return this.f64760c;
    }

    public Object[] q(int offset) {
        int d4 = d();
        Object[] objArr = new Object[d4];
        for (int i2 = 0; i2 < d4; i2++) {
            objArr[i2] = b(i2, offset);
        }
        return objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T[] r(T[] array, int offset) {
        int d4 = d();
        if (array.length < d4) {
            array = (T[]) ((Object[]) Array.newInstance(array.getClass().getComponentType(), d4));
        }
        for (int i2 = 0; i2 < d4; i2++) {
            array[i2] = b(i2, offset);
        }
        if (array.length > d4) {
            array[d4] = null;
        }
        return array;
    }
}
