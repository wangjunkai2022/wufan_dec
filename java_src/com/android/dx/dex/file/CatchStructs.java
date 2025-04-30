package com.android.dx.dex.file;

import com.android.dx.dex.code.CatchHandlerList;
import com.android.dx.dex.code.CatchTable;
import com.android.dx.dex.code.DalvCode;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.ByteArrayAnnotatedOutput;
import com.android.dx.util.Hex;
import java.io.PrintWriter;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public final class CatchStructs {
    private static final int TRY_ITEM_WRITE_SIZE = 8;
    private final DalvCode code;
    private CatchTable table = null;
    private byte[] encodedHandlers = null;
    private int encodedHandlerHeaderSize = 0;
    private TreeMap<CatchHandlerList, Integer> handlerOffsets = null;

    public CatchStructs(DalvCode dalvCode) {
        this.code = dalvCode;
    }

    private static void annotateAndConsumeHandlers(CatchHandlerList catchHandlerList, int i2, int i4, String str, PrintWriter printWriter, AnnotatedOutput annotatedOutput) {
        String human = catchHandlerList.toHuman(str, Hex.u2(i2) + ": ");
        if (printWriter != null) {
            printWriter.println(human);
        }
        annotatedOutput.annotate(i4, human);
    }

    private void annotateEntries(String str, PrintWriter printWriter, AnnotatedOutput annotatedOutput) {
        CatchTable.Entry entry;
        finishProcessingIfNecessary();
        int i2 = 0;
        boolean z3 = annotatedOutput != null;
        int i4 = z3 ? 6 : 0;
        int i5 = z3 ? 2 : 0;
        int size = this.table.size();
        String str2 = str + "  ";
        if (z3) {
            annotatedOutput.annotate(0, str + "tries:");
        } else {
            printWriter.println(str + "tries:");
        }
        for (int i6 = 0; i6 < size; i6++) {
            CatchHandlerList handlers = this.table.get(i6).getHandlers();
            String str3 = str2 + "try " + Hex.u2or4(entry.getStart()) + ".." + Hex.u2or4(entry.getEnd());
            String human = handlers.toHuman(str2, "");
            if (z3) {
                annotatedOutput.annotate(i4, str3);
                annotatedOutput.annotate(i5, human);
            } else {
                printWriter.println(str3);
                printWriter.println(human);
            }
        }
        if (z3) {
            annotatedOutput.annotate(0, str + "handlers:");
            annotatedOutput.annotate(this.encodedHandlerHeaderSize, str2 + "size: " + Hex.u2(this.handlerOffsets.size()));
            CatchHandlerList catchHandlerList = null;
            for (Map.Entry<CatchHandlerList, Integer> entry2 : this.handlerOffsets.entrySet()) {
                CatchHandlerList key = entry2.getKey();
                int intValue = entry2.getValue().intValue();
                if (catchHandlerList != null) {
                    annotateAndConsumeHandlers(catchHandlerList, i2, intValue - i2, str2, printWriter, annotatedOutput);
                }
                catchHandlerList = key;
                i2 = intValue;
            }
            annotateAndConsumeHandlers(catchHandlerList, i2, this.encodedHandlers.length - i2, str2, printWriter, annotatedOutput);
        }
    }

    private void finishProcessingIfNecessary() {
        if (this.table == null) {
            this.table = this.code.getCatches();
        }
    }

    public void debugPrint(PrintWriter printWriter, String str) {
        annotateEntries(str, printWriter, null);
    }

    public void encode(DexFile dexFile) {
        finishProcessingIfNecessary();
        TypeIdsSection typeIds = dexFile.getTypeIds();
        int size = this.table.size();
        this.handlerOffsets = new TreeMap<>();
        for (int i2 = 0; i2 < size; i2++) {
            this.handlerOffsets.put(this.table.get(i2).getHandlers(), null);
        }
        if (this.handlerOffsets.size() <= 65535) {
            ByteArrayAnnotatedOutput byteArrayAnnotatedOutput = new ByteArrayAnnotatedOutput();
            this.encodedHandlerHeaderSize = byteArrayAnnotatedOutput.writeUleb128(this.handlerOffsets.size());
            for (Map.Entry<CatchHandlerList, Integer> entry : this.handlerOffsets.entrySet()) {
                CatchHandlerList key = entry.getKey();
                int size2 = key.size();
                boolean catchesAll = key.catchesAll();
                entry.setValue(Integer.valueOf(byteArrayAnnotatedOutput.getCursor()));
                if (catchesAll) {
                    byteArrayAnnotatedOutput.writeSleb128(-(size2 - 1));
                    size2--;
                } else {
                    byteArrayAnnotatedOutput.writeSleb128(size2);
                }
                for (int i4 = 0; i4 < size2; i4++) {
                    CatchHandlerList.Entry entry2 = key.get(i4);
                    byteArrayAnnotatedOutput.writeUleb128(typeIds.indexOf(entry2.getExceptionType()));
                    byteArrayAnnotatedOutput.writeUleb128(entry2.getHandler());
                }
                if (catchesAll) {
                    byteArrayAnnotatedOutput.writeUleb128(key.get(size2).getHandler());
                }
            }
            this.encodedHandlers = byteArrayAnnotatedOutput.toByteArray();
            return;
        }
        throw new UnsupportedOperationException("too many catch handlers");
    }

    public int triesSize() {
        finishProcessingIfNecessary();
        return this.table.size();
    }

    public int writeSize() {
        return (triesSize() * 8) + this.encodedHandlers.length;
    }

    public void writeTo(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        finishProcessingIfNecessary();
        if (annotatedOutput.annotates()) {
            annotateEntries("  ", null, annotatedOutput);
        }
        int size = this.table.size();
        for (int i2 = 0; i2 < size; i2++) {
            CatchTable.Entry entry = this.table.get(i2);
            int start = entry.getStart();
            int end = entry.getEnd();
            int i4 = end - start;
            if (i4 < 65536) {
                annotatedOutput.writeInt(start);
                annotatedOutput.writeShort(i4);
                annotatedOutput.writeShort(this.handlerOffsets.get(entry.getHandlers()).intValue());
            } else {
                throw new UnsupportedOperationException("bogus exception range: " + Hex.u4(start) + ".." + Hex.u4(end));
            }
        }
        annotatedOutput.write(this.encodedHandlers);
    }
}
