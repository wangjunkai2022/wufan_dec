package io.reactivex.internal.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class VolatileSizeArrayList<T> extends AtomicInteger implements List<T>, RandomAccess {
    private static final long serialVersionUID = 3972397474470203923L;

    /* renamed from: a  reason: collision with root package name */
    final ArrayList<T> f70088a;

    public VolatileSizeArrayList() {
        this.f70088a = new ArrayList<>();
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(T t3) {
        boolean add = this.f70088a.add(t3);
        lazySet(this.f70088a.size());
        return add;
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        boolean addAll = this.f70088a.addAll(collection);
        lazySet(this.f70088a.size());
        return addAll;
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        this.f70088a.clear();
        lazySet(0);
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return this.f70088a.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return this.f70088a.containsAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(Object obj) {
        if (obj instanceof VolatileSizeArrayList) {
            return this.f70088a.equals(((VolatileSizeArrayList) obj).f70088a);
        }
        return this.f70088a.equals(obj);
    }

    @Override // java.util.List
    public T get(int i2) {
        return this.f70088a.get(i2);
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return this.f70088a.hashCode();
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return this.f70088a.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return get() == 0;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        return this.f70088a.iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return this.f70088a.lastIndexOf(obj);
    }

    @Override // java.util.List
    public ListIterator<T> listIterator() {
        return this.f70088a.listIterator();
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        boolean remove = this.f70088a.remove(obj);
        lazySet(this.f70088a.size());
        return remove;
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        boolean removeAll = this.f70088a.removeAll(collection);
        lazySet(this.f70088a.size());
        return removeAll;
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        boolean retainAll = this.f70088a.retainAll(collection);
        lazySet(this.f70088a.size());
        return retainAll;
    }

    @Override // java.util.List
    public T set(int i2, T t3) {
        return this.f70088a.set(i2, t3);
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        return get();
    }

    @Override // java.util.List
    public List<T> subList(int i2, int i4) {
        return this.f70088a.subList(i2, i4);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return this.f70088a.toArray();
    }

    @Override // java.util.concurrent.atomic.AtomicInteger
    public String toString() {
        return this.f70088a.toString();
    }

    @Override // java.util.List
    public ListIterator<T> listIterator(int i2) {
        return this.f70088a.listIterator(i2);
    }

    @Override // java.util.List, java.util.Collection
    public <E> E[] toArray(E[] eArr) {
        return (E[]) this.f70088a.toArray(eArr);
    }

    public VolatileSizeArrayList(int i2) {
        this.f70088a = new ArrayList<>(i2);
    }

    @Override // java.util.List
    public void add(int i2, T t3) {
        this.f70088a.add(i2, t3);
        lazySet(this.f70088a.size());
    }

    @Override // java.util.List
    public boolean addAll(int i2, Collection<? extends T> collection) {
        boolean addAll = this.f70088a.addAll(i2, collection);
        lazySet(this.f70088a.size());
        return addAll;
    }

    @Override // java.util.List
    public T remove(int i2) {
        T remove = this.f70088a.remove(i2);
        lazySet(this.f70088a.size());
        return remove;
    }
}
