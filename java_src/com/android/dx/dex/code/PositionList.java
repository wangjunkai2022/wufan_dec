package com.android.dx.dex.code;

import com.android.dx.rop.code.SourcePosition;
import com.android.dx.util.FixedSizeList;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class PositionList extends FixedSizeList {
    public static final PositionList EMPTY = new PositionList(0);
    public static final int IMPORTANT = 3;
    public static final int LINES = 2;
    public static final int NONE = 1;

    /* loaded from: classes2.dex */
    public static class Entry {
        private final int address;
        private final SourcePosition position;

        public Entry(int i2, SourcePosition sourcePosition) {
            if (i2 >= 0) {
                Objects.requireNonNull(sourcePosition, "position == null");
                this.address = i2;
                this.position = sourcePosition;
                return;
            }
            throw new IllegalArgumentException("address < 0");
        }

        public int getAddress() {
            return this.address;
        }

        public SourcePosition getPosition() {
            return this.position;
        }
    }

    public PositionList(int i2) {
        super(i2);
    }

    public static PositionList make(DalvInsnList dalvInsnList, int i2) {
        if (i2 != 1) {
            if (i2 != 2 && i2 != 3) {
                throw new IllegalArgumentException("bogus howMuch");
            }
            SourcePosition sourcePosition = SourcePosition.NO_INFO;
            int size = dalvInsnList.size();
            Entry[] entryArr = new Entry[size];
            SourcePosition sourcePosition2 = sourcePosition;
            int i4 = 0;
            boolean z3 = false;
            for (int i5 = 0; i5 < size; i5++) {
                DalvInsn dalvInsn = dalvInsnList.get(i5);
                if (dalvInsn instanceof CodeAddress) {
                    z3 = true;
                } else {
                    SourcePosition position = dalvInsn.getPosition();
                    if (!position.equals(sourcePosition) && !position.sameLine(sourcePosition2) && (i2 != 3 || z3)) {
                        entryArr[i4] = new Entry(dalvInsn.getAddress(), position);
                        i4++;
                        sourcePosition2 = position;
                        z3 = false;
                    }
                }
            }
            PositionList positionList = new PositionList(i4);
            for (int i6 = 0; i6 < i4; i6++) {
                positionList.set(i6, entryArr[i6]);
            }
            positionList.setImmutable();
            return positionList;
        }
        return EMPTY;
    }

    public Entry get(int i2) {
        return (Entry) get0(i2);
    }

    public void set(int i2, Entry entry) {
        set0(i2, entry);
    }
}
