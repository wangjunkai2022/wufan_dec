package com.android.dx.cf.code;

import com.android.dx.rop.code.LocalItem;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.type.Type;
import com.android.dx.util.FixedSizeList;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class LocalVariableList extends FixedSizeList {
    public static final LocalVariableList EMPTY = new LocalVariableList(0);

    /* loaded from: classes2.dex */
    public static class Item {
        private final CstString descriptor;
        private final int index;
        private final int length;
        private final CstString name;
        private final CstString signature;
        private final int startPc;

        public Item(int i2, int i4, CstString cstString, CstString cstString2, CstString cstString3, int i5) {
            if (i2 < 0) {
                throw new IllegalArgumentException("startPc < 0");
            }
            if (i4 >= 0) {
                Objects.requireNonNull(cstString, "name == null");
                if (cstString2 == null) {
                    Objects.requireNonNull(cstString3, "(descriptor == null) && (signature == null)");
                }
                if (i5 >= 0) {
                    this.startPc = i2;
                    this.length = i4;
                    this.name = cstString;
                    this.descriptor = cstString2;
                    this.signature = cstString3;
                    this.index = i5;
                    return;
                }
                throw new IllegalArgumentException("index < 0");
            }
            throw new IllegalArgumentException("length < 0");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public CstString getSignature() {
            return this.signature;
        }

        public CstString getDescriptor() {
            return this.descriptor;
        }

        public int getIndex() {
            return this.index;
        }

        public int getLength() {
            return this.length;
        }

        public LocalItem getLocalItem() {
            return LocalItem.make(this.name, this.signature);
        }

        public int getStartPc() {
            return this.startPc;
        }

        public Type getType() {
            return Type.intern(this.descriptor.getString());
        }

        public boolean matchesAllButType(Item item) {
            return this.startPc == item.startPc && this.length == item.length && this.index == item.index && this.name.equals(item.name);
        }

        public boolean matchesPcAndIndex(int i2, int i4) {
            int i5;
            return i4 == this.index && i2 >= (i5 = this.startPc) && i2 < i5 + this.length;
        }

        public Item withSignature(CstString cstString) {
            return new Item(this.startPc, this.length, this.name, this.descriptor, cstString, this.index);
        }
    }

    public LocalVariableList(int i2) {
        super(i2);
    }

    public static LocalVariableList concat(LocalVariableList localVariableList, LocalVariableList localVariableList2) {
        if (localVariableList == EMPTY) {
            return localVariableList2;
        }
        int size = localVariableList.size();
        int size2 = localVariableList2.size();
        LocalVariableList localVariableList3 = new LocalVariableList(size + size2);
        for (int i2 = 0; i2 < size; i2++) {
            localVariableList3.set(i2, localVariableList.get(i2));
        }
        for (int i4 = 0; i4 < size2; i4++) {
            localVariableList3.set(size + i4, localVariableList2.get(i4));
        }
        localVariableList3.setImmutable();
        return localVariableList3;
    }

    public static LocalVariableList mergeDescriptorsAndSignatures(LocalVariableList localVariableList, LocalVariableList localVariableList2) {
        int size = localVariableList.size();
        LocalVariableList localVariableList3 = new LocalVariableList(size);
        for (int i2 = 0; i2 < size; i2++) {
            Item item = localVariableList.get(i2);
            Item itemToLocal = localVariableList2.itemToLocal(item);
            if (itemToLocal != null) {
                item = item.withSignature(itemToLocal.getSignature());
            }
            localVariableList3.set(i2, item);
        }
        localVariableList3.setImmutable();
        return localVariableList3;
    }

    public Item get(int i2) {
        return (Item) get0(i2);
    }

    public Item itemToLocal(Item item) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            Item item2 = (Item) get0(i2);
            if (item2 != null && item2.matchesAllButType(item)) {
                return item2;
            }
        }
        return null;
    }

    public Item pcAndIndexToLocal(int i2, int i4) {
        int size = size();
        for (int i5 = 0; i5 < size; i5++) {
            Item item = (Item) get0(i5);
            if (item != null && item.matchesPcAndIndex(i2, i4)) {
                return item;
            }
        }
        return null;
    }

    public void set(int i2, Item item) {
        Objects.requireNonNull(item, "item == null");
        set0(i2, item);
    }

    public void set(int i2, int i4, int i5, CstString cstString, CstString cstString2, CstString cstString3, int i6) {
        set0(i2, new Item(i4, i5, cstString, cstString2, cstString3, i6));
    }
}
