package kotlin.io;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.internal.InlineOnly;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.sequences.Sequence;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FileReadWrite.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u0017\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a!\u0010\b\u001a\u00020\u0007*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0006\u001a\u00020\u0005H\u0087\b\u001a\u0017\u0010\n\u001a\u00020\t*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a!\u0010\f\u001a\u00020\u000b*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0006\u001a\u00020\u0005H\u0087\b\u001a\u0017\u0010\u000e\u001a\u00020\r*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\n\u0010\u0010\u001a\u00020\u000f*\u00020\u0000\u001a\u0012\u0010\u0013\u001a\u00020\u0012*\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u000f\u001a\u0012\u0010\u0014\u001a\u00020\u0012*\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u000f\u001a\u0014\u0010\u0016\u001a\u00020\u0015*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001\u001a\u001c\u0010\u0018\u001a\u00020\u0012*\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00152\b\b\u0002\u0010\u0002\u001a\u00020\u0001\u001a\u001c\u0010\u0019\u001a\u00020\u0012*\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00152\b\b\u0002\u0010\u0002\u001a\u00020\u0001\u001aB\u0010 \u001a\u00020\u0012*\u00020\u000026\u0010\u001f\u001a2\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\u00120\u001a\u001aJ\u0010 \u001a\u00020\u0012*\u00020\u00002\u0006\u0010!\u001a\u00020\u000526\u0010\u001f\u001a2\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\u00120\u001a\u001a7\u0010$\u001a\u00020\u0012*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012!\u0010\u001f\u001a\u001d\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(#\u0012\u0004\u0012\u00020\u00120\"\u001a\r\u0010&\u001a\u00020%*\u00020\u0000H\u0087\b\u001a\r\u0010(\u001a\u00020'*\u00020\u0000H\u0087\b\u001a\u001a\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00150)*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001\u001aD\u0010/\u001a\u00028\u0000\"\u0004\b\u0000\u0010+*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\u0018\u0010-\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150,\u0012\u0004\u0012\u00028\u00000\"H\u0086\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b/\u00100\u0082\u0002\u000f\n\u0006\b\u0011(.0\u0001\n\u0005\b\u009920\u0001¨\u00061"}, d2 = {"Ljava/io/File;", "Ljava/nio/charset/Charset;", "charset", "Ljava/io/InputStreamReader;", "reader", "", "bufferSize", "Ljava/io/BufferedReader;", "bufferedReader", "Ljava/io/OutputStreamWriter;", "writer", "Ljava/io/BufferedWriter;", "bufferedWriter", "Ljava/io/PrintWriter;", "printWriter", "", "readBytes", "array", "", "writeBytes", "appendBytes", "", "readText", "text", "writeText", "appendText", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "buffer", "bytesRead", "action", "forEachBlock", "blockSize", "Lkotlin/Function1;", "line", "forEachLine", "Ljava/io/FileInputStream;", "inputStream", "Ljava/io/FileOutputStream;", "outputStream", "", "readLines", "T", "Lkotlin/sequences/Sequence;", "block", "Requires newer compiler version to be inlined correctly.", "useLines", "(Ljava/io/File;Ljava/nio/charset/Charset;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/io/FilesKt")
/* loaded from: classes5.dex */
public class FilesKt__FileReadWriteKt extends FilesKt__FilePathComponentsKt {
    public static final void appendBytes(@NotNull File appendBytes, @NotNull byte[] array) {
        Intrinsics.checkNotNullParameter(appendBytes, "$this$appendBytes");
        Intrinsics.checkNotNullParameter(array, "array");
        FileOutputStream fileOutputStream = new FileOutputStream(appendBytes, true);
        try {
            fileOutputStream.write(array);
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(fileOutputStream, null);
        } finally {
        }
    }

    public static final void appendText(@NotNull File appendText, @NotNull String text, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(appendText, "$this$appendText");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(charset, "charset");
        byte[] bytes = text.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
        appendBytes(appendText, bytes);
    }

    public static /* synthetic */ void appendText$default(File file, String str, Charset charset, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            charset = Charsets.UTF_8;
        }
        appendText(file, str, charset);
    }

    @InlineOnly
    private static final BufferedReader bufferedReader(File file, Charset charset, int i2) {
        InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(file), charset);
        return inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, i2);
    }

    static /* synthetic */ BufferedReader bufferedReader$default(File file, Charset charset, int i2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        if ((i4 & 2) != 0) {
            i2 = 8192;
        }
        InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(file), charset);
        return inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, i2);
    }

    @InlineOnly
    private static final BufferedWriter bufferedWriter(File file, Charset charset, int i2) {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), charset);
        return outputStreamWriter instanceof BufferedWriter ? (BufferedWriter) outputStreamWriter : new BufferedWriter(outputStreamWriter, i2);
    }

    static /* synthetic */ BufferedWriter bufferedWriter$default(File file, Charset charset, int i2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        if ((i4 & 2) != 0) {
            i2 = 8192;
        }
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), charset);
        return outputStreamWriter instanceof BufferedWriter ? (BufferedWriter) outputStreamWriter : new BufferedWriter(outputStreamWriter, i2);
    }

    public static final void forEachBlock(@NotNull File forEachBlock, @NotNull Function2<? super byte[], ? super Integer, Unit> action) {
        Intrinsics.checkNotNullParameter(forEachBlock, "$this$forEachBlock");
        Intrinsics.checkNotNullParameter(action, "action");
        forEachBlock(forEachBlock, 4096, action);
    }

    public static final void forEachLine(@NotNull File forEachLine, @NotNull Charset charset, @NotNull Function1<? super String, Unit> action) {
        Intrinsics.checkNotNullParameter(forEachLine, "$this$forEachLine");
        Intrinsics.checkNotNullParameter(charset, "charset");
        Intrinsics.checkNotNullParameter(action, "action");
        TextStreamsKt.forEachLine(new BufferedReader(new InputStreamReader(new FileInputStream(forEachLine), charset)), action);
    }

    public static /* synthetic */ void forEachLine$default(File file, Charset charset, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        forEachLine(file, charset, function1);
    }

    @InlineOnly
    private static final FileInputStream inputStream(File file) {
        return new FileInputStream(file);
    }

    @InlineOnly
    private static final FileOutputStream outputStream(File file) {
        return new FileOutputStream(file);
    }

    @InlineOnly
    private static final PrintWriter printWriter(File file, Charset charset) {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), charset);
        return new PrintWriter(outputStreamWriter instanceof BufferedWriter ? (BufferedWriter) outputStreamWriter : new BufferedWriter(outputStreamWriter, 8192));
    }

    static /* synthetic */ PrintWriter printWriter$default(File file, Charset charset, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), charset);
        return new PrintWriter(outputStreamWriter instanceof BufferedWriter ? (BufferedWriter) outputStreamWriter : new BufferedWriter(outputStreamWriter, 8192));
    }

    @NotNull
    public static final byte[] readBytes(@NotNull File readBytes) {
        Intrinsics.checkNotNullParameter(readBytes, "$this$readBytes");
        FileInputStream fileInputStream = new FileInputStream(readBytes);
        try {
            long length = readBytes.length();
            if (length <= Integer.MAX_VALUE) {
                int i2 = (int) length;
                byte[] bArr = new byte[i2];
                int i4 = i2;
                int i5 = 0;
                while (i4 > 0) {
                    int read = fileInputStream.read(bArr, i5, i4);
                    if (read < 0) {
                        break;
                    }
                    i4 -= read;
                    i5 += read;
                }
                if (i4 > 0) {
                    bArr = Arrays.copyOf(bArr, i5);
                    Intrinsics.checkNotNullExpressionValue(bArr, "java.util.Arrays.copyOf(this, newSize)");
                } else {
                    int read2 = fileInputStream.read();
                    if (read2 != -1) {
                        ExposingBufferByteArrayOutputStream exposingBufferByteArrayOutputStream = new ExposingBufferByteArrayOutputStream(8193);
                        exposingBufferByteArrayOutputStream.write(read2);
                        ByteStreamsKt.copyTo$default(fileInputStream, exposingBufferByteArrayOutputStream, 0, 2, null);
                        int size = exposingBufferByteArrayOutputStream.size() + i2;
                        if (size >= 0) {
                            byte[] buffer = exposingBufferByteArrayOutputStream.getBuffer();
                            byte[] copyOf = Arrays.copyOf(bArr, size);
                            Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, newSize)");
                            bArr = ArraysKt___ArraysJvmKt.copyInto(buffer, copyOf, i2, 0, exposingBufferByteArrayOutputStream.size());
                        } else {
                            throw new OutOfMemoryError("File " + readBytes + " is too big to fit in memory.");
                        }
                    }
                }
                CloseableKt.closeFinally(fileInputStream, null);
                return bArr;
            }
            throw new OutOfMemoryError("File " + readBytes + " is too big (" + length + " bytes) to fit in memory.");
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(fileInputStream, th);
                throw th2;
            }
        }
    }

    @NotNull
    public static final List<String> readLines(@NotNull File readLines, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(readLines, "$this$readLines");
        Intrinsics.checkNotNullParameter(charset, "charset");
        final ArrayList arrayList = new ArrayList();
        forEachLine(readLines, charset, new Function1<String, Unit>() { // from class: kotlin.io.FilesKt__FileReadWriteKt$readLines$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                arrayList.add(it2);
            }
        });
        return arrayList;
    }

    public static /* synthetic */ List readLines$default(File file, Charset charset, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return readLines(file, charset);
    }

    @NotNull
    public static final String readText(@NotNull File readText, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(readText, "$this$readText");
        Intrinsics.checkNotNullParameter(charset, "charset");
        InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(readText), charset);
        try {
            String readText2 = TextStreamsKt.readText(inputStreamReader);
            CloseableKt.closeFinally(inputStreamReader, null);
            return readText2;
        } finally {
        }
    }

    public static /* synthetic */ String readText$default(File file, Charset charset, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return readText(file, charset);
    }

    @InlineOnly
    private static final InputStreamReader reader(File file, Charset charset) {
        return new InputStreamReader(new FileInputStream(file), charset);
    }

    static /* synthetic */ InputStreamReader reader$default(File file, Charset charset, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new InputStreamReader(new FileInputStream(file), charset);
    }

    public static final <T> T useLines(@NotNull File useLines, @NotNull Charset charset, @NotNull Function1<? super Sequence<String>, ? extends T> block) {
        Intrinsics.checkNotNullParameter(useLines, "$this$useLines");
        Intrinsics.checkNotNullParameter(charset, "charset");
        Intrinsics.checkNotNullParameter(block, "block");
        InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(useLines), charset);
        BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
        try {
            T invoke = block.invoke(TextStreamsKt.lineSequence(bufferedReader));
            InlineMarker.finallyStart(1);
            if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 1, 0)) {
                CloseableKt.closeFinally(bufferedReader, null);
            } else {
                bufferedReader.close();
            }
            InlineMarker.finallyEnd(1);
            return invoke;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 1, 0)) {
                    CloseableKt.closeFinally(bufferedReader, th);
                } else {
                    try {
                        bufferedReader.close();
                    } catch (Throwable unused) {
                    }
                }
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
    }

    public static /* synthetic */ Object useLines$default(File useLines, Charset charset, Function1 block, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        Intrinsics.checkNotNullParameter(useLines, "$this$useLines");
        Intrinsics.checkNotNullParameter(charset, "charset");
        Intrinsics.checkNotNullParameter(block, "block");
        InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(useLines), charset);
        BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
        try {
            Object invoke = block.invoke(TextStreamsKt.lineSequence(bufferedReader));
            InlineMarker.finallyStart(1);
            if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 1, 0)) {
                CloseableKt.closeFinally(bufferedReader, null);
            } else {
                bufferedReader.close();
            }
            InlineMarker.finallyEnd(1);
            return invoke;
        } finally {
        }
    }

    public static final void writeBytes(@NotNull File writeBytes, @NotNull byte[] array) {
        Intrinsics.checkNotNullParameter(writeBytes, "$this$writeBytes");
        Intrinsics.checkNotNullParameter(array, "array");
        FileOutputStream fileOutputStream = new FileOutputStream(writeBytes);
        try {
            fileOutputStream.write(array);
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(fileOutputStream, null);
        } finally {
        }
    }

    public static final void writeText(@NotNull File writeText, @NotNull String text, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(writeText, "$this$writeText");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(charset, "charset");
        byte[] bytes = text.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
        writeBytes(writeText, bytes);
    }

    public static /* synthetic */ void writeText$default(File file, String str, Charset charset, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            charset = Charsets.UTF_8;
        }
        writeText(file, str, charset);
    }

    @InlineOnly
    private static final OutputStreamWriter writer(File file, Charset charset) {
        return new OutputStreamWriter(new FileOutputStream(file), charset);
    }

    static /* synthetic */ OutputStreamWriter writer$default(File file, Charset charset, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new OutputStreamWriter(new FileOutputStream(file), charset);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [byte[], java.lang.Object] */
    public static final void forEachBlock(@NotNull File forEachBlock, int i2, @NotNull Function2<? super byte[], ? super Integer, Unit> action) {
        int coerceAtLeast;
        Intrinsics.checkNotNullParameter(forEachBlock, "$this$forEachBlock");
        Intrinsics.checkNotNullParameter(action, "action");
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(i2, 512);
        ?? r22 = new byte[coerceAtLeast];
        FileInputStream fileInputStream = new FileInputStream(forEachBlock);
        while (true) {
            try {
                int read = fileInputStream.read(r22);
                if (read <= 0) {
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(fileInputStream, null);
                    return;
                }
                action.invoke(r22, Integer.valueOf(read));
            } finally {
            }
        }
    }
}
