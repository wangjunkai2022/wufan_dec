package com.android.dx.dex.file;

import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstArray;
import com.android.dx.rop.cst.CstLiteralBits;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.cst.Zeroes;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.ByteArrayAnnotatedOutput;
import com.android.dx.util.Writers;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ClassDataItem extends OffsettedItem {
    private final ArrayList<EncodedMethod> directMethods;
    private byte[] encodedForm;
    private final ArrayList<EncodedField> instanceFields;
    private final ArrayList<EncodedField> staticFields;
    private final HashMap<EncodedField, Constant> staticValues;
    private CstArray staticValuesConstant;
    private final CstType thisClass;
    private final ArrayList<EncodedMethod> virtualMethods;

    public ClassDataItem(CstType cstType) {
        super(1, -1);
        Objects.requireNonNull(cstType, "thisClass == null");
        this.thisClass = cstType;
        this.staticFields = new ArrayList<>(20);
        this.staticValues = new HashMap<>(40);
        this.instanceFields = new ArrayList<>(20);
        this.directMethods = new ArrayList<>(20);
        this.virtualMethods = new ArrayList<>(20);
        this.staticValuesConstant = null;
    }

    private static void encodeList(DexFile dexFile, AnnotatedOutput annotatedOutput, String str, ArrayList<? extends EncodedMember> arrayList) {
        int size = arrayList.size();
        if (size == 0) {
            return;
        }
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, "  " + str + ":");
        }
        int i2 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            i2 = arrayList.get(i4).encode(dexFile, annotatedOutput, i2, i4);
        }
    }

    private void encodeOutput(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        boolean annotates = annotatedOutput.annotates();
        if (annotates) {
            annotatedOutput.annotate(0, offsetString() + " class data for " + this.thisClass.toHuman());
        }
        encodeSize(dexFile, annotatedOutput, "static_fields", this.staticFields.size());
        encodeSize(dexFile, annotatedOutput, "instance_fields", this.instanceFields.size());
        encodeSize(dexFile, annotatedOutput, "direct_methods", this.directMethods.size());
        encodeSize(dexFile, annotatedOutput, "virtual_methods", this.virtualMethods.size());
        encodeList(dexFile, annotatedOutput, "static_fields", this.staticFields);
        encodeList(dexFile, annotatedOutput, "instance_fields", this.instanceFields);
        encodeList(dexFile, annotatedOutput, "direct_methods", this.directMethods);
        encodeList(dexFile, annotatedOutput, "virtual_methods", this.virtualMethods);
        if (annotates) {
            annotatedOutput.endAnnotation();
        }
    }

    private static void encodeSize(DexFile dexFile, AnnotatedOutput annotatedOutput, String str, int i2) {
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(String.format("  %-21s %08x", str + "_size:", Integer.valueOf(i2)));
        }
        annotatedOutput.writeUleb128(i2);
    }

    private CstArray makeStaticValuesConstant() {
        Collections.sort(this.staticFields);
        int size = this.staticFields.size();
        while (size > 0) {
            Constant constant = this.staticValues.get(this.staticFields.get(size - 1));
            if (constant instanceof CstLiteralBits) {
                if (((CstLiteralBits) constant).getLongBits() != 0) {
                    break;
                }
                size--;
            } else if (constant != null) {
                break;
            } else {
                size--;
            }
        }
        if (size == 0) {
            return null;
        }
        CstArray.List list = new CstArray.List(size);
        for (int i2 = 0; i2 < size; i2++) {
            EncodedField encodedField = this.staticFields.get(i2);
            Constant constant2 = this.staticValues.get(encodedField);
            if (constant2 == null) {
                constant2 = Zeroes.zeroFor(encodedField.getRef().getType());
            }
            list.set(i2, constant2);
        }
        list.setImmutable();
        return new CstArray(list);
    }

    @Override // com.android.dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        if (!this.staticFields.isEmpty()) {
            getStaticValuesConstant();
            Iterator<EncodedField> it2 = this.staticFields.iterator();
            while (it2.hasNext()) {
                it2.next().addContents(dexFile);
            }
        }
        if (!this.instanceFields.isEmpty()) {
            Collections.sort(this.instanceFields);
            Iterator<EncodedField> it3 = this.instanceFields.iterator();
            while (it3.hasNext()) {
                it3.next().addContents(dexFile);
            }
        }
        if (!this.directMethods.isEmpty()) {
            Collections.sort(this.directMethods);
            Iterator<EncodedMethod> it4 = this.directMethods.iterator();
            while (it4.hasNext()) {
                it4.next().addContents(dexFile);
            }
        }
        if (this.virtualMethods.isEmpty()) {
            return;
        }
        Collections.sort(this.virtualMethods);
        Iterator<EncodedMethod> it5 = this.virtualMethods.iterator();
        while (it5.hasNext()) {
            it5.next().addContents(dexFile);
        }
    }

    public void addDirectMethod(EncodedMethod encodedMethod) {
        Objects.requireNonNull(encodedMethod, "method == null");
        this.directMethods.add(encodedMethod);
    }

    public void addInstanceField(EncodedField encodedField) {
        Objects.requireNonNull(encodedField, "field == null");
        this.instanceFields.add(encodedField);
    }

    public void addStaticField(EncodedField encodedField, Constant constant) {
        Objects.requireNonNull(encodedField, "field == null");
        if (this.staticValuesConstant == null) {
            this.staticFields.add(encodedField);
            this.staticValues.put(encodedField, constant);
            return;
        }
        throw new UnsupportedOperationException("static fields already sorted");
    }

    public void addVirtualMethod(EncodedMethod encodedMethod) {
        Objects.requireNonNull(encodedMethod, "method == null");
        this.virtualMethods.add(encodedMethod);
    }

    public void debugPrint(Writer writer, boolean z3) {
        PrintWriter printWriterFor = Writers.printWriterFor(writer);
        int size = this.staticFields.size();
        for (int i2 = 0; i2 < size; i2++) {
            printWriterFor.println("  sfields[" + i2 + "]: " + this.staticFields.get(i2));
        }
        int size2 = this.instanceFields.size();
        for (int i4 = 0; i4 < size2; i4++) {
            printWriterFor.println("  ifields[" + i4 + "]: " + this.instanceFields.get(i4));
        }
        int size3 = this.directMethods.size();
        for (int i5 = 0; i5 < size3; i5++) {
            printWriterFor.println("  dmeths[" + i5 + "]:");
            this.directMethods.get(i5).debugPrint(printWriterFor, z3);
        }
        int size4 = this.virtualMethods.size();
        for (int i6 = 0; i6 < size4; i6++) {
            printWriterFor.println("  vmeths[" + i6 + "]:");
            this.virtualMethods.get(i6).debugPrint(printWriterFor, z3);
        }
    }

    public ArrayList<EncodedMethod> getMethods() {
        ArrayList<EncodedMethod> arrayList = new ArrayList<>(this.directMethods.size() + this.virtualMethods.size());
        arrayList.addAll(this.directMethods);
        arrayList.addAll(this.virtualMethods);
        return arrayList;
    }

    public CstArray getStaticValuesConstant() {
        if (this.staticValuesConstant == null && this.staticFields.size() != 0) {
            this.staticValuesConstant = makeStaticValuesConstant();
        }
        return this.staticValuesConstant;
    }

    public boolean isEmpty() {
        return this.staticFields.isEmpty() && this.instanceFields.isEmpty() && this.directMethods.isEmpty() && this.virtualMethods.isEmpty();
    }

    @Override // com.android.dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_CLASS_DATA_ITEM;
    }

    @Override // com.android.dx.dex.file.OffsettedItem
    protected void place0(Section section, int i2) {
        ByteArrayAnnotatedOutput byteArrayAnnotatedOutput = new ByteArrayAnnotatedOutput();
        encodeOutput(section.getFile(), byteArrayAnnotatedOutput);
        byte[] byteArray = byteArrayAnnotatedOutput.toByteArray();
        this.encodedForm = byteArray;
        setWriteSize(byteArray.length);
    }

    @Override // com.android.dx.dex.file.OffsettedItem
    public String toHuman() {
        return toString();
    }

    @Override // com.android.dx.dex.file.OffsettedItem
    public void writeTo0(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        if (annotatedOutput.annotates()) {
            encodeOutput(dexFile, annotatedOutput);
        } else {
            annotatedOutput.write(this.encodedForm);
        }
    }
}
