package com.android.dx.cf.iface;

import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import java.util.Objects;
/* loaded from: classes2.dex */
public abstract class StdMember implements Member {
    private final int accessFlags;
    private final AttributeList attributes;
    private final CstType definingClass;
    private final CstNat nat;

    public StdMember(CstType cstType, int i2, CstNat cstNat, AttributeList attributeList) {
        Objects.requireNonNull(cstType, "definingClass == null");
        Objects.requireNonNull(cstNat, "nat == null");
        Objects.requireNonNull(attributeList, "attributes == null");
        this.definingClass = cstType;
        this.accessFlags = i2;
        this.nat = cstNat;
        this.attributes = attributeList;
    }

    @Override // com.android.dx.cf.iface.Member
    public final int getAccessFlags() {
        return this.accessFlags;
    }

    @Override // com.android.dx.cf.iface.Member, com.android.dx.cf.iface.HasAttribute
    public final AttributeList getAttributes() {
        return this.attributes;
    }

    @Override // com.android.dx.cf.iface.Member
    public final CstType getDefiningClass() {
        return this.definingClass;
    }

    @Override // com.android.dx.cf.iface.Member
    public final CstString getDescriptor() {
        return this.nat.getDescriptor();
    }

    @Override // com.android.dx.cf.iface.Member
    public final CstString getName() {
        return this.nat.getName();
    }

    @Override // com.android.dx.cf.iface.Member
    public final CstNat getNat() {
        return this.nat;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append(getClass().getName());
        sb.append('{');
        sb.append(this.nat.toHuman());
        sb.append('}');
        return sb.toString();
    }
}
