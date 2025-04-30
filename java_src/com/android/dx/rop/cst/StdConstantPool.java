package com.android.dx.rop.cst;

import com.android.dex.util.ExceptionWithContext;
import com.android.dx.util.Hex;
import com.android.dx.util.MutabilityControl;
/* loaded from: classes2.dex */
public final class StdConstantPool extends MutabilityControl implements ConstantPool {
    private final Constant[] entries;

    public StdConstantPool(int i2) {
        super(i2 > 1);
        if (i2 >= 1) {
            this.entries = new Constant[i2];
            return;
        }
        throw new IllegalArgumentException("size < 1");
    }

    private static Constant throwInvalid(int i2) {
        throw new ExceptionWithContext("invalid constant pool index " + Hex.u2(i2));
    }

    @Override // com.android.dx.rop.cst.ConstantPool
    public Constant get(int i2) {
        try {
            Constant constant = this.entries[i2];
            if (constant == null) {
                throwInvalid(i2);
            }
            return constant;
        } catch (IndexOutOfBoundsException unused) {
            return throwInvalid(i2);
        }
    }

    @Override // com.android.dx.rop.cst.ConstantPool
    public Constant get0Ok(int i2) {
        if (i2 == 0) {
            return null;
        }
        return get(i2);
    }

    @Override // com.android.dx.rop.cst.ConstantPool
    public Constant[] getEntries() {
        return this.entries;
    }

    @Override // com.android.dx.rop.cst.ConstantPool
    public Constant getOrNull(int i2) {
        try {
            return this.entries[i2];
        } catch (IndexOutOfBoundsException unused) {
            return throwInvalid(i2);
        }
    }

    public void set(int i2, Constant constant) {
        int i4;
        Constant constant2;
        throwIfImmutable();
        boolean z3 = constant != null && constant.isCategory2();
        if (i2 >= 1) {
            if (z3) {
                Constant[] constantArr = this.entries;
                if (i2 != constantArr.length - 1) {
                    constantArr[i2 + 1] = null;
                } else {
                    throw new IllegalArgumentException("(n == size - 1) && cst.isCategory2()");
                }
            }
            if (constant != null) {
                Constant[] constantArr2 = this.entries;
                if (constantArr2[i2] == null && (constant2 = constantArr2[i2 - 1]) != null && constant2.isCategory2()) {
                    this.entries[i4] = null;
                }
            }
            this.entries[i2] = constant;
            return;
        }
        throw new IllegalArgumentException("n < 1");
    }

    @Override // com.android.dx.rop.cst.ConstantPool
    public int size() {
        return this.entries.length;
    }
}
