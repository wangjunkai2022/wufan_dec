package com.android.dex;

import com.android.dex.Dex;
import com.android.dex.util.Unsigned;
import com.join.mgps.Util.g0;
/* loaded from: classes2.dex */
public final class FieldId implements Comparable<FieldId> {
    private final int declaringClassIndex;
    private final Dex dex;
    private final int nameIndex;
    private final int typeIndex;

    public FieldId(Dex dex, int i2, int i4, int i5) {
        this.dex = dex;
        this.declaringClassIndex = i2;
        this.typeIndex = i4;
        this.nameIndex = i5;
    }

    public int getDeclaringClassIndex() {
        return this.declaringClassIndex;
    }

    public int getNameIndex() {
        return this.nameIndex;
    }

    public int getTypeIndex() {
        return this.typeIndex;
    }

    public String toString() {
        if (this.dex == null) {
            return this.declaringClassIndex + " " + this.typeIndex + " " + this.nameIndex;
        }
        return this.dex.typeNames().get(this.typeIndex) + g0.f27568a + this.dex.strings().get(this.nameIndex);
    }

    public void writeTo(Dex.Section section) {
        section.writeUnsignedShort(this.declaringClassIndex);
        section.writeUnsignedShort(this.typeIndex);
        section.writeInt(this.nameIndex);
    }

    @Override // java.lang.Comparable
    public int compareTo(FieldId fieldId) {
        int i2 = this.declaringClassIndex;
        int i4 = fieldId.declaringClassIndex;
        if (i2 != i4) {
            return Unsigned.compare(i2, i4);
        }
        int i5 = this.nameIndex;
        int i6 = fieldId.nameIndex;
        if (i5 != i6) {
            return Unsigned.compare(i5, i6);
        }
        return Unsigned.compare(this.typeIndex, fieldId.typeIndex);
    }
}
