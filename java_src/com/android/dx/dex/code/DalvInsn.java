package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.ssa.RegisterMapper;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import com.android.dx.util.TwoColumnOutput;
import io.netty.util.internal.StringUtil;
import java.util.BitSet;
import java.util.Objects;
/* loaded from: classes2.dex */
public abstract class DalvInsn {
    private int address;
    private final Dop opcode;
    private final SourcePosition position;
    private final RegisterSpecList registers;

    public DalvInsn(Dop dop, SourcePosition sourcePosition, RegisterSpecList registerSpecList) {
        Objects.requireNonNull(dop, "opcode == null");
        Objects.requireNonNull(sourcePosition, "position == null");
        Objects.requireNonNull(registerSpecList, "registers == null");
        this.address = -1;
        this.opcode = dop;
        this.position = sourcePosition;
        this.registers = registerSpecList;
    }

    public static SimpleInsn makeMove(SourcePosition sourcePosition, RegisterSpec registerSpec, RegisterSpec registerSpec2) {
        Dop dop;
        boolean z3 = registerSpec.getCategory() == 1;
        boolean isReference = registerSpec.getType().isReference();
        int reg = registerSpec.getReg();
        if ((registerSpec2.getReg() | reg) < 16) {
            if (isReference) {
                dop = Dops.MOVE_OBJECT;
            } else {
                dop = z3 ? Dops.MOVE : Dops.MOVE_WIDE;
            }
        } else if (reg < 256) {
            if (isReference) {
                dop = Dops.MOVE_OBJECT_FROM16;
            } else {
                dop = z3 ? Dops.MOVE_FROM16 : Dops.MOVE_WIDE_FROM16;
            }
        } else if (isReference) {
            dop = Dops.MOVE_OBJECT_16;
        } else {
            dop = z3 ? Dops.MOVE_16 : Dops.MOVE_WIDE_16;
        }
        return new SimpleInsn(dop, sourcePosition, RegisterSpecList.make(registerSpec, registerSpec2));
    }

    protected abstract String argString();

    public abstract int codeSize();

    public String cstComment() {
        throw new UnsupportedOperationException("Not supported.");
    }

    public String cstString() {
        throw new UnsupportedOperationException("Not supported.");
    }

    public DalvInsn expandedPrefix(BitSet bitSet) {
        RegisterSpecList registerSpecList = this.registers;
        boolean z3 = bitSet.get(0);
        if (hasResult()) {
            bitSet.set(0);
        }
        RegisterSpecList subset = registerSpecList.subset(bitSet);
        if (hasResult()) {
            bitSet.set(0, z3);
        }
        if (subset.size() == 0) {
            return null;
        }
        return new HighRegisterPrefix(this.position, subset);
    }

    public DalvInsn expandedSuffix(BitSet bitSet) {
        if (!hasResult() || bitSet.get(0)) {
            return null;
        }
        RegisterSpec registerSpec = this.registers.get(0);
        return makeMove(this.position, registerSpec, registerSpec.withReg(0));
    }

    public DalvInsn expandedVersion(BitSet bitSet) {
        return withRegisters(this.registers.withExpandedRegisters(0, hasResult(), bitSet));
    }

    public final int getAddress() {
        int i2 = this.address;
        if (i2 >= 0) {
            return i2;
        }
        throw new RuntimeException("address not yet known");
    }

    public DalvInsn getLowRegVersion() {
        return withRegisters(this.registers.withExpandedRegisters(0, hasResult(), null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.android.dx.rop.code.RegisterSpecList] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.util.BitSet] */
    public final int getMinimumRegisterRequirement(BitSet bitSet) {
        ?? hasResult = hasResult();
        int size = this.registers.size();
        int i2 = 0;
        int category = (hasResult == 0 || bitSet.get(0)) ? 0 : this.registers.get(0).getCategory();
        while (hasResult < size) {
            if (!bitSet.get(hasResult)) {
                i2 += this.registers.get(hasResult).getCategory();
            }
            hasResult++;
        }
        return Math.max(i2, category);
    }

    public final int getNextAddress() {
        return getAddress() + codeSize();
    }

    public final Dop getOpcode() {
        return this.opcode;
    }

    public final SourcePosition getPosition() {
        return this.position;
    }

    public final RegisterSpecList getRegisters() {
        return this.registers;
    }

    public final boolean hasAddress() {
        return this.address >= 0;
    }

    public final boolean hasResult() {
        return this.opcode.hasResult();
    }

    public final String identifierString() {
        int i2 = this.address;
        return i2 != -1 ? String.format("%04x", Integer.valueOf(i2)) : Hex.u4(System.identityHashCode(this));
    }

    public final String listingString(String str, int i2, boolean z3) {
        String listingString0 = listingString0(z3);
        if (listingString0 == null) {
            return null;
        }
        String str2 = str + identifierString() + ": ";
        int length = str2.length();
        return TwoColumnOutput.toString(str2, length, "", listingString0, i2 == 0 ? listingString0.length() : i2 - length);
    }

    protected abstract String listingString0(boolean z3);

    public final void setAddress(int i2) {
        if (i2 >= 0) {
            this.address = i2;
            return;
        }
        throw new IllegalArgumentException("address < 0");
    }

    public final String toString() {
        boolean z3;
        StringBuilder sb = new StringBuilder(100);
        sb.append(identifierString());
        sb.append(' ');
        sb.append(this.position);
        sb.append(": ");
        sb.append(this.opcode.getName());
        if (this.registers.size() != 0) {
            sb.append(this.registers.toHuman(" ", ", ", null));
            z3 = true;
        } else {
            z3 = false;
        }
        String argString = argString();
        if (argString != null) {
            if (z3) {
                sb.append(StringUtil.COMMA);
            }
            sb.append(' ');
            sb.append(argString);
        }
        return sb.toString();
    }

    public DalvInsn withMapper(RegisterMapper registerMapper) {
        return withRegisters(registerMapper.map(getRegisters()));
    }

    public abstract DalvInsn withOpcode(Dop dop);

    public abstract DalvInsn withRegisterOffset(int i2);

    public abstract DalvInsn withRegisters(RegisterSpecList registerSpecList);

    public abstract void writeTo(AnnotatedOutput annotatedOutput);
}
