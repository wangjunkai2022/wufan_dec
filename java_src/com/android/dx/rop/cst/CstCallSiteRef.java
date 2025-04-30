package com.android.dx.rop.cst;

import com.android.dx.rop.type.Prototype;
import com.android.dx.rop.type.Type;
import java.util.Objects;
/* loaded from: classes2.dex */
public class CstCallSiteRef extends Constant {
    private final int id;
    private final CstInvokeDynamic invokeDynamic;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CstCallSiteRef(CstInvokeDynamic cstInvokeDynamic, int i2) {
        Objects.requireNonNull(cstInvokeDynamic, "invokeDynamic == null");
        this.invokeDynamic = cstInvokeDynamic;
        this.id = i2;
    }

    @Override // com.android.dx.rop.cst.Constant
    protected int compareTo0(Constant constant) {
        CstCallSiteRef cstCallSiteRef = (CstCallSiteRef) constant;
        int compareTo = this.invokeDynamic.compareTo((Constant) cstCallSiteRef.invokeDynamic);
        return compareTo != 0 ? compareTo : Integer.compare(this.id, cstCallSiteRef.id);
    }

    public CstCallSite getCallSite() {
        return this.invokeDynamic.getCallSite();
    }

    public Prototype getPrototype() {
        return this.invokeDynamic.getPrototype();
    }

    public Type getReturnType() {
        return this.invokeDynamic.getReturnType();
    }

    @Override // com.android.dx.rop.cst.Constant
    public boolean isCategory2() {
        return false;
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        return getCallSite().toHuman();
    }

    public String toString() {
        return getCallSite().toString();
    }

    @Override // com.android.dx.rop.cst.Constant
    public String typeName() {
        return "CallSiteRef";
    }
}
