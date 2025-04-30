package com.android.dx.util;

import java.util.Arrays;
/* loaded from: classes2.dex */
public final class IntList extends MutabilityControl {
    public static final IntList EMPTY;
    private int size;
    private boolean sorted;
    private int[] values;

    static {
        IntList intList = new IntList(0);
        EMPTY = intList;
        intList.setImmutable();
    }

    public IntList() {
        this(4);
    }

    private void growIfNeeded() {
        int i2 = this.size;
        int[] iArr = this.values;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 10];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.values = iArr2;
        }
    }

    public static IntList makeImmutable(int i2) {
        IntList intList = new IntList(1);
        intList.add(i2);
        intList.setImmutable();
        return intList;
    }

    public void add(int i2) {
        throwIfImmutable();
        growIfNeeded();
        int[] iArr = this.values;
        int i4 = this.size;
        int i5 = i4 + 1;
        this.size = i5;
        iArr[i4] = i2;
        if (this.sorted) {
            if (i5 > 1) {
                this.sorted = i2 >= iArr[i5 + (-2)];
            }
        }
    }

    public int binarysearch(int i2) {
        int i4 = this.size;
        if (!this.sorted) {
            for (int i5 = 0; i5 < i4; i5++) {
                if (this.values[i5] == i2) {
                    return i5;
                }
            }
            return -i4;
        }
        int i6 = -1;
        int i7 = i4;
        while (i7 > i6 + 1) {
            int i8 = ((i7 - i6) >> 1) + i6;
            if (i2 <= this.values[i8]) {
                i7 = i8;
            } else {
                i6 = i8;
            }
        }
        return i7 != i4 ? i2 == this.values[i7] ? i7 : (-i7) - 1 : (-i4) - 1;
    }

    public boolean contains(int i2) {
        return indexOf(i2) >= 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof IntList) {
            IntList intList = (IntList) obj;
            if (this.sorted == intList.sorted && this.size == intList.size) {
                for (int i2 = 0; i2 < this.size; i2++) {
                    if (this.values[i2] != intList.values[i2]) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
        return false;
    }

    public int get(int i2) {
        if (i2 < this.size) {
            try {
                return this.values[i2];
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new IndexOutOfBoundsException("n < 0");
            }
        }
        throw new IndexOutOfBoundsException("n >= size()");
    }

    public int hashCode() {
        int i2 = 0;
        for (int i4 = 0; i4 < this.size; i4++) {
            i2 = (i2 * 31) + this.values[i4];
        }
        return i2;
    }

    public int indexOf(int i2) {
        int binarysearch = binarysearch(i2);
        if (binarysearch >= 0) {
            return binarysearch;
        }
        return -1;
    }

    public void insert(int i2, int i4) {
        if (i2 <= this.size) {
            growIfNeeded();
            int[] iArr = this.values;
            int i5 = i2 + 1;
            System.arraycopy(iArr, i2, iArr, i5, this.size - i2);
            int[] iArr2 = this.values;
            iArr2[i2] = i4;
            boolean z3 = true;
            int i6 = this.size + 1;
            this.size = i6;
            if (!this.sorted || ((i2 != 0 && i4 <= iArr2[i2 - 1]) || (i2 != i6 - 1 && i4 >= iArr2[i5]))) {
                z3 = false;
            }
            this.sorted = z3;
            return;
        }
        throw new IndexOutOfBoundsException("n > size()");
    }

    public IntList mutableCopy() {
        int i2 = this.size;
        IntList intList = new IntList(i2);
        for (int i4 = 0; i4 < i2; i4++) {
            intList.add(this.values[i4]);
        }
        return intList;
    }

    public int pop() {
        throwIfImmutable();
        this.size--;
        return get(this.size - 1);
    }

    public void removeIndex(int i2) {
        int i4;
        if (i2 < this.size) {
            int[] iArr = this.values;
            System.arraycopy(iArr, i2 + 1, iArr, i2, (i4 - i2) - 1);
            this.size--;
            return;
        }
        throw new IndexOutOfBoundsException("n >= size()");
    }

    public void set(int i2, int i4) {
        throwIfImmutable();
        if (i2 < this.size) {
            try {
                this.values[i2] = i4;
                this.sorted = false;
                return;
            } catch (ArrayIndexOutOfBoundsException unused) {
                if (i2 < 0) {
                    throw new IllegalArgumentException("n < 0");
                }
                return;
            }
        }
        throw new IndexOutOfBoundsException("n >= size()");
    }

    public void shrink(int i2) {
        if (i2 >= 0) {
            if (i2 <= this.size) {
                throwIfImmutable();
                this.size = i2;
                return;
            }
            throw new IllegalArgumentException("newSize > size");
        }
        throw new IllegalArgumentException("newSize < 0");
    }

    public int size() {
        return this.size;
    }

    public void sort() {
        throwIfImmutable();
        if (this.sorted) {
            return;
        }
        Arrays.sort(this.values, 0, this.size);
        this.sorted = true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder((this.size * 5) + 10);
        sb.append('{');
        for (int i2 = 0; i2 < this.size; i2++) {
            if (i2 != 0) {
                sb.append(", ");
            }
            sb.append(this.values[i2]);
        }
        sb.append('}');
        return sb.toString();
    }

    public int top() {
        return get(this.size - 1);
    }

    public IntList(int i2) {
        super(true);
        try {
            this.values = new int[i2];
            this.size = 0;
            this.sorted = true;
        } catch (NegativeArraySizeException unused) {
            throw new IllegalArgumentException("size < 0");
        }
    }

    public static IntList makeImmutable(int i2, int i4) {
        IntList intList = new IntList(2);
        intList.add(i2);
        intList.add(i4);
        intList.setImmutable();
        return intList;
    }

    public void pop(int i2) {
        throwIfImmutable();
        this.size -= i2;
    }
}
