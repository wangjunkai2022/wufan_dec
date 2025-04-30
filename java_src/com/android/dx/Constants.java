package com.android.dx;

import com.android.dx.rop.cst.CstBoolean;
import com.android.dx.rop.cst.CstByte;
import com.android.dx.rop.cst.CstChar;
import com.android.dx.rop.cst.CstDouble;
import com.android.dx.rop.cst.CstFloat;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.CstKnownNull;
import com.android.dx.rop.cst.CstLong;
import com.android.dx.rop.cst.CstShort;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.cst.TypedConstant;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class Constants {
    private Constants() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static TypedConstant getConstant(Object value) {
        if (value == null) {
            return CstKnownNull.THE_ONE;
        }
        if (value instanceof Boolean) {
            return CstBoolean.make(((Boolean) value).booleanValue());
        }
        if (value instanceof Byte) {
            return CstByte.make(((Byte) value).byteValue());
        }
        if (value instanceof Character) {
            return CstChar.make(((Character) value).charValue());
        }
        if (value instanceof Double) {
            return CstDouble.make(Double.doubleToLongBits(((Double) value).doubleValue()));
        }
        if (value instanceof Float) {
            return CstFloat.make(Float.floatToIntBits(((Float) value).floatValue()));
        }
        if (value instanceof Integer) {
            return CstInteger.make(((Integer) value).intValue());
        }
        if (value instanceof Long) {
            return CstLong.make(((Long) value).longValue());
        }
        if (value instanceof Short) {
            return CstShort.make(((Short) value).shortValue());
        }
        if (value instanceof String) {
            return new CstString((String) value);
        }
        if (value instanceof Class) {
            return new CstType(TypeId.get((Class) value).ropType);
        }
        if (value instanceof TypeId) {
            return new CstType(((TypeId) value).ropType);
        }
        throw new UnsupportedOperationException("Not a constant: " + value);
    }
}
