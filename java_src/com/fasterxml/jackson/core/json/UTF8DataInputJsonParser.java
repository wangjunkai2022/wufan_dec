package com.fasterxml.jackson.core.json;

import com.android.dx.io.Opcodes;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.StreamReadCapability;
import com.fasterxml.jackson.core.base.ParserBase;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.JacksonFeatureSet;
import com.papa91.arc.ext.Log;
import com.tencent.bugly.Bugly;
import java.io.DataInput;
import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.util.Arrays;
/* loaded from: classes2.dex */
public class UTF8DataInputJsonParser extends ParserBase {
    static final byte BYTE_LF = 10;
    protected DataInput _inputData;
    protected int _nextByte;
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

    public UTF8DataInputJsonParser(IOContext iOContext, int i2, DataInput dataInput, ObjectCodec objectCodec, ByteQuadsCanonicalizer byteQuadsCanonicalizer, int i4) {
        super(iOContext, i2);
        this._quadBuffer = new int[16];
        this._nextByte = -1;
        this._objectCodec = objectCodec;
        this._symbols = byteQuadsCanonicalizer;
        this._inputData = dataInput;
        this._nextByte = i4;
    }

    private final void _checkMatchEnd(String str, int i2, int i4) throws IOException {
        char _decodeCharForError = (char) _decodeCharForError(i4);
        if (Character.isJavaIdentifierPart(_decodeCharForError)) {
            _reportInvalidToken(_decodeCharForError, str.substring(0, i2));
        }
    }

    private void _closeScope(int i2) throws JsonParseException {
        if (i2 == 93) {
            if (!this._parsingContext.inArray()) {
                _reportMismatchedEndMarker(i2, '}');
            }
            this._parsingContext = this._parsingContext.clearAndGetParent();
            this._currToken = JsonToken.END_ARRAY;
        }
        if (i2 == 125) {
            if (!this._parsingContext.inObject()) {
                _reportMismatchedEndMarker(i2, ']');
            }
            this._parsingContext = this._parsingContext.clearAndGetParent();
            this._currToken = JsonToken.END_OBJECT;
        }
    }

    private final int _decodeUtf8_2(int i2) throws IOException {
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if ((readUnsignedByte & 192) != 128) {
            _reportInvalidOther(readUnsignedByte & 255);
        }
        return ((i2 & 31) << 6) | (readUnsignedByte & 63);
    }

    private final int _decodeUtf8_3(int i2) throws IOException {
        int i4 = i2 & 15;
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if ((readUnsignedByte & 192) != 128) {
            _reportInvalidOther(readUnsignedByte & 255);
        }
        int i5 = (i4 << 6) | (readUnsignedByte & 63);
        int readUnsignedByte2 = this._inputData.readUnsignedByte();
        if ((readUnsignedByte2 & 192) != 128) {
            _reportInvalidOther(readUnsignedByte2 & 255);
        }
        return (i5 << 6) | (readUnsignedByte2 & 63);
    }

    private final int _decodeUtf8_4(int i2) throws IOException {
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if ((readUnsignedByte & 192) != 128) {
            _reportInvalidOther(readUnsignedByte & 255);
        }
        int i4 = ((i2 & 7) << 6) | (readUnsignedByte & 63);
        int readUnsignedByte2 = this._inputData.readUnsignedByte();
        if ((readUnsignedByte2 & 192) != 128) {
            _reportInvalidOther(readUnsignedByte2 & 255);
        }
        int i5 = (i4 << 6) | (readUnsignedByte2 & 63);
        int readUnsignedByte3 = this._inputData.readUnsignedByte();
        if ((readUnsignedByte3 & 192) != 128) {
            _reportInvalidOther(readUnsignedByte3 & 255);
        }
        return ((i5 << 6) | (readUnsignedByte3 & 63)) - 65536;
    }

    private String _finishAndReturnString() throws IOException {
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        int length = emptyAndGetCurrentSegment.length;
        int i2 = 0;
        while (true) {
            int readUnsignedByte = this._inputData.readUnsignedByte();
            if (iArr[readUnsignedByte] != 0) {
                if (readUnsignedByte == 34) {
                    return this._textBuffer.setCurrentAndReturn(i2);
                }
                _finishString2(emptyAndGetCurrentSegment, i2, readUnsignedByte);
                return this._textBuffer.contentsAsString();
            }
            int i4 = i2 + 1;
            emptyAndGetCurrentSegment[i2] = (char) readUnsignedByte;
            if (i4 >= length) {
                _finishString2(emptyAndGetCurrentSegment, i4, this._inputData.readUnsignedByte());
                return this._textBuffer.contentsAsString();
            }
            i2 = i4;
        }
    }

    private final void _finishString2(char[] cArr, int i2, int i4) throws IOException {
        int[] iArr = _icUTF8;
        int length = cArr.length;
        while (true) {
            int i5 = 0;
            if (iArr[i4] == 0) {
                if (i2 >= length) {
                    cArr = this._textBuffer.finishCurrentSegment();
                    length = cArr.length;
                    i2 = 0;
                }
                cArr[i2] = (char) i4;
                i4 = this._inputData.readUnsignedByte();
                i2++;
            } else if (i4 == 34) {
                this._textBuffer.setCurrentLength(i2);
                return;
            } else {
                int i6 = iArr[i4];
                if (i6 == 1) {
                    i4 = _decodeEscaped();
                } else if (i6 == 2) {
                    i4 = _decodeUtf8_2(i4);
                } else if (i6 == 3) {
                    i4 = _decodeUtf8_3(i4);
                } else if (i6 == 4) {
                    int _decodeUtf8_4 = _decodeUtf8_4(i4);
                    if (i2 >= cArr.length) {
                        cArr = this._textBuffer.finishCurrentSegment();
                        length = cArr.length;
                        i2 = 0;
                    }
                    cArr[i2] = (char) (55296 | (_decodeUtf8_4 >> 10));
                    i4 = (_decodeUtf8_4 & Log.LogWrapper.MAX_MSG_LEN) | 56320;
                    i2++;
                } else if (i4 < 32) {
                    _throwUnquotedSpace(i4, "string value");
                } else {
                    _reportInvalidChar(i4);
                }
                if (i2 >= cArr.length) {
                    cArr = this._textBuffer.finishCurrentSegment();
                    length = cArr.length;
                } else {
                    i5 = i2;
                }
                i2 = i5 + 1;
                cArr[i5] = (char) i4;
                i4 = this._inputData.readUnsignedByte();
            }
        }
    }

    private static int[] _growArrayBy(int[] iArr, int i2) {
        if (iArr == null) {
            return new int[i2];
        }
        return Arrays.copyOf(iArr, iArr.length + i2);
    }

