package com.android.dx.rop.code;

import com.android.dx.util.Hex;
import com.android.dx.util.IntList;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class RopMethod {
    private final BasicBlockList blocks;
    private IntList exitPredecessors;
    private final int firstLabel;
    private IntList[] predecessors;

    public RopMethod(BasicBlockList basicBlockList, int i2) {
        Objects.requireNonNull(basicBlockList, "blocks == null");
        if (i2 >= 0) {
            this.blocks = basicBlockList;
            this.firstLabel = i2;
            this.predecessors = null;
            this.exitPredecessors = null;
            return;
        }
        throw new IllegalArgumentException("firstLabel < 0");
    }

    private void calcPredecessors() {
        int maxLabel = this.blocks.getMaxLabel();
        IntList[] intListArr = new IntList[maxLabel];
        IntList intList = new IntList(10);
        int size = this.blocks.size();
        for (int i2 = 0; i2 < size; i2++) {
            BasicBlock basicBlock = this.blocks.get(i2);
            int label = basicBlock.getLabel();
            IntList successors = basicBlock.getSuccessors();
            int size2 = successors.size();
            if (size2 == 0) {
                intList.add(label);
            } else {
                for (int i4 = 0; i4 < size2; i4++) {
                    int i5 = successors.get(i4);
                    IntList intList2 = intListArr[i5];
                    if (intList2 == null) {
                        intList2 = new IntList(10);
                        intListArr[i5] = intList2;
                    }
                    intList2.add(label);
                }
            }
        }
        for (int i6 = 0; i6 < maxLabel; i6++) {
            IntList intList3 = intListArr[i6];
            if (intList3 != null) {
                intList3.sort();
                intList3.setImmutable();
            }
        }
        intList.sort();
        intList.setImmutable();
        int i7 = this.firstLabel;
        if (intListArr[i7] == null) {
            intListArr[i7] = IntList.EMPTY;
        }
        this.predecessors = intListArr;
        this.exitPredecessors = intList;
    }

    public BasicBlockList getBlocks() {
        return this.blocks;
    }

    public IntList getExitPredecessors() {
        if (this.exitPredecessors == null) {
            calcPredecessors();
        }
        return this.exitPredecessors;
    }

    public int getFirstLabel() {
        return this.firstLabel;
    }

    public IntList labelToPredecessors(int i2) {
        if (this.exitPredecessors == null) {
            calcPredecessors();
        }
        IntList intList = this.predecessors[i2];
        if (intList != null) {
            return intList;
        }
        throw new RuntimeException("no such block: " + Hex.u2(i2));
    }

    public RopMethod withRegisterOffset(int i2) {
        RopMethod ropMethod = new RopMethod(this.blocks.withRegisterOffset(i2), this.firstLabel);
        IntList intList = this.exitPredecessors;
        if (intList != null) {
            ropMethod.exitPredecessors = intList;
            ropMethod.predecessors = this.predecessors;
        }
        return ropMethod;
    }
}
