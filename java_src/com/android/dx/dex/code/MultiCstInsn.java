package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.rop.cst.Constant;
import com.android.dx.util.Hex;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class MultiCstInsn extends FixedSizeInsn {
    private static final int NOT_SET = -1;
    private int classIndex;
    private final Constant[] constants;
    private final int[] index;

    public MultiCstInsn(Dop dop, SourcePosition sourcePosition, RegisterSpecList registerSpecList, Constant[] constantArr) {
        super(dop, sourcePosition, registerSpecList);
        Objects.requireNonNull(constantArr, "constants == null");
        this.constants = constantArr;
        this.index = new int[constantArr.length];
        int i2 = 0;
        while (true) {
            int[] iArr = this.index;
            if (i2 < iArr.length) {
                Objects.requireNonNull(constantArr[i2], "constants[i] == null");
                iArr[i2] = -1;
                i2++;
            } else {
                this.classIndex = -1;
                return;
            }
        }
    }

    @Override // com.android.dx.dex.code.DalvInsn
    protected String argString() {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < this.constants.length; i2++) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append(this.constants[i2].toHuman());
        }
        return sb.toString();
    }

    @Override // com.android.dx.dex.code.DalvInsn
    public String cstComment() {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < this.constants.length; i2++) {
            if (!hasIndex(i2)) {
                return "";
            }
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(getConstant(i2).typeName());
            sb.append('@');
            int index = getIndex(i2);
            if (index < 65536) {
                sb.append(Hex.u2(index));
            } else {
                sb.append(Hex.u4(index));
            }
        }
        return sb.toString();
    }

    @Override // com.android.dx.dex.code.DalvInsn
    public String cstString() {
        return argString();
    }

    public int getClassIndex() {
        if (hasClassIndex()) {
            return this.classIndex;
        }
        throw new IllegalStateException("class index not yet set");
    }

    public Constant getConstant(int i2) {
        return this.constants[i2];
    }

    public int getIndex(int i2) {
        if (hasIndex(i2)) {
            return this.index[i2];
        }
        throw new IllegalStateException("index not yet set for constant " + i2 + " value = " + this.constants[i2]);
    }

    public int getNumberOfConstants() {
        return this.constants.length;
    }

    public boolean hasClassIndex() {
        return this.classIndex != -1;
    }

    public boolean hasIndex(int i2) {
        return this.index[i2] != -1;
    }

    public void setClassIndex(int i2) {
        if (i2 >= 0) {
            if (!hasClassIndex()) {
                this.classIndex = i2;
                return;
            }
            throw new IllegalStateException("class index already set");
        }
        throw new IllegalArgumentException("index < 0");
    }

    public void setIndex(int i2, int i4) {
        if (i4 >= 0) {
            if (!hasIndex(i2)) {
                this.index[i2] = i4;
                return;
            }
            throw new IllegalStateException("index already set");
        }
        throw new IllegalArgumentException("index < 0");
    }

    @Override // com.android.dx.dex.code.DalvInsn
    public DalvInsn withOpcode(Dop dop) {
        return new MultiCstInsn(dop, getPosition(), getRegisters(), this.constants, this.index, this.classIndex);
    }

    @Override // com.android.dx.dex.code.DalvInsn
    public DalvInsn withRegisters(RegisterSpecList registerSpecList) {
        return new MultiCstInsn(getOpcode(), getPosition(), registerSpecList, this.constants, this.index, this.classIndex);
    }

    private MultiCstInsn(Dop dop, SourcePosition sourcePosition, RegisterSpecList registerSpecList, Constant[] constantArr, int[] iArr, int i2) {
        super(dop, sourcePosition, registerSpecList);
        this.constants = constantArr;
        this.index = iArr;
        this.classIndex = i2;
    }
}
