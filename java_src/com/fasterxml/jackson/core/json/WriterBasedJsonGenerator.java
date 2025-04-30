package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.PrettyPrinter;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.NumberOutput;
import io.netty.util.internal.StringUtil;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.apache.http.conn.ssl.TokenParser;
/* loaded from: classes2.dex */
public class WriterBasedJsonGenerator extends JsonGeneratorImpl {
    protected static final char[] HEX_CHARS = CharTypes.copyHexChars();
    protected static final int SHORT_WRITE = 32;
    protected char[] _copyBuffer;
    protected SerializableString _currentEscape;
    protected char[] _entityBuffer;
    protected char[] _outputBuffer;
    protected int _outputEnd;
    protected int _outputHead;
    protected int _outputTail;
    protected char _quoteChar;
    protected final Writer _writer;

    @Deprecated
    public WriterBasedJsonGenerator(IOContext iOContext, int i2, ObjectCodec objectCodec, Writer writer) {
        this(iOContext, i2, objectCodec, writer, '\"');
    }

    private char[] _allocateCopyBuffer() {
        if (this._copyBuffer == null) {
            this._copyBuffer = this._ioContext.allocNameCopyBuffer(2000);
        }
        return this._copyBuffer;
    }

    private char[] _allocateEntityBuffer() {
        char[] cArr = {TokenParser.ESCAPE, 0, TokenParser.ESCAPE, 'u', '0', '0', 0, 0, TokenParser.ESCAPE, 'u'};
        this._entityBuffer = cArr;
        return cArr;
    }

