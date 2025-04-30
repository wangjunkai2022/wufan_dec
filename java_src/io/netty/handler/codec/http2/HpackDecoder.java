package io.netty.handler.codec.http2;

import io.netty.buffer.ByteBuf;
import io.netty.handler.codec.http2.HpackUtil;
import io.netty.handler.codec.http2.Http2Exception;
import io.netty.handler.codec.http2.Http2Headers;
import io.netty.util.AsciiString;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.ThrowableUtil;
import kotlin.jvm.internal.ByteCompanionObject;
import okio.Utf8;
/* loaded from: classes5.dex */
final class HpackDecoder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Http2Exception DECODE_ILLEGAL_INDEX_VALUE;
    private static final Http2Exception DECODE_ULE_128_DECOMPRESSION_EXCEPTION;
    private static final Http2Exception DECODE_ULE_128_TO_INT_DECOMPRESSION_EXCEPTION;
    private static final Http2Exception DECODE_ULE_128_TO_LONG_DECOMPRESSION_EXCEPTION;
    private static final Http2Exception INDEX_HEADER_ILLEGAL_INDEX_VALUE;
    private static final Http2Exception INVALID_MAX_DYNAMIC_TABLE_SIZE;
    private static final Http2Exception MAX_DYNAMIC_TABLE_SIZE_CHANGE_REQUIRED;
    private static final byte READ_HEADER_REPRESENTATION = 0;
    private static final byte READ_INDEXED_HEADER = 2;
    private static final byte READ_INDEXED_HEADER_NAME = 3;
    private static final byte READ_LITERAL_HEADER_NAME = 6;
    private static final byte READ_LITERAL_HEADER_NAME_LENGTH = 5;
    private static final byte READ_LITERAL_HEADER_NAME_LENGTH_PREFIX = 4;
    private static final byte READ_LITERAL_HEADER_VALUE = 9;
    private static final byte READ_LITERAL_HEADER_VALUE_LENGTH = 8;
    private static final byte READ_LITERAL_HEADER_VALUE_LENGTH_PREFIX = 7;
    private static final byte READ_MAX_DYNAMIC_TABLE_SIZE = 1;
    private static final Http2Exception READ_NAME_ILLEGAL_INDEX_VALUE;
    private long encoderMaxDynamicTableSize;
    private final HpackDynamicTable hpackDynamicTable;
    private final HpackHuffmanDecoder huffmanDecoder;
    private long maxDynamicTableSize;
    private boolean maxDynamicTableSizeChangeRequired;
    private long maxHeaderListSize;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.netty.handler.codec.http2.HpackDecoder$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$http2$HpackUtil$IndexType;

        static {
            int[] iArr = new int[HpackUtil.IndexType.values().length];
            $SwitchMap$io$netty$handler$codec$http2$HpackUtil$IndexType = iArr;
            try {
                iArr[HpackUtil.IndexType.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$http2$HpackUtil$IndexType[HpackUtil.IndexType.NEVER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$http2$HpackUtil$IndexType[HpackUtil.IndexType.INCREMENTAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public enum HeaderType {
        REGULAR_HEADER,
        REQUEST_PSEUDO_HEADER,
        RESPONSE_PSEUDO_HEADER
    }

    /* loaded from: classes5.dex */
    private static final class Http2HeadersSink implements Sink {
        private boolean exceededMaxLength;
        private final Http2Headers headers;
        private long headersLength;
        private final long maxHeaderListSize;
        private HeaderType previousType;
        private final int streamId;
        private final boolean validate;
        private Http2Exception validationException;

        Http2HeadersSink(int i2, Http2Headers http2Headers, long j4, boolean z3) {
            this.headers = http2Headers;
            this.maxHeaderListSize = j4;
            this.streamId = i2;
            this.validate = z3;
        }

        @Override // io.netty.handler.codec.http2.HpackDecoder.Sink
        public void appendToHeaderList(CharSequence charSequence, CharSequence charSequence2) {
            long sizeOf = this.headersLength + HpackHeaderField.sizeOf(charSequence, charSequence2);
            this.headersLength = sizeOf;
            boolean z3 = (sizeOf > this.maxHeaderListSize) | this.exceededMaxLength;
            this.exceededMaxLength = z3;
            if (z3 || this.validationException != null) {
                return;
            }
            if (this.validate) {
                try {
                    this.previousType = HpackDecoder.validate(this.streamId, charSequence, this.previousType);
                } catch (Http2Exception e4) {
                    this.validationException = e4;
                    return;
                }
            }
            this.headers.add((Http2Headers) charSequence, charSequence2);
        }

        @Override // io.netty.handler.codec.http2.HpackDecoder.Sink
        public void finish() throws Http2Exception {
            if (this.exceededMaxLength) {
                Http2CodecUtil.headerListSizeExceeded(this.streamId, this.maxHeaderListSize, true);
                return;
            }
            Http2Exception http2Exception = this.validationException;
            if (http2Exception != null) {
                throw http2Exception;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public interface Sink {
        void appendToHeaderList(CharSequence charSequence, CharSequence charSequence2);

        void finish() throws Http2Exception;
    }

    static {
        Http2Error http2Error = Http2Error.COMPRESSION_ERROR;
        Http2Exception.ShutdownHint shutdownHint = Http2Exception.ShutdownHint.HARD_SHUTDOWN;
        DECODE_ULE_128_DECOMPRESSION_EXCEPTION = (Http2Exception) ThrowableUtil.unknownStackTrace(Http2Exception.newStatic(http2Error, "HPACK - decompression failure", shutdownHint), HpackDecoder.class, "decodeULE128(..)");
        DECODE_ULE_128_TO_LONG_DECOMPRESSION_EXCEPTION = (Http2Exception) ThrowableUtil.unknownStackTrace(Http2Exception.newStatic(http2Error, "HPACK - long overflow", shutdownHint), HpackDecoder.class, "decodeULE128(..)");
        DECODE_ULE_128_TO_INT_DECOMPRESSION_EXCEPTION = (Http2Exception) ThrowableUtil.unknownStackTrace(Http2Exception.newStatic(http2Error, "HPACK - int overflow", shutdownHint), HpackDecoder.class, "decodeULE128ToInt(..)");
        DECODE_ILLEGAL_INDEX_VALUE = (Http2Exception) ThrowableUtil.unknownStackTrace(Http2Exception.newStatic(http2Error, "HPACK - illegal index value", shutdownHint), HpackDecoder.class, "decode(..)");
        INDEX_HEADER_ILLEGAL_INDEX_VALUE = (Http2Exception) ThrowableUtil.unknownStackTrace(Http2Exception.newStatic(http2Error, "HPACK - illegal index value", shutdownHint), HpackDecoder.class, "indexHeader(..)");
        READ_NAME_ILLEGAL_INDEX_VALUE = (Http2Exception) ThrowableUtil.unknownStackTrace(Http2Exception.newStatic(http2Error, "HPACK - illegal index value", shutdownHint), HpackDecoder.class, "readName(..)");
        INVALID_MAX_DYNAMIC_TABLE_SIZE = (Http2Exception) ThrowableUtil.unknownStackTrace(Http2Exception.newStatic(http2Error, "HPACK - invalid max dynamic table size", shutdownHint), HpackDecoder.class, "setDynamicTableSize(..)");
        MAX_DYNAMIC_TABLE_SIZE_CHANGE_REQUIRED = (Http2Exception) ThrowableUtil.unknownStackTrace(Http2Exception.newStatic(http2Error, "HPACK - max dynamic table size change required", shutdownHint), HpackDecoder.class, "decode(..)");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HpackDecoder(long j4) {
        this(j4, 4096);
    }

    static int decodeULE128(ByteBuf byteBuf, int i2) throws Http2Exception {
        int readerIndex = byteBuf.readerIndex();
        long decodeULE128 = decodeULE128(byteBuf, i2);
        if (decodeULE128 <= 2147483647L) {
            return (int) decodeULE128;
        }
        byteBuf.readerIndex(readerIndex);
        throw DECODE_ULE_128_TO_INT_DECOMPRESSION_EXCEPTION;
    }

    private HpackHeaderField getIndexedHeader(int i2) throws Http2Exception {
        int i4 = HpackStaticTable.length;
        if (i2 <= i4) {
            return HpackStaticTable.getEntry(i2);
        }
        if (i2 - i4 <= this.hpackDynamicTable.length()) {
            return this.hpackDynamicTable.getEntry(i2 - i4);
        }
        throw INDEX_HEADER_ILLEGAL_INDEX_VALUE;
    }

    private void insertHeader(Sink sink, CharSequence charSequence, CharSequence charSequence2, HpackUtil.IndexType indexType) {
        sink.appendToHeaderList(charSequence, charSequence2);
        int i2 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$http2$HpackUtil$IndexType[indexType.ordinal()];
        if (i2 == 1 || i2 == 2) {
            return;
        }
        if (i2 == 3) {
            this.hpackDynamicTable.add(new HpackHeaderField(charSequence, charSequence2));
            return;
        }
        throw new Error("should not reach here");
    }

    private static IllegalArgumentException notEnoughDataException(ByteBuf byteBuf) {
        return new IllegalArgumentException("decode only works with an entire header block! " + byteBuf);
    }

    private CharSequence readName(int i2) throws Http2Exception {
        int i4 = HpackStaticTable.length;
        if (i2 <= i4) {
            return HpackStaticTable.getEntry(i2).name;
        }
        if (i2 - i4 <= this.hpackDynamicTable.length()) {
            return this.hpackDynamicTable.getEntry(i2 - i4).name;
        }
        throw READ_NAME_ILLEGAL_INDEX_VALUE;
    }

    private CharSequence readStringLiteral(ByteBuf byteBuf, int i2, boolean z3) throws Http2Exception {
        if (z3) {
            return this.huffmanDecoder.decode(byteBuf, i2);
        }
        byte[] bArr = new byte[i2];
        byteBuf.readBytes(bArr);
        return new AsciiString(bArr, false);
    }

    private void setDynamicTableSize(long j4) throws Http2Exception {
        if (j4 <= this.maxDynamicTableSize) {
            this.encoderMaxDynamicTableSize = j4;
            this.maxDynamicTableSizeChangeRequired = false;
            this.hpackDynamicTable.setCapacity(j4);
            return;
        }
        throw INVALID_MAX_DYNAMIC_TABLE_SIZE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static HeaderType validate(int i2, CharSequence charSequence, HeaderType headerType) throws Http2Exception {
        if (Http2Headers.PseudoHeaderName.hasPseudoHeaderFormat(charSequence)) {
            if (headerType != HeaderType.REGULAR_HEADER) {
                Http2Headers.PseudoHeaderName pseudoHeader = Http2Headers.PseudoHeaderName.getPseudoHeader(charSequence);
                if (pseudoHeader != null) {
                    HeaderType headerType2 = pseudoHeader.isRequestOnly() ? HeaderType.REQUEST_PSEUDO_HEADER : HeaderType.RESPONSE_PSEUDO_HEADER;
                    if (headerType == null || headerType2 == headerType) {
                        return headerType2;
                    }
                    throw Http2Exception.streamError(i2, Http2Error.PROTOCOL_ERROR, "Mix of request and response pseudo-headers.", new Object[0]);
                }
                throw Http2Exception.streamError(i2, Http2Error.PROTOCOL_ERROR, "Invalid HTTP/2 pseudo-header '%s' encountered.", charSequence);
            }
            throw Http2Exception.streamError(i2, Http2Error.PROTOCOL_ERROR, "Pseudo-header field '%s' found after regular header.", charSequence);
        }
        return HeaderType.REGULAR_HEADER;
    }

    public void decode(int i2, ByteBuf byteBuf, Http2Headers http2Headers, boolean z3) throws Http2Exception {
        Http2HeadersSink http2HeadersSink = new Http2HeadersSink(i2, http2Headers, this.maxHeaderListSize, z3);
        decode(byteBuf, http2HeadersSink);
        http2HeadersSink.finish();
    }

    HpackHeaderField getHeaderField(int i2) {
        return this.hpackDynamicTable.getEntry(i2 + 1);
    }

    public long getMaxHeaderListSize() {
        return this.maxHeaderListSize;
    }

    public long getMaxHeaderTableSize() {
        return this.hpackDynamicTable.capacity();
    }

    int length() {
        return this.hpackDynamicTable.length();
    }

    @Deprecated
    public void setMaxHeaderListSize(long j4, long j5) throws Http2Exception {
        setMaxHeaderListSize(j4);
    }

    public void setMaxHeaderTableSize(long j4) throws Http2Exception {
        if (j4 >= 0 && j4 <= 4294967295L) {
            this.maxDynamicTableSize = j4;
            if (j4 < this.encoderMaxDynamicTableSize) {
                this.maxDynamicTableSizeChangeRequired = true;
                this.hpackDynamicTable.setCapacity(j4);
                return;
            }
            return;
        }
        throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Header Table Size must be >= %d and <= %d but was %d", 0L, 4294967295L, Long.valueOf(j4));
    }

    long size() {
        return this.hpackDynamicTable.size();
    }

    HpackDecoder(long j4, int i2) {
        this.huffmanDecoder = new HpackHuffmanDecoder();
        this.maxHeaderListSize = ObjectUtil.checkPositive(j4, "maxHeaderListSize");
        long j5 = i2;
        this.encoderMaxDynamicTableSize = j5;
        this.maxDynamicTableSize = j5;
        this.maxDynamicTableSizeChangeRequired = false;
        this.hpackDynamicTable = new HpackDynamicTable(j5);
    }

    public void setMaxHeaderListSize(long j4) throws Http2Exception {
        if (j4 >= 0 && j4 <= 4294967295L) {
            this.maxHeaderListSize = j4;
            return;
        }
        throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Header List Size must be >= %d and <= %d but was %d", 0L, 4294967295L, Long.valueOf(j4));
    }

    private void decode(ByteBuf byteBuf, Sink sink) throws Http2Exception {
        boolean z3;
        HpackUtil.IndexType indexType = HpackUtil.IndexType.NONE;
        CharSequence charSequence = null;
        boolean z4 = false;
        int i2 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (byteBuf.isReadable()) {
            switch (i2) {
                case 0:
                    byte readByte = byteBuf.readByte();
                    if (this.maxDynamicTableSizeChangeRequired && (readByte & 224) != 32) {
                        throw MAX_DYNAMIC_TABLE_SIZE_CHANGE_REQUIRED;
                    }
                    if (readByte < 0) {
                        i4 = readByte & ByteCompanionObject.MAX_VALUE;
                        if (i4 == 0) {
                            throw DECODE_ILLEGAL_INDEX_VALUE;
                        }
                        if (i4 == 127) {
                            i2 = 2;
                            break;
                        } else {
                            HpackHeaderField indexedHeader = getIndexedHeader(i4);
                            sink.appendToHeaderList(indexedHeader.name, indexedHeader.value);
                            break;
                        }
                    } else if ((readByte & 64) == 64) {
                        indexType = HpackUtil.IndexType.INCREMENTAL;
                        i4 = readByte & Utf8.REPLACEMENT_BYTE;
                        if (i4 == 0) {
                            i2 = 4;
                            break;
                        } else if (i4 == 63) {
                            i2 = 3;
                            break;
                        } else {
                            charSequence = readName(i4);
                            i5 = charSequence.length();
                            i2 = 7;
                            break;
                        }
                    } else if ((readByte & 32) == 32) {
                        i4 = readByte & 31;
                        if (i4 != 31) {
                            setDynamicTableSize(i4);
                            i2 = 0;
                            break;
                        } else {
                            i2 = 1;
                            break;
                        }
                    } else {
                        indexType = (readByte & 16) == 16 ? HpackUtil.IndexType.NEVER : HpackUtil.IndexType.NONE;
                        i4 = readByte & 15;
                        if (i4 == 0) {
                            i2 = 4;
                        } else if (i4 != 15) {
                            charSequence = readName(i4);
                            i5 = charSequence.length();
                            i2 = 7;
                        } else {
                            i2 = 3;
                        }
                    }
                    break;
                case 1:
                    setDynamicTableSize(decodeULE128(byteBuf, i4));
                    i2 = 0;
                    break;
                case 2:
                    HpackHeaderField indexedHeader2 = getIndexedHeader(decodeULE128(byteBuf, i4));
                    sink.appendToHeaderList(indexedHeader2.name, indexedHeader2.value);
                    i2 = 0;
                    break;
                case 3:
                    charSequence = readName(decodeULE128(byteBuf, i4));
                    i5 = charSequence.length();
                    i2 = 7;
                    break;
                case 4:
                    byte readByte2 = byteBuf.readByte();
                    z3 = (readByte2 & 128) == 128;
                    i4 = readByte2 & ByteCompanionObject.MAX_VALUE;
                    if (i4 != 127) {
                        z4 = z3;
                        i5 = i4;
                        i2 = 6;
                        break;
                    } else {
                        i2 = 5;
                        z4 = z3;
                        break;
                    }
                case 5:
                    i5 = decodeULE128(byteBuf, i4);
                    i2 = 6;
                    break;
                case 6:
                    if (byteBuf.readableBytes() >= i5) {
                        charSequence = readStringLiteral(byteBuf, i5, z4);
                        i2 = 7;
                        break;
                    } else {
                        throw notEnoughDataException(byteBuf);
                    }
                case 7:
                    byte readByte3 = byteBuf.readByte();
                    z3 = (readByte3 & 128) == 128;
                    i4 = readByte3 & ByteCompanionObject.MAX_VALUE;
                    if (i4 == 0) {
                        insertHeader(sink, charSequence, AsciiString.EMPTY_STRING, indexType);
                        z4 = z3;
                        i2 = 0;
                        break;
                    } else if (i4 == 127) {
                        i2 = 8;
                        z4 = z3;
                        break;
                    } else {
                        z4 = z3;
                        i6 = i4;
                        i2 = 9;
                        break;
                    }
                case 8:
                    i6 = decodeULE128(byteBuf, i4);
                    i2 = 9;
                    break;
                case 9:
                    if (byteBuf.readableBytes() >= i6) {
                        insertHeader(sink, charSequence, readStringLiteral(byteBuf, i6, z4), indexType);
                        i2 = 0;
                        break;
                    } else {
                        throw notEnoughDataException(byteBuf);
                    }
                default:
                    throw new Error("should not reach here state: " + i2);
            }
        }
        if (i2 != 0) {
            throw Http2Exception.connectionError(Http2Error.COMPRESSION_ERROR, "Incomplete header block fragment.", new Object[0]);
        }
    }

    static long decodeULE128(ByteBuf byteBuf, long j4) throws Http2Exception {
        int i2 = 0;
        boolean z3 = j4 == 0;
        int writerIndex = byteBuf.writerIndex();
        int readerIndex = byteBuf.readerIndex();
        while (readerIndex < writerIndex) {
            byte b4 = byteBuf.getByte(readerIndex);
            if (i2 == 56 && ((b4 & 128) != 0 || (b4 == Byte.MAX_VALUE && !z3))) {
                throw DECODE_ULE_128_TO_LONG_DECOMPRESSION_EXCEPTION;
            }
            if ((b4 & 128) == 0) {
                byteBuf.readerIndex(readerIndex + 1);
                return j4 + ((b4 & 127) << i2);
            }
            j4 += (b4 & 127) << i2;
            readerIndex++;
            i2 += 7;
        }
        throw DECODE_ULE_128_DECOMPRESSION_EXCEPTION;
    }
}
