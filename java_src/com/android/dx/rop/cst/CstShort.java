package com.android.dx.rop.cst;

import com.android.dx.rop.type.Type;
import com.android.dx.util.Hex;
import com.swift.sandhook.annotation.MethodReflectParams;
/* loaded from: classes2.dex */
public final class CstShort extends CstLiteral32 {
    public static final CstShort VALUE_0 = make((short) 0);

    private CstShort(short s3) {
        super(s3);
    }

    public static CstShort make(short s3) {
        return new CstShort(s3);
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public Type getType() {
        return Type.SHORT;
    }

    public short getValue() {
        return (short) getIntBits();
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        return Integer.toString(getIntBits());
    }

    public String toString() {
        int intBits = getIntBits();
        return "short{0x" + Hex.u2(intBits) + " / " + intBits + '}';
    }

    @Override // com.android.dx.rop.cst.Constant
    public String typeName() {
        return MethodReflectParams.SHORT;
    }

    public static CstShort make(int i2) {
        short s3 = (short) i2;
        if (s3 == i2) {
            return make(s3);
        }
        throw new IllegalArgumentException("bogus short value: " + i2);
    }
}
