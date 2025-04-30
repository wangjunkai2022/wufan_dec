package com.android.dx.ssa.back;

import com.android.dx.rop.code.CstInsn;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.ssa.BasicRegisterMapper;
import com.android.dx.ssa.NormalSsaInsn;
import com.android.dx.ssa.RegisterMapper;
import com.android.dx.ssa.SsaMethod;
import com.android.dx.util.BitIntSet;
import java.util.BitSet;
/* loaded from: classes2.dex */
public class FirstFitAllocator extends RegisterAllocator {
    private static final boolean PRESLOT_PARAMS = true;
    private final BitSet mapped;

    public FirstFitAllocator(SsaMethod ssaMethod, InterferenceGraph interferenceGraph) {
        super(ssaMethod, interferenceGraph);
        this.mapped = new BitSet(ssaMethod.getRegCount());
    }

    private int paramNumberFromMoveParam(NormalSsaInsn normalSsaInsn) {
        return ((CstInteger) ((CstInsn) normalSsaInsn.getOriginalRopInsn()).getConstant()).getValue();
    }

    @Override // com.android.dx.ssa.back.RegisterAllocator
    public RegisterMapper allocateRegisters() {
        int i2;
        boolean z3;
        int regCount = this.ssaMeth.getRegCount();
        BasicRegisterMapper basicRegisterMapper = new BasicRegisterMapper(regCount);
        int paramWidth = this.ssaMeth.getParamWidth();
        for (int i4 = 0; i4 < regCount; i4++) {
            if (!this.mapped.get(i4)) {
                int categoryForSsaReg = getCategoryForSsaReg(i4);
                BitIntSet bitIntSet = new BitIntSet(regCount);
                this.interference.mergeInterferenceSet(i4, bitIntSet);
                if (isDefinitionMoveParam(i4)) {
                    i2 = paramNumberFromMoveParam((NormalSsaInsn) this.ssaMeth.getDefinitionForRegister(i4));
                    basicRegisterMapper.addMapping(i4, i2, categoryForSsaReg);
                    z3 = true;
                } else {
                    basicRegisterMapper.addMapping(i4, paramWidth, categoryForSsaReg);
                    i2 = paramWidth;
                    z3 = false;
                }
                for (int i5 = i4 + 1; i5 < regCount; i5++) {
                    if (!this.mapped.get(i5) && !isDefinitionMoveParam(i5) && !bitIntSet.has(i5) && (!z3 || categoryForSsaReg >= getCategoryForSsaReg(i5))) {
                        this.interference.mergeInterferenceSet(i5, bitIntSet);
                        categoryForSsaReg = Math.max(categoryForSsaReg, getCategoryForSsaReg(i5));
                        basicRegisterMapper.addMapping(i5, i2, categoryForSsaReg);
                        this.mapped.set(i5);
                    }
                }
                this.mapped.set(i4);
                if (!z3) {
                    paramWidth += categoryForSsaReg;
                }
            }
        }
        return basicRegisterMapper;
    }

    @Override // com.android.dx.ssa.back.RegisterAllocator
    public boolean wantsParamsMovedHigh() {
        return true;
    }
}
