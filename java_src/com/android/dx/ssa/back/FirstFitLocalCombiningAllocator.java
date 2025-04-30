package com.android.dx.ssa.back;

import com.android.dx.rop.code.CstInsn;
import com.android.dx.rop.code.LocalItem;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rop;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.ssa.InterferenceRegisterMapper;
import com.android.dx.ssa.NormalSsaInsn;
import com.android.dx.ssa.Optimizer;
import com.android.dx.ssa.PhiInsn;
import com.android.dx.ssa.RegisterMapper;
import com.android.dx.ssa.SsaInsn;
import com.android.dx.ssa.SsaMethod;
import com.android.dx.util.IntIterator;
import com.android.dx.util.IntSet;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public class FirstFitLocalCombiningAllocator extends RegisterAllocator {
    private static final boolean DEBUG = false;
    private final ArrayList<NormalSsaInsn> invokeRangeInsns;
    private final Map<LocalItem, ArrayList<RegisterSpec>> localVariables;
    private final InterferenceRegisterMapper mapper;
    private final boolean minimizeRegisters;
    private final ArrayList<NormalSsaInsn> moveResultPseudoInsns;
    private final int paramRangeEnd;
    private final ArrayList<PhiInsn> phiInsns;
    private final BitSet reservedRopRegs;
    private final BitSet ssaRegsMapped;
    private final BitSet usedRopRegs;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum Alignment {
        EVEN { // from class: com.android.dx.ssa.back.FirstFitLocalCombiningAllocator.Alignment.1
            @Override // com.android.dx.ssa.back.FirstFitLocalCombiningAllocator.Alignment
            int nextClearBit(BitSet bitSet, int i2) {
                int nextClearBit = bitSet.nextClearBit(i2);
                while (!FirstFitLocalCombiningAllocator.isEven(nextClearBit)) {
                    nextClearBit = bitSet.nextClearBit(nextClearBit + 1);
                }
                return nextClearBit;
            }
        },
        ODD { // from class: com.android.dx.ssa.back.FirstFitLocalCombiningAllocator.Alignment.2
            @Override // com.android.dx.ssa.back.FirstFitLocalCombiningAllocator.Alignment
            int nextClearBit(BitSet bitSet, int i2) {
                int nextClearBit = bitSet.nextClearBit(i2);
                while (FirstFitLocalCombiningAllocator.isEven(nextClearBit)) {
                    nextClearBit = bitSet.nextClearBit(nextClearBit + 1);
                }
                return nextClearBit;
            }
        },
        UNSPECIFIED { // from class: com.android.dx.ssa.back.FirstFitLocalCombiningAllocator.Alignment.3
            @Override // com.android.dx.ssa.back.FirstFitLocalCombiningAllocator.Alignment
            int nextClearBit(BitSet bitSet, int i2) {
                return bitSet.nextClearBit(i2);
            }
        };

        abstract int nextClearBit(BitSet bitSet, int i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class Multiset {
        private final int[] count;
        private final int[] reg;
        private int size = 0;

        public Multiset(int i2) {
            this.reg = new int[i2];
            this.count = new int[i2];
        }

        public void add(int i2) {
            int i4 = 0;
            while (true) {
                int i5 = this.size;
                if (i4 < i5) {
                    if (this.reg[i4] == i2) {
                        int[] iArr = this.count;
                        iArr[i4] = iArr[i4] + 1;
                        return;
                    }
                    i4++;
                } else {
                    this.reg[i5] = i2;
                    this.count[i5] = 1;
                    this.size = i5 + 1;
                    return;
                }
            }
        }

        public int getAndRemoveHighestCount() {
            int i2 = -1;
            int i4 = -1;
            int i5 = 0;
            for (int i6 = 0; i6 < this.size; i6++) {
                int[] iArr = this.count;
                if (i5 < iArr[i6]) {
                    int i7 = this.reg[i6];
                    i5 = iArr[i6];
                    i4 = i7;
                    i2 = i6;
                }
            }
            this.count[i2] = 0;
            return i4;
        }

        public int getSize() {
            return this.size;
        }
    }

    public FirstFitLocalCombiningAllocator(SsaMethod ssaMethod, InterferenceGraph interferenceGraph, boolean z3) {
        super(ssaMethod, interferenceGraph);
        this.ssaRegsMapped = new BitSet(ssaMethod.getRegCount());
        this.mapper = new InterferenceRegisterMapper(interferenceGraph, ssaMethod.getRegCount());
        this.minimizeRegisters = z3;
        int paramWidth = ssaMethod.getParamWidth();
        this.paramRangeEnd = paramWidth;
        BitSet bitSet = new BitSet(paramWidth * 2);
        this.reservedRopRegs = bitSet;
        bitSet.set(0, paramWidth);
        this.usedRopRegs = new BitSet(paramWidth * 2);
        this.localVariables = new TreeMap();
        this.moveResultPseudoInsns = new ArrayList<>();
        this.invokeRangeInsns = new ArrayList<>();
        this.phiInsns = new ArrayList<>();
    }

    private void addMapping(RegisterSpec registerSpec, int i2) {
        int reg = registerSpec.getReg();
        if (!this.ssaRegsMapped.get(reg) && canMapReg(registerSpec, i2)) {
            int category = registerSpec.getCategory();
            this.mapper.addMapping(registerSpec.getReg(), i2, category);
            this.ssaRegsMapped.set(reg);
            this.usedRopRegs.set(i2, category + i2);
            return;
        }
        throw new RuntimeException("attempt to add invalid register mapping");
    }

    private void adjustAndMapSourceRangeRange(NormalSsaInsn normalSsaInsn) {
        int findRangeAndAdjust = findRangeAndAdjust(normalSsaInsn);
        RegisterSpecList sources = normalSsaInsn.getSources();
        int size = sources.size();
        int i2 = 0;
        while (i2 < size) {
            RegisterSpec registerSpec = sources.get(i2);
            int reg = registerSpec.getReg();
            int category = registerSpec.getCategory();
            int i4 = findRangeAndAdjust + category;
            if (!this.ssaRegsMapped.get(reg)) {
                LocalItem localItemForReg = getLocalItemForReg(reg);
                addMapping(registerSpec, findRangeAndAdjust);
                if (localItemForReg != null) {
                    markReserved(findRangeAndAdjust, category);
                    ArrayList<RegisterSpec> arrayList = this.localVariables.get(localItemForReg);
                    int size2 = arrayList.size();
                    for (int i5 = 0; i5 < size2; i5++) {
                        RegisterSpec registerSpec2 = arrayList.get(i5);
                        if (-1 == sources.indexOfRegister(registerSpec2.getReg())) {
                            tryMapReg(registerSpec2, findRangeAndAdjust, category);
                        }
                    }
                }
            }
            i2++;
            findRangeAndAdjust = i4;
        }
    }

    private void analyzeInstructions() {
        this.ssaMeth.forEachInsn(new SsaInsn.Visitor() { // from class: com.android.dx.ssa.back.FirstFitLocalCombiningAllocator.1
            private void processInsn(SsaInsn ssaInsn) {
                RegisterSpec localAssignment = ssaInsn.getLocalAssignment();
                if (localAssignment != null) {
                    LocalItem localItem = localAssignment.getLocalItem();
                    ArrayList arrayList = (ArrayList) FirstFitLocalCombiningAllocator.this.localVariables.get(localItem);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        FirstFitLocalCombiningAllocator.this.localVariables.put(localItem, arrayList);
                    }
                    arrayList.add(localAssignment);
                }
                if (ssaInsn instanceof NormalSsaInsn) {
                    if (ssaInsn.getOpcode().getOpcode() == 56) {
                        FirstFitLocalCombiningAllocator.this.moveResultPseudoInsns.add((NormalSsaInsn) ssaInsn);
                    } else if (Optimizer.getAdvice().requiresSourcesInOrder(ssaInsn.getOriginalRopInsn().getOpcode(), ssaInsn.getSources())) {
                        FirstFitLocalCombiningAllocator.this.invokeRangeInsns.add((NormalSsaInsn) ssaInsn);
                    }
                } else if (ssaInsn instanceof PhiInsn) {
                    FirstFitLocalCombiningAllocator.this.phiInsns.add((PhiInsn) ssaInsn);
                }
            }

            @Override // com.android.dx.ssa.SsaInsn.Visitor
            public void visitMoveInsn(NormalSsaInsn normalSsaInsn) {
                processInsn(normalSsaInsn);
            }

            @Override // com.android.dx.ssa.SsaInsn.Visitor
            public void visitNonMoveInsn(NormalSsaInsn normalSsaInsn) {
                processInsn(normalSsaInsn);
            }

            @Override // com.android.dx.ssa.SsaInsn.Visitor
            public void visitPhiInsn(PhiInsn phiInsn) {
                processInsn(phiInsn);
            }
        });
    }

    private boolean canMapReg(RegisterSpec registerSpec, int i2) {
        return (spansParamRange(i2, registerSpec.getCategory()) || this.mapper.interferes(registerSpec, i2)) ? false : true;
    }

    private boolean canMapRegs(ArrayList<RegisterSpec> arrayList, int i2) {
        Iterator<RegisterSpec> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            RegisterSpec next = it2.next();
            if (!this.ssaRegsMapped.get(next.getReg()) && !canMapReg(next, i2)) {
                return false;
            }
        }
        return true;
    }

    private int findAnyFittingRange(NormalSsaInsn normalSsaInsn, int i2, int[] iArr, BitSet bitSet) {
        Alignment alignment = Alignment.UNSPECIFIED;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        for (int i7 : iArr) {
            if (i7 == 2) {
                if (isEven(i6)) {
                    i5++;
                } else {
                    i4++;
                }
                i6 += 2;
            } else {
                i6++;
            }
        }
        if (i4 > i5) {
            if (isEven(this.paramRangeEnd)) {
                alignment = Alignment.ODD;
            } else {
                alignment = Alignment.EVEN;
            }
        } else if (i5 > 0) {
            if (isEven(this.paramRangeEnd)) {
                alignment = Alignment.EVEN;
            } else {
                alignment = Alignment.ODD;
            }
        }
        int i8 = this.paramRangeEnd;
        while (true) {
            int findNextUnreservedRopReg = findNextUnreservedRopReg(i8, i2, alignment);
            if (fitPlanForRange(findNextUnreservedRopReg, normalSsaInsn, iArr, bitSet) >= 0) {
                return findNextUnreservedRopReg;
            }
            i8 = findNextUnreservedRopReg + 1;
            bitSet.clear();
        }
    }

    private int findNextUnreservedRopReg(int i2, int i4) {
        return findNextUnreservedRopReg(i2, i4, getAlignment(i4));
    }

    private int findRangeAndAdjust(NormalSsaInsn normalSsaInsn) {
        int oldToNew;
        BitSet bitSet;
        int fitPlanForRange;
        RegisterSpecList sources = normalSsaInsn.getSources();
        int size = sources.size();
        int[] iArr = new int[size];
        int i2 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            iArr[i4] = sources.get(i4).getCategory();
            i2 += iArr[i4];
        }
        int i5 = Integer.MIN_VALUE;
        BitSet bitSet2 = null;
        int i6 = 0;
        int i7 = -1;
        for (int i8 = 0; i8 < size; i8++) {
            int reg = sources.get(i8).getReg();
            if (i8 != 0) {
                i6 -= iArr[i8 - 1];
            }
            if (this.ssaRegsMapped.get(reg) && (oldToNew = this.mapper.oldToNew(reg) + i6) >= 0 && !spansParamRange(oldToNew, i2) && (fitPlanForRange = fitPlanForRange(oldToNew, normalSsaInsn, iArr, (bitSet = new BitSet(size)))) >= 0) {
                int cardinality = fitPlanForRange - bitSet.cardinality();
                if (cardinality > i5) {
                    i5 = cardinality;
                    i7 = oldToNew;
                    bitSet2 = bitSet;
                }
                if (fitPlanForRange == i2) {
                    break;
                }
            }
        }
        if (i7 == -1) {
            bitSet2 = new BitSet(size);
            i7 = findAnyFittingRange(normalSsaInsn, i2, iArr, bitSet2);
        }
        for (int nextSetBit = bitSet2.nextSetBit(0); nextSetBit >= 0; nextSetBit = bitSet2.nextSetBit(nextSetBit + 1)) {
            normalSsaInsn.changeOneSource(nextSetBit, insertMoveBefore(normalSsaInsn, sources.get(nextSetBit)));
        }
        return i7;
    }

    private int findRopRegForLocal(int i2, int i4) {
        Alignment alignment = getAlignment(i4);
        int nextClearBit = alignment.nextClearBit(this.usedRopRegs, i2);
        while (true) {
            int i5 = 1;
            while (i5 < i4 && !this.usedRopRegs.get(nextClearBit + i5)) {
                i5++;
            }
            if (i5 == i4) {
                return nextClearBit;
            }
            nextClearBit = alignment.nextClearBit(this.usedRopRegs, nextClearBit + i5);
        }
    }

    private int fitPlanForRange(int i2, NormalSsaInsn normalSsaInsn, int[] iArr, BitSet bitSet) {
        RegisterSpecList sources = normalSsaInsn.getSources();
        int size = sources.size();
        RegisterSpecList ssaSetToSpecs = ssaSetToSpecs(normalSsaInsn.getBlock().getLiveOutRegs());
        BitSet bitSet2 = new BitSet(this.ssaMeth.getRegCount());
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            RegisterSpec registerSpec = sources.get(i5);
            int reg = registerSpec.getReg();
            int i6 = iArr[i5];
            if (i5 != 0) {
                i2 += iArr[i5 - 1];
            }
            if (!this.ssaRegsMapped.get(reg) || this.mapper.oldToNew(reg) != i2) {
                if (!rangeContainsReserved(i2, i6)) {
                    if (this.ssaRegsMapped.get(reg) || !canMapReg(registerSpec, i2) || bitSet2.get(reg)) {
                        if (!this.mapper.areAnyPinned(ssaSetToSpecs, i2, i6) && !this.mapper.areAnyPinned(sources, i2, i6)) {
                            bitSet.set(i5);
                            bitSet2.set(reg);
                        }
                    }
                }
                return -1;
            }
            i4 += i6;
            bitSet2.set(reg);
        }
        return i4;
    }

    private Alignment getAlignment(int i2) {
        Alignment alignment = Alignment.UNSPECIFIED;
        if (i2 == 2) {
            if (isEven(this.paramRangeEnd)) {
                return Alignment.EVEN;
            }
            return Alignment.ODD;
        }
        return alignment;
    }

    private LocalItem getLocalItemForReg(int i2) {
        for (Map.Entry<LocalItem, ArrayList<RegisterSpec>> entry : this.localVariables.entrySet()) {
            Iterator<RegisterSpec> it2 = entry.getValue().iterator();
            while (it2.hasNext()) {
                if (it2.next().getReg() == i2) {
                    return entry.getKey();
                }
            }
        }
        return null;
    }

    private int getParameterIndexForReg(int i2) {
        Rop opcode;
        SsaInsn definitionForRegister = this.ssaMeth.getDefinitionForRegister(i2);
        if (definitionForRegister == null || (opcode = definitionForRegister.getOpcode()) == null || opcode.getOpcode() != 3) {
            return -1;
        }
        return ((CstInteger) ((CstInsn) definitionForRegister.getOriginalRopInsn()).getConstant()).getValue();
    }

    private void handleCheckCastResults() {
        Iterator<NormalSsaInsn> it2 = this.moveResultPseudoInsns.iterator();
        while (it2.hasNext()) {
            NormalSsaInsn next = it2.next();
            RegisterSpec result = next.getResult();
            int reg = result.getReg();
            BitSet predecessors = next.getBlock().getPredecessors();
            if (predecessors.cardinality() == 1) {
                ArrayList<SsaInsn> insns = this.ssaMeth.getBlocks().get(predecessors.nextSetBit(0)).getInsns();
                SsaInsn ssaInsn = insns.get(insns.size() - 1);
                if (ssaInsn.getOpcode().getOpcode() == 43) {
                    RegisterSpec registerSpec = ssaInsn.getSources().get(0);
                    int reg2 = registerSpec.getReg();
                    int category = registerSpec.getCategory();
                    boolean z3 = this.ssaRegsMapped.get(reg);
                    boolean z4 = this.ssaRegsMapped.get(reg2);
                    if ((!z4) & z3) {
                        z4 = tryMapReg(registerSpec, this.mapper.oldToNew(reg), category);
                    }
                    if ((!z3) & z4) {
                        z3 = tryMapReg(result, this.mapper.oldToNew(reg2), category);
                    }
                    if (!z3 || !z4) {
                        int findNextUnreservedRopReg = findNextUnreservedRopReg(this.paramRangeEnd, category);
                        ArrayList<RegisterSpec> arrayList = new ArrayList<>(2);
                        arrayList.add(result);
                        arrayList.add(registerSpec);
                        while (!tryMapRegs(arrayList, findNextUnreservedRopReg, category, false)) {
                            findNextUnreservedRopReg = findNextUnreservedRopReg(findNextUnreservedRopReg + 1, category);
                        }
                    }
                    boolean z5 = ssaInsn.getOriginalRopInsn().getCatches().size() != 0;
                    int oldToNew = this.mapper.oldToNew(reg);
                    if (oldToNew != this.mapper.oldToNew(reg2) && !z5) {
                        ((NormalSsaInsn) ssaInsn).changeOneSource(0, insertMoveBefore(ssaInsn, registerSpec));
                        addMapping(ssaInsn.getSources().get(0), oldToNew);
                    }
                }
            }
        }
    }

    private void handleInvokeRangeInsns() {
        Iterator<NormalSsaInsn> it2 = this.invokeRangeInsns.iterator();
        while (it2.hasNext()) {
            adjustAndMapSourceRangeRange(it2.next());
        }
    }

    private void handleLocalAssociatedOther() {
        for (ArrayList<RegisterSpec> arrayList : this.localVariables.values()) {
            int i2 = this.paramRangeEnd;
            boolean z3 = false;
            do {
                int size = arrayList.size();
                int i4 = 1;
                for (int i5 = 0; i5 < size; i5++) {
                    RegisterSpec registerSpec = arrayList.get(i5);
                    int category = registerSpec.getCategory();
                    if (!this.ssaRegsMapped.get(registerSpec.getReg()) && category > i4) {
                        i4 = category;
                    }
                }
                int findRopRegForLocal = findRopRegForLocal(i2, i4);
                if (canMapRegs(arrayList, findRopRegForLocal)) {
                    z3 = tryMapRegs(arrayList, findRopRegForLocal, i4, true);
                }
                i2 = findRopRegForLocal + 1;
            } while (!z3);
        }
    }

    private void handleLocalAssociatedParams() {
        for (ArrayList<RegisterSpec> arrayList : this.localVariables.values()) {
            int size = arrayList.size();
            int i2 = -1;
            int i4 = 0;
            int i5 = 0;
            while (true) {
                if (i5 >= size) {
                    break;
                }
                RegisterSpec registerSpec = arrayList.get(i5);
                int parameterIndexForReg = getParameterIndexForReg(registerSpec.getReg());
                if (parameterIndexForReg >= 0) {
                    i4 = registerSpec.getCategory();
                    addMapping(registerSpec, parameterIndexForReg);
                    i2 = parameterIndexForReg;
                    break;
                }
                i5++;
                i2 = parameterIndexForReg;
            }
            if (i2 >= 0) {
                tryMapRegs(arrayList, i2, i4, true);
            }
        }
    }

    private void handleNormalUnassociated() {
        RegisterSpec definitionSpecForSsaReg;
        int regCount = this.ssaMeth.getRegCount();
        for (int i2 = 0; i2 < regCount; i2++) {
            if (!this.ssaRegsMapped.get(i2) && (definitionSpecForSsaReg = getDefinitionSpecForSsaReg(i2)) != null) {
                int category = definitionSpecForSsaReg.getCategory();
                int findNextUnreservedRopReg = findNextUnreservedRopReg(this.paramRangeEnd, category);
                while (!canMapReg(definitionSpecForSsaReg, findNextUnreservedRopReg)) {
                    findNextUnreservedRopReg = findNextUnreservedRopReg(findNextUnreservedRopReg + 1, category);
                }
                addMapping(definitionSpecForSsaReg, findNextUnreservedRopReg);
            }
        }
    }

    private void handlePhiInsns() {
        Iterator<PhiInsn> it2 = this.phiInsns.iterator();
        while (it2.hasNext()) {
            processPhiInsn(it2.next());
        }
    }

    private void handleUnassociatedParameters() {
        int regCount = this.ssaMeth.getRegCount();
        for (int i2 = 0; i2 < regCount; i2++) {
            if (!this.ssaRegsMapped.get(i2)) {
                int parameterIndexForReg = getParameterIndexForReg(i2);
                RegisterSpec definitionSpecForSsaReg = getDefinitionSpecForSsaReg(i2);
                if (parameterIndexForReg >= 0) {
                    addMapping(definitionSpecForSsaReg, parameterIndexForReg);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isEven(int i2) {
        return (i2 & 1) == 0;
    }

    private boolean isThisPointerReg(int i2) {
        return i2 == 0 && !this.ssaMeth.isStatic();
    }

    private void markReserved(int i2, int i4) {
        this.reservedRopRegs.set(i2, i4 + i2, true);
    }

    private void printLocalVars() {
        System.out.println("Printing local vars");
        for (Map.Entry<LocalItem, ArrayList<RegisterSpec>> entry : this.localVariables.entrySet()) {
            StringBuilder sb = new StringBuilder();
            sb.append('{');
            sb.append(' ');
            Iterator<RegisterSpec> it2 = entry.getValue().iterator();
            while (it2.hasNext()) {
                sb.append('v');
                sb.append(it2.next().getReg());
                sb.append(' ');
            }
            sb.append('}');
            System.out.printf("Local: %s Registers: %s\n", entry.getKey(), sb);
        }
    }

    private void processPhiInsn(PhiInsn phiInsn) {
        RegisterSpec result = phiInsn.getResult();
        int reg = result.getReg();
        int category = result.getCategory();
        RegisterSpecList sources = phiInsn.getSources();
        int size = sources.size();
        ArrayList<RegisterSpec> arrayList = new ArrayList<>();
        Multiset multiset = new Multiset(size + 1);
        if (this.ssaRegsMapped.get(reg)) {
            multiset.add(this.mapper.oldToNew(reg));
        } else {
            arrayList.add(result);
        }
        for (int i2 = 0; i2 < size; i2++) {
            RegisterSpec result2 = this.ssaMeth.getDefinitionForRegister(sources.get(i2).getReg()).getResult();
            int reg2 = result2.getReg();
            if (this.ssaRegsMapped.get(reg2)) {
                multiset.add(this.mapper.oldToNew(reg2));
            } else {
                arrayList.add(result2);
            }
        }
        for (int i4 = 0; i4 < multiset.getSize(); i4++) {
            tryMapRegs(arrayList, multiset.getAndRemoveHighestCount(), category, false);
        }
        int findNextUnreservedRopReg = findNextUnreservedRopReg(this.paramRangeEnd, category);
        while (!tryMapRegs(arrayList, findNextUnreservedRopReg, category, false)) {
            findNextUnreservedRopReg = findNextUnreservedRopReg(findNextUnreservedRopReg + 1, category);
        }
    }

    private boolean rangeContainsReserved(int i2, int i4) {
        for (int i5 = i2; i5 < i2 + i4; i5++) {
            if (this.reservedRopRegs.get(i5)) {
                return true;
            }
        }
        return false;
    }

    private boolean spansParamRange(int i2, int i4) {
        int i5 = this.paramRangeEnd;
        return i2 < i5 && i2 + i4 > i5;
    }

    private boolean tryMapReg(RegisterSpec registerSpec, int i2, int i4) {
        if (registerSpec.getCategory() > i4 || this.ssaRegsMapped.get(registerSpec.getReg()) || !canMapReg(registerSpec, i2)) {
            return false;
        }
        addMapping(registerSpec, i2);
        return true;
    }

    private boolean tryMapRegs(ArrayList<RegisterSpec> arrayList, int i2, int i4, boolean z3) {
        Iterator<RegisterSpec> it2 = arrayList.iterator();
        boolean z4 = false;
        while (it2.hasNext()) {
            RegisterSpec next = it2.next();
            if (!this.ssaRegsMapped.get(next.getReg())) {
                boolean tryMapReg = tryMapReg(next, i2, i4);
                z4 = !tryMapReg || z4;
                if (tryMapReg && z3) {
                    markReserved(i2, next.getCategory());
                }
            }
        }
        return !z4;
    }

    @Override // com.android.dx.ssa.back.RegisterAllocator
    public RegisterMapper allocateRegisters() {
        analyzeInstructions();
        handleLocalAssociatedParams();
        handleUnassociatedParameters();
        handleInvokeRangeInsns();
        handleLocalAssociatedOther();
        handleCheckCastResults();
        handlePhiInsns();
        handleNormalUnassociated();
        return this.mapper;
    }

    RegisterSpecList ssaSetToSpecs(IntSet intSet) {
        RegisterSpecList registerSpecList = new RegisterSpecList(intSet.elements());
        IntIterator it2 = intSet.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            registerSpecList.set(i2, getDefinitionSpecForSsaReg(it2.next()));
            i2++;
        }
        return registerSpecList;
    }

    @Override // com.android.dx.ssa.back.RegisterAllocator
    public boolean wantsParamsMovedHigh() {
        return true;
    }

    private int findNextUnreservedRopReg(int i2, int i4, Alignment alignment) {
        int nextClearBit = alignment.nextClearBit(this.reservedRopRegs, i2);
        while (true) {
            int i5 = 1;
            while (i5 < i4 && !this.reservedRopRegs.get(nextClearBit + i5)) {
                i5++;
            }
            if (i5 == i4) {
                return nextClearBit;
            }
            nextClearBit = alignment.nextClearBit(this.reservedRopRegs, nextClearBit + i5);
        }
    }
}
