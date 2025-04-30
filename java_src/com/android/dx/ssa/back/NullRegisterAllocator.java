package com.android.dx.ssa.back;

import com.android.dx.ssa.BasicRegisterMapper;
import com.android.dx.ssa.RegisterMapper;
import com.android.dx.ssa.SsaMethod;
/* loaded from: classes2.dex */
public class NullRegisterAllocator extends RegisterAllocator {
    public NullRegisterAllocator(SsaMethod ssaMethod, InterferenceGraph interferenceGraph) {
        super(ssaMethod, interferenceGraph);
    }

    @Override // com.android.dx.ssa.back.RegisterAllocator
    public RegisterMapper allocateRegisters() {
        int regCount = this.ssaMeth.getRegCount();
        BasicRegisterMapper basicRegisterMapper = new BasicRegisterMapper(regCount);
        for (int i2 = 0; i2 < regCount; i2++) {
            basicRegisterMapper.addMapping(i2, i2 * 2, 2);
        }
        return basicRegisterMapper;
    }

    @Override // com.android.dx.ssa.back.RegisterAllocator
    public boolean wantsParamsMovedHigh() {
        return false;
    }
}
