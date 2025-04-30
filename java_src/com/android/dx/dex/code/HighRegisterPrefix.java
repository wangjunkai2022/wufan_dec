package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.util.AnnotatedOutput;
/* loaded from: classes2.dex */
public final class HighRegisterPrefix extends VariableSizeInsn {
    private SimpleInsn[] insns;

    public HighRegisterPrefix(SourcePosition sourcePosition, RegisterSpecList registerSpecList) {
        super(sourcePosition, registerSpecList);
        if (registerSpecList.size() != 0) {
            this.insns = null;
            return;
        }
        throw new IllegalArgumentException("registers.size() == 0");
    }

    private void calculateInsnsIfNecessary() {
        if (this.insns != null) {
            return;
        }
        RegisterSpecList registers = getRegisters();
        int size = registers.size();
        this.insns = new SimpleInsn[size];
        int i2 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RegisterSpec registerSpec = registers.get(i4);
            this.insns[i4] = moveInsnFor(registerSpec, i2);
            i2 += registerSpec.getCategory();
        }
    }

    private static SimpleInsn moveInsnFor(RegisterSpec registerSpec, int i2) {
        return DalvInsn.makeMove(SourcePosition.NO_INFO, RegisterSpec.make(i2, registerSpec.getType()), registerSpec);
    }

    @Override // com.android.dx.dex.code.DalvInsn
    protected String argString() {
        return null;
    }

    @Override // com.android.dx.dex.code.DalvInsn
    public int codeSize() {
        calculateInsnsIfNecessary();
        int i2 = 0;
        for (SimpleInsn simpleInsn : this.insns) {
            i2 += simpleInsn.codeSize();
        }
        return i2;
    }

    @Override // com.android.dx.dex.code.DalvInsn
    protected String listingString0(boolean z3) {
        RegisterSpecList registers = getRegisters();
        int size = registers.size();
        StringBuilder sb = new StringBuilder(100);
        int i2 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RegisterSpec registerSpec = registers.get(i4);
            SimpleInsn moveInsnFor = moveInsnFor(registerSpec, i2);
            if (i4 != 0) {
                sb.append('\n');
            }
            sb.append(moveInsnFor.listingString0(z3));
            i2 += registerSpec.getCategory();
        }
        return sb.toString();
    }

    @Override // com.android.dx.dex.code.DalvInsn
    public DalvInsn withRegisters(RegisterSpecList registerSpecList) {
        return new HighRegisterPrefix(getPosition(), registerSpecList);
    }

    @Override // com.android.dx.dex.code.DalvInsn
    public void writeTo(AnnotatedOutput annotatedOutput) {
        calculateInsnsIfNecessary();
        for (SimpleInsn simpleInsn : this.insns) {
            simpleInsn.writeTo(annotatedOutput);
        }
    }
}
