package com.android.dx.cf.attrib;

import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.util.FixedSizeList;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class InnerClassList extends FixedSizeList {

    /* loaded from: classes2.dex */
    public static class Item {
        private final int accessFlags;
        private final CstType innerClass;
        private final CstString innerName;
        private final CstType outerClass;

        public Item(CstType cstType, CstType cstType2, CstString cstString, int i2) {
            Objects.requireNonNull(cstType, "innerClass == null");
            this.innerClass = cstType;
            this.outerClass = cstType2;
            this.innerName = cstString;
            this.accessFlags = i2;
        }

        public int getAccessFlags() {
            return this.accessFlags;
        }

        public CstType getInnerClass() {
            return this.innerClass;
        }

        public CstString getInnerName() {
            return this.innerName;
        }

        public CstType getOuterClass() {
            return this.outerClass;
        }
    }

    public InnerClassList(int i2) {
        super(i2);
    }

    public Item get(int i2) {
        return (Item) get0(i2);
    }

    public void set(int i2, CstType cstType, CstType cstType2, CstString cstString, int i4) {
        set0(i2, new Item(cstType, cstType2, cstString, i4));
    }
}
