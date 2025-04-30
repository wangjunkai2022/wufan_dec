package com.android.dx.dex.file;

import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstProtoRef;
import com.android.dx.rop.type.Prototype;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public final class ProtoIdsSection extends UniformItemSection {
    private final TreeMap<Prototype, ProtoIdItem> protoIds;

    public ProtoIdsSection(DexFile dexFile) {
        super("proto_ids", dexFile, 4);
        this.protoIds = new TreeMap<>();
    }

    @Override // com.android.dx.dex.file.UniformItemSection
    public IndexedItem get(Constant constant) {
        Objects.requireNonNull(constant, "cst == null");
        if (constant instanceof CstProtoRef) {
            throwIfNotPrepared();
            ProtoIdItem protoIdItem = this.protoIds.get(((CstProtoRef) constant).getPrototype());
            if (protoIdItem != null) {
                return protoIdItem;
            }
            throw new IllegalArgumentException("not found");
        }
        throw new IllegalArgumentException("cst not instance of CstProtoRef");
    }

    public int indexOf(Prototype prototype) {
        Objects.requireNonNull(prototype, "prototype == null");
        throwIfNotPrepared();
        ProtoIdItem protoIdItem = this.protoIds.get(prototype);
        if (protoIdItem != null) {
            return protoIdItem.getIndex();
        }
        throw new IllegalArgumentException("not found");
    }

    public synchronized ProtoIdItem intern(Prototype prototype) {
        ProtoIdItem protoIdItem;
        if (prototype != null) {
            throwIfPrepared();
            protoIdItem = this.protoIds.get(prototype);
            if (protoIdItem == null) {
                protoIdItem = new ProtoIdItem(prototype);
                this.protoIds.put(prototype, protoIdItem);
            }
        } else {
            throw new NullPointerException("prototype == null");
        }
        return protoIdItem;
    }

    @Override // com.android.dx.dex.file.Section
    public Collection<? extends Item> items() {
        return this.protoIds.values();
    }

    @Override // com.android.dx.dex.file.UniformItemSection
    protected void orderItems() {
        Iterator<? extends Item> it2 = items().iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            ((ProtoIdItem) it2.next()).setIndex(i2);
            i2++;
        }
    }

    public void writeHeaderPart(AnnotatedOutput annotatedOutput) {
        throwIfNotPrepared();
        int size = this.protoIds.size();
        int fileOffset = size == 0 ? 0 : getFileOffset();
        if (size <= 65536) {
            if (annotatedOutput.annotates()) {
                annotatedOutput.annotate(4, "proto_ids_size:  " + Hex.u4(size));
                annotatedOutput.annotate(4, "proto_ids_off:   " + Hex.u4(fileOffset));
            }
            annotatedOutput.writeInt(size);
            annotatedOutput.writeInt(fileOffset);
            return;
        }
        throw new UnsupportedOperationException("too many proto ids");
    }
}
