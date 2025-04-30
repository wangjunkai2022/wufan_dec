package com.android.dx.util;

import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
public class ListIntSet implements IntSet {
    final IntList ints;

    public ListIntSet() {
        IntList intList = new IntList();
        this.ints = intList;
        intList.sort();
    }

    @Override // com.android.dx.util.IntSet
    public void add(int i2) {
        int binarysearch = this.ints.binarysearch(i2);
        if (binarysearch < 0) {
            this.ints.insert(-(binarysearch + 1), i2);
        }
    }

    @Override // com.android.dx.util.IntSet
    public int elements() {
        return this.ints.size();
    }

    @Override // com.android.dx.util.IntSet
    public boolean has(int i2) {
        return this.ints.indexOf(i2) >= 0;
    }

    @Override // com.android.dx.util.IntSet
    public IntIterator iterator() {
        return new IntIterator() { // from class: com.android.dx.util.ListIntSet.1
            private int idx = 0;

            @Override // com.android.dx.util.IntIterator
            public boolean hasNext() {
                return this.idx < ListIntSet.this.ints.size();
            }

            @Override // com.android.dx.util.IntIterator
            public int next() {
                if (hasNext()) {
                    IntList intList = ListIntSet.this.ints;
                    int i2 = this.idx;
                    this.idx = i2 + 1;
                    return intList.get(i2);
                }
                throw new NoSuchElementException();
            }
        };
    }

    @Override // com.android.dx.util.IntSet
    public void merge(IntSet intSet) {
        int i2 = 0;
        if (intSet instanceof ListIntSet) {
            ListIntSet listIntSet = (ListIntSet) intSet;
            int size = this.ints.size();
            int size2 = listIntSet.ints.size();
            int i4 = 0;
            while (i2 < size2 && i4 < size) {
                while (i2 < size2 && listIntSet.ints.get(i2) < this.ints.get(i4)) {
                    add(listIntSet.ints.get(i2));
                    i2++;
                }
                if (i2 == size2) {
                    break;
                }
                while (i4 < size && listIntSet.ints.get(i2) >= this.ints.get(i4)) {
                    i4++;
                }
            }
            while (i2 < size2) {
                add(listIntSet.ints.get(i2));
                i2++;
            }
            this.ints.sort();
        } else if (intSet instanceof BitIntSet) {
            BitIntSet bitIntSet = (BitIntSet) intSet;
            while (i2 >= 0) {
                this.ints.add(i2);
                i2 = Bits.findFirst(bitIntSet.bits, i2 + 1);
            }
            this.ints.sort();
        } else {
            IntIterator it2 = intSet.iterator();
            while (it2.hasNext()) {
                add(it2.next());
            }
        }
    }

    @Override // com.android.dx.util.IntSet
    public void remove(int i2) {
        int indexOf = this.ints.indexOf(i2);
        if (indexOf >= 0) {
            this.ints.removeIndex(indexOf);
        }
    }

    public String toString() {
        return this.ints.toString();
    }
}
