package com.android.dx.merge;

import com.android.dex.ClassDef;
import com.android.dex.Dex;
import com.android.dex.DexException;
import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class SortableType {
    public static final Comparator<SortableType> NULLS_LAST_ORDER = new Comparator<SortableType>() { // from class: com.android.dx.merge.SortableType.1
        @Override // java.util.Comparator
        public int compare(SortableType sortableType, SortableType sortableType2) {
            int typeIndex;
            int typeIndex2;
            if (sortableType == sortableType2) {
                return 0;
            }
            if (sortableType2 == null) {
                return -1;
            }
            if (sortableType == null) {
                return 1;
            }
            if (sortableType.depth != sortableType2.depth) {
                typeIndex = sortableType.depth;
                typeIndex2 = sortableType2.depth;
            } else {
                typeIndex = sortableType.getTypeIndex();
                typeIndex2 = sortableType2.getTypeIndex();
            }
            return typeIndex - typeIndex2;
        }
    };
    private final ClassDef classDef;
    private int depth = -1;
    private final Dex dex;
    private final IndexMap indexMap;

    public SortableType(Dex dex, IndexMap indexMap, ClassDef classDef) {
        this.dex = dex;
        this.indexMap = indexMap;
        this.classDef = classDef;
    }

    public ClassDef getClassDef() {
        return this.classDef;
    }

    public Dex getDex() {
        return this.dex;
    }

    public IndexMap getIndexMap() {
        return this.indexMap;
    }

    public int getTypeIndex() {
        return this.classDef.getTypeIndex();
    }

    public boolean isDepthAssigned() {
        return this.depth != -1;
    }

    public boolean tryAssignDepth(SortableType[] sortableTypeArr) {
        int i2;
        if (this.classDef.getSupertypeIndex() == -1) {
            i2 = 0;
        } else if (this.classDef.getSupertypeIndex() != this.classDef.getTypeIndex()) {
            SortableType sortableType = sortableTypeArr[this.classDef.getSupertypeIndex()];
            if (sortableType == null) {
                i2 = 1;
            } else {
                i2 = sortableType.depth;
                if (i2 == -1) {
                    return false;
                }
            }
        } else {
            throw new DexException("Class with type index " + this.classDef.getTypeIndex() + " extends itself");
        }
        for (short s3 : this.classDef.getInterfaces()) {
            SortableType sortableType2 = sortableTypeArr[s3];
            if (sortableType2 == null) {
                i2 = Math.max(i2, 1);
            } else {
                int i4 = sortableType2.depth;
                if (i4 == -1) {
                    return false;
                }
                i2 = Math.max(i2, i4);
            }
        }
        this.depth = i2 + 1;
        return true;
    }
}
