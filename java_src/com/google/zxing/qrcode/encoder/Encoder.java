package com.google.zxing.qrcode.encoder;

import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitArray;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonEncoder;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import com.google.zxing.qrcode.decoder.Version;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Encoder {
    private static final int[] ALPHANUMERIC_TABLE = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};
    static final String DEFAULT_BYTE_MODE_ENCODING = "ISO-8859-1";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.zxing.qrcode.encoder.Encoder$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$qrcode$decoder$Mode;

        static {
            int[] iArr = new int[Mode.values().length];
            $SwitchMap$com$google$zxing$qrcode$decoder$Mode = iArr;
            try {
                iArr[Mode.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private Encoder() {
    }

    static void append8BitBytes(String str, BitArray bitArray, String str2) throws WriterException {
        try {
            for (byte b4 : str.getBytes(str2)) {
                bitArray.appendBits(b4, 8);
            }
        } catch (UnsupportedEncodingException e4) {
            throw new WriterException(e4.toString());
        }
    }

    static void appendAlphanumericBytes(CharSequence charSequence, BitArray bitArray) throws WriterException {
        int length = charSequence.length();
        int i2 = 0;
        while (i2 < length) {
            int alphanumericCode = getAlphanumericCode(charSequence.charAt(i2));
            if (alphanumericCode == -1) {
                throw new WriterException();
            }
            int i4 = i2 + 1;
            if (i4 < length) {
                int alphanumericCode2 = getAlphanumericCode(charSequence.charAt(i4));
                if (alphanumericCode2 != -1) {
                    bitArray.appendBits((alphanumericCode * 45) + alphanumericCode2, 11);
                    i2 += 2;
                } else {
                    throw new WriterException();
                }
            } else {
                bitArray.appendBits(alphanumericCode, 6);
                i2 = i4;
            }
        }
    }

    static void appendBytes(String str, Mode mode, BitArray bitArray, String str2) throws WriterException {
        int i2 = AnonymousClass1.$SwitchMap$com$google$zxing$qrcode$decoder$Mode[mode.ordinal()];
        if (i2 == 1) {
            appendNumericBytes(str, bitArray);
        } else if (i2 == 2) {
            appendAlphanumericBytes(str, bitArray);
        } else if (i2 == 3) {
            append8BitBytes(str, bitArray, str2);
        } else if (i2 == 4) {
            appendKanjiBytes(str, bitArray);
        } else {
            throw new WriterException("Invalid mode: " + mode);
        }
    }

    private static void appendECI(CharacterSetECI characterSetECI, BitArray bitArray) {
        bitArray.appendBits(Mode.ECI.getBits(), 4);
        bitArray.appendBits(characterSetECI.getValue(), 8);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0035 A[LOOP:0: B:4:0x0008->B:17:0x0035, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0044 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static void appendKanjiBytes(java.lang.String r6, com.google.zxing.common.BitArray r7) throws com.google.zxing.WriterException {
        /*
            java.lang.String r0 = "Shift_JIS"
            byte[] r6 = r6.getBytes(r0)     // Catch: java.io.UnsupportedEncodingException -> L4d
            int r0 = r6.length
            r1 = 0
        L8:
            if (r1 >= r0) goto L4c
            r2 = r6[r1]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r3 = r1 + 1
            r3 = r6[r3]
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r2 = r2 << 8
            r2 = r2 | r3
            r3 = 33088(0x8140, float:4.6366E-41)
            r4 = -1
            if (r2 < r3) goto L24
            r5 = 40956(0x9ffc, float:5.7392E-41)
            if (r2 > r5) goto L24
        L22:
            int r2 = r2 - r3
            goto L33
        L24:
            r3 = 57408(0xe040, float:8.0446E-41)
            if (r2 < r3) goto L32
            r3 = 60351(0xebbf, float:8.457E-41)
            if (r2 > r3) goto L32
            r3 = 49472(0xc140, float:6.9325E-41)
            goto L22
        L32:
            r2 = -1
        L33:
            if (r2 == r4) goto L44
            int r3 = r2 >> 8
            int r3 = r3 * 192
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r3 = r3 + r2
            r2 = 13
            r7.appendBits(r3, r2)
            int r1 = r1 + 2
            goto L8
        L44:
            com.google.zxing.WriterException r6 = new com.google.zxing.WriterException
            java.lang.String r7 = "Invalid byte sequence"
            r6.<init>(r7)
            throw r6
        L4c:
            return
        L4d:
            r6 = move-exception
            com.google.zxing.WriterException r7 = new com.google.zxing.WriterException
            java.lang.String r6 = r6.toString()
            r7.<init>(r6)
            goto L59
        L58:
            throw r7
        L59:
            goto L58
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.encoder.Encoder.appendKanjiBytes(java.lang.String, com.google.zxing.common.BitArray):void");
    }

    static void appendLengthInfo(int i2, int i4, Mode mode, BitArray bitArray) throws WriterException {
        int characterCountBits = mode.getCharacterCountBits(Version.getVersionForNumber(i4));
        int i5 = (1 << characterCountBits) - 1;
        if (i2 <= i5) {
            bitArray.appendBits(i2, characterCountBits);
            return;
        }
        throw new WriterException(i2 + "is bigger than" + i5);
    }

    static void appendModeInfo(Mode mode, BitArray bitArray) {
        bitArray.appendBits(mode.getBits(), 4);
    }

    static void appendNumericBytes(CharSequence charSequence, BitArray bitArray) {
        int length = charSequence.length();
        int i2 = 0;
        while (i2 < length) {
            int charAt = charSequence.charAt(i2) - '0';
            int i4 = i2 + 2;
            if (i4 < length) {
                bitArray.appendBits((charAt * 100) + ((charSequence.charAt(i2 + 1) - '0') * 10) + (charSequence.charAt(i4) - '0'), 10);
                i2 += 3;
            } else {
                i2++;
                if (i2 < length) {
                    bitArray.appendBits((charAt * 10) + (charSequence.charAt(i2) - '0'), 7);
                    i2 = i4;
                } else {
                    bitArray.appendBits(charAt, 4);
                }
            }
        }
    }

    private static int calculateMaskPenalty(ByteMatrix byteMatrix) {
        return MaskUtil.applyMaskPenaltyRule1(byteMatrix) + 0 + MaskUtil.applyMaskPenaltyRule2(byteMatrix) + MaskUtil.applyMaskPenaltyRule3(byteMatrix) + MaskUtil.applyMaskPenaltyRule4(byteMatrix);
    }

    private static int chooseMaskPattern(BitArray bitArray, ErrorCorrectionLevel errorCorrectionLevel, int i2, ByteMatrix byteMatrix) throws WriterException {
        int i4 = Integer.MAX_VALUE;
        int i5 = -1;
        for (int i6 = 0; i6 < 8; i6++) {
            MatrixUtil.buildMatrix(bitArray, errorCorrectionLevel, i2, i6, byteMatrix);
            int calculateMaskPenalty = calculateMaskPenalty(byteMatrix);
            if (calculateMaskPenalty < i4) {
                i5 = i6;
                i4 = calculateMaskPenalty;
            }
        }
        return i5;
    }

    public static Mode chooseMode(String str) {
        return chooseMode(str, null);
    }

    public static void encode(String str, ErrorCorrectionLevel errorCorrectionLevel, QRCode qRCode) throws WriterException {
        encode(str, errorCorrectionLevel, null, qRCode);
    }

    static byte[] generateECBytes(byte[] bArr, int i2) {
        int length = bArr.length;
        int[] iArr = new int[length + i2];
        for (int i4 = 0; i4 < length; i4++) {
            iArr[i4] = bArr[i4] & 255;
        }
        new ReedSolomonEncoder(GenericGF.QR_CODE_FIELD_256).encode(iArr, i2);
        byte[] bArr2 = new byte[i2];
        for (int i5 = 0; i5 < i2; i5++) {
            bArr2[i5] = (byte) iArr[length + i5];
        }
        return bArr2;
    }

    static int getAlphanumericCode(int i2) {
        int[] iArr = ALPHANUMERIC_TABLE;
        if (i2 < iArr.length) {
            return iArr[i2];
        }
        return -1;
    }

    static void getNumDataBytesAndNumECBytesForBlockID(int i2, int i4, int i5, int i6, int[] iArr, int[] iArr2) throws WriterException {
        if (i6 < i5) {
            int i7 = i2 % i5;
            int i8 = i5 - i7;
            int i9 = i2 / i5;
            int i10 = i9 + 1;
            int i11 = i4 / i5;
            int i12 = i11 + 1;
            int i13 = i9 - i11;
            int i14 = i10 - i12;
            if (i13 != i14) {
                throw new WriterException("EC bytes mismatch");
            }
            if (i5 != i8 + i7) {
                throw new WriterException("RS blocks mismatch");
            }
            if (i2 != ((i11 + i13) * i8) + ((i12 + i14) * i7)) {
                throw new WriterException("Total bytes mismatch");
            }
            if (i6 < i8) {
                iArr[0] = i11;
                iArr2[0] = i13;
                return;
            }
            iArr[0] = i12;
            iArr2[0] = i14;
            return;
        }
        throw new WriterException("Block ID too large");
    }

    private static int getTotalInputBytes(int i2, Version version, Mode mode) {
        return ((i2 + (mode.getCharacterCountBits(version) + 4)) + 7) / 8;
    }

    private static void initQRCode(int i2, ErrorCorrectionLevel errorCorrectionLevel, Mode mode, QRCode qRCode) throws WriterException {
        qRCode.setECLevel(errorCorrectionLevel);
        qRCode.setMode(mode);
        for (int i4 = 1; i4 <= 40; i4++) {
            Version versionForNumber = Version.getVersionForNumber(i4);
            int totalCodewords = versionForNumber.getTotalCodewords();
            Version.ECBlocks eCBlocksForLevel = versionForNumber.getECBlocksForLevel(errorCorrectionLevel);
            int totalECCodewords = eCBlocksForLevel.getTotalECCodewords();
            int numBlocks = eCBlocksForLevel.getNumBlocks();
            int i5 = totalCodewords - totalECCodewords;
            if (i5 >= getTotalInputBytes(i2, versionForNumber, mode)) {
                qRCode.setVersion(i4);
                qRCode.setNumTotalBytes(totalCodewords);
                qRCode.setNumDataBytes(i5);
                qRCode.setNumRSBlocks(numBlocks);
                qRCode.setNumECBytes(totalECCodewords);
                qRCode.setMatrixWidth(versionForNumber.getDimensionForVersion());
                return;
            }
        }
        throw new WriterException("Cannot find proper rs block info (input data too big?)");
    }

    static void interleaveWithECBytes(BitArray bitArray, int i2, int i4, int i5, BitArray bitArray2) throws WriterException {
        if (bitArray.getSizeInBytes() == i4) {
            ArrayList<BlockPair> arrayList = new ArrayList(i5);
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            for (int i9 = 0; i9 < i5; i9++) {
                int[] iArr = new int[1];
                int[] iArr2 = new int[1];
                getNumDataBytesAndNumECBytesForBlockID(i2, i4, i5, i9, iArr, iArr2);
                int i10 = iArr[0];
                byte[] bArr = new byte[i10];
                bitArray.toBytes(i6 * 8, bArr, 0, i10);
                byte[] generateECBytes = generateECBytes(bArr, iArr2[0]);
                arrayList.add(new BlockPair(bArr, generateECBytes));
                i7 = Math.max(i7, i10);
                i8 = Math.max(i8, generateECBytes.length);
                i6 += iArr[0];
            }
            if (i4 == i6) {
                for (int i11 = 0; i11 < i7; i11++) {
                    for (BlockPair blockPair : arrayList) {
                        byte[] dataBytes = blockPair.getDataBytes();
                        if (i11 < dataBytes.length) {
                            bitArray2.appendBits(dataBytes[i11], 8);
                        }
                    }
                }
                for (int i12 = 0; i12 < i8; i12++) {
                    for (BlockPair blockPair2 : arrayList) {
                        byte[] errorCorrectionBytes = blockPair2.getErrorCorrectionBytes();
                        if (i12 < errorCorrectionBytes.length) {
                            bitArray2.appendBits(errorCorrectionBytes[i12], 8);
                        }
                    }
                }
                if (i2 == bitArray2.getSizeInBytes()) {
                    return;
                }
                throw new WriterException("Interleaving error: " + i2 + " and " + bitArray2.getSizeInBytes() + " differ.");
            }
            throw new WriterException("Data bytes does not match offset");
        }
        throw new WriterException("Number of bits and data bytes does not match");
    }

    private static boolean isOnlyDoubleByteKanji(String str) {
        try {
            byte[] bytes = str.getBytes("Shift_JIS");
            int length = bytes.length;
            if (length % 2 != 0) {
                return false;
            }
            for (int i2 = 0; i2 < length; i2 += 2) {
                int i4 = bytes[i2] & 255;
                if ((i4 < 129 || i4 > 159) && (i4 < 224 || i4 > 235)) {
                    return false;
                }
            }
            return true;
        } catch (UnsupportedEncodingException unused) {
            return false;
        }
    }

    static void terminateBits(int i2, BitArray bitArray) throws WriterException {
        int i4 = i2 << 3;
        if (bitArray.getSize() <= i4) {
            for (int i5 = 0; i5 < 4 && bitArray.getSize() < i4; i5++) {
                bitArray.appendBit(false);
            }
            int size = bitArray.getSize() & 7;
            if (size > 0) {
                while (size < 8) {
                    bitArray.appendBit(false);
                    size++;
                }
            }
            int sizeInBytes = i2 - bitArray.getSizeInBytes();
            for (int i6 = 0; i6 < sizeInBytes; i6++) {
                bitArray.appendBits((i6 & 1) == 0 ? 236 : 17, 8);
            }
            if (bitArray.getSize() != i4) {
                throw new WriterException("Bits size does not equal capacity");
            }
            return;
        }
        throw new WriterException("data bits cannot fit in the QR Code" + bitArray.getSize() + " > " + i4);
    }

    private static Mode chooseMode(String str, String str2) {
        if ("Shift_JIS".equals(str2)) {
            return isOnlyDoubleByteKanji(str) ? Mode.KANJI : Mode.BYTE;
        }
        boolean z3 = false;
        boolean z4 = false;
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (charAt >= '0' && charAt <= '9') {
                z4 = true;
            } else if (getAlphanumericCode(charAt) == -1) {
                return Mode.BYTE;
            } else {
                z3 = true;
            }
        }
        if (z3) {
            return Mode.ALPHANUMERIC;
        }
        if (z4) {
            return Mode.NUMERIC;
        }
        return Mode.BYTE;
    }

    public static void encode(String str, ErrorCorrectionLevel errorCorrectionLevel, Map<EncodeHintType, ?> map, QRCode qRCode) throws WriterException {
        CharacterSetECI characterSetECIByName;
        String str2 = map == null ? null : (String) map.get(EncodeHintType.CHARACTER_SET);
        if (str2 == null) {
            str2 = DEFAULT_BYTE_MODE_ENCODING;
        }
        Mode chooseMode = chooseMode(str, str2);
        BitArray bitArray = new BitArray();
        appendBytes(str, chooseMode, bitArray, str2);
        initQRCode(bitArray.getSize(), errorCorrectionLevel, chooseMode, qRCode);
        BitArray bitArray2 = new BitArray();
        Mode mode = Mode.BYTE;
        if (chooseMode == mode && !DEFAULT_BYTE_MODE_ENCODING.equals(str2) && (characterSetECIByName = CharacterSetECI.getCharacterSetECIByName(str2)) != null) {
            appendECI(characterSetECIByName, bitArray2);
        }
        appendModeInfo(chooseMode, bitArray2);
        appendLengthInfo(chooseMode == mode ? bitArray.getSizeInBytes() : str.length(), qRCode.getVersion(), chooseMode, bitArray2);
        bitArray2.appendBitArray(bitArray);
        terminateBits(qRCode.getNumDataBytes(), bitArray2);
        BitArray bitArray3 = new BitArray();
        interleaveWithECBytes(bitArray2, qRCode.getNumTotalBytes(), qRCode.getNumDataBytes(), qRCode.getNumRSBlocks(), bitArray3);
        ByteMatrix byteMatrix = new ByteMatrix(qRCode.getMatrixWidth(), qRCode.getMatrixWidth());
        qRCode.setMaskPattern(chooseMaskPattern(bitArray3, errorCorrectionLevel, qRCode.getVersion(), byteMatrix));
        MatrixUtil.buildMatrix(bitArray3, errorCorrectionLevel, qRCode.getVersion(), qRCode.getMaskPattern(), byteMatrix);
        qRCode.setMatrix(byteMatrix);
        if (qRCode.isValid()) {
            return;
        }
        throw new WriterException("Invalid QR code: " + qRCode.toString());
    }
}
