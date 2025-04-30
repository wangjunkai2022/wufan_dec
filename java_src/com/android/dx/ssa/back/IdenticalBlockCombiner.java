package com.android.dx.ssa.back;

import com.android.dx.rop.code.BasicBlock;
import com.android.dx.rop.code.BasicBlockList;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.util.IntList;
import java.util.BitSet;
/* loaded from: classes2.dex */
public class IdenticalBlockCombiner {
    private final BasicBlockList blocks;
    private final BasicBlockList newBlocks;
    private final RopMethod ropMethod;

    public IdenticalBlockCombiner(RopMethod ropMethod) {
        this.ropMethod = ropMethod;
        BasicBlockList blocks = ropMethod.getBlocks();
        this.blocks = blocks;
        this.newBlocks = blocks.getMutableCopy();
    }

    private void combineBlocks(int i2, IntList intList) {
        int size = intList.size();
        for (int i4 = 0; i4 < size; i4++) {
            int i5 = intList.get(i4);
            IntList labelToPredecessors = this.ropMethod.labelToPredecessors(this.blocks.labelToBlock(i5).getLabel());
            int size2 = labelToPredecessors.size();
            for (int i6 = 0; i6 < size2; i6++) {
                replaceSucc(this.newBlocks.labelToBlock(labelToPredecessors.get(i6)), i5, i2);
            }
        }
    }

    private static boolean compareInsns(BasicBlock basicBlock, BasicBlock basicBlock2) {
        return basicBlock.getInsns().contentEquals(basicBlock2.getInsns());
    }

    private void replaceSucc(BasicBlock basicBlock, int i2, int i4) {
        IntList mutableCopy = basicBlock.getSuccessors().mutableCopy();
        mutableCopy.set(mutableCopy.indexOf(i2), i4);
        int primarySuccessor = basicBlock.getPrimarySuccessor();
        if (primarySuccessor != i2) {
            i4 = primarySuccessor;
        }
        mutableCopy.setImmutable();
        BasicBlock basicBlock2 = new BasicBlock(basicBlock.getLabel(), basicBlock.getInsns(), mutableCopy, i4);
        BasicBlockList basicBlockList = this.newBlocks;
        basicBlockList.set(basicBlockList.indexOfLabel(basicBlock.getLabel()), basicBlock2);
    }

    public RopMethod process() {
        int size = this.blocks.size();
        BitSet bitSet = new BitSet(this.blocks.getMaxLabel());
        for (int i2 = 0; i2 < size; i2++) {
            BasicBlock basicBlock = this.blocks.get(i2);
            if (!bitSet.get(basicBlock.getLabel())) {
                IntList labelToPredecessors = this.ropMethod.labelToPredecessors(basicBlock.getLabel());
                int size2 = labelToPredecessors.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    int i5 = labelToPredecessors.get(i4);
                    BasicBlock labelToBlock = this.blocks.labelToBlock(i5);
                    if (!bitSet.get(i5) && labelToBlock.getSuccessors().size() <= 1 && labelToBlock.getFirstInsn().getOpcode().getOpcode() != 55) {
                        IntList intList = new IntList();
                        for (int i6 = i4 + 1; i6 < size2; i6++) {
                            int i7 = labelToPredecessors.get(i6);
                            BasicBlock labelToBlock2 = this.blocks.labelToBlock(i7);
                            if (labelToBlock2.getSuccessors().size() == 1 && compareInsns(labelToBlock, labelToBlock2)) {
                                intList.add(i7);
                                bitSet.set(i7);
                            }
                        }
                        combineBlocks(i5, intList);
                    }
                }
            }
        }
        for (int i8 = size - 1; i8 >= 0; i8--) {
            if (bitSet.get(this.newBlocks.get(i8).getLabel())) {
                this.newBlocks.set(i8, (BasicBlock) null);
            }
        }
        this.newBlocks.shrinkToFit();
        this.newBlocks.setImmutable();
        return new RopMethod(this.newBlocks, this.ropMethod.getFirstLabel());
    }
}
