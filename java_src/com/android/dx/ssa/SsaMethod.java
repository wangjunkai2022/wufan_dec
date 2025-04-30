package com.android.dx.ssa;

import com.android.dx.rop.code.BasicBlockList;
import com.android.dx.rop.code.Insn;
import com.android.dx.rop.code.PlainInsn;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.rop.code.Rops;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.ssa.PhiInsn;
import com.android.dx.ssa.SsaBasicBlock;
import com.android.dx.ssa.SsaInsn;
import com.android.dx.util.IntList;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Stack;
/* loaded from: classes2.dex */
public final class SsaMethod {
    private boolean backMode = false;
    private ArrayList<SsaBasicBlock> blocks;
    private int borrowedSpareRegisters;
    private SsaInsn[] definitionList;
    private int entryBlockIndex;
    private int exitBlockIndex;
    private final boolean isStatic;
    private int maxLabel;
    private final int paramWidth;
    private int registerCount;
    private int spareRegisterBase;
    private List<SsaInsn>[] unmodifiableUseList;
    private ArrayList<SsaInsn>[] useList;

    private SsaMethod(RopMethod ropMethod, int i2, boolean z3) {
        this.paramWidth = i2;
        this.isStatic = z3;
        this.maxLabel = ropMethod.getBlocks().getMaxLabel();
        int regCount = ropMethod.getBlocks().getRegCount();
        this.registerCount = regCount;
        this.spareRegisterBase = regCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BitSet bitSetFromLabelList(BasicBlockList basicBlockList, IntList intList) {
        BitSet bitSet = new BitSet(basicBlockList.size());
        int size = intList.size();
        for (int i2 = 0; i2 < size; i2++) {
            bitSet.set(basicBlockList.indexOfLabel(intList.get(i2)));
        }
        return bitSet;
    }

    private void buildUseList() {
        if (!this.backMode) {
            this.useList = new ArrayList[this.registerCount];
            for (int i2 = 0; i2 < this.registerCount; i2++) {
                this.useList[i2] = new ArrayList<>();
            }
            forEachInsn(new SsaInsn.Visitor() { // from class: com.android.dx.ssa.SsaMethod.2
                private void addToUses(SsaInsn ssaInsn) {
                    RegisterSpecList sources = ssaInsn.getSources();
                    int size = sources.size();
                    for (int i4 = 0; i4 < size; i4++) {
                        SsaMethod.this.useList[sources.get(i4).getReg()].add(ssaInsn);
                    }
                }

                @Override // com.android.dx.ssa.SsaInsn.Visitor
                public void visitMoveInsn(NormalSsaInsn normalSsaInsn) {
                    addToUses(normalSsaInsn);
                }

                @Override // com.android.dx.ssa.SsaInsn.Visitor
                public void visitNonMoveInsn(NormalSsaInsn normalSsaInsn) {
                    addToUses(normalSsaInsn);
                }

                @Override // com.android.dx.ssa.SsaInsn.Visitor
                public void visitPhiInsn(PhiInsn phiInsn) {
                    addToUses(phiInsn);
                }
            });
            this.unmodifiableUseList = new List[this.registerCount];
            for (int i4 = 0; i4 < this.registerCount; i4++) {
                this.unmodifiableUseList[i4] = Collections.unmodifiableList(this.useList[i4]);
            }
            return;
        }
        throw new RuntimeException("No use list in back mode");
    }

    private void convertRopToSsaBlocks(RopMethod ropMethod) {
        int size = ropMethod.getBlocks().size();
        this.blocks = new ArrayList<>(size + 2);
        for (int i2 = 0; i2 < size; i2++) {
            this.blocks.add(SsaBasicBlock.newFromRop(ropMethod, i2, this));
        }
        this.entryBlockIndex = this.blocks.get(ropMethod.getBlocks().indexOfLabel(ropMethod.getFirstLabel())).insertNewPredecessor().getIndex();
        this.exitBlockIndex = -1;
    }

    private static SsaInsn getGoto(SsaBasicBlock ssaBasicBlock) {
        return new NormalSsaInsn(new PlainInsn(Rops.GOTO, SourcePosition.NO_INFO, (RegisterSpec) null, RegisterSpecList.EMPTY), ssaBasicBlock);
    }

    public static IntList indexListFromLabelList(BasicBlockList basicBlockList, IntList intList) {
        IntList intList2 = new IntList(intList.size());
        int size = intList.size();
        for (int i2 = 0; i2 < size; i2++) {
            intList2.add(basicBlockList.indexOfLabel(intList.get(i2)));
        }
        return intList2;
    }

    public static SsaMethod newFromRopMethod(RopMethod ropMethod, int i2, boolean z3) {
        SsaMethod ssaMethod = new SsaMethod(ropMethod, i2, z3);
        ssaMethod.convertRopToSsaBlocks(ropMethod);
        return ssaMethod;
    }

    private void removeFromUseList(SsaInsn ssaInsn, RegisterSpecList registerSpecList) {
        if (registerSpecList == null) {
            return;
        }
        int size = registerSpecList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (!this.useList[registerSpecList.get(i2).getReg()].remove(ssaInsn)) {
                throw new RuntimeException("use not found");
            }
        }
    }

