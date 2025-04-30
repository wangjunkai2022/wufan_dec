package com.android.dx;

import com.android.dx.rop.code.Rop;
import com.android.dx.rop.code.Rops;
/* loaded from: classes2.dex */
public enum Comparison {
    LT { // from class: com.android.dx.Comparison.1
        @Override // com.android.dx.Comparison
        Rop rop(com.android.dx.rop.type.TypeList types) {
            return Rops.opIfLt(types);
        }
    },
    LE { // from class: com.android.dx.Comparison.2
        @Override // com.android.dx.Comparison
        Rop rop(com.android.dx.rop.type.TypeList types) {
            return Rops.opIfLe(types);
        }
    },
    EQ { // from class: com.android.dx.Comparison.3
        @Override // com.android.dx.Comparison
        Rop rop(com.android.dx.rop.type.TypeList types) {
            return Rops.opIfEq(types);
        }
    },
    GE { // from class: com.android.dx.Comparison.4
        @Override // com.android.dx.Comparison
        Rop rop(com.android.dx.rop.type.TypeList types) {
            return Rops.opIfGe(types);
        }
    },
    GT { // from class: com.android.dx.Comparison.5
        @Override // com.android.dx.Comparison
        Rop rop(com.android.dx.rop.type.TypeList types) {
            return Rops.opIfGt(types);
        }
    },
    NE { // from class: com.android.dx.Comparison.6
        @Override // com.android.dx.Comparison
        Rop rop(com.android.dx.rop.type.TypeList types) {
            return Rops.opIfNe(types);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Rop rop(com.android.dx.rop.type.TypeList types);
}
