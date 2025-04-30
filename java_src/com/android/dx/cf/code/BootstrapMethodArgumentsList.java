package com.android.dx.cf.code;

import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstDouble;
import com.android.dx.rop.cst.CstFloat;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.CstLong;
import com.android.dx.rop.cst.CstMethodHandle;
import com.android.dx.rop.cst.CstProtoRef;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.util.FixedSizeList;
/* loaded from: classes2.dex */
public class BootstrapMethodArgumentsList extends FixedSizeList {
    public BootstrapMethodArgumentsList(int i2) {
        super(i2);
    }

    public Constant get(int i2) {
        return (Constant) get0(i2);
    }

    public void set(int i2, Constant constant) {
        if (!(constant instanceof CstString) && !(constant instanceof CstType) && !(constant instanceof CstInteger) && !(constant instanceof CstLong) && !(constant instanceof CstFloat) && !(constant instanceof CstDouble) && !(constant instanceof CstMethodHandle) && !(constant instanceof CstProtoRef)) {
            Class<?> cls = constant.getClass();
            throw new IllegalArgumentException("bad type for bootstrap argument: " + cls);
        }
        set0(i2, constant);
    }
}
