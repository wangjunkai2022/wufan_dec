package okio.internal;

import com.join.mgps.activity.MyAccountLoginActivity_;
import java.io.EOFException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharJVMKt;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Options;
import okio.PeekSource;
import okio.RealBufferedSource;
import okio.Sink;
import okio.Timeout;
import okio.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RealBufferedSource.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\n\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001d\u0010\u0005\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0080\b\u001a\r\u0010\u0007\u001a\u00020\u0006*\u00020\u0000H\u0080\b\u001a\u0015\u0010\t\u001a\u00020\b*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0080\b\u001a\u0015\u0010\n\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0080\b\u001a\r\u0010\f\u001a\u00020\u000b*\u00020\u0000H\u0080\b\u001a\r\u0010\u000e\u001a\u00020\r*\u00020\u0000H\u0080\b\u001a\u0015\u0010\u000e\u001a\u00020\r*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0080\b\u001a\u0015\u0010\u0012\u001a\u00020\u0011*\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000fH\u0080\b\u001a\r\u0010\u0014\u001a\u00020\u0013*\u00020\u0000H\u0080\b\u001a\u0015\u0010\u0014\u001a\u00020\u0013*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0080\b\u001a\u0015\u0010\u0015\u001a\u00020\b*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0013H\u0080\b\u001a%\u0010\u0005\u001a\u00020\u0011*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u0011H\u0080\b\u001a\u001d\u0010\u0015\u001a\u00020\b*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0080\b\u001a\u0015\u0010\u0018\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0017H\u0080\b\u001a\r\u0010\u001a\u001a\u00020\u0019*\u00020\u0000H\u0080\b\u001a\u0015\u0010\u001a\u001a\u00020\u0019*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0080\b\u001a\u000f\u0010\u001b\u001a\u0004\u0018\u00010\u0019*\u00020\u0000H\u0080\b\u001a\u0015\u0010\u001d\u001a\u00020\u0019*\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0003H\u0080\b\u001a\r\u0010\u001e\u001a\u00020\u0011*\u00020\u0000H\u0080\b\u001a\r\u0010 \u001a\u00020\u001f*\u00020\u0000H\u0080\b\u001a\r\u0010!\u001a\u00020\u001f*\u00020\u0000H\u0080\b\u001a\r\u0010\"\u001a\u00020\u0011*\u00020\u0000H\u0080\b\u001a\r\u0010#\u001a\u00020\u0011*\u00020\u0000H\u0080\b\u001a\r\u0010$\u001a\u00020\u0003*\u00020\u0000H\u0080\b\u001a\r\u0010%\u001a\u00020\u0003*\u00020\u0000H\u0080\b\u001a\r\u0010&\u001a\u00020\u0003*\u00020\u0000H\u0080\b\u001a\r\u0010'\u001a\u00020\u0003*\u00020\u0000H\u0080\b\u001a\u0015\u0010(\u001a\u00020\b*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0080\b\u001a%\u0010,\u001a\u00020\u0003*\u00020\u00002\u0006\u0010)\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u0003H\u0080\b\u001a\u001d\u0010,\u001a\u00020\u0003*\u00020\u00002\u0006\u0010-\u001a\u00020\r2\u0006\u0010*\u001a\u00020\u0003H\u0080\b\u001a\u001d\u0010/\u001a\u00020\u0003*\u00020\u00002\u0006\u0010.\u001a\u00020\r2\u0006\u0010*\u001a\u00020\u0003H\u0080\b\u001a-\u00101\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010-\u001a\u00020\r2\u0006\u00100\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u0011H\u0080\b\u001a\r\u00103\u001a\u000202*\u00020\u0000H\u0080\b\u001a\r\u00104\u001a\u00020\b*\u00020\u0000H\u0080\b\u001a\r\u00106\u001a\u000205*\u00020\u0000H\u0080\b\u001a\r\u00107\u001a\u00020\u0019*\u00020\u0000H\u0080\b¨\u00068"}, d2 = {"Lokio/RealBufferedSource;", "Lokio/Buffer;", "sink", "", "byteCount", "commonRead", "", "commonExhausted", "", "commonRequire", "commonRequest", "", "commonReadByte", "Lokio/ByteString;", "commonReadByteString", "Lokio/Options;", "options", "", "commonSelect", "", "commonReadByteArray", "commonReadFully", "offset", "Lokio/Sink;", "commonReadAll", "", "commonReadUtf8", "commonReadUtf8Line", "limit", "commonReadUtf8LineStrict", "commonReadUtf8CodePoint", "", "commonReadShort", "commonReadShortLe", "commonReadInt", "commonReadIntLe", "commonReadLong", "commonReadLongLe", "commonReadDecimalLong", "commonReadHexadecimalUnsignedLong", "commonSkip", "b", MyAccountLoginActivity_.J, "toIndex", "commonIndexOf", "bytes", "targetBytes", "commonIndexOfElement", "bytesOffset", "commonRangeEquals", "Lokio/BufferedSource;", "commonPeek", "commonClose", "Lokio/Timeout;", "commonTimeout", "commonToString", "okio"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes5.dex */
public final class RealBufferedSourceKt {
    public static final void commonClose(@NotNull RealBufferedSource commonClose) {
        Intrinsics.checkNotNullParameter(commonClose, "$this$commonClose");
        if (commonClose.closed) {
            return;
        }
        commonClose.closed = true;
        commonClose.source.close();
        commonClose.bufferField.clear();
    }

    public static final boolean commonExhausted(@NotNull RealBufferedSource commonExhausted) {
        Intrinsics.checkNotNullParameter(commonExhausted, "$this$commonExhausted");
        if (!commonExhausted.closed) {
            return commonExhausted.bufferField.exhausted() && commonExhausted.source.read(commonExhausted.bufferField, (long) 8192) == -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final long commonIndexOf(@NotNull RealBufferedSource commonIndexOf, byte b4, long j4, long j5) {
        Intrinsics.checkNotNullParameter(commonIndexOf, "$this$commonIndexOf");
        boolean z3 = true;
        if (!commonIndexOf.closed) {
            if (!((0 > j4 || j5 < j4) ? false : false)) {
                throw new IllegalArgumentException(("fromIndex=" + j4 + " toIndex=" + j5).toString());
            }
            while (j4 < j5) {
                long indexOf = commonIndexOf.bufferField.indexOf(b4, j4, j5);
                if (indexOf == -1) {
                    long size = commonIndexOf.bufferField.size();
                    if (size >= j5 || commonIndexOf.source.read(commonIndexOf.bufferField, 8192) == -1) {
                        break;
                    }
                    j4 = Math.max(j4, size);
                } else {
                    return indexOf;
                }
            }
            return -1L;
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final long commonIndexOfElement(@NotNull RealBufferedSource commonIndexOfElement, @NotNull ByteString targetBytes, long j4) {
        Intrinsics.checkNotNullParameter(commonIndexOfElement, "$this$commonIndexOfElement");
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        if (!(!commonIndexOfElement.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        while (true) {
            long indexOfElement = commonIndexOfElement.bufferField.indexOfElement(targetBytes, j4);
            if (indexOfElement != -1) {
                return indexOfElement;
            }
            long size = commonIndexOfElement.bufferField.size();
            if (commonIndexOfElement.source.read(commonIndexOfElement.bufferField, 8192) == -1) {
                return -1L;
            }
            j4 = Math.max(j4, size);
        }
    }

    @NotNull
    public static final BufferedSource commonPeek(@NotNull RealBufferedSource commonPeek) {
        Intrinsics.checkNotNullParameter(commonPeek, "$this$commonPeek");
        return Okio.buffer(new PeekSource(commonPeek));
    }

    public static final boolean commonRangeEquals(@NotNull RealBufferedSource commonRangeEquals, long j4, @NotNull ByteString bytes, int i2, int i4) {
        Intrinsics.checkNotNullParameter(commonRangeEquals, "$this$commonRangeEquals");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (!commonRangeEquals.closed) {
            if (j4 < 0 || i2 < 0 || i4 < 0 || bytes.size() - i2 < i4) {
                return false;
            }
            for (int i5 = 0; i5 < i4; i5++) {
                long j5 = i5 + j4;
                if (!commonRangeEquals.request(1 + j5) || commonRangeEquals.bufferField.getByte(j5) != bytes.getByte(i2 + i5)) {
                    return false;
                }
            }
            return true;
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final long commonRead(@NotNull RealBufferedSource commonRead, @NotNull Buffer sink, long j4) {
        Intrinsics.checkNotNullParameter(commonRead, "$this$commonRead");
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j4 >= 0) {
            if (true ^ commonRead.closed) {
                if (commonRead.bufferField.size() == 0 && commonRead.source.read(commonRead.bufferField, 8192) == -1) {
                    return -1L;
                }
                return commonRead.bufferField.read(sink, Math.min(j4, commonRead.bufferField.size()));
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j4).toString());
    }

    public static final long commonReadAll(@NotNull RealBufferedSource commonReadAll, @NotNull Sink sink) {
        Intrinsics.checkNotNullParameter(commonReadAll, "$this$commonReadAll");
        Intrinsics.checkNotNullParameter(sink, "sink");
        long j4 = 0;
        while (commonReadAll.source.read(commonReadAll.bufferField, 8192) != -1) {
            long completeSegmentByteCount = commonReadAll.bufferField.completeSegmentByteCount();
            if (completeSegmentByteCount > 0) {
                j4 += completeSegmentByteCount;
                sink.write(commonReadAll.bufferField, completeSegmentByteCount);
            }
        }
        if (commonReadAll.bufferField.size() > 0) {
            long size = j4 + commonReadAll.bufferField.size();
            Buffer buffer = commonReadAll.bufferField;
            sink.write(buffer, buffer.size());
            return size;
        }
        return j4;
    }

    public static final byte commonReadByte(@NotNull RealBufferedSource commonReadByte) {
        Intrinsics.checkNotNullParameter(commonReadByte, "$this$commonReadByte");
        commonReadByte.require(1L);
        return commonReadByte.bufferField.readByte();
    }

    @NotNull
    public static final byte[] commonReadByteArray(@NotNull RealBufferedSource commonReadByteArray, long j4) {
        Intrinsics.checkNotNullParameter(commonReadByteArray, "$this$commonReadByteArray");
        commonReadByteArray.require(j4);
        return commonReadByteArray.bufferField.readByteArray(j4);
    }

    @NotNull
    public static final ByteString commonReadByteString(@NotNull RealBufferedSource commonReadByteString, long j4) {
        Intrinsics.checkNotNullParameter(commonReadByteString, "$this$commonReadByteString");
        commonReadByteString.require(j4);
        return commonReadByteString.bufferField.readByteString(j4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
        if (r4 == 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0036, code lost:
        r0 = new java.lang.StringBuilder();
        r0.append("Expected leading [0-9] or '-' character but was 0x");
        r1 = kotlin.text.CharsKt__CharJVMKt.checkRadix(16);
        r1 = kotlin.text.CharsKt__CharJVMKt.checkRadix(r1);
        r1 = java.lang.Integer.toString(r8, r1);
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        r0.append(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005f, code lost:
        throw new java.lang.NumberFormatException(r0.toString());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long commonReadDecimalLong(@org.jetbrains.annotations.NotNull okio.RealBufferedSource r10) {
        /*
            java.lang.String r0 = "$this$commonReadDecimalLong"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            r0 = 1
            r10.require(r0)
            r2 = 0
            r4 = r2
        Ld:
            long r6 = r4 + r0
            boolean r8 = r10.request(r6)
            if (r8 == 0) goto L60
            okio.Buffer r8 = r10.bufferField
            byte r8 = r8.getByte(r4)
            r9 = 48
            byte r9 = (byte) r9
            if (r8 < r9) goto L25
            r9 = 57
            byte r9 = (byte) r9
            if (r8 <= r9) goto L2f
        L25:
            int r9 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r9 != 0) goto L31
            r9 = 45
            byte r9 = (byte) r9
            if (r8 == r9) goto L2f
            goto L31
        L2f:
            r4 = r6
            goto Ld
        L31:
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r0 == 0) goto L36
            goto L60
        L36:
            java.lang.NumberFormatException r10 = new java.lang.NumberFormatException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Expected leading [0-9] or '-' character but was 0x"
            r0.append(r1)
            r1 = 16
            int r1 = kotlin.text.CharsKt.checkRadix(r1)
            int r1 = kotlin.text.CharsKt.checkRadix(r1)
            java.lang.String r1 = java.lang.Integer.toString(r8, r1)
            java.lang.String r2 = "java.lang.Integer.toStri…(this, checkRadix(radix))"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r10.<init>(r0)
            throw r10
        L60:
            okio.Buffer r10 = r10.bufferField
            long r0 = r10.readDecimalLong()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.RealBufferedSourceKt.commonReadDecimalLong(okio.RealBufferedSource):long");
    }

    public static final void commonReadFully(@NotNull RealBufferedSource commonReadFully, @NotNull byte[] sink) {
        Intrinsics.checkNotNullParameter(commonReadFully, "$this$commonReadFully");
        Intrinsics.checkNotNullParameter(sink, "sink");
        try {
            commonReadFully.require(sink.length);
            commonReadFully.bufferField.readFully(sink);
        } catch (EOFException e4) {
            int i2 = 0;
            while (commonReadFully.bufferField.size() > 0) {
                Buffer buffer = commonReadFully.bufferField;
                int read = buffer.read(sink, i2, (int) buffer.size());
                if (read == -1) {
                    throw new AssertionError();
                }
                i2 += read;
            }
            throw e4;
        }
    }

    public static final long commonReadHexadecimalUnsignedLong(@NotNull RealBufferedSource commonReadHexadecimalUnsignedLong) {
        byte b4;
        int checkRadix;
        int checkRadix2;
        Intrinsics.checkNotNullParameter(commonReadHexadecimalUnsignedLong, "$this$commonReadHexadecimalUnsignedLong");
        commonReadHexadecimalUnsignedLong.require(1L);
        int i2 = 0;
        while (true) {
            int i4 = i2 + 1;
            if (!commonReadHexadecimalUnsignedLong.request(i4)) {
                break;
            }
            b4 = commonReadHexadecimalUnsignedLong.bufferField.getByte(i2);
            if ((b4 < ((byte) 48) || b4 > ((byte) 57)) && ((b4 < ((byte) 97) || b4 > ((byte) 102)) && (b4 < ((byte) 65) || b4 > ((byte) 70)))) {
                break;
            }
            i2 = i4;
        }
        if (i2 == 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("Expected leading [0-9a-fA-F] character but was 0x");
            checkRadix = CharsKt__CharJVMKt.checkRadix(16);
            checkRadix2 = CharsKt__CharJVMKt.checkRadix(checkRadix);
            String num = Integer.toString(b4, checkRadix2);
            Intrinsics.checkNotNullExpressionValue(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
            sb.append(num);
            throw new NumberFormatException(sb.toString());
        }
        return commonReadHexadecimalUnsignedLong.bufferField.readHexadecimalUnsignedLong();
    }

    public static final int commonReadInt(@NotNull RealBufferedSource commonReadInt) {
        Intrinsics.checkNotNullParameter(commonReadInt, "$this$commonReadInt");
        commonReadInt.require(4L);
        return commonReadInt.bufferField.readInt();
    }

    public static final int commonReadIntLe(@NotNull RealBufferedSource commonReadIntLe) {
        Intrinsics.checkNotNullParameter(commonReadIntLe, "$this$commonReadIntLe");
        commonReadIntLe.require(4L);
        return commonReadIntLe.bufferField.readIntLe();
    }

    public static final long commonReadLong(@NotNull RealBufferedSource commonReadLong) {
        Intrinsics.checkNotNullParameter(commonReadLong, "$this$commonReadLong");
        commonReadLong.require(8L);
        return commonReadLong.bufferField.readLong();
    }

    public static final long commonReadLongLe(@NotNull RealBufferedSource commonReadLongLe) {
        Intrinsics.checkNotNullParameter(commonReadLongLe, "$this$commonReadLongLe");
        commonReadLongLe.require(8L);
        return commonReadLongLe.bufferField.readLongLe();
    }

    public static final short commonReadShort(@NotNull RealBufferedSource commonReadShort) {
        Intrinsics.checkNotNullParameter(commonReadShort, "$this$commonReadShort");
        commonReadShort.require(2L);
        return commonReadShort.bufferField.readShort();
    }

    public static final short commonReadShortLe(@NotNull RealBufferedSource commonReadShortLe) {
        Intrinsics.checkNotNullParameter(commonReadShortLe, "$this$commonReadShortLe");
        commonReadShortLe.require(2L);
        return commonReadShortLe.bufferField.readShortLe();
    }

    @NotNull
    public static final String commonReadUtf8(@NotNull RealBufferedSource commonReadUtf8, long j4) {
        Intrinsics.checkNotNullParameter(commonReadUtf8, "$this$commonReadUtf8");
        commonReadUtf8.require(j4);
        return commonReadUtf8.bufferField.readUtf8(j4);
    }

    public static final int commonReadUtf8CodePoint(@NotNull RealBufferedSource commonReadUtf8CodePoint) {
        Intrinsics.checkNotNullParameter(commonReadUtf8CodePoint, "$this$commonReadUtf8CodePoint");
        commonReadUtf8CodePoint.require(1L);
        byte b4 = commonReadUtf8CodePoint.bufferField.getByte(0L);
        if ((b4 & 224) == 192) {
            commonReadUtf8CodePoint.require(2L);
        } else if ((b4 & 240) == 224) {
            commonReadUtf8CodePoint.require(3L);
        } else if ((b4 & 248) == 240) {
            commonReadUtf8CodePoint.require(4L);
        }
        return commonReadUtf8CodePoint.bufferField.readUtf8CodePoint();
    }

    @Nullable
    public static final String commonReadUtf8Line(@NotNull RealBufferedSource commonReadUtf8Line) {
        Intrinsics.checkNotNullParameter(commonReadUtf8Line, "$this$commonReadUtf8Line");
        long indexOf = commonReadUtf8Line.indexOf((byte) 10);
        if (indexOf == -1) {
            if (commonReadUtf8Line.bufferField.size() != 0) {
                return commonReadUtf8Line.readUtf8(commonReadUtf8Line.bufferField.size());
            }
            return null;
        }
        return BufferKt.readUtf8Line(commonReadUtf8Line.bufferField, indexOf);
    }

    @NotNull
    public static final String commonReadUtf8LineStrict(@NotNull RealBufferedSource commonReadUtf8LineStrict, long j4) {
        Intrinsics.checkNotNullParameter(commonReadUtf8LineStrict, "$this$commonReadUtf8LineStrict");
        if (j4 >= 0) {
            long j5 = j4 == Long.MAX_VALUE ? Long.MAX_VALUE : j4 + 1;
            byte b4 = (byte) 10;
            long indexOf = commonReadUtf8LineStrict.indexOf(b4, 0L, j5);
            if (indexOf != -1) {
                return BufferKt.readUtf8Line(commonReadUtf8LineStrict.bufferField, indexOf);
            }
            if (j5 < Long.MAX_VALUE && commonReadUtf8LineStrict.request(j5) && commonReadUtf8LineStrict.bufferField.getByte(j5 - 1) == ((byte) 13) && commonReadUtf8LineStrict.request(1 + j5) && commonReadUtf8LineStrict.bufferField.getByte(j5) == b4) {
                return BufferKt.readUtf8Line(commonReadUtf8LineStrict.bufferField, j5);
            }
            Buffer buffer = new Buffer();
            Buffer buffer2 = commonReadUtf8LineStrict.bufferField;
            buffer2.copyTo(buffer, 0L, Math.min(32, buffer2.size()));
            throw new EOFException("\\n not found: limit=" + Math.min(commonReadUtf8LineStrict.bufferField.size(), j4) + " content=" + buffer.readByteString().hex() + "…");
        }
        throw new IllegalArgumentException(("limit < 0: " + j4).toString());
    }

    public static final boolean commonRequest(@NotNull RealBufferedSource commonRequest, long j4) {
        Intrinsics.checkNotNullParameter(commonRequest, "$this$commonRequest");
        if (j4 >= 0) {
            if (!commonRequest.closed) {
                while (commonRequest.bufferField.size() < j4) {
                    if (commonRequest.source.read(commonRequest.bufferField, 8192) == -1) {
                        return false;
                    }
                }
                return true;
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j4).toString());
    }

    public static final void commonRequire(@NotNull RealBufferedSource commonRequire, long j4) {
        Intrinsics.checkNotNullParameter(commonRequire, "$this$commonRequire");
        if (!commonRequire.request(j4)) {
            throw new EOFException();
        }
    }

    public static final int commonSelect(@NotNull RealBufferedSource commonSelect, @NotNull Options options) {
        Intrinsics.checkNotNullParameter(commonSelect, "$this$commonSelect");
        Intrinsics.checkNotNullParameter(options, "options");
        if (!commonSelect.closed) {
            do {
                int selectPrefix = BufferKt.selectPrefix(commonSelect.bufferField, options, true);
                if (selectPrefix != -2) {
                    if (selectPrefix != -1) {
                        commonSelect.bufferField.skip(options.getByteStrings$okio()[selectPrefix].size());
                        return selectPrefix;
                    }
                    return -1;
                }
            } while (commonSelect.source.read(commonSelect.bufferField, 8192) != -1);
            return -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final void commonSkip(@NotNull RealBufferedSource commonSkip, long j4) {
        Intrinsics.checkNotNullParameter(commonSkip, "$this$commonSkip");
        if (!(!commonSkip.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        while (j4 > 0) {
            if (commonSkip.bufferField.size() == 0 && commonSkip.source.read(commonSkip.bufferField, 8192) == -1) {
                throw new EOFException();
            }
            long min = Math.min(j4, commonSkip.bufferField.size());
            commonSkip.bufferField.skip(min);
            j4 -= min;
        }
    }

    @NotNull
    public static final Timeout commonTimeout(@NotNull RealBufferedSource commonTimeout) {
        Intrinsics.checkNotNullParameter(commonTimeout, "$this$commonTimeout");
        return commonTimeout.source.timeout();
    }

    @NotNull
    public static final String commonToString(@NotNull RealBufferedSource commonToString) {
        Intrinsics.checkNotNullParameter(commonToString, "$this$commonToString");
        return "buffer(" + commonToString.source + ')';
    }

    @NotNull
    public static final byte[] commonReadByteArray(@NotNull RealBufferedSource commonReadByteArray) {
        Intrinsics.checkNotNullParameter(commonReadByteArray, "$this$commonReadByteArray");
        commonReadByteArray.bufferField.writeAll(commonReadByteArray.source);
        return commonReadByteArray.bufferField.readByteArray();
    }

    @NotNull
    public static final ByteString commonReadByteString(@NotNull RealBufferedSource commonReadByteString) {
        Intrinsics.checkNotNullParameter(commonReadByteString, "$this$commonReadByteString");
        commonReadByteString.bufferField.writeAll(commonReadByteString.source);
        return commonReadByteString.bufferField.readByteString();
    }

    @NotNull
    public static final String commonReadUtf8(@NotNull RealBufferedSource commonReadUtf8) {
        Intrinsics.checkNotNullParameter(commonReadUtf8, "$this$commonReadUtf8");
        commonReadUtf8.bufferField.writeAll(commonReadUtf8.source);
        return commonReadUtf8.bufferField.readUtf8();
    }

    public static final void commonReadFully(@NotNull RealBufferedSource commonReadFully, @NotNull Buffer sink, long j4) {
        Intrinsics.checkNotNullParameter(commonReadFully, "$this$commonReadFully");
        Intrinsics.checkNotNullParameter(sink, "sink");
        try {
            commonReadFully.require(j4);
            commonReadFully.bufferField.readFully(sink, j4);
        } catch (EOFException e4) {
            sink.writeAll(commonReadFully.bufferField);
            throw e4;
        }
    }

    public static final long commonIndexOf(@NotNull RealBufferedSource commonIndexOf, @NotNull ByteString bytes, long j4) {
        Intrinsics.checkNotNullParameter(commonIndexOf, "$this$commonIndexOf");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (!(!commonIndexOf.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        while (true) {
            long indexOf = commonIndexOf.bufferField.indexOf(bytes, j4);
            if (indexOf != -1) {
                return indexOf;
            }
            long size = commonIndexOf.bufferField.size();
            if (commonIndexOf.source.read(commonIndexOf.bufferField, 8192) == -1) {
                return -1L;
            }
            j4 = Math.max(j4, (size - bytes.size()) + 1);
        }
    }

    public static final int commonRead(@NotNull RealBufferedSource commonRead, @NotNull byte[] sink, int i2, int i4) {
        Intrinsics.checkNotNullParameter(commonRead, "$this$commonRead");
        Intrinsics.checkNotNullParameter(sink, "sink");
        long j4 = i4;
        Util.checkOffsetAndCount(sink.length, i2, j4);
        if (commonRead.bufferField.size() == 0 && commonRead.source.read(commonRead.bufferField, 8192) == -1) {
            return -1;
        }
        return commonRead.bufferField.read(sink, i2, (int) Math.min(j4, commonRead.bufferField.size()));
    }
}
