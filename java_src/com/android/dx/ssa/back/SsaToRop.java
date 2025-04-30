package com.android.dx.ssa.back;

import com.android.dx.rop.code.BasicBlock;
import com.android.dx.rop.code.BasicBlockList;
import com.android.dx.rop.code.InsnList;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rop;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.rop.code.Rops;
import com.android.dx.ssa.BasicRegisterMapper;
import com.android.dx.ssa.PhiInsn;
import com.android.dx.ssa.RegisterMapper;
import com.android.dx.ssa.SsaBasicBlock;
import com.android.dx.ssa.SsaInsn;
import com.android.dx.ssa.SsaMethod;
import com.android.dx.util.Hex;
import com.android.dx.util.IntList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Comparator;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class SsaToRop {
    private static final boolean DEBUG = false;
    private final InterferenceGraph interference;
    private final boolean minimizeRegisters;
    private final SsaMethod ssaMeth;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class PhiVisitor implements PhiInsn.Visitor {
        private final ArrayList<SsaBasicBlock> blocks;

        public PhiVisitor(ArrayList<SsaBasicBlock> arrayList) {
            this.blocks = arrayList;
        }

        @Override // com.android.dx.ssa.PhiInsn.Visitor
        public void visitPhiInsn(PhiInsn phiInsn) {
            RegisterSpecList sources = phiInsn.getSources();
            RegisterSpec result = phiInsn.getResult();
            int size = sources.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.blocks.get(phiInsn.predBlockIndexForSourcesIndex(i2)).addMoveToEnd(result, sources.get(i2));
            }
        }
    }

    private SsaToRop(SsaMethod ssaMethod, boolean z3) {
        this.minimizeRegisters = z3;
        this.ssaMeth = ssaMethod;
        this.interference = LivenessAnalyzer.constructInterferenceGraph(ssaMethod);
    }

    private RopMethod convert() {
        FirstFitLocalCombiningAllocator firstFitLocalCombiningAllocator = new FirstFitLocalCombiningAllocator(this.ssaMeth, this.interference, this.minimizeRegisters);
        RegisterMapper allocateRegisters = firstFitLocalCombiningAllocator.allocateRegisters();
        this.ssaMeth.setBackMode();
        this.ssaMeth.mapRegisters(allocateRegisters);
        removePhiFunctions();
        if (firstFitLocalCombiningAllocator.wantsParamsMovedHigh()) {
            moveParametersToHighRegisters();
        }
        removeEmptyGotos();
        BasicBlockList convertBasicBlocks = convertBasicBlocks();
        SsaMethod ssaMethod = this.ssaMeth;
        return new IdenticalBlockCombiner(new RopMethod(convertBasicBlocks, ssaMethod.blockIndexToRopLabel(ssaMethod.getEntryBlockIndex()))).process();
    }

    private BasicBlock convertBasicBlock(SsaBasicBlock ssaBasicBlock) {
        IntList ropLabelSuccessorList = ssaBasicBlock.getRopLabelSuccessorList();
        int primarySuccessorRopLabel = ssaBasicBlock.getPrimarySuccessorRopLabel();
        SsaBasicBlock exitBlock = this.ssaMeth.getExitBlock();
        if (ropLabelSuccessorList.contains(exitBlock == null ? -1 : exitBlock.getRopLabel())) {
            if (ropLabelSuccessorList.size() <= 1) {
                ropLabelSuccessorList = IntList.EMPTY;
                verifyValidExitPredecessor(ssaBasicBlock);
                primarySuccessorRopLabel = -1;
            } else {
                throw new RuntimeException("Exit predecessor must have no other successors" + Hex.u2(ssaBasicBlock.getRopLabel()));
            }
        }
        ropLabelSuccessorList.setImmutable();
        return new BasicBlock(ssaBasicBlock.getRopLabel(), convertInsns(ssaBasicBlock.getInsns()), ropLabelSuccessorList, primarySuccessorRopLabel);
    }

    private BasicBlockList convertBasicBlocks() {
        ArrayList<SsaBasicBlock> blocks = this.ssaMeth.getBlocks();
        SsaBasicBlock exitBlock = this.ssaMeth.getExitBlock();
        BitSet computeReachability = this.ssaMeth.computeReachability();
        int cardinality = computeReachability.cardinality();
        if (exitBlock != null && computeReachability.get(exitBlock.getIndex())) {
            cardinality--;
        }
        BasicBlockList basicBlockList = new BasicBlockList(cardinality);
        int i2 = 0;
        Iterator<SsaBasicBlock> it2 = blocks.iterator();
        while (it2.hasNext()) {
            SsaBasicBlock next = it2.next();
            if (computeReachability.get(next.getIndex()) && next != exitBlock) {
                basicBlockList.set(i2, convertBasicBlock(next));
                i2++;
            }
        }
        if (exitBlock == null || exitBlock.getInsns().isEmpty()) {
            return basicBlockList;
        }
        throw new RuntimeException("Exit block must have no insns when leaving SSA form");
    }

    private InsnList convertInsns(ArrayList<SsaInsn> arrayList) {
        int size = arrayList.size();
        InsnList insnList = new InsnList(size);
        for (int i2 = 0; i2 < size; i2++) {
            insnList.set(i2, arrayList.get(i2).toRopInsn());
        }
        insnList.setImmutable();
        return insnList;
    }

    public static RopMethod convertToRopMethod(SsaMethod ssaMethod, boolean z3) {
        return new SsaToRop(ssaMethod, z3).convert();
    }

    private void moveParametersToHighRegisters() {
        int paramWidth = this.ssaMeth.getParamWidth();
        BasicRegisterMapper basicRegisterMapper = new BasicRegisterMapper(this.ssaMeth.getRegCount());
        int regCount = this.ssaMeth.getRegCount();
        for (int i2 = 0; i2 < regCount; i2++) {
            if (i2 < paramWidth) {
                basicRegisterMapper.addMapping(i2, (regCount - paramWidth) + i2, 1);
            } else {
                basicRegisterMapper.addMapping(i2, i2 - paramWidth, 1);
            }
        }
        this.ssaMeth.mapRegisters(basicRegisterMapper);
    }

    private void removeEmptyGotos() {
        final ArrayList<SsaBasicBlock> blocks = this.ssaMeth.getBlocks();
        this.ssaMeth.forEachBlockDepthFirst(false, new SsaBasicBlock.Visitor() { // from class: com.android.dx.ssa.back.SsaToRop.1
            @Override // com.android.dx.ssa.SsaBasicBlock.Visitor
            public void visitBlock(SsaBasicBlock ssaBasicBlock, SsaBasicBlock ssaBasicBlock2) {
                ArrayList<SsaInsn> insns = ssaBasicBlock.getInsns();
                if (insns.size() == 1 && insns.get(0).getOpcode() == Rops.GOTO) {
                    BitSet bitSet = (BitSet) ssaBasicBlock.getPredecessors().clone();
                    for (int nextSetBit = bitSet.nextSetBit(0); nextSetBit >= 0; nextSetBit = bitSet.nextSetBit(nextSetBit + 1)) {
                        ((SsaBasicBlock) blocks.get(nextSetBit)).replaceSuccessor(ssaBasicBlock.getIndex(), ssaBasicBlock.getPrimarySuccessorIndex());
                    }
                }
            }
        });
    }

    private void removePhiFunctions() {
        ArrayList<SsaBasicBlock> blocks = this.ssaMeth.getBlocks();
        Iterator<SsaBasicBlock> it2 = blocks.iterator();
        while (it2.hasNext()) {
            SsaBasicBlock next = it2.next();
            next.forEachPhiInsn(new PhiVisitor(blocks));
            next.removeAllPhiInsns();
        }
        Iterator<SsaBasicBlock> it3 = blocks.iterator();
        while (it3.hasNext()) {
            it3.next().scheduleMovesFromPhis();
        }
    }

    private void verifyValidExitPredecessor(SsaBasicBlock ssaBasicBlock) {
        ArrayList<SsaInsn> insns = ssaBasicBlock.getInsns();
        Rop opcode = insns.get(insns.size() - 1).getOpcode();
        if (opcode.getBranchingness() != 2 && opcode != Rops.THROW) {
            throw new RuntimeException("Exit predecessor must end in valid exit statement.");
        }
    }

    public int[] getRegistersByFrequency() {
        int regCount = this.ssaMeth.getRegCount();
        Integer[] numArr = new Integer[regCount];
        for (int i2 = 0; i2 < regCount; i2++) {
            numArr[i2] = Integer.valueOf(i2);
        }
        Arrays.sort(numArr, new Comparator<Integer>() { // from class: com.android.dx.ssa.back.SsaToRop.2
            @Override // java.util.Comparator
            public int compare(Integer num, Integer num2) {
                return SsaToRop.this.ssaMeth.getUseListForRegister(num2.intValue()).size() - SsaToRop.this.ssaMeth.getUseListForRegister(num.intValue()).size();
            }
        });
        int[] iArr = new int[regCount];
        for (int i4 = 0; i4 < regCount; i4++) {
            iArr[i4] = numArr[i4].intValue();
        }
        return iArr;
    }
}
