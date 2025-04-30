package com.android.dx.cf.code;

import com.android.dx.util.FixedSizeList;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class LineNumberList extends FixedSizeList {
    public static final LineNumberList EMPTY = new LineNumberList(0);

    /* loaded from: classes2.dex */
    public static class Item {
        private final int lineNumber;
        private final int startPc;

        public Item(int i2, int i4) {
            if (i2 < 0) {
                throw new IllegalArgumentException("startPc < 0");
            }
            if (i4 >= 0) {
                this.startPc = i2;
                this.lineNumber = i4;
                return;
            }
            throw new IllegalArgumentException("lineNumber < 0");
        }

        public int getLineNumber() {
            return this.lineNumber;
        }

        public int getStartPc() {
            return this.startPc;
        }
    }

    public LineNumberList(int i2) {
        super(i2);
    }

    public static LineNumberList concat(LineNumberList lineNumberList, LineNumberList lineNumberList2) {
        if (lineNumberList == EMPTY) {
            return lineNumberList2;
        }
        int size = lineNumberList.size();
        int size2 = lineNumberList2.size();
        LineNumberList lineNumberList3 = new LineNumberList(size + size2);
        for (int i2 = 0; i2 < size; i2++) {
            lineNumberList3.set(i2, lineNumberList.get(i2));
        }
        for (int i4 = 0; i4 < size2; i4++) {
            lineNumberList3.set(size + i4, lineNumberList2.get(i4));
        }
        return lineNumberList3;
    }

    public Item get(int i2) {
        return (Item) get0(i2);
    }

    public int pcToLine(int i2) {
        int size = size();
        int i4 = -1;
        int i5 = -1;
        for (int i6 = 0; i6 < size; i6++) {
            Item item = get(i6);
            int startPc = item.getStartPc();
            if (startPc <= i2 && startPc > i4) {
                i5 = item.getLineNumber();
                if (startPc == i2) {
                    break;
                }
                i4 = startPc;
            }
        }
        return i5;
    }

    public void set(int i2, Item item) {
        Objects.requireNonNull(item, "item == null");
        set0(i2, item);
    }

    public void set(int i2, int i4, int i5) {
        set0(i2, new Item(i4, i5));
    }
}
