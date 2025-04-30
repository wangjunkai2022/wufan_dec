package com.fasterxml.jackson.core.json;

import com.android.dx.io.Opcodes;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.StreamReadCapability;
import com.fasterxml.jackson.core.base.ParserBase;
import com.fasterxml.jackson.core.base.ParserMinimalBase;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.JacksonFeatureSet;
import com.papa91.arc.ext.Log;
import com.tencent.bugly.Bugly;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Writer;
import okio.Utf8;
/* loaded from: classes2.dex */
public class UTF8StreamJsonParser extends ParserBase {
    static final byte BYTE_LF = 10;
    protected boolean _bufferRecyclable;
    protected byte[] _inputBuffer;
    protected InputStream _inputStream;
    protected int _nameStartCol;
    protected int _nameStartOffset;
    protected int _nameStartRow;
    protected ObjectCodec _objectCodec;
    private int _quad1;
    protected int[] _quadBuffer;
    protected final ByteQuadsCanonicalizer _symbols;
    protected boolean _tokenIncomplete;
    private static final int FEAT_MASK_TRAILING_COMMA = JsonParser.Feature.ALLOW_TRAILING_COMMA.getMask();
    private static final int FEAT_MASK_LEADING_ZEROS = JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS.getMask();
    private static final int FEAT_MASK_NON_NUM_NUMBERS = JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS.getMask();
    private static final int FEAT_MASK_ALLOW_MISSING = JsonParser.Feature.ALLOW_MISSING_VALUES.getMask();
    private static final int FEAT_MASK_ALLOW_SINGLE_QUOTES = JsonParser.Feature.ALLOW_SINGLE_QUOTES.getMask();
    private static final int FEAT_MASK_ALLOW_UNQUOTED_NAMES = JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES.getMask();
    private static final int FEAT_MASK_ALLOW_JAVA_COMMENTS = JsonParser.Feature.ALLOW_COMMENTS.getMask();
    private static final int FEAT_MASK_ALLOW_YAML_COMMENTS = JsonParser.Feature.ALLOW_YAML_COMMENTS.getMask();
    private static final int[] _icUTF8 = CharTypes.getInputCodeUtf8();
    protected static final int[] _icLatin1 = CharTypes.getInputCodeLatin1();

    @Deprecated
    public UTF8StreamJsonParser(IOContext iOContext, int i2, InputStream inputStream, ObjectCodec objectCodec, ByteQuadsCanonicalizer byteQuadsCanonicalizer, byte[] bArr, int i4, int i5, boolean z3) {
        this(iOContext, i2, inputStream, objectCodec, byteQuadsCanonicalizer, bArr, i4, i5, 0, z3);
    }

    private final void _checkMatchEnd(String str, int i2, int i4) throws IOException {
        if (Character.isJavaIdentifierPart((char) _decodeCharForError(i4))) {
            _reportInvalidToken(str.substring(0, i2));
        }
    }

    private final void _closeArrayScope() throws JsonParseException {
        _updateLocation();
        if (!this._parsingContext.inArray()) {
            _reportMismatchedEndMarker(93, '}');
        }
        this._parsingContext = this._parsingContext.clearAndGetParent();
    }

    private final void _closeObjectScope() throws JsonParseException {
        _updateLocation();
        if (!this._parsingContext.inObject()) {
            _reportMismatchedEndMarker(125, ']');
        }
        this._parsingContext = this._parsingContext.clearAndGetParent();
    }

    private final JsonToken _closeScope(int i2) throws JsonParseException {
        if (i2 == 125) {
            _closeObjectScope();
            JsonToken jsonToken = JsonToken.END_OBJECT;
            this._currToken = jsonToken;
            return jsonToken;
        }
        _closeArrayScope();
        JsonToken jsonToken2 = JsonToken.END_ARRAY;
        this._currToken = jsonToken2;
        return jsonToken2;
    }

