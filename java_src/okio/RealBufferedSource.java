package okio;

import com.join.mgps.activity.MyAccountLoginActivity_;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharJVMKt;
import okio.internal.BufferKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RealBufferedSource.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\n\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010G\u001a\u00020F¢\u0006\u0004\bK\u0010LJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\b\u0010\u0016\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u0015H\u0016J\u0010\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0015H\u0016J \u0010\u0007\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u0013H\u0016J\u0010\u0010\u0007\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u0019H\u0016J\u0018\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u001aH\u0016J\b\u0010\u001d\u001a\u00020\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010 \u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016J\u0018\u0010 \u001a\u00020\u001c2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001eH\u0016J\n\u0010!\u001a\u0004\u0018\u00010\u001cH\u0016J\b\u0010\"\u001a\u00020\u001cH\u0016J\u0010\u0010\"\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\u0005H\u0016J\b\u0010$\u001a\u00020\u0013H\u0016J\b\u0010&\u001a\u00020%H\u0016J\b\u0010'\u001a\u00020%H\u0016J\b\u0010(\u001a\u00020\u0013H\u0016J\b\u0010)\u001a\u00020\u0013H\u0016J\b\u0010*\u001a\u00020\u0005H\u0016J\b\u0010+\u001a\u00020\u0005H\u0016J\b\u0010,\u001a\u00020\u0005H\u0016J\b\u0010-\u001a\u00020\u0005H\u0016J\u0010\u0010.\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u00100\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\rH\u0016J\u0018\u00100\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\r2\u0006\u00101\u001a\u00020\u0005H\u0016J \u00100\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\r2\u0006\u00101\u001a\u00020\u00052\u0006\u00102\u001a\u00020\u0005H\u0016J\u0010\u00100\u001a\u00020\u00052\u0006\u00103\u001a\u00020\u000fH\u0016J\u0018\u00100\u001a\u00020\u00052\u0006\u00103\u001a\u00020\u000f2\u0006\u00101\u001a\u00020\u0005H\u0016J\u0010\u00105\u001a\u00020\u00052\u0006\u00104\u001a\u00020\u000fH\u0016J\u0018\u00105\u001a\u00020\u00052\u0006\u00104\u001a\u00020\u000f2\u0006\u00101\u001a\u00020\u0005H\u0016J\u0018\u00106\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u00103\u001a\u00020\u000fH\u0016J(\u00106\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u00103\u001a\u00020\u000f2\u0006\u00107\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u0013H\u0016J\b\u00108\u001a\u00020\u0001H\u0016J\b\u0010:\u001a\u000209H\u0016J\b\u0010;\u001a\u00020\bH\u0016J\b\u0010<\u001a\u00020\nH\u0016J\b\u0010>\u001a\u00020=H\u0016J\b\u0010?\u001a\u00020\u001cH\u0016R\u001d\u0010\u0003\u001a\u00020\u00028Ö\u0002@\u0016X\u0096\u0004¢\u0006\f\u0012\u0004\bB\u0010C\u001a\u0004\b@\u0010AR\u0016\u0010D\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\u0016\u0010G\u001a\u00020F8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bG\u0010HR\u0016\u0010I\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bI\u0010J¨\u0006M"}, d2 = {"Lokio/RealBufferedSource;", "Lokio/BufferedSource;", "Lokio/Buffer;", "buffer", "sink", "", "byteCount", "read", "", "exhausted", "", "require", "request", "", "readByte", "Lokio/ByteString;", "readByteString", "Lokio/Options;", "options", "", "select", "", "readByteArray", "readFully", "offset", "Ljava/nio/ByteBuffer;", "Lokio/Sink;", "readAll", "", "readUtf8", "Ljava/nio/charset/Charset;", "charset", "readString", "readUtf8Line", "readUtf8LineStrict", "limit", "readUtf8CodePoint", "", "readShort", "readShortLe", "readInt", "readIntLe", "readLong", "readLongLe", "readDecimalLong", "readHexadecimalUnsignedLong", "skip", "b", "indexOf", MyAccountLoginActivity_.J, "toIndex", "bytes", "targetBytes", "indexOfElement", "rangeEquals", "bytesOffset", "peek", "Ljava/io/InputStream;", "inputStream", "isOpen", "close", "Lokio/Timeout;", "timeout", "toString", "getBuffer", "()Lokio/Buffer;", "getBuffer$annotations", "()V", "closed", "Z", "Lokio/Source;", "source", "Lokio/Source;", "bufferField", "Lokio/Buffer;", "<init>", "(Lokio/Source;)V", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5.dex */
public final class RealBufferedSource implements BufferedSource {
    @JvmField
    @NotNull
    public final Buffer bufferField;
    @JvmField
    public boolean closed;
    @JvmField
    @NotNull
    public final Source source;

    public RealBufferedSource(@NotNull Source source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.source = source;
        this.bufferField = new Buffer();
    }

    public static /* synthetic */ void getBuffer$annotations() {
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    @NotNull
    public Buffer buffer() {
        return this.bufferField;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.source.close();
        this.bufferField.clear();
    }

    @Override // okio.BufferedSource
    public boolean exhausted() {
        if (!this.closed) {
            return this.bufferField.exhausted() && this.source.read(this.bufferField, (long) 8192) == -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    @NotNull
    public Buffer getBuffer() {
        return this.bufferField;
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b4) {
        return indexOf(b4, 0L, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(@NotNull ByteString targetBytes) {
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        return indexOfElement(targetBytes, 0L);
    }

    @Override // okio.BufferedSource
    @NotNull
    public InputStream inputStream() {
        return new InputStream() { // from class: okio.RealBufferedSource$inputStream$1
            @Override // java.io.InputStream
            public int available() {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                if (!realBufferedSource.closed) {
                    return (int) Math.min(realBufferedSource.bufferField.size(), Integer.MAX_VALUE);
                }
                throw new IOException("closed");
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                RealBufferedSource.this.close();
            }

            @Override // java.io.InputStream
            public int read() {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                if (!realBufferedSource.closed) {
                    if (realBufferedSource.bufferField.size() == 0) {
                        RealBufferedSource realBufferedSource2 = RealBufferedSource.this;
                        if (realBufferedSource2.source.read(realBufferedSource2.bufferField, 8192) == -1) {
                            return -1;
                        }
                    }
                    return RealBufferedSource.this.bufferField.readByte() & 255;
                }
                throw new IOException("closed");
            }

            @NotNull
            public String toString() {
                return RealBufferedSource.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int read(@NotNull byte[] data, int i2, int i4) {
                Intrinsics.checkNotNullParameter(data, "data");
                if (!RealBufferedSource.this.closed) {
                    Util.checkOffsetAndCount(data.length, i2, i4);
                    if (RealBufferedSource.this.bufferField.size() == 0) {
                        RealBufferedSource realBufferedSource = RealBufferedSource.this;
                        if (realBufferedSource.source.read(realBufferedSource.bufferField, 8192) == -1) {
                            return -1;
                        }
                    }
                    return RealBufferedSource.this.bufferField.read(data, i2, i4);
                }
                throw new IOException("closed");
            }
        };
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.closed;
    }

    @Override // okio.BufferedSource
    @NotNull
    public BufferedSource peek() {
        return Okio.buffer(new PeekSource(this));
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j4, @NotNull ByteString bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return rangeEquals(j4, bytes, 0, bytes.size());
    }

    @Override // okio.BufferedSource
    public int read(@NotNull byte[] sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        return read(sink, 0, sink.length);
    }

    @Override // okio.BufferedSource
    public long readAll(@NotNull Sink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        long j4 = 0;
        while (this.source.read(this.bufferField, 8192) != -1) {
            long completeSegmentByteCount = this.bufferField.completeSegmentByteCount();
            if (completeSegmentByteCount > 0) {
                j4 += completeSegmentByteCount;
                sink.write(this.bufferField, completeSegmentByteCount);
            }
        }
        if (this.bufferField.size() > 0) {
            long size = j4 + this.bufferField.size();
            Buffer buffer = this.bufferField;
            sink.write(buffer, buffer.size());
            return size;
        }
        return j4;
    }

    @Override // okio.BufferedSource
    public byte readByte() {
        require(1L);
        return this.bufferField.readByte();
    }

    @Override // okio.BufferedSource
    @NotNull
    public byte[] readByteArray() {
        this.bufferField.writeAll(this.source);
        return this.bufferField.readByteArray();
    }

    @Override // okio.BufferedSource
    @NotNull
    public ByteString readByteString() {
        this.bufferField.writeAll(this.source);
        return this.bufferField.readByteString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002e, code lost:
        if (r4 == 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0031, code lost:
        r1 = new java.lang.StringBuilder();
        r1.append("Expected leading [0-9] or '-' character but was 0x");
        r2 = kotlin.text.CharsKt__CharJVMKt.checkRadix(16);
        r2 = kotlin.text.CharsKt__CharJVMKt.checkRadix(r2);
        r2 = java.lang.Integer.toString(r8, r2);
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        r1.append(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005a, code lost:
        throw new java.lang.NumberFormatException(r1.toString());
     */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readDecimalLong() {
        /*
            r10 = this;
            r0 = 1
            r10.require(r0)
            r2 = 0
            r4 = r2
        L8:
            long r6 = r4 + r0
            boolean r8 = r10.request(r6)
            if (r8 == 0) goto L5b
            okio.Buffer r8 = r10.bufferField
            byte r8 = r8.getByte(r4)
            r9 = 48
            byte r9 = (byte) r9
            if (r8 < r9) goto L20
            r9 = 57
            byte r9 = (byte) r9
            if (r8 <= r9) goto L2a
        L20:
            int r9 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r9 != 0) goto L2c
            r9 = 45
            byte r9 = (byte) r9
            if (r8 == r9) goto L2a
            goto L2c
        L2a:
            r4 = r6
            goto L8
        L2c:
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r0 == 0) goto L31
            goto L5b
        L31:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Expected leading [0-9] or '-' character but was 0x"
            r1.append(r2)
            r2 = 16
            int r2 = kotlin.text.CharsKt.checkRadix(r2)
            int r2 = kotlin.text.CharsKt.checkRadix(r2)
            java.lang.String r2 = java.lang.Integer.toString(r8, r2)
            java.lang.String r3 = "java.lang.Integer.toStri…(this, checkRadix(radix))"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L5b:
            okio.Buffer r0 = r10.bufferField
            long r0 = r0.readDecimalLong()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.RealBufferedSource.readDecimalLong():long");
    }

    @Override // okio.BufferedSource
    public void readFully(@NotNull byte[] sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        try {
            require(sink.length);
            this.bufferField.readFully(sink);
        } catch (EOFException e4) {
            int i2 = 0;
            while (this.bufferField.size() > 0) {
                Buffer buffer = this.bufferField;
                int read = buffer.read(sink, i2, (int) buffer.size());
                if (read == -1) {
                    throw new AssertionError();
                }
                i2 += read;
            }
            throw e4;
        }
    }

    @Override // okio.BufferedSource
    public long readHexadecimalUnsignedLong() {
        byte b4;
        int checkRadix;
        int checkRadix2;
        require(1L);
        int i2 = 0;
        while (true) {
            int i4 = i2 + 1;
            if (!request(i4)) {
                break;
            }
            b4 = this.bufferField.getByte(i2);
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
        return this.bufferField.readHexadecimalUnsignedLong();
    }

    @Override // okio.BufferedSource
    public int readInt() {
        require(4L);
        return this.bufferField.readInt();
    }

    @Override // okio.BufferedSource
    public int readIntLe() {
        require(4L);
        return this.bufferField.readIntLe();
    }

    @Override // okio.BufferedSource
    public long readLong() {
        require(8L);
        return this.bufferField.readLong();
    }

    @Override // okio.BufferedSource
    public long readLongLe() {
        require(8L);
        return this.bufferField.readLongLe();
    }

    @Override // okio.BufferedSource
    public short readShort() {
        require(2L);
        return this.bufferField.readShort();
    }

    @Override // okio.BufferedSource
    public short readShortLe() {
        require(2L);
        return this.bufferField.readShortLe();
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readString(long j4, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        require(j4);
        return this.bufferField.readString(j4, charset);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8() {
        this.bufferField.writeAll(this.source);
        return this.bufferField.readUtf8();
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() {
        require(1L);
        byte b4 = this.bufferField.getByte(0L);
        if ((b4 & 224) == 192) {
            require(2L);
        } else if ((b4 & 240) == 224) {
            require(3L);
        } else if ((b4 & 248) == 240) {
            require(4L);
        }
        return this.bufferField.readUtf8CodePoint();
    }

    @Override // okio.BufferedSource
    @Nullable
    public String readUtf8Line() {
        long indexOf = indexOf((byte) 10);
        if (indexOf == -1) {
            if (this.bufferField.size() != 0) {
                return readUtf8(this.bufferField.size());
            }
            return null;
        }
        return BufferKt.readUtf8Line(this.bufferField, indexOf);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8LineStrict() {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public boolean request(long j4) {
        if (j4 >= 0) {
            if (!this.closed) {
                while (this.bufferField.size() < j4) {
                    if (this.source.read(this.bufferField, 8192) == -1) {
                        return false;
                    }
                }
                return true;
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j4).toString());
    }

    @Override // okio.BufferedSource
    public void require(long j4) {
        if (!request(j4)) {
            throw new EOFException();
        }
    }

    @Override // okio.BufferedSource
    public int select(@NotNull Options options) {
        Intrinsics.checkNotNullParameter(options, "options");
        if (!this.closed) {
            while (true) {
                int selectPrefix = BufferKt.selectPrefix(this.bufferField, options, true);
                if (selectPrefix == -2) {
                    if (this.source.read(this.bufferField, 8192) == -1) {
                        break;
                    }
                } else if (selectPrefix != -1) {
                    this.bufferField.skip(options.getByteStrings$okio()[selectPrefix].size());
                    return selectPrefix;
                }
            }
            return -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSource
    public void skip(long j4) {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        while (j4 > 0) {
            if (this.bufferField.size() == 0 && this.source.read(this.bufferField, 8192) == -1) {
                throw new EOFException();
            }
            long min = Math.min(j4, this.bufferField.size());
            this.bufferField.skip(min);
            j4 -= min;
        }
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return this.source.timeout();
    }

    @NotNull
    public String toString() {
        return "buffer(" + this.source + ')';
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b4, long j4) {
        return indexOf(b4, j4, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(@NotNull ByteString targetBytes, long j4) {
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        while (true) {
            long indexOfElement = this.bufferField.indexOfElement(targetBytes, j4);
            if (indexOfElement != -1) {
                return indexOfElement;
            }
            long size = this.bufferField.size();
            if (this.source.read(this.bufferField, 8192) == -1) {
                return -1L;
            }
            j4 = Math.max(j4, size);
        }
    }

    @Override // okio.Source
    public long read(@NotNull Buffer sink, long j4) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j4 >= 0) {
            if (true ^ this.closed) {
                if (this.bufferField.size() == 0 && this.source.read(this.bufferField, 8192) == -1) {
                    return -1L;
                }
                return this.bufferField.read(sink, Math.min(j4, this.bufferField.size()));
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j4).toString());
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8LineStrict(long j4) {
        if (j4 >= 0) {
            long j5 = j4 == Long.MAX_VALUE ? Long.MAX_VALUE : j4 + 1;
            byte b4 = (byte) 10;
            long indexOf = indexOf(b4, 0L, j5);
            if (indexOf != -1) {
                return BufferKt.readUtf8Line(this.bufferField, indexOf);
            }
            if (j5 < Long.MAX_VALUE && request(j5) && this.bufferField.getByte(j5 - 1) == ((byte) 13) && request(1 + j5) && this.bufferField.getByte(j5) == b4) {
                return BufferKt.readUtf8Line(this.bufferField, j5);
            }
            Buffer buffer = new Buffer();
            Buffer buffer2 = this.bufferField;
            buffer2.copyTo(buffer, 0L, Math.min(32, buffer2.size()));
            throw new EOFException("\\n not found: limit=" + Math.min(this.bufferField.size(), j4) + " content=" + buffer.readByteString().hex() + "…");
        }
        throw new IllegalArgumentException(("limit < 0: " + j4).toString());
    }

    @Override // okio.BufferedSource
    public long indexOf(@NotNull ByteString bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return indexOf(bytes, 0L);
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j4, @NotNull ByteString bytes, int i2, int i4) {
        int i5;
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (!this.closed) {
            if (j4 >= 0 && i2 >= 0 && i4 >= 0 && bytes.size() - i2 >= i4) {
                while (i5 < i4) {
                    long j5 = i5 + j4;
                    i5 = (request(1 + j5) && this.bufferField.getByte(j5) == bytes.getByte(i2 + i5)) ? i5 + 1 : 0;
                }
                return true;
            }
            return false;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b4, long j4, long j5) {
        boolean z3 = true;
        if (!this.closed) {
            if (!((0 > j4 || j5 < j4) ? false : false)) {
                throw new IllegalArgumentException(("fromIndex=" + j4 + " toIndex=" + j5).toString());
            }
            while (j4 < j5) {
                long indexOf = this.bufferField.indexOf(b4, j4, j5);
                if (indexOf != -1) {
                    return indexOf;
                }
                long size = this.bufferField.size();
                if (size >= j5 || this.source.read(this.bufferField, 8192) == -1) {
                    return -1L;
                }
                j4 = Math.max(j4, size);
            }
            return -1L;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readString(@NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        this.bufferField.writeAll(this.source);
        return this.bufferField.readString(charset);
    }

    @Override // okio.BufferedSource
    @NotNull
    public byte[] readByteArray(long j4) {
        require(j4);
        return this.bufferField.readByteArray(j4);
    }

    @Override // okio.BufferedSource
    @NotNull
    public ByteString readByteString(long j4) {
        require(j4);
        return this.bufferField.readByteString(j4);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8(long j4) {
        require(j4);
        return this.bufferField.readUtf8(j4);
    }

    @Override // okio.BufferedSource
    public void readFully(@NotNull Buffer sink, long j4) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        try {
            require(j4);
            this.bufferField.readFully(sink, j4);
        } catch (EOFException e4) {
            sink.writeAll(this.bufferField);
            throw e4;
        }
    }

    @Override // okio.BufferedSource
    public long indexOf(@NotNull ByteString bytes, long j4) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        while (true) {
            long indexOf = this.bufferField.indexOf(bytes, j4);
            if (indexOf != -1) {
                return indexOf;
            }
            long size = this.bufferField.size();
            if (this.source.read(this.bufferField, 8192) == -1) {
                return -1L;
            }
            j4 = Math.max(j4, (size - bytes.size()) + 1);
        }
    }

    @Override // okio.BufferedSource
    public int read(@NotNull byte[] sink, int i2, int i4) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        long j4 = i4;
        Util.checkOffsetAndCount(sink.length, i2, j4);
        if (this.bufferField.size() == 0 && this.source.read(this.bufferField, 8192) == -1) {
            return -1;
        }
        return this.bufferField.read(sink, i2, (int) Math.min(j4, this.bufferField.size()));
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(@NotNull ByteBuffer sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (this.bufferField.size() == 0 && this.source.read(this.bufferField, 8192) == -1) {
            return -1;
        }
        return this.bufferField.read(sink);
    }
}
