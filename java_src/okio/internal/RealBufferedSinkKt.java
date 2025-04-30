package okio.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.umeng.analytics.pro.ai;
import java.io.EOFException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
import okio.RealBufferedSink;
import okio.Sink;
import okio.Source;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;
/* compiled from: RealBufferedSink.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001d\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0080\b\u001a\u0015\u0010\u0006\u001a\u00020\t*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007H\u0080\b\u001a%\u0010\u0006\u001a\u00020\t*\u00020\u00002\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\nH\u0080\b\u001a\u0015\u0010\u000e\u001a\u00020\t*\u00020\u00002\u0006\u0010\r\u001a\u00020\fH\u0080\b\u001a%\u0010\u000e\u001a\u00020\t*\u00020\u00002\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\nH\u0080\b\u001a\u0015\u0010\u0012\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0011\u001a\u00020\nH\u0080\b\u001a\u0015\u0010\u0006\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0013H\u0080\b\u001a%\u0010\u0006\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\nH\u0080\b\u001a\u0015\u0010\u0015\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0014H\u0080\b\u001a\u001d\u0010\u0006\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00142\u0006\u0010\u0004\u001a\u00020\u0003H\u0080\b\u001a\u0015\u0010\u0017\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0016\u001a\u00020\nH\u0080\b\u001a\u0015\u0010\u0019\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0018\u001a\u00020\nH\u0080\b\u001a\u0015\u0010\u001a\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0018\u001a\u00020\nH\u0080\b\u001a\u0015\u0010\u001c\u001a\u00020\t*\u00020\u00002\u0006\u0010\u001b\u001a\u00020\nH\u0080\b\u001a\u0015\u0010\u001d\u001a\u00020\t*\u00020\u00002\u0006\u0010\u001b\u001a\u00020\nH\u0080\b\u001a\u0015\u0010\u001f\u001a\u00020\t*\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0003H\u0080\b\u001a\u0015\u0010 \u001a\u00020\t*\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0003H\u0080\b\u001a\u0015\u0010!\u001a\u00020\t*\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0003H\u0080\b\u001a\u0015\u0010\"\u001a\u00020\t*\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0003H\u0080\b\u001a\r\u0010#\u001a\u00020\t*\u00020\u0000H\u0080\b\u001a\r\u0010$\u001a\u00020\t*\u00020\u0000H\u0080\b\u001a\r\u0010%\u001a\u00020\u0005*\u00020\u0000H\u0080\b\u001a\r\u0010&\u001a\u00020\u0005*\u00020\u0000H\u0080\b\u001a\r\u0010(\u001a\u00020'*\u00020\u0000H\u0080\b\u001a\r\u0010)\u001a\u00020\f*\u00020\u0000H\u0080\b¨\u0006*"}, d2 = {"Lokio/RealBufferedSink;", "Lokio/Buffer;", "source", "", "byteCount", "", "commonWrite", "Lokio/ByteString;", "byteString", "Lokio/BufferedSink;", "", "offset", "", TypedValues.Custom.S_STRING, "commonWriteUtf8", "beginIndex", "endIndex", "codePoint", "commonWriteUtf8CodePoint", "", "Lokio/Source;", "commonWriteAll", "b", "commonWriteByte", ai.az, "commonWriteShort", "commonWriteShortLe", ai.aA, "commonWriteInt", "commonWriteIntLe", "v", "commonWriteLong", "commonWriteLongLe", "commonWriteDecimalLong", "commonWriteHexadecimalUnsignedLong", "commonEmitCompleteSegments", "commonEmit", "commonFlush", "commonClose", "Lokio/Timeout;", "commonTimeout", "commonToString", "okio"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes5.dex */
public final class RealBufferedSinkKt {
    public static final void commonClose(@NotNull RealBufferedSink commonClose) {
        Intrinsics.checkNotNullParameter(commonClose, "$this$commonClose");
        if (commonClose.closed) {
            return;
        }
        Throwable th = null;
        try {
            if (commonClose.bufferField.size() > 0) {
                Sink sink = commonClose.sink;
                Buffer buffer = commonClose.bufferField;
                sink.write(buffer, buffer.size());
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            commonClose.sink.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        commonClose.closed = true;
        if (th != null) {
            throw th;
        }
    }

    @NotNull
    public static final BufferedSink commonEmit(@NotNull RealBufferedSink commonEmit) {
        Intrinsics.checkNotNullParameter(commonEmit, "$this$commonEmit");
        if (!commonEmit.closed) {
            long size = commonEmit.bufferField.size();
            if (size > 0) {
                commonEmit.sink.write(commonEmit.bufferField, size);
            }
            return commonEmit;
        }
        throw new IllegalStateException("closed".toString());
    }

    @NotNull
    public static final BufferedSink commonEmitCompleteSegments(@NotNull RealBufferedSink commonEmitCompleteSegments) {
        Intrinsics.checkNotNullParameter(commonEmitCompleteSegments, "$this$commonEmitCompleteSegments");
        if (!commonEmitCompleteSegments.closed) {
            long completeSegmentByteCount = commonEmitCompleteSegments.bufferField.completeSegmentByteCount();
            if (completeSegmentByteCount > 0) {
                commonEmitCompleteSegments.sink.write(commonEmitCompleteSegments.bufferField, completeSegmentByteCount);
            }
            return commonEmitCompleteSegments;
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final void commonFlush(@NotNull RealBufferedSink commonFlush) {
        Intrinsics.checkNotNullParameter(commonFlush, "$this$commonFlush");
        if (!commonFlush.closed) {
            if (commonFlush.bufferField.size() > 0) {
                Sink sink = commonFlush.sink;
                Buffer buffer = commonFlush.bufferField;
                sink.write(buffer, buffer.size());
            }
            commonFlush.sink.flush();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    @NotNull
    public static final Timeout commonTimeout(@NotNull RealBufferedSink commonTimeout) {
        Intrinsics.checkNotNullParameter(commonTimeout, "$this$commonTimeout");
        return commonTimeout.sink.timeout();
    }

    @NotNull
    public static final String commonToString(@NotNull RealBufferedSink commonToString) {
        Intrinsics.checkNotNullParameter(commonToString, "$this$commonToString");
        return "buffer(" + commonToString.sink + ')';
    }

    public static final void commonWrite(@NotNull RealBufferedSink commonWrite, @NotNull Buffer source, long j4) {
        Intrinsics.checkNotNullParameter(commonWrite, "$this$commonWrite");
        Intrinsics.checkNotNullParameter(source, "source");
        if (!commonWrite.closed) {
            commonWrite.bufferField.write(source, j4);
            commonWrite.emitCompleteSegments();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final long commonWriteAll(@NotNull RealBufferedSink commonWriteAll, @NotNull Source source) {
        Intrinsics.checkNotNullParameter(commonWriteAll, "$this$commonWriteAll");
        Intrinsics.checkNotNullParameter(source, "source");
        long j4 = 0;
        while (true) {
            long read = source.read(commonWriteAll.bufferField, 8192);
            if (read == -1) {
                return j4;
            }
            j4 += read;
            commonWriteAll.emitCompleteSegments();
        }
    }

    @NotNull
    public static final BufferedSink commonWriteByte(@NotNull RealBufferedSink commonWriteByte, int i2) {
        Intrinsics.checkNotNullParameter(commonWriteByte, "$this$commonWriteByte");
        if (!commonWriteByte.closed) {
            commonWriteByte.bufferField.writeByte(i2);
            return commonWriteByte.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @NotNull
    public static final BufferedSink commonWriteDecimalLong(@NotNull RealBufferedSink commonWriteDecimalLong, long j4) {
        Intrinsics.checkNotNullParameter(commonWriteDecimalLong, "$this$commonWriteDecimalLong");
        if (!commonWriteDecimalLong.closed) {
            commonWriteDecimalLong.bufferField.writeDecimalLong(j4);
            return commonWriteDecimalLong.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @NotNull
    public static final BufferedSink commonWriteHexadecimalUnsignedLong(@NotNull RealBufferedSink commonWriteHexadecimalUnsignedLong, long j4) {
        Intrinsics.checkNotNullParameter(commonWriteHexadecimalUnsignedLong, "$this$commonWriteHexadecimalUnsignedLong");
        if (!commonWriteHexadecimalUnsignedLong.closed) {
            commonWriteHexadecimalUnsignedLong.bufferField.writeHexadecimalUnsignedLong(j4);
            return commonWriteHexadecimalUnsignedLong.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @NotNull
    public static final BufferedSink commonWriteInt(@NotNull RealBufferedSink commonWriteInt, int i2) {
        Intrinsics.checkNotNullParameter(commonWriteInt, "$this$commonWriteInt");
        if (!commonWriteInt.closed) {
            commonWriteInt.bufferField.writeInt(i2);
            return commonWriteInt.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @NotNull
    public static final BufferedSink commonWriteIntLe(@NotNull RealBufferedSink commonWriteIntLe, int i2) {
        Intrinsics.checkNotNullParameter(commonWriteIntLe, "$this$commonWriteIntLe");
        if (!commonWriteIntLe.closed) {
            commonWriteIntLe.bufferField.writeIntLe(i2);
            return commonWriteIntLe.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @NotNull
    public static final BufferedSink commonWriteLong(@NotNull RealBufferedSink commonWriteLong, long j4) {
        Intrinsics.checkNotNullParameter(commonWriteLong, "$this$commonWriteLong");
        if (!commonWriteLong.closed) {
            commonWriteLong.bufferField.writeLong(j4);
            return commonWriteLong.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @NotNull
    public static final BufferedSink commonWriteLongLe(@NotNull RealBufferedSink commonWriteLongLe, long j4) {
        Intrinsics.checkNotNullParameter(commonWriteLongLe, "$this$commonWriteLongLe");
        if (!commonWriteLongLe.closed) {
            commonWriteLongLe.bufferField.writeLongLe(j4);
            return commonWriteLongLe.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @NotNull
    public static final BufferedSink commonWriteShort(@NotNull RealBufferedSink commonWriteShort, int i2) {
        Intrinsics.checkNotNullParameter(commonWriteShort, "$this$commonWriteShort");
        if (!commonWriteShort.closed) {
            commonWriteShort.bufferField.writeShort(i2);
            return commonWriteShort.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @NotNull
    public static final BufferedSink commonWriteShortLe(@NotNull RealBufferedSink commonWriteShortLe, int i2) {
        Intrinsics.checkNotNullParameter(commonWriteShortLe, "$this$commonWriteShortLe");
        if (!commonWriteShortLe.closed) {
            commonWriteShortLe.bufferField.writeShortLe(i2);
            return commonWriteShortLe.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @NotNull
    public static final BufferedSink commonWriteUtf8(@NotNull RealBufferedSink commonWriteUtf8, @NotNull String string) {
        Intrinsics.checkNotNullParameter(commonWriteUtf8, "$this$commonWriteUtf8");
        Intrinsics.checkNotNullParameter(string, "string");
        if (!commonWriteUtf8.closed) {
            commonWriteUtf8.bufferField.writeUtf8(string);
            return commonWriteUtf8.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @NotNull
    public static final BufferedSink commonWriteUtf8CodePoint(@NotNull RealBufferedSink commonWriteUtf8CodePoint, int i2) {
        Intrinsics.checkNotNullParameter(commonWriteUtf8CodePoint, "$this$commonWriteUtf8CodePoint");
        if (!commonWriteUtf8CodePoint.closed) {
            commonWriteUtf8CodePoint.bufferField.writeUtf8CodePoint(i2);
            return commonWriteUtf8CodePoint.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @NotNull
    public static final BufferedSink commonWrite(@NotNull RealBufferedSink commonWrite, @NotNull ByteString byteString) {
        Intrinsics.checkNotNullParameter(commonWrite, "$this$commonWrite");
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        if (!commonWrite.closed) {
            commonWrite.bufferField.write(byteString);
            return commonWrite.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @NotNull
    public static final BufferedSink commonWriteUtf8(@NotNull RealBufferedSink commonWriteUtf8, @NotNull String string, int i2, int i4) {
        Intrinsics.checkNotNullParameter(commonWriteUtf8, "$this$commonWriteUtf8");
        Intrinsics.checkNotNullParameter(string, "string");
        if (!commonWriteUtf8.closed) {
            commonWriteUtf8.bufferField.writeUtf8(string, i2, i4);
            return commonWriteUtf8.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @NotNull
    public static final BufferedSink commonWrite(@NotNull RealBufferedSink commonWrite, @NotNull ByteString byteString, int i2, int i4) {
        Intrinsics.checkNotNullParameter(commonWrite, "$this$commonWrite");
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        if (!commonWrite.closed) {
            commonWrite.bufferField.write(byteString, i2, i4);
            return commonWrite.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @NotNull
    public static final BufferedSink commonWrite(@NotNull RealBufferedSink commonWrite, @NotNull byte[] source) {
        Intrinsics.checkNotNullParameter(commonWrite, "$this$commonWrite");
        Intrinsics.checkNotNullParameter(source, "source");
        if (!commonWrite.closed) {
            commonWrite.bufferField.write(source);
            return commonWrite.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @NotNull
    public static final BufferedSink commonWrite(@NotNull RealBufferedSink commonWrite, @NotNull byte[] source, int i2, int i4) {
        Intrinsics.checkNotNullParameter(commonWrite, "$this$commonWrite");
        Intrinsics.checkNotNullParameter(source, "source");
        if (!commonWrite.closed) {
            commonWrite.bufferField.write(source, i2, i4);
            return commonWrite.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @NotNull
    public static final BufferedSink commonWrite(@NotNull RealBufferedSink commonWrite, @NotNull Source source, long j4) {
        Intrinsics.checkNotNullParameter(commonWrite, "$this$commonWrite");
        Intrinsics.checkNotNullParameter(source, "source");
        while (j4 > 0) {
            long read = source.read(commonWrite.bufferField, j4);
            if (read != -1) {
                j4 -= read;
                commonWrite.emitCompleteSegments();
            } else {
                throw new EOFException();
            }
        }
        return commonWrite;
    }
}
