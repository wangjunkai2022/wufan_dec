package com.android.dx;

import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.type.Prototype;
import com.join.mgps.Util.g0;
import java.util.List;
/* loaded from: classes2.dex */
public final class MethodId<D, R> {
    final CstMethodRef constant;
    final TypeId<D> declaringType;
    final String name;
    final CstNat nat;
    final TypeList parameters;
    final TypeId<R> returnType;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MethodId(TypeId<D> declaringType, TypeId<R> returnType, String name, TypeList parameters) {
        if (declaringType != null && returnType != null && name != null && parameters != null) {
            this.declaringType = declaringType;
            this.returnType = returnType;
            this.name = name;
            this.parameters = parameters;
            CstNat cstNat = new CstNat(new CstString(name), new CstString(descriptor(false)));
            this.nat = cstNat;
            this.constant = new CstMethodRef(declaringType.constant, cstNat);
            return;
        }
        throw null;
    }

    String descriptor(boolean includeThis) {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        if (includeThis) {
            sb.append(this.declaringType.name);
        }
        for (TypeId<?> typeId : this.parameters.types) {
            sb.append(typeId.name);
        }
        sb.append(")");
        sb.append(this.returnType.name);
        return sb.toString();
    }

    public boolean equals(Object o3) {
        if (o3 instanceof MethodId) {
            MethodId methodId = (MethodId) o3;
            if (methodId.declaringType.equals(this.declaringType) && methodId.name.equals(this.name) && methodId.parameters.equals(this.parameters) && methodId.returnType.equals(this.returnType)) {
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

    public List<TypeId<?>> getParameters() {
        return this.parameters.asList();
    }

    public TypeId<R> getReturnType() {
        return this.returnType;
    }

    public int hashCode() {
        return ((((((527 + this.declaringType.hashCode()) * 31) + this.name.hashCode()) * 31) + this.parameters.hashCode()) * 31) + this.returnType.hashCode();
    }

    public boolean isConstructor() {
        return this.name.equals("<init>");
    }

    public boolean isStaticInitializer() {
        return this.name.equals("<clinit>");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Prototype prototype(boolean includeThis) {
        return Prototype.intern(descriptor(includeThis));
    }

    public String toString() {
        return this.declaringType + g0.f27568a + this.name + "(" + this.parameters + ")";
    }
}
