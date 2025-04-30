package com.google.protobuf;

import com.google.protobuf.Internal;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class LongArrayList extends AbstractProtobufList<Long> implements Internal.LongList, RandomAccess {
    private static final LongArrayList EMPTY_LIST;
    private long[] array;
    private int size;

    static {
        LongArrayList longArrayList = new LongArrayList();
        EMPTY_LIST = longArrayList;
        longArrayList.makeImmutable();
    }

    LongArrayList() {
        this(new long[10], 0);
    }

    public static LongArrayList emptyList() {
        return EMPTY_LIST;
    }

    private void ensureIndexInRange(int i2) {
        if (i2 < 0 || i2 >= this.size) {
            throw new IndexOutOfBoundsException(makeOutOfBoundsExceptionMessage(i2));
        }
    }

    private String makeOutOfBoundsExceptionMessage(int i2) {
        return "Index:" + i2 + ", Size:" + this.size;
    }

    @Override // com.google.protobuf.AbstractProtobufList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Long> collection) {
        ensureIsMutable();
        Objects.requireNonNull(collection);
        if (!(collection instanceof LongArrayList)) {
            return super.addAll(collection);
        }
        LongArrayList longArrayList = (LongArrayList) collection;
        int i2 = longArrayList.size;
        if (i2 == 0) {
            return false;
        }
        int i4 = this.size;
        if (Integer.MAX_VALUE - i4 >= i2) {
            int i5 = i4 + i2;
            long[] jArr = this.array;
            if (i5 > jArr.length) {
                this.array = Arrays.copyOf(jArr, i5);
            }
            System.arraycopy(longArrayList.array, 0, this.array, this.size, longArrayList.size);
            this.size = i5;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.protobuf.Internal.LongList
    public void addLong(long j4) {
        addLong(this.size, j4);
    }

    @Override // com.google.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LongArrayList)) {
            return super.equals(obj);
        }
        LongArrayList longArrayList = (LongArrayList) obj;
        if (this.size != longArrayList.size) {
            return false;
        }
        long[] jArr = longArrayList.array;
        for (int i2 = 0; i2 < this.size; i2++) {
            if (this.array[i2] != jArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.Internal.LongList
    public long getLong(int i2) {
        ensureIndexInRange(i2);
        return this.array[i2];
    }

    @Override // com.google.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i2 = 1;
        for (int i4 = 0; i4 < this.size; i4++) {
            i2 = (i2 * 31) + Internal.hashLong(this.array[i4]);
        }
        return i2;
    }

    @Override // com.google.protobuf.Internal.LongList
    public long setLong(int i2, long j4) {
        ensureIsMutable();
        ensureIndexInRange(i2);
        long[] jArr = this.array;
        long j5 = jArr[i2];
        jArr[i2] = j4;
        return j5;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.size;
    }

    private LongArrayList(long[] jArr, int i2) {
        this.array = jArr;
        this.size = i2;
    }

    private void addLong(int i2, long j4) {
        int i4;
        ensureIsMutable();
        if (i2 >= 0 && i2 <= (i4 = this.size)) {
            long[] jArr = this.array;
            if (i4 < jArr.length) {
                System.arraycopy(jArr, i2, jArr, i2 + 1, i4 - i2);
            } else {
                long[] jArr2 = new long[((i4 * 3) / 2) + 1];
                System.arraycopy(jArr, 0, jArr2, 0, i2);
                System.arraycopy(this.array, i2, jArr2, i2 + 1, this.size - i2);
                this.array = jArr2;
            }
            this.array[i2] = j4;
            this.size++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(makeOutOfBoundsExceptionMessage(i2));
    }

    @Override // com.google.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    public void add(int i2, Long l4) {
        addLong(i2, l4.longValue());
    }

    @Override // java.util.AbstractList, java.util.List
    public Long get(int i2) {
        return Long.valueOf(getLong(i2));
    }

    @Override // com.google.protobuf.Internal.ProtobufList, com.google.protobuf.Internal.BooleanList
    /* renamed from: mutableCopyWithCapacity */
    public Internal.ProtobufList<Long> mutableCopyWithCapacity2(int i2) {
        if (i2 >= this.size) {
            return new LongArrayList(Arrays.copyOf(this.array, i2), this.size);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.AbstractProtobufList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        ensureIsMutable();
        for (int i2 = 0; i2 < this.size; i2++) {
            if (obj.equals(Long.valueOf(this.array[i2]))) {
                long[] jArr = this.array;
                System.arraycopy(jArr, i2 + 1, jArr, i2, this.size - i2);
                this.size--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // com.google.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    public Long set(int i2, Long l4) {
        return Long.valueOf(setLong(i2, l4.longValue()));
    }

    @Override // com.google.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    public Long remove(int i2) {
        ensureIsMutable();
        ensureIndexInRange(i2);
        long[] jArr = this.array;
        long j4 = jArr[i2];
        System.arraycopy(jArr, i2 + 1, jArr, i2, this.size - i2);
        this.size--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j4);
    }
}
