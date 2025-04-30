package com.android.dx.rop.cst;

import com.android.dx.rop.type.Type;
import com.android.dx.util.Hex;
import com.swift.sandhook.annotation.MethodReflectParams;
/* loaded from: classes2.dex */
public final class CstChar extends CstLiteral32 {
    public static final CstChar VALUE_0 = make((char) 0);

    private CstChar(char c4) {
        super(c4);
    }

    public static CstChar make(char c4) {
        return new CstChar(c4);
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public Type getType() {
        return Type.CHAR;
    }

    public char getValue() {
        return (char) getIntBits();
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        return Integer.toString(getIntBits());
    }

    public String toString() {
        int intBits = getIntBits();
        return "char{0x" + Hex.u2(intBits) + " / " + intBits + '}';
    }

    @Override // com.android.dx.rop.cst.Constant
    public String typeName() {
        return MethodReflectParams.CHAR;
    }

    public static CstChar make(int i2) {
        char c4 = (char) i2;
        if (c4 == i2) {
            return make(c4);
        }
        throw new IllegalArgumentException("bogus char value: " + i2);
    }
}
