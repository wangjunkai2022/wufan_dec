package com.android.dx.util;

import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
public class BitIntSet implements IntSet {
    int[] bits;

    public BitIntSet(int i2) {
        this.bits = Bits.makeBitSet(i2);
    }

    private void ensureCapacity(int i2) {
        if (i2 >= Bits.getMax(this.bits)) {
            int[] makeBitSet = Bits.makeBitSet(Math.max(i2 + 1, Bits.getMax(this.bits) * 2));
            int[] iArr = this.bits;
            System.arraycopy(iArr, 0, makeBitSet, 0, iArr.length);
            this.bits = makeBitSet;
        }
    }

    @Override // com.android.dx.util.IntSet
    public void add(int i2) {
        ensureCapacity(i2);
        Bits.set(this.bits, i2, true);
    }

    @Override // com.android.dx.util.IntSet
    public int elements() {
        return Bits.bitCount(this.bits);
    }

    @Override // com.android.dx.util.IntSet
    public boolean has(int i2) {
        return i2 < Bits.getMax(this.bits) && Bits.get(this.bits, i2);
    }

    @Override // com.android.dx.util.IntSet
    public IntIterator iterator() {
        return new IntIterator() { // from class: com.android.dx.util.BitIntSet.1
            private int idx;

            {
                this.idx = Bits.findFirst(BitIntSet.this.bits, 0);
            }

            @Override // com.android.dx.util.IntIterator
            public boolean hasNext() {
                return this.idx >= 0;
            }

            @Override // com.android.dx.util.IntIterator
            public int next() {
                if (hasNext()) {
                    int i2 = this.idx;
                    this.idx = Bits.findFirst(BitIntSet.this.bits, i2 + 1);
                    return i2;
                }
                throw new NoSuchElementException();
            }
        };
    }

    @Override // com.android.dx.util.IntSet
    public void merge(IntSet intSet) {
        if (intSet instanceof BitIntSet) {
            BitIntSet bitIntSet = (BitIntSet) intSet;
            ensureCapacity(Bits.getMax(bitIntSet.bits) + 1);
            Bits.or(this.bits, bitIntSet.bits);
        } else if (intSet instanceof ListIntSet) {
            ListIntSet listIntSet = (ListIntSet) intSet;
            int size = listIntSet.ints.size();
            if (size > 0) {
                ensureCapacity(listIntSet.ints.get(size - 1));
            }
            for (int i2 = 0; i2 < listIntSet.ints.size(); i2++) {
                Bits.set(this.bits, listIntSet.ints.get(i2), true);
            }
        } else {
            IntIterator it2 = intSet.iterator();
            while (it2.hasNext()) {
                add(it2.next());
            }
        }
    }

    @Override // com.android.dx.util.IntSet
    public void remove(int i2) {
        if (i2 < Bits.getMax(this.bits)) {
            Bits.set(this.bits, i2, false);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('{');
        int findFirst = Bits.findFirst(this.bits, 0);
        boolean z3 = true;
        while (findFirst >= 0) {
            if (!z3) {
                sb.append(", ");
            }
            sb.append(findFirst);
            findFirst = Bits.findFirst(this.bits, findFirst + 1);
            z3 = false;
        }
        sb.append('}');
        return sb.toString();
    }
}
