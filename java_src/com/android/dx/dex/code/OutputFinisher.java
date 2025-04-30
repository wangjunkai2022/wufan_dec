package com.android.dx.dex.code;

import com.android.dex.DexException;
import com.android.dx.dex.DexOptions;
import com.android.dx.dex.code.DalvCode;
import com.android.dx.rop.code.LocalItem;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.RegisterSpecSet;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstMemberRef;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Type;
import com.android.dx.ssa.BasicRegisterMapper;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes2.dex */
public final class OutputFinisher {
    private final DexOptions dexOptions;
    private ArrayList<DalvInsn> insns;
    private final int paramSize;
    private int reservedParameterCount;
    private final int unreservedRegCount;
    private int reservedCount = -1;
    private boolean hasAnyPositionInfo = false;
    private boolean hasAnyLocalInfo = false;

    public OutputFinisher(DexOptions dexOptions, int i2, int i4, int i5) {
        this.dexOptions = dexOptions;
        this.unreservedRegCount = i4;
        this.insns = new ArrayList<>(i2);
        this.paramSize = i5;
    }

    private static void addConstants(HashSet<Constant> hashSet, DalvInsn dalvInsn) {
        if (dalvInsn instanceof CstInsn) {
            hashSet.add(((CstInsn) dalvInsn).getConstant());
            return;
        }
        int i2 = 0;
        if (dalvInsn instanceof MultiCstInsn) {
            MultiCstInsn multiCstInsn = (MultiCstInsn) dalvInsn;
            while (i2 < multiCstInsn.getNumberOfConstants()) {
                hashSet.add(multiCstInsn.getConstant(i2));
                i2++;
            }
        } else if (dalvInsn instanceof LocalSnapshot) {
            RegisterSpecSet locals = ((LocalSnapshot) dalvInsn).getLocals();
            int size = locals.size();
            while (i2 < size) {
                addConstants(hashSet, locals.get(i2));
                i2++;
            }
        } else if (dalvInsn instanceof LocalStart) {
            addConstants(hashSet, ((LocalStart) dalvInsn).getLocal());
        }
    }

    private void addReservedParameters(int i2) {
        shiftParameters(i2);
        this.reservedParameterCount += i2;
    }

    private void addReservedRegisters(int i2) {
        shiftAllRegisters(i2);
        this.reservedCount += i2;
    }

    private void align64bits(Dop[] dopArr) {
        do {
            int i2 = ((this.unreservedRegCount + this.reservedCount) + this.reservedParameterCount) - this.paramSize;
            Iterator<DalvInsn> it2 = this.insns.iterator();
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            while (it2.hasNext()) {
                RegisterSpecList registers = it2.next().getRegisters();
                for (int i8 = 0; i8 < registers.size(); i8++) {
                    RegisterSpec registerSpec = registers.get(i8);
                    if (registerSpec.isCategory2()) {
                        boolean z3 = registerSpec.getReg() >= i2;
                        if (registerSpec.isEvenRegister()) {
                            if (z3) {
                                i5++;
                            } else {
                                i7++;
                            }
                        } else if (z3) {
                            i4++;
                        } else {
                            i6++;
                        }
                    }
                }
            }
            if (i4 > i5 && i6 > i7) {
                addReservedRegisters(1);
            } else if (i4 > i5) {
                addReservedParameters(1);
            } else if (i6 <= i7) {
                return;
            } else {
                addReservedRegisters(1);
                if (this.paramSize != 0 && i5 > i4) {
                    addReservedParameters(1);
                }
            }
        } while (reserveRegisters(dopArr));
    }

