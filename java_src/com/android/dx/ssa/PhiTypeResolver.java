package com.android.dx.ssa;

import com.android.dx.cf.code.Merger;
import com.android.dx.rop.code.LocalItem;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.type.TypeBearer;
import java.util.BitSet;
import java.util.List;
/* loaded from: classes2.dex */
public class PhiTypeResolver {
    SsaMethod ssaMeth;
    private final BitSet worklist;

    private PhiTypeResolver(SsaMethod ssaMethod) {
        this.ssaMeth = ssaMethod;
        this.worklist = new BitSet(ssaMethod.getRegCount());
    }

    private static boolean equalsHandlesNulls(LocalItem localItem, LocalItem localItem2) {
        return localItem == localItem2 || (localItem != null && localItem.equals(localItem2));
    }

    public static void process(SsaMethod ssaMethod) {
        new PhiTypeResolver(ssaMethod).run();
    }

    private void run() {
        int regCount = this.ssaMeth.getRegCount();
        for (int i2 = 0; i2 < regCount; i2++) {
            SsaInsn definitionForRegister = this.ssaMeth.getDefinitionForRegister(i2);
            if (definitionForRegister != null && definitionForRegister.getResult().getBasicType() == 0) {
                this.worklist.set(i2);
            }
        }
        while (true) {
            int nextSetBit = this.worklist.nextSetBit(0);
            if (nextSetBit < 0) {
                return;
            }
            this.worklist.clear(nextSetBit);
            if (resolveResultType((PhiInsn) this.ssaMeth.getDefinitionForRegister(nextSetBit))) {
                List<SsaInsn> useListForRegister = this.ssaMeth.getUseListForRegister(nextSetBit);
                int size = useListForRegister.size();
                for (int i4 = 0; i4 < size; i4++) {
                    SsaInsn ssaInsn = useListForRegister.get(i4);
                    RegisterSpec result = ssaInsn.getResult();
                    if (result != null && (ssaInsn instanceof PhiInsn)) {
                        this.worklist.set(result.getReg());
                    }
                }
            }
        }
    }

    boolean resolveResultType(PhiInsn phiInsn) {
        phiInsn.updateSourcesToDefinitions(this.ssaMeth);
        RegisterSpecList sources = phiInsn.getSources();
        int size = sources.size();
        int i2 = -1;
        RegisterSpec registerSpec = null;
        for (int i4 = 0; i4 < size; i4++) {
            RegisterSpec registerSpec2 = sources.get(i4);
            if (registerSpec2.getBasicType() != 0) {
                i2 = i4;
                registerSpec = registerSpec2;
            }
        }
        if (registerSpec == null) {
            return false;
        }
        LocalItem localItem = registerSpec.getLocalItem();
        TypeBearer type = registerSpec.getType();
        boolean z3 = true;
        for (int i5 = 0; i5 < size; i5++) {
            if (i5 != i2) {
                RegisterSpec registerSpec3 = sources.get(i5);
                if (registerSpec3.getBasicType() != 0) {
                    z3 = z3 && equalsHandlesNulls(localItem, registerSpec3.getLocalItem());
                    type = Merger.mergeType(type, registerSpec3.getType());
                }
            }
        }
        if (type != null) {
            LocalItem localItem2 = z3 ? localItem : null;
            RegisterSpec result = phiInsn.getResult();
            if (result.getTypeBearer() == type && equalsHandlesNulls(localItem2, result.getLocalItem())) {
                return false;
            }
            phiInsn.changeResultType(type, localItem2);
            return true;
        }
        StringBuilder sb = new StringBuilder();
        for (int i6 = 0; i6 < size; i6++) {
            sb.append(sources.get(i6).toString());
            sb.append(' ');
        }
        throw new RuntimeException("Couldn't map types in phi insn:" + ((Object) sb));
    }
}
