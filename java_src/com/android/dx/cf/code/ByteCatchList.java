package com.android.dx.cf.code;

import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.TypeList;
import com.android.dx.util.FixedSizeList;
import com.android.dx.util.IntList;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ByteCatchList extends FixedSizeList {
    public static final ByteCatchList EMPTY = new ByteCatchList(0);

    /* loaded from: classes2.dex */
    public static class Item {
        private final int endPc;
        private final CstType exceptionClass;
        private final int handlerPc;
        private final int startPc;

        public Item(int i2, int i4, int i5, CstType cstType) {
            if (i2 < 0) {
                throw new IllegalArgumentException("startPc < 0");
            }
            if (i4 < i2) {
                throw new IllegalArgumentException("endPc < startPc");
            }
            if (i5 >= 0) {
                this.startPc = i2;
                this.endPc = i4;
                this.handlerPc = i5;
                this.exceptionClass = cstType;
                return;
            }
            throw new IllegalArgumentException("handlerPc < 0");
        }

        public boolean covers(int i2) {
            return i2 >= this.startPc && i2 < this.endPc;
        }

        public int getEndPc() {
            return this.endPc;
        }

        public CstType getExceptionClass() {
            CstType cstType = this.exceptionClass;
            return cstType != null ? cstType : CstType.OBJECT;
        }

        public int getHandlerPc() {
            return this.handlerPc;
        }

        public int getStartPc() {
            return this.startPc;
        }
    }

    public ByteCatchList(int i2) {
        super(i2);
    }

    private static boolean typeNotFound(Item item, Item[] itemArr, int i2) {
        CstType exceptionClass = item.getExceptionClass();
        for (int i4 = 0; i4 < i2; i4++) {
            CstType exceptionClass2 = itemArr[i4].getExceptionClass();
            if (exceptionClass2 == exceptionClass || exceptionClass2 == CstType.OBJECT) {
                return false;
            }
        }
        return true;
    }

    public int byteLength() {
        return (size() * 8) + 2;
    }

    public Item get(int i2) {
        return (Item) get0(i2);
    }

    public ByteCatchList listFor(int i2) {
        int size = size();
        Item[] itemArr = new Item[size];
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            Item item = get(i5);
            if (item.covers(i2) && typeNotFound(item, itemArr, i4)) {
                itemArr[i4] = item;
                i4++;
            }
        }
        if (i4 == 0) {
            return EMPTY;
        }
        ByteCatchList byteCatchList = new ByteCatchList(i4);
        for (int i6 = 0; i6 < i4; i6++) {
            byteCatchList.set(i6, itemArr[i6]);
        }
        byteCatchList.setImmutable();
        return byteCatchList;
    }

    public void set(int i2, Item item) {
        Objects.requireNonNull(item, "item == null");
        set0(i2, item);
    }

    public TypeList toRopCatchList() {
        int size = size();
        if (size == 0) {
            return StdTypeList.EMPTY;
        }
        StdTypeList stdTypeList = new StdTypeList(size);
        for (int i2 = 0; i2 < size; i2++) {
            stdTypeList.set(i2, get(i2).getExceptionClass().getClassType());
        }
        stdTypeList.setImmutable();
        return stdTypeList;
    }

    public IntList toTargetList(int i2) {
        if (i2 >= -1) {
            int i4 = i2 >= 0 ? 1 : 0;
            int size = size();
            if (size == 0) {
                if (i4 != 0) {
                    return IntList.makeImmutable(i2);
                }
                return IntList.EMPTY;
            }
            IntList intList = new IntList(size + i4);
            for (int i5 = 0; i5 < size; i5++) {
                intList.add(get(i5).getHandlerPc());
            }
            if (i4 != 0) {
                intList.add(i2);
            }
            intList.setImmutable();
            return intList;
        }
        throw new IllegalArgumentException("noException < -1");
    }

    public void set(int i2, int i4, int i5, int i6, CstType cstType) {
        set0(i2, new Item(i4, i5, i6, cstType));
    }
}
