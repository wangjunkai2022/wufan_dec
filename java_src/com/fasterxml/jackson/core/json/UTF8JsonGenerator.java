package com.fasterxml.jackson.core.json;

import com.android.dx.io.Opcodes;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.PrettyPrinter;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.NumberOutput;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes2.dex */
public class UTF8JsonGenerator extends JsonGeneratorImpl {
    private static final byte BYTE_0 = 48;
    private static final byte BYTE_BACKSLASH = 92;
    private static final byte BYTE_COLON = 58;
    private static final byte BYTE_COMMA = 44;
    private static final byte BYTE_LBRACKET = 91;
    private static final byte BYTE_LCURLY = 123;
    private static final byte BYTE_RBRACKET = 93;
    private static final byte BYTE_RCURLY = 125;
    private static final int MAX_BYTES_TO_BUFFER = 512;
    protected boolean _bufferRecyclable;
    protected char[] _charBuffer;
    protected final int _charBufferLength;
    protected byte[] _entityBuffer;
    protected byte[] _outputBuffer;
    protected final int _outputEnd;
    protected final int _outputMaxContiguous;
    protected final OutputStream _outputStream;
    protected int _outputTail;
    protected byte _quoteChar;
    private static final byte[] HEX_CHARS = CharTypes.copyHexBytes();
    private static final byte BYTE_u = 117;
    private static final byte[] NULL_BYTES = {110, BYTE_u, 108, 108};
    private static final byte[] TRUE_BYTES = {116, 114, BYTE_u, 101};
    private static final byte[] FALSE_BYTES = {102, 97, 108, 115, 101};

    public UTF8JsonGenerator(IOContext iOContext, int i2, ObjectCodec objectCodec, OutputStream outputStream, char c4) {
        super(iOContext, i2, objectCodec);
        this._outputStream = outputStream;
        this._quoteChar = (byte) c4;
        if (c4 != '\"') {
            this._outputEscapes = CharTypes.get7BitOutputEscapes(c4);
        }
        this._bufferRecyclable = true;
        byte[] allocWriteEncodingBuffer = iOContext.allocWriteEncodingBuffer();
        this._outputBuffer = allocWriteEncodingBuffer;
        int length = allocWriteEncodingBuffer.length;
        this._outputEnd = length;
        this._outputMaxContiguous = length >> 3;
        char[] allocConcatBuffer = iOContext.allocConcatBuffer();
        this._charBuffer = allocConcatBuffer;
        this._charBufferLength = allocConcatBuffer.length;
        if (isEnabled(JsonGenerator.Feature.ESCAPE_NON_ASCII)) {
            setHighestNonEscapedChar(127);
        }
    }

    private final int _handleLongCustomEscape(byte[] bArr, int i2, int i4, byte[] bArr2, int i5) throws IOException, JsonGenerationException {
        int length = bArr2.length;
        if (i2 + length > i4) {
            this._outputTail = i2;
            _flushBuffer();
            i2 = this._outputTail;
            if (length > bArr.length) {
                this._outputStream.write(bArr2, 0, length);
                return i2;
            }
        }
        System.arraycopy(bArr2, 0, bArr, i2, length);
        int i6 = i2 + length;
        if ((i5 * 6) + i6 > i4) {
            this._outputTail = i6;
            _flushBuffer();
            return this._outputTail;
        }
        return i6;
    }

    private final int _outputMultiByteChar(int i2, int i4) throws IOException {
        byte[] bArr = this._outputBuffer;
        if (i2 >= 55296 && i2 <= 57343) {
            int i5 = i4 + 1;
            bArr[i4] = BYTE_BACKSLASH;
            int i6 = i5 + 1;
            bArr[i5] = BYTE_u;
            int i7 = i6 + 1;
            byte[] bArr2 = HEX_CHARS;
            bArr[i6] = bArr2[(i2 >> 12) & 15];
            int i8 = i7 + 1;
            bArr[i7] = bArr2[(i2 >> 8) & 15];
            int i9 = i8 + 1;
            bArr[i8] = bArr2[(i2 >> 4) & 15];
            int i10 = i9 + 1;
            bArr[i9] = bArr2[i2 & 15];
            return i10;
        }
        int i11 = i4 + 1;
        bArr[i4] = (byte) ((i2 >> 12) | Opcodes.SHL_INT_LIT8);
        int i12 = i11 + 1;
        bArr[i11] = (byte) (((i2 >> 6) & 63) | 128);
        int i13 = i12 + 1;
        bArr[i12] = (byte) ((i2 & 63) | 128);
        return i13;
    }

    private final int _outputRawMultiByteChar(int i2, char[] cArr, int i4, int i5) throws IOException {
        if (i2 >= 55296 && i2 <= 57343) {
            if (i4 >= i5 || cArr == null) {
                _reportError(String.format("Split surrogate on writeRaw() input (last character): first character 0x%4x", Integer.valueOf(i2)));
            }
            _outputSurrogates(i2, cArr[i4]);
            return i4 + 1;
        }
        byte[] bArr = this._outputBuffer;
        int i6 = this._outputTail;
        int i7 = i6 + 1;
        this._outputTail = i7;
        bArr[i6] = (byte) ((i2 >> 12) | Opcodes.SHL_INT_LIT8);
        int i8 = i7 + 1;
        this._outputTail = i8;
        bArr[i7] = (byte) (((i2 >> 6) & 63) | 128);
        this._outputTail = i8 + 1;
        bArr[i8] = (byte) ((i2 & 63) | 128);
        return i4;
    }

    private final int _readMore(InputStream inputStream, byte[] bArr, int i2, int i4, int i5) throws IOException {
        int i6 = 0;
        while (i2 < i4) {
            bArr[i6] = bArr[i2];
            i6++;
            i2++;
        }
        int min = Math.min(i5, bArr.length);
        do {
            int i7 = min - i6;
            if (i7 == 0) {
                break;
            }
            int read = inputStream.read(bArr, i6, i7);
            if (read < 0) {
                return i6;
            }
            i6 += read;
        } while (i6 < 3);
        return i6;
    }

    private final void _writeBytes(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (this._outputTail + length > this._outputEnd) {
            _flushBuffer();
            if (length > 512) {
                this._outputStream.write(bArr, 0, length);
                return;
            }
        }
        System.arraycopy(bArr, 0, this._outputBuffer, this._outputTail, length);
        this._outputTail += length;
    }

    private final int _writeCustomEscape(byte[] bArr, int i2, SerializableString serializableString, int i4) throws IOException, JsonGenerationException {
        byte[] asUnquotedUTF8 = serializableString.asUnquotedUTF8();
        int length = asUnquotedUTF8.length;
        if (length > 6) {
            return _handleLongCustomEscape(bArr, i2, this._outputEnd, asUnquotedUTF8, i4);
        }
        System.arraycopy(asUnquotedUTF8, 0, bArr, i2, length);
        return i2 + length;
    }

