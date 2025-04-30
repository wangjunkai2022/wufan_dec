package com.android.dx.ssa;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.util.IntList;
/* loaded from: classes2.dex */
public class BasicRegisterMapper extends RegisterMapper {
    private final IntList oldToNew;
    private int runningCountNewRegisters;

    public BasicRegisterMapper(int i2) {
        this.oldToNew = new IntList(i2);
    }

    public void addMapping(int i2, int i4, int i5) {
        if (i2 >= this.oldToNew.size()) {
            for (int size = i2 - this.oldToNew.size(); size >= 0; size--) {
                this.oldToNew.add(-1);
            }
        }
        this.oldToNew.set(i2, i4);
        int i6 = i4 + i5;
        if (this.runningCountNewRegisters < i6) {
            this.runningCountNewRegisters = i6;
        }
    }

    @Override // com.android.dx.ssa.RegisterMapper
    public int getNewRegisterCount() {
        return this.runningCountNewRegisters;
    }

    @Override // com.android.dx.ssa.RegisterMapper
    public RegisterSpec map(RegisterSpec registerSpec) {
        int i2;
        if (registerSpec == null) {
            return null;
        }
        try {
            i2 = this.oldToNew.get(registerSpec.getReg());
        } catch (IndexOutOfBoundsException unused) {
            i2 = -1;
        }
        if (i2 >= 0) {
            return registerSpec.withReg(i2);
        }
        throw new RuntimeException("no mapping specified for register");
    }

    public int oldToNew(int i2) {
        if (i2 >= this.oldToNew.size()) {
            return -1;
        }
        return this.oldToNew.get(i2);
    }

    public String toHuman() {
        StringBuilder sb = new StringBuilder();
        sb.append("Old\tNew\n");
        int size = this.oldToNew.size();
        for (int i2 = 0; i2 < size; i2++) {
            sb.append(i2);
            sb.append('\t');
            sb.append(this.oldToNew.get(i2));
            sb.append('\n');
        }
        sb.append("new reg count:");
        sb.append(this.runningCountNewRegisters);
        sb.append('\n');
        return sb.toString();
    }
}
