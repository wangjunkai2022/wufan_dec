package com.android.dx.dex.code;

import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstType;
import com.android.dx.util.FixedSizeList;
import com.android.dx.util.Hex;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class CatchHandlerList extends FixedSizeList implements Comparable<CatchHandlerList> {
    public static final CatchHandlerList EMPTY = new CatchHandlerList(0);

    /* loaded from: classes2.dex */
    public static class Entry implements Comparable<Entry> {
        private final CstType exceptionType;
        private final int handler;

        public Entry(CstType cstType, int i2) {
            if (i2 >= 0) {
                Objects.requireNonNull(cstType, "exceptionType == null");
                this.handler = i2;
                this.exceptionType = cstType;
                return;
            }
            throw new IllegalArgumentException("handler < 0");
        }

        public boolean equals(Object obj) {
            return (obj instanceof Entry) && compareTo((Entry) obj) == 0;
        }

        public CstType getExceptionType() {
            return this.exceptionType;
        }

        public int getHandler() {
            return this.handler;
        }

        public int hashCode() {
            return (this.handler * 31) + this.exceptionType.hashCode();
        }

        @Override // java.lang.Comparable
        public int compareTo(Entry entry) {
            int i2 = this.handler;
            int i4 = entry.handler;
            if (i2 < i4) {
                return -1;
            }
            if (i2 > i4) {
                return 1;
            }
            return this.exceptionType.compareTo((Constant) entry.exceptionType);
        }
    }

    public CatchHandlerList(int i2) {
        super(i2);
    }

    public boolean catchesAll() {
        int size = size();
        if (size == 0) {
            return false;
        }
        return get(size - 1).getExceptionType().equals(CstType.OBJECT);
    }

    public Entry get(int i2) {
        return (Entry) get0(i2);
    }

    public void set(int i2, CstType cstType, int i4) {
        set0(i2, new Entry(cstType, i4));
    }

    @Override // com.android.dx.util.FixedSizeList, com.android.dx.util.ToHuman
    public String toHuman() {
        return toHuman("", "");
    }

    @Override // java.lang.Comparable
    public int compareTo(CatchHandlerList catchHandlerList) {
        if (this == catchHandlerList) {
            return 0;
        }
        int size = size();
        int size2 = catchHandlerList.size();
        int min = Math.min(size, size2);
        for (int i2 = 0; i2 < min; i2++) {
            int compareTo = get(i2).compareTo(catchHandlerList.get(i2));
            if (compareTo != 0) {
                return compareTo;
            }
        }
        if (size < size2) {
            return -1;
        }
        return size > size2 ? 1 : 0;
    }

    public void set(int i2, Entry entry) {
        set0(i2, entry);
    }

    public String toHuman(String str, String str2) {
        StringBuilder sb = new StringBuilder(100);
        int size = size();
        sb.append(str);
        sb.append(str2);
        sb.append("catch ");
        for (int i2 = 0; i2 < size; i2++) {
            Entry entry = get(i2);
            if (i2 != 0) {
                sb.append(",\n");
                sb.append(str);
                sb.append("  ");
            }
            if (i2 == size - 1 && catchesAll()) {
                sb.append("<any>");
            } else {
                sb.append(entry.getExceptionType().toHuman());
            }
            sb.append(" -> ");
            sb.append(Hex.u2or4(entry.getHandler()));
        }
        return sb.toString();
    }
}
