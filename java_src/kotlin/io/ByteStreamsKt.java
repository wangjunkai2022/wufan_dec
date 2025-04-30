package kotlin.io;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.NoSuchElementException;
import java.util.Objects;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.collections.ByteIterator;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
/* compiled from: IOStreams.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\u001a\r\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0086\u0002\u001a\u0017\u0010\u0007\u001a\u00020\u0006*\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0087\b\u001a\r\u0010\t\u001a\u00020\u0006*\u00020\bH\u0087\b\u001a\u001d\u0010\t\u001a\u00020\u0006*\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0087\b\u001a\u0017\u0010\u000f\u001a\u00020\u0000*\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\nH\u0087\b\u001a\u0017\u0010\u0011\u001a\u00020\u0010*\u00020\r2\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0087\b\u001a\u0017\u0010\u0013\u001a\u00020\u0012*\u00020\r2\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0087\b\u001a\u0017\u0010\u000f\u001a\u00020\u0015*\u00020\u00142\b\b\u0002\u0010\u000e\u001a\u00020\nH\u0087\b\u001a\u0017\u0010\u0017\u001a\u00020\u0016*\u00020\u00142\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0087\b\u001a\u0017\u0010\u0019\u001a\u00020\u0018*\u00020\u00142\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0087\b\u001a\u001c\u0010\u001c\u001a\u00020\u001b*\u00020\r2\u0006\u0010\u001a\u001a\u00020\u00142\b\b\u0002\u0010\u000e\u001a\u00020\n\u001a\u0016\u0010\u001e\u001a\u00020\b*\u00020\r2\b\b\u0002\u0010\u001d\u001a\u00020\nH\u0007\u001a\f\u0010\u001e\u001a\u00020\b*\u00020\rH\u0007¨\u0006\u001f"}, d2 = {"Ljava/io/BufferedInputStream;", "Lkotlin/collections/ByteIterator;", "iterator", "", "Ljava/nio/charset/Charset;", "charset", "Ljava/io/ByteArrayInputStream;", "byteInputStream", "", "inputStream", "", "offset", "length", "Ljava/io/InputStream;", "bufferSize", "buffered", "Ljava/io/InputStreamReader;", "reader", "Ljava/io/BufferedReader;", "bufferedReader", "Ljava/io/OutputStream;", "Ljava/io/BufferedOutputStream;", "Ljava/io/OutputStreamWriter;", "writer", "Ljava/io/BufferedWriter;", "bufferedWriter", "out", "", "copyTo", "estimatedSize", "readBytes", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
@JvmName(name = "ByteStreamsKt")
/* loaded from: classes.dex */
public final class ByteStreamsKt {
    @InlineOnly
    private static final BufferedInputStream buffered(InputStream inputStream, int i2) {
        return inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream, i2);
    }

    static /* synthetic */ BufferedInputStream buffered$default(InputStream inputStream, int i2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i2 = 8192;
        }
        return inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream, i2);
    }

    @InlineOnly
    private static final BufferedReader bufferedReader(InputStream inputStream, Charset charset) {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, charset);
        return inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
    }

    static /* synthetic */ BufferedReader bufferedReader$default(InputStream inputStream, Charset charset, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, charset);
        return inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
    }

    @InlineOnly
    private static final BufferedWriter bufferedWriter(OutputStream outputStream, Charset charset) {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, charset);
        return outputStreamWriter instanceof BufferedWriter ? (BufferedWriter) outputStreamWriter : new BufferedWriter(outputStreamWriter, 8192);
    }

    static /* synthetic */ BufferedWriter bufferedWriter$default(OutputStream outputStream, Charset charset, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, charset);
        return outputStreamWriter instanceof BufferedWriter ? (BufferedWriter) outputStreamWriter : new BufferedWriter(outputStreamWriter, 8192);
    }

    @InlineOnly
    private static final ByteArrayInputStream byteInputStream(String str, Charset charset) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        byte[] bytes = str.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
        return new ByteArrayInputStream(bytes);
    }

    static /* synthetic */ ByteArrayInputStream byteInputStream$default(String str, Charset charset, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        byte[] bytes = str.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
        return new ByteArrayInputStream(bytes);
    }

    public static final long copyTo(@NotNull InputStream copyTo, @NotNull OutputStream out, int i2) {
        Intrinsics.checkNotNullParameter(copyTo, "$this$copyTo");
        Intrinsics.checkNotNullParameter(out, "out");
        byte[] bArr = new byte[i2];
        int read = copyTo.read(bArr);
        long j4 = 0;
        while (read >= 0) {
            out.write(bArr, 0, read);
            j4 += read;
            read = copyTo.read(bArr);
        }
        return j4;
    }

    public static /* synthetic */ long copyTo$default(InputStream inputStream, OutputStream outputStream, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 8192;
        }
        return copyTo(inputStream, outputStream, i2);
    }

    @InlineOnly
    private static final ByteArrayInputStream inputStream(byte[] bArr) {
        return new ByteArrayInputStream(bArr);
    }

    @NotNull
    public static final ByteIterator iterator(@NotNull final BufferedInputStream iterator) {
        Intrinsics.checkNotNullParameter(iterator, "$this$iterator");
        return new ByteIterator() { // from class: kotlin.io.ByteStreamsKt$iterator$1
            private boolean finished;
            private int nextByte = -1;
            private boolean nextPrepared;

            private final void prepareNext() {
                if (this.nextPrepared || this.finished) {
                    return;
                }
                int read = iterator.read();
                this.nextByte = read;
                this.nextPrepared = true;
                this.finished = read == -1;
            }

            public final boolean getFinished() {
                return this.finished;
            }

            public final int getNextByte() {
                return this.nextByte;
            }

            public final boolean getNextPrepared() {
                return this.nextPrepared;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                prepareNext();
                return !this.finished;
            }

            @Override // kotlin.collections.ByteIterator
            public byte nextByte() {
                prepareNext();
                if (!this.finished) {
                    byte b4 = (byte) this.nextByte;
                    this.nextPrepared = false;
                    return b4;
                }
                throw new NoSuchElementException("Input stream is over.");
            }

            public final void setFinished(boolean z3) {
                this.finished = z3;
            }

            public final void setNextByte(int i2) {
                this.nextByte = i2;
            }

            public final void setNextPrepared(boolean z3) {
                this.nextPrepared = z3;
            }
        };
    }

    @Deprecated(message = "Use readBytes() overload without estimatedSize parameter", replaceWith = @ReplaceWith(expression = "readBytes()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", warningSince = "1.3")
    @NotNull
    public static final byte[] readBytes(@NotNull InputStream readBytes, int i2) {
        Intrinsics.checkNotNullParameter(readBytes, "$this$readBytes");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(i2, readBytes.available()));
        copyTo$default(readBytes, byteArrayOutputStream, 0, 2, null);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "buffer.toByteArray()");
        return byteArray;
    }

    public static /* synthetic */ byte[] readBytes$default(InputStream inputStream, int i2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i2 = 8192;
        }
        return readBytes(inputStream, i2);
    }

    @InlineOnly
    private static final InputStreamReader reader(InputStream inputStream, Charset charset) {
        return new InputStreamReader(inputStream, charset);
    }

    static /* synthetic */ InputStreamReader reader$default(InputStream inputStream, Charset charset, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new InputStreamReader(inputStream, charset);
    }

    @InlineOnly
    private static final OutputStreamWriter writer(OutputStream outputStream, Charset charset) {
        return new OutputStreamWriter(outputStream, charset);
    }

    static /* synthetic */ OutputStreamWriter writer$default(OutputStream outputStream, Charset charset, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new OutputStreamWriter(outputStream, charset);
    }

    @InlineOnly
    private static final BufferedOutputStream buffered(OutputStream outputStream, int i2) {
        return outputStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStream : new BufferedOutputStream(outputStream, i2);
    }

    static /* synthetic */ BufferedOutputStream buffered$default(OutputStream outputStream, int i2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i2 = 8192;
        }
        return outputStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStream : new BufferedOutputStream(outputStream, i2);
    }

    @InlineOnly
    private static final ByteArrayInputStream inputStream(byte[] bArr, int i2, int i4) {
        return new ByteArrayInputStream(bArr, i2, i4);
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static final byte[] readBytes(@NotNull InputStream readBytes) {
        Intrinsics.checkNotNullParameter(readBytes, "$this$readBytes");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(8192, readBytes.available()));
        copyTo$default(readBytes, byteArrayOutputStream, 0, 2, null);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "buffer.toByteArray()");
        return byteArray;
    }
}
