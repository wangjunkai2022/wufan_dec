package com.google.protobuf;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class ProtobufArrayList<E> extends AbstractProtobufList<E> {
    private static final ProtobufArrayList<Object> EMPTY_LIST;
    private final List<E> list;

    static {
        ProtobufArrayList<Object> protobufArrayList = new ProtobufArrayList<>();
        EMPTY_LIST = protobufArrayList;
        protobufArrayList.makeImmutable();
    }

    ProtobufArrayList() {
        this(new ArrayList(10));
    }

    public static <E> ProtobufArrayList<E> emptyList() {
        return (ProtobufArrayList<E>) EMPTY_LIST;
    }

    @Override // com.google.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    public void add(int i2, E e4) {
        ensureIsMutable();
        this.list.add(i2, e4);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i2) {
        return this.list.get(i2);
    }

    @Override // com.google.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    public E remove(int i2) {
        ensureIsMutable();
        E remove = this.list.remove(i2);
        ((AbstractList) this).modCount++;
        return remove;
    }

    @Override // com.google.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    public E set(int i2, E e4) {
        ensureIsMutable();
        E e5 = this.list.set(i2, e4);
        ((AbstractList) this).modCount++;
        return e5;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.list.size();
    }

    private ProtobufArrayList(List<E> list) {
        this.list = list;
    }

    @Override // com.google.protobuf.Internal.ProtobufList, com.google.protobuf.Internal.BooleanList
    public ProtobufArrayList<E> mutableCopyWithCapacity(int i2) {
        if (i2 >= size()) {
            ArrayList arrayList = new ArrayList(i2);
            arrayList.addAll(this.list);
            return new ProtobufArrayList<>(arrayList);
        }
        throw new IllegalArgumentException();
    }
}
