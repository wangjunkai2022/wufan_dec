package com.android.dx.cf.code;

import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeBearer;
import com.android.dx.util.Hex;
import com.j256.ormlite.stmt.query.SimpleComparison;
/* loaded from: classes2.dex */
public final class ReturnAddress implements TypeBearer {
    private final int subroutineAddress;

    public ReturnAddress(int i2) {
        if (i2 >= 0) {
            this.subroutineAddress = i2;
            return;
        }
        throw new IllegalArgumentException("subroutineAddress < 0");
    }

    public boolean equals(Object obj) {
        return (obj instanceof ReturnAddress) && this.subroutineAddress == ((ReturnAddress) obj).subroutineAddress;
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public int getBasicFrameType() {
        return Type.RETURN_ADDRESS.getBasicFrameType();
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public int getBasicType() {
        return Type.RETURN_ADDRESS.getBasicType();
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public TypeBearer getFrameType() {
        return this;
    }

    public int getSubroutineAddress() {
        return this.subroutineAddress;
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public Type getType() {
        return Type.RETURN_ADDRESS;
    }

    public int hashCode() {
        return this.subroutineAddress;
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public boolean isConstant() {
        return false;
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        return toString();
    }

    public String toString() {
        return "<addr:" + Hex.u2(this.subroutineAddress) + SimpleComparison.GREATER_THAN_OPERATION;
    }
}