    private void _appendCharacterEscape(char c4, int i2) throws IOException, JsonGenerationException {
        String value;
        int i4;
        if (i2 >= 0) {
            if (this._outputTail + 2 > this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i5 = this._outputTail;
            int i6 = i5 + 1;
            this._outputTail = i6;
            cArr[i5] = TokenParser.ESCAPE;
            this._outputTail = i6 + 1;
            cArr[i6] = (char) i2;
        } else if (i2 != -2) {
            if (this._outputTail + 5 >= this._outputEnd) {
                _flushBuffer();
            }
            int i7 = this._outputTail;
            char[] cArr2 = this._outputBuffer;
            int i8 = i7 + 1;
            cArr2[i7] = TokenParser.ESCAPE;
            int i9 = i8 + 1;
            cArr2[i8] = 'u';
            if (c4 > 255) {
                int i10 = 255 & (c4 >> '\b');
                int i11 = i9 + 1;
                char[] cArr3 = HEX_CHARS;
                cArr2[i9] = cArr3[i10 >> 4];
                i4 = i11 + 1;
                cArr2[i11] = cArr3[i10 & 15];
                c4 = (char) (c4 & 255);
            } else {
                int i12 = i9 + 1;
                cArr2[i9] = '0';
                i4 = i12 + 1;
                cArr2[i12] = '0';
            }
            int i13 = i4 + 1;
            char[] cArr4 = HEX_CHARS;
            cArr2[i4] = cArr4[c4 >> 4];
            cArr2[i13] = cArr4[c4 & 15];
            this._outputTail = i13 + 1;
        } else {
            SerializableString serializableString = this._currentEscape;
            if (serializableString == null) {
                value = this._characterEscapes.getEscapeSequence(c4).getValue();
            } else {
                value = serializableString.getValue();
                this._currentEscape = null;
            }
            int length = value.length();
            if (this._outputTail + length > this._outputEnd) {
                _flushBuffer();
                if (length > this._outputEnd) {
                    this._writer.write(value);
                    return;
                }
            }
            value.getChars(0, length, this._outputBuffer, this._outputTail);
            this._outputTail += length;
        }
    }

    private void _prependOrWriteCharacterEscape(char c4, int i2) throws IOException, JsonGenerationException {
        String value;
        int i4;
        if (i2 >= 0) {
            int i5 = this._outputTail;
            if (i5 >= 2) {
                int i6 = i5 - 2;
                this._outputHead = i6;
                char[] cArr = this._outputBuffer;
                cArr[i6] = TokenParser.ESCAPE;
                cArr[i6 + 1] = (char) i2;
                return;
            }
            char[] cArr2 = this._entityBuffer;
            if (cArr2 == null) {
                cArr2 = _allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            cArr2[1] = (char) i2;
            this._writer.write(cArr2, 0, 2);
        } else if (i2 != -2) {
            int i7 = this._outputTail;
            if (i7 >= 6) {
                char[] cArr3 = this._outputBuffer;
                int i8 = i7 - 6;
                this._outputHead = i8;
                cArr3[i8] = TokenParser.ESCAPE;
                int i9 = i8 + 1;
                cArr3[i9] = 'u';
                if (c4 > 255) {
                    int i10 = (c4 >> '\b') & 255;
                    int i11 = i9 + 1;
                    char[] cArr4 = HEX_CHARS;
                    cArr3[i11] = cArr4[i10 >> 4];
                    i4 = i11 + 1;
                    cArr3[i4] = cArr4[i10 & 15];
                    c4 = (char) (c4 & 255);
                } else {
                    int i12 = i9 + 1;
                    cArr3[i12] = '0';
                    i4 = i12 + 1;
                    cArr3[i4] = '0';
                }
                int i13 = i4 + 1;
                char[] cArr5 = HEX_CHARS;
                cArr3[i13] = cArr5[c4 >> 4];
                cArr3[i13 + 1] = cArr5[c4 & 15];
                return;
            }
            char[] cArr6 = this._entityBuffer;
            if (cArr6 == null) {
                cArr6 = _allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            if (c4 > 255) {
                int i14 = (c4 >> '\b') & 255;
                int i15 = c4 & 255;
                char[] cArr7 = HEX_CHARS;
                cArr6[10] = cArr7[i14 >> 4];
                cArr6[11] = cArr7[i14 & 15];
                cArr6[12] = cArr7[i15 >> 4];
                cArr6[13] = cArr7[i15 & 15];
                this._writer.write(cArr6, 8, 6);
                return;
            }
            char[] cArr8 = HEX_CHARS;
            cArr6[6] = cArr8[c4 >> 4];
            cArr6[7] = cArr8[c4 & 15];
            this._writer.write(cArr6, 2, 6);
        } else {
            SerializableString serializableString = this._currentEscape;
            if (serializableString == null) {
                value = this._characterEscapes.getEscapeSequence(c4).getValue();
            } else {
                value = serializableString.getValue();
                this._currentEscape = null;
            }
            int length = value.length();
            int i16 = this._outputTail;
            if (i16 >= length) {
                int i17 = i16 - length;
                this._outputHead = i17;
                value.getChars(0, length, this._outputBuffer, i17);
                return;
            }
            this._outputHead = i16;
            this._writer.write(value);
        }
    }

    private int _readMore(InputStream inputStream, byte[] bArr, int i2, int i4, int i5) throws IOException {
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

    private final void _writeFieldNameTail(SerializableString serializableString) throws IOException {
        char[] asQuotedChars = serializableString.asQuotedChars();
        writeRaw(asQuotedChars, 0, asQuotedChars.length);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = this._quoteChar;
    }

    private void _writeLongString(String str) throws IOException {
        _flushBuffer();
        int length = str.length();
        int i2 = 0;
        while (true) {
            int i4 = this._outputEnd;
            if (i2 + i4 > length) {
                i4 = length - i2;
            }
            int i5 = i2 + i4;
            str.getChars(i2, i5, this._outputBuffer, 0);
            if (this._characterEscapes != null) {
                _writeSegmentCustom(i4);
            } else {
                int i6 = this._maximumNonEscapedChar;
                if (i6 != 0) {
                    _writeSegmentASCII(i4, i6);
                } else {
                    _writeSegment(i4);
                }
            }
            if (i5 >= length) {
                return;
            }
            i2 = i5;
        }
    }

    private final void _writeNull() throws IOException {
        if (this._outputTail + 4 >= this._outputEnd) {
            _flushBuffer();
        }
        int i2 = this._outputTail;
        char[] cArr = this._outputBuffer;
        cArr[i2] = 'n';
        int i4 = i2 + 1;
        cArr[i4] = 'u';
        int i5 = i4 + 1;
        cArr[i5] = 'l';
        int i6 = i5 + 1;
        cArr[i6] = 'l';
        this._outputTail = i6 + 1;
    }

    private void _writeQuotedInt(int i2) throws IOException {
        if (this._outputTail + 13 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i4 = this._outputTail;
        int i5 = i4 + 1;
        this._outputTail = i5;
        cArr[i4] = this._quoteChar;
        int outputInt = NumberOutput.outputInt(i2, cArr, i5);
        this._outputTail = outputInt;
        char[] cArr2 = this._outputBuffer;
        this._outputTail = outputInt + 1;
        cArr2[outputInt] = this._quoteChar;
    }

    private void _writeQuotedLong(long j4) throws IOException {
        if (this._outputTail + 23 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        int i4 = i2 + 1;
        this._outputTail = i4;
        cArr[i2] = this._quoteChar;
        int outputLong = NumberOutput.outputLong(j4, cArr, i4);
        this._outputTail = outputLong;
        char[] cArr2 = this._outputBuffer;
        this._outputTail = outputLong + 1;
        cArr2[outputLong] = this._quoteChar;
    }

    private void _writeQuotedRaw(String str) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = this._quoteChar;
        writeRaw(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        cArr2[i4] = this._quoteChar;
    }

    private void _writeQuotedShort(short s3) throws IOException {
        if (this._outputTail + 8 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        int i4 = i2 + 1;
        this._outputTail = i4;
        cArr[i2] = this._quoteChar;
        int outputInt = NumberOutput.outputInt(s3, cArr, i4);
        this._outputTail = outputInt;
        char[] cArr2 = this._outputBuffer;
        this._outputTail = outputInt + 1;
        cArr2[outputInt] = this._quoteChar;
    }

    private void _writeSegment(int i2) throws IOException {
        char[] cArr;
        char c4;
        int[] iArr = this._outputEscapes;
        int length = iArr.length;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            do {
                cArr = this._outputBuffer;
                c4 = cArr[i4];
                if (c4 < length && iArr[c4] != 0) {
                    break;
                }
                i4++;
            } while (i4 < i2);
            int i6 = i4 - i5;
            if (i6 > 0) {
                this._writer.write(cArr, i5, i6);
                if (i4 >= i2) {
                    return;
                }
            }
            i4++;
            i5 = _prependOrWriteCharacterEscape(this._outputBuffer, i4, i2, c4, iArr[c4]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0021 A[EDGE_INSN: B:26:0x0021->B:13:0x0021 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _writeSegmentASCII(int r13, int r14) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            r12 = this;
            int[] r0 = r12._outputEscapes
            int r1 = r0.length
            int r2 = r14 + 1
            int r1 = java.lang.Math.min(r1, r2)
            r2 = 0
            r3 = 0
            r4 = 0
        Lc:
            if (r2 >= r13) goto L3a
        Le:
            char[] r5 = r12._outputBuffer
            char r10 = r5[r2]
            if (r10 >= r1) goto L19
            r4 = r0[r10]
            if (r4 == 0) goto L1d
            goto L21
        L19:
            if (r10 <= r14) goto L1d
            r4 = -1
            goto L21
        L1d:
            int r2 = r2 + 1
            if (r2 < r13) goto Le
        L21:
            int r6 = r2 - r3
            if (r6 <= 0) goto L2d
            java.io.Writer r7 = r12._writer
            r7.write(r5, r3, r6)
            if (r2 < r13) goto L2d
            goto L3a
        L2d:
            int r2 = r2 + 1
            char[] r7 = r12._outputBuffer
            r6 = r12
            r8 = r2
            r9 = r13
            r11 = r4
            int r3 = r6._prependOrWriteCharacterEscape(r7, r8, r9, r10, r11)
            goto Lc
        L3a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeSegmentASCII(int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0035 A[EDGE_INSN: B:31:0x0035->B:19:0x0035 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _writeSegmentCustom(int r15) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            r14 = this;
            int[] r0 = r14._outputEscapes
            int r1 = r14._maximumNonEscapedChar
            r2 = 1
            if (r1 >= r2) goto La
            r1 = 65535(0xffff, float:9.1834E-41)
        La:
            int r2 = r0.length
            int r3 = r1 + 1
            int r2 = java.lang.Math.min(r2, r3)
            com.fasterxml.jackson.core.io.CharacterEscapes r3 = r14._characterEscapes
            r4 = 0
            r5 = 0
            r6 = 0
        L16:
            if (r4 >= r15) goto L50
        L18:
            char[] r7 = r14._outputBuffer
            char r12 = r7[r4]
            if (r12 >= r2) goto L23
            r6 = r0[r12]
            if (r6 == 0) goto L31
            goto L35
        L23:
            if (r12 <= r1) goto L27
            r6 = -1
            goto L35
        L27:
            com.fasterxml.jackson.core.SerializableString r7 = r3.getEscapeSequence(r12)
            r14._currentEscape = r7
            if (r7 == 0) goto L31
            r6 = -2
            goto L35
        L31:
            int r4 = r4 + 1
            if (r4 < r15) goto L18
        L35:
            int r7 = r4 - r5
            if (r7 <= 0) goto L43
            java.io.Writer r8 = r14._writer
            char[] r9 = r14._outputBuffer
            r8.write(r9, r5, r7)
            if (r4 < r15) goto L43
            goto L50
        L43:
            int r4 = r4 + 1
            char[] r9 = r14._outputBuffer
            r8 = r14
            r10 = r4
            r11 = r15
            r13 = r6
            int r5 = r8._prependOrWriteCharacterEscape(r9, r10, r11, r12, r13)
            goto L16
        L50:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeSegmentCustom(int):void");
    }

    private void _writeString(String str) throws IOException {
        int length = str.length();
        int i2 = this._outputEnd;
        if (length > i2) {
            _writeLongString(str);
            return;
        }
        if (this._outputTail + length > i2) {
            _flushBuffer();
        }
        str.getChars(0, length, this._outputBuffer, this._outputTail);
        if (this._characterEscapes != null) {
            _writeStringCustom(length);
            return;
        }
        int i4 = this._maximumNonEscapedChar;
        if (i4 != 0) {
            _writeStringASCII(length, i4);
        } else {
            _writeString2(length);
        }
    }

    private void _writeString2(SerializableString serializableString) throws IOException {
        char[] asQuotedChars = serializableString.asQuotedChars();
        int length = asQuotedChars.length;
        if (length < 32) {
            if (length > this._outputEnd - this._outputTail) {
                _flushBuffer();
            }
            System.arraycopy(asQuotedChars, 0, this._outputBuffer, this._outputTail, length);
            this._outputTail += length;
        } else {
            _flushBuffer();
            this._writer.write(asQuotedChars, 0, length);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = this._quoteChar;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _writeStringASCII(int r9, int r10) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            r8 = this;
            int r0 = r8._outputTail
            int r0 = r0 + r9
            int[] r9 = r8._outputEscapes
            int r1 = r9.length
            int r2 = r10 + 1
            int r1 = java.lang.Math.min(r1, r2)
        Lc:
            int r2 = r8._outputTail
            if (r2 >= r0) goto L3a
        L10:
            char[] r2 = r8._outputBuffer
            int r3 = r8._outputTail
            char r4 = r2[r3]
            if (r4 >= r1) goto L1d
            r5 = r9[r4]
            if (r5 == 0) goto L34
            goto L20
        L1d:
            if (r4 <= r10) goto L34
            r5 = -1
        L20:
            int r6 = r8._outputHead
            int r3 = r3 - r6
            if (r3 <= 0) goto L2a
            java.io.Writer r7 = r8._writer
            r7.write(r2, r6, r3)
        L2a:
            int r2 = r8._outputTail
            int r2 = r2 + 1
            r8._outputTail = r2
            r8._prependOrWriteCharacterEscape(r4, r5)
            goto Lc
        L34:
            int r3 = r3 + 1
            r8._outputTail = r3
            if (r3 < r0) goto L10
        L3a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeStringASCII(int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0052 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _writeStringCustom(int r12) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            r11 = this;
            int r0 = r11._outputTail
            int r0 = r0 + r12
            int[] r12 = r11._outputEscapes
            int r1 = r11._maximumNonEscapedChar
            r2 = 1
            if (r1 >= r2) goto Ld
            r1 = 65535(0xffff, float:9.1834E-41)
        Ld:
            int r3 = r12.length
            int r4 = r1 + 1
            int r3 = java.lang.Math.min(r3, r4)
            com.fasterxml.jackson.core.io.CharacterEscapes r4 = r11._characterEscapes
        L16:
            int r5 = r11._outputTail
            if (r5 >= r0) goto L52
        L1a:
            char[] r5 = r11._outputBuffer
            int r6 = r11._outputTail
            char r5 = r5[r6]
            if (r5 >= r3) goto L27
            r6 = r12[r5]
            if (r6 == 0) goto L4b
            goto L34
        L27:
            if (r5 <= r1) goto L2b
            r6 = -1
            goto L34
        L2b:
            com.fasterxml.jackson.core.SerializableString r6 = r4.getEscapeSequence(r5)
            r11._currentEscape = r6
            if (r6 == 0) goto L4b
            r6 = -2
        L34:
            int r7 = r11._outputTail
            int r8 = r11._outputHead
            int r7 = r7 - r8
            if (r7 <= 0) goto L42
            java.io.Writer r9 = r11._writer
            char[] r10 = r11._outputBuffer
            r9.write(r10, r8, r7)
        L42:
            int r7 = r11._outputTail
            int r7 = r7 + r2
            r11._outputTail = r7
            r11._prependOrWriteCharacterEscape(r5, r6)
            goto L16
        L4b:
            int r5 = r11._outputTail
            int r5 = r5 + r2
            r11._outputTail = r5
            if (r5 < r0) goto L1a
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeStringCustom(int):void");
    }

    private void writeRawLong(String str) throws IOException {
        int i2 = this._outputEnd;
        int i4 = this._outputTail;
        int i5 = i2 - i4;
        str.getChars(0, i5, this._outputBuffer, i4);
        this._outputTail += i5;
        _flushBuffer();
        int length = str.length() - i5;
        while (true) {
            int i6 = this._outputEnd;
            if (length > i6) {
                int i7 = i5 + i6;
                str.getChars(i5, i7, this._outputBuffer, 0);
                this._outputHead = 0;
                this._outputTail = i6;
                _flushBuffer();
                length -= i6;
                i5 = i7;
            } else {
                str.getChars(i5, i5 + length, this._outputBuffer, 0);
                this._outputHead = 0;
                this._outputTail = length;
                return;
            }
        }
    }

    protected void _flushBuffer() throws IOException {
        int i2 = this._outputTail;
        int i4 = this._outputHead;
        int i5 = i2 - i4;
        if (i5 > 0) {
            this._outputHead = 0;
            this._outputTail = 0;
            this._writer.write(this._outputBuffer, i4, i5);
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase
    protected void _releaseBuffers() {
        char[] cArr = this._outputBuffer;
        if (cArr != null) {
            this._outputBuffer = null;
            this._ioContext.releaseConcatBuffer(cArr);
        }
        char[] cArr2 = this._copyBuffer;
        if (cArr2 != null) {
            this._copyBuffer = null;
            this._ioContext.releaseNameCopyBuffer(cArr2);
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase
    protected final void _verifyValueWrite(String str) throws IOException {
        char c4;
        int writeValue = this._writeContext.writeValue();
        if (this._cfgPrettyPrinter != null) {
            _verifyPrettyValueWrite(str, writeValue);
            return;
        }
        if (writeValue == 1) {
            c4 = StringUtil.COMMA;
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
                writeRaw(serializableString.getValue());
                return;
            }
            return;
        } else {
            c4 = ':';
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = c4;
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
                char[] cArr = this._outputBuffer;
                int i10 = encodeBase64Chunk + 1;
                this._outputTail = i10;
                cArr[encodeBase64Chunk] = TokenParser.ESCAPE;
                this._outputTail = i10 + 1;
                cArr[i10] = 'n';
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

    protected final void _writeFieldName(String str, boolean z3) throws IOException {
        if (this._cfgPrettyPrinter != null) {
            _writePPFieldName(str, z3);
            return;
        }
        if (this._outputTail + 1 >= this._outputEnd) {
            _flushBuffer();
        }
        if (z3) {
            char[] cArr = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            cArr[i2] = StringUtil.COMMA;
        }
        if (this._cfgUnqNames) {
            _writeString(str);
            return;
        }
        char[] cArr2 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        cArr2[i4] = this._quoteChar;
        _writeString(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr3 = this._outputBuffer;
        int i5 = this._outputTail;
        this._outputTail = i5 + 1;
        cArr3[i5] = this._quoteChar;
    }

    protected final void _writePPFieldName(String str, boolean z3) throws IOException {
        if (z3) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        if (this._cfgUnqNames) {
            _writeString(str);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = this._quoteChar;
        _writeString(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        cArr2[i4] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public boolean canWriteFormattedNumbers() {
        return true;
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
        this._outputHead = 0;
        this._outputTail = 0;
        if (this._writer != null) {
            if (!this._ioContext.isResourceManaged() && !isEnabled(JsonGenerator.Feature.AUTO_CLOSE_TARGET)) {
                if (isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
                    this._writer.flush();
                }
            } else {
                this._writer.close();
            }
        }
        _releaseBuffers();
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator, java.io.Flushable
    public void flush() throws IOException {
        _flushBuffer();
        if (this._writer == null || !isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
            return;
        }
        this._writer.flush();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public int getOutputBuffered() {
        return Math.max(0, this._outputTail - this._outputHead);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public Object getOutputTarget() {
        return this._writer;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeBinary(Base64Variant base64Variant, byte[] bArr, int i2, int i4) throws IOException, JsonGenerationException {
        _verifyValueWrite("write a binary value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i5 = this._outputTail;
        this._outputTail = i5 + 1;
        cArr[i5] = this._quoteChar;
        _writeBinary(base64Variant, bArr, i2, i4 + i2);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i6 = this._outputTail;
        this._outputTail = i6 + 1;
        cArr2[i6] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeBoolean(boolean z3) throws IOException {
        int i2;
        _verifyValueWrite("write a boolean value");
        if (this._outputTail + 5 >= this._outputEnd) {
            _flushBuffer();
        }
        int i4 = this._outputTail;
        char[] cArr = this._outputBuffer;
        if (z3) {
            cArr[i4] = 't';
            int i5 = i4 + 1;
            cArr[i5] = 'r';
            int i6 = i5 + 1;
            cArr[i6] = 'u';
            i2 = i6 + 1;
            cArr[i2] = 'e';
        } else {
            cArr[i4] = 'f';
            int i7 = i4 + 1;
            cArr[i7] = 'a';
            int i8 = i7 + 1;
            cArr[i8] = 'l';
            int i9 = i8 + 1;
            cArr[i9] = 's';
            i2 = i9 + 1;
            cArr[i2] = 'e';
        }
        this._outputTail = i2 + 1;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeEndArray() throws IOException {
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
            char[] cArr = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            cArr[i2] = ']';
        }
        this._writeContext = this._writeContext.clearAndGetParent();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeEndObject() throws IOException {
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
            char[] cArr = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            cArr[i2] = '}';
        }
        this._writeContext = this._writeContext.clearAndGetParent();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeFieldName(String str) throws IOException {
        int writeFieldName = this._writeContext.writeFieldName(str);
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        _writeFieldName(str, writeFieldName == 1);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNull() throws IOException {
        _verifyValueWrite("write a null");
        _writeNull();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(short s3) throws IOException {
        _verifyValueWrite("write a number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedShort(s3);
            return;
        }
        if (this._outputTail + 6 >= this._outputEnd) {
            _flushBuffer();
        }
        this._outputTail = NumberOutput.outputInt(s3, this._outputBuffer, this._outputTail);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(String str) throws IOException {
        int length = str.length();
        int i2 = this._outputEnd - this._outputTail;
        if (i2 == 0) {
            _flushBuffer();
            i2 = this._outputEnd - this._outputTail;
        }
        if (i2 >= length) {
            str.getChars(0, length, this._outputBuffer, this._outputTail);
            this._outputTail += length;
            return;
        }
        writeRawLong(str);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRawUTF8String(byte[] bArr, int i2, int i4) throws IOException {
        _reportUnsupportedOperation();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeStartArray() throws IOException {
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
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = '[';
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeStartObject() throws IOException {
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
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = '{';
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(String str) throws IOException {
        _verifyValueWrite("write a string");
        if (str == null) {
            _writeNull();
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = this._quoteChar;
        _writeString(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        cArr2[i4] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeUTF8String(byte[] bArr, int i2, int i4) throws IOException {
        _reportUnsupportedOperation();
    }

    public WriterBasedJsonGenerator(IOContext iOContext, int i2, ObjectCodec objectCodec, Writer writer, char c4) {
        super(iOContext, i2, objectCodec);
        this._writer = writer;
        char[] allocConcatBuffer = iOContext.allocConcatBuffer();
        this._outputBuffer = allocConcatBuffer;
        this._outputEnd = allocConcatBuffer.length;
        this._quoteChar = c4;
        if (c4 != '\"') {
            this._outputEscapes = CharTypes.get7BitOutputEscapes(c4);
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public void writeFieldName(SerializableString serializableString) throws IOException {
        int writeFieldName = this._writeContext.writeFieldName(serializableString.getValue());
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        _writeFieldName(serializableString, writeFieldName == 1);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(int i2) throws IOException {
        _verifyValueWrite("write a number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedInt(i2);
            return;
        }
        if (this._outputTail + 11 >= this._outputEnd) {
            _flushBuffer();
        }
        this._outputTail = NumberOutput.outputInt(i2, this._outputBuffer, this._outputTail);
    }

    private void _writeQuotedRaw(char[] cArr, int i2, int i4) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i5 = this._outputTail;
        this._outputTail = i5 + 1;
        cArr2[i5] = this._quoteChar;
        writeRaw(cArr, i2, i4);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr3 = this._outputBuffer;
        int i6 = this._outputTail;
        this._outputTail = i6 + 1;
        cArr3[i6] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(String str, int i2, int i4) throws IOException {
        int i5 = this._outputEnd - this._outputTail;
        if (i5 < i4) {
            _flushBuffer();
            i5 = this._outputEnd - this._outputTail;
        }
        if (i5 >= i4) {
            str.getChars(i2, i2 + i4, this._outputBuffer, this._outputTail);
            this._outputTail += i4;
            return;
        }
        writeRawLong(str.substring(i2, i4 + i2));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeStartArray(Object obj) throws IOException {
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
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = '[';
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
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = '{';
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public int writeBinary(Base64Variant base64Variant, InputStream inputStream, int i2) throws IOException, JsonGenerationException {
        _verifyValueWrite("write a binary value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        cArr[i4] = this._quoteChar;
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
            char[] cArr2 = this._outputBuffer;
            int i5 = this._outputTail;
            this._outputTail = i5 + 1;
            cArr2[i5] = this._quoteChar;
            return i2;
        } catch (Throwable th) {
            this._ioContext.releaseBase64Buffer(allocBase64Buffer);
            throw th;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(Reader reader, int i2) throws IOException {
        _verifyValueWrite("write a string");
        if (reader == null) {
            _reportError("null reader");
        }
        int i4 = i2 >= 0 ? i2 : Integer.MAX_VALUE;
        if (this._outputTail + i2 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i5 = this._outputTail;
        this._outputTail = i5 + 1;
        cArr[i5] = this._quoteChar;
        char[] _allocateCopyBuffer = _allocateCopyBuffer();
        while (i4 > 0) {
            int read = reader.read(_allocateCopyBuffer, 0, Math.min(i4, _allocateCopyBuffer.length));
            if (read <= 0) {
                break;
            }
            if (this._outputTail + i2 >= this._outputEnd) {
                _flushBuffer();
            }
            _writeString(_allocateCopyBuffer, 0, read);
            i4 -= read;
        }
        if (this._outputTail + i2 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i6 = this._outputTail;
        this._outputTail = i6 + 1;
        cArr2[i6] = this._quoteChar;
        if (i4 <= 0 || i2 < 0) {
            return;
        }
        _reportError("Didn't read enough from reader");
    }

    private void _writeString(char[] cArr, int i2, int i4) throws IOException {
        if (this._characterEscapes != null) {
            _writeStringCustom(cArr, i2, i4);
            return;
        }
        int i5 = this._maximumNonEscapedChar;
        if (i5 != 0) {
            _writeStringASCII(cArr, i2, i4, i5);
            return;
        }
        int i6 = i4 + i2;
        int[] iArr = this._outputEscapes;
        int length = iArr.length;
        while (i2 < i6) {
            int i7 = i2;
            do {
                char c4 = cArr[i7];
                if (c4 < length && iArr[c4] != 0) {
                    break;
                }
                i7++;
            } while (i7 < i6);
            int i8 = i7 - i2;
            if (i8 < 32) {
                if (this._outputTail + i8 > this._outputEnd) {
                    _flushBuffer();
                }
                if (i8 > 0) {
                    System.arraycopy(cArr, i2, this._outputBuffer, this._outputTail, i8);
                    this._outputTail += i8;
                }
            } else {
                _flushBuffer();
                this._writer.write(cArr, i2, i8);
            }
            if (i7 >= i6) {
                return;
            }
            i2 = i7 + 1;
            char c5 = cArr[i7];
            _appendCharacterEscape(c5, iArr[c5]);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0019, code lost:
        if (r3 <= 0) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001b, code lost:
        r6._writer.write(r2, r4, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0020, code lost:
        r2 = r6._outputBuffer;
        r3 = r6._outputTail;
        r6._outputTail = r3 + 1;
        r2 = r2[r3];
        _prependOrWriteCharacterEscape(r2, r7[r2]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
        r4 = r6._outputHead;
        r3 = r3 - r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _writeString2(int r7) throws java.io.IOException {
        /*
            r6 = this;
            int r0 = r6._outputTail
            int r0 = r0 + r7
            int[] r7 = r6._outputEscapes
            int r1 = r7.length
        L6:
            int r2 = r6._outputTail
            if (r2 >= r0) goto L36
        La:
            char[] r2 = r6._outputBuffer
            int r3 = r6._outputTail
            char r4 = r2[r3]
            if (r4 >= r1) goto L30
            r4 = r7[r4]
            if (r4 == 0) goto L30
            int r4 = r6._outputHead
            int r3 = r3 - r4
            if (r3 <= 0) goto L20
            java.io.Writer r5 = r6._writer
            r5.write(r2, r4, r3)
        L20:
            char[] r2 = r6._outputBuffer
            int r3 = r6._outputTail
            int r4 = r3 + 1
            r6._outputTail = r4
            char r2 = r2[r3]
            r3 = r7[r2]
            r6._prependOrWriteCharacterEscape(r2, r3)
            goto L6
        L30:
            int r3 = r3 + 1
            r6._outputTail = r3
            if (r3 < r0) goto La
        L36:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeString2(int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x001f A[EDGE_INSN: B:30:0x001f->B:14:0x001f ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _writeStringASCII(char[] r9, int r10, int r11, int r12) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            r8 = this;
            int r11 = r11 + r10
            int[] r0 = r8._outputEscapes
            int r1 = r0.length
            int r2 = r12 + 1
            int r1 = java.lang.Math.min(r1, r2)
            r2 = 0
        Lb:
            if (r10 >= r11) goto L4f
            r3 = r10
        Le:
            char r4 = r9[r3]
            if (r4 >= r1) goto L17
            r2 = r0[r4]
            if (r2 == 0) goto L1b
            goto L1f
        L17:
            if (r4 <= r12) goto L1b
            r2 = -1
            goto L1f
        L1b:
            int r3 = r3 + 1
            if (r3 < r11) goto Le
        L1f:
            int r5 = r3 - r10
            r6 = 32
            if (r5 >= r6) goto L3e
            int r6 = r8._outputTail
            int r6 = r6 + r5
            int r7 = r8._outputEnd
            if (r6 <= r7) goto L2f
            r8._flushBuffer()
        L2f:
            if (r5 <= 0) goto L46
            char[] r6 = r8._outputBuffer
            int r7 = r8._outputTail
            java.lang.System.arraycopy(r9, r10, r6, r7, r5)
            int r10 = r8._outputTail
            int r10 = r10 + r5
            r8._outputTail = r10
            goto L46
        L3e:
            r8._flushBuffer()
            java.io.Writer r6 = r8._writer
            r6.write(r9, r10, r5)
        L46:
            if (r3 < r11) goto L49
            goto L4f
        L49:
            int r10 = r3 + 1
            r8._appendCharacterEscape(r4, r2)
            goto Lb
        L4f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeStringASCII(char[], int, int, int):void");
    }

    protected final void _writePPFieldName(SerializableString serializableString, boolean z3) throws IOException {
        if (z3) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        char[] asQuotedChars = serializableString.asQuotedChars();
        if (this._cfgUnqNames) {
            writeRaw(asQuotedChars, 0, asQuotedChars.length);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = this._quoteChar;
        writeRaw(asQuotedChars, 0, asQuotedChars.length);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        cArr2[i4] = this._quoteChar;
    }

    protected final void _writeFieldName(SerializableString serializableString, boolean z3) throws IOException {
        if (this._cfgPrettyPrinter != null) {
            _writePPFieldName(serializableString, z3);
            return;
        }
        if (this._outputTail + 1 >= this._outputEnd) {
            _flushBuffer();
        }
        if (z3) {
            char[] cArr = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            cArr[i2] = StringUtil.COMMA;
        }
        if (this._cfgUnqNames) {
            char[] asQuotedChars = serializableString.asQuotedChars();
            writeRaw(asQuotedChars, 0, asQuotedChars.length);
            return;
        }
        char[] cArr2 = this._outputBuffer;
        int i4 = this._outputTail;
        int i5 = i4 + 1;
        this._outputTail = i5;
        cArr2[i4] = this._quoteChar;
        int appendQuoted = serializableString.appendQuoted(cArr2, i5);
        if (appendQuoted < 0) {
            _writeFieldNameTail(serializableString);
            return;
        }
        int i6 = this._outputTail + appendQuoted;
        this._outputTail = i6;
        if (i6 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr3 = this._outputBuffer;
        int i7 = this._outputTail;
        this._outputTail = i7 + 1;
        cArr3[i7] = this._quoteChar;
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
    public void writeRaw(SerializableString serializableString) throws IOException {
        int appendUnquoted = serializableString.appendUnquoted(this._outputBuffer, this._outputTail);
        if (appendUnquoted < 0) {
            writeRaw(serializableString.getValue());
        } else {
            this._outputTail += appendUnquoted;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0033 A[EDGE_INSN: B:34:0x0033->B:20:0x0033 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _writeStringCustom(char[] r11, int r12, int r13) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            r10 = this;
            int r13 = r13 + r12
            int[] r0 = r10._outputEscapes
            int r1 = r10._maximumNonEscapedChar
            r2 = 1
            if (r1 >= r2) goto Lb
            r1 = 65535(0xffff, float:9.1834E-41)
        Lb:
            int r2 = r0.length
            int r3 = r1 + 1
            int r2 = java.lang.Math.min(r2, r3)
            com.fasterxml.jackson.core.io.CharacterEscapes r3 = r10._characterEscapes
            r4 = 0
        L15:
            if (r12 >= r13) goto L63
            r5 = r12
        L18:
            char r6 = r11[r5]
            if (r6 >= r2) goto L21
            r4 = r0[r6]
            if (r4 == 0) goto L2f
            goto L33
        L21:
            if (r6 <= r1) goto L25
            r4 = -1
            goto L33
        L25:
            com.fasterxml.jackson.core.SerializableString r7 = r3.getEscapeSequence(r6)
            r10._currentEscape = r7
            if (r7 == 0) goto L2f
            r4 = -2
            goto L33
        L2f:
            int r5 = r5 + 1
            if (r5 < r13) goto L18
        L33:
            int r7 = r5 - r12
            r8 = 32
            if (r7 >= r8) goto L52
            int r8 = r10._outputTail
            int r8 = r8 + r7
            int r9 = r10._outputEnd
            if (r8 <= r9) goto L43
            r10._flushBuffer()
        L43:
            if (r7 <= 0) goto L5a
            char[] r8 = r10._outputBuffer
            int r9 = r10._outputTail
            java.lang.System.arraycopy(r11, r12, r8, r9, r7)
            int r12 = r10._outputTail
            int r12 = r12 + r7
            r10._outputTail = r12
            goto L5a
        L52:
            r10._flushBuffer()
            java.io.Writer r8 = r10._writer
            r8.write(r11, r12, r7)
        L5a:
            if (r5 < r13) goto L5d
            goto L63
        L5d:
            int r12 = r5 + 1
            r10._appendCharacterEscape(r6, r4)
            goto L15
        L63:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeStringCustom(char[], int, int):void");
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
        char[] cArr = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        cArr[i4] = '[';
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
                char[] cArr = this._outputBuffer;
                int i11 = encodeBase64Chunk + 1;
                this._outputTail = i11;
                cArr[encodeBase64Chunk] = TokenParser.ESCAPE;
                this._outputTail = i11 + 1;
                cArr[i11] = 'n';
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
    public void writeRaw(char[] cArr, int i2, int i4) throws IOException {
        if (i4 < 32) {
            if (i4 > this._outputEnd - this._outputTail) {
                _flushBuffer();
            }
            System.arraycopy(cArr, i2, this._outputBuffer, this._outputTail, i4);
            this._outputTail += i4;
            return;
        }
        _flushBuffer();
        this._writer.write(cArr, i2, i4);
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

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(char c4) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = c4;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(double d4) throws IOException {
        if (!this._cfgNumbersAsStrings && (!NumberOutput.notFinite(d4) || !isEnabled(JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS))) {
            _verifyValueWrite("write a number");
            writeRaw(String.valueOf(d4));
            return;
        }
        writeString(String.valueOf(d4));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(char[] cArr, int i2, int i4) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i5 = this._outputTail;
        this._outputTail = i5 + 1;
        cArr2[i5] = this._quoteChar;
        _writeString(cArr, i2, i4);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr3 = this._outputBuffer;
        int i6 = this._outputTail;
        this._outputTail = i6 + 1;
        cArr3[i6] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(float f4) throws IOException {
        if (!this._cfgNumbersAsStrings && (!NumberOutput.notFinite(f4) || !isEnabled(JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS))) {
            _verifyValueWrite("write a number");
            writeRaw(String.valueOf(f4));
            return;
        }
        writeString(String.valueOf(f4));
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public void writeString(SerializableString serializableString) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        int i4 = i2 + 1;
        this._outputTail = i4;
        cArr[i2] = this._quoteChar;
        int appendQuoted = serializableString.appendQuoted(cArr, i4);
        if (appendQuoted < 0) {
            _writeString2(serializableString);
            return;
        }
        int i5 = this._outputTail + appendQuoted;
        this._outputTail = i5;
        if (i5 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i6 = this._outputTail;
        this._outputTail = i6 + 1;
        cArr2[i6] = this._quoteChar;
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
                char[] cArr = this._outputBuffer;
                int i11 = encodeBase64Chunk + 1;
                this._outputTail = i11;
                cArr[encodeBase64Chunk] = TokenParser.ESCAPE;
                this._outputTail = i11 + 1;
                cArr[i11] = 'n';
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

    private int _prependOrWriteCharacterEscape(char[] cArr, int i2, int i4, char c4, int i5) throws IOException, JsonGenerationException {
        String value;
        int i6;
        if (i5 >= 0) {
            if (i2 > 1 && i2 < i4) {
                int i7 = i2 - 2;
                cArr[i7] = TokenParser.ESCAPE;
                cArr[i7 + 1] = (char) i5;
                return i7;
            }
            char[] cArr2 = this._entityBuffer;
            if (cArr2 == null) {
                cArr2 = _allocateEntityBuffer();
            }
            cArr2[1] = (char) i5;
            this._writer.write(cArr2, 0, 2);
            return i2;
        } else if (i5 == -2) {
            SerializableString serializableString = this._currentEscape;
            if (serializableString == null) {
                value = this._characterEscapes.getEscapeSequence(c4).getValue();
            } else {
                value = serializableString.getValue();
                this._currentEscape = null;
            }
            int length = value.length();
            if (i2 >= length && i2 < i4) {
                int i8 = i2 - length;
                value.getChars(0, length, cArr, i8);
                return i8;
            }
            this._writer.write(value);
            return i2;
        } else if (i2 > 5 && i2 < i4) {
            int i9 = i2 - 6;
            int i10 = i9 + 1;
            cArr[i9] = TokenParser.ESCAPE;
            int i11 = i10 + 1;
            cArr[i10] = 'u';
            if (c4 > 255) {
                int i12 = (c4 >> '\b') & 255;
                int i13 = i11 + 1;
                char[] cArr3 = HEX_CHARS;
                cArr[i11] = cArr3[i12 >> 4];
                i6 = i13 + 1;
                cArr[i13] = cArr3[i12 & 15];
                c4 = (char) (c4 & 255);
            } else {
                int i14 = i11 + 1;
                cArr[i11] = '0';
                i6 = i14 + 1;
                cArr[i14] = '0';
            }
            int i15 = i6 + 1;
            char[] cArr4 = HEX_CHARS;
            cArr[i6] = cArr4[c4 >> 4];
            cArr[i15] = cArr4[c4 & 15];
            return i15 - 5;
        } else {
            char[] cArr5 = this._entityBuffer;
            if (cArr5 == null) {
                cArr5 = _allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            if (c4 > 255) {
                int i16 = (c4 >> '\b') & 255;
                int i17 = c4 & 255;
                char[] cArr6 = HEX_CHARS;
                cArr5[10] = cArr6[i16 >> 4];
                cArr5[11] = cArr6[i16 & 15];
                cArr5[12] = cArr6[i17 >> 4];
                cArr5[13] = cArr6[i17 & 15];
                this._writer.write(cArr5, 8, 6);
                return i2;
            }
            char[] cArr7 = HEX_CHARS;
            cArr5[6] = cArr7[c4 >> 4];
            cArr5[7] = cArr7[c4 & 15];
            this._writer.write(cArr5, 2, 6);
            return i2;
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
