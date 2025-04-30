package com.android.dx.cf.code;

import com.android.dx.rop.cst.CstMethodHandle;
import com.android.dx.rop.cst.CstType;
import com.android.dx.util.FixedSizeList;
import java.util.Objects;
/* loaded from: classes2.dex */
public class BootstrapMethodsList extends FixedSizeList {
    public static final BootstrapMethodsList EMPTY = new BootstrapMethodsList(0);

    /* loaded from: classes2.dex */
    public static class Item {
        private final BootstrapMethodArgumentsList bootstrapMethodArgumentsList;
        private final CstMethodHandle bootstrapMethodHandle;
        private final CstType declaringClass;

        public Item(CstType cstType, CstMethodHandle cstMethodHandle, BootstrapMethodArgumentsList bootstrapMethodArgumentsList) {
            Objects.requireNonNull(cstType, "declaringClass == null");
            Objects.requireNonNull(cstMethodHandle, "bootstrapMethodHandle == null");
            Objects.requireNonNull(bootstrapMethodArgumentsList, "bootstrapMethodArguments == null");
            this.bootstrapMethodHandle = cstMethodHandle;
            this.bootstrapMethodArgumentsList = bootstrapMethodArgumentsList;
            this.declaringClass = cstType;
        }

        public BootstrapMethodArgumentsList getBootstrapMethodArguments() {
            return this.bootstrapMethodArgumentsList;
        }

        public CstMethodHandle getBootstrapMethodHandle() {
            return this.bootstrapMethodHandle;
        }

        public CstType getDeclaringClass() {
            return this.declaringClass;
        }
    }

    public BootstrapMethodsList(int i2) {
        super(i2);
    }

    public static BootstrapMethodsList concat(BootstrapMethodsList bootstrapMethodsList, BootstrapMethodsList bootstrapMethodsList2) {
        BootstrapMethodsList bootstrapMethodsList3 = EMPTY;
        if (bootstrapMethodsList == bootstrapMethodsList3) {
            return bootstrapMethodsList2;
        }
        if (bootstrapMethodsList2 == bootstrapMethodsList3) {
            return bootstrapMethodsList;
        }
        int size = bootstrapMethodsList.size();
        int size2 = bootstrapMethodsList2.size();
        BootstrapMethodsList bootstrapMethodsList4 = new BootstrapMethodsList(size + size2);
        for (int i2 = 0; i2 < size; i2++) {
            bootstrapMethodsList4.set(i2, bootstrapMethodsList.get(i2));
        }
        for (int i4 = 0; i4 < size2; i4++) {
            bootstrapMethodsList4.set(size + i4, bootstrapMethodsList2.get(i4));
        }
        return bootstrapMethodsList4;
    }

    public Item get(int i2) {
        return (Item) get0(i2);
    }

    public void set(int i2, Item item) {
        Objects.requireNonNull(item, "item == null");
        set0(i2, item);
    }

    public void set(int i2, CstType cstType, CstMethodHandle cstMethodHandle, BootstrapMethodArgumentsList bootstrapMethodArgumentsList) {
        set(i2, new Item(cstType, cstMethodHandle, bootstrapMethodArgumentsList));
    }
}