    private final int _handleLeadingZeroes() throws IOException {
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if (readUnsignedByte >= 48 && readUnsignedByte <= 57) {
            if ((this._features & FEAT_MASK_LEADING_ZEROS) == 0) {
                reportInvalidNumber("Leading zeroes not allowed");
            }
            while (readUnsignedByte == 48) {
                readUnsignedByte = this._inputData.readUnsignedByte();
            }
        }
        return readUnsignedByte;
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
            _matchToken(Bugly.SDK_IS_DEV, 1);
            JsonToken jsonToken3 = JsonToken.VALUE_FALSE;
            this._currToken = jsonToken3;
            return jsonToken3;
        } else if (i2 == 110) {
            _matchToken("null", 1);
            JsonToken jsonToken4 = JsonToken.VALUE_NULL;
            this._currToken = jsonToken4;
            return jsonToken4;
        } else if (i2 == 116) {
            _matchToken("true", 1);
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

    private final JsonToken _parseFloat(char[] cArr, int i2, int i4, boolean z3, int i5) throws IOException {
        int i6;
        int i7;
        int readUnsignedByte;
        int i8 = 0;
        if (i4 == 46) {
            cArr[i2] = (char) i4;
            i2++;
            int i9 = 0;
            while (true) {
                readUnsignedByte = this._inputData.readUnsignedByte();
                if (readUnsignedByte < 48 || readUnsignedByte > 57) {
                    break;
                }
                i9++;
                if (i2 >= cArr.length) {
                    cArr = this._textBuffer.finishCurrentSegment();
                    i2 = 0;
                }
                cArr[i2] = (char) readUnsignedByte;
                i2++;
            }
            if (i9 == 0) {
                reportUnexpectedNumberChar(readUnsignedByte, "Decimal point not followed by a digit");
            }
            i6 = i9;
            i4 = readUnsignedByte;
        } else {
            i6 = 0;
        }
        if (i4 == 101 || i4 == 69) {
            if (i2 >= cArr.length) {
                cArr = this._textBuffer.finishCurrentSegment();
                i2 = 0;
            }
            int i10 = i2 + 1;
            cArr[i2] = (char) i4;
            int readUnsignedByte2 = this._inputData.readUnsignedByte();
            if (readUnsignedByte2 == 45 || readUnsignedByte2 == 43) {
                if (i10 >= cArr.length) {
                    cArr = this._textBuffer.finishCurrentSegment();
                    i10 = 0;
                }
                int i11 = i10 + 1;
                cArr[i10] = (char) readUnsignedByte2;
                i7 = 0;
                i4 = this._inputData.readUnsignedByte();
                i2 = i11;
            } else {
                i4 = readUnsignedByte2;
                i2 = i10;
                i7 = 0;
            }
            while (i4 <= 57 && i4 >= 48) {
                i7++;
                if (i2 >= cArr.length) {
                    cArr = this._textBuffer.finishCurrentSegment();
                    i2 = 0;
                }
                cArr[i2] = (char) i4;
                i4 = this._inputData.readUnsignedByte();
                i2++;
            }
            if (i7 == 0) {
                reportUnexpectedNumberChar(i4, "Exponent indicator not followed by a digit");
            }
            i8 = i7;
        }
        this._nextByte = i4;
        if (this._parsingContext.inRoot()) {
            _verifyRootSpace();
        }
        this._textBuffer.setCurrentLength(i2);
        return resetFloat(z3, i5, i6, i8);
    }

    private final String _parseLongName(int i2, int i4, int i5) throws IOException {
        int[] iArr = this._quadBuffer;
        iArr[0] = this._quad1;
        iArr[1] = i4;
        iArr[2] = i5;
        int[] iArr2 = _icLatin1;
        int i6 = i2;
        int i7 = 3;
        while (true) {
            int readUnsignedByte = this._inputData.readUnsignedByte();
            if (iArr2[readUnsignedByte] != 0) {
                if (readUnsignedByte == 34) {
                    return findName(this._quadBuffer, i7, i6, 1);
                }
                return parseEscapedName(this._quadBuffer, i7, i6, readUnsignedByte, 1);
            }
            int i8 = (i6 << 8) | readUnsignedByte;
            int readUnsignedByte2 = this._inputData.readUnsignedByte();
            if (iArr2[readUnsignedByte2] != 0) {
                if (readUnsignedByte2 == 34) {
                    return findName(this._quadBuffer, i7, i8, 2);
                }
                return parseEscapedName(this._quadBuffer, i7, i8, readUnsignedByte2, 2);
            }
            int i9 = (i8 << 8) | readUnsignedByte2;
            int readUnsignedByte3 = this._inputData.readUnsignedByte();
            if (iArr2[readUnsignedByte3] != 0) {
                if (readUnsignedByte3 == 34) {
                    return findName(this._quadBuffer, i7, i9, 3);
                }
                return parseEscapedName(this._quadBuffer, i7, i9, readUnsignedByte3, 3);
            }
            int i10 = (i9 << 8) | readUnsignedByte3;
            int readUnsignedByte4 = this._inputData.readUnsignedByte();
            if (iArr2[readUnsignedByte4] != 0) {
                if (readUnsignedByte4 == 34) {
                    return findName(this._quadBuffer, i7, i10, 4);
                }
                return parseEscapedName(this._quadBuffer, i7, i10, readUnsignedByte4, 4);
            }
            int[] iArr3 = this._quadBuffer;
            if (i7 >= iArr3.length) {
                this._quadBuffer = _growArrayBy(iArr3, i7);
            }
            this._quadBuffer[i7] = i10;
            i7++;
            i6 = readUnsignedByte4;
        }
    }

    private final String _parseMediumName(int i2) throws IOException {
        int[] iArr = _icLatin1;
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if (iArr[readUnsignedByte] != 0) {
            if (readUnsignedByte == 34) {
                return findName(this._quad1, i2, 1);
            }
            return parseName(this._quad1, i2, readUnsignedByte, 1);
        }
        int i4 = (i2 << 8) | readUnsignedByte;
        int readUnsignedByte2 = this._inputData.readUnsignedByte();
        if (iArr[readUnsignedByte2] != 0) {
            if (readUnsignedByte2 == 34) {
                return findName(this._quad1, i4, 2);
            }
            return parseName(this._quad1, i4, readUnsignedByte2, 2);
        }
        int i5 = (i4 << 8) | readUnsignedByte2;
        int readUnsignedByte3 = this._inputData.readUnsignedByte();
        if (iArr[readUnsignedByte3] != 0) {
            if (readUnsignedByte3 == 34) {
                return findName(this._quad1, i5, 3);
            }
            return parseName(this._quad1, i5, readUnsignedByte3, 3);
        }
        int i6 = (i5 << 8) | readUnsignedByte3;
        int readUnsignedByte4 = this._inputData.readUnsignedByte();
        if (iArr[readUnsignedByte4] != 0) {
            if (readUnsignedByte4 == 34) {
                return findName(this._quad1, i6, 4);
            }
            return parseName(this._quad1, i6, readUnsignedByte4, 4);
        }
        return _parseMediumName2(readUnsignedByte4, i6);
    }

    private final String _parseMediumName2(int i2, int i4) throws IOException {
        int[] iArr = _icLatin1;
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if (iArr[readUnsignedByte] != 0) {
            if (readUnsignedByte == 34) {
                return findName(this._quad1, i4, i2, 1);
            }
            return parseName(this._quad1, i4, i2, readUnsignedByte, 1);
        }
        int i5 = (i2 << 8) | readUnsignedByte;
        int readUnsignedByte2 = this._inputData.readUnsignedByte();
        if (iArr[readUnsignedByte2] != 0) {
            if (readUnsignedByte2 == 34) {
                return findName(this._quad1, i4, i5, 2);
            }
            return parseName(this._quad1, i4, i5, readUnsignedByte2, 2);
        }
        int i6 = (i5 << 8) | readUnsignedByte2;
        int readUnsignedByte3 = this._inputData.readUnsignedByte();
        if (iArr[readUnsignedByte3] != 0) {
            if (readUnsignedByte3 == 34) {
                return findName(this._quad1, i4, i6, 3);
            }
            return parseName(this._quad1, i4, i6, readUnsignedByte3, 3);
        }
        int i7 = (i6 << 8) | readUnsignedByte3;
        int readUnsignedByte4 = this._inputData.readUnsignedByte();
        if (iArr[readUnsignedByte4] != 0) {
            if (readUnsignedByte4 == 34) {
                return findName(this._quad1, i4, i7, 4);
            }
            return parseName(this._quad1, i4, i7, readUnsignedByte4, 4);
        }
        return _parseLongName(readUnsignedByte4, i4, i7);
    }

    private void _reportInvalidOther(int i2) throws JsonParseException {
        _reportError("Invalid UTF-8 middle byte 0x" + Integer.toHexString(i2));
    }

    private final void _skipCComment() throws IOException {
        int[] inputCodeComment = CharTypes.getInputCodeComment();
        int readUnsignedByte = this._inputData.readUnsignedByte();
        while (true) {
            int i2 = inputCodeComment[readUnsignedByte];
            if (i2 != 0) {
                if (i2 == 2) {
                    _skipUtf8_2();
                } else if (i2 == 3) {
                    _skipUtf8_3();
                } else if (i2 == 4) {
                    _skipUtf8_4();
                } else if (i2 == 10 || i2 == 13) {
                    this._currInputRow++;
                } else if (i2 != 42) {
                    _reportInvalidChar(readUnsignedByte);
                } else {
                    readUnsignedByte = this._inputData.readUnsignedByte();
                    if (readUnsignedByte == 47) {
                        return;
                    }
                }
            }
            readUnsignedByte = this._inputData.readUnsignedByte();
        }
    }

    private final int _skipColon() throws IOException {
        int i2 = this._nextByte;
        if (i2 < 0) {
            i2 = this._inputData.readUnsignedByte();
        } else {
            this._nextByte = -1;
        }
        if (i2 == 58) {
            int readUnsignedByte = this._inputData.readUnsignedByte();
            if (readUnsignedByte > 32) {
                return (readUnsignedByte == 47 || readUnsignedByte == 35) ? _skipColon2(readUnsignedByte, true) : readUnsignedByte;
            } else if ((readUnsignedByte == 32 || readUnsignedByte == 9) && (readUnsignedByte = this._inputData.readUnsignedByte()) > 32) {
                return (readUnsignedByte == 47 || readUnsignedByte == 35) ? _skipColon2(readUnsignedByte, true) : readUnsignedByte;
            } else {
                return _skipColon2(readUnsignedByte, true);
            }
        }
        if (i2 == 32 || i2 == 9) {
            i2 = this._inputData.readUnsignedByte();
        }
        if (i2 == 58) {
            int readUnsignedByte2 = this._inputData.readUnsignedByte();
            if (readUnsignedByte2 > 32) {
                return (readUnsignedByte2 == 47 || readUnsignedByte2 == 35) ? _skipColon2(readUnsignedByte2, true) : readUnsignedByte2;
            } else if ((readUnsignedByte2 == 32 || readUnsignedByte2 == 9) && (readUnsignedByte2 = this._inputData.readUnsignedByte()) > 32) {
                return (readUnsignedByte2 == 47 || readUnsignedByte2 == 35) ? _skipColon2(readUnsignedByte2, true) : readUnsignedByte2;
            } else {
                return _skipColon2(readUnsignedByte2, true);
            }
        }
        return _skipColon2(i2, false);
    }

    private final int _skipColon2(int i2, boolean z3) throws IOException {
        while (true) {
            if (i2 > 32) {
                if (i2 == 47) {
                    _skipComment();
                } else if (i2 != 35 || !_skipYAMLComment()) {
                    if (z3) {
                        return i2;
                    }
                    if (i2 != 58) {
                        _reportUnexpectedChar(i2, "was expecting a colon to separate field name and value");
                    }
                    z3 = true;
                }
            } else if (i2 == 13 || i2 == 10) {
                this._currInputRow++;
            }
            i2 = this._inputData.readUnsignedByte();
        }
    }

    private final void _skipComment() throws IOException {
        if ((this._features & FEAT_MASK_ALLOW_JAVA_COMMENTS) == 0) {
            _reportUnexpectedChar(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if (readUnsignedByte == 47) {
            _skipLine();
        } else if (readUnsignedByte == 42) {
            _skipCComment();
        } else {
            _reportUnexpectedChar(readUnsignedByte, "was expecting either '*' or '/' for a comment");
        }
    }

    private final void _skipLine() throws IOException {
        int[] inputCodeComment = CharTypes.getInputCodeComment();
        while (true) {
            int readUnsignedByte = this._inputData.readUnsignedByte();
            int i2 = inputCodeComment[readUnsignedByte];
            if (i2 != 0) {
                if (i2 == 2) {
                    _skipUtf8_2();
                } else if (i2 == 3) {
                    _skipUtf8_3();
                } else if (i2 == 4) {
                    _skipUtf8_4();
                } else if (i2 == 10 || i2 == 13) {
                    break;
                } else if (i2 != 42 && i2 < 0) {
                    _reportInvalidChar(readUnsignedByte);
                }
            }
        }
        this._currInputRow++;
    }

    private final void _skipUtf8_2() throws IOException {
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if ((readUnsignedByte & 192) != 128) {
            _reportInvalidOther(readUnsignedByte & 255);
        }
    }

    private final void _skipUtf8_3() throws IOException {
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if ((readUnsignedByte & 192) != 128) {
            _reportInvalidOther(readUnsignedByte & 255);
        }
        int readUnsignedByte2 = this._inputData.readUnsignedByte();
        if ((readUnsignedByte2 & 192) != 128) {
            _reportInvalidOther(readUnsignedByte2 & 255);
        }
    }

    private final void _skipUtf8_4() throws IOException {
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if ((readUnsignedByte & 192) != 128) {
            _reportInvalidOther(readUnsignedByte & 255);
        }
        int readUnsignedByte2 = this._inputData.readUnsignedByte();
        if ((readUnsignedByte2 & 192) != 128) {
            _reportInvalidOther(readUnsignedByte2 & 255);
        }
        int readUnsignedByte3 = this._inputData.readUnsignedByte();
        if ((readUnsignedByte3 & 192) != 128) {
            _reportInvalidOther(readUnsignedByte3 & 255);
        }
    }

    private final int _skipWS() throws IOException {
        int i2 = this._nextByte;
        if (i2 < 0) {
            i2 = this._inputData.readUnsignedByte();
        } else {
            this._nextByte = -1;
        }
        while (i2 <= 32) {
            if (i2 == 13 || i2 == 10) {
                this._currInputRow++;
            }
            i2 = this._inputData.readUnsignedByte();
        }
        return (i2 == 47 || i2 == 35) ? _skipWSComment(i2) : i2;
    }

    private final int _skipWSComment(int i2) throws IOException {
        while (true) {
            if (i2 > 32) {
                if (i2 == 47) {
                    _skipComment();
                } else if (i2 != 35 || !_skipYAMLComment()) {
                    break;
                }
            } else if (i2 == 13 || i2 == 10) {
                this._currInputRow++;
            }
            i2 = this._inputData.readUnsignedByte();
        }
        return i2;
    }

    private final int _skipWSOrEnd() throws IOException {
        int i2 = this._nextByte;
        if (i2 < 0) {
            try {
                i2 = this._inputData.readUnsignedByte();
            } catch (EOFException unused) {
                return _eofAsNextChar();
            }
        } else {
            this._nextByte = -1;
        }
        while (i2 <= 32) {
            if (i2 == 13 || i2 == 10) {
                this._currInputRow++;
            }
            try {
                i2 = this._inputData.readUnsignedByte();
            } catch (EOFException unused2) {
                return _eofAsNextChar();
            }
        }
        return (i2 == 47 || i2 == 35) ? _skipWSComment(i2) : i2;
    }

    private final boolean _skipYAMLComment() throws IOException {
        if ((this._features & FEAT_MASK_ALLOW_YAML_COMMENTS) == 0) {
            return false;
        }
        _skipLine();
        return true;
    }

    private final void _verifyRootSpace() throws IOException {
        int i2 = this._nextByte;
        if (i2 <= 32) {
            this._nextByte = -1;
            if (i2 == 13 || i2 == 10) {
                this._currInputRow++;
                return;
            }
            return;
        }
        _reportMissingRootWS(i2);
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
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8DataInputJsonParser.addName(int[], int, int):java.lang.String");
    }

    private final String findName(int i2, int i4) throws JsonParseException {
        int pad = pad(i2, i4);
        String findName = this._symbols.findName(pad);
        if (findName != null) {
            return findName;
        }
        int[] iArr = this._quadBuffer;
        iArr[0] = pad;
        return addName(iArr, 1, i4);
    }

    private static final int pad(int i2, int i4) {
        return i4 == 4 ? i2 : i2 | ((-1) << (i4 << 3));
    }

    private final String parseName(int i2, int i4, int i5) throws IOException {
        return parseEscapedName(this._quadBuffer, 0, i2, i4, i5);
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected void _closeInput() throws IOException {
    }

    protected final byte[] _decodeBase64(Base64Variant base64Variant) throws IOException {
        int readUnsignedByte;
        ByteArrayBuilder _getByteArrayBuilder = _getByteArrayBuilder();
        while (true) {
            int readUnsignedByte2 = this._inputData.readUnsignedByte();
            if (readUnsignedByte2 > 32) {
                int decodeBase64Char = base64Variant.decodeBase64Char(readUnsignedByte2);
                if (decodeBase64Char < 0) {
                    if (readUnsignedByte2 == 34) {
                        return _getByteArrayBuilder.toByteArray();
                    }
                    decodeBase64Char = _decodeBase64Escape(base64Variant, readUnsignedByte2, 0);
                    if (decodeBase64Char < 0) {
                        continue;
                    }
                }
                int readUnsignedByte3 = this._inputData.readUnsignedByte();
                int decodeBase64Char2 = base64Variant.decodeBase64Char(readUnsignedByte3);
                if (decodeBase64Char2 < 0) {
                    decodeBase64Char2 = _decodeBase64Escape(base64Variant, readUnsignedByte3, 1);
                }
                int i2 = (decodeBase64Char << 6) | decodeBase64Char2;
                int readUnsignedByte4 = this._inputData.readUnsignedByte();
                int decodeBase64Char3 = base64Variant.decodeBase64Char(readUnsignedByte4);
                if (decodeBase64Char3 < 0) {
                    if (decodeBase64Char3 != -2) {
                        if (readUnsignedByte4 == 34) {
                            _getByteArrayBuilder.append(i2 >> 4);
                            if (base64Variant.usesPadding()) {
                                _handleBase64MissingPadding(base64Variant);
                            }
                            return _getByteArrayBuilder.toByteArray();
                        }
                        decodeBase64Char3 = _decodeBase64Escape(base64Variant, readUnsignedByte4, 2);
                    }
                    if (decodeBase64Char3 == -2) {
                        readUnsignedByte = this._inputData.readUnsignedByte();
                        if (base64Variant.usesPaddingChar(readUnsignedByte) || (readUnsignedByte == 92 && _decodeBase64Escape(base64Variant, readUnsignedByte, 3) == -2)) {
                            _getByteArrayBuilder.append(i2 >> 4);
                        }
                    }
                }
                int i4 = (i2 << 6) | decodeBase64Char3;
                int readUnsignedByte5 = this._inputData.readUnsignedByte();
                int decodeBase64Char4 = base64Variant.decodeBase64Char(readUnsignedByte5);
                if (decodeBase64Char4 < 0) {
                    if (decodeBase64Char4 != -2) {
                        if (readUnsignedByte5 == 34) {
                            _getByteArrayBuilder.appendTwoBytes(i4 >> 2);
                            if (base64Variant.usesPadding()) {
                                _handleBase64MissingPadding(base64Variant);
                            }
                            return _getByteArrayBuilder.toByteArray();
                        }
                        decodeBase64Char4 = _decodeBase64Escape(base64Variant, readUnsignedByte5, 3);
                    }
                    if (decodeBase64Char4 == -2) {
                        _getByteArrayBuilder.appendTwoBytes(i4 >> 2);
                    }
                }
                _getByteArrayBuilder.appendThreeBytes((i4 << 6) | decodeBase64Char4);
            }
        }
        throw reportInvalidBase64Char(base64Variant, readUnsignedByte, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0044  */
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
            if (r7 <= r0) goto L6e
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
            java.io.DataInput r3 = r6._inputData
            int r3 = r3.readUnsignedByte()
            r4 = r3 & 192(0xc0, float:2.69E-43)
            r5 = 128(0x80, float:1.794E-43)
            if (r4 == r5) goto L3d
            r4 = r3 & 255(0xff, float:3.57E-43)
            r6._reportInvalidOther(r4)
        L3d:
            int r7 = r7 << 6
            r3 = r3 & 63
            r7 = r7 | r3
            if (r0 <= r2) goto L6e
            java.io.DataInput r2 = r6._inputData
            int r2 = r2.readUnsignedByte()
            r3 = r2 & 192(0xc0, float:2.69E-43)
            if (r3 == r5) goto L53
            r3 = r2 & 255(0xff, float:3.57E-43)
            r6._reportInvalidOther(r3)
        L53:
            int r7 = r7 << 6
            r2 = r2 & 63
            r7 = r7 | r2
            if (r0 <= r1) goto L6e
            java.io.DataInput r0 = r6._inputData
            int r0 = r0.readUnsignedByte()
            r1 = r0 & 192(0xc0, float:2.69E-43)
            if (r1 == r5) goto L69
            r1 = r0 & 255(0xff, float:3.57E-43)
            r6._reportInvalidOther(r1)
        L69:
            int r7 = r7 << 6
            r0 = r0 & 63
            r7 = r7 | r0
        L6e:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8DataInputJsonParser._decodeCharForError(int):int");
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected char _decodeEscaped() throws IOException {
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if (readUnsignedByte == 34 || readUnsignedByte == 47 || readUnsignedByte == 92) {
            return (char) readUnsignedByte;
        }
        if (readUnsignedByte != 98) {
            if (readUnsignedByte != 102) {
                if (readUnsignedByte != 110) {
                    if (readUnsignedByte != 114) {
                        if (readUnsignedByte != 116) {
                            if (readUnsignedByte != 117) {
                                return _handleUnrecognizedCharacterEscape((char) _decodeCharForError(readUnsignedByte));
                            }
                            int i2 = 0;
                            for (int i4 = 0; i4 < 4; i4++) {
                                int readUnsignedByte2 = this._inputData.readUnsignedByte();
                                int charToHex = CharTypes.charToHex(readUnsignedByte2);
                                if (charToHex < 0) {
                                    _reportUnexpectedChar(readUnsignedByte2, "expected a hex-digit for character escape sequence");
                                }
                                i2 = (i2 << 4) | charToHex;
                            }
                            return (char) i2;
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

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected void _finishString() throws IOException {
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        int length = emptyAndGetCurrentSegment.length;
        int i2 = 0;
        while (true) {
            int readUnsignedByte = this._inputData.readUnsignedByte();
            if (iArr[readUnsignedByte] != 0) {
                if (readUnsignedByte == 34) {
                    this._textBuffer.setCurrentLength(i2);
                    return;
                } else {
                    _finishString2(emptyAndGetCurrentSegment, i2, readUnsignedByte);
                    return;
                }
            }
            int i4 = i2 + 1;
            emptyAndGetCurrentSegment[i2] = (char) readUnsignedByte;
            if (i4 >= length) {
                _finishString2(emptyAndGetCurrentSegment, i4, this._inputData.readUnsignedByte());
                return;
            }
            i2 = i4;
        }
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

    protected JsonToken _handleApos() throws IOException {
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        int i2 = 0;
        while (true) {
            int length = emptyAndGetCurrentSegment.length;
            if (i2 >= emptyAndGetCurrentSegment.length) {
                emptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                length = emptyAndGetCurrentSegment.length;
                i2 = 0;
            }
            while (true) {
                int readUnsignedByte = this._inputData.readUnsignedByte();
                if (readUnsignedByte == 39) {
                    this._textBuffer.setCurrentLength(i2);
                    return JsonToken.VALUE_STRING;
                } else if (iArr[readUnsignedByte] != 0) {
                    int i4 = iArr[readUnsignedByte];
                    if (i4 == 1) {
                        readUnsignedByte = _decodeEscaped();
                    } else if (i4 == 2) {
                        readUnsignedByte = _decodeUtf8_2(readUnsignedByte);
                    } else if (i4 == 3) {
                        readUnsignedByte = _decodeUtf8_3(readUnsignedByte);
                    } else if (i4 != 4) {
                        if (readUnsignedByte < 32) {
                            _throwUnquotedSpace(readUnsignedByte, "string value");
                        }
                        _reportInvalidChar(readUnsignedByte);
                    } else {
                        int _decodeUtf8_4 = _decodeUtf8_4(readUnsignedByte);
                        int i5 = i2 + 1;
                        emptyAndGetCurrentSegment[i2] = (char) (55296 | (_decodeUtf8_4 >> 10));
                        if (i5 >= emptyAndGetCurrentSegment.length) {
                            emptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                            i2 = 0;
                        } else {
                            i2 = i5;
                        }
                        readUnsignedByte = 56320 | (_decodeUtf8_4 & Log.LogWrapper.MAX_MSG_LEN);
                    }
                    if (i2 >= emptyAndGetCurrentSegment.length) {
                        emptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                        i2 = 0;
                    }
                    emptyAndGetCurrentSegment[i2] = (char) readUnsignedByte;
                    i2++;
                } else {
                    int i6 = i2 + 1;
                    emptyAndGetCurrentSegment[i2] = (char) readUnsignedByte;
                    i2 = i6;
                    if (i6 >= length) {
                        break;
                    }
                }
            }
        }
    }

    protected JsonToken _handleInvalidNumberStart(int i2, boolean z3) throws IOException {
        String str;
        while (i2 == 73) {
            i2 = this._inputData.readUnsignedByte();
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
            _reportError("Non-standard token '" + str + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
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
        do {
            if (i4 < 4) {
                i4++;
                i6 = i2 | (i6 << 8);
            } else {
                if (i5 >= iArr.length) {
                    iArr = _growArrayBy(iArr, iArr.length);
                    this._quadBuffer = iArr;
                }
                iArr[i5] = i6;
                i6 = i2;
                i5++;
                i4 = 1;
            }
            i2 = this._inputData.readUnsignedByte();
        } while (inputCodeUtf8JsNames[i2] == 0);
        this._nextByte = i2;
        if (i4 > 0) {
            if (i5 >= iArr.length) {
                int[] _growArrayBy = _growArrayBy(iArr, iArr.length);
                this._quadBuffer = _growArrayBy;
                iArr = _growArrayBy;
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
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0030, code lost:
        if (r3._parsingContext.inArray() == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0039, code lost:
        if (r3._parsingContext.inRoot() != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0040, code lost:
        if ((r3._features & com.fasterxml.jackson.core.json.UTF8DataInputJsonParser.FEAT_MASK_ALLOW_MISSING) == 0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0042, code lost:
        r3._nextByte = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0046, code lost:
        return com.fasterxml.jackson.core.JsonToken.VALUE_NULL;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.fasterxml.jackson.core.JsonToken _handleUnexpectedValue(int r4) throws java.io.IOException {
        /*
            r3 = this;
            r0 = 39
            if (r4 == r0) goto L7f
            r0 = 73
            r1 = 1
            if (r4 == r0) goto L66
            r0 = 78
            if (r4 == r0) goto L4d
            r0 = 93
            if (r4 == r0) goto L2a
            r0 = 125(0x7d, float:1.75E-43)
            if (r4 == r0) goto L47
            r0 = 43
            if (r4 == r0) goto L1e
            r0 = 44
            if (r4 == r0) goto L33
            goto L8b
        L1e:
            java.io.DataInput r4 = r3._inputData
            int r4 = r4.readUnsignedByte()
            r0 = 0
            com.fasterxml.jackson.core.JsonToken r4 = r3._handleInvalidNumberStart(r4, r0)
            return r4
        L2a:
            com.fasterxml.jackson.core.json.JsonReadContext r0 = r3._parsingContext
            boolean r0 = r0.inArray()
            if (r0 != 0) goto L33
            goto L8b
        L33:
            com.fasterxml.jackson.core.json.JsonReadContext r0 = r3._parsingContext
            boolean r0 = r0.inRoot()
            if (r0 != 0) goto L47
            int r0 = r3._features
            int r1 = com.fasterxml.jackson.core.json.UTF8DataInputJsonParser.FEAT_MASK_ALLOW_MISSING
            r0 = r0 & r1
            if (r0 == 0) goto L47
            r3._nextByte = r4
            com.fasterxml.jackson.core.JsonToken r4 = com.fasterxml.jackson.core.JsonToken.VALUE_NULL
            return r4
        L47:
            java.lang.String r0 = "expected a value"
            r3._reportUnexpectedChar(r4, r0)
            goto L7f
        L4d:
            java.lang.String r0 = "NaN"
            r3._matchToken(r0, r1)
            int r1 = r3._features
            int r2 = com.fasterxml.jackson.core.json.UTF8DataInputJsonParser.FEAT_MASK_NON_NUM_NUMBERS
            r1 = r1 & r2
            if (r1 == 0) goto L60
            r1 = 9221120237041090560(0x7ff8000000000000, double:NaN)
            com.fasterxml.jackson.core.JsonToken r4 = r3.resetAsNaN(r0, r1)
            return r4
        L60:
            java.lang.String r0 = "Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"
            r3._reportError(r0)
            goto L8b
        L66:
            java.lang.String r0 = "Infinity"
            r3._matchToken(r0, r1)
            int r1 = r3._features
            int r2 = com.fasterxml.jackson.core.json.UTF8DataInputJsonParser.FEAT_MASK_NON_NUM_NUMBERS
            r1 = r1 & r2
            if (r1 == 0) goto L79
            r1 = 9218868437227405312(0x7ff0000000000000, double:Infinity)
            com.fasterxml.jackson.core.JsonToken r4 = r3.resetAsNaN(r0, r1)
            return r4
        L79:
            java.lang.String r0 = "Non-standard token 'Infinity': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"
            r3._reportError(r0)
            goto L8b
        L7f:
            int r0 = r3._features
            int r1 = com.fasterxml.jackson.core.json.UTF8DataInputJsonParser.FEAT_MASK_ALLOW_SINGLE_QUOTES
            r0 = r0 & r1
            if (r0 == 0) goto L8b
            com.fasterxml.jackson.core.JsonToken r4 = r3._handleApos()
            return r4
        L8b:
            boolean r0 = java.lang.Character.isJavaIdentifierStart(r4)
            if (r0 == 0) goto Laa
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = ""
            r0.append(r1)
            char r1 = (char) r4
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = r3._validJsonTokenList()
            r3._reportInvalidToken(r4, r0, r1)
        Laa:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "expected a valid value "
            r0.append(r1)
            java.lang.String r1 = r3._validJsonValueList()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r3._reportUnexpectedChar(r4, r0)
            r4 = 0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8DataInputJsonParser._handleUnexpectedValue(int):com.fasterxml.jackson.core.JsonToken");
    }

    protected final void _matchToken(String str, int i2) throws IOException {
        int length = str.length();
        do {
            int readUnsignedByte = this._inputData.readUnsignedByte();
            if (readUnsignedByte != str.charAt(i2)) {
                _reportInvalidToken(readUnsignedByte, str.substring(0, i2));
            }
            i2++;
        } while (i2 < length);
        int readUnsignedByte2 = this._inputData.readUnsignedByte();
        if (readUnsignedByte2 >= 48 && readUnsignedByte2 != 93 && readUnsignedByte2 != 125) {
            _checkMatchEnd(str, i2, readUnsignedByte2);
        }
        this._nextByte = readUnsignedByte2;
    }

    protected String _parseAposName() throws IOException {
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if (readUnsignedByte == 39) {
            return "";
        }
        int[] iArr = this._quadBuffer;
        int[] iArr2 = _icLatin1;
        int i2 = 0;
        int i4 = 0;
        int i5 = 0;
        while (readUnsignedByte != 39) {
            if (readUnsignedByte != 34 && iArr2[readUnsignedByte] != 0) {
                if (readUnsignedByte != 92) {
                    _throwUnquotedSpace(readUnsignedByte, "name");
                } else {
                    readUnsignedByte = _decodeEscaped();
                }
                if (readUnsignedByte > 127) {
                    if (i2 >= 4) {
                        if (i4 >= iArr.length) {
                            iArr = _growArrayBy(iArr, iArr.length);
                            this._quadBuffer = iArr;
                        }
                        iArr[i4] = i5;
                        i4++;
                        i2 = 0;
                        i5 = 0;
                    }
                    if (readUnsignedByte < 2048) {
                        i5 = (i5 << 8) | (readUnsignedByte >> 6) | 192;
                        i2++;
                    } else {
                        int i6 = (i5 << 8) | (readUnsignedByte >> 12) | Opcodes.SHL_INT_LIT8;
                        int i7 = i2 + 1;
                        if (i7 >= 4) {
                            if (i4 >= iArr.length) {
                                iArr = _growArrayBy(iArr, iArr.length);
                                this._quadBuffer = iArr;
                            }
                            iArr[i4] = i6;
                            i4++;
                            i7 = 0;
                            i6 = 0;
                        }
                        i5 = (i6 << 8) | ((readUnsignedByte >> 6) & 63) | 128;
                        i2 = i7 + 1;
                    }
                    readUnsignedByte = (readUnsignedByte & 63) | 128;
                }
            }
            if (i2 < 4) {
                i2++;
                i5 = readUnsignedByte | (i5 << 8);
            } else {
                if (i4 >= iArr.length) {
                    iArr = _growArrayBy(iArr, iArr.length);
                    this._quadBuffer = iArr;
                }
                iArr[i4] = i5;
                i5 = readUnsignedByte;
                i4++;
                i2 = 1;
            }
            readUnsignedByte = this._inputData.readUnsignedByte();
        }
        if (i2 > 0) {
            if (i4 >= iArr.length) {
                int[] _growArrayBy = _growArrayBy(iArr, iArr.length);
                this._quadBuffer = _growArrayBy;
                iArr = _growArrayBy;
            }
            iArr[i4] = pad(i5, i2);
            i4++;
        }
        String findName = this._symbols.findName(iArr, i4);
        return findName == null ? addName(iArr, i4, i2) : findName;
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
        int[] iArr = _icLatin1;
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if (iArr[readUnsignedByte] != 0) {
            return readUnsignedByte == 34 ? "" : parseName(0, readUnsignedByte, 0);
        }
        int readUnsignedByte2 = this._inputData.readUnsignedByte();
        if (iArr[readUnsignedByte2] != 0) {
            if (readUnsignedByte2 == 34) {
                return findName(readUnsignedByte, 1);
            }
            return parseName(readUnsignedByte, readUnsignedByte2, 1);
        }
        int i4 = (readUnsignedByte << 8) | readUnsignedByte2;
        int readUnsignedByte3 = this._inputData.readUnsignedByte();
        if (iArr[readUnsignedByte3] != 0) {
            if (readUnsignedByte3 == 34) {
                return findName(i4, 2);
            }
            return parseName(i4, readUnsignedByte3, 2);
        }
        int i5 = (i4 << 8) | readUnsignedByte3;
        int readUnsignedByte4 = this._inputData.readUnsignedByte();
        if (iArr[readUnsignedByte4] != 0) {
            if (readUnsignedByte4 == 34) {
                return findName(i5, 3);
            }
            return parseName(i5, readUnsignedByte4, 3);
        }
        int i6 = (i5 << 8) | readUnsignedByte4;
        int readUnsignedByte5 = this._inputData.readUnsignedByte();
        if (iArr[readUnsignedByte5] == 0) {
            this._quad1 = i6;
            return _parseMediumName(readUnsignedByte5);
        } else if (readUnsignedByte5 == 34) {
            return findName(i6, 4);
        } else {
            return parseName(i6, readUnsignedByte5, 4);
        }
    }

    protected JsonToken _parseNegNumber() throws IOException {
        int readUnsignedByte;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        emptyAndGetCurrentSegment[0] = '-';
        int readUnsignedByte2 = this._inputData.readUnsignedByte();
        emptyAndGetCurrentSegment[1] = (char) readUnsignedByte2;
        if (readUnsignedByte2 <= 48) {
            if (readUnsignedByte2 == 48) {
                readUnsignedByte = _handleLeadingZeroes();
            } else {
                return _handleInvalidNumberStart(readUnsignedByte2, true);
            }
        } else if (readUnsignedByte2 > 57) {
            return _handleInvalidNumberStart(readUnsignedByte2, true);
        } else {
            readUnsignedByte = this._inputData.readUnsignedByte();
        }
        int i2 = 2;
        int i4 = 1;
        while (readUnsignedByte <= 57 && readUnsignedByte >= 48) {
            i4++;
            emptyAndGetCurrentSegment[i2] = (char) readUnsignedByte;
            readUnsignedByte = this._inputData.readUnsignedByte();
            i2++;
        }
        if (readUnsignedByte != 46 && readUnsignedByte != 101 && readUnsignedByte != 69) {
            this._textBuffer.setCurrentLength(i2);
            this._nextByte = readUnsignedByte;
            if (this._parsingContext.inRoot()) {
                _verifyRootSpace();
            }
            return resetInt(true, i4);
        }
        return _parseFloat(emptyAndGetCurrentSegment, i2, readUnsignedByte, true, i4);
    }

    protected JsonToken _parsePosNumber(int i2) throws IOException {
        int readUnsignedByte;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int i4 = 1;
        if (i2 == 48) {
            readUnsignedByte = _handleLeadingZeroes();
            if (readUnsignedByte > 57 || readUnsignedByte < 48) {
                emptyAndGetCurrentSegment[0] = '0';
            } else {
                i4 = 0;
            }
        } else {
            emptyAndGetCurrentSegment[0] = (char) i2;
            readUnsignedByte = this._inputData.readUnsignedByte();
        }
        int i5 = readUnsignedByte;
        char[] cArr = emptyAndGetCurrentSegment;
        int i6 = i4;
        int i7 = i6;
        while (i5 <= 57 && i5 >= 48) {
            i7++;
            if (i6 >= cArr.length) {
                cArr = this._textBuffer.finishCurrentSegment();
                i6 = 0;
            }
            cArr[i6] = (char) i5;
            i5 = this._inputData.readUnsignedByte();
            i6++;
        }
        if (i5 != 46 && i5 != 101 && i5 != 69) {
            this._textBuffer.setCurrentLength(i6);
            if (this._parsingContext.inRoot()) {
                _verifyRootSpace();
            } else {
                this._nextByte = i5;
            }
            return resetInt(false, i7);
        }
        return _parseFloat(cArr, i6, i5, false, i7);
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d2, code lost:
        r11._tokenIncomplete = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d4, code lost:
        if (r3 <= 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d6, code lost:
        r4 = r4 + r3;
        r13.write(r14, 0, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00da, code lost:
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:?, code lost:
        return r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected int _readBinary(com.fasterxml.jackson.core.Base64Variant r12, java.io.OutputStream r13, byte[] r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8DataInputJsonParser._readBinary(com.fasterxml.jackson.core.Base64Variant, java.io.OutputStream, byte[]):int");
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected void _releaseBuffers() throws IOException {
        super._releaseBuffers();
        this._symbols.release();
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

    protected void _reportInvalidToken(int i2, String str) throws IOException {
        _reportInvalidToken(i2, str, _validJsonTokenList());
    }

    protected void _skipString() throws IOException {
        this._tokenIncomplete = false;
        int[] iArr = _icUTF8;
        while (true) {
            int readUnsignedByte = this._inputData.readUnsignedByte();
            if (iArr[readUnsignedByte] != 0) {
                if (readUnsignedByte == 34) {
                    return;
                }
                int i2 = iArr[readUnsignedByte];
                if (i2 == 1) {
                    _decodeEscaped();
                } else if (i2 == 2) {
                    _skipUtf8_2();
                } else if (i2 == 3) {
                    _skipUtf8_3();
                } else if (i2 == 4) {
                    _skipUtf8_4();
                } else if (readUnsignedByte < 32) {
                    _throwUnquotedSpace(readUnsignedByte, "string value");
                } else {
                    _reportInvalidChar(readUnsignedByte);
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
        return new JsonLocation(_getSourceReference(), -1L, -1L, this._currInputRow, -1);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object getInputSource() {
        return this._inputData;
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
        if (jsonToken == JsonToken.VALUE_STRING) {
            if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                _finishString();
            }
            return this._textBuffer.size();
        } else if (jsonToken == JsonToken.FIELD_NAME) {
            return this._parsingContext.getCurrentName().length();
        } else {
            if (jsonToken != null) {
                if (jsonToken.isNumeric()) {
                    return this._textBuffer.size();
                }
                return this._currToken.asCharArray().length;
            }
            return 0;
        }
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
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8DataInputJsonParser.getTextOffset():int");
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase, com.fasterxml.jackson.core.JsonParser
    public JsonLocation getTokenLocation() {
        return new JsonLocation(_getSourceReference(), -1L, -1L, this._tokenInputRow, -1);
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
        int _skipWS = _skipWS();
        this._binaryValue = null;
        this._tokenInputRow = this._currInputRow;
        if (_skipWS != 93 && _skipWS != 125) {
            if (this._parsingContext.expectComma()) {
                if (_skipWS != 44) {
                    _reportUnexpectedChar(_skipWS, "was expecting comma to separate " + this._parsingContext.typeDesc() + " entries");
                }
                _skipWS = _skipWS();
                if ((this._features & FEAT_MASK_TRAILING_COMMA) != 0 && (_skipWS == 93 || _skipWS == 125)) {
                    _closeScope(_skipWS);
                    return null;
                }
            }
            if (!this._parsingContext.inObject()) {
                _nextTokenNotInObject(_skipWS);
                return null;
            }
            String _parseName = _parseName(_skipWS);
            this._parsingContext.setCurrentName(_parseName);
            this._currToken = jsonToken2;
            int _skipColon = _skipColon();
            if (_skipColon == 34) {
                this._tokenIncomplete = true;
                this._nextToken = JsonToken.VALUE_STRING;
                return _parseName;
            }
            if (_skipColon != 45) {
                if (_skipColon == 46) {
                    _parseFloatThatStartsWithPeriod();
                } else if (_skipColon == 91) {
                    _parseNegNumber = JsonToken.START_ARRAY;
                } else if (_skipColon == 102) {
                    _matchToken(Bugly.SDK_IS_DEV, 1);
                    _parseNegNumber = JsonToken.VALUE_FALSE;
                } else if (_skipColon == 110) {
                    _matchToken("null", 1);
                    _parseNegNumber = JsonToken.VALUE_NULL;
                } else if (_skipColon == 116) {
                    _matchToken("true", 1);
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
                            break;
                        default:
                            _parseNegNumber = _handleUnexpectedValue(_skipColon);
                            break;
                    }
                } else {
                    _parseNegNumber = JsonToken.START_OBJECT;
                }
                _parseNegNumber = _parsePosNumber(_skipColon);
            } else {
                _parseNegNumber = _parseNegNumber();
            }
            this._nextToken = _parseNegNumber;
            return _parseName;
        }
        _closeScope(_skipWS);
        return null;
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
        if (this._closed) {
            return null;
        }
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
        this._tokenInputRow = this._currInputRow;
        if (_skipWSOrEnd != 93 && _skipWSOrEnd != 125) {
            if (this._parsingContext.expectComma()) {
                if (_skipWSOrEnd != 44) {
                    _reportUnexpectedChar(_skipWSOrEnd, "was expecting comma to separate " + this._parsingContext.typeDesc() + " entries");
                }
                _skipWSOrEnd = _skipWS();
                if ((this._features & FEAT_MASK_TRAILING_COMMA) != 0 && (_skipWSOrEnd == 93 || _skipWSOrEnd == 125)) {
                    _closeScope(_skipWSOrEnd);
                    return this._currToken;
                }
            }
            if (!this._parsingContext.inObject()) {
                return _nextTokenNotInObject(_skipWSOrEnd);
            }
            this._parsingContext.setCurrentName(_parseName(_skipWSOrEnd));
            this._currToken = jsonToken2;
            int _skipColon = _skipColon();
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
                _matchToken(Bugly.SDK_IS_DEV, 1);
                _parseNegNumber = JsonToken.VALUE_FALSE;
            } else if (_skipColon == 110) {
                _matchToken("null", 1);
                _parseNegNumber = JsonToken.VALUE_NULL;
            } else if (_skipColon == 116) {
                _matchToken("true", 1);
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
        _closeScope(_skipWSOrEnd);
        return this._currToken;
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
                            iArr = _growArrayBy(iArr, iArr.length);
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
                                iArr = _growArrayBy(iArr, iArr.length);
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
                    iArr = _growArrayBy(iArr, iArr.length);
                    this._quadBuffer = iArr;
                }
                iArr[i2] = i4;
                i4 = i5;
                i2++;
                i6 = 1;
            }
            i5 = this._inputData.readUnsignedByte();
        }
        if (i6 > 0) {
            if (i2 >= iArr.length) {
                iArr = _growArrayBy(iArr, iArr.length);
                this._quadBuffer = iArr;
            }
            iArr[i2] = pad(i4, i6);
            i2++;
        }
        String findName = this._symbols.findName(iArr, i2);
        return findName == null ? addName(iArr, i2, i6) : findName;
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
        return 0;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void setCodec(ObjectCodec objectCodec) {
        this._objectCodec = objectCodec;
    }

    private final String parseName(int i2, int i4, int i5, int i6) throws IOException {
        int[] iArr = this._quadBuffer;
        iArr[0] = i2;
        return parseEscapedName(iArr, 1, i4, i5, i6);
    }

    protected void _reportInvalidToken(int i2, String str, String str2) throws IOException {
        StringBuilder sb = new StringBuilder(str);
        while (true) {
            char _decodeCharForError = (char) _decodeCharForError(i2);
            if (!Character.isJavaIdentifierPart(_decodeCharForError)) {
                _reportError("Unrecognized token '" + sb.toString() + "': was expecting " + str2);
                return;
            }
            sb.append(_decodeCharForError);
            i2 = this._inputData.readUnsignedByte();
        }
    }

    private final String parseName(int i2, int i4, int i5, int i6, int i7) throws IOException {
        int[] iArr = this._quadBuffer;
        iArr[0] = i2;
        iArr[1] = i4;
        return parseEscapedName(iArr, 2, i5, i6, i7);
    }

    private final String findName(int i2, int i4, int i5) throws JsonParseException {
        int pad = pad(i4, i5);
        String findName = this._symbols.findName(i2, pad);
        if (findName != null) {
            return findName;
        }
        int[] iArr = this._quadBuffer;
        iArr[0] = i2;
        iArr[1] = pad;
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
        int pad = pad(i5, i6);
        String findName = this._symbols.findName(i2, i4, pad);
        if (findName != null) {
            return findName;
        }
        int[] iArr = this._quadBuffer;
        iArr[0] = i2;
        iArr[1] = i4;
        iArr[2] = pad(pad, i6);
        return addName(iArr, 3, i6);
    }

    private final String findName(int[] iArr, int i2, int i4, int i5) throws JsonParseException {
        if (i2 >= iArr.length) {
            iArr = _growArrayBy(iArr, iArr.length);
            this._quadBuffer = iArr;
        }
        int i6 = i2 + 1;
        iArr[i2] = pad(i4, i5);
        String findName = this._symbols.findName(iArr, i6);
        return findName == null ? addName(iArr, i6, i5) : findName;
    }
}
