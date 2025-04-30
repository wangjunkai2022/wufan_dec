package com.android.dx.ssa;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.ssa.back.InterferenceGraph;
import com.android.dx.util.BitIntSet;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class InterferenceRegisterMapper extends BasicRegisterMapper {
    private final ArrayList<BitIntSet> newRegInterference;
    private final InterferenceGraph oldRegInterference;

    public InterferenceRegisterMapper(InterferenceGraph interferenceGraph, int i2) {
        super(i2);
        this.newRegInterference = new ArrayList<>();
        this.oldRegInterference = interferenceGraph;
    }

    private void addInterfence(int i2, int i4) {
        int i5 = i2 + 1;
        this.newRegInterference.ensureCapacity(i5);
        while (i2 >= this.newRegInterference.size()) {
            this.newRegInterference.add(new BitIntSet(i5));
        }
        this.oldRegInterference.mergeInterferenceSet(i4, this.newRegInterference.get(i2));
    }

    @Override // com.android.dx.ssa.BasicRegisterMapper
    public void addMapping(int i2, int i4, int i5) {
        super.addMapping(i2, i4, i5);
        addInterfence(i4, i2);
        if (i5 == 2) {
            addInterfence(i4 + 1, i2);
        }
    }

    public boolean areAnyPinned(RegisterSpecList registerSpecList, int i2, int i4) {
        int size = registerSpecList.size();
        for (int i5 = 0; i5 < size; i5++) {
            RegisterSpec registerSpec = registerSpecList.get(i5);
            int oldToNew = oldToNew(registerSpec.getReg());
            if (oldToNew == i2) {
                return true;
            }
            if (registerSpec.getCategory() == 2 && oldToNew + 1 == i2) {
                return true;
            }
            if (i4 == 2 && oldToNew == i2 + 1) {
                return true;
            }
        }
        return false;
    }

    public boolean interferes(int i2, int i4, int i5) {
        BitIntSet bitIntSet;
        if (i4 < this.newRegInterference.size() && (bitIntSet = this.newRegInterference.get(i4)) != null) {
            if (i5 == 1) {
                return bitIntSet.has(i2);
            }
            return bitIntSet.has(i2) || interferes(i2, i4 + 1, i5 - 1);
        }
        return false;
    }

    public boolean interferes(RegisterSpec registerSpec, int i2) {
        return interferes(registerSpec.getReg(), i2, registerSpec.getCategory());
    }
}
