package com.android.dx.rop.code;

import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeList;
import com.android.dx.util.FixedSizeList;
import java.util.BitSet;
/* loaded from: classes2.dex */
public final class RegisterSpecList extends FixedSizeList implements TypeList {
    public static final RegisterSpecList EMPTY = new RegisterSpecList(0);

    /* loaded from: classes2.dex */
    private static class Expander {
        private int base;
        private final BitSet compatRegs;
        private boolean duplicateFirst;
        private final RegisterSpecList regSpecList;
        private final RegisterSpecList result;

        /* JADX INFO: Access modifiers changed from: private */
        public void expandRegister(int i2) {
            expandRegister(i2, (RegisterSpec) this.regSpecList.get0(i2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public RegisterSpecList getResult() {
            if (this.regSpecList.isImmutable()) {
                this.result.setImmutable();
            }
            return this.result;
        }

        private Expander(RegisterSpecList registerSpecList, BitSet bitSet, int i2, boolean z3) {
            this.regSpecList = registerSpecList;
            this.compatRegs = bitSet;
            this.base = i2;
            this.result = new RegisterSpecList(registerSpecList.size());
            this.duplicateFirst = z3;
        }

        private void expandRegister(int i2, RegisterSpec registerSpec) {
            BitSet bitSet = this.compatRegs;
            boolean z3 = true;
            if (bitSet != null && bitSet.get(i2)) {
                z3 = false;
            }
            if (z3) {
                registerSpec = registerSpec.withReg(this.base);
                if (!this.duplicateFirst) {
                    this.base += registerSpec.getCategory();
                }
            }
            this.duplicateFirst = false;
            this.result.set0(i2, registerSpec);
        }
    }

    public RegisterSpecList(int i2) {
        super(i2);
    }

    public static RegisterSpecList make(RegisterSpec registerSpec) {
        RegisterSpecList registerSpecList = new RegisterSpecList(1);
        registerSpecList.set(0, registerSpec);
        return registerSpecList;
    }

    public RegisterSpec get(int i2) {
        return (RegisterSpec) get0(i2);
    }

    public int getRegistersSize() {
        int nextReg;
        int size = size();
        int i2 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RegisterSpec registerSpec = (RegisterSpec) get0(i4);
            if (registerSpec != null && (nextReg = registerSpec.getNextReg()) > i2) {
                i2 = nextReg;
            }
        }
        return i2;
    }

    @Override // com.android.dx.rop.type.TypeList
    public Type getType(int i2) {
        return get(i2).getType().getType();
    }

    @Override // com.android.dx.rop.type.TypeList
    public int getWordCount() {
        int size = size();
        int i2 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            i2 += getType(i4).getCategory();
        }
        return i2;
    }

    public int indexOfRegister(int i2) {
        int size = size();
        for (int i4 = 0; i4 < size; i4++) {
            if (get(i4).getReg() == i2) {
                return i4;
            }
        }
        return -1;
    }

    public void set(int i2, RegisterSpec registerSpec) {
        set0(i2, registerSpec);
    }

    public RegisterSpec specForRegister(int i2) {
        int size = size();
        for (int i4 = 0; i4 < size; i4++) {
            RegisterSpec registerSpec = get(i4);
            if (registerSpec.getReg() == i2) {
                return registerSpec;
            }
        }
        return null;
    }

    public RegisterSpecList subset(BitSet bitSet) {
        int size = size() - bitSet.cardinality();
        if (size == 0) {
            return EMPTY;
        }
        RegisterSpecList registerSpecList = new RegisterSpecList(size);
        int i2 = 0;
        for (int i4 = 0; i4 < size(); i4++) {
            if (!bitSet.get(i4)) {
                registerSpecList.set0(i2, get0(i4));
                i2++;
            }
        }
        if (isImmutable()) {
            registerSpecList.setImmutable();
        }
        return registerSpecList;
    }

    @Override // com.android.dx.rop.type.TypeList
    public TypeList withAddedType(Type type) {
        throw new UnsupportedOperationException("unsupported");
    }

    public RegisterSpecList withExpandedRegisters(int i2, boolean z3, BitSet bitSet) {
        int size = size();
        if (size == 0) {
            return this;
        }
        Expander expander = new Expander(bitSet, i2, z3);
        for (int i4 = 0; i4 < size; i4++) {
            expander.expandRegister(i4);
        }
        return expander.getResult();
    }

    public RegisterSpecList withFirst(RegisterSpec registerSpec) {
        int size = size();
        RegisterSpecList registerSpecList = new RegisterSpecList(size + 1);
        int i2 = 0;
        while (i2 < size) {
            int i4 = i2 + 1;
            registerSpecList.set0(i4, get0(i2));
            i2 = i4;
        }
        registerSpecList.set0(0, registerSpec);
        if (isImmutable()) {
            registerSpecList.setImmutable();
        }
        return registerSpecList;
    }

    public RegisterSpecList withOffset(int i2) {
        int size = size();
        if (size == 0) {
            return this;
        }
        RegisterSpecList registerSpecList = new RegisterSpecList(size);
        for (int i4 = 0; i4 < size; i4++) {
            RegisterSpec registerSpec = (RegisterSpec) get0(i4);
            if (registerSpec != null) {
                registerSpecList.set0(i4, registerSpec.withOffset(i2));
            }
        }
        if (isImmutable()) {
            registerSpecList.setImmutable();
        }
        return registerSpecList;
    }

    public RegisterSpecList withoutFirst() {
        int size = size() - 1;
        if (size == 0) {
            return EMPTY;
        }
        RegisterSpecList registerSpecList = new RegisterSpecList(size);
        int i2 = 0;
        while (i2 < size) {
            int i4 = i2 + 1;
            registerSpecList.set0(i2, get0(i4));
            i2 = i4;
        }
        if (isImmutable()) {
            registerSpecList.setImmutable();
        }
        return registerSpecList;
    }

    public RegisterSpecList withoutLast() {
        int size = size() - 1;
        if (size == 0) {
            return EMPTY;
        }
        RegisterSpecList registerSpecList = new RegisterSpecList(size);
        for (int i2 = 0; i2 < size; i2++) {
            registerSpecList.set0(i2, get0(i2));
        }
        if (isImmutable()) {
            registerSpecList.setImmutable();
        }
        return registerSpecList;
    }

    public static RegisterSpecList make(RegisterSpec registerSpec, RegisterSpec registerSpec2) {
        RegisterSpecList registerSpecList = new RegisterSpecList(2);
        registerSpecList.set(0, registerSpec);
        registerSpecList.set(1, registerSpec2);
        return registerSpecList;
    }

    public static RegisterSpecList make(RegisterSpec registerSpec, RegisterSpec registerSpec2, RegisterSpec registerSpec3) {
        RegisterSpecList registerSpecList = new RegisterSpecList(3);
        registerSpecList.set(0, registerSpec);
        registerSpecList.set(1, registerSpec2);
        registerSpecList.set(2, registerSpec3);
        return registerSpecList;
    }

    public static RegisterSpecList make(RegisterSpec registerSpec, RegisterSpec registerSpec2, RegisterSpec registerSpec3, RegisterSpec registerSpec4) {
        RegisterSpecList registerSpecList = new RegisterSpecList(4);
        registerSpecList.set(0, registerSpec);
        registerSpecList.set(1, registerSpec2);
        registerSpecList.set(2, registerSpec3);
        registerSpecList.set(3, registerSpec4);
        return registerSpecList;
    }
}