    private final int _decodeUtf8_2(int i2) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i4 = this._inputPtr;
        int i5 = i4 + 1;
        this._inputPtr = i5;
        byte b4 = bArr[i4];
        if ((b4 & 192) != 128) {
            _reportInvalidOther(b4 & 255, i5);
        }
        return ((i2 & 31) << 6) | (b4 & Utf8.REPLACEMENT_BYTE);
    }

    private final int _decodeUtf8_3(int i2) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        int i4 = i2 & 15;
        byte[] bArr = this._inputBuffer;
        int i5 = this._inputPtr;
        int i6 = i5 + 1;
        this._inputPtr = i6;
        byte b4 = bArr[i5];
        if ((b4 & 192) != 128) {
            _reportInvalidOther(b4 & 255, i6);
        }
        int i7 = (i4 << 6) | (b4 & Utf8.REPLACEMENT_BYTE);
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i8 = this._inputPtr;
        int i9 = i8 + 1;
        this._inputPtr = i9;
        byte b5 = bArr2[i8];
        if ((b5 & 192) != 128) {
            _reportInvalidOther(b5 & 255, i9);
        }
        return (i7 << 6) | (b5 & Utf8.REPLACEMENT_BYTE);
    }

    private final int _decodeUtf8_3fast(int i2) throws IOException {
        int i4 = i2 & 15;
        byte[] bArr = this._inputBuffer;
        int i5 = this._inputPtr;
        int i6 = i5 + 1;
        this._inputPtr = i6;
        byte b4 = bArr[i5];
        if ((b4 & 192) != 128) {
            _reportInvalidOther(b4 & 255, i6);
        }
        int i7 = (i4 << 6) | (b4 & Utf8.REPLACEMENT_BYTE);
        byte[] bArr2 = this._inputBuffer;
        int i8 = this._inputPtr;
        int i9 = i8 + 1;
        this._inputPtr = i9;
        byte b5 = bArr2[i8];
        if ((b5 & 192) != 128) {
            _reportInvalidOther(b5 & 255, i9);
        }
        return (i7 << 6) | (b5 & Utf8.REPLACEMENT_BYTE);
    }

    private final int _decodeUtf8_4(int i2) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i4 = this._inputPtr;
        int i5 = i4 + 1;
        this._inputPtr = i5;
        byte b4 = bArr[i4];
        if ((b4 & 192) != 128) {
            _reportInvalidOther(b4 & 255, i5);
        }
        int i6 = ((i2 & 7) << 6) | (b4 & Utf8.REPLACEMENT_BYTE);
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i7 = this._inputPtr;
        int i8 = i7 + 1;
        this._inputPtr = i8;
        byte b5 = bArr2[i7];
        if ((b5 & 192) != 128) {
            _reportInvalidOther(b5 & 255, i8);
        }
        int i9 = (i6 << 6) | (b5 & Utf8.REPLACEMENT_BYTE);
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr3 = this._inputBuffer;
        int i10 = this._inputPtr;
        int i11 = i10 + 1;
        this._inputPtr = i11;
        byte b6 = bArr3[i10];
        if ((b6 & 192) != 128) {
            _reportInvalidOther(b6 & 255, i11);
        }
        return ((i9 << 6) | (b6 & Utf8.REPLACEMENT_BYTE)) - 65536;
    }

    private final void _finishString2(char[] cArr, int i2) throws IOException {
        int[] iArr = _icUTF8;
        byte[] bArr = this._inputBuffer;
        while (true) {
            int i4 = this._inputPtr;
            if (i4 >= this._inputEnd) {
                _loadMoreGuaranteed();
                i4 = this._inputPtr;
            }
            int i5 = 0;
            if (i2 >= cArr.length) {
                cArr = this._textBuffer.finishCurrentSegment();
                i2 = 0;
            }
            int min = Math.min(this._inputEnd, (cArr.length - i2) + i4);
            while (true) {
                if (i4 < min) {
                    int i6 = i4 + 1;
                    int i7 = bArr[i4] & 255;
                    if (iArr[i7] != 0) {
                        this._inputPtr = i6;
                        if (i7 == 34) {
                            this._textBuffer.setCurrentLength(i2);
                            return;
                        }
                        int i8 = iArr[i7];
                        if (i8 == 1) {
                            i7 = _decodeEscaped();
                        } else if (i8 == 2) {
                            i7 = _decodeUtf8_2(i7);
                        } else if (i8 == 3) {
                            i7 = this._inputEnd - i6 >= 2 ? _decodeUtf8_3fast(i7) : _decodeUtf8_3(i7);
                        } else if (i8 == 4) {
                            int _decodeUtf8_4 = _decodeUtf8_4(i7);
                            int i9 = i2 + 1;
                            cArr[i2] = (char) (55296 | (_decodeUtf8_4 >> 10));
                            if (i9 >= cArr.length) {
                                cArr = this._textBuffer.finishCurrentSegment();
                                i2 = 0;
                            } else {
                                i2 = i9;
                            }
                            i7 = (_decodeUtf8_4 & Log.LogWrapper.MAX_MSG_LEN) | 56320;
                        } else if (i7 < 32) {
                            _throwUnquotedSpace(i7, "string value");
                        } else {
                            _reportInvalidChar(i7);
                        }
                        if (i2 >= cArr.length) {
                            cArr = this._textBuffer.finishCurrentSegment();
                        } else {
                            i5 = i2;
                        }
                        i2 = i5 + 1;
                        cArr[i5] = (char) i7;
                    } else {
                        cArr[i2] = (char) i7;
                        i4 = i6;
                        i2++;
                    }
                } else {
                    this._inputPtr = i4;
                    break;
                }
            }
        }
    }

    private final boolean _isNextTokenNameMaybe(int i2, SerializableString serializableString) throws IOException {
        JsonToken _parseNegNumber;
        String _parseName = _parseName(i2);
        this._parsingContext.setCurrentName(_parseName);
        boolean equals = _parseName.equals(serializableString.getValue());
        this._currToken = JsonToken.FIELD_NAME;
        int _skipColon = _skipColon();
        _updateLocation();
        if (_skipColon == 34) {
            this._tokenIncomplete = true;
            this._nextToken = JsonToken.VALUE_STRING;
            return equals;
        }
        if (_skipColon == 45) {
            _parseNegNumber = _parseNegNumber();
        } else if (_skipColon == 46) {
            _parseNegNumber = _parseFloatThatStartsWithPeriod();
        } else if (_skipColon == 91) {
            _parseNegNumber = JsonToken.START_ARRAY;
        } else if (_skipColon == 102) {
            _matchFalse();
            _parseNegNumber = JsonToken.VALUE_FALSE;
        } else if (_skipColon == 110) {
            _matchNull();
            _parseNegNumber = JsonToken.VALUE_NULL;
        } else if (_skipColon == 116) {
            _matchTrue();
            _parseNegNumber = JsonToken.VALUE_TRUE;
        } else if (_skipColon != 123) {
            switch (_skipColon) {
                case 48:
                case 49:
                case 50:
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                    _parseNegNumber = _parsePosNumber(_skipColon);
                    break;
                default:
                    _parseNegNumber = _handleUnexpectedValue(_skipColon);
                    break;
            }
        } else {
            _parseNegNumber = JsonToken.START_OBJECT;
        }
        this._nextToken = _parseNegNumber;
        return equals;
    }

    private final void _isNextTokenNameYes(int i2) throws IOException {
        this._currToken = JsonToken.FIELD_NAME;
        _updateLocation();
        if (i2 == 34) {
            this._tokenIncomplete = true;
            this._nextToken = JsonToken.VALUE_STRING;
        } else if (i2 == 91) {
            this._nextToken = JsonToken.START_ARRAY;
        } else if (i2 == 102) {
            _matchFalse();
            this._nextToken = JsonToken.VALUE_FALSE;
        } else if (i2 == 110) {
            _matchNull();
            this._nextToken = JsonToken.VALUE_NULL;
        } else if (i2 == 116) {
            _matchTrue();
            this._nextToken = JsonToken.VALUE_TRUE;
        } else if (i2 == 123) {
            this._nextToken = JsonToken.START_OBJECT;
        } else if (i2 == 45) {
            this._nextToken = _parseNegNumber();
        } else if (i2 != 46) {
            switch (i2) {
                case 48:
                case 49:
                case 50:
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                    this._nextToken = _parsePosNumber(i2);
                    return;
                default:
                    this._nextToken = _handleUnexpectedValue(i2);
                    return;
            }
        } else {
            this._nextToken = _parseFloatThatStartsWithPeriod();
        }
    }

    private final void _matchToken2(String str, int i2) throws IOException {
        int i4;
        int i5;
        int length = str.length();
        do {
            if ((this._inputPtr >= this._inputEnd && !_loadMore()) || this._inputBuffer[this._inputPtr] != str.charAt(i2)) {
                _reportInvalidToken(str.substring(0, i2));
            }
            i4 = this._inputPtr + 1;
            this._inputPtr = i4;
            i2++;
        } while (i2 < length);
        if ((i4 < this._inputEnd || _loadMore()) && (i5 = this._inputBuffer[this._inputPtr] & 255) >= 48 && i5 != 93 && i5 != 125) {
            _checkMatchEnd(str, i2, i5);
        }
    }

    private final JsonToken _nextAfterName() {
        this._nameCopied = false;
        JsonToken jsonToken = this._nextToken;
        this._nextToken = null;
        if (jsonToken == JsonToken.START_ARRAY) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
        }
        this._currToken = jsonToken;
        return jsonToken;
    }

    private final JsonToken _nextTokenNotInObject(int i2) throws IOException {
        if (i2 == 34) {
            this._tokenIncomplete = true;
            JsonToken jsonToken = JsonToken.VALUE_STRING;
            this._currToken = jsonToken;
            return jsonToken;
        } else if (i2 == 45) {
            JsonToken _parseNegNumber = _parseNegNumber();
            this._currToken = _parseNegNumber;
            return _parseNegNumber;
        } else if (i2 == 46) {
            JsonToken _parseFloatThatStartsWithPeriod = _parseFloatThatStartsWithPeriod();
            this._currToken = _parseFloatThatStartsWithPeriod;
            return _parseFloatThatStartsWithPeriod;
        } else if (i2 == 91) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
            JsonToken jsonToken2 = JsonToken.START_ARRAY;
            this._currToken = jsonToken2;
            return jsonToken2;
        } else if (i2 == 102) {
            _matchFalse();
            JsonToken jsonToken3 = JsonToken.VALUE_FALSE;
            this._currToken = jsonToken3;
            return jsonToken3;
        } else if (i2 == 110) {
            _matchNull();
            JsonToken jsonToken4 = JsonToken.VALUE_NULL;
            this._currToken = jsonToken4;
            return jsonToken4;
        } else if (i2 == 116) {
            _matchTrue();
            JsonToken jsonToken5 = JsonToken.VALUE_TRUE;
            this._currToken = jsonToken5;
            return jsonToken5;
        } else if (i2 != 123) {
            switch (i2) {
                case 48:
                case 49:
                case 50:
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                    JsonToken _parsePosNumber = _parsePosNumber(i2);
                    this._currToken = _parsePosNumber;
                    return _parsePosNumber;
                default:
                    JsonToken _handleUnexpectedValue = _handleUnexpectedValue(i2);
                    this._currToken = _handleUnexpectedValue;
                    return _handleUnexpectedValue;
            }
        } else {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
            JsonToken jsonToken6 = JsonToken.START_OBJECT;
            this._currToken = jsonToken6;
            return jsonToken6;
        }
    }

    private static final int _padLastQuad(int i2, int i4) {
        return i4 == 4 ? i2 : i2 | ((-1) << (i4 << 3));
    }

    private final JsonToken _parseFloat(char[] cArr, int i2, int i4, boolean z3, int i5) throws IOException {
        int i6;
        boolean z4;
        int i7 = 0;
        if (i4 == 46) {
            if (i2 >= cArr.length) {
                cArr = this._textBuffer.finishCurrentSegment();
                i2 = 0;
            }
            cArr[i2] = (char) i4;
            i2++;
            i6 = 0;
            while (true) {
                if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                    z4 = true;
                    break;
                }
                byte[] bArr = this._inputBuffer;
                int i8 = this._inputPtr;
                this._inputPtr = i8 + 1;
                i4 = bArr[i8] & 255;
                if (i4 < 48 || i4 > 57) {
                    break;
                }
                i6++;
                if (i2 >= cArr.length) {
                    cArr = this._textBuffer.finishCurrentSegment();
                    i2 = 0;
                }
                cArr[i2] = (char) i4;
                i2++;
            }
            z4 = false;
            if (i6 == 0) {
                reportUnexpectedNumberChar(i4, "Decimal point not followed by a digit");
            }
        } else {
            i6 = 0;
            z4 = false;
        }
        if (i4 == 101 || i4 == 69) {
            if (i2 >= cArr.length) {
                cArr = this._textBuffer.finishCurrentSegment();
                i2 = 0;
            }
            int i9 = i2 + 1;
            cArr[i2] = (char) i4;
            if (this._inputPtr >= this._inputEnd) {
                _loadMoreGuaranteed();
            }
            byte[] bArr2 = this._inputBuffer;
            int i10 = this._inputPtr;
            this._inputPtr = i10 + 1;
            int i11 = bArr2[i10] & 255;
            if (i11 == 45 || i11 == 43) {
                if (i9 >= cArr.length) {
                    cArr = this._textBuffer.finishCurrentSegment();
                    i9 = 0;
                }
                int i12 = i9 + 1;
                cArr[i9] = (char) i11;
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                byte[] bArr3 = this._inputBuffer;
                int i13 = this._inputPtr;
                this._inputPtr = i13 + 1;
                i11 = bArr3[i13] & 255;
                i9 = i12;
            }
            i4 = i11;
            int i14 = 0;
            while (i4 >= 48 && i4 <= 57) {
                i14++;
                if (i9 >= cArr.length) {
                    cArr = this._textBuffer.finishCurrentSegment();
                    i9 = 0;
                }
                int i15 = i9 + 1;
                cArr[i9] = (char) i4;
                if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                    i7 = i14;
                    i2 = i15;
                    z4 = true;
                    break;
                }
                byte[] bArr4 = this._inputBuffer;
                int i16 = this._inputPtr;
                this._inputPtr = i16 + 1;
                i4 = bArr4[i16] & 255;
                i9 = i15;
            }
            i7 = i14;
            i2 = i9;
            if (i7 == 0) {
                reportUnexpectedNumberChar(i4, "Exponent indicator not followed by a digit");
            }
        }
        if (!z4) {
            this._inputPtr--;
            if (this._parsingContext.inRoot()) {
                _verifyRootSpace(i4);
            }
        }
        this._textBuffer.setCurrentLength(i2);
        return resetFloat(z3, i5, i6, i7);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0044, code lost:
        if (r3 == 46) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0048, code lost:
        if (r3 == 101) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004c, code lost:
        if (r3 != 69) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004f, code lost:
        r6._inputPtr = r10 - 1;
        r6._textBuffer.setCurrentLength(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005e, code lost:
        if (r6._parsingContext.inRoot() == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0060, code lost:
        _verifyRootSpace(r6._inputBuffer[r6._inputPtr] & 255);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006f, code lost:
        return resetInt(r9, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0076, code lost:
        return _parseFloat(r1, r2, r3, r9, r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.fasterxml.jackson.core.JsonToken _parseNumber2(char[] r7, int r8, boolean r9, int r10) throws java.io.IOException {
        /*
            r6 = this;
            r1 = r7
            r2 = r8
            r5 = r10
        L3:
            int r7 = r6._inputPtr
            int r8 = r6._inputEnd
            if (r7 < r8) goto L19
            boolean r7 = r6._loadMore()
            if (r7 != 0) goto L19
            com.fasterxml.jackson.core.util.TextBuffer r7 = r6._textBuffer
            r7.setCurrentLength(r2)
            com.fasterxml.jackson.core.JsonToken r7 = r6.resetInt(r9, r5)
            return r7
        L19:
            byte[] r7 = r6._inputBuffer
            int r8 = r6._inputPtr
            int r10 = r8 + 1
            r6._inputPtr = r10
            r7 = r7[r8]
            r3 = r7 & 255(0xff, float:3.57E-43)
            r7 = 57
            if (r3 > r7) goto L42
            r7 = 48
            if (r3 >= r7) goto L2e
            goto L42
        L2e:
            int r7 = r1.length
            if (r2 < r7) goto L39
            com.fasterxml.jackson.core.util.TextBuffer r7 = r6._textBuffer
            char[] r7 = r7.finishCurrentSegment()
            r2 = 0
            r1 = r7
        L39:
            int r7 = r2 + 1
            char r8 = (char) r3
            r1[r2] = r8
            int r5 = r5 + 1
            r2 = r7
            goto L3
        L42:
            r7 = 46
            if (r3 == r7) goto L70
            r7 = 101(0x65, float:1.42E-43)
            if (r3 == r7) goto L70
            r7 = 69
            if (r3 != r7) goto L4f
            goto L70
        L4f:
            int r10 = r10 + (-1)
            r6._inputPtr = r10
            com.fasterxml.jackson.core.util.TextBuffer r7 = r6._textBuffer
            r7.setCurrentLength(r2)
            com.fasterxml.jackson.core.json.JsonReadContext r7 = r6._parsingContext
            boolean r7 = r7.inRoot()
            if (r7 == 0) goto L6b
            byte[] r7 = r6._inputBuffer
            int r8 = r6._inputPtr
            r7 = r7[r8]
            r7 = r7 & 255(0xff, float:3.57E-43)
            r6._verifyRootSpace(r7)
        L6b:
            com.fasterxml.jackson.core.JsonToken r7 = r6.resetInt(r9, r5)
            return r7
        L70:
            r0 = r6
            r4 = r9
            com.fasterxml.jackson.core.JsonToken r7 = r0._parseFloat(r1, r2, r3, r4, r5)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._parseNumber2(char[], int, boolean, int):com.fasterxml.jackson.core.JsonToken");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0043, code lost:
        _reportInvalidEOF(" in a comment", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0049, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void _skipCComment() throws java.io.IOException {
        /*
            r5 = this;
            int[] r0 = com.fasterxml.jackson.core.io.CharTypes.getInputCodeComment()
        L4:
            int r1 = r5._inputPtr
            int r2 = r5._inputEnd
            if (r1 < r2) goto L10
            boolean r1 = r5._loadMore()
            if (r1 == 0) goto L43
        L10:
            byte[] r1 = r5._inputBuffer
            int r2 = r5._inputPtr
            int r3 = r2 + 1
            r5._inputPtr = r3
            r1 = r1[r2]
            r1 = r1 & 255(0xff, float:3.57E-43)
            r2 = r0[r1]
            if (r2 == 0) goto L4
            r4 = 2
            if (r2 == r4) goto L6e
            r4 = 3
            if (r2 == r4) goto L6a
            r4 = 4
            if (r2 == r4) goto L66
            r4 = 10
            if (r2 == r4) goto L5d
            r4 = 13
            if (r2 == r4) goto L59
            r4 = 42
            if (r2 == r4) goto L39
            r5._reportInvalidChar(r1)
            goto L4
        L39:
            int r1 = r5._inputEnd
            if (r3 < r1) goto L4a
            boolean r1 = r5._loadMore()
            if (r1 != 0) goto L4a
        L43:
            r0 = 0
            java.lang.String r1 = " in a comment"
            r5._reportInvalidEOF(r1, r0)
            return
        L4a:
            byte[] r1 = r5._inputBuffer
            int r2 = r5._inputPtr
            r1 = r1[r2]
            r3 = 47
            if (r1 != r3) goto L4
            int r2 = r2 + 1
            r5._inputPtr = r2
            return
        L59:
            r5._skipCR()
            goto L4
        L5d:
            int r1 = r5._currInputRow
            int r1 = r1 + 1
            r5._currInputRow = r1
            r5._currInputRowStart = r3
            goto L4
        L66:
            r5._skipUtf8_4(r1)
            goto L4
        L6a:
            r5._skipUtf8_3()
            goto L4
        L6e:
            r5._skipUtf8_2()
            goto L4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._skipCComment():void");
    }

    private final int _skipColon() throws IOException {
        int i2 = this._inputPtr;
        if (i2 + 4 >= this._inputEnd) {
            return _skipColon2(false);
        }
        byte[] bArr = this._inputBuffer;
        byte b4 = bArr[i2];
        if (b4 == 58) {
            int i4 = i2 + 1;
            this._inputPtr = i4;
            byte b5 = bArr[i4];
            if (b5 > 32) {
                if (b5 != 47 && b5 != 35) {
                    this._inputPtr = i4 + 1;
                    return b5;
                }
                return _skipColon2(true);
            }
            if (b5 == 32 || b5 == 9) {
                int i5 = i4 + 1;
                this._inputPtr = i5;
                byte b6 = bArr[i5];
                if (b6 > 32) {
                    if (b6 != 47 && b6 != 35) {
                        this._inputPtr = i5 + 1;
                        return b6;
                    }
                    return _skipColon2(true);
                }
            }
            return _skipColon2(true);
        }
        if (b4 == 32 || b4 == 9) {
            int i6 = i2 + 1;
            this._inputPtr = i6;
            b4 = bArr[i6];
        }
        if (b4 == 58) {
            int i7 = this._inputPtr + 1;
            this._inputPtr = i7;
            byte b7 = bArr[i7];
            if (b7 > 32) {
                if (b7 != 47 && b7 != 35) {
                    this._inputPtr = i7 + 1;
                    return b7;
                }
                return _skipColon2(true);
            }
            if (b7 == 32 || b7 == 9) {
                int i8 = i7 + 1;
                this._inputPtr = i8;
                byte b8 = bArr[i8];
                if (b8 > 32) {
                    if (b8 != 47 && b8 != 35) {
                        this._inputPtr = i8 + 1;
                        return b8;
                    }
                    return _skipColon2(true);
                }
            }
            return _skipColon2(true);
        }
        return _skipColon2(false);
    }

    private final int _skipColon2(boolean z3) throws IOException {
        while (true) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                _reportInvalidEOF(" within/between " + this._parsingContext.typeDesc() + " entries", null);
                return -1;
            }
            byte[] bArr = this._inputBuffer;
            int i2 = this._inputPtr;
            int i4 = i2 + 1;
            this._inputPtr = i4;
            int i5 = bArr[i2] & 255;
            if (i5 > 32) {
                if (i5 == 47) {
                    _skipComment();
                } else if (i5 != 35 || !_skipYAMLComment()) {
                    if (z3) {
                        return i5;
                    }
                    if (i5 != 58) {
                        _reportUnexpectedChar(i5, "was expecting a colon to separate field name and value");
                    }
                    z3 = true;
                }
            } else if (i5 != 32) {
                if (i5 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = i4;
                } else if (i5 == 13) {
                    _skipCR();
                } else if (i5 != 9) {
                    _throwInvalidSpace(i5);
                }
            }
        }
    }

    private final int _skipColonFast(int i2) throws IOException {
        byte[] bArr = this._inputBuffer;
        int i4 = i2 + 1;
        byte b4 = bArr[i2];
        if (b4 == 58) {
            int i5 = i4 + 1;
            byte b5 = bArr[i4];
            if (b5 > 32) {
                if (b5 != 47 && b5 != 35) {
                    this._inputPtr = i5;
                    return b5;
                }
            } else if (b5 == 32 || b5 == 9) {
                int i6 = i5 + 1;
                byte b6 = bArr[i5];
                if (b6 > 32 && b6 != 47 && b6 != 35) {
                    this._inputPtr = i6;
                    return b6;
                }
                i5 = i6;
            }
            this._inputPtr = i5 - 1;
            return _skipColon2(true);
        }
        if (b4 == 32 || b4 == 9) {
            int i7 = i4 + 1;
            byte b7 = bArr[i4];
            i4 = i7;
            b4 = b7;
        }
        if (b4 == 58) {
            int i8 = i4 + 1;
            byte b8 = bArr[i4];
            if (b8 > 32) {
                if (b8 != 47 && b8 != 35) {
                    this._inputPtr = i8;
                    return b8;
                }
            } else if (b8 == 32 || b8 == 9) {
                int i9 = i8 + 1;
                byte b9 = bArr[i8];
                if (b9 > 32 && b9 != 47 && b9 != 35) {
                    this._inputPtr = i9;
                    return b9;
                }
                i8 = i9;
            }
            this._inputPtr = i8 - 1;
            return _skipColon2(true);
        }
        this._inputPtr = i4 - 1;
        return _skipColon2(false);
    }

    private final void _skipComment() throws IOException {
        if ((this._features & FEAT_MASK_ALLOW_JAVA_COMMENTS) == 0) {
            _reportUnexpectedChar(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this._inputPtr >= this._inputEnd && !_loadMore()) {
            _reportInvalidEOF(" in a comment", null);
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        int i4 = bArr[i2] & 255;
        if (i4 == 47) {
            _skipLine();
        } else if (i4 == 42) {
            _skipCComment();
        } else {
            _reportUnexpectedChar(i4, "was expecting either '*' or '/' for a comment");
        }
    }

    private final void _skipLine() throws IOException {
        int[] inputCodeComment = CharTypes.getInputCodeComment();
        while (true) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                return;
            }
            byte[] bArr = this._inputBuffer;
            int i2 = this._inputPtr;
            int i4 = i2 + 1;
            this._inputPtr = i4;
            int i5 = bArr[i2] & 255;
            int i6 = inputCodeComment[i5];
            if (i6 != 0) {
                if (i6 == 2) {
                    _skipUtf8_2();
                } else if (i6 == 3) {
                    _skipUtf8_3();
                } else if (i6 == 4) {
                    _skipUtf8_4(i5);
                } else if (i6 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = i4;
                    return;
                } else if (i6 == 13) {
                    _skipCR();
                    return;
                } else if (i6 != 42 && i6 < 0) {
                    _reportInvalidChar(i5);
                }
            }
        }
    }

    private final void _skipUtf8_2() throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        int i4 = i2 + 1;
        this._inputPtr = i4;
        byte b4 = bArr[i2];
        if ((b4 & 192) != 128) {
            _reportInvalidOther(b4 & 255, i4);
        }
    }

    private final void _skipUtf8_3() throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        int i4 = i2 + 1;
        this._inputPtr = i4;
        byte b4 = bArr[i2];
        if ((b4 & 192) != 128) {
            _reportInvalidOther(b4 & 255, i4);
        }
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i5 = this._inputPtr;
        int i6 = i5 + 1;
        this._inputPtr = i6;
        byte b5 = bArr2[i5];
        if ((b5 & 192) != 128) {
            _reportInvalidOther(b5 & 255, i6);
        }
    }

    private final void _skipUtf8_4(int i2) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i4 = this._inputPtr;
        int i5 = i4 + 1;
        this._inputPtr = i5;
        byte b4 = bArr[i4];
        if ((b4 & 192) != 128) {
            _reportInvalidOther(b4 & 255, i5);
        }
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i6 = this._inputPtr;
        int i7 = i6 + 1;
        this._inputPtr = i7;
        byte b5 = bArr2[i6];
        if ((b5 & 192) != 128) {
            _reportInvalidOther(b5 & 255, i7);
        }
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr3 = this._inputBuffer;
        int i8 = this._inputPtr;
        int i9 = i8 + 1;
        this._inputPtr = i9;
        byte b6 = bArr3[i8];
        if ((b6 & 192) != 128) {
            _reportInvalidOther(b6 & 255, i9);
        }
    }

    private final int _skipWS() throws IOException {
        while (true) {
            int i2 = this._inputPtr;
            if (i2 < this._inputEnd) {
                byte[] bArr = this._inputBuffer;
                int i4 = i2 + 1;
                this._inputPtr = i4;
                int i5 = bArr[i2] & 255;
                if (i5 > 32) {
                    if (i5 == 47 || i5 == 35) {
                        this._inputPtr = i4 - 1;
                        return _skipWS2();
                    }
                    return i5;
                } else if (i5 != 32) {
                    if (i5 == 10) {
                        this._currInputRow++;
                        this._currInputRowStart = i4;
                    } else if (i5 == 13) {
                        _skipCR();
                    } else if (i5 != 9) {
                        _throwInvalidSpace(i5);
                    }
                }
            } else {
                return _skipWS2();
            }
        }
    }

    private final int _skipWS2() throws IOException {
        int i2;
        while (true) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                throw _constructError("Unexpected end-of-input within/between " + this._parsingContext.typeDesc() + " entries");
            }
            byte[] bArr = this._inputBuffer;
            int i4 = this._inputPtr;
            int i5 = i4 + 1;
            this._inputPtr = i5;
            i2 = bArr[i4] & 255;
            if (i2 > 32) {
                if (i2 == 47) {
                    _skipComment();
                } else if (i2 != 35 || !_skipYAMLComment()) {
                    break;
                }
            } else if (i2 != 32) {
                if (i2 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = i5;
                } else if (i2 == 13) {
                    _skipCR();
                } else if (i2 != 9) {
                    _throwInvalidSpace(i2);
                }
            }
        }
        return i2;
    }

    private final int _skipWSOrEnd() throws IOException {
        if (this._inputPtr >= this._inputEnd && !_loadMore()) {
            return _eofAsNextChar();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        int i4 = i2 + 1;
        this._inputPtr = i4;
        int i5 = bArr[i2] & 255;
        if (i5 > 32) {
            if (i5 == 47 || i5 == 35) {
                this._inputPtr = i4 - 1;
                return _skipWSOrEnd2();
            }
            return i5;
        }
        if (i5 != 32) {
            if (i5 == 10) {
                this._currInputRow++;
                this._currInputRowStart = i4;
            } else if (i5 == 13) {
                _skipCR();
            } else if (i5 != 9) {
                _throwInvalidSpace(i5);
            }
        }
        while (true) {
            int i6 = this._inputPtr;
            if (i6 < this._inputEnd) {
                byte[] bArr2 = this._inputBuffer;
                int i7 = i6 + 1;
                this._inputPtr = i7;
                int i8 = bArr2[i6] & 255;
                if (i8 > 32) {
                    if (i8 == 47 || i8 == 35) {
                        this._inputPtr = i7 - 1;
                        return _skipWSOrEnd2();
                    }
                    return i8;
                } else if (i8 != 32) {
                    if (i8 == 10) {
                        this._currInputRow++;
                        this._currInputRowStart = i7;
                    } else if (i8 == 13) {
                        _skipCR();
                    } else if (i8 != 9) {
                        _throwInvalidSpace(i8);
                    }
                }
            } else {
                return _skipWSOrEnd2();
            }
        }
    }

    private final int _skipWSOrEnd2() throws IOException {
        int i2;
        while (true) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                return _eofAsNextChar();
            }
            byte[] bArr = this._inputBuffer;
            int i4 = this._inputPtr;
            int i5 = i4 + 1;
            this._inputPtr = i5;
            i2 = bArr[i4] & 255;
            if (i2 > 32) {
                if (i2 == 47) {
                    _skipComment();
                } else if (i2 != 35 || !_skipYAMLComment()) {
                    break;
                }
            } else if (i2 != 32) {
                if (i2 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = i5;
                } else if (i2 == 13) {
                    _skipCR();
                } else if (i2 != 9) {
                    _throwInvalidSpace(i2);
                }
            }
        }
        return i2;
    }

    private final boolean _skipYAMLComment() throws IOException {
        if ((this._features & FEAT_MASK_ALLOW_YAML_COMMENTS) == 0) {
            return false;
        }
        _skipLine();
        return true;
    }

    private final void _updateLocation() {
        this._tokenInputRow = this._currInputRow;
        int i2 = this._inputPtr;
        this._tokenInputTotal = this._currInputProcessed + i2;
        this._tokenInputCol = i2 - this._currInputRowStart;
    }

    private final void _updateNameLocation() {
        this._nameStartRow = this._currInputRow;
        int i2 = this._inputPtr;
        this._nameStartOffset = i2;
        this._nameStartCol = i2 - this._currInputRowStart;
    }

    private final int _verifyNoLeadingZeroes() throws IOException {
        int i2;
        if ((this._inputPtr < this._inputEnd || _loadMore()) && (i2 = this._inputBuffer[this._inputPtr] & 255) >= 48 && i2 <= 57) {
            if ((this._features & FEAT_MASK_LEADING_ZEROS) == 0) {
                reportInvalidNumber("Leading zeroes not allowed");
            }
            this._inputPtr++;
            if (i2 == 48) {
                do {
                    if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                        break;
                    }
                    byte[] bArr = this._inputBuffer;
                    int i4 = this._inputPtr;
                    i2 = bArr[i4] & 255;
                    if (i2 < 48 || i2 > 57) {
                        return 48;
                    }
                    this._inputPtr = i4 + 1;
                } while (i2 == 48);
            }
            return i2;
        }
        return 48;
    }

    private final void _verifyRootSpace(int i2) throws IOException {
        int i4 = this._inputPtr + 1;
        this._inputPtr = i4;
        if (i2 != 9) {
            if (i2 == 10) {
                this._currInputRow++;
                this._currInputRowStart = i4;
            } else if (i2 == 13) {
                _skipCR();
            } else if (i2 != 32) {
                _reportMissingRootWS(i2);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String addName(int[] r17, int r18, int r19) throws com.fasterxml.jackson.core.JsonParseException {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser.addName(int[], int, int):java.lang.String");
    }

    private final String findName(int i2, int i4) throws JsonParseException {
        int _padLastQuad = _padLastQuad(i2, i4);
        String findName = this._symbols.findName(_padLastQuad);
        if (findName != null) {
            return findName;
        }
        int[] iArr = this._quadBuffer;
        iArr[0] = _padLastQuad;
        return addName(iArr, 1, i4);
    }

    private int nextByte() throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        return bArr[i2] & 255;
    }

    private final String parseName(int i2, int i4, int i5) throws IOException {
        return parseEscapedName(this._quadBuffer, 0, i2, i4, i5);
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected void _closeInput() throws IOException {
        if (this._inputStream != null) {
            if (this._ioContext.isResourceManaged() || isEnabled(JsonParser.Feature.AUTO_CLOSE_SOURCE)) {
                this._inputStream.close();
            }
            this._inputStream = null;
        }
    }

    protected final byte[] _decodeBase64(Base64Variant base64Variant) throws IOException {
        ByteArrayBuilder _getByteArrayBuilder = _getByteArrayBuilder();
        while (true) {
            if (this._inputPtr >= this._inputEnd) {
                _loadMoreGuaranteed();
            }
            byte[] bArr = this._inputBuffer;
            int i2 = this._inputPtr;
            this._inputPtr = i2 + 1;
            int i4 = bArr[i2] & 255;
            if (i4 > 32) {
                int decodeBase64Char = base64Variant.decodeBase64Char(i4);
                if (decodeBase64Char < 0) {
                    if (i4 == 34) {
                        return _getByteArrayBuilder.toByteArray();
                    }
                    decodeBase64Char = _decodeBase64Escape(base64Variant, i4, 0);
                    if (decodeBase64Char < 0) {
                        continue;
                    }
                }
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                byte[] bArr2 = this._inputBuffer;
                int i5 = this._inputPtr;
                this._inputPtr = i5 + 1;
                int i6 = bArr2[i5] & 255;
                int decodeBase64Char2 = base64Variant.decodeBase64Char(i6);
                if (decodeBase64Char2 < 0) {
                    decodeBase64Char2 = _decodeBase64Escape(base64Variant, i6, 1);
                }
                int i7 = (decodeBase64Char << 6) | decodeBase64Char2;
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                byte[] bArr3 = this._inputBuffer;
                int i8 = this._inputPtr;
                this._inputPtr = i8 + 1;
                int i9 = bArr3[i8] & 255;
                int decodeBase64Char3 = base64Variant.decodeBase64Char(i9);
                if (decodeBase64Char3 < 0) {
                    if (decodeBase64Char3 != -2) {
                        if (i9 == 34) {
                            _getByteArrayBuilder.append(i7 >> 4);
                            if (base64Variant.usesPadding()) {
                                this._inputPtr--;
                                _handleBase64MissingPadding(base64Variant);
                            }
                            return _getByteArrayBuilder.toByteArray();
                        }
                        decodeBase64Char3 = _decodeBase64Escape(base64Variant, i9, 2);
                    }
                    if (decodeBase64Char3 == -2) {
                        if (this._inputPtr >= this._inputEnd) {
                            _loadMoreGuaranteed();
                        }
                        byte[] bArr4 = this._inputBuffer;
                        int i10 = this._inputPtr;
                        this._inputPtr = i10 + 1;
                        int i11 = bArr4[i10] & 255;
                        if (!base64Variant.usesPaddingChar(i11) && _decodeBase64Escape(base64Variant, i11, 3) != -2) {
                            throw reportInvalidBase64Char(base64Variant, i11, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                        }
                        _getByteArrayBuilder.append(i7 >> 4);
                    }
                }
                int i12 = (i7 << 6) | decodeBase64Char3;
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                byte[] bArr5 = this._inputBuffer;
                int i13 = this._inputPtr;
                this._inputPtr = i13 + 1;
                int i14 = bArr5[i13] & 255;
                int decodeBase64Char4 = base64Variant.decodeBase64Char(i14);
                if (decodeBase64Char4 < 0) {
                    if (decodeBase64Char4 != -2) {
                        if (i14 == 34) {
                            _getByteArrayBuilder.appendTwoBytes(i12 >> 2);
                            if (base64Variant.usesPadding()) {
                                this._inputPtr--;
                                _handleBase64MissingPadding(base64Variant);
                            }
                            return _getByteArrayBuilder.toByteArray();
                        }
                        decodeBase64Char4 = _decodeBase64Escape(base64Variant, i14, 3);
                    }
                    if (decodeBase64Char4 == -2) {
                        _getByteArrayBuilder.appendTwoBytes(i12 >> 2);
                    }
                }
                _getByteArrayBuilder.appendThreeBytes((i12 << 6) | decodeBase64Char4);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected int _decodeCharForError(int r7) throws java.io.IOException {
        /*
            r6 = this;
            r7 = r7 & 255(0xff, float:3.57E-43)
            r0 = 127(0x7f, float:1.78E-43)
            if (r7 <= r0) goto L68
            r0 = r7 & 224(0xe0, float:3.14E-43)
            r1 = 2
            r2 = 1
            r3 = 192(0xc0, float:2.69E-43)
            if (r0 != r3) goto L12
            r7 = r7 & 31
        L10:
            r0 = 1
            goto L2c
        L12:
            r0 = r7 & 240(0xf0, float:3.36E-43)
            r3 = 224(0xe0, float:3.14E-43)
            if (r0 != r3) goto L1c
            r7 = r7 & 15
            r0 = 2
            goto L2c
        L1c:
            r0 = r7 & 248(0xf8, float:3.48E-43)
            r3 = 240(0xf0, float:3.36E-43)
            if (r0 != r3) goto L26
            r7 = r7 & 7
            r0 = 3
            goto L2c
        L26:
            r0 = r7 & 255(0xff, float:3.57E-43)
            r6._reportInvalidInitial(r0)
            goto L10
        L2c:
            int r3 = r6.nextByte()
            r4 = r3 & 192(0xc0, float:2.69E-43)
            r5 = 128(0x80, float:1.794E-43)
            if (r4 == r5) goto L3b
            r4 = r3 & 255(0xff, float:3.57E-43)
            r6._reportInvalidOther(r4)
        L3b:
            int r7 = r7 << 6
            r3 = r3 & 63
            r7 = r7 | r3
            if (r0 <= r2) goto L68
            int r2 = r6.nextByte()
            r3 = r2 & 192(0xc0, float:2.69E-43)
            if (r3 == r5) goto L4f
            r3 = r2 & 255(0xff, float:3.57E-43)
            r6._reportInvalidOther(r3)
        L4f:
            int r7 = r7 << 6
            r2 = r2 & 63
            r7 = r7 | r2
            if (r0 <= r1) goto L68
            int r0 = r6.nextByte()
            r1 = r0 & 192(0xc0, float:2.69E-43)
            if (r1 == r5) goto L63
            r1 = r0 & 255(0xff, float:3.57E-43)
            r6._reportInvalidOther(r1)
        L63:
            int r7 = r7 << 6
            r0 = r0 & 63
            r7 = r7 | r0
        L68:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._decodeCharForError(int):int");
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected char _decodeEscaped() throws IOException {
        if (this._inputPtr >= this._inputEnd && !_loadMore()) {
            _reportInvalidEOF(" in character escape sequence", JsonToken.VALUE_STRING);
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b4 = bArr[i2];
        if (b4 == 34 || b4 == 47 || b4 == 92) {
            return (char) b4;
        }
        if (b4 != 98) {
            if (b4 != 102) {
                if (b4 != 110) {
                    if (b4 != 114) {
                        if (b4 != 116) {
                            if (b4 != 117) {
                                return _handleUnrecognizedCharacterEscape((char) _decodeCharForError(b4));
                            }
                            int i4 = 0;
                            for (int i5 = 0; i5 < 4; i5++) {
                                if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                                    _reportInvalidEOF(" in character escape sequence", JsonToken.VALUE_STRING);
                                }
                                byte[] bArr2 = this._inputBuffer;
                                int i6 = this._inputPtr;
                                this._inputPtr = i6 + 1;
                                byte b5 = bArr2[i6];
                                int charToHex = CharTypes.charToHex(b5);
                                if (charToHex < 0) {
                                    _reportUnexpectedChar(b5 & 255, "expected a hex-digit for character escape sequence");
                                }
                                i4 = (i4 << 4) | charToHex;
                            }
                            return (char) i4;
                        }
                        return '\t';
                    }
                    return '\r';
                }
                return '\n';
            }
            return '\f';
        }
        return '\b';
    }

    protected String _finishAndReturnString() throws IOException {
        int i2 = this._inputPtr;
        if (i2 >= this._inputEnd) {
            _loadMoreGuaranteed();
            i2 = this._inputPtr;
        }
        int i4 = 0;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        int min = Math.min(this._inputEnd, emptyAndGetCurrentSegment.length + i2);
        byte[] bArr = this._inputBuffer;
        while (true) {
            if (i2 >= min) {
                break;
            }
            int i5 = bArr[i2] & 255;
            if (iArr[i5] == 0) {
                i2++;
                emptyAndGetCurrentSegment[i4] = (char) i5;
                i4++;
            } else if (i5 == 34) {
                this._inputPtr = i2 + 1;
                return this._textBuffer.setCurrentAndReturn(i4);
            }
        }
        this._inputPtr = i2;
        _finishString2(emptyAndGetCurrentSegment, i4);
        return this._textBuffer.contentsAsString();
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected void _finishString() throws IOException {
        int i2 = this._inputPtr;
        if (i2 >= this._inputEnd) {
            _loadMoreGuaranteed();
            i2 = this._inputPtr;
        }
        int i4 = 0;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        int min = Math.min(this._inputEnd, emptyAndGetCurrentSegment.length + i2);
        byte[] bArr = this._inputBuffer;
        while (true) {
            if (i2 >= min) {
                break;
            }
            int i5 = bArr[i2] & 255;
            if (iArr[i5] == 0) {
                i2++;
                emptyAndGetCurrentSegment[i4] = (char) i5;
                i4++;
            } else if (i5 == 34) {
                this._inputPtr = i2 + 1;
                this._textBuffer.setCurrentLength(i4);
                return;
            }
        }
        this._inputPtr = i2;
        _finishString2(emptyAndGetCurrentSegment, i4);
    }

    protected final String _getText2(JsonToken jsonToken) {
        if (jsonToken == null) {
            return null;
        }
        int id = jsonToken.id();
        if (id != 5) {
            if (id != 6 && id != 7 && id != 8) {
                return jsonToken.asString();
            }
            return this._textBuffer.contentsAsString();
        }
        return this._parsingContext.getCurrentName();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0045, code lost:
        if (r6 != 39) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0047, code lost:
        r10._textBuffer.setCurrentLength(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004e, code lost:
        return com.fasterxml.jackson.core.JsonToken.VALUE_STRING;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004f, code lost:
        r5 = r1[r6];
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0052, code lost:
        if (r5 == 1) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0055, code lost:
        if (r5 == 2) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0058, code lost:
        if (r5 == 3) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005b, code lost:
        if (r5 == 4) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x005f, code lost:
        if (r6 >= 32) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0061, code lost:
        _throwUnquotedSpace(r6, "string value");
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0066, code lost:
        _reportInvalidChar(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006a, code lost:
        r5 = _decodeUtf8_4(r6);
        r6 = r4 + 1;
        r0[r4] = (char) (55296 | (r5 >> 10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007a, code lost:
        if (r6 < r0.length) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x007c, code lost:
        r0 = r10._textBuffer.finishCurrentSegment();
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0084, code lost:
        r4 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0085, code lost:
        r6 = 56320 | (r5 & com.papa91.arc.ext.Log.LogWrapper.MAX_MSG_LEN);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x008f, code lost:
        if ((r10._inputEnd - r7) < 2) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0091, code lost:
        r6 = _decodeUtf8_3fast(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0096, code lost:
        r6 = _decodeUtf8_3(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x009b, code lost:
        r6 = _decodeUtf8_2(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00a0, code lost:
        r6 = _decodeEscaped();
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a5, code lost:
        if (r4 < r0.length) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a7, code lost:
        r0 = r10._textBuffer.finishCurrentSegment();
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00ae, code lost:
        r0[r4] = (char) r6;
        r4 = r4 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.fasterxml.jackson.core.JsonToken _handleApos() throws java.io.IOException {
        /*
            r10 = this;
            com.fasterxml.jackson.core.util.TextBuffer r0 = r10._textBuffer
            char[] r0 = r0.emptyAndGetCurrentSegment()
            int[] r1 = com.fasterxml.jackson.core.json.UTF8StreamJsonParser._icUTF8
            byte[] r2 = r10._inputBuffer
            r3 = 0
            r4 = 0
        Lc:
            int r5 = r10._inputPtr
            int r6 = r10._inputEnd
            if (r5 < r6) goto L15
            r10._loadMoreGuaranteed()
        L15:
            int r5 = r0.length
            if (r4 < r5) goto L1f
            com.fasterxml.jackson.core.util.TextBuffer r0 = r10._textBuffer
            char[] r0 = r0.finishCurrentSegment()
            r4 = 0
        L1f:
            int r5 = r10._inputEnd
            int r6 = r10._inputPtr
            int r7 = r0.length
            int r7 = r7 - r4
            int r6 = r6 + r7
            if (r6 >= r5) goto L29
            r5 = r6
        L29:
            int r6 = r10._inputPtr
            if (r6 >= r5) goto Lc
            int r7 = r6 + 1
            r10._inputPtr = r7
            r6 = r2[r6]
            r6 = r6 & 255(0xff, float:3.57E-43)
            r8 = 39
            if (r6 == r8) goto L45
            r9 = r1[r6]
            if (r9 == 0) goto L3e
            goto L45
        L3e:
            int r7 = r4 + 1
            char r6 = (char) r6
            r0[r4] = r6
            r4 = r7
            goto L29
        L45:
            if (r6 != r8) goto L4f
            com.fasterxml.jackson.core.util.TextBuffer r0 = r10._textBuffer
            r0.setCurrentLength(r4)
            com.fasterxml.jackson.core.JsonToken r0 = com.fasterxml.jackson.core.JsonToken.VALUE_STRING
            return r0
        L4f:
            r5 = r1[r6]
            r8 = 1
            if (r5 == r8) goto La0
            r8 = 2
            if (r5 == r8) goto L9b
            r9 = 3
            if (r5 == r9) goto L8c
            r7 = 4
            if (r5 == r7) goto L6a
            r5 = 32
            if (r6 >= r5) goto L66
            java.lang.String r5 = "string value"
            r10._throwUnquotedSpace(r6, r5)
        L66:
            r10._reportInvalidChar(r6)
            goto La4
        L6a:
            int r5 = r10._decodeUtf8_4(r6)
            int r6 = r4 + 1
            r7 = 55296(0xd800, float:7.7486E-41)
            int r8 = r5 >> 10
            r7 = r7 | r8
            char r7 = (char) r7
            r0[r4] = r7
            int r4 = r0.length
            if (r6 < r4) goto L84
            com.fasterxml.jackson.core.util.TextBuffer r0 = r10._textBuffer
            char[] r0 = r0.finishCurrentSegment()
            r4 = 0
            goto L85
        L84:
            r4 = r6
        L85:
            r6 = 56320(0xdc00, float:7.8921E-41)
            r5 = r5 & 1023(0x3ff, float:1.434E-42)
            r6 = r6 | r5
            goto La4
        L8c:
            int r5 = r10._inputEnd
            int r5 = r5 - r7
            if (r5 < r8) goto L96
            int r6 = r10._decodeUtf8_3fast(r6)
            goto La4
        L96:
            int r6 = r10._decodeUtf8_3(r6)
            goto La4
        L9b:
            int r6 = r10._decodeUtf8_2(r6)
            goto La4
        La0:
            char r6 = r10._decodeEscaped()
        La4:
            int r5 = r0.length
            if (r4 < r5) goto Lae
            com.fasterxml.jackson.core.util.TextBuffer r0 = r10._textBuffer
            char[] r0 = r0.finishCurrentSegment()
            r4 = 0
        Lae:
            int r5 = r4 + 1
            char r6 = (char) r6
            r0[r4] = r6
            r4 = r5
            goto Lc
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._handleApos():com.fasterxml.jackson.core.JsonToken");
    }

    protected JsonToken _handleInvalidNumberStart(int i2, boolean z3) throws IOException {
        String str;
        while (i2 == 73) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                _reportInvalidEOFInValue(JsonToken.VALUE_NUMBER_FLOAT);
            }
            byte[] bArr = this._inputBuffer;
            int i4 = this._inputPtr;
            this._inputPtr = i4 + 1;
            i2 = bArr[i4];
            if (i2 != 78) {
                if (i2 != 110) {
                    break;
                }
                str = z3 ? "-Infinity" : "+Infinity";
            } else {
                str = z3 ? "-INF" : "+INF";
            }
            _matchToken(str, 3);
            if ((this._features & FEAT_MASK_NON_NUM_NUMBERS) != 0) {
                return resetAsNaN(str, z3 ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY);
            }
            _reportError("Non-standard token '%s': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow", str);
        }
        reportUnexpectedNumberChar(i2, "expected digit (0-9) to follow minus sign, for valid numeric value");
        return null;
    }

    protected String _handleOddName(int i2) throws IOException {
        if (i2 == 39 && (this._features & FEAT_MASK_ALLOW_SINGLE_QUOTES) != 0) {
            return _parseAposName();
        }
        if ((this._features & FEAT_MASK_ALLOW_UNQUOTED_NAMES) == 0) {
            _reportUnexpectedChar((char) _decodeCharForError(i2), "was expecting double-quote to start field name");
        }
        int[] inputCodeUtf8JsNames = CharTypes.getInputCodeUtf8JsNames();
        if (inputCodeUtf8JsNames[i2] != 0) {
            _reportUnexpectedChar(i2, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        int[] iArr = this._quadBuffer;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            if (i4 < 4) {
                i4++;
                i6 = i2 | (i6 << 8);
            } else {
                if (i5 >= iArr.length) {
                    iArr = ParserBase.growArrayBy(iArr, iArr.length);
                    this._quadBuffer = iArr;
                }
                iArr[i5] = i6;
                i6 = i2;
                i5++;
                i4 = 1;
            }
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                _reportInvalidEOF(" in field name", JsonToken.FIELD_NAME);
            }
            byte[] bArr = this._inputBuffer;
            int i7 = this._inputPtr;
            i2 = bArr[i7] & 255;
            if (inputCodeUtf8JsNames[i2] != 0) {
                break;
            }
            this._inputPtr = i7 + 1;
        }
        if (i4 > 0) {
            if (i5 >= iArr.length) {
                int[] growArrayBy = ParserBase.growArrayBy(iArr, iArr.length);
                this._quadBuffer = growArrayBy;
                iArr = growArrayBy;
            }
            iArr[i5] = i6;
            i5++;
        }
        String findName = this._symbols.findName(iArr, i5);
        return findName == null ? addName(iArr, i5, i4) : findName;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x001b, code lost:
        if (r4 != 44) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0048, code lost:
        if (r3._parsingContext.inArray() == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0051, code lost:
        if (r3._parsingContext.inRoot() != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0058, code lost:
        if ((r3._features & com.fasterxml.jackson.core.json.UTF8StreamJsonParser.FEAT_MASK_ALLOW_MISSING) == 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005a, code lost:
        r3._inputPtr--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0061, code lost:
        return com.fasterxml.jackson.core.JsonToken.VALUE_NULL;
     */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ac  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.fasterxml.jackson.core.JsonToken _handleUnexpectedValue(int r4) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._handleUnexpectedValue(int):com.fasterxml.jackson.core.JsonToken");
    }

    protected final boolean _loadMore() throws IOException {
        byte[] bArr;
        int length;
        InputStream inputStream = this._inputStream;
        if (inputStream == null || (length = (bArr = this._inputBuffer).length) == 0) {
            return false;
        }
        int read = inputStream.read(bArr, 0, length);
        if (read > 0) {
            int i2 = this._inputEnd;
            this._currInputProcessed += i2;
            this._currInputRowStart -= i2;
            this._nameStartOffset -= i2;
            this._inputPtr = 0;
            this._inputEnd = read;
            return true;
        }
        _closeInput();
        if (read == 0) {
            throw new IOException("InputStream.read() returned 0 characters when trying to read " + this._inputBuffer.length + " bytes");
        }
        return false;
    }

    protected void _loadMoreGuaranteed() throws IOException {
        if (_loadMore()) {
            return;
        }
        _reportInvalidEOF();
    }

    protected final void _matchFalse() throws IOException {
        int i2;
        int i4 = this._inputPtr;
        if (i4 + 4 < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i5 = i4 + 1;
            if (bArr[i4] == 97) {
                int i6 = i5 + 1;
                if (bArr[i5] == 108) {
                    int i7 = i6 + 1;
                    if (bArr[i6] == 115) {
                        int i8 = i7 + 1;
                        if (bArr[i7] == 101 && ((i2 = bArr[i8] & 255) < 48 || i2 == 93 || i2 == 125)) {
                            this._inputPtr = i8;
                            return;
                        }
                    }
                }
            }
        }
        _matchToken2(Bugly.SDK_IS_DEV, 1);
    }

    protected final void _matchNull() throws IOException {
        int i2;
        int i4 = this._inputPtr;
        if (i4 + 3 < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i5 = i4 + 1;
            if (bArr[i4] == 117) {
                int i6 = i5 + 1;
                if (bArr[i5] == 108) {
                    int i7 = i6 + 1;
                    if (bArr[i6] == 108 && ((i2 = bArr[i7] & 255) < 48 || i2 == 93 || i2 == 125)) {
                        this._inputPtr = i7;
                        return;
                    }
                }
            }
        }
        _matchToken2("null", 1);
    }

    protected final void _matchToken(String str, int i2) throws IOException {
        int i4;
        int length = str.length();
        if (this._inputPtr + length >= this._inputEnd) {
            _matchToken2(str, i2);
            return;
        }
        do {
            if (this._inputBuffer[this._inputPtr] != str.charAt(i2)) {
                _reportInvalidToken(str.substring(0, i2));
            }
            i4 = this._inputPtr + 1;
            this._inputPtr = i4;
            i2++;
        } while (i2 < length);
        int i5 = this._inputBuffer[i4] & 255;
        if (i5 < 48 || i5 == 93 || i5 == 125) {
            return;
        }
        _checkMatchEnd(str, i2, i5);
    }

    protected final void _matchTrue() throws IOException {
        int i2;
        int i4 = this._inputPtr;
        if (i4 + 3 < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i5 = i4 + 1;
            if (bArr[i4] == 114) {
                int i6 = i5 + 1;
                if (bArr[i5] == 117) {
                    int i7 = i6 + 1;
                    if (bArr[i6] == 101 && ((i2 = bArr[i7] & 255) < 48 || i2 == 93 || i2 == 125)) {
                        this._inputPtr = i7;
                        return;
                    }
                }
            }
        }
        _matchToken2("true", 1);
    }

    protected String _parseAposName() throws IOException {
        if (this._inputPtr >= this._inputEnd && !_loadMore()) {
            _reportInvalidEOF(": was expecting closing ''' for field name", JsonToken.FIELD_NAME);
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        int i4 = bArr[i2] & 255;
        if (i4 == 39) {
            return "";
        }
        int[] iArr = this._quadBuffer;
        int[] iArr2 = _icLatin1;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i4 != 39) {
            if (iArr2[i4] != 0 && i4 != 34) {
                if (i4 != 92) {
                    _throwUnquotedSpace(i4, "name");
                } else {
                    i4 = _decodeEscaped();
                }
                if (i4 > 127) {
                    if (i5 >= 4) {
                        if (i6 >= iArr.length) {
                            iArr = ParserBase.growArrayBy(iArr, iArr.length);
                            this._quadBuffer = iArr;
                        }
                        iArr[i6] = i7;
                        i6++;
                        i5 = 0;
                        i7 = 0;
                    }
                    if (i4 < 2048) {
                        i7 = (i7 << 8) | (i4 >> 6) | 192;
                        i5++;
                    } else {
                        int i8 = (i7 << 8) | (i4 >> 12) | Opcodes.SHL_INT_LIT8;
                        int i9 = i5 + 1;
                        if (i9 >= 4) {
                            if (i6 >= iArr.length) {
                                iArr = ParserBase.growArrayBy(iArr, iArr.length);
                                this._quadBuffer = iArr;
                            }
                            iArr[i6] = i8;
                            i6++;
                            i9 = 0;
                            i8 = 0;
                        }
                        i7 = (i8 << 8) | ((i4 >> 6) & 63) | 128;
                        i5 = i9 + 1;
                    }
                    i4 = (i4 & 63) | 128;
                }
            }
            if (i5 < 4) {
                i5++;
                i7 = i4 | (i7 << 8);
            } else {
                if (i6 >= iArr.length) {
                    iArr = ParserBase.growArrayBy(iArr, iArr.length);
                    this._quadBuffer = iArr;
                }
                iArr[i6] = i7;
                i7 = i4;
                i6++;
                i5 = 1;
            }
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                _reportInvalidEOF(" in field name", JsonToken.FIELD_NAME);
            }
            byte[] bArr2 = this._inputBuffer;
            int i10 = this._inputPtr;
            this._inputPtr = i10 + 1;
            i4 = bArr2[i10] & 255;
        }
        if (i5 > 0) {
            if (i6 >= iArr.length) {
                int[] growArrayBy = ParserBase.growArrayBy(iArr, iArr.length);
                this._quadBuffer = growArrayBy;
                iArr = growArrayBy;
            }
            iArr[i6] = _padLastQuad(i7, i5);
            i6++;
        }
        String findName = this._symbols.findName(iArr, i6);
        return findName == null ? addName(iArr, i6, i5) : findName;
    }

    protected final JsonToken _parseFloatThatStartsWithPeriod() throws IOException {
        if (!isEnabled(JsonReadFeature.ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS.mappedFeature())) {
            return _handleUnexpectedValue(46);
        }
        return _parseFloat(this._textBuffer.emptyAndGetCurrentSegment(), 0, 46, false, 0);
    }

    protected final String _parseName(int i2) throws IOException {
        if (i2 != 34) {
            return _handleOddName(i2);
        }
        int i4 = this._inputPtr;
        if (i4 + 13 > this._inputEnd) {
            return slowParseName();
        }
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i5 = i4 + 1;
        this._inputPtr = i5;
        int i6 = bArr[i4] & 255;
        if (iArr[i6] != 0) {
            return i6 == 34 ? "" : parseName(0, i6, 0);
        }
        int i7 = i5 + 1;
        this._inputPtr = i7;
        int i8 = bArr[i5] & 255;
        if (iArr[i8] != 0) {
            if (i8 == 34) {
                return findName(i6, 1);
            }
            return parseName(i6, i8, 1);
        }
        int i9 = (i6 << 8) | i8;
        int i10 = i7 + 1;
        this._inputPtr = i10;
        int i11 = bArr[i7] & 255;
        if (iArr[i11] != 0) {
            if (i11 == 34) {
                return findName(i9, 2);
            }
            return parseName(i9, i11, 2);
        }
        int i12 = (i9 << 8) | i11;
        int i13 = i10 + 1;
        this._inputPtr = i13;
        int i14 = bArr[i10] & 255;
        if (iArr[i14] != 0) {
            if (i14 == 34) {
                return findName(i12, 3);
            }
            return parseName(i12, i14, 3);
        }
        int i15 = (i12 << 8) | i14;
        this._inputPtr = i13 + 1;
        int i16 = bArr[i13] & 255;
        if (iArr[i16] == 0) {
            this._quad1 = i15;
            return parseMediumName(i16);
        } else if (i16 == 34) {
            return findName(i15, 4);
        } else {
            return parseName(i15, i16, 4);
        }
    }

    protected JsonToken _parseNegNumber() throws IOException {
        int i2;
        int i4;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        emptyAndGetCurrentSegment[0] = '-';
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i5 = this._inputPtr;
        this._inputPtr = i5 + 1;
        int i6 = bArr[i5] & 255;
        if (i6 <= 48) {
            if (i6 != 48) {
                return _handleInvalidNumberStart(i6, true);
            }
            i6 = _verifyNoLeadingZeroes();
        } else if (i6 > 57) {
            return _handleInvalidNumberStart(i6, true);
        }
        int i7 = 2;
        emptyAndGetCurrentSegment[1] = (char) i6;
        int min = Math.min(this._inputEnd, (this._inputPtr + emptyAndGetCurrentSegment.length) - 2);
        int i8 = 1;
        while (true) {
            int i9 = this._inputPtr;
            if (i9 >= min) {
                return _parseNumber2(emptyAndGetCurrentSegment, i7, true, i8);
            }
            byte[] bArr2 = this._inputBuffer;
            i2 = i9 + 1;
            this._inputPtr = i2;
            i4 = bArr2[i9] & 255;
            if (i4 < 48 || i4 > 57) {
                break;
            }
            i8++;
            emptyAndGetCurrentSegment[i7] = (char) i4;
            i7++;
        }
        if (i4 != 46 && i4 != 101 && i4 != 69) {
            this._inputPtr = i2 - 1;
            this._textBuffer.setCurrentLength(i7);
            if (this._parsingContext.inRoot()) {
                _verifyRootSpace(i4);
            }
            return resetInt(true, i8);
        }
        return _parseFloat(emptyAndGetCurrentSegment, i7, i4, true, i8);
    }

    protected JsonToken _parsePosNumber(int i2) throws IOException {
        int i4;
        int i5;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        if (i2 == 48) {
            i2 = _verifyNoLeadingZeroes();
        }
        emptyAndGetCurrentSegment[0] = (char) i2;
        int min = Math.min(this._inputEnd, (this._inputPtr + emptyAndGetCurrentSegment.length) - 1);
        int i6 = 1;
        int i7 = 1;
        while (true) {
            int i8 = this._inputPtr;
            if (i8 >= min) {
                return _parseNumber2(emptyAndGetCurrentSegment, i6, false, i7);
            }
            byte[] bArr = this._inputBuffer;
            i4 = i8 + 1;
            this._inputPtr = i4;
            i5 = bArr[i8] & 255;
            if (i5 < 48 || i5 > 57) {
                break;
            }
            i7++;
            emptyAndGetCurrentSegment[i6] = (char) i5;
            i6++;
        }
        if (i5 != 46 && i5 != 101 && i5 != 69) {
            this._inputPtr = i4 - 1;
            this._textBuffer.setCurrentLength(i6);
            if (this._parsingContext.inRoot()) {
                _verifyRootSpace(i5);
            }
            return resetInt(false, i7);
        }
        return _parseFloat(emptyAndGetCurrentSegment, i6, i5, false, i7);
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x012e, code lost:
        r16._tokenIncomplete = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0130, code lost:
        if (r7 <= 0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0132, code lost:
        r8 = r8 + r7;
        r18.write(r19, 0, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0136, code lost:
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:?, code lost:
        return r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected int _readBinary(com.fasterxml.jackson.core.Base64Variant r17, java.io.OutputStream r18, byte[] r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._readBinary(com.fasterxml.jackson.core.Base64Variant, java.io.OutputStream, byte[]):int");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.core.base.ParserBase
    public void _releaseBuffers() throws IOException {
        byte[] bArr;
        byte[] bArr2;
        super._releaseBuffers();
        this._symbols.release();
        if (!this._bufferRecyclable || (bArr = this._inputBuffer) == null || bArr == (bArr2 = ParserMinimalBase.NO_BYTES)) {
            return;
        }
        this._inputBuffer = bArr2;
        this._ioContext.releaseReadIOBuffer(bArr);
    }

    protected void _reportInvalidChar(int i2) throws JsonParseException {
        if (i2 < 32) {
            _throwInvalidSpace(i2);
        }
        _reportInvalidInitial(i2);
    }

    protected void _reportInvalidInitial(int i2) throws JsonParseException {
        _reportError("Invalid UTF-8 start byte 0x" + Integer.toHexString(i2));
    }

    protected void _reportInvalidOther(int i2) throws JsonParseException {
        _reportError("Invalid UTF-8 middle byte 0x" + Integer.toHexString(i2));
    }

    protected void _reportInvalidToken(String str, int i2) throws IOException {
        this._inputPtr = i2;
        _reportInvalidToken(str, _validJsonTokenList());
    }

    protected final void _skipCR() throws IOException {
        if (this._inputPtr < this._inputEnd || _loadMore()) {
            byte[] bArr = this._inputBuffer;
            int i2 = this._inputPtr;
            if (bArr[i2] == 10) {
                this._inputPtr = i2 + 1;
            }
        }
        this._currInputRow++;
        this._currInputRowStart = this._inputPtr;
    }

    protected void _skipString() throws IOException {
        this._tokenIncomplete = false;
        int[] iArr = _icUTF8;
        byte[] bArr = this._inputBuffer;
        while (true) {
            int i2 = this._inputPtr;
            int i4 = this._inputEnd;
            if (i2 >= i4) {
                _loadMoreGuaranteed();
                i2 = this._inputPtr;
                i4 = this._inputEnd;
            }
            while (true) {
                if (i2 < i4) {
                    int i5 = i2 + 1;
                    int i6 = bArr[i2] & 255;
                    if (iArr[i6] != 0) {
                        this._inputPtr = i5;
                        if (i6 == 34) {
                            return;
                        }
                        int i7 = iArr[i6];
                        if (i7 == 1) {
                            _decodeEscaped();
                        } else if (i7 == 2) {
                            _skipUtf8_2();
                        } else if (i7 == 3) {
                            _skipUtf8_3();
                        } else if (i7 == 4) {
                            _skipUtf8_4(i6);
                        } else if (i6 < 32) {
                            _throwUnquotedSpace(i6, "string value");
                        } else {
                            _reportInvalidChar(i6);
                        }
                    } else {
                        i2 = i5;
                    }
                } else {
                    this._inputPtr = i2;
                    break;
                }
            }
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void finishToken() throws IOException {
        if (this._tokenIncomplete) {
            this._tokenIncomplete = false;
            _finishString();
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase, com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public byte[] getBinaryValue(Base64Variant base64Variant) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != JsonToken.VALUE_STRING && (jsonToken != JsonToken.VALUE_EMBEDDED_OBJECT || this._binaryValue == null)) {
            _reportError("Current token (" + this._currToken + ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary");
        }
        if (this._tokenIncomplete) {
            try {
                this._binaryValue = _decodeBase64(base64Variant);
                this._tokenIncomplete = false;
            } catch (IllegalArgumentException e4) {
                throw _constructError("Failed to decode VALUE_STRING as base64 (" + base64Variant + "): " + e4.getMessage());
            }
        } else if (this._binaryValue == null) {
            ByteArrayBuilder _getByteArrayBuilder = _getByteArrayBuilder();
            _decodeBase64(getText(), _getByteArrayBuilder, base64Variant);
            this._binaryValue = _getByteArrayBuilder.toByteArray();
        }
        return this._binaryValue;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public ObjectCodec getCodec() {
        return this._objectCodec;
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase, com.fasterxml.jackson.core.JsonParser
    public JsonLocation getCurrentLocation() {
        return new JsonLocation(_getSourceReference(), this._currInputProcessed + this._inputPtr, -1L, this._currInputRow, (this._inputPtr - this._currInputRowStart) + 1);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object getInputSource() {
        return this._inputStream;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JacksonFeatureSet<StreamReadCapability> getReadCapabilities() {
        return ParserBase.JSON_READ_CAPABILITIES;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public String getText() throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == JsonToken.VALUE_STRING) {
            if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                return _finishAndReturnString();
            }
            return this._textBuffer.contentsAsString();
        }
        return _getText2(jsonToken);
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public char[] getTextCharacters() throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != null) {
            int id = jsonToken.id();
            if (id != 5) {
                if (id != 6) {
                    if (id != 7 && id != 8) {
                        return this._currToken.asCharArray();
                    }
                } else if (this._tokenIncomplete) {
                    this._tokenIncomplete = false;
                    _finishString();
                }
                return this._textBuffer.getTextBuffer();
            }
            if (!this._nameCopied) {
                String currentName = this._parsingContext.getCurrentName();
                int length = currentName.length();
                char[] cArr = this._nameCopyBuffer;
                if (cArr == null) {
                    this._nameCopyBuffer = this._ioContext.allocNameCopyBuffer(length);
                } else if (cArr.length < length) {
                    this._nameCopyBuffer = new char[length];
                }
                currentName.getChars(0, length, this._nameCopyBuffer, 0);
                this._nameCopied = true;
            }
            return this._nameCopyBuffer;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public int getTextLength() throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != null) {
            int id = jsonToken.id();
            if (id != 5) {
                if (id != 6) {
                    if (id != 7 && id != 8) {
                        return this._currToken.asCharArray().length;
                    }
                } else if (this._tokenIncomplete) {
                    this._tokenIncomplete = false;
                    _finishString();
                }
                return this._textBuffer.size();
            }
            return this._parsingContext.getCurrentName().length();
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0011, code lost:
        if (r0 != 8) goto L15;
     */
    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getTextOffset() throws java.io.IOException {
        /*
            r3 = this;
            com.fasterxml.jackson.core.JsonToken r0 = r3._currToken
            r1 = 0
            if (r0 == 0) goto L24
            int r0 = r0.id()
            r2 = 6
            if (r0 == r2) goto L14
            r2 = 7
            if (r0 == r2) goto L1d
            r2 = 8
            if (r0 == r2) goto L1d
            goto L24
        L14:
            boolean r0 = r3._tokenIncomplete
            if (r0 == 0) goto L1d
            r3._tokenIncomplete = r1
            r3._finishString()
        L1d:
            com.fasterxml.jackson.core.util.TextBuffer r0 = r3._textBuffer
            int r0 = r0.getTextOffset()
            return r0
        L24:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser.getTextOffset():int");
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase, com.fasterxml.jackson.core.JsonParser
    public JsonLocation getTokenLocation() {
        if (this._currToken == JsonToken.FIELD_NAME) {
            return new JsonLocation(_getSourceReference(), this._currInputProcessed + (this._nameStartOffset - 1), -1L, this._nameStartRow, this._nameStartCol);
        }
        return new JsonLocation(_getSourceReference(), this._tokenInputTotal - 1, -1L, this._tokenInputRow, this._tokenInputCol);
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public int getValueAsInt() throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != JsonToken.VALUE_NUMBER_INT && jsonToken != JsonToken.VALUE_NUMBER_FLOAT) {
            return super.getValueAsInt(0);
        }
        int i2 = this._numTypesValid;
        if ((i2 & 1) == 0) {
            if (i2 == 0) {
                return _parseIntValue();
            }
            if ((i2 & 1) == 0) {
                convertNumberToInt();
            }
        }
        return this._numberInt;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public String getValueAsString() throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == JsonToken.VALUE_STRING) {
            if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                return _finishAndReturnString();
            }
            return this._textBuffer.contentsAsString();
        } else if (jsonToken == JsonToken.FIELD_NAME) {
            return getCurrentName();
        } else {
            return super.getValueAsString(null);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Boolean nextBooleanValue() throws IOException {
        if (this._currToken == JsonToken.FIELD_NAME) {
            this._nameCopied = false;
            JsonToken jsonToken = this._nextToken;
            this._nextToken = null;
            this._currToken = jsonToken;
            if (jsonToken == JsonToken.VALUE_TRUE) {
                return Boolean.TRUE;
            }
            if (jsonToken == JsonToken.VALUE_FALSE) {
                return Boolean.FALSE;
            }
            if (jsonToken == JsonToken.START_ARRAY) {
                this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
            } else if (jsonToken == JsonToken.START_OBJECT) {
                this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
            }
            return null;
        }
        JsonToken nextToken = nextToken();
        if (nextToken == JsonToken.VALUE_TRUE) {
            return Boolean.TRUE;
        }
        if (nextToken == JsonToken.VALUE_FALSE) {
            return Boolean.FALSE;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean nextFieldName(SerializableString serializableString) throws IOException {
        int i2 = 0;
        this._numTypesValid = 0;
        if (this._currToken == JsonToken.FIELD_NAME) {
            _nextAfterName();
            return false;
        }
        if (this._tokenIncomplete) {
            _skipString();
        }
        int _skipWSOrEnd = _skipWSOrEnd();
        if (_skipWSOrEnd < 0) {
            close();
            this._currToken = null;
            return false;
        }
        this._binaryValue = null;
        if (_skipWSOrEnd == 93) {
            _closeArrayScope();
            this._currToken = JsonToken.END_ARRAY;
            return false;
        } else if (_skipWSOrEnd == 125) {
            _closeObjectScope();
            this._currToken = JsonToken.END_OBJECT;
            return false;
        } else {
            if (this._parsingContext.expectComma()) {
                if (_skipWSOrEnd != 44) {
                    _reportUnexpectedChar(_skipWSOrEnd, "was expecting comma to separate " + this._parsingContext.typeDesc() + " entries");
                }
                _skipWSOrEnd = _skipWS();
                if ((this._features & FEAT_MASK_TRAILING_COMMA) != 0 && (_skipWSOrEnd == 93 || _skipWSOrEnd == 125)) {
                    _closeScope(_skipWSOrEnd);
                    return false;
                }
            }
            if (!this._parsingContext.inObject()) {
                _updateLocation();
                _nextTokenNotInObject(_skipWSOrEnd);
                return false;
            }
            _updateNameLocation();
            if (_skipWSOrEnd == 34) {
                byte[] asQuotedUTF8 = serializableString.asQuotedUTF8();
                int length = asQuotedUTF8.length;
                int i4 = this._inputPtr;
                if (i4 + length + 4 < this._inputEnd) {
                    int i5 = length + i4;
                    if (this._inputBuffer[i5] == 34) {
                        while (i4 != i5) {
                            if (asQuotedUTF8[i2] == this._inputBuffer[i4]) {
                                i2++;
                                i4++;
                            }
                        }
                        this._parsingContext.setCurrentName(serializableString.getValue());
                        _isNextTokenNameYes(_skipColonFast(i4 + 1));
                        return true;
                    }
                }
            }
            return _isNextTokenNameMaybe(_skipWSOrEnd, serializableString);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int nextIntValue(int i2) throws IOException {
        if (this._currToken != JsonToken.FIELD_NAME) {
            return nextToken() == JsonToken.VALUE_NUMBER_INT ? getIntValue() : i2;
        }
        this._nameCopied = false;
        JsonToken jsonToken = this._nextToken;
        this._nextToken = null;
        this._currToken = jsonToken;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT) {
            return getIntValue();
        }
        if (jsonToken == JsonToken.START_ARRAY) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
        }
        return i2;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public long nextLongValue(long j4) throws IOException {
        if (this._currToken != JsonToken.FIELD_NAME) {
            return nextToken() == JsonToken.VALUE_NUMBER_INT ? getLongValue() : j4;
        }
        this._nameCopied = false;
        JsonToken jsonToken = this._nextToken;
        this._nextToken = null;
        this._currToken = jsonToken;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT) {
            return getLongValue();
        }
        if (jsonToken == JsonToken.START_ARRAY) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
        }
        return j4;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public String nextTextValue() throws IOException {
        if (this._currToken == JsonToken.FIELD_NAME) {
            this._nameCopied = false;
            JsonToken jsonToken = this._nextToken;
            this._nextToken = null;
            this._currToken = jsonToken;
            if (jsonToken == JsonToken.VALUE_STRING) {
                if (this._tokenIncomplete) {
                    this._tokenIncomplete = false;
                    return _finishAndReturnString();
                }
                return this._textBuffer.contentsAsString();
            }
            if (jsonToken == JsonToken.START_ARRAY) {
                this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
            } else if (jsonToken == JsonToken.START_OBJECT) {
                this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
            }
            return null;
        } else if (nextToken() == JsonToken.VALUE_STRING) {
            return getText();
        } else {
            return null;
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public JsonToken nextToken() throws IOException {
        JsonToken _parseNegNumber;
        JsonToken jsonToken = this._currToken;
        JsonToken jsonToken2 = JsonToken.FIELD_NAME;
        if (jsonToken == jsonToken2) {
            return _nextAfterName();
        }
        this._numTypesValid = 0;
        if (this._tokenIncomplete) {
            _skipString();
        }
        int _skipWSOrEnd = _skipWSOrEnd();
        if (_skipWSOrEnd < 0) {
            close();
            this._currToken = null;
            return null;
        }
        this._binaryValue = null;
        if (_skipWSOrEnd == 93) {
            _closeArrayScope();
            JsonToken jsonToken3 = JsonToken.END_ARRAY;
            this._currToken = jsonToken3;
            return jsonToken3;
        } else if (_skipWSOrEnd == 125) {
            _closeObjectScope();
            JsonToken jsonToken4 = JsonToken.END_OBJECT;
            this._currToken = jsonToken4;
            return jsonToken4;
        } else {
            if (this._parsingContext.expectComma()) {
                if (_skipWSOrEnd != 44) {
                    _reportUnexpectedChar(_skipWSOrEnd, "was expecting comma to separate " + this._parsingContext.typeDesc() + " entries");
                }
                _skipWSOrEnd = _skipWS();
                if ((this._features & FEAT_MASK_TRAILING_COMMA) != 0 && (_skipWSOrEnd == 93 || _skipWSOrEnd == 125)) {
                    return _closeScope(_skipWSOrEnd);
                }
            }
            if (!this._parsingContext.inObject()) {
                _updateLocation();
                return _nextTokenNotInObject(_skipWSOrEnd);
            }
            _updateNameLocation();
            this._parsingContext.setCurrentName(_parseName(_skipWSOrEnd));
            this._currToken = jsonToken2;
            int _skipColon = _skipColon();
            _updateLocation();
            if (_skipColon == 34) {
                this._tokenIncomplete = true;
                this._nextToken = JsonToken.VALUE_STRING;
                return this._currToken;
            }
            if (_skipColon == 45) {
                _parseNegNumber = _parseNegNumber();
            } else if (_skipColon == 46) {
                _parseNegNumber = _parseFloatThatStartsWithPeriod();
            } else if (_skipColon == 91) {
                _parseNegNumber = JsonToken.START_ARRAY;
            } else if (_skipColon == 102) {
                _matchFalse();
                _parseNegNumber = JsonToken.VALUE_FALSE;
            } else if (_skipColon == 110) {
                _matchNull();
                _parseNegNumber = JsonToken.VALUE_NULL;
            } else if (_skipColon == 116) {
                _matchTrue();
                _parseNegNumber = JsonToken.VALUE_TRUE;
            } else if (_skipColon != 123) {
                switch (_skipColon) {
                    case 48:
                    case 49:
                    case 50:
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                        _parseNegNumber = _parsePosNumber(_skipColon);
                        break;
                    default:
                        _parseNegNumber = _handleUnexpectedValue(_skipColon);
                        break;
                }
            } else {
                _parseNegNumber = JsonToken.START_OBJECT;
            }
            this._nextToken = _parseNegNumber;
            return this._currToken;
        }
    }

    protected final String parseEscapedName(int[] iArr, int i2, int i4, int i5, int i6) throws IOException {
        int[] iArr2 = _icLatin1;
        while (true) {
            if (iArr2[i5] != 0) {
                if (i5 == 34) {
                    break;
                }
                if (i5 != 92) {
                    _throwUnquotedSpace(i5, "name");
                } else {
                    i5 = _decodeEscaped();
                }
                if (i5 > 127) {
                    int i7 = 0;
                    if (i6 >= 4) {
                        if (i2 >= iArr.length) {
                            iArr = ParserBase.growArrayBy(iArr, iArr.length);
                            this._quadBuffer = iArr;
                        }
                        iArr[i2] = i4;
                        i2++;
                        i4 = 0;
                        i6 = 0;
                    }
                    if (i5 < 2048) {
                        i4 = (i4 << 8) | (i5 >> 6) | 192;
                        i6++;
                    } else {
                        int i8 = (i4 << 8) | (i5 >> 12) | Opcodes.SHL_INT_LIT8;
                        int i9 = i6 + 1;
                        if (i9 >= 4) {
                            if (i2 >= iArr.length) {
                                iArr = ParserBase.growArrayBy(iArr, iArr.length);
                                this._quadBuffer = iArr;
                            }
                            iArr[i2] = i8;
                            i2++;
                            i9 = 0;
                        } else {
                            i7 = i8;
                        }
                        i4 = (i7 << 8) | ((i5 >> 6) & 63) | 128;
                        i6 = i9 + 1;
                    }
                    i5 = (i5 & 63) | 128;
                }
            }
            if (i6 < 4) {
                i6++;
                i4 = (i4 << 8) | i5;
            } else {
                if (i2 >= iArr.length) {
                    iArr = ParserBase.growArrayBy(iArr, iArr.length);
                    this._quadBuffer = iArr;
                }
                iArr[i2] = i4;
                i4 = i5;
                i2++;
                i6 = 1;
            }
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                _reportInvalidEOF(" in field name", JsonToken.FIELD_NAME);
            }
            byte[] bArr = this._inputBuffer;
            int i10 = this._inputPtr;
            this._inputPtr = i10 + 1;
            i5 = bArr[i10] & 255;
        }
        if (i6 > 0) {
            if (i2 >= iArr.length) {
                iArr = ParserBase.growArrayBy(iArr, iArr.length);
                this._quadBuffer = iArr;
            }
            iArr[i2] = _padLastQuad(i4, i6);
            i2++;
        }
        String findName = this._symbols.findName(iArr, i2);
        return findName == null ? addName(iArr, i2, i6) : findName;
    }

    protected final String parseLongName(int i2, int i4, int i5) throws IOException {
        int[] iArr = this._quadBuffer;
        iArr[0] = this._quad1;
        iArr[1] = i4;
        iArr[2] = i5;
        byte[] bArr = this._inputBuffer;
        int[] iArr2 = _icLatin1;
        int i6 = i2;
        int i7 = 3;
        while (true) {
            int i8 = this._inputPtr;
            if (i8 + 4 <= this._inputEnd) {
                int i9 = i8 + 1;
                this._inputPtr = i9;
                int i10 = bArr[i8] & 255;
                if (iArr2[i10] != 0) {
                    if (i10 == 34) {
                        return findName(this._quadBuffer, i7, i6, 1);
                    }
                    return parseEscapedName(this._quadBuffer, i7, i6, i10, 1);
                }
                int i11 = (i6 << 8) | i10;
                int i12 = i9 + 1;
                this._inputPtr = i12;
                int i13 = bArr[i9] & 255;
                if (iArr2[i13] != 0) {
                    if (i13 == 34) {
                        return findName(this._quadBuffer, i7, i11, 2);
                    }
                    return parseEscapedName(this._quadBuffer, i7, i11, i13, 2);
                }
                int i14 = (i11 << 8) | i13;
                int i15 = i12 + 1;
                this._inputPtr = i15;
                int i16 = bArr[i12] & 255;
                if (iArr2[i16] != 0) {
                    if (i16 == 34) {
                        return findName(this._quadBuffer, i7, i14, 3);
                    }
                    return parseEscapedName(this._quadBuffer, i7, i14, i16, 3);
                }
                int i17 = (i14 << 8) | i16;
                this._inputPtr = i15 + 1;
                int i18 = bArr[i15] & 255;
                if (iArr2[i18] != 0) {
                    if (i18 == 34) {
                        return findName(this._quadBuffer, i7, i17, 4);
                    }
                    return parseEscapedName(this._quadBuffer, i7, i17, i18, 4);
                }
                int[] iArr3 = this._quadBuffer;
                if (i7 >= iArr3.length) {
                    this._quadBuffer = ParserBase.growArrayBy(iArr3, i7);
                }
                this._quadBuffer[i7] = i17;
                i6 = i18;
                i7++;
            } else {
                return parseEscapedName(this._quadBuffer, i7, 0, i6, 0);
            }
        }
    }

    protected final String parseMediumName(int i2) throws IOException {
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i4 = this._inputPtr;
        int i5 = i4 + 1;
        this._inputPtr = i5;
        int i6 = bArr[i4] & 255;
        if (iArr[i6] != 0) {
            if (i6 == 34) {
                return findName(this._quad1, i2, 1);
            }
            return parseName(this._quad1, i2, i6, 1);
        }
        int i7 = (i2 << 8) | i6;
        int i8 = i5 + 1;
        this._inputPtr = i8;
        int i9 = bArr[i5] & 255;
        if (iArr[i9] != 0) {
            if (i9 == 34) {
                return findName(this._quad1, i7, 2);
            }
            return parseName(this._quad1, i7, i9, 2);
        }
        int i10 = (i7 << 8) | i9;
        int i11 = i8 + 1;
        this._inputPtr = i11;
        int i12 = bArr[i8] & 255;
        if (iArr[i12] != 0) {
            if (i12 == 34) {
                return findName(this._quad1, i10, 3);
            }
            return parseName(this._quad1, i10, i12, 3);
        }
        int i13 = (i10 << 8) | i12;
        this._inputPtr = i11 + 1;
        int i14 = bArr[i11] & 255;
        if (iArr[i14] != 0) {
            if (i14 == 34) {
                return findName(this._quad1, i13, 4);
            }
            return parseName(this._quad1, i13, i14, 4);
        }
        return parseMediumName2(i14, i13);
    }

    protected final String parseMediumName2(int i2, int i4) throws IOException {
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i5 = this._inputPtr;
        int i6 = i5 + 1;
        this._inputPtr = i6;
        int i7 = bArr[i5] & 255;
        if (iArr[i7] != 0) {
            if (i7 == 34) {
                return findName(this._quad1, i4, i2, 1);
            }
            return parseName(this._quad1, i4, i2, i7, 1);
        }
        int i8 = (i2 << 8) | i7;
        int i9 = i6 + 1;
        this._inputPtr = i9;
        int i10 = bArr[i6] & 255;
        if (iArr[i10] != 0) {
            if (i10 == 34) {
                return findName(this._quad1, i4, i8, 2);
            }
            return parseName(this._quad1, i4, i8, i10, 2);
        }
        int i11 = (i8 << 8) | i10;
        int i12 = i9 + 1;
        this._inputPtr = i12;
        int i13 = bArr[i9] & 255;
        if (iArr[i13] != 0) {
            if (i13 == 34) {
                return findName(this._quad1, i4, i11, 3);
            }
            return parseName(this._quad1, i4, i11, i13, 3);
        }
        int i14 = (i11 << 8) | i13;
        this._inputPtr = i12 + 1;
        int i15 = bArr[i12] & 255;
        if (iArr[i15] != 0) {
            if (i15 == 34) {
                return findName(this._quad1, i4, i14, 4);
            }
            return parseName(this._quad1, i4, i14, i15, 4);
        }
        return parseLongName(i15, i4, i14);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int readBinaryValue(Base64Variant base64Variant, OutputStream outputStream) throws IOException {
        if (this._tokenIncomplete && this._currToken == JsonToken.VALUE_STRING) {
            byte[] allocBase64Buffer = this._ioContext.allocBase64Buffer();
            try {
                return _readBinary(base64Variant, outputStream, allocBase64Buffer);
            } finally {
                this._ioContext.releaseBase64Buffer(allocBase64Buffer);
            }
        }
        byte[] binaryValue = getBinaryValue(base64Variant);
        outputStream.write(binaryValue);
        return binaryValue.length;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int releaseBuffered(OutputStream outputStream) throws IOException {
        int i2 = this._inputEnd;
        int i4 = this._inputPtr;
        int i5 = i2 - i4;
        if (i5 < 1) {
            return 0;
        }
        this._inputPtr = i4 + i5;
        outputStream.write(this._inputBuffer, i4, i5);
        return i5;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void setCodec(ObjectCodec objectCodec) {
        this._objectCodec = objectCodec;
    }

    protected String slowParseName() throws IOException {
        if (this._inputPtr >= this._inputEnd && !_loadMore()) {
            _reportInvalidEOF(": was expecting closing '\"' for name", JsonToken.FIELD_NAME);
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        int i4 = bArr[i2] & 255;
        return i4 == 34 ? "" : parseEscapedName(this._quadBuffer, 0, 0, i4, 0);
    }

    public UTF8StreamJsonParser(IOContext iOContext, int i2, InputStream inputStream, ObjectCodec objectCodec, ByteQuadsCanonicalizer byteQuadsCanonicalizer, byte[] bArr, int i4, int i5, int i6, boolean z3) {
        super(iOContext, i2);
        this._quadBuffer = new int[16];
        this._inputStream = inputStream;
        this._objectCodec = objectCodec;
        this._symbols = byteQuadsCanonicalizer;
        this._inputBuffer = bArr;
        this._inputPtr = i4;
        this._inputEnd = i5;
        this._currInputRowStart = i4 - i6;
        this._currInputProcessed = (-i4) + i6;
        this._bufferRecyclable = z3;
    }

    private final String parseName(int i2, int i4, int i5, int i6) throws IOException {
        int[] iArr = this._quadBuffer;
        iArr[0] = i2;
        return parseEscapedName(iArr, 1, i4, i5, i6);
    }

    protected void _reportInvalidOther(int i2, int i4) throws JsonParseException {
        this._inputPtr = i4;
        _reportInvalidOther(i2);
    }

    protected void _reportInvalidToken(String str) throws IOException {
        _reportInvalidToken(str, _validJsonTokenList());
    }

    private final String parseName(int i2, int i4, int i5, int i6, int i7) throws IOException {
        int[] iArr = this._quadBuffer;
        iArr[0] = i2;
        iArr[1] = i4;
        return parseEscapedName(iArr, 2, i5, i6, i7);
    }

    protected void _reportInvalidToken(String str, String str2) throws IOException {
        StringBuilder sb = new StringBuilder(str);
        while (true) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                break;
            }
            byte[] bArr = this._inputBuffer;
            int i2 = this._inputPtr;
            this._inputPtr = i2 + 1;
            char _decodeCharForError = (char) _decodeCharForError(bArr[i2]);
            if (!Character.isJavaIdentifierPart(_decodeCharForError)) {
                break;
            }
            sb.append(_decodeCharForError);
            if (sb.length() >= 256) {
                sb.append("...");
                break;
            }
        }
        _reportError("Unrecognized token '%s': was expecting %s", sb, str2);
    }

    private final String findName(int i2, int i4, int i5) throws JsonParseException {
        int _padLastQuad = _padLastQuad(i4, i5);
        String findName = this._symbols.findName(i2, _padLastQuad);
        if (findName != null) {
            return findName;
        }
        int[] iArr = this._quadBuffer;
        iArr[0] = i2;
        iArr[1] = _padLastQuad;
        return addName(iArr, 2, i5);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int getText(Writer writer) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == JsonToken.VALUE_STRING) {
            if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                _finishString();
            }
            return this._textBuffer.contentsToWriter(writer);
        } else if (jsonToken == JsonToken.FIELD_NAME) {
            String currentName = this._parsingContext.getCurrentName();
            writer.write(currentName);
            return currentName.length();
        } else if (jsonToken != null) {
            if (jsonToken.isNumeric()) {
                return this._textBuffer.contentsToWriter(writer);
            }
            char[] asCharArray = jsonToken.asCharArray();
            writer.write(asCharArray);
            return asCharArray.length;
        } else {
            return 0;
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public int getValueAsInt(int i2) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != JsonToken.VALUE_NUMBER_INT && jsonToken != JsonToken.VALUE_NUMBER_FLOAT) {
            return super.getValueAsInt(i2);
        }
        int i4 = this._numTypesValid;
        if ((i4 & 1) == 0) {
            if (i4 == 0) {
                return _parseIntValue();
            }
            if ((i4 & 1) == 0) {
                convertNumberToInt();
            }
        }
        return this._numberInt;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public String getValueAsString(String str) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == JsonToken.VALUE_STRING) {
            if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                return _finishAndReturnString();
            }
            return this._textBuffer.contentsAsString();
        } else if (jsonToken == JsonToken.FIELD_NAME) {
            return getCurrentName();
        } else {
            return super.getValueAsString(str);
        }
    }

    private final String findName(int i2, int i4, int i5, int i6) throws JsonParseException {
        int _padLastQuad = _padLastQuad(i5, i6);
        String findName = this._symbols.findName(i2, i4, _padLastQuad);
        if (findName != null) {
            return findName;
        }
        int[] iArr = this._quadBuffer;
        iArr[0] = i2;
        iArr[1] = i4;
        iArr[2] = _padLastQuad(_padLastQuad, i6);
        return addName(iArr, 3, i6);
    }

    private final String findName(int[] iArr, int i2, int i4, int i5) throws JsonParseException {
        if (i2 >= iArr.length) {
            iArr = ParserBase.growArrayBy(iArr, iArr.length);
            this._quadBuffer = iArr;
        }
        int i6 = i2 + 1;
        iArr[i2] = _padLastQuad(i4, i5);
        String findName = this._symbols.findName(iArr, i6);
        return findName == null ? addName(iArr, i6, i5) : findName;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public String nextFieldName() throws IOException {
        JsonToken _parseNegNumber;
        this._numTypesValid = 0;
        JsonToken jsonToken = this._currToken;
        JsonToken jsonToken2 = JsonToken.FIELD_NAME;
        if (jsonToken == jsonToken2) {
            _nextAfterName();
            return null;
        }
        if (this._tokenIncomplete) {
            _skipString();
        }
        int _skipWSOrEnd = _skipWSOrEnd();
        if (_skipWSOrEnd < 0) {
            close();
            this._currToken = null;
            return null;
        }
        this._binaryValue = null;
        if (_skipWSOrEnd == 93) {
            _closeArrayScope();
            this._currToken = JsonToken.END_ARRAY;
            return null;
        } else if (_skipWSOrEnd == 125) {
            _closeObjectScope();
            this._currToken = JsonToken.END_OBJECT;
            return null;
        } else {
            if (this._parsingContext.expectComma()) {
                if (_skipWSOrEnd != 44) {
                    _reportUnexpectedChar(_skipWSOrEnd, "was expecting comma to separate " + this._parsingContext.typeDesc() + " entries");
                }
                _skipWSOrEnd = _skipWS();
                if ((this._features & FEAT_MASK_TRAILING_COMMA) != 0 && (_skipWSOrEnd == 93 || _skipWSOrEnd == 125)) {
                    _closeScope(_skipWSOrEnd);
                    return null;
                }
            }
            if (!this._parsingContext.inObject()) {
                _updateLocation();
                _nextTokenNotInObject(_skipWSOrEnd);
                return null;
            }
            _updateNameLocation();
            String _parseName = _parseName(_skipWSOrEnd);
            this._parsingContext.setCurrentName(_parseName);
            this._currToken = jsonToken2;
            int _skipColon = _skipColon();
            _updateLocation();
            if (_skipColon == 34) {
                this._tokenIncomplete = true;
                this._nextToken = JsonToken.VALUE_STRING;
                return _parseName;
            }
            if (_skipColon == 45) {
                _parseNegNumber = _parseNegNumber();
            } else if (_skipColon == 46) {
                _parseNegNumber = _parseFloatThatStartsWithPeriod();
            } else if (_skipColon == 91) {
                _parseNegNumber = JsonToken.START_ARRAY;
            } else if (_skipColon == 102) {
                _matchFalse();
                _parseNegNumber = JsonToken.VALUE_FALSE;
            } else if (_skipColon == 110) {
                _matchNull();
                _parseNegNumber = JsonToken.VALUE_NULL;
            } else if (_skipColon == 116) {
                _matchTrue();
                _parseNegNumber = JsonToken.VALUE_TRUE;
            } else if (_skipColon != 123) {
                switch (_skipColon) {
                    case 48:
                    case 49:
                    case 50:
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                        _parseNegNumber = _parsePosNumber(_skipColon);
                        break;
                    default:
                        _parseNegNumber = _handleUnexpectedValue(_skipColon);
                        break;
                }
            } else {
                _parseNegNumber = JsonToken.START_OBJECT;
            }
            this._nextToken = _parseNegNumber;
            return _parseName;
        }
    }
}
