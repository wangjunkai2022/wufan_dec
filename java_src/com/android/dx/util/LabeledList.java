package com.android.dx.util;

import java.util.Arrays;
/* loaded from: classes2.dex */
public class LabeledList extends FixedSizeList {
    private final IntList labelToIndex;

    public LabeledList(int i2) {
        super(i2);
        this.labelToIndex = new IntList(i2);
    }

    private void addLabelIndex(int i2, int i4) {
        int size = this.labelToIndex.size();
        for (int i5 = 0; i5 <= i2 - size; i5++) {
            this.labelToIndex.add(-1);
        }
        this.labelToIndex.set(i2, i4);
    }

    private void rebuildLabelToIndex() {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            LabeledItem labeledItem = (LabeledItem) get0(i2);
            if (labeledItem != null) {
                this.labelToIndex.set(labeledItem.getLabel(), i2);
            }
        }
    }

    private void removeLabel(int i2) {
        this.labelToIndex.set(i2, -1);
    }

    public final int[] getLabelsInOrder() {
        int size = size();
        int[] iArr = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            LabeledItem labeledItem = (LabeledItem) get0(i2);
            if (labeledItem != null) {
                iArr[i2] = labeledItem.getLabel();
            } else {
                throw new NullPointerException("null at index " + i2);
            }
        }
        Arrays.sort(iArr);
        return iArr;
    }

    public final int getMaxLabel() {
        int size = this.labelToIndex.size() - 1;
        while (size >= 0 && this.labelToIndex.get(size) < 0) {
            size--;
        }
        int i2 = size + 1;
        this.labelToIndex.shrink(i2);
        return i2;
    }

    public final int indexOfLabel(int i2) {
        if (i2 >= this.labelToIndex.size()) {
            return -1;
        }
        return this.labelToIndex.get(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void set(int i2, LabeledItem labeledItem) {
        LabeledItem labeledItem2 = (LabeledItem) getOrNull0(i2);
        set0(i2, labeledItem);
        if (labeledItem2 != null) {
            removeLabel(labeledItem2.getLabel());
        }
        if (labeledItem != null) {
            addLabelIndex(labeledItem.getLabel(), i2);
        }
    }

    @Override // com.android.dx.util.FixedSizeList
    public void shrinkToFit() {
        super.shrinkToFit();
        rebuildLabelToIndex();
    }

    public LabeledList(LabeledList labeledList) {
        super(labeledList.size());
        this.labelToIndex = labeledList.labelToIndex.mutableCopy();
        int size = labeledList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = labeledList.get0(i2);
            if (obj != null) {
                set0(i2, obj);
            }
        }
    }
}
