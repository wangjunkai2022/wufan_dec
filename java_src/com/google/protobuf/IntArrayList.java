package com.google.protobuf;

import com.google.protobuf.Internal;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class IntArrayList extends AbstractProtobufList<Integer> implements Internal.IntList, RandomAccess {
    private static final IntArrayList EMPTY_LIST;
    private int[] array;
    private int size;

    static {
        IntArrayList intArrayList = new IntArrayList();
        EMPTY_LIST = intArrayList;
        intArrayList.makeImmutable();
    }

    IntArrayList() {
        this(new int[10], 0);
    }

    public static IntArrayList emptyList() {
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
    public boolean addAll(Collection<? extends Integer> collection) {
        ensureIsMutable();
        Objects.requireNonNull(collection);
        if (!(collection instanceof IntArrayList)) {
            return super.addAll(collection);
        }
        IntArrayList intArrayList = (IntArrayList) collection;
        int i2 = intArrayList.size;
        if (i2 == 0) {
            return false;
        }
        int i4 = this.size;
        if (Integer.MAX_VALUE - i4 >= i2) {
            int i5 = i4 + i2;
            int[] iArr = this.array;
            if (i5 > iArr.length) {
                this.array = Arrays.copyOf(iArr, i5);
            }
            System.arraycopy(intArrayList.array, 0, this.array, this.size, intArrayList.size);
            this.size = i5;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.protobuf.Internal.IntList
    public void addInt(int i2) {
        addInt(this.size, i2);
    }

    @Override // com.google.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IntArrayList)) {
            return super.equals(obj);
        }
        IntArrayList intArrayList = (IntArrayList) obj;
        if (this.size != intArrayList.size) {
            return false;
        }
        int[] iArr = intArrayList.array;
        for (int i2 = 0; i2 < this.size; i2++) {
            if (this.array[i2] != iArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.Internal.IntList
    public int getInt(int i2) {
        ensureIndexInRange(i2);
        return this.array[i2];
    }

    @Override // com.google.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i2 = 1;
        for (int i4 = 0; i4 < this.size; i4++) {
            i2 = (i2 * 31) + this.array[i4];
        }
        return i2;
    }

    @Override // com.google.protobuf.Internal.IntList
    public int setInt(int i2, int i4) {
        ensureIsMutable();
        ensureIndexInRange(i2);
        int[] iArr = this.array;
        int i5 = iArr[i2];
        iArr[i2] = i4;
        return i5;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.size;
    }

    private IntArrayList(int[] iArr, int i2) {
        this.array = iArr;
        this.size = i2;
    }

    private void addInt(int i2, int i4) {
        int i5;
        ensureIsMutable();
        if (i2 >= 0 && i2 <= (i5 = this.size)) {
            int[] iArr = this.array;
            if (i5 < iArr.length) {
                System.arraycopy(iArr, i2, iArr, i2 + 1, i5 - i2);
            } else {
                int[] iArr2 = new int[((i5 * 3) / 2) + 1];
                System.arraycopy(iArr, 0, iArr2, 0, i2);
                System.arraycopy(this.array, i2, iArr2, i2 + 1, this.size - i2);
                this.array = iArr2;
            }
            this.array[i2] = i4;
            this.size++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(makeOutOfBoundsExceptionMessage(i2));
    }

    @Override // com.google.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    public void add(int i2, Integer num) {
        addInt(i2, num.intValue());
    }

    @Override // java.util.AbstractList, java.util.List
    public Integer get(int i2) {
        return Integer.valueOf(getInt(i2));
    }

    @Override // com.google.protobuf.Internal.ProtobufList, com.google.protobuf.Internal.BooleanList
    /* renamed from: mutableCopyWithCapacity */
    public Internal.ProtobufList<Integer> mutableCopyWithCapacity2(int i2) {
        if (i2 >= this.size) {
            return new IntArrayList(Arrays.copyOf(this.array, i2), this.size);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.AbstractProtobufList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        ensureIsMutable();
        for (int i2 = 0; i2 < this.size; i2++) {
            if (obj.equals(Integer.valueOf(this.array[i2]))) {
                int[] iArr = this.array;
                System.arraycopy(iArr, i2 + 1, iArr, i2, this.size - i2);
                this.size--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // com.google.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    public Integer set(int i2, Integer num) {
        return Integer.valueOf(setInt(i2, num.intValue()));
    }

    @Override // com.google.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    public Integer remove(int i2) {
        ensureIsMutable();
        ensureIndexInRange(i2);
        int[] iArr = this.array;
        int i4 = iArr[i2];
        System.arraycopy(iArr, i2 + 1, iArr, i2, this.size - i2);
        this.size--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i4);
    }
}
