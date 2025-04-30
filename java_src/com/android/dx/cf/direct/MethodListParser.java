package com.android.dx.cf.direct;

import com.alipay.sdk.packet.d;
import com.android.dx.cf.iface.AttributeList;
import com.android.dx.cf.iface.Member;
import com.android.dx.cf.iface.StdMethod;
import com.android.dx.cf.iface.StdMethodList;
import com.android.dx.rop.code.AccessFlags;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstType;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class MethodListParser extends MemberListParser {
    private final StdMethodList methods;

    public MethodListParser(DirectClassFile directClassFile, CstType cstType, int i2, AttributeFactory attributeFactory) {
        super(directClassFile, cstType, i2, attributeFactory);
        this.methods = new StdMethodList(getCount());
    }

    @Override // com.android.dx.cf.direct.MemberListParser
    protected int getAttributeContext() {
        return 2;
    }

    public StdMethodList getList() {
        parseIfNecessary();
        return this.methods;
    }

    @Override // com.android.dx.cf.direct.MemberListParser
    protected String humanAccessFlags(int i2) {
        return AccessFlags.methodString(i2);
    }

    @Override // com.android.dx.cf.direct.MemberListParser
    protected String humanName() {
        return d.f9798s;
    }

    @Override // com.android.dx.cf.direct.MemberListParser
    protected Member set(int i2, int i4, CstNat cstNat, AttributeList attributeList) {
        StdMethod stdMethod = new StdMethod(getDefiner(), i4, cstNat, attributeList);
        this.methods.set(i2, stdMethod);
        return stdMethod;
    }
}
