package com.android.dx.io;

import com.android.dex.ClassDef;
import com.android.dex.Dex;
import com.android.dex.FieldId;
import com.android.dex.MethodId;
import com.android.dex.ProtoId;
import com.android.dex.TableOfContents;
import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.util.Iterator;
/* loaded from: classes2.dex */
public final class DexIndexPrinter {
    private final Dex dex;
    private final TableOfContents tableOfContents;

    public DexIndexPrinter(File file) throws IOException {
        Dex dex = new Dex(file);
        this.dex = dex;
        this.tableOfContents = dex.getTableOfContents();
    }

    public static void main(String[] strArr) throws IOException {
        DexIndexPrinter dexIndexPrinter = new DexIndexPrinter(new File(strArr[0]));
        dexIndexPrinter.printMap();
        dexIndexPrinter.printStrings();
        dexIndexPrinter.printTypeIds();
        dexIndexPrinter.printProtoIds();
        dexIndexPrinter.printFieldIds();
        dexIndexPrinter.printMethodIds();
        dexIndexPrinter.printTypeLists();
        dexIndexPrinter.printClassDefs();
    }

    private void printClassDefs() {
        Iterator<ClassDef> it2 = this.dex.classDefs().iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            PrintStream printStream = System.out;
            printStream.println("class def " + i2 + ": " + it2.next());
            i2++;
        }
    }

    private void printFieldIds() throws IOException {
        Iterator<FieldId> it2 = this.dex.fieldIds().iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            PrintStream printStream = System.out;
            printStream.println("field " + i2 + ": " + it2.next());
            i2++;
        }
    }

    private void printMap() {
        TableOfContents.Section[] sectionArr;
        for (TableOfContents.Section section : this.tableOfContents.sections) {
            if (section.off != -1) {
                System.out.println("section " + Integer.toHexString(section.type) + " off=" + Integer.toHexString(section.off) + " size=" + Integer.toHexString(section.size) + " byteCount=" + Integer.toHexString(section.byteCount));
            }
        }
    }

    private void printMethodIds() throws IOException {
        Iterator<MethodId> it2 = this.dex.methodIds().iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            PrintStream printStream = System.out;
            printStream.println("methodId " + i2 + ": " + it2.next());
            i2++;
        }
    }

    private void printProtoIds() throws IOException {
        Iterator<ProtoId> it2 = this.dex.protoIds().iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            PrintStream printStream = System.out;
            printStream.println("proto " + i2 + ": " + it2.next());
            i2++;
        }
    }

    private void printStrings() throws IOException {
        Iterator<String> it2 = this.dex.strings().iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            PrintStream printStream = System.out;
            printStream.println("string " + i2 + ": " + it2.next());
            i2++;
        }
    }

    private void printTypeIds() throws IOException {
        Iterator<Integer> it2 = this.dex.typeIds().iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            PrintStream printStream = System.out;
            printStream.println("type " + i2 + ": " + this.dex.strings().get(it2.next().intValue()));
            i2++;
        }
    }

    private void printTypeLists() throws IOException {
        int i2 = this.tableOfContents.typeLists.off;
        if (i2 == -1) {
            System.out.println("No type lists");
            return;
        }
        Dex.Section open = this.dex.open(i2);
        for (int i4 = 0; i4 < this.tableOfContents.typeLists.size; i4++) {
            int readInt = open.readInt();
            PrintStream printStream = System.out;
            printStream.print("Type list i=" + i4 + ", size=" + readInt + ", elements=");
            for (int i5 = 0; i5 < readInt; i5++) {
                PrintStream printStream2 = System.out;
                printStream2.print(" " + this.dex.typeNames().get(open.readShort()));
            }
            if (readInt % 2 == 1) {
                open.readShort();
            }
            System.out.println();
        }
    }
}
