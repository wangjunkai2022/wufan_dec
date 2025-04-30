package com.google.protobuf;

import com.google.protobuf.Internal;
import java.util.AbstractList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes2.dex */
abstract class AbstractProtobufList<E> extends AbstractList<E> implements Internal.ProtobufList<E> {
    protected static final int DEFAULT_CAPACITY = 10;
    private boolean isMutable = true;

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e4) {
        ensureIsMutable();
        return super.add(e4);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends E> collection) {
        ensureIsMutable();
        return super.addAll(collection);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        ensureIsMutable();
        super.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void ensureIsMutable() {
        if (!this.isMutable) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            if (!(obj instanceof RandomAccess)) {
                return super.equals(obj);
            }
            List list = (List) obj;
            int size = size();
            if (size != list.size()) {
                return false;
            }
            for (int i2 = 0; i2 < size; i2++) {
                if (!get(i2).equals(list.get(i2))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i2 = 1;
        for (int i4 = 0; i4 < size; i4++) {
            i2 = (i2 * 31) + get(i4).hashCode();
        }
        return i2;
    }

    @Override // com.google.protobuf.Internal.ProtobufList
    public boolean isModifiable() {
        return this.isMutable;
    }

    @Override // com.google.protobuf.Internal.ProtobufList
    public final void makeImmutable() {
        this.isMutable = false;
    }

    @Override // java.util.AbstractList, java.util.List
    public E remove(int i2) {
        ensureIsMutable();
        return (E) super.remove(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<?> collection) {
        ensureIsMutable();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection<?> collection) {
        ensureIsMutable();
        return super.retainAll(collection);
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i2, E e4) {
        ensureIsMutable();
        return (E) super.set(i2, e4);
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i2, E e4) {
        ensureIsMutable();
        super.add(i2, e4);
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i2, Collection<? extends E> collection) {
        ensureIsMutable();
        return super.addAll(i2, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        ensureIsMutable();
        return super.remove(obj);
    }
}