    public int blockIndexToRopLabel(int i2) {
        if (i2 < 0) {
            return -1;
        }
        return this.blocks.get(i2).getRopLabel();
    }

    public int borrowSpareRegister(int i2) {
        int i4 = this.spareRegisterBase;
        int i5 = this.borrowedSpareRegisters;
        int i6 = i4 + i5;
        this.borrowedSpareRegisters = i5 + i2;
        this.registerCount = Math.max(this.registerCount, i2 + i6);
        return i6;
    }

    public BitSet computeReachability() {
        int size = this.blocks.size();
        BitSet bitSet = new BitSet(size);
        BitSet bitSet2 = new BitSet(size);
        bitSet.set(getEntryBlock().getIndex());
        while (true) {
            int nextSetBit = bitSet.nextSetBit(0);
            if (nextSetBit == -1) {
                return bitSet2;
            }
            bitSet2.set(nextSetBit);
            bitSet.or(this.blocks.get(nextSetBit).getSuccessors());
            bitSet.andNot(bitSet2);
        }
    }

    public void deleteInsns(Set<SsaInsn> set) {
        for (SsaInsn ssaInsn : set) {
            SsaBasicBlock block = ssaInsn.getBlock();
            ArrayList<SsaInsn> insns = block.getInsns();
            int size = insns.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                SsaInsn ssaInsn2 = insns.get(size);
                if (ssaInsn == ssaInsn2) {
                    onInsnRemoved(ssaInsn2);
                    insns.remove(size);
                    break;
                }
                size--;
            }
            int size2 = insns.size();
            SsaInsn ssaInsn3 = size2 == 0 ? null : insns.get(size2 - 1);
            if (block != getExitBlock() && (size2 == 0 || ssaInsn3.getOriginalRopInsn() == null || ssaInsn3.getOriginalRopInsn().getOpcode().getBranchingness() == 1)) {
                insns.add(SsaInsn.makeFromRop(new PlainInsn(Rops.GOTO, SourcePosition.NO_INFO, (RegisterSpec) null, RegisterSpecList.EMPTY), block));
                BitSet successors = block.getSuccessors();
                for (int nextSetBit = successors.nextSetBit(0); nextSetBit >= 0; nextSetBit = successors.nextSetBit(nextSetBit + 1)) {
                    if (nextSetBit != block.getPrimarySuccessorIndex()) {
                        block.removeSuccessor(nextSetBit);
                    }
                }
            }
        }
    }

    public void forEachBlockDepthFirst(boolean z3, SsaBasicBlock.Visitor visitor) {
        BitSet bitSet = new BitSet(this.blocks.size());
        Stack stack = new Stack();
        SsaBasicBlock exitBlock = z3 ? getExitBlock() : getEntryBlock();
        if (exitBlock == null) {
            return;
        }
        stack.add(null);
        stack.add(exitBlock);
        while (stack.size() > 0) {
            SsaBasicBlock ssaBasicBlock = (SsaBasicBlock) stack.pop();
            SsaBasicBlock ssaBasicBlock2 = (SsaBasicBlock) stack.pop();
            if (!bitSet.get(ssaBasicBlock.getIndex())) {
                BitSet predecessors = z3 ? ssaBasicBlock.getPredecessors() : ssaBasicBlock.getSuccessors();
                for (int nextSetBit = predecessors.nextSetBit(0); nextSetBit >= 0; nextSetBit = predecessors.nextSetBit(nextSetBit + 1)) {
                    stack.add(ssaBasicBlock);
                    stack.add(this.blocks.get(nextSetBit));
                }
                bitSet.set(ssaBasicBlock.getIndex());
                visitor.visitBlock(ssaBasicBlock, ssaBasicBlock2);
            }
        }
    }

    public void forEachBlockDepthFirstDom(SsaBasicBlock.Visitor visitor) {
        BitSet bitSet = new BitSet(getBlocks().size());
        Stack stack = new Stack();
        stack.add(getEntryBlock());
        while (stack.size() > 0) {
            SsaBasicBlock ssaBasicBlock = (SsaBasicBlock) stack.pop();
            ArrayList<SsaBasicBlock> domChildren = ssaBasicBlock.getDomChildren();
            if (!bitSet.get(ssaBasicBlock.getIndex())) {
                for (int size = domChildren.size() - 1; size >= 0; size--) {
                    stack.add(domChildren.get(size));
                }
                bitSet.set(ssaBasicBlock.getIndex());
                visitor.visitBlock(ssaBasicBlock, null);
            }
        }
    }

    public void forEachInsn(SsaInsn.Visitor visitor) {
        Iterator<SsaBasicBlock> it2 = this.blocks.iterator();
        while (it2.hasNext()) {
            it2.next().forEachInsn(visitor);
        }
    }

    public void forEachPhiInsn(PhiInsn.Visitor visitor) {
        Iterator<SsaBasicBlock> it2 = this.blocks.iterator();
        while (it2.hasNext()) {
            it2.next().forEachPhiInsn(visitor);
        }
    }

    public ArrayList<SsaBasicBlock> getBlocks() {
        return this.blocks;
    }

    public SsaInsn getDefinitionForRegister(int i2) {
        if (!this.backMode) {
            SsaInsn[] ssaInsnArr = this.definitionList;
            if (ssaInsnArr != null) {
                return ssaInsnArr[i2];
            }
            this.definitionList = new SsaInsn[getRegCount()];
            forEachInsn(new SsaInsn.Visitor() { // from class: com.android.dx.ssa.SsaMethod.1
                @Override // com.android.dx.ssa.SsaInsn.Visitor
                public void visitMoveInsn(NormalSsaInsn normalSsaInsn) {
                    SsaMethod.this.definitionList[normalSsaInsn.getResult().getReg()] = normalSsaInsn;
                }

                @Override // com.android.dx.ssa.SsaInsn.Visitor
                public void visitNonMoveInsn(NormalSsaInsn normalSsaInsn) {
                    if (normalSsaInsn.getResult() != null) {
                        SsaMethod.this.definitionList[normalSsaInsn.getResult().getReg()] = normalSsaInsn;
                    }
                }

                @Override // com.android.dx.ssa.SsaInsn.Visitor
                public void visitPhiInsn(PhiInsn phiInsn) {
                    SsaMethod.this.definitionList[phiInsn.getResult().getReg()] = phiInsn;
                }
            });
            return this.definitionList[i2];
        }
        throw new RuntimeException("No def list in back mode");
    }

    public SsaBasicBlock getEntryBlock() {
        return this.blocks.get(this.entryBlockIndex);
    }

    public int getEntryBlockIndex() {
        return this.entryBlockIndex;
    }

    public SsaBasicBlock getExitBlock() {
        int i2 = this.exitBlockIndex;
        if (i2 < 0) {
            return null;
        }
        return this.blocks.get(i2);
    }

    public int getExitBlockIndex() {
        return this.exitBlockIndex;
    }

    public int getParamWidth() {
        return this.paramWidth;
    }

    public int getRegCount() {
        return this.registerCount;
    }

    public ArrayList<SsaInsn>[] getUseListCopy() {
        if (this.useList == null) {
            buildUseList();
        }
        ArrayList<SsaInsn>[] arrayListArr = new ArrayList[this.registerCount];
        for (int i2 = 0; i2 < this.registerCount; i2++) {
            arrayListArr[i2] = new ArrayList<>(this.useList[i2]);
        }
        return arrayListArr;
    }

    public List<SsaInsn> getUseListForRegister(int i2) {
        if (this.unmodifiableUseList == null) {
            buildUseList();
        }
        return this.unmodifiableUseList[i2];
    }

    public boolean isRegALocal(RegisterSpec registerSpec) {
        SsaInsn definitionForRegister = getDefinitionForRegister(registerSpec.getReg());
        if (definitionForRegister == null) {
            return false;
        }
        if (definitionForRegister.getLocalAssignment() != null) {
            return true;
        }
        for (SsaInsn ssaInsn : getUseListForRegister(registerSpec.getReg())) {
            Insn originalRopInsn = ssaInsn.getOriginalRopInsn();
            if (originalRopInsn != null && originalRopInsn.getOpcode().getOpcode() == 54) {
                return true;
            }
        }
        return false;
    }

    public boolean isStatic() {
        return this.isStatic;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void makeExitBlock() {
        if (this.exitBlockIndex < 0) {
            this.exitBlockIndex = this.blocks.size();
            int i2 = this.exitBlockIndex;
            int i4 = this.maxLabel;
            this.maxLabel = i4 + 1;
            SsaBasicBlock ssaBasicBlock = new SsaBasicBlock(i2, i4, this);
            this.blocks.add(ssaBasicBlock);
            Iterator<SsaBasicBlock> it2 = this.blocks.iterator();
            while (it2.hasNext()) {
                it2.next().exitBlockFixup(ssaBasicBlock);
            }
            if (ssaBasicBlock.getPredecessors().cardinality() == 0) {
                this.blocks.remove(this.exitBlockIndex);
                this.exitBlockIndex = -1;
                this.maxLabel--;
                return;
            }
            return;
        }
        throw new RuntimeException("must be called at most once");
    }

    public SsaBasicBlock makeNewGotoBlock() {
        int size = this.blocks.size();
        int i2 = this.maxLabel;
        this.maxLabel = i2 + 1;
        SsaBasicBlock ssaBasicBlock = new SsaBasicBlock(size, i2, this);
        ssaBasicBlock.getInsns().add(getGoto(ssaBasicBlock));
        this.blocks.add(ssaBasicBlock);
        return ssaBasicBlock;
    }

    public int makeNewSsaReg() {
        int i2 = this.registerCount;
        int i4 = i2 + 1;
        this.registerCount = i4;
        this.spareRegisterBase = i4;
        onInsnsChanged();
        return i2;
    }

    public void mapRegisters(RegisterMapper registerMapper) {
        Iterator<SsaBasicBlock> it2 = getBlocks().iterator();
        while (it2.hasNext()) {
            Iterator<SsaInsn> it3 = it2.next().getInsns().iterator();
            while (it3.hasNext()) {
                it3.next().mapRegisters(registerMapper);
            }
        }
        int newRegisterCount = registerMapper.getNewRegisterCount();
        this.registerCount = newRegisterCount;
        this.spareRegisterBase = newRegisterCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onInsnAdded(SsaInsn ssaInsn) {
        onSourcesChanged(ssaInsn, null);
        updateOneDefinition(ssaInsn, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onInsnRemoved(SsaInsn ssaInsn) {
        if (this.useList != null) {
            removeFromUseList(ssaInsn, ssaInsn.getSources());
        }
        RegisterSpec result = ssaInsn.getResult();
        SsaInsn[] ssaInsnArr = this.definitionList;
        if (ssaInsnArr == null || result == null) {
            return;
        }
        ssaInsnArr[result.getReg()] = null;
    }

    public void onInsnsChanged() {
        this.definitionList = null;
        this.useList = null;
        this.unmodifiableUseList = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onSourceChanged(SsaInsn ssaInsn, RegisterSpec registerSpec, RegisterSpec registerSpec2) {
        if (this.useList == null) {
            return;
        }
        if (registerSpec != null) {
            this.useList[registerSpec.getReg()].remove(ssaInsn);
        }
        int reg = registerSpec2.getReg();
        ArrayList<SsaInsn>[] arrayListArr = this.useList;
        if (arrayListArr.length <= reg) {
            this.useList = null;
        } else {
            arrayListArr[reg].add(ssaInsn);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onSourcesChanged(SsaInsn ssaInsn, RegisterSpecList registerSpecList) {
        if (this.useList == null) {
            return;
        }
        if (registerSpecList != null) {
            removeFromUseList(ssaInsn, registerSpecList);
        }
        RegisterSpecList sources = ssaInsn.getSources();
        int size = sources.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.useList[sources.get(i2).getReg()].add(ssaInsn);
        }
    }

    public void returnSpareRegisters() {
        this.borrowedSpareRegisters = 0;
    }

    public void setBackMode() {
        this.backMode = true;
        this.useList = null;
        this.definitionList = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setNewRegCount(int i2) {
        this.registerCount = i2;
        this.spareRegisterBase = i2;
        onInsnsChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateOneDefinition(SsaInsn ssaInsn, RegisterSpec registerSpec) {
        if (this.definitionList == null) {
            return;
        }
        if (registerSpec != null) {
            this.definitionList[registerSpec.getReg()] = null;
        }
        RegisterSpec result = ssaInsn.getResult();
        if (result != null) {
            int reg = result.getReg();
            SsaInsn[] ssaInsnArr = this.definitionList;
            if (ssaInsnArr[reg] == null) {
                ssaInsnArr[result.getReg()] = ssaInsn;
                return;
            }
            throw new RuntimeException("Duplicate add of insn");
        }
    }
}
