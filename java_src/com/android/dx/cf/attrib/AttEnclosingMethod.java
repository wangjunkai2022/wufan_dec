package com.android.dx.cf.attrib;

import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstType;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class AttEnclosingMethod extends BaseAttribute {
    public static final String ATTRIBUTE_NAME = "EnclosingMethod";
    private final CstNat method;
    private final CstType type;

    public AttEnclosingMethod(CstType cstType, CstNat cstNat) {
        super(ATTRIBUTE_NAME);
        Objects.requireNonNull(cstType, "type == null");
        this.type = cstType;
        this.method = cstNat;
    }

    @Override // com.android.dx.cf.iface.Attribute
    public int byteLength() {
        return 10;
    }

    public CstType getEnclosingClass() {
        return this.type;
    }

    public CstNat getMethod() {
        return this.method;
    }
}
