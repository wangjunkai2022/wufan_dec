package com.android.dx;

import com.android.dx.rop.code.Rop;
import com.android.dx.rop.code.Rops;
/* loaded from: classes2.dex */
public enum BinaryOp {
    ADD { // from class: com.android.dx.BinaryOp.1
        @Override // com.android.dx.BinaryOp
        Rop rop(com.android.dx.rop.type.TypeList types) {
            return Rops.opAdd(types);
        }
    },
    SUBTRACT { // from class: com.android.dx.BinaryOp.2
        @Override // com.android.dx.BinaryOp
        Rop rop(com.android.dx.rop.type.TypeList types) {
            return Rops.opSub(types);
        }
    },
    MULTIPLY { // from class: com.android.dx.BinaryOp.3
        @Override // com.android.dx.BinaryOp
        Rop rop(com.android.dx.rop.type.TypeList types) {
            return Rops.opMul(types);
        }
    },
    DIVIDE { // from class: com.android.dx.BinaryOp.4
        @Override // com.android.dx.BinaryOp
        Rop rop(com.android.dx.rop.type.TypeList types) {
            return Rops.opDiv(types);
        }
    },
    REMAINDER { // from class: com.android.dx.BinaryOp.5
        @Override // com.android.dx.BinaryOp
        Rop rop(com.android.dx.rop.type.TypeList types) {
            return Rops.opRem(types);
        }
    },
    AND { // from class: com.android.dx.BinaryOp.6
        @Override // com.android.dx.BinaryOp
        Rop rop(com.android.dx.rop.type.TypeList types) {
            return Rops.opAnd(types);
        }
    },
    OR { // from class: com.android.dx.BinaryOp.7
        @Override // com.android.dx.BinaryOp
        Rop rop(com.android.dx.rop.type.TypeList types) {
            return Rops.opOr(types);
        }
    },
    XOR { // from class: com.android.dx.BinaryOp.8
        @Override // com.android.dx.BinaryOp
        Rop rop(com.android.dx.rop.type.TypeList types) {
            return Rops.opXor(types);
        }
    },
    SHIFT_LEFT { // from class: com.android.dx.BinaryOp.9
        @Override // com.android.dx.BinaryOp
        Rop rop(com.android.dx.rop.type.TypeList types) {
            return Rops.opShl(types);
        }
    },
    SHIFT_RIGHT { // from class: com.android.dx.BinaryOp.10
        @Override // com.android.dx.BinaryOp
        Rop rop(com.android.dx.rop.type.TypeList types) {
            return Rops.opShr(types);
        }
    },
    UNSIGNED_SHIFT_RIGHT { // from class: com.android.dx.BinaryOp.11
        @Override // com.android.dx.BinaryOp
        Rop rop(com.android.dx.rop.type.TypeList types) {
            return Rops.opUshr(types);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Rop rop(com.android.dx.rop.type.TypeList types);
}
