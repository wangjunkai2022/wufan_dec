package com.android.dx.cf.attrib;

import com.android.dx.rop.cst.CstString;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class AttSourceFile extends BaseAttribute {
    public static final String ATTRIBUTE_NAME = "SourceFile";
    private final CstString sourceFile;

    public AttSourceFile(CstString cstString) {
        super(ATTRIBUTE_NAME);
        Objects.requireNonNull(cstString, "sourceFile == null");
        this.sourceFile = cstString;
    }

    @Override // com.android.dx.cf.iface.Attribute
    public int byteLength() {
        return 8;
    }

    public CstString getSourceFile() {
        return this.sourceFile;
    }
}
