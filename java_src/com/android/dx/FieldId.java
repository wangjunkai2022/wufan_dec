package com.android.dx;

import com.android.dx.rop.cst.CstFieldRef;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstString;
import com.join.mgps.Util.g0;
/* loaded from: classes2.dex */
public final class FieldId<D, V> {
    final CstFieldRef constant;
    final TypeId<D> declaringType;
    final String name;
    final CstNat nat;
    final TypeId<V> type;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FieldId(TypeId<D> declaringType, TypeId<V> type, String name) {
        if (declaringType != null && type != null && name != null) {
            this.declaringType = declaringType;
            this.type = type;
            this.name = name;
            CstNat cstNat = new CstNat(new CstString(name), new CstString(type.name));
            this.nat = cstNat;
            this.constant = new CstFieldRef(declaringType.constant, cstNat);
            return;
        }
        throw null;
    }

    public boolean equals(Object o3) {
        if (o3 instanceof FieldId) {
            FieldId fieldId = (FieldId) o3;
            if (fieldId.declaringType.equals(this.declaringType) && fieldId.name.equals(this.name)) {
                return true;
            }
        }
        return false;
    }

    public TypeId<D> getDeclaringType() {
        return this.declaringType;
    }

    public String getName() {
        return this.name;
    }

    public TypeId<V> getType() {
        return this.type;
    }

    public int hashCode() {
        return this.declaringType.hashCode() + (this.name.hashCode() * 37);
    }

    public String toString() {
        return this.declaringType + g0.f27568a + this.name;
    }
}
