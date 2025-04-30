package com.android.dx.ssa;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.ssa.DomFront;
import com.android.dx.util.IntIterator;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class SsaConverter {
    public static final boolean DEBUG = false;

    public static SsaMethod convertToSsaMethod(RopMethod ropMethod, int i2, boolean z3) {
        SsaMethod newFromRopMethod = SsaMethod.newFromRopMethod(ropMethod, i2, z3);
        edgeSplit(newFromRopMethod);
        placePhiFunctions(newFromRopMethod, LocalVariableExtractor.extract(newFromRopMethod), 0);
        new SsaRenamer(newFromRopMethod).run();
        newFromRopMethod.makeExitBlock();
        return newFromRopMethod;
    }

    private static void edgeSplit(SsaMethod ssaMethod) {
        edgeSplitPredecessors(ssaMethod);
        edgeSplitMoveExceptionsAndResults(ssaMethod);
        edgeSplitSuccessors(ssaMethod);
    }

    private static void edgeSplitMoveExceptionsAndResults(SsaMethod ssaMethod) {
        ArrayList<SsaBasicBlock> blocks = ssaMethod.getBlocks();
        for (int size = blocks.size() - 1; size >= 0; size--) {
            SsaBasicBlock ssaBasicBlock = blocks.get(size);
            if (!ssaBasicBlock.isExitBlock() && ssaBasicBlock.getPredecessors().cardinality() > 1 && ssaBasicBlock.getInsns().get(0).isMoveException()) {
                BitSet bitSet = (BitSet) ssaBasicBlock.getPredecessors().clone();
                for (int nextSetBit = bitSet.nextSetBit(0); nextSetBit >= 0; nextSetBit = bitSet.nextSetBit(nextSetBit + 1)) {
                    blocks.get(nextSetBit).insertNewSuccessor(ssaBasicBlock).getInsns().add(0, ssaBasicBlock.getInsns().get(0).mo9clone());
                }
                ssaBasicBlock.getInsns().remove(0);
            }
        }
    }

    private static void edgeSplitPredecessors(SsaMethod ssaMethod) {
        ArrayList<SsaBasicBlock> blocks = ssaMethod.getBlocks();
        for (int size = blocks.size() - 1; size >= 0; size--) {
            SsaBasicBlock ssaBasicBlock = blocks.get(size);
            if (nodeNeedsUniquePredecessor(ssaBasicBlock)) {
                ssaBasicBlock.insertNewPredecessor();
            }
        }
    }

    private static void edgeSplitSuccessors(SsaMethod ssaMethod) {
        ArrayList<SsaBasicBlock> blocks = ssaMethod.getBlocks();
        for (int size = blocks.size() - 1; size >= 0; size--) {
            SsaBasicBlock ssaBasicBlock = blocks.get(size);
            BitSet bitSet = (BitSet) ssaBasicBlock.getSuccessors().clone();
            for (int nextSetBit = bitSet.nextSetBit(0); nextSetBit >= 0; nextSetBit = bitSet.nextSetBit(nextSetBit + 1)) {
                SsaBasicBlock ssaBasicBlock2 = blocks.get(nextSetBit);
                if (needsNewSuccessor(ssaBasicBlock, ssaBasicBlock2)) {
                    ssaBasicBlock.insertNewSuccessor(ssaBasicBlock2);
                }
            }
        }
    }

    private static boolean needsNewSuccessor(SsaBasicBlock ssaBasicBlock, SsaBasicBlock ssaBasicBlock2) {
        ArrayList<SsaInsn> insns = ssaBasicBlock.getInsns();
        SsaInsn ssaInsn = insns.get(insns.size() - 1);
        if (ssaBasicBlock.getSuccessors().cardinality() <= 1 || ssaBasicBlock2.getPredecessors().cardinality() <= 1) {
            return (ssaInsn.getResult() != null || ssaInsn.getSources().size() > 0) && ssaBasicBlock2.getPredecessors().cardinality() > 1;
        }
        return true;
    }

    private static boolean nodeNeedsUniquePredecessor(SsaBasicBlock ssaBasicBlock) {
        return ssaBasicBlock.getPredecessors().cardinality() > 1 && ssaBasicBlock.getSuccessors().cardinality() > 1;
    }

    private static void placePhiFunctions(SsaMethod ssaMethod, LocalVariableInfo localVariableInfo, int i2) {
        ArrayList<SsaBasicBlock> blocks = ssaMethod.getBlocks();
        int size = blocks.size();
        int regCount = ssaMethod.getRegCount() - i2;
        DomFront.DomInfo[] run = new DomFront(ssaMethod).run();
        BitSet[] bitSetArr = new BitSet[regCount];
        BitSet[] bitSetArr2 = new BitSet[regCount];
        for (int i4 = 0; i4 < regCount; i4++) {
            bitSetArr[i4] = new BitSet(size);
            bitSetArr2[i4] = new BitSet(size);
        }
        int size2 = blocks.size();
        for (int i5 = 0; i5 < size2; i5++) {
            Iterator<SsaInsn> it2 = blocks.get(i5).getInsns().iterator();
            while (it2.hasNext()) {
                RegisterSpec result = it2.next().getResult();
                if (result != null && result.getReg() - i2 >= 0) {
                    bitSetArr[result.getReg() - i2].set(i5);
                }
            }
        }
        for (int i6 = 0; i6 < regCount; i6++) {
            BitSet bitSet = (BitSet) bitSetArr[i6].clone();
            while (true) {
                int nextSetBit = bitSet.nextSetBit(0);
                if (nextSetBit >= 0) {
                    bitSet.clear(nextSetBit);
                    IntIterator it3 = run[nextSetBit].dominanceFrontiers.iterator();
                    while (it3.hasNext()) {
                        int next = it3.next();
                        if (!bitSetArr2[i6].get(next)) {
                            bitSetArr2[i6].set(next);
                            int i7 = i6 + i2;
                            RegisterSpec registerSpec = localVariableInfo.getStarts(next).get(i7);
                            if (registerSpec == null) {
                                blocks.get(next).addPhiInsnForReg(i7);
                            } else {
                                blocks.get(next).addPhiInsnForReg(registerSpec);
                            }
                            if (!bitSetArr[i6].get(next)) {
                                bitSet.set(next);
                            }
                        }
                    }
                }
            }
        }
    }

    public static SsaMethod testEdgeSplit(RopMethod ropMethod, int i2, boolean z3) {
        SsaMethod newFromRopMethod = SsaMethod.newFromRopMethod(ropMethod, i2, z3);
        edgeSplit(newFromRopMethod);
        return newFromRopMethod;
    }

    public static SsaMethod testPhiPlacement(RopMethod ropMethod, int i2, boolean z3) {
        SsaMethod newFromRopMethod = SsaMethod.newFromRopMethod(ropMethod, i2, z3);
        edgeSplit(newFromRopMethod);
        placePhiFunctions(newFromRopMethod, LocalVariableExtractor.extract(newFromRopMethod), 0);
        return newFromRopMethod;
    }

    public static void updateSsaMethod(SsaMethod ssaMethod, int i2) {
        placePhiFunctions(ssaMethod, LocalVariableExtractor.extract(ssaMethod), i2);
        new SsaRenamer(ssaMethod, i2).run();
    }
}
