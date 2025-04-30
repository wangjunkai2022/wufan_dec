package com.xinzhu.overmind.server.pm;

import java.util.AbstractSet;
import java.util.Iterator;
/* compiled from: FastImmutableArraySet.java */
/* loaded from: classes3.dex */
public final class b<T> extends AbstractSet<T> {

    /* renamed from: a  reason: collision with root package name */
    a<T> f64586a;

    /* renamed from: b  reason: collision with root package name */
    T[] f64587b;

    /* compiled from: FastImmutableArraySet.java */
    /* loaded from: classes3.dex */
    private static final class a<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        private final T[] f64588a;

        /* renamed from: b  reason: collision with root package name */
        int f64589b;

        public a(T[] contents) {
            this.f64588a = contents;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f64589b != this.f64588a.length;
        }

        @Override // java.util.Iterator
        public T next() {
            T[] tArr = this.f64588a;
            int i2 = this.f64589b;
            this.f64589b = i2 + 1;
            return tArr[i2];
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public b(T[] contents) {
        this.f64587b = contents;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<T> iterator() {
        a<T> aVar = this.f64586a;
        if (aVar == null) {
            a<T> aVar2 = new a<>(this.f64587b);
            this.f64586a = aVar2;
            return aVar2;
        }
        aVar.f64589b = 0;
        return aVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f64587b.length;
    }
}
