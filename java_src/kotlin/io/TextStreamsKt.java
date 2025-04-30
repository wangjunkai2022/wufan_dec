package kotlin.io;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.internal.InlineOnly;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
/* compiled from: ReadWrite.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\u001a\u0017\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0017\u0010\u0004\u001a\u00020\u0006*\u00020\u00052\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u001e\u0010\u000b\u001a\u00020\t*\u00020\u00002\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007\u001a\u0010\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\f*\u00020\u0000\u001a:\u0010\u0012\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u000e*\u00020\u00002\u0018\u0010\u0010\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u000f\u0012\u0004\u0012\u00028\u00000\u0007H\u0086\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0012\u0010\u0013\u001a\r\u0010\u0015\u001a\u00020\u0014*\u00020\bH\u0087\b\u001a\u0010\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\b0\u000f*\u00020\u0003\u001a\n\u0010\u0017\u001a\u00020\b*\u00020\u0000\u001a\u001c\u0010\u001a\u001a\u00020\u0019*\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00052\b\b\u0002\u0010\u0002\u001a\u00020\u0001\u001a\u0017\u0010\u0017\u001a\u00020\b*\u00020\u001b2\b\b\u0002\u0010\u001d\u001a\u00020\u001cH\u0087\b\u001a\n\u0010\u001f\u001a\u00020\u001e*\u00020\u001b\u0082\u0002\u000f\n\u0006\b\u0011(\u00110\u0001\n\u0005\b\u009920\u0001¨\u0006 "}, d2 = {"Ljava/io/Reader;", "", "bufferSize", "Ljava/io/BufferedReader;", "buffered", "Ljava/io/Writer;", "Ljava/io/BufferedWriter;", "Lkotlin/Function1;", "", "", "action", "forEachLine", "", "readLines", "T", "Lkotlin/sequences/Sequence;", "block", "Requires newer compiler version to be inlined correctly.", "useLines", "(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "Ljava/io/StringReader;", "reader", "lineSequence", "readText", "out", "", "copyTo", "Ljava/net/URL;", "Ljava/nio/charset/Charset;", "charset", "", "readBytes", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
@JvmName(name = "TextStreamsKt")
/* loaded from: classes5.dex */
public final class TextStreamsKt {
    @InlineOnly
    private static final BufferedReader buffered(Reader reader, int i2) {
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, i2);
    }

    static /* synthetic */ BufferedReader buffered$default(Reader reader, int i2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i2 = 8192;
        }
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, i2);
    }

    public static final long copyTo(@NotNull Reader copyTo, @NotNull Writer out, int i2) {
        Intrinsics.checkNotNullParameter(copyTo, "$this$copyTo");
        Intrinsics.checkNotNullParameter(out, "out");
        char[] cArr = new char[i2];
        int read = copyTo.read(cArr);
        long j4 = 0;
        while (read >= 0) {
            out.write(cArr, 0, read);
            j4 += read;
            read = copyTo.read(cArr);
        }
        return j4;
    }

    public static /* synthetic */ long copyTo$default(Reader reader, Writer writer, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 8192;
        }
        return copyTo(reader, writer, i2);
    }

    public static final void forEachLine(@NotNull Reader forEachLine, @NotNull Function1<? super String, Unit> action) {
        Intrinsics.checkNotNullParameter(forEachLine, "$this$forEachLine");
        Intrinsics.checkNotNullParameter(action, "action");
        BufferedReader bufferedReader = forEachLine instanceof BufferedReader ? (BufferedReader) forEachLine : new BufferedReader(forEachLine, 8192);
        try {
            for (String str : lineSequence(bufferedReader)) {
                action.invoke(str);
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(bufferedReader, null);
        } finally {
        }
    }

    @NotNull
    public static final Sequence<String> lineSequence(@NotNull BufferedReader lineSequence) {
        Sequence<String> constrainOnce;
        Intrinsics.checkNotNullParameter(lineSequence, "$this$lineSequence");
        constrainOnce = SequencesKt__SequencesKt.constrainOnce(new LinesSequence(lineSequence));
        return constrainOnce;
    }

    @NotNull
    public static final byte[] readBytes(@NotNull URL readBytes) {
        Intrinsics.checkNotNullParameter(readBytes, "$this$readBytes");
        InputStream it2 = readBytes.openStream();
        try {
            Intrinsics.checkNotNullExpressionValue(it2, "it");
            byte[] readBytes2 = ByteStreamsKt.readBytes(it2);
            CloseableKt.closeFinally(it2, null);
            return readBytes2;
        } finally {
        }
    }

    @NotNull
    public static final List<String> readLines(@NotNull Reader readLines) {
        Intrinsics.checkNotNullParameter(readLines, "$this$readLines");
        final ArrayList arrayList = new ArrayList();
        forEachLine(readLines, new Function1<String, Unit>() { // from class: kotlin.io.TextStreamsKt$readLines$1
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

    @NotNull
    public static final String readText(@NotNull Reader readText) {
        Intrinsics.checkNotNullParameter(readText, "$this$readText");
        StringWriter stringWriter = new StringWriter();
        copyTo$default(readText, stringWriter, 0, 2, null);
        String stringWriter2 = stringWriter.toString();
        Intrinsics.checkNotNullExpressionValue(stringWriter2, "buffer.toString()");
        return stringWriter2;
    }

    static /* synthetic */ String readText$default(URL url, Charset charset, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new String(readBytes(url), charset);
    }

    @InlineOnly
    private static final StringReader reader(String str) {
        return new StringReader(str);
    }

    public static final <T> T useLines(@NotNull Reader useLines, @NotNull Function1<? super Sequence<String>, ? extends T> block) {
        Intrinsics.checkNotNullParameter(useLines, "$this$useLines");
        Intrinsics.checkNotNullParameter(block, "block");
        BufferedReader bufferedReader = useLines instanceof BufferedReader ? (BufferedReader) useLines : new BufferedReader(useLines, 8192);
        try {
            T invoke = block.invoke(lineSequence(bufferedReader));
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

    @InlineOnly
    private static final BufferedWriter buffered(Writer writer, int i2) {
        return writer instanceof BufferedWriter ? (BufferedWriter) writer : new BufferedWriter(writer, i2);
    }

    static /* synthetic */ BufferedWriter buffered$default(Writer writer, int i2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i2 = 8192;
        }
        return writer instanceof BufferedWriter ? (BufferedWriter) writer : new BufferedWriter(writer, i2);
    }

    @InlineOnly
    private static final String readText(URL url, Charset charset) {
        return new String(readBytes(url), charset);
    }
}
