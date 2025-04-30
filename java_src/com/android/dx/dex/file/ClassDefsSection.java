package com.android.dx.dex.file;

import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeList;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Objects;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public final class ClassDefsSection extends UniformItemSection {
    private final TreeMap<Type, ClassDefItem> classDefs;
    private ArrayList<ClassDefItem> orderedDefs;

    public ClassDefsSection(DexFile dexFile) {
        super("class_defs", dexFile, 4);
        this.classDefs = new TreeMap<>();
        this.orderedDefs = null;
    }

    private int orderItems0(Type type, int i2, int i4) {
        ClassDefItem classDefItem = this.classDefs.get(type);
        if (classDefItem == null || classDefItem.hasIndex()) {
            return i2;
        }
        if (i4 >= 0) {
            int i5 = i4 - 1;
            CstType superclass = classDefItem.getSuperclass();
            if (superclass != null) {
                i2 = orderItems0(superclass.getClassType(), i2, i5);
            }
            TypeList interfaces = classDefItem.getInterfaces();
            int size = interfaces.size();
            for (int i6 = 0; i6 < size; i6++) {
                i2 = orderItems0(interfaces.getType(i6), i2, i5);
            }
            classDefItem.setIndex(i2);
            this.orderedDefs.add(classDefItem);
            return i2 + 1;
        }
        throw new RuntimeException("class circularity with " + type);
    }

    public void add(ClassDefItem classDefItem) {
        try {
            Type classType = classDefItem.getThisClass().getClassType();
            throwIfPrepared();
            if (this.classDefs.get(classType) == null) {
                this.classDefs.put(classType, classDefItem);
                return;
            }
            throw new IllegalArgumentException("already added: " + classType);
        } catch (NullPointerException unused) {
            throw new NullPointerException("clazz == null");
        }
    }

    @Override // com.android.dx.dex.file.UniformItemSection
    public IndexedItem get(Constant constant) {
        Objects.requireNonNull(constant, "cst == null");
        throwIfNotPrepared();
        ClassDefItem classDefItem = this.classDefs.get(((CstType) constant).getClassType());
        if (classDefItem != null) {
            return classDefItem;
        }
        throw new IllegalArgumentException("not found");
    }

    @Override // com.android.dx.dex.file.Section
    public Collection<? extends Item> items() {
        ArrayList<ClassDefItem> arrayList = this.orderedDefs;
        return arrayList != null ? arrayList : this.classDefs.values();
    }

    @Override // com.android.dx.dex.file.UniformItemSection
    protected void orderItems() {
        int size = this.classDefs.size();
        this.orderedDefs = new ArrayList<>(size);
        int i2 = 0;
        for (Type type : this.classDefs.keySet()) {
            i2 = orderItems0(type, i2, size - i2);
        }
    }

    public void writeHeaderPart(AnnotatedOutput annotatedOutput) {
        throwIfNotPrepared();
        int size = this.classDefs.size();
        int fileOffset = size == 0 ? 0 : getFileOffset();
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(4, "class_defs_size: " + Hex.u4(size));
            annotatedOutput.annotate(4, "class_defs_off:  " + Hex.u4(fileOffset));
        }
        annotatedOutput.writeInt(size);
        annotatedOutput.writeInt(fileOffset);
    }
}
