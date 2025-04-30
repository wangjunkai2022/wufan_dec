package com.android.dx.dex.code;

import com.android.dx.util.FixedSizeList;
/* loaded from: classes2.dex */
public final class CatchTable extends FixedSizeList implements Comparable<CatchTable> {
    public static final CatchTable EMPTY = new CatchTable(0);

    /* loaded from: classes2.dex */
    public static class Entry implements Comparable<Entry> {
        private final int end;
        private final CatchHandlerList handlers;
        private final int start;

        public Entry(int i2, int i4, CatchHandlerList catchHandlerList) {
            if (i2 < 0) {
                throw new IllegalArgumentException("start < 0");
            }
            if (i4 > i2) {
                if (!catchHandlerList.isMutable()) {
                    this.start = i2;
                    this.end = i4;
                    this.handlers = catchHandlerList;
                    return;
                }
                throw new IllegalArgumentException("handlers.isMutable()");
            }
            throw new IllegalArgumentException("end <= start");
        }

        public boolean equals(Object obj) {
            return (obj instanceof Entry) && compareTo((Entry) obj) == 0;
        }

        public int getEnd() {
            return this.end;
        }

        public CatchHandlerList getHandlers() {
            return this.handlers;
        }

        public int getStart() {
            return this.start;
        }

        public int hashCode() {
            return (((this.start * 31) + this.end) * 31) + this.handlers.hashCode();
        }

        @Override // java.lang.Comparable
        public int compareTo(Entry entry) {
            int i2 = this.start;
            int i4 = entry.start;
            if (i2 < i4) {
                return -1;
            }
            if (i2 > i4) {
                return 1;
            }
            int i5 = this.end;
            int i6 = entry.end;
            if (i5 < i6) {
                return -1;
            }
            if (i5 > i6) {
                return 1;
            }
            return this.handlers.compareTo(entry.handlers);
        }
    }

    public CatchTable(int i2) {
        super(i2);
    }

    public Entry get(int i2) {
        return (Entry) get0(i2);
    }

    public void set(int i2, Entry entry) {
        set0(i2, entry);
    }

    @Override // java.lang.Comparable
    public int compareTo(CatchTable catchTable) {
        if (this == catchTable) {
            return 0;
        }
        int size = size();
        int size2 = catchTable.size();
        int min = Math.min(size, size2);
        for (int i2 = 0; i2 < min; i2++) {
            int compareTo = get(i2).compareTo(catchTable.get(i2));
            if (compareTo != 0) {
                return compareTo;
            }
        }
        if (size < size2) {
            return -1;
        }
        return size > size2 ? 1 : 0;
    }
}
