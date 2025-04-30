package com.android.dx.rop.code;

import com.android.dx.util.MutabilityControl;
import java.util.HashMap;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class LocalVariableInfo extends MutabilityControl {
    private final RegisterSpecSet[] blockStarts;
    private final RegisterSpecSet emptySet;
    private final HashMap<Insn, RegisterSpec> insnAssignments;
    private final int regCount;

    public LocalVariableInfo(RopMethod ropMethod) {
        Objects.requireNonNull(ropMethod, "method == null");
        BasicBlockList blocks = ropMethod.getBlocks();
        int maxLabel = blocks.getMaxLabel();
        int regCount = blocks.getRegCount();
        this.regCount = regCount;
        RegisterSpecSet registerSpecSet = new RegisterSpecSet(regCount);
        this.emptySet = registerSpecSet;
        this.blockStarts = new RegisterSpecSet[maxLabel];
        this.insnAssignments = new HashMap<>(blocks.getInstructionCount());
        registerSpecSet.setImmutable();
    }

    private RegisterSpecSet getStarts0(int i2) {
        try {
            return this.blockStarts[i2];
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("bogus label");
        }
    }

    public void addAssignment(Insn insn, RegisterSpec registerSpec) {
        throwIfImmutable();
        Objects.requireNonNull(insn, "insn == null");
        Objects.requireNonNull(registerSpec, "spec == null");
        this.insnAssignments.put(insn, registerSpec);
    }

    public void debugDump() {
        int i2 = 0;
        while (true) {
            RegisterSpecSet[] registerSpecSetArr = this.blockStarts;
            if (i2 >= registerSpecSetArr.length) {
                return;
            }
            if (registerSpecSetArr[i2] != null) {
                if (registerSpecSetArr[i2] == this.emptySet) {
                    System.out.printf("%04x: empty set\n", Integer.valueOf(i2));
                } else {
                    System.out.printf("%04x: %s\n", Integer.valueOf(i2), this.blockStarts[i2]);
                }
            }
            i2++;
        }
    }

    public RegisterSpec getAssignment(Insn insn) {
        return this.insnAssignments.get(insn);
    }

    public int getAssignmentCount() {
        return this.insnAssignments.size();
    }

    public RegisterSpecSet getStarts(int i2) {
        RegisterSpecSet starts0 = getStarts0(i2);
        return starts0 != null ? starts0 : this.emptySet;
    }

    public boolean mergeStarts(int i2, RegisterSpecSet registerSpecSet) {
        RegisterSpecSet starts0 = getStarts0(i2);
        if (starts0 == null) {
            setStarts(i2, registerSpecSet);
            return true;
        }
        RegisterSpecSet mutableCopy = starts0.mutableCopy();
        if (starts0.size() != 0) {
            mutableCopy.intersect(registerSpecSet, true);
        } else {
            mutableCopy = registerSpecSet.mutableCopy();
        }
        if (starts0.equals(mutableCopy)) {
            return false;
        }
        mutableCopy.setImmutable();
        setStarts(i2, mutableCopy);
        return true;
    }

    public RegisterSpecSet mutableCopyOfStarts(int i2) {
        RegisterSpecSet starts0 = getStarts0(i2);
        return starts0 != null ? starts0.mutableCopy() : new RegisterSpecSet(this.regCount);
    }

    public void setStarts(int i2, RegisterSpecSet registerSpecSet) {
        throwIfImmutable();
        Objects.requireNonNull(registerSpecSet, "specs == null");
        try {
            this.blockStarts[i2] = registerSpecSet;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("bogus label");
        }
    }

    public RegisterSpecSet getStarts(BasicBlock basicBlock) {
        return getStarts(basicBlock.getLabel());
    }
}
