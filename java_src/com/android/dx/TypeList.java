package com.android.dx;

import com.android.dx.rop.type.StdTypeList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class TypeList {
    final StdTypeList ropTypes;
    final TypeId<?>[] types;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TypeList(TypeId<?>[] types) {
        this.types = (TypeId[]) types.clone();
        this.ropTypes = new StdTypeList(types.length);
        for (int i2 = 0; i2 < types.length; i2++) {
            this.ropTypes.set(i2, types[i2].ropType);
        }
    }

    public List<TypeId<?>> asList() {
        return Collections.unmodifiableList(Arrays.asList(this.types));
    }

    public boolean equals(Object o3) {
        return (o3 instanceof TypeList) && Arrays.equals(((TypeList) o3).types, this.types);
    }

    public int hashCode() {
        return Arrays.hashCode(this.types);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < this.types.length; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(this.types[i2]);
        }
        return sb.toString();
    }
}
