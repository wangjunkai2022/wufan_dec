package com.xinzhu.overmind.utils;

import java.util.AbstractSet;
import java.util.Iterator;
/* compiled from: FastImmutableArraySet.java */
/* loaded from: classes3.dex */
public final class h<T> extends AbstractSet<T> {

    /* renamed from: a  reason: collision with root package name */
    a<T> f64704a;

    /* renamed from: b  reason: collision with root package name */
    T[] f64705b;

    /* compiled from: FastImmutableArraySet.java */
    /* loaded from: classes3.dex */
    private static final class a<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        private final T[] f64706a;

        /* renamed from: b  reason: collision with root package name */
        int f64707b;

        public a(T[] contents) {
            this.f64706a = contents;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f64707b != this.f64706a.length;
        }

        @Override // java.util.Iterator
        public T next() {
            T[] tArr = this.f64706a;
            int i2 = this.f64707b;
            this.f64707b = i2 + 1;
            return tArr[i2];
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public h(T[] contents) {
        this.f64705b = contents;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<T> iterator() {
        a<T> aVar = this.f64704a;
        if (aVar == null) {
            a<T> aVar2 = new a<>(this.f64705b);
            this.f64704a = aVar2;
            return aVar2;
        }
        aVar.f64707b = 0;
        return aVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f64705b.length;
    }
}
