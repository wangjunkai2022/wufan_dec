package com.android.dx.cf.code;

import com.android.dx.util.Hex;
import com.android.dx.util.IntList;
import com.android.dx.util.LabeledItem;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ByteBlock implements LabeledItem {
    private final ByteCatchList catches;
    private final int end;
    private final int label;
    private final int start;
    private final IntList successors;

    public ByteBlock(int i2, int i4, int i5, IntList intList, ByteCatchList byteCatchList) {
        if (i2 < 0) {
            throw new IllegalArgumentException("label < 0");
        }
        if (i4 < 0) {
            throw new IllegalArgumentException("start < 0");
        }
        if (i5 > i4) {
            Objects.requireNonNull(intList, "targets == null");
            int size = intList.size();
            for (int i6 = 0; i6 < size; i6++) {
                if (intList.get(i6) < 0) {
                    throw new IllegalArgumentException("successors[" + i6 + "] == " + intList.get(i6));
                }
            }
            Objects.requireNonNull(byteCatchList, "catches == null");
            this.label = i2;
            this.start = i4;
            this.end = i5;
            this.successors = intList;
            this.catches = byteCatchList;
            return;
        }
        throw new IllegalArgumentException("end <= start");
    }

    public ByteCatchList getCatches() {
        return this.catches;
    }

    public int getEnd() {
        return this.end;
    }

    @Override // com.android.dx.util.LabeledItem
    public int getLabel() {
        return this.label;
    }

    public int getStart() {
        return this.start;
    }

    public IntList getSuccessors() {
        return this.successors;
    }

    public String toString() {
        return '{' + Hex.u2(this.label) + ": " + Hex.u2(this.start) + ".." + Hex.u2(this.end) + '}';
    }
}
