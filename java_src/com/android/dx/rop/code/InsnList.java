package com.android.dx.rop.code;

import com.android.dx.rop.code.Insn;
import com.android.dx.util.FixedSizeList;
/* loaded from: classes2.dex */
public final class InsnList extends FixedSizeList {
    public InsnList(int i2) {
        super(i2);
    }

    public boolean contentEquals(InsnList insnList) {
        int size;
        if (insnList != null && (size = size()) == insnList.size()) {
            for (int i2 = 0; i2 < size; i2++) {
                if (!get(i2).contentEquals(insnList.get(i2))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public void forEach(Insn.Visitor visitor) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            get(i2).accept(visitor);
        }
    }

    public Insn get(int i2) {
        return (Insn) get0(i2);
    }

    public Insn getLast() {
        return get(size() - 1);
    }

    public void set(int i2, Insn insn) {
        set0(i2, insn);
    }

    public InsnList withRegisterOffset(int i2) {
        int size = size();
        InsnList insnList = new InsnList(size);
        for (int i4 = 0; i4 < size; i4++) {
            Insn insn = (Insn) get0(i4);
            if (insn != null) {
                insnList.set0(i4, insn.withRegisterOffset(i2));
            }
        }
        if (isImmutable()) {
            insnList.setImmutable();
        }
        return insnList;
    }
}
