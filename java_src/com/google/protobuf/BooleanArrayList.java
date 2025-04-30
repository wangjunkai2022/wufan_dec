package com.google.protobuf;

import com.google.protobuf.Internal;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;
/* loaded from: classes2.dex */
final class BooleanArrayList extends AbstractProtobufList<Boolean> implements Internal.BooleanList, RandomAccess {
    private static final BooleanArrayList EMPTY_LIST;
    private boolean[] array;
    private int size;

    static {
        BooleanArrayList booleanArrayList = new BooleanArrayList();
        EMPTY_LIST = booleanArrayList;
        booleanArrayList.makeImmutable();
    }

    BooleanArrayList() {
        this(new boolean[10], 0);
    }

    public static BooleanArrayList emptyList() {
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
    public boolean addAll(Collection<? extends Boolean> collection) {
        ensureIsMutable();
        Objects.requireNonNull(collection);
        if (!(collection instanceof BooleanArrayList)) {
            return super.addAll(collection);
        }
        BooleanArrayList booleanArrayList = (BooleanArrayList) collection;
        int i2 = booleanArrayList.size;
        if (i2 == 0) {
            return false;
        }
        int i4 = this.size;
        if (Integer.MAX_VALUE - i4 >= i2) {
            int i5 = i4 + i2;
            boolean[] zArr = this.array;
            if (i5 > zArr.length) {
                this.array = Arrays.copyOf(zArr, i5);
            }
            System.arraycopy(booleanArrayList.array, 0, this.array, this.size, booleanArrayList.size);
            this.size = i5;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.protobuf.Internal.BooleanList
    public void addBoolean(boolean z3) {
        addBoolean(this.size, z3);
    }

    @Override // com.google.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BooleanArrayList)) {
            return super.equals(obj);
        }
        BooleanArrayList booleanArrayList = (BooleanArrayList) obj;
        if (this.size != booleanArrayList.size) {
            return false;
        }
        boolean[] zArr = booleanArrayList.array;
        for (int i2 = 0; i2 < this.size; i2++) {
            if (this.array[i2] != zArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.Internal.BooleanList
    public boolean getBoolean(int i2) {
        ensureIndexInRange(i2);
        return this.array[i2];
    }

    @Override // com.google.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i2 = 1;
        for (int i4 = 0; i4 < this.size; i4++) {
            i2 = (i2 * 31) + Internal.hashBoolean(this.array[i4]);
        }
        return i2;
    }

    @Override // com.google.protobuf.Internal.BooleanList
    public boolean setBoolean(int i2, boolean z3) {
        ensureIsMutable();
        ensureIndexInRange(i2);
        boolean[] zArr = this.array;
        boolean z4 = zArr[i2];
        zArr[i2] = z3;
        return z4;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.size;
    }

    private BooleanArrayList(boolean[] zArr, int i2) {
        this.array = zArr;
        this.size = i2;
    }

    private void addBoolean(int i2, boolean z3) {
        int i4;
        ensureIsMutable();
        if (i2 >= 0 && i2 <= (i4 = this.size)) {
            boolean[] zArr = this.array;
            if (i4 < zArr.length) {
                System.arraycopy(zArr, i2, zArr, i2 + 1, i4 - i2);
            } else {
                boolean[] zArr2 = new boolean[((i4 * 3) / 2) + 1];
                System.arraycopy(zArr, 0, zArr2, 0, i2);
                System.arraycopy(this.array, i2, zArr2, i2 + 1, this.size - i2);
                this.array = zArr2;
            }
            this.array[i2] = z3;
            this.size++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(makeOutOfBoundsExceptionMessage(i2));
    }

    @Override // com.google.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    public void add(int i2, Boolean bool) {
        addBoolean(i2, bool.booleanValue());
    }

    @Override // java.util.AbstractList, java.util.List
    public Boolean get(int i2) {
        return Boolean.valueOf(getBoolean(i2));
    }

    @Override // com.google.protobuf.Internal.ProtobufList, com.google.protobuf.Internal.BooleanList
    /* renamed from: mutableCopyWithCapacity */
    public Internal.ProtobufList<Boolean> mutableCopyWithCapacity2(int i2) {
        if (i2 >= this.size) {
            return new BooleanArrayList(Arrays.copyOf(this.array, i2), this.size);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.AbstractProtobufList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        ensureIsMutable();
        for (int i2 = 0; i2 < this.size; i2++) {
            if (obj.equals(Boolean.valueOf(this.array[i2]))) {
                boolean[] zArr = this.array;
                System.arraycopy(zArr, i2 + 1, zArr, i2, this.size - i2);
                this.size--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // com.google.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    public Boolean set(int i2, Boolean bool) {
        return Boolean.valueOf(setBoolean(i2, bool.booleanValue()));
    }

    @Override // com.google.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    public Boolean remove(int i2) {
        ensureIsMutable();
        ensureIndexInRange(i2);
        boolean[] zArr = this.array;
        boolean z3 = zArr[i2];
        System.arraycopy(zArr, i2 + 1, zArr, i2, this.size - i2);
        this.size--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z3);
    }
}
