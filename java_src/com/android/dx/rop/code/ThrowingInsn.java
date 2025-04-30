package com.android.dx.rop.code;

import com.android.dx.rop.code.Insn;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeList;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ThrowingInsn extends Insn {
    private final TypeList catches;

    public ThrowingInsn(Rop rop, SourcePosition sourcePosition, RegisterSpecList registerSpecList, TypeList typeList) {
        super(rop, sourcePosition, null, registerSpecList);
        if (rop.getBranchingness() == 6) {
            Objects.requireNonNull(typeList, "catches == null");
            this.catches = typeList;
            return;
        }
        throw new IllegalArgumentException("opcode with invalid branchingness: " + rop.getBranchingness());
    }

    public static String toCatchString(TypeList typeList) {
        StringBuilder sb = new StringBuilder(100);
        sb.append("catch");
        int size = typeList.size();
        for (int i2 = 0; i2 < size; i2++) {
            sb.append(" ");
            sb.append(typeList.getType(i2).toHuman());
        }
        return sb.toString();
    }

    @Override // com.android.dx.rop.code.Insn
    public void accept(Insn.Visitor visitor) {
        visitor.visitThrowingInsn(this);
    }

    @Override // com.android.dx.rop.code.Insn
    public TypeList getCatches() {
        return this.catches;
    }

    @Override // com.android.dx.rop.code.Insn
    public String getInlineString() {
        return toCatchString(this.catches);
    }

    @Override // com.android.dx.rop.code.Insn
    public Insn withAddedCatch(Type type) {
        return new ThrowingInsn(getOpcode(), getPosition(), getSources(), this.catches.withAddedType(type));
    }

    @Override // com.android.dx.rop.code.Insn
    public Insn withNewRegisters(RegisterSpec registerSpec, RegisterSpecList registerSpecList) {
        return new ThrowingInsn(getOpcode(), getPosition(), registerSpecList, this.catches);
    }

    @Override // com.android.dx.rop.code.Insn
    public Insn withRegisterOffset(int i2) {
        return new ThrowingInsn(getOpcode(), getPosition(), getSources().withOffset(i2), this.catches);
    }
}
