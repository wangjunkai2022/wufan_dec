package com.android.dex;

import com.android.dex.Dex;
import com.android.dex.util.Unsigned;
import com.join.mgps.Util.g0;
/* loaded from: classes2.dex */
public final class MethodId implements Comparable<MethodId> {
    private final int declaringClassIndex;
    private final Dex dex;
    private final int nameIndex;
    private final int protoIndex;

    public MethodId(Dex dex, int i2, int i4, int i5) {
        this.dex = dex;
        this.declaringClassIndex = i2;
        this.protoIndex = i4;
        this.nameIndex = i5;
    }

    public int getDeclaringClassIndex() {
        return this.declaringClassIndex;
    }

    public int getNameIndex() {
        return this.nameIndex;
    }

    public int getProtoIndex() {
        return this.protoIndex;
    }

    public String toString() {
        if (this.dex == null) {
            return this.declaringClassIndex + " " + this.protoIndex + " " + this.nameIndex;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.dex.typeNames().get(this.declaringClassIndex));
        sb.append(g0.f27568a);
        sb.append(this.dex.strings().get(this.nameIndex));
        Dex dex = this.dex;
        sb.append(dex.readTypeList(dex.protoIds().get(this.protoIndex).getParametersOffset()));
        return sb.toString();
    }

    public void writeTo(Dex.Section section) {
        section.writeUnsignedShort(this.declaringClassIndex);
        section.writeUnsignedShort(this.protoIndex);
        section.writeInt(this.nameIndex);
    }

    @Override // java.lang.Comparable
    public int compareTo(MethodId methodId) {
        int i2 = this.declaringClassIndex;
        int i4 = methodId.declaringClassIndex;
        if (i2 != i4) {
            return Unsigned.compare(i2, i4);
        }
        int i5 = this.nameIndex;
        int i6 = methodId.nameIndex;
        if (i5 != i6) {
            return Unsigned.compare(i5, i6);
        }
        return Unsigned.compare(this.protoIndex, methodId.protoIndex);
    }
}
