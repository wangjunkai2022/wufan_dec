package com.android.dx.dex.file;

import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstFieldRef;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import java.util.Collection;
import java.util.Objects;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public final class FieldIdsSection extends MemberIdsSection {
    private final TreeMap<CstFieldRef, FieldIdItem> fieldIds;

    public FieldIdsSection(DexFile dexFile) {
        super("field_ids", dexFile);
        this.fieldIds = new TreeMap<>();
    }

    @Override // com.android.dx.dex.file.UniformItemSection
    public IndexedItem get(Constant constant) {
        Objects.requireNonNull(constant, "cst == null");
        throwIfNotPrepared();
        FieldIdItem fieldIdItem = this.fieldIds.get((CstFieldRef) constant);
        if (fieldIdItem != null) {
            return fieldIdItem;
        }
        throw new IllegalArgumentException("not found");
    }

    public int indexOf(CstFieldRef cstFieldRef) {
        Objects.requireNonNull(cstFieldRef, "ref == null");
        throwIfNotPrepared();
        FieldIdItem fieldIdItem = this.fieldIds.get(cstFieldRef);
        if (fieldIdItem != null) {
            return fieldIdItem.getIndex();
        }
        throw new IllegalArgumentException("not found");
    }

    public synchronized FieldIdItem intern(CstFieldRef cstFieldRef) {
        FieldIdItem fieldIdItem;
        if (cstFieldRef != null) {
            throwIfPrepared();
            fieldIdItem = this.fieldIds.get(cstFieldRef);
            if (fieldIdItem == null) {
                fieldIdItem = new FieldIdItem(cstFieldRef);
                this.fieldIds.put(cstFieldRef, fieldIdItem);
            }
        } else {
            throw new NullPointerException("field == null");
        }
        return fieldIdItem;
    }

    @Override // com.android.dx.dex.file.Section
    public Collection<? extends Item> items() {
        return this.fieldIds.values();
    }

    public void writeHeaderPart(AnnotatedOutput annotatedOutput) {
        throwIfNotPrepared();
        int size = this.fieldIds.size();
        int fileOffset = size == 0 ? 0 : getFileOffset();
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(4, "field_ids_size:  " + Hex.u4(size));
            annotatedOutput.annotate(4, "field_ids_off:   " + Hex.u4(fileOffset));
        }
        annotatedOutput.writeInt(size);
        annotatedOutput.writeInt(fileOffset);
    }
}
