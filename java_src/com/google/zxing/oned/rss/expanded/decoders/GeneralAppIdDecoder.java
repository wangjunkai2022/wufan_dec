package com.google.zxing.oned.rss.expanded.decoders;

import com.android.dx.io.Opcodes;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;
import com.papa.controller.core.hardware.a;
import external.org.apache.commons.lang3.d;
import io.netty.util.internal.StringUtil;
import kotlin.text.Typography;
import tv.danmaku.ijk.media.player.IjkMediaMeta;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class GeneralAppIdDecoder {
    private final BitArray information;
    private final CurrentParsingState current = new CurrentParsingState();
    private final StringBuilder buffer = new StringBuilder();

    /* JADX INFO: Access modifiers changed from: package-private */
    public GeneralAppIdDecoder(BitArray bitArray) {
        this.information = bitArray;
    }

    private DecodedChar decodeAlphanumeric(int i2) {
        char c4;
        int extractNumericValueFromBitArray = extractNumericValueFromBitArray(i2, 5);
        if (extractNumericValueFromBitArray == 15) {
            return new DecodedChar(i2 + 5, '$');
        }
        if (extractNumericValueFromBitArray >= 5 && extractNumericValueFromBitArray < 15) {
            return new DecodedChar(i2 + 5, (char) ((extractNumericValueFromBitArray + 48) - 5));
        }
        int extractNumericValueFromBitArray2 = extractNumericValueFromBitArray(i2, 6);
        if (extractNumericValueFromBitArray2 >= 32 && extractNumericValueFromBitArray2 < 58) {
            return new DecodedChar(i2 + 6, (char) (extractNumericValueFromBitArray2 + 33));
        }
        switch (extractNumericValueFromBitArray2) {
            case 58:
                c4 = '*';
                break;
            case 59:
                c4 = StringUtil.COMMA;
                break;
            case 60:
                c4 = '-';
                break;
            case 61:
                c4 = d.f65364a;
                break;
            case 62:
                c4 = '/';
                break;
            default:
                throw new IllegalStateException("Decoding invalid alphanumeric value: " + extractNumericValueFromBitArray2);
        }
        return new DecodedChar(i2 + 6, c4);
    }

    private DecodedChar decodeIsoIec646(int i2) {
        char c4;
        int extractNumericValueFromBitArray = extractNumericValueFromBitArray(i2, 5);
        if (extractNumericValueFromBitArray == 15) {
            return new DecodedChar(i2 + 5, '$');
        }
        if (extractNumericValueFromBitArray >= 5 && extractNumericValueFromBitArray < 15) {
            return new DecodedChar(i2 + 5, (char) ((extractNumericValueFromBitArray + 48) - 5));
        }
        int extractNumericValueFromBitArray2 = extractNumericValueFromBitArray(i2, 7);
        if (extractNumericValueFromBitArray2 < 64 || extractNumericValueFromBitArray2 >= 90) {
            if (extractNumericValueFromBitArray2 >= 90 && extractNumericValueFromBitArray2 < 116) {
                return new DecodedChar(i2 + 7, (char) (extractNumericValueFromBitArray2 + 7));
            }
            int extractNumericValueFromBitArray3 = extractNumericValueFromBitArray(i2, 8);
            switch (extractNumericValueFromBitArray3) {
                case 232:
                    c4 = '!';
                    break;
                case 233:
                    c4 = '\"';
                    break;
                case 234:
                    c4 = '%';
                    break;
                case 235:
                    c4 = Typography.amp;
                    break;
                case 236:
                    c4 = '\'';
                    break;
                case 237:
                    c4 = '(';
                    break;
                case 238:
                    c4 = ')';
                    break;
                case 239:
                    c4 = '*';
                    break;
                case 240:
                    c4 = '+';
                    break;
                case 241:
                    c4 = StringUtil.COMMA;
                    break;
                case 242:
                    c4 = '-';
                    break;
                case 243:
                    c4 = d.f65364a;
                    break;
                case IjkMediaMeta.FF_PROFILE_H264_HIGH_444_PREDICTIVE /* 244 */:
                    c4 = '/';
                    break;
                case 245:
                    c4 = ':';
                    break;
                case a.f54843m /* 246 */:
                    c4 = ';';
                    break;
                case 247:
                    c4 = Typography.less;
                    break;
                case 248:
                    c4 = '=';
                    break;
                case 249:
                    c4 = Typography.greater;
                    break;
                case 250:
                    c4 = '?';
                    break;
                case Opcodes.INVOKE_POLYMORPHIC_RANGE /* 251 */:
                    c4 = '_';
                    break;
                case Opcodes.INVOKE_CUSTOM /* 252 */:
                    c4 = ' ';
                    break;
                default:
                    throw new IllegalArgumentException("Decoding invalid ISO/IEC 646 value: " + extractNumericValueFromBitArray3);
            }
            return new DecodedChar(i2 + 8, c4);
        }
        return new DecodedChar(i2 + 7, (char) (extractNumericValueFromBitArray2 + 1));
    }

    private DecodedNumeric decodeNumeric(int i2) {
        int i4 = i2 + 7;
        if (i4 > this.information.getSize()) {
            int extractNumericValueFromBitArray = extractNumericValueFromBitArray(i2, 4);
            if (extractNumericValueFromBitArray == 0) {
                return new DecodedNumeric(this.information.getSize(), 10, 10);
            }
            return new DecodedNumeric(this.information.getSize(), extractNumericValueFromBitArray - 1, 10);
        }
        int extractNumericValueFromBitArray2 = extractNumericValueFromBitArray(i2, 7) - 8;
        return new DecodedNumeric(i4, extractNumericValueFromBitArray2 / 11, extractNumericValueFromBitArray2 % 11);
    }

    private boolean isAlphaOr646ToNumericLatch(int i2) {
        int i4 = i2 + 3;
        if (i4 > this.information.getSize()) {
            return false;
        }
        while (i2 < i4) {
            if (this.information.get(i2)) {
                return false;
            }
            i2++;
        }
        return true;
    }

    private boolean isAlphaTo646ToAlphaLatch(int i2) {
        int i4;
        if (i2 + 1 > this.information.getSize()) {
            return false;
        }
        for (int i5 = 0; i5 < 5 && (i4 = i5 + i2) < this.information.getSize(); i5++) {
            if (i5 == 2) {
                if (!this.information.get(i2 + 2)) {
                    return false;
                }
            } else if (this.information.get(i4)) {
                return false;
            }
        }
        return true;
    }

    private boolean isNumericToAlphaNumericLatch(int i2) {
        int i4;
        if (i2 + 1 > this.information.getSize()) {
            return false;
        }
        for (int i5 = 0; i5 < 4 && (i4 = i5 + i2) < this.information.getSize(); i5++) {
            if (this.information.get(i4)) {
                return false;
            }
        }
        return true;
    }

    private boolean isStillAlpha(int i2) {
        int extractNumericValueFromBitArray;
        if (i2 + 5 > this.information.getSize()) {
            return false;
        }
        int extractNumericValueFromBitArray2 = extractNumericValueFromBitArray(i2, 5);
        if (extractNumericValueFromBitArray2 < 5 || extractNumericValueFromBitArray2 >= 16) {
            return i2 + 6 <= this.information.getSize() && (extractNumericValueFromBitArray = extractNumericValueFromBitArray(i2, 6)) >= 16 && extractNumericValueFromBitArray < 63;
        }
        return true;
    }

    private boolean isStillIsoIec646(int i2) {
        int extractNumericValueFromBitArray;
        if (i2 + 5 > this.information.getSize()) {
            return false;
        }
        int extractNumericValueFromBitArray2 = extractNumericValueFromBitArray(i2, 5);
        if (extractNumericValueFromBitArray2 < 5 || extractNumericValueFromBitArray2 >= 16) {
            if (i2 + 7 > this.information.getSize()) {
                return false;
            }
            int extractNumericValueFromBitArray3 = extractNumericValueFromBitArray(i2, 7);
            if (extractNumericValueFromBitArray3 < 64 || extractNumericValueFromBitArray3 >= 116) {
                return i2 + 8 <= this.information.getSize() && (extractNumericValueFromBitArray = extractNumericValueFromBitArray(i2, 8)) >= 232 && extractNumericValueFromBitArray < 253;
            }
            return true;
        }
        return true;
    }

    private boolean isStillNumeric(int i2) {
        if (i2 + 7 > this.information.getSize()) {
            return i2 + 4 <= this.information.getSize();
        }
        int i4 = i2;
        while (true) {
            int i5 = i2 + 3;
            if (i4 < i5) {
                if (this.information.get(i4)) {
                    return true;
                }
                i4++;
            } else {
                return this.information.get(i5);
            }
        }
    }

    private BlockParsedResult parseAlphaBlock() {
        while (isStillAlpha(this.current.getPosition())) {
            DecodedChar decodeAlphanumeric = decodeAlphanumeric(this.current.getPosition());
            this.current.setPosition(decodeAlphanumeric.getNewPosition());
            if (decodeAlphanumeric.isFNC1()) {
                return new BlockParsedResult(new DecodedInformation(this.current.getPosition(), this.buffer.toString()), true);
            }
            this.buffer.append(decodeAlphanumeric.getValue());
        }
        if (isAlphaOr646ToNumericLatch(this.current.getPosition())) {
            this.current.incrementPosition(3);
            this.current.setNumeric();
        } else if (isAlphaTo646ToAlphaLatch(this.current.getPosition())) {
            if (this.current.getPosition() + 5 < this.information.getSize()) {
                this.current.incrementPosition(5);
            } else {
                this.current.setPosition(this.information.getSize());
            }
            this.current.setIsoIec646();
        }
        return new BlockParsedResult(false);
    }

    private DecodedInformation parseBlocks() {
        BlockParsedResult parseNumericBlock;
        boolean isFinished;
        do {
            int position = this.current.getPosition();
            if (this.current.isAlpha()) {
                parseNumericBlock = parseAlphaBlock();
                isFinished = parseNumericBlock.isFinished();
            } else if (this.current.isIsoIec646()) {
                parseNumericBlock = parseIsoIec646Block();
                isFinished = parseNumericBlock.isFinished();
            } else {
                parseNumericBlock = parseNumericBlock();
                isFinished = parseNumericBlock.isFinished();
            }
            if (!(position != this.current.getPosition()) && !isFinished) {
                break;
            }
        } while (!isFinished);
        return parseNumericBlock.getDecodedInformation();
    }

    private BlockParsedResult parseIsoIec646Block() {
        while (isStillIsoIec646(this.current.getPosition())) {
            DecodedChar decodeIsoIec646 = decodeIsoIec646(this.current.getPosition());
            this.current.setPosition(decodeIsoIec646.getNewPosition());
            if (decodeIsoIec646.isFNC1()) {
                return new BlockParsedResult(new DecodedInformation(this.current.getPosition(), this.buffer.toString()), true);
            }
            this.buffer.append(decodeIsoIec646.getValue());
        }
        if (isAlphaOr646ToNumericLatch(this.current.getPosition())) {
            this.current.incrementPosition(3);
            this.current.setNumeric();
        } else if (isAlphaTo646ToAlphaLatch(this.current.getPosition())) {
            if (this.current.getPosition() + 5 < this.information.getSize()) {
                this.current.incrementPosition(5);
            } else {
                this.current.setPosition(this.information.getSize());
            }
            this.current.setAlpha();
        }
        return new BlockParsedResult(false);
    }

    private BlockParsedResult parseNumericBlock() {
        DecodedInformation decodedInformation;
        while (isStillNumeric(this.current.getPosition())) {
            DecodedNumeric decodeNumeric = decodeNumeric(this.current.getPosition());
            this.current.setPosition(decodeNumeric.getNewPosition());
            if (decodeNumeric.isFirstDigitFNC1()) {
                if (decodeNumeric.isSecondDigitFNC1()) {
                    decodedInformation = new DecodedInformation(this.current.getPosition(), this.buffer.toString());
                } else {
                    decodedInformation = new DecodedInformation(this.current.getPosition(), this.buffer.toString(), decodeNumeric.getSecondDigit());
                }
                return new BlockParsedResult(decodedInformation, true);
            }
            this.buffer.append(decodeNumeric.getFirstDigit());
            if (decodeNumeric.isSecondDigitFNC1()) {
                return new BlockParsedResult(new DecodedInformation(this.current.getPosition(), this.buffer.toString()), true);
            }
            this.buffer.append(decodeNumeric.getSecondDigit());
        }
        if (isNumericToAlphaNumericLatch(this.current.getPosition())) {
            this.current.setAlpha();
            this.current.incrementPosition(4);
        }
        return new BlockParsedResult(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String decodeAllCodes(StringBuilder sb, int i2) throws NotFoundException {
        String str = null;
        while (true) {
            DecodedInformation decodeGeneralPurposeField = decodeGeneralPurposeField(i2, str);
            String parseFieldsInGeneralPurpose = FieldParser.parseFieldsInGeneralPurpose(decodeGeneralPurposeField.getNewString());
            if (parseFieldsInGeneralPurpose != null) {
                sb.append(parseFieldsInGeneralPurpose);
            }
            String valueOf = decodeGeneralPurposeField.isRemaining() ? String.valueOf(decodeGeneralPurposeField.getRemainingValue()) : null;
            if (i2 == decodeGeneralPurposeField.getNewPosition()) {
                return sb.toString();
            }
            i2 = decodeGeneralPurposeField.getNewPosition();
            str = valueOf;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DecodedInformation decodeGeneralPurposeField(int i2, String str) {
        this.buffer.setLength(0);
        if (str != null) {
            this.buffer.append(str);
        }
        this.current.setPosition(i2);
        DecodedInformation parseBlocks = parseBlocks();
        if (parseBlocks != null && parseBlocks.isRemaining()) {
            return new DecodedInformation(this.current.getPosition(), this.buffer.toString(), parseBlocks.getRemainingValue());
        }
        return new DecodedInformation(this.current.getPosition(), this.buffer.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int extractNumericValueFromBitArray(int i2, int i4) {
        return extractNumericValueFromBitArray(this.information, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int extractNumericValueFromBitArray(BitArray bitArray, int i2, int i4) {
        if (i4 <= 32) {
            int i5 = 0;
            for (int i6 = 0; i6 < i4; i6++) {
                if (bitArray.get(i2 + i6)) {
                    i5 |= 1 << ((i4 - i6) - 1);
                }
            }
            return i5;
        }
        throw new IllegalArgumentException("extractNumberValueFromBitArray can't handle more than 32 bits");
    }
}