    private final void _writeCustomStringSegment2(char[] cArr, int i2, int i4) throws IOException {
        if (this._outputTail + ((i4 - i2) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i5 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i6 = this._maximumNonEscapedChar;
        if (i6 <= 0) {
            i6 = 65535;
        }
        CharacterEscapes characterEscapes = this._characterEscapes;
        while (i2 < i4) {
            int i7 = i2 + 1;
            char c4 = cArr[i2];
            if (c4 <= 127) {
                if (iArr[c4] == 0) {
                    bArr[i5] = (byte) c4;
                    i2 = i7;
                    i5++;
                } else {
                    int i8 = iArr[c4];
                    if (i8 > 0) {
                        int i9 = i5 + 1;
                        bArr[i5] = BYTE_BACKSLASH;
                        i5 = i9 + 1;
                        bArr[i9] = (byte) i8;
                    } else if (i8 == -2) {
                        SerializableString escapeSequence = characterEscapes.getEscapeSequence(c4);
                        if (escapeSequence == null) {
                            _reportError("Invalid custom escape definitions; custom escape not found for character code 0x" + Integer.toHexString(c4) + ", although was supposed to have one");
                        }
                        i5 = _writeCustomEscape(bArr, i5, escapeSequence, i4 - i7);
                    } else {
                        i5 = _writeGenericEscape(c4, i5);
                    }
                }
            } else if (c4 > i6) {
                i5 = _writeGenericEscape(c4, i5);
            } else {
                SerializableString escapeSequence2 = characterEscapes.getEscapeSequence(c4);
                if (escapeSequence2 != null) {
                    i5 = _writeCustomEscape(bArr, i5, escapeSequence2, i4 - i7);
                } else if (c4 <= 2047) {
                    int i10 = i5 + 1;
                    bArr[i5] = (byte) ((c4 >> 6) | 192);
                    i5 = i10 + 1;
                    bArr[i10] = (byte) ((c4 & '?') | 128);
                } else {
                    i5 = _outputMultiByteChar(c4, i5);
                }
            }
            i2 = i7;
        }
        this._outputTail = i5;
    }

    private int _writeGenericEscape(int i2, int i4) throws IOException {
        int i5;
        byte[] bArr = this._outputBuffer;
        int i6 = i4 + 1;
        bArr[i4] = BYTE_BACKSLASH;
        int i7 = i6 + 1;
        bArr[i6] = BYTE_u;
        if (i2 > 255) {
            int i8 = 255 & (i2 >> 8);
            int i9 = i7 + 1;
            byte[] bArr2 = HEX_CHARS;
            bArr[i7] = bArr2[i8 >> 4];
            i5 = i9 + 1;
            bArr[i9] = bArr2[i8 & 15];
            i2 &= 255;
        } else {
            int i10 = i7 + 1;
            bArr[i7] = BYTE_0;
            i5 = i10 + 1;
            bArr[i10] = BYTE_0;
        }
        int i11 = i5 + 1;
        byte[] bArr3 = HEX_CHARS;
        bArr[i5] = bArr3[i2 >> 4];
        int i12 = i11 + 1;
        bArr[i11] = bArr3[i2 & 15];
        return i12;
    }

    private final void _writeNull() throws IOException {
        if (this._outputTail + 4 >= this._outputEnd) {
            _flushBuffer();
        }
        System.arraycopy(NULL_BYTES, 0, this._outputBuffer, this._outputTail, 4);
        this._outputTail += 4;
    }

    private final void _writeQuotedInt(int i2) throws IOException {
        if (this._outputTail + 13 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i4 = this._outputTail;
        int i5 = i4 + 1;
        this._outputTail = i5;
        bArr[i4] = this._quoteChar;
        int outputInt = NumberOutput.outputInt(i2, bArr, i5);
        this._outputTail = outputInt;
        byte[] bArr2 = this._outputBuffer;
        this._outputTail = outputInt + 1;
        bArr2[outputInt] = this._quoteChar;
    }

    private final void _writeQuotedLong(long j4) throws IOException {
        if (this._outputTail + 23 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        int i4 = i2 + 1;
        this._outputTail = i4;
        bArr[i2] = this._quoteChar;
        int outputLong = NumberOutput.outputLong(j4, bArr, i4);
        this._outputTail = outputLong;
        byte[] bArr2 = this._outputBuffer;
        this._outputTail = outputLong + 1;
        bArr2[outputLong] = this._quoteChar;
    }

    private final void _writeQuotedRaw(String str) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr[i2] = this._quoteChar;
        writeRaw(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        bArr2[i4] = this._quoteChar;
    }

    private final void _writeQuotedShort(short s3) throws IOException {
        if (this._outputTail + 8 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        int i4 = i2 + 1;
        this._outputTail = i4;
        bArr[i2] = this._quoteChar;
        int outputInt = NumberOutput.outputInt(s3, bArr, i4);
        this._outputTail = outputInt;
        byte[] bArr2 = this._outputBuffer;
        this._outputTail = outputInt + 1;
        bArr2[outputInt] = this._quoteChar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0008, code lost:
        r0 = r7 + 1;
        r7 = r6[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x000e, code lost:
        if (r7 >= 2048) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0010, code lost:
        r1 = r5._outputBuffer;
        r2 = r5._outputTail;
        r3 = r2 + 1;
        r5._outputTail = r3;
        r1[r2] = (byte) ((r7 >> 6) | 192);
        r5._outputTail = r3 + 1;
        r1[r3] = (byte) ((r7 & '?') | 128);
        r7 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002c, code lost:
        r7 = _outputRawMultiByteChar(r7, r6, r0, r8);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _writeRawSegment(char[] r6, int r7, int r8) throws java.io.IOException {
        /*
            r5 = this;
        L0:
            if (r7 >= r8) goto L40
        L2:
            char r0 = r6[r7]
            r1 = 127(0x7f, float:1.78E-43)
            if (r0 <= r1) goto L31
            int r0 = r7 + 1
            char r7 = r6[r7]
            r1 = 2048(0x800, float:2.87E-42)
            if (r7 >= r1) goto L2c
            byte[] r1 = r5._outputBuffer
            int r2 = r5._outputTail
            int r3 = r2 + 1
            r5._outputTail = r3
            int r4 = r7 >> 6
            r4 = r4 | 192(0xc0, float:2.69E-43)
            byte r4 = (byte) r4
            r1[r2] = r4
            int r2 = r3 + 1
            r5._outputTail = r2
            r7 = r7 & 63
            r7 = r7 | 128(0x80, float:1.794E-43)
            byte r7 = (byte) r7
            r1[r3] = r7
            r7 = r0
            goto L0
        L2c:
            int r7 = r5._outputRawMultiByteChar(r7, r6, r0, r8)
            goto L0
        L31:
            byte[] r1 = r5._outputBuffer
            int r2 = r5._outputTail
            int r3 = r2 + 1
            r5._outputTail = r3
            byte r0 = (byte) r0
            r1[r2] = r0
            int r7 = r7 + 1
            if (r7 < r8) goto L2
        L40:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8JsonGenerator._writeRawSegment(char[], int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
        if (r9 >= 2048) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0020, code lost:
        r4 = r7._outputTail;
        r5 = r4 + 1;
        r7._outputTail = r5;
        r1[r4] = (byte) ((r9 >> 6) | 192);
        r7._outputTail = r5 + 1;
        r1[r5] = (byte) ((r9 & '?') | 128);
        r9 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
        r9 = _outputRawMultiByteChar(r9, r8, r2, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
        if ((r7._outputTail + 3) < r7._outputEnd) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0015, code lost:
        _flushBuffer();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0018, code lost:
        r2 = r9 + 1;
        r9 = r8[r9];
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void _writeSegmentedRaw(char[] r8, int r9, int r10) throws java.io.IOException {
        /*
            r7 = this;
            int r0 = r7._outputEnd
            byte[] r1 = r7._outputBuffer
            int r10 = r10 + r9
        L5:
            if (r9 >= r10) goto L52
        L7:
            char r2 = r8[r9]
            r3 = 128(0x80, float:1.794E-43)
            if (r2 < r3) goto L3e
            int r2 = r7._outputTail
            int r2 = r2 + 3
            int r4 = r7._outputEnd
            if (r2 < r4) goto L18
            r7._flushBuffer()
        L18:
            int r2 = r9 + 1
            char r9 = r8[r9]
            r4 = 2048(0x800, float:2.87E-42)
            if (r9 >= r4) goto L39
            int r4 = r7._outputTail
            int r5 = r4 + 1
            r7._outputTail = r5
            int r6 = r9 >> 6
            r6 = r6 | 192(0xc0, float:2.69E-43)
            byte r6 = (byte) r6
            r1[r4] = r6
            int r4 = r5 + 1
            r7._outputTail = r4
            r9 = r9 & 63
            r9 = r9 | r3
            byte r9 = (byte) r9
            r1[r5] = r9
            r9 = r2
            goto L5
        L39:
            int r9 = r7._outputRawMultiByteChar(r9, r8, r2, r10)
            goto L5
        L3e:
            int r3 = r7._outputTail
            if (r3 < r0) goto L45
            r7._flushBuffer()
        L45:
            int r3 = r7._outputTail
            int r4 = r3 + 1
            r7._outputTail = r4
            byte r2 = (byte) r2
            r1[r3] = r2
            int r9 = r9 + 1
            if (r9 < r10) goto L7
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8JsonGenerator._writeSegmentedRaw(char[], int, int):void");
    }

    private final void _writeStringSegment(char[] cArr, int i2, int i4) throws IOException {
        int i5 = i4 + i2;
        int i6 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        while (i2 < i5) {
            char c4 = cArr[i2];
            if (c4 > 127 || iArr[c4] != 0) {
                break;
            }
            bArr[i6] = (byte) c4;
            i2++;
            i6++;
        }
        this._outputTail = i6;
        if (i2 < i5) {
            if (this._characterEscapes != null) {
                _writeCustomStringSegment2(cArr, i2, i5);
            } else if (this._maximumNonEscapedChar == 0) {
                _writeStringSegment2(cArr, i2, i5);
            } else {
                _writeStringSegmentASCII2(cArr, i2, i5);
            }
        }
    }

    private final void _writeStringSegment2(char[] cArr, int i2, int i4) throws IOException {
        if (this._outputTail + ((i4 - i2) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i5 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        while (i2 < i4) {
            int i6 = i2 + 1;
            char c4 = cArr[i2];
            if (c4 <= 127) {
                if (iArr[c4] == 0) {
                    bArr[i5] = (byte) c4;
                    i2 = i6;
                    i5++;
                } else {
                    int i7 = iArr[c4];
                    if (i7 > 0) {
                        int i8 = i5 + 1;
                        bArr[i5] = BYTE_BACKSLASH;
                        i5 = i8 + 1;
                        bArr[i8] = (byte) i7;
                    } else {
                        i5 = _writeGenericEscape(c4, i5);
                    }
                }
            } else if (c4 <= 2047) {
                int i9 = i5 + 1;
                bArr[i5] = (byte) ((c4 >> 6) | 192);
                i5 = i9 + 1;
                bArr[i9] = (byte) ((c4 & '?') | 128);
            } else {
                i5 = _outputMultiByteChar(c4, i5);
            }
            i2 = i6;
        }
        this._outputTail = i5;
    }

    private final void _writeStringSegmentASCII2(char[] cArr, int i2, int i4) throws IOException {
        if (this._outputTail + ((i4 - i2) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i5 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i6 = this._maximumNonEscapedChar;
        while (i2 < i4) {
            int i7 = i2 + 1;
            char c4 = cArr[i2];
            if (c4 <= 127) {
                if (iArr[c4] == 0) {
                    bArr[i5] = (byte) c4;
                    i2 = i7;
                    i5++;
                } else {
                    int i8 = iArr[c4];
                    if (i8 > 0) {
                        int i9 = i5 + 1;
                        bArr[i5] = BYTE_BACKSLASH;
                        i5 = i9 + 1;
                        bArr[i9] = (byte) i8;
                    } else {
                        i5 = _writeGenericEscape(c4, i5);
                    }
                }
            } else if (c4 > i6) {
                i5 = _writeGenericEscape(c4, i5);
            } else if (c4 <= 2047) {
                int i10 = i5 + 1;
                bArr[i5] = (byte) ((c4 >> 6) | 192);
                i5 = i10 + 1;
                bArr[i10] = (byte) ((c4 & '?') | 128);
            } else {
                i5 = _outputMultiByteChar(c4, i5);
            }
            i2 = i7;
        }
        this._outputTail = i5;
    }

    private final void _writeStringSegments(String str, boolean z3) throws IOException {
        if (z3) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            bArr[i2] = this._quoteChar;
        }
        int length = str.length();
        int i4 = 0;
        while (length > 0) {
            int min = Math.min(this._outputMaxContiguous, length);
            if (this._outputTail + min > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(str, i4, min);
            i4 += min;
            length -= min;
        }
        if (z3) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr2 = this._outputBuffer;
            int i5 = this._outputTail;
            this._outputTail = i5 + 1;
            bArr2[i5] = this._quoteChar;
        }
    }

    private final void _writeUTF8Segment(byte[] bArr, int i2, int i4) throws IOException, JsonGenerationException {
        int[] iArr = this._outputEscapes;
        int i5 = i2 + i4;
        int i6 = i2;
        while (i6 < i5) {
            int i7 = i6 + 1;
            byte b4 = bArr[i6];
            if (b4 >= 0 && iArr[b4] != 0) {
                _writeUTF8Segment2(bArr, i2, i4);
                return;
            }
            i6 = i7;
        }
        if (this._outputTail + i4 > this._outputEnd) {
            _flushBuffer();
        }
        System.arraycopy(bArr, i2, this._outputBuffer, this._outputTail, i4);
        this._outputTail += i4;
    }

    private final void _writeUTF8Segment2(byte[] bArr, int i2, int i4) throws IOException, JsonGenerationException {
        int i5 = this._outputTail;
        if ((i4 * 6) + i5 > this._outputEnd) {
            _flushBuffer();
            i5 = this._outputTail;
        }
        byte[] bArr2 = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i6 = i4 + i2;
        while (i2 < i6) {
            int i7 = i2 + 1;
            byte b4 = bArr[i2];
            if (b4 >= 0 && iArr[b4] != 0) {
                int i8 = iArr[b4];
                if (i8 > 0) {
                    int i9 = i5 + 1;
                    bArr2[i5] = BYTE_BACKSLASH;
                    i5 = i9 + 1;
                    bArr2[i9] = (byte) i8;
                } else {
                    i5 = _writeGenericEscape(b4, i5);
                }
                i2 = i7;
            } else {
                bArr2[i5] = b4;
                i2 = i7;
                i5++;
            }
        }
        this._outputTail = i5;
    }

    private final void _writeUTF8Segments(byte[] bArr, int i2, int i4) throws IOException, JsonGenerationException {
        do {
            int min = Math.min(this._outputMaxContiguous, i4);
            _writeUTF8Segment(bArr, i2, min);
            i2 += min;
            i4 -= min;
        } while (i4 > 0);
    }

    private final void _writeUnq(SerializableString serializableString) throws IOException {
        int appendQuotedUTF8 = serializableString.appendQuotedUTF8(this._outputBuffer, this._outputTail);
        if (appendQuotedUTF8 < 0) {
            _writeBytes(serializableString.asQuotedUTF8());
        } else {
            this._outputTail += appendQuotedUTF8;
        }
    }

    protected final void _flushBuffer() throws IOException {
        int i2 = this._outputTail;
        if (i2 > 0) {
            this._outputTail = 0;
            this._outputStream.write(this._outputBuffer, 0, i2);
        }
    }

    protected final void _outputSurrogates(int i2, int i4) throws IOException {
        int _decodeSurrogate = _decodeSurrogate(i2, i4);
        if (this._outputTail + 4 > this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i5 = this._outputTail;
        int i6 = i5 + 1;
        this._outputTail = i6;
        bArr[i5] = (byte) ((_decodeSurrogate >> 18) | 240);
        int i7 = i6 + 1;
        this._outputTail = i7;
        bArr[i6] = (byte) (((_decodeSurrogate >> 12) & 63) | 128);
        int i8 = i7 + 1;
        this._outputTail = i8;
        bArr[i7] = (byte) (((_decodeSurrogate >> 6) & 63) | 128);
        this._outputTail = i8 + 1;
        bArr[i8] = (byte) ((_decodeSurrogate & 63) | 128);
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase
    protected void _releaseBuffers() {
        byte[] bArr = this._outputBuffer;
        if (bArr != null && this._bufferRecyclable) {
            this._outputBuffer = null;
            this._ioContext.releaseWriteEncodingBuffer(bArr);
        }
        char[] cArr = this._charBuffer;
        if (cArr != null) {
            this._charBuffer = null;
            this._ioContext.releaseConcatBuffer(cArr);
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase
    protected final void _verifyValueWrite(String str) throws IOException {
        byte b4;
        int writeValue = this._writeContext.writeValue();
        if (this._cfgPrettyPrinter != null) {
            _verifyPrettyValueWrite(str, writeValue);
            return;
        }
        if (writeValue == 1) {
            b4 = 44;
        } else if (writeValue != 2) {
            if (writeValue != 3) {
                if (writeValue != 5) {
                    return;
                }
                _reportCantWriteValueExpectName(str);
                return;
            }
            SerializableString serializableString = this._rootValueSeparator;
            if (serializableString != null) {
                byte[] asUnquotedUTF8 = serializableString.asUnquotedUTF8();
                if (asUnquotedUTF8.length > 0) {
                    _writeBytes(asUnquotedUTF8);
                    return;
                }
                return;
            }
            return;
        } else {
            b4 = 58;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr[i2] = b4;
    }

    protected final void _writeBinary(Base64Variant base64Variant, byte[] bArr, int i2, int i4) throws IOException, JsonGenerationException {
        int i5 = i4 - 3;
        int i6 = this._outputEnd - 6;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        while (i2 <= i5) {
            if (this._outputTail > i6) {
                _flushBuffer();
            }
            int i7 = i2 + 1;
            int i8 = i7 + 1;
            int i9 = i8 + 1;
            int encodeBase64Chunk = base64Variant.encodeBase64Chunk((((bArr[i2] << 8) | (bArr[i7] & 255)) << 8) | (bArr[i8] & 255), this._outputBuffer, this._outputTail);
            this._outputTail = encodeBase64Chunk;
            maxLineLength--;
            if (maxLineLength <= 0) {
                byte[] bArr2 = this._outputBuffer;
                int i10 = encodeBase64Chunk + 1;
                this._outputTail = i10;
                bArr2[encodeBase64Chunk] = BYTE_BACKSLASH;
                this._outputTail = i10 + 1;
                bArr2[i10] = 110;
                maxLineLength = base64Variant.getMaxLineLength() >> 2;
            }
            i2 = i9;
        }
        int i11 = i4 - i2;
        if (i11 > 0) {
            if (this._outputTail > i6) {
                _flushBuffer();
            }
            int i12 = i2 + 1;
            int i13 = bArr[i2] << 16;
            if (i11 == 2) {
                i13 |= (bArr[i12] & 255) << 8;
            }
            this._outputTail = base64Variant.encodeBase64Partial(i13, i11, this._outputBuffer, this._outputTail);
        }
    }

    protected final void _writePPFieldName(String str) throws IOException {
        int writeFieldName = this._writeContext.writeFieldName(str);
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (writeFieldName == 1) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        if (this._cfgUnqNames) {
            _writeStringSegments(str, false);
            return;
        }
        int length = str.length();
        if (length > this._charBufferLength) {
            _writeStringSegments(str, true);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr[i2] = this._quoteChar;
        str.getChars(0, length, this._charBuffer, 0);
        if (length <= this._outputMaxContiguous) {
            if (this._outputTail + length > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(this._charBuffer, 0, length);
        } else {
            _writeStringSegments(this._charBuffer, 0, length);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        bArr2[i4] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        if (this._outputBuffer != null && isEnabled(JsonGenerator.Feature.AUTO_CLOSE_JSON_CONTENT)) {
            while (true) {
                JsonStreamContext outputContext = getOutputContext();
                if (outputContext.inArray()) {
                    writeEndArray();
                } else if (!outputContext.inObject()) {
                    break;
                } else {
                    writeEndObject();
                }
            }
        }
        _flushBuffer();
        this._outputTail = 0;
        if (this._outputStream != null) {
            if (!this._ioContext.isResourceManaged() && !isEnabled(JsonGenerator.Feature.AUTO_CLOSE_TARGET)) {
                if (isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
                    this._outputStream.flush();
                }
            } else {
                this._outputStream.close();
            }
        }
        _releaseBuffers();
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator, java.io.Flushable
    public void flush() throws IOException {
        _flushBuffer();
        if (this._outputStream == null || !isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
            return;
        }
        this._outputStream.flush();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public int getOutputBuffered() {
        return this._outputTail;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public Object getOutputTarget() {
        return this._outputStream;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeBinary(Base64Variant base64Variant, byte[] bArr, int i2, int i4) throws IOException, JsonGenerationException {
        _verifyValueWrite("write a binary value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i5 = this._outputTail;
        this._outputTail = i5 + 1;
        bArr2[i5] = this._quoteChar;
        _writeBinary(base64Variant, bArr, i2, i4 + i2);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr3 = this._outputBuffer;
        int i6 = this._outputTail;
        this._outputTail = i6 + 1;
        bArr3[i6] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeBoolean(boolean z3) throws IOException {
        _verifyValueWrite("write a boolean value");
        if (this._outputTail + 5 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = z3 ? TRUE_BYTES : FALSE_BYTES;
        int length = bArr.length;
        System.arraycopy(bArr, 0, this._outputBuffer, this._outputTail, length);
        this._outputTail += length;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeEndArray() throws IOException {
        if (!this._writeContext.inArray()) {
            _reportError("Current context not Array but " + this._writeContext.typeDesc());
        }
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            prettyPrinter.writeEndArray(this, this._writeContext.getEntryCount());
        } else {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            bArr[i2] = BYTE_RBRACKET;
        }
        this._writeContext = this._writeContext.clearAndGetParent();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeEndObject() throws IOException {
        if (!this._writeContext.inObject()) {
            _reportError("Current context not Object but " + this._writeContext.typeDesc());
        }
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            prettyPrinter.writeEndObject(this, this._writeContext.getEntryCount());
        } else {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            bArr[i2] = BYTE_RCURLY;
        }
        this._writeContext = this._writeContext.clearAndGetParent();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeFieldName(String str) throws IOException {
        if (this._cfgPrettyPrinter != null) {
            _writePPFieldName(str);
            return;
        }
        int writeFieldName = this._writeContext.writeFieldName(str);
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (writeFieldName == 1) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            bArr[i2] = 44;
        }
        if (this._cfgUnqNames) {
            _writeStringSegments(str, false);
            return;
        }
        int length = str.length();
        if (length > this._charBufferLength) {
            _writeStringSegments(str, true);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i4 = this._outputTail;
        int i5 = i4 + 1;
        this._outputTail = i5;
        bArr2[i4] = this._quoteChar;
        if (length <= this._outputMaxContiguous) {
            if (i5 + length > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(str, 0, length);
        } else {
            _writeStringSegments(str, 0, length);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr3 = this._outputBuffer;
        int i6 = this._outputTail;
        this._outputTail = i6 + 1;
        bArr3[i6] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNull() throws IOException {
        _verifyValueWrite("write a null");
        _writeNull();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(short s3) throws IOException {
        _verifyValueWrite("write a number");
        if (this._outputTail + 6 >= this._outputEnd) {
            _flushBuffer();
        }
        if (this._cfgNumbersAsStrings) {
            _writeQuotedShort(s3);
        } else {
            this._outputTail = NumberOutput.outputInt(s3, this._outputBuffer, this._outputTail);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(String str) throws IOException {
        int length = str.length();
        char[] cArr = this._charBuffer;
        if (length <= cArr.length) {
            str.getChars(0, length, cArr, 0);
            writeRaw(cArr, 0, length);
            return;
        }
        writeRaw(str, 0, length);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRawUTF8String(byte[] bArr, int i2, int i4) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i5 = this._outputTail;
        this._outputTail = i5 + 1;
        bArr2[i5] = this._quoteChar;
        _writeBytes(bArr, i2, i4);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr3 = this._outputBuffer;
        int i6 = this._outputTail;
        this._outputTail = i6 + 1;
        bArr3[i6] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public void writeRawValue(SerializableString serializableString) throws IOException {
        _verifyValueWrite("write a raw (unencoded) value");
        int appendUnquotedUTF8 = serializableString.appendUnquotedUTF8(this._outputBuffer, this._outputTail);
        if (appendUnquotedUTF8 < 0) {
            _writeBytes(serializableString.asUnquotedUTF8());
        } else {
            this._outputTail += appendUnquotedUTF8;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeStartArray() throws IOException {
        _verifyValueWrite("start an array");
        this._writeContext = this._writeContext.createChildArrayContext();
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            prettyPrinter.writeStartArray(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr[i2] = BYTE_LBRACKET;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeStartObject() throws IOException {
        _verifyValueWrite("start an object");
        this._writeContext = this._writeContext.createChildObjectContext();
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            prettyPrinter.writeStartObject(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr[i2] = BYTE_LCURLY;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(String str) throws IOException {
        _verifyValueWrite("write a string");
        if (str == null) {
            _writeNull();
            return;
        }
        int length = str.length();
        if (length > this._outputMaxContiguous) {
            _writeStringSegments(str, true);
            return;
        }
        if (this._outputTail + length >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr[i2] = this._quoteChar;
        _writeStringSegment(str, 0, length);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        bArr2[i4] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeUTF8String(byte[] bArr, int i2, int i4) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i5 = this._outputTail;
        this._outputTail = i5 + 1;
        bArr2[i5] = this._quoteChar;
        if (i4 <= this._outputMaxContiguous) {
            _writeUTF8Segment(bArr, i2, i4);
        } else {
            _writeUTF8Segments(bArr, i2, i4);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr3 = this._outputBuffer;
        int i6 = this._outputTail;
        this._outputTail = i6 + 1;
        bArr3[i6] = this._quoteChar;
    }

    private final void _writeBytes(byte[] bArr, int i2, int i4) throws IOException {
        if (this._outputTail + i4 > this._outputEnd) {
            _flushBuffer();
            if (i4 > 512) {
                this._outputStream.write(bArr, i2, i4);
                return;
            }
        }
        System.arraycopy(bArr, i2, this._outputBuffer, this._outputTail, i4);
        this._outputTail += i4;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(int i2) throws IOException {
        _verifyValueWrite("write a number");
        if (this._outputTail + 11 >= this._outputEnd) {
            _flushBuffer();
        }
        if (this._cfgNumbersAsStrings) {
            _writeQuotedInt(i2);
        } else {
            this._outputTail = NumberOutput.outputInt(i2, this._outputBuffer, this._outputTail);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(String str, int i2, int i4) throws IOException {
        char c4;
        char[] cArr = this._charBuffer;
        int length = cArr.length;
        if (i4 <= length) {
            str.getChars(i2, i2 + i4, cArr, 0);
            writeRaw(cArr, 0, i4);
            return;
        }
        int i5 = this._outputEnd;
        int min = Math.min(length, (i5 >> 2) + (i5 >> 4));
        int i6 = min * 3;
        while (i4 > 0) {
            int min2 = Math.min(min, i4);
            str.getChars(i2, i2 + min2, cArr, 0);
            if (this._outputTail + i6 > this._outputEnd) {
                _flushBuffer();
            }
            if (min2 > 1 && (c4 = cArr[min2 - 1]) >= 55296 && c4 <= 56319) {
                min2--;
            }
            _writeRawSegment(cArr, 0, min2);
            i2 += min2;
            i4 -= min2;
        }
    }

    private void _writeQuotedRaw(char[] cArr, int i2, int i4) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i5 = this._outputTail;
        this._outputTail = i5 + 1;
        bArr[i5] = this._quoteChar;
        writeRaw(cArr, i2, i4);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i6 = this._outputTail;
        this._outputTail = i6 + 1;
        bArr2[i6] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeStartArray(Object obj) throws IOException {
        _verifyValueWrite("start an array");
        this._writeContext = this._writeContext.createChildArrayContext(obj);
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            prettyPrinter.writeStartArray(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr[i2] = BYTE_LBRACKET;
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public void writeStartObject(Object obj) throws IOException {
        _verifyValueWrite("start an object");
        this._writeContext = this._writeContext.createChildObjectContext(obj);
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            prettyPrinter.writeStartObject(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr[i2] = BYTE_LCURLY;
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public int writeBinary(Base64Variant base64Variant, InputStream inputStream, int i2) throws IOException, JsonGenerationException {
        _verifyValueWrite("write a binary value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        bArr[i4] = this._quoteChar;
        byte[] allocBase64Buffer = this._ioContext.allocBase64Buffer();
        try {
            if (i2 < 0) {
                i2 = _writeBinary(base64Variant, inputStream, allocBase64Buffer);
            } else {
                int _writeBinary = _writeBinary(base64Variant, inputStream, allocBase64Buffer, i2);
                if (_writeBinary > 0) {
                    _reportError("Too few bytes available: missing " + _writeBinary + " bytes (out of " + i2 + ")");
                }
            }
            this._ioContext.releaseBase64Buffer(allocBase64Buffer);
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr2 = this._outputBuffer;
            int i5 = this._outputTail;
            this._outputTail = i5 + 1;
            bArr2[i5] = this._quoteChar;
            return i2;
        } catch (Throwable th) {
            this._ioContext.releaseBase64Buffer(allocBase64Buffer);
            throw th;
        }
    }

    private final void _writeStringSegments(char[] cArr, int i2, int i4) throws IOException {
        do {
            int min = Math.min(this._outputMaxContiguous, i4);
            if (this._outputTail + min > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(cArr, i2, min);
            i2 += min;
            i4 -= min;
        } while (i4 > 0);
    }

    public UTF8JsonGenerator(IOContext iOContext, int i2, ObjectCodec objectCodec, OutputStream outputStream, char c4, byte[] bArr, int i4, boolean z3) {
        super(iOContext, i2, objectCodec);
        this._outputStream = outputStream;
        this._quoteChar = (byte) c4;
        if (c4 != '\"') {
            this._outputEscapes = CharTypes.get7BitOutputEscapes(c4);
        }
        this._bufferRecyclable = z3;
        this._outputTail = i4;
        this._outputBuffer = bArr;
        int length = bArr.length;
        this._outputEnd = length;
        this._outputMaxContiguous = length >> 3;
        char[] allocConcatBuffer = iOContext.allocConcatBuffer();
        this._charBuffer = allocConcatBuffer;
        this._charBufferLength = allocConcatBuffer.length;
    }

    private final void _writeStringSegment(String str, int i2, int i4) throws IOException {
        int i5 = i4 + i2;
        int i6 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        while (i2 < i5) {
            char charAt = str.charAt(i2);
            if (charAt > 127 || iArr[charAt] != 0) {
                break;
            }
            bArr[i6] = (byte) charAt;
            i2++;
            i6++;
        }
        this._outputTail = i6;
        if (i2 < i5) {
            if (this._characterEscapes != null) {
                _writeCustomStringSegment2(str, i2, i5);
            } else if (this._maximumNonEscapedChar == 0) {
                _writeStringSegment2(str, i2, i5);
            } else {
                _writeStringSegmentASCII2(str, i2, i5);
            }
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(long j4) throws IOException {
        _verifyValueWrite("write a number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedLong(j4);
            return;
        }
        if (this._outputTail + 21 >= this._outputEnd) {
            _flushBuffer();
        }
        this._outputTail = NumberOutput.outputLong(j4, this._outputBuffer, this._outputTail);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(Reader reader, int i2) throws IOException {
        _verifyValueWrite("write a string");
        if (reader == null) {
            _reportError("null reader");
        }
        int i4 = i2 >= 0 ? i2 : Integer.MAX_VALUE;
        char[] cArr = this._charBuffer;
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i5 = this._outputTail;
        this._outputTail = i5 + 1;
        bArr[i5] = this._quoteChar;
        while (i4 > 0) {
            int read = reader.read(cArr, 0, Math.min(i4, cArr.length));
            if (read <= 0) {
                break;
            }
            if (this._outputTail + i2 >= this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegments(cArr, 0, read);
            i4 -= read;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i6 = this._outputTail;
        this._outputTail = i6 + 1;
        bArr2[i6] = this._quoteChar;
        if (i4 <= 0 || i2 < 0) {
            return;
        }
        _reportError("Didn't read enough from reader");
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeStartArray(Object obj, int i2) throws IOException {
        _verifyValueWrite("start an array");
        this._writeContext = this._writeContext.createChildArrayContext(obj);
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            prettyPrinter.writeStartArray(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        bArr[i4] = BYTE_LBRACKET;
    }

    private final void _writeStringSegments(String str, int i2, int i4) throws IOException {
        do {
            int min = Math.min(this._outputMaxContiguous, i4);
            if (this._outputTail + min > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(str, i2, min);
            i2 += min;
            i4 -= min;
        } while (i4 > 0);
    }

    private final void _writeStringSegment2(String str, int i2, int i4) throws IOException {
        if (this._outputTail + ((i4 - i2) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i5 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        while (i2 < i4) {
            int i6 = i2 + 1;
            char charAt = str.charAt(i2);
            if (charAt <= 127) {
                if (iArr[charAt] == 0) {
                    bArr[i5] = (byte) charAt;
                    i2 = i6;
                    i5++;
                } else {
                    int i7 = iArr[charAt];
                    if (i7 > 0) {
                        int i8 = i5 + 1;
                        bArr[i5] = BYTE_BACKSLASH;
                        i5 = i8 + 1;
                        bArr[i8] = (byte) i7;
                    } else {
                        i5 = _writeGenericEscape(charAt, i5);
                    }
                }
            } else if (charAt <= 2047) {
                int i9 = i5 + 1;
                bArr[i5] = (byte) ((charAt >> 6) | 192);
                i5 = i9 + 1;
                bArr[i9] = (byte) ((charAt & '?') | 128);
            } else {
                i5 = _outputMultiByteChar(charAt, i5);
            }
            i2 = i6;
        }
        this._outputTail = i5;
    }

    protected final int _writeBinary(Base64Variant base64Variant, InputStream inputStream, byte[] bArr, int i2) throws IOException, JsonGenerationException {
        int _readMore;
        int i4 = this._outputEnd - 6;
        int i5 = 2;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        int i6 = -3;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            if (i2 <= 2) {
                break;
            }
            if (i7 > i6) {
                i8 = _readMore(inputStream, bArr, i7, i8, i2);
                if (i8 < 3) {
                    i7 = 0;
                    break;
                }
                i6 = i8 - 3;
                i7 = 0;
            }
            if (this._outputTail > i4) {
                _flushBuffer();
            }
            int i9 = i7 + 1;
            int i10 = i9 + 1;
            i7 = i10 + 1;
            i2 -= 3;
            int encodeBase64Chunk = base64Variant.encodeBase64Chunk((((bArr[i9] & 255) | (bArr[i7] << 8)) << 8) | (bArr[i10] & 255), this._outputBuffer, this._outputTail);
            this._outputTail = encodeBase64Chunk;
            maxLineLength--;
            if (maxLineLength <= 0) {
                byte[] bArr2 = this._outputBuffer;
                int i11 = encodeBase64Chunk + 1;
                this._outputTail = i11;
                bArr2[encodeBase64Chunk] = BYTE_BACKSLASH;
                this._outputTail = i11 + 1;
                bArr2[i11] = 110;
                maxLineLength = base64Variant.getMaxLineLength() >> 2;
            }
        }
        if (i2 <= 0 || (_readMore = _readMore(inputStream, bArr, i7, i8, i2)) <= 0) {
            return i2;
        }
        if (this._outputTail > i4) {
            _flushBuffer();
        }
        int i12 = bArr[0] << 16;
        if (1 < _readMore) {
            i12 |= (bArr[1] & 255) << 8;
        } else {
            i5 = 1;
        }
        this._outputTail = base64Variant.encodeBase64Partial(i12, i5, this._outputBuffer, this._outputTail);
        return i2 - i5;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(SerializableString serializableString) throws IOException {
        int appendUnquotedUTF8 = serializableString.appendUnquotedUTF8(this._outputBuffer, this._outputTail);
        if (appendUnquotedUTF8 < 0) {
            _writeBytes(serializableString.asUnquotedUTF8());
        } else {
            this._outputTail += appendUnquotedUTF8;
        }
    }

    private final void _writeStringSegmentASCII2(String str, int i2, int i4) throws IOException {
        if (this._outputTail + ((i4 - i2) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i5 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i6 = this._maximumNonEscapedChar;
        while (i2 < i4) {
            int i7 = i2 + 1;
            char charAt = str.charAt(i2);
            if (charAt <= 127) {
                if (iArr[charAt] == 0) {
                    bArr[i5] = (byte) charAt;
                    i2 = i7;
                    i5++;
                } else {
                    int i8 = iArr[charAt];
                    if (i8 > 0) {
                        int i9 = i5 + 1;
                        bArr[i5] = BYTE_BACKSLASH;
                        i5 = i9 + 1;
                        bArr[i9] = (byte) i8;
                    } else {
                        i5 = _writeGenericEscape(charAt, i5);
                    }
                }
            } else if (charAt > i6) {
                i5 = _writeGenericEscape(charAt, i5);
            } else if (charAt <= 2047) {
                int i10 = i5 + 1;
                bArr[i5] = (byte) ((charAt >> 6) | 192);
                i5 = i10 + 1;
                bArr[i10] = (byte) ((charAt & '?') | 128);
            } else {
                i5 = _outputMultiByteChar(charAt, i5);
            }
            i2 = i7;
        }
        this._outputTail = i5;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(BigInteger bigInteger) throws IOException {
        _verifyValueWrite("write a number");
        if (bigInteger == null) {
            _writeNull();
        } else if (this._cfgNumbersAsStrings) {
            _writeQuotedRaw(bigInteger.toString());
        } else {
            writeRaw(bigInteger.toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001c, code lost:
        r0 = r7 + 1;
        r7 = r6[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0022, code lost:
        if (r7 >= 2048) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0024, code lost:
        r1 = r5._outputBuffer;
        r2 = r5._outputTail;
        r3 = r2 + 1;
        r5._outputTail = r3;
        r1[r2] = (byte) ((r7 >> 6) | 192);
        r5._outputTail = r3 + 1;
        r1[r3] = (byte) ((r7 & '?') | 128);
        r7 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0040, code lost:
        r7 = _outputRawMultiByteChar(r7, r6, r0, r8);
     */
    @Override // com.fasterxml.jackson.core.JsonGenerator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void writeRaw(char[] r6, int r7, int r8) throws java.io.IOException {
        /*
            r5 = this;
            int r0 = r8 + r8
            int r0 = r0 + r8
            int r1 = r5._outputTail
            int r1 = r1 + r0
            int r2 = r5._outputEnd
            if (r1 <= r2) goto L13
            if (r2 >= r0) goto L10
            r5._writeSegmentedRaw(r6, r7, r8)
            return
        L10:
            r5._flushBuffer()
        L13:
            int r8 = r8 + r7
        L14:
            if (r7 >= r8) goto L54
        L16:
            char r0 = r6[r7]
            r1 = 127(0x7f, float:1.78E-43)
            if (r0 <= r1) goto L45
            int r0 = r7 + 1
            char r7 = r6[r7]
            r1 = 2048(0x800, float:2.87E-42)
            if (r7 >= r1) goto L40
            byte[] r1 = r5._outputBuffer
            int r2 = r5._outputTail
            int r3 = r2 + 1
            r5._outputTail = r3
            int r4 = r7 >> 6
            r4 = r4 | 192(0xc0, float:2.69E-43)
            byte r4 = (byte) r4
            r1[r2] = r4
            int r2 = r3 + 1
            r5._outputTail = r2
            r7 = r7 & 63
            r7 = r7 | 128(0x80, float:1.794E-43)
            byte r7 = (byte) r7
            r1[r3] = r7
            r7 = r0
            goto L14
        L40:
            int r7 = r5._outputRawMultiByteChar(r7, r6, r0, r8)
            goto L14
        L45:
            byte[] r1 = r5._outputBuffer
            int r2 = r5._outputTail
            int r3 = r2 + 1
            r5._outputTail = r3
            byte r0 = (byte) r0
            r1[r2] = r0
            int r7 = r7 + 1
            if (r7 < r8) goto L16
        L54:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8JsonGenerator.writeRaw(char[], int, int):void");
    }

    protected final void _writePPFieldName(SerializableString serializableString) throws IOException {
        int writeFieldName = this._writeContext.writeFieldName(serializableString.getValue());
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (writeFieldName == 1) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        boolean z3 = !this._cfgUnqNames;
        if (z3) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            bArr[i2] = this._quoteChar;
        }
        int appendQuotedUTF8 = serializableString.appendQuotedUTF8(this._outputBuffer, this._outputTail);
        if (appendQuotedUTF8 < 0) {
            _writeBytes(serializableString.asQuotedUTF8());
        } else {
            this._outputTail += appendQuotedUTF8;
        }
        if (z3) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr2 = this._outputBuffer;
            int i4 = this._outputTail;
            this._outputTail = i4 + 1;
            bArr2[i4] = this._quoteChar;
        }
    }

    @Deprecated
    public UTF8JsonGenerator(IOContext iOContext, int i2, ObjectCodec objectCodec, OutputStream outputStream) {
        this(iOContext, i2, objectCodec, outputStream, '\"');
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public void writeFieldName(SerializableString serializableString) throws IOException {
        if (this._cfgPrettyPrinter != null) {
            _writePPFieldName(serializableString);
            return;
        }
        int writeFieldName = this._writeContext.writeFieldName(serializableString.getValue());
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (writeFieldName == 1) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            bArr[i2] = 44;
        }
        if (this._cfgUnqNames) {
            _writeUnq(serializableString);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i4 = this._outputTail;
        int i5 = i4 + 1;
        this._outputTail = i5;
        bArr2[i4] = this._quoteChar;
        int appendQuotedUTF8 = serializableString.appendQuotedUTF8(bArr2, i5);
        if (appendQuotedUTF8 < 0) {
            _writeBytes(serializableString.asQuotedUTF8());
        } else {
            this._outputTail += appendQuotedUTF8;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr3 = this._outputBuffer;
        int i6 = this._outputTail;
        this._outputTail = i6 + 1;
        bArr3[i6] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(double d4) throws IOException {
        if (!this._cfgNumbersAsStrings && (!NumberOutput.notFinite(d4) || !JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS.enabledIn(this._features))) {
            _verifyValueWrite("write a number");
            writeRaw(String.valueOf(d4));
            return;
        }
        writeString(String.valueOf(d4));
    }

    @Deprecated
    public UTF8JsonGenerator(IOContext iOContext, int i2, ObjectCodec objectCodec, OutputStream outputStream, byte[] bArr, int i4, boolean z3) {
        this(iOContext, i2, objectCodec, outputStream, '\"', bArr, i4, z3);
    }

    private final void _writeCustomStringSegment2(String str, int i2, int i4) throws IOException {
        if (this._outputTail + ((i4 - i2) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i5 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i6 = this._maximumNonEscapedChar;
        if (i6 <= 0) {
            i6 = 65535;
        }
        CharacterEscapes characterEscapes = this._characterEscapes;
        while (i2 < i4) {
            int i7 = i2 + 1;
            char charAt = str.charAt(i2);
            if (charAt <= 127) {
                if (iArr[charAt] == 0) {
                    bArr[i5] = (byte) charAt;
                    i2 = i7;
                    i5++;
                } else {
                    int i8 = iArr[charAt];
                    if (i8 > 0) {
                        int i9 = i5 + 1;
                        bArr[i5] = BYTE_BACKSLASH;
                        i5 = i9 + 1;
                        bArr[i9] = (byte) i8;
                    } else if (i8 == -2) {
                        SerializableString escapeSequence = characterEscapes.getEscapeSequence(charAt);
                        if (escapeSequence == null) {
                            _reportError("Invalid custom escape definitions; custom escape not found for character code 0x" + Integer.toHexString(charAt) + ", although was supposed to have one");
                        }
                        i5 = _writeCustomEscape(bArr, i5, escapeSequence, i4 - i7);
                    } else {
                        i5 = _writeGenericEscape(charAt, i5);
                    }
                }
            } else if (charAt > i6) {
                i5 = _writeGenericEscape(charAt, i5);
            } else {
                SerializableString escapeSequence2 = characterEscapes.getEscapeSequence(charAt);
                if (escapeSequence2 != null) {
                    i5 = _writeCustomEscape(bArr, i5, escapeSequence2, i4 - i7);
                } else if (charAt <= 2047) {
                    int i10 = i5 + 1;
                    bArr[i5] = (byte) ((charAt >> 6) | 192);
                    i5 = i10 + 1;
                    bArr[i10] = (byte) ((charAt & '?') | 128);
                } else {
                    i5 = _outputMultiByteChar(charAt, i5);
                }
            }
            i2 = i7;
        }
        this._outputTail = i5;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(char[] cArr, int i2, int i4) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i5 = this._outputTail;
        int i6 = i5 + 1;
        this._outputTail = i6;
        bArr[i5] = this._quoteChar;
        if (i4 <= this._outputMaxContiguous) {
            if (i6 + i4 > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(cArr, i2, i4);
        } else {
            _writeStringSegments(cArr, i2, i4);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i7 = this._outputTail;
        this._outputTail = i7 + 1;
        bArr2[i7] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(float f4) throws IOException {
        if (!this._cfgNumbersAsStrings && (!NumberOutput.notFinite(f4) || !JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS.enabledIn(this._features))) {
            _verifyValueWrite("write a number");
            writeRaw(String.valueOf(f4));
            return;
        }
        writeString(String.valueOf(f4));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(char c4) throws IOException {
        if (this._outputTail + 3 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        if (c4 <= 127) {
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            bArr[i2] = (byte) c4;
        } else if (c4 < 2048) {
            int i4 = this._outputTail;
            int i5 = i4 + 1;
            this._outputTail = i5;
            bArr[i4] = (byte) ((c4 >> 6) | 192);
            this._outputTail = i5 + 1;
            bArr[i5] = (byte) ((c4 & '?') | 128);
        } else {
            _outputRawMultiByteChar(c4, null, 0, 0);
        }
    }

    protected final int _writeBinary(Base64Variant base64Variant, InputStream inputStream, byte[] bArr) throws IOException, JsonGenerationException {
        int i2 = this._outputEnd - 6;
        int i4 = 2;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        int i5 = -3;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            if (i6 > i5) {
                i7 = _readMore(inputStream, bArr, i6, i7, bArr.length);
                if (i7 < 3) {
                    break;
                }
                i5 = i7 - 3;
                i6 = 0;
            }
            if (this._outputTail > i2) {
                _flushBuffer();
            }
            int i9 = i6 + 1;
            int i10 = i9 + 1;
            i6 = i10 + 1;
            i8 += 3;
            int encodeBase64Chunk = base64Variant.encodeBase64Chunk((((bArr[i9] & 255) | (bArr[i6] << 8)) << 8) | (bArr[i10] & 255), this._outputBuffer, this._outputTail);
            this._outputTail = encodeBase64Chunk;
            maxLineLength--;
            if (maxLineLength <= 0) {
                byte[] bArr2 = this._outputBuffer;
                int i11 = encodeBase64Chunk + 1;
                this._outputTail = i11;
                bArr2[encodeBase64Chunk] = BYTE_BACKSLASH;
                this._outputTail = i11 + 1;
                bArr2[i11] = 110;
                maxLineLength = base64Variant.getMaxLineLength() >> 2;
            }
        }
        if (i7 > 0) {
            if (this._outputTail > i2) {
                _flushBuffer();
            }
            int i12 = bArr[0] << 16;
            if (1 < i7) {
                i12 |= (bArr[1] & 255) << 8;
            } else {
                i4 = 1;
            }
            int i13 = i8 + i4;
            this._outputTail = base64Variant.encodeBase64Partial(i12, i4, this._outputBuffer, this._outputTail);
            return i13;
        }
        return i8;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(BigDecimal bigDecimal) throws IOException {
        _verifyValueWrite("write a number");
        if (bigDecimal == null) {
            _writeNull();
        } else if (this._cfgNumbersAsStrings) {
            _writeQuotedRaw(_asString(bigDecimal));
        } else {
            writeRaw(_asString(bigDecimal));
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public final void writeString(SerializableString serializableString) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        int i4 = i2 + 1;
        this._outputTail = i4;
        bArr[i2] = this._quoteChar;
        int appendQuotedUTF8 = serializableString.appendQuotedUTF8(bArr, i4);
        if (appendQuotedUTF8 < 0) {
            _writeBytes(serializableString.asQuotedUTF8());
        } else {
            this._outputTail += appendQuotedUTF8;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i5 = this._outputTail;
        this._outputTail = i5 + 1;
        bArr2[i5] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(String str) throws IOException {
        _verifyValueWrite("write a number");
        if (str == null) {
            _writeNull();
        } else if (this._cfgNumbersAsStrings) {
            _writeQuotedRaw(str);
        } else {
            writeRaw(str);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(char[] cArr, int i2, int i4) throws IOException {
        _verifyValueWrite("write a number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedRaw(cArr, i2, i4);
        } else {
            writeRaw(cArr, i2, i4);
        }
    }
}
