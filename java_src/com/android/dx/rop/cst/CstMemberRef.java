package com.android.dx.rop.cst;

import external.org.apache.commons.lang3.d;
import java.util.Objects;
/* loaded from: classes2.dex */
public abstract class CstMemberRef extends TypedConstant {
    private final CstType definingClass;
    private final CstNat nat;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CstMemberRef(CstType cstType, CstNat cstNat) {
        Objects.requireNonNull(cstType, "definingClass == null");
        Objects.requireNonNull(cstNat, "nat == null");
        this.definingClass = cstType;
        this.nat = cstNat;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.dx.rop.cst.Constant
    public int compareTo0(Constant constant) {
        CstMemberRef cstMemberRef = (CstMemberRef) constant;
        int compareTo = this.definingClass.compareTo((Constant) cstMemberRef.definingClass);
        return compareTo != 0 ? compareTo : this.nat.getName().compareTo((Constant) cstMemberRef.nat.getName());
    }

    public final boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CstMemberRef cstMemberRef = (CstMemberRef) obj;
        return this.definingClass.equals(cstMemberRef.definingClass) && this.nat.equals(cstMemberRef.nat);
    }

    public final CstType getDefiningClass() {
        return this.definingClass;
    }

    public final CstNat getNat() {
        return this.nat;
    }

    public final int hashCode() {
        return (this.definingClass.hashCode() * 31) ^ this.nat.hashCode();
    }

    @Override // com.android.dx.rop.cst.Constant
    public final boolean isCategory2() {
        return false;
    }

    @Override // com.android.dx.util.ToHuman
    public final String toHuman() {
        return this.definingClass.toHuman() + d.f65364a + this.nat.toHuman();
    }

    public final String toString() {
        return typeName() + '{' + toHuman() + '}';
    }
}