    private void assignAddresses() {
        int size = this.insns.size();
        int i2 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            DalvInsn dalvInsn = this.insns.get(i4);
            dalvInsn.setAddress(i2);
            i2 += dalvInsn.codeSize();
        }
    }

    private void assignAddressesAndFixBranches() {
        do {
            assignAddresses();
        } while (fixBranches());
    }

    private int calculateReservedCount(Dop[] dopArr) {
        int i2;
        int size = this.insns.size();
        int i4 = this.reservedCount;
        while (i2 < size) {
            DalvInsn dalvInsn = this.insns.get(i2);
            Dop dop = dopArr[i2];
            Dop findOpcodeForInsn = findOpcodeForInsn(dalvInsn, dop);
            if (findOpcodeForInsn == null) {
                int minimumRegisterRequirement = dalvInsn.getMinimumRegisterRequirement(findExpandedOpcodeForInsn(dalvInsn).getFormat().compatibleRegs(dalvInsn));
                if (minimumRegisterRequirement > i4) {
                    i4 = minimumRegisterRequirement;
                }
            } else {
                i2 = dop == findOpcodeForInsn ? i2 + 1 : 0;
            }
            dopArr[i2] = findOpcodeForInsn;
        }
        return i4;
    }

    private Dop findExpandedOpcodeForInsn(DalvInsn dalvInsn) {
        Dop findOpcodeForInsn = findOpcodeForInsn(dalvInsn.getLowRegVersion(), dalvInsn.getOpcode());
        if (findOpcodeForInsn != null) {
            return findOpcodeForInsn;
        }
        throw new DexException("No expanded opcode for " + dalvInsn);
    }

    private Dop findOpcodeForInsn(DalvInsn dalvInsn, Dop dop) {
        while (dop != null && (!dop.getFormat().isCompatible(dalvInsn) || (this.dexOptions.forceJumbo && dop.getOpcode() == 26))) {
            dop = Dops.getNextOrNull(dop, this.dexOptions);
        }
        return dop;
    }

    private boolean fixBranches() {
        int size = this.insns.size();
        int i2 = 0;
        boolean z3 = false;
        while (i2 < size) {
            DalvInsn dalvInsn = this.insns.get(i2);
            if (dalvInsn instanceof TargetInsn) {
                Dop opcode = dalvInsn.getOpcode();
                TargetInsn targetInsn = (TargetInsn) dalvInsn;
                if (opcode.getFormat().branchFits(targetInsn)) {
                    continue;
                } else {
                    if (opcode.getFamily() == 40) {
                        Dop findOpcodeForInsn = findOpcodeForInsn(dalvInsn, opcode);
                        if (findOpcodeForInsn != null) {
                            this.insns.set(i2, dalvInsn.withOpcode(findOpcodeForInsn));
                        } else {
                            throw new UnsupportedOperationException("method too long");
                        }
                    } else {
                        try {
                            int i4 = i2 + 1;
                            CodeAddress codeAddress = (CodeAddress) this.insns.get(i4);
                            this.insns.set(i2, new TargetInsn(Dops.GOTO, targetInsn.getPosition(), RegisterSpecList.EMPTY, targetInsn.getTarget()));
                            this.insns.add(i2, targetInsn.withNewTargetAndReversed(codeAddress));
                            size++;
                            i2 = i4;
                        } catch (ClassCastException unused) {
                            throw new IllegalStateException("unpaired TargetInsn");
                        } catch (IndexOutOfBoundsException unused2) {
                            throw new IllegalStateException("unpaired TargetInsn (dangling)");
                        }
                    }
                    z3 = true;
                }
            }
            i2++;
        }
        return z3;
    }

    private static boolean hasLocalInfo(DalvInsn dalvInsn) {
        if (dalvInsn instanceof LocalSnapshot) {
            RegisterSpecSet locals = ((LocalSnapshot) dalvInsn).getLocals();
            int size = locals.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (hasLocalInfo(locals.get(i2))) {
                    return true;
                }
            }
        } else if ((dalvInsn instanceof LocalStart) && hasLocalInfo(((LocalStart) dalvInsn).getLocal())) {
            return true;
        }
        return false;
    }

    private Dop[] makeOpcodesArray() {
        int size = this.insns.size();
        Dop[] dopArr = new Dop[size];
        for (int i2 = 0; i2 < size; i2++) {
            dopArr[i2] = this.insns.get(i2).getOpcode();
        }
        return dopArr;
    }

    private void massageInstructions(Dop[] dopArr) {
        if (this.reservedCount == 0) {
            int size = this.insns.size();
            for (int i2 = 0; i2 < size; i2++) {
                DalvInsn dalvInsn = this.insns.get(i2);
                Dop opcode = dalvInsn.getOpcode();
                Dop dop = dopArr[i2];
                if (opcode != dop) {
                    this.insns.set(i2, dalvInsn.withOpcode(dop));
                }
            }
            return;
        }
        this.insns = performExpansion(dopArr);
    }

    private ArrayList<DalvInsn> performExpansion(Dop[] dopArr) {
        DalvInsn expandedSuffix;
        int size = this.insns.size();
        ArrayList<DalvInsn> arrayList = new ArrayList<>(size * 2);
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < size; i2++) {
            DalvInsn dalvInsn = this.insns.get(i2);
            Dop opcode = dalvInsn.getOpcode();
            Dop dop = dopArr[i2];
            DalvInsn dalvInsn2 = null;
            if (dop != null) {
                expandedSuffix = null;
            } else {
                dop = findExpandedOpcodeForInsn(dalvInsn);
                BitSet compatibleRegs = dop.getFormat().compatibleRegs(dalvInsn);
                DalvInsn expandedPrefix = dalvInsn.expandedPrefix(compatibleRegs);
                expandedSuffix = dalvInsn.expandedSuffix(compatibleRegs);
                dalvInsn = dalvInsn.expandedVersion(compatibleRegs);
                dalvInsn2 = expandedPrefix;
            }
            if (dalvInsn instanceof CodeAddress) {
                CodeAddress codeAddress = (CodeAddress) dalvInsn;
                if (codeAddress.getBindsClosely()) {
                    arrayList2.add(codeAddress);
                }
            }
            if (dalvInsn2 != null) {
                arrayList.add(dalvInsn2);
            }
            if (!(dalvInsn instanceof ZeroSizeInsn) && arrayList2.size() > 0) {
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    arrayList.add((CodeAddress) it2.next());
                }
                arrayList2.clear();
            }
            if (dop != opcode) {
                dalvInsn = dalvInsn.withOpcode(dop);
            }
            arrayList.add(dalvInsn);
            if (expandedSuffix != null) {
                arrayList.add(expandedSuffix);
            }
        }
        return arrayList;
    }

    private boolean reserveRegisters(Dop[] dopArr) {
        int i2 = this.reservedCount;
        if (i2 < 0) {
            i2 = 0;
        }
        boolean z3 = false;
        while (true) {
            int calculateReservedCount = calculateReservedCount(dopArr);
            if (i2 >= calculateReservedCount) {
                this.reservedCount = i2;
                return z3;
            }
            int i4 = calculateReservedCount - i2;
            int size = this.insns.size();
            for (int i5 = 0; i5 < size; i5++) {
                DalvInsn dalvInsn = this.insns.get(i5);
                if (!(dalvInsn instanceof CodeAddress)) {
                    this.insns.set(i5, dalvInsn.withRegisterOffset(i4));
                }
            }
            z3 = true;
            i2 = calculateReservedCount;
        }
    }

    private void shiftAllRegisters(int i2) {
        int size = this.insns.size();
        for (int i4 = 0; i4 < size; i4++) {
            DalvInsn dalvInsn = this.insns.get(i4);
            if (!(dalvInsn instanceof CodeAddress)) {
                this.insns.set(i4, dalvInsn.withRegisterOffset(i2));
            }
        }
    }

    private void shiftParameters(int i2) {
        int size = this.insns.size();
        int i4 = this.unreservedRegCount + this.reservedCount + this.reservedParameterCount;
        int i5 = i4 - this.paramSize;
        BasicRegisterMapper basicRegisterMapper = new BasicRegisterMapper(i4);
        for (int i6 = 0; i6 < i4; i6++) {
            if (i6 >= i5) {
                basicRegisterMapper.addMapping(i6, i6 + i2, 1);
            } else {
                basicRegisterMapper.addMapping(i6, i6, 1);
            }
        }
        for (int i7 = 0; i7 < size; i7++) {
            DalvInsn dalvInsn = this.insns.get(i7);
            if (!(dalvInsn instanceof CodeAddress)) {
                this.insns.set(i7, dalvInsn.withMapper(basicRegisterMapper));
            }
        }
    }

    private void updateInfo(DalvInsn dalvInsn) {
        if (!this.hasAnyPositionInfo && dalvInsn.getPosition().getLine() >= 0) {
            this.hasAnyPositionInfo = true;
        }
        if (this.hasAnyLocalInfo || !hasLocalInfo(dalvInsn)) {
            return;
        }
        this.hasAnyLocalInfo = true;
    }

    public void add(DalvInsn dalvInsn) {
        this.insns.add(dalvInsn);
        updateInfo(dalvInsn);
    }

    public void assignIndices(DalvCode.AssignIndicesCallback assignIndicesCallback) {
        Iterator<DalvInsn> it2 = this.insns.iterator();
        while (it2.hasNext()) {
            DalvInsn next = it2.next();
            if (next instanceof CstInsn) {
                assignIndices((CstInsn) next, assignIndicesCallback);
            } else if (next instanceof MultiCstInsn) {
                assignIndices((MultiCstInsn) next, assignIndicesCallback);
            }
        }
    }

    public DalvInsnList finishProcessingAndGetList() {
        if (this.reservedCount < 0) {
            Dop[] makeOpcodesArray = makeOpcodesArray();
            reserveRegisters(makeOpcodesArray);
            if (this.dexOptions.ALIGN_64BIT_REGS_IN_OUTPUT_FINISHER) {
                align64bits(makeOpcodesArray);
            }
            massageInstructions(makeOpcodesArray);
            assignAddressesAndFixBranches();
            return DalvInsnList.makeImmutable(this.insns, this.reservedCount + this.unreservedRegCount + this.reservedParameterCount);
        }
        throw new UnsupportedOperationException("already processed");
    }

    public HashSet<Constant> getAllConstants() {
        HashSet<Constant> hashSet = new HashSet<>(20);
        Iterator<DalvInsn> it2 = this.insns.iterator();
        while (it2.hasNext()) {
            addConstants(hashSet, it2.next());
        }
        return hashSet;
    }

    public boolean hasAnyLocalInfo() {
        return this.hasAnyLocalInfo;
    }

    public boolean hasAnyPositionInfo() {
        return this.hasAnyPositionInfo;
    }

    public void insert(int i2, DalvInsn dalvInsn) {
        this.insns.add(i2, dalvInsn);
        updateInfo(dalvInsn);
    }

    public void reverseBranch(int i2, CodeAddress codeAddress) {
        int size = (this.insns.size() - i2) - 1;
        try {
            this.insns.set(size, ((TargetInsn) this.insns.get(size)).withNewTargetAndReversed(codeAddress));
        } catch (ClassCastException unused) {
            throw new IllegalArgumentException("non-reversible instruction");
        } catch (IndexOutOfBoundsException unused2) {
            throw new IllegalArgumentException("too few instructions");
        }
    }

    private static void assignIndices(CstInsn cstInsn, DalvCode.AssignIndicesCallback assignIndicesCallback) {
        int index;
        Constant constant = cstInsn.getConstant();
        int index2 = assignIndicesCallback.getIndex(constant);
        if (index2 >= 0) {
            cstInsn.setIndex(index2);
        }
        if (!(constant instanceof CstMemberRef) || (index = assignIndicesCallback.getIndex(((CstMemberRef) constant).getDefiningClass())) < 0) {
            return;
        }
        cstInsn.setClassIndex(index);
    }

    private static boolean hasLocalInfo(RegisterSpec registerSpec) {
        return (registerSpec == null || registerSpec.getLocalItem().getName() == null) ? false : true;
    }

    private static void assignIndices(MultiCstInsn multiCstInsn, DalvCode.AssignIndicesCallback assignIndicesCallback) {
        for (int i2 = 0; i2 < multiCstInsn.getNumberOfConstants(); i2++) {
            Constant constant = multiCstInsn.getConstant(i2);
            multiCstInsn.setIndex(i2, assignIndicesCallback.getIndex(constant));
            if (constant instanceof CstMemberRef) {
                multiCstInsn.setClassIndex(assignIndicesCallback.getIndex(((CstMemberRef) constant).getDefiningClass()));
            }
        }
    }

    private static void addConstants(HashSet<Constant> hashSet, RegisterSpec registerSpec) {
        if (registerSpec == null) {
            return;
        }
        LocalItem localItem = registerSpec.getLocalItem();
        CstString name = localItem.getName();
        CstString signature = localItem.getSignature();
        Type type = registerSpec.getType();
        if (type != Type.KNOWN_NULL) {
            hashSet.add(CstType.intern(type));
        } else {
            hashSet.add(CstType.intern(Type.OBJECT));
        }
        if (name != null) {
            hashSet.add(name);
        }
        if (signature != null) {
            hashSet.add(signature);
        }
    }
}
