package com.android.dx.dex.code.form;

import com.android.dx.dex.code.CstInsn;
import com.android.dx.dex.code.DalvInsn;
import com.android.dx.dex.code.InsnFormat;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstCallSiteRef;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Type;
import com.android.dx.util.AnnotatedOutput;
import java.util.BitSet;
/* loaded from: classes2.dex */
public final class Form35c extends InsnFormat {
    private static final int MAX_NUM_OPS = 5;
    public static final InsnFormat THE_ONE = new Form35c();

    private Form35c() {
    }

    private static RegisterSpecList explicitize(RegisterSpecList registerSpecList) {
        int wordCount = wordCount(registerSpecList);
        int size = registerSpecList.size();
        if (wordCount == size) {
            return registerSpecList;
        }
        RegisterSpecList registerSpecList2 = new RegisterSpecList(wordCount);
        int i2 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RegisterSpec registerSpec = registerSpecList.get(i4);
            registerSpecList2.set(i2, registerSpec);
            if (registerSpec.getCategory() == 2) {
                registerSpecList2.set(i2 + 1, RegisterSpec.make(registerSpec.getReg() + 1, Type.VOID));
                i2 += 2;
            } else {
                i2++;
            }
        }
        registerSpecList2.setImmutable();
        return registerSpecList2;
    }

    private static int wordCount(RegisterSpecList registerSpecList) {
        int size = registerSpecList.size();
        if (size > 5) {
            return -1;
        }
        int i2 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RegisterSpec registerSpec = registerSpecList.get(i4);
            i2 += registerSpec.getCategory();
            if (!InsnFormat.unsignedFitsInNibble((registerSpec.getReg() + registerSpec.getCategory()) - 1)) {
                return -1;
            }
        }
        if (i2 <= 5) {
            return i2;
        }
        return -1;
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public int codeSize() {
        return 3;
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public BitSet compatibleRegs(DalvInsn dalvInsn) {
        RegisterSpecList registers = dalvInsn.getRegisters();
        int size = registers.size();
        BitSet bitSet = new BitSet(size);
        for (int i2 = 0; i2 < size; i2++) {
            RegisterSpec registerSpec = registers.get(i2);
            bitSet.set(i2, InsnFormat.unsignedFitsInNibble((registerSpec.getReg() + registerSpec.getCategory()) - 1));
        }
        return bitSet;
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        RegisterSpecList explicitize = explicitize(dalvInsn.getRegisters());
        return InsnFormat.regListString(explicitize) + ", " + dalvInsn.cstString();
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public String insnCommentString(DalvInsn dalvInsn, boolean z3) {
        return z3 ? dalvInsn.cstComment() : "";
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        if (dalvInsn instanceof CstInsn) {
            CstInsn cstInsn = (CstInsn) dalvInsn;
            if (InsnFormat.unsignedFitsInShort(cstInsn.getIndex())) {
                Constant constant = cstInsn.getConstant();
                return ((constant instanceof CstMethodRef) || (constant instanceof CstType) || (constant instanceof CstCallSiteRef)) && wordCount(cstInsn.getRegisters()) >= 0;
            }
            return false;
        }
        return false;
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public void writeTo(AnnotatedOutput annotatedOutput, DalvInsn dalvInsn) {
        int index = ((CstInsn) dalvInsn).getIndex();
        RegisterSpecList explicitize = explicitize(dalvInsn.getRegisters());
        int size = explicitize.size();
        InsnFormat.write(annotatedOutput, InsnFormat.opcodeUnit(dalvInsn, InsnFormat.makeByte(size > 4 ? explicitize.get(4).getReg() : 0, size)), (short) index, InsnFormat.codeUnit(size > 0 ? explicitize.get(0).getReg() : 0, size > 1 ? explicitize.get(1).getReg() : 0, size > 2 ? explicitize.get(2).getReg() : 0, size > 3 ? explicitize.get(3).getReg() : 0));
    }
}
