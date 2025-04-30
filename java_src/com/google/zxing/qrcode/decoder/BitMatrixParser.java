package com.google.zxing.qrcode.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;
/* loaded from: classes2.dex */
final class BitMatrixParser {
    private final BitMatrix bitMatrix;
    private FormatInformation parsedFormatInfo;
    private Version parsedVersion;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BitMatrixParser(BitMatrix bitMatrix) throws FormatException {
        int height = bitMatrix.getHeight();
        if (height >= 21 && (height & 3) == 1) {
            this.bitMatrix = bitMatrix;
            return;
        }
        throw FormatException.getFormatInstance();
    }

    private int copyBit(int i2, int i4, int i5) {
        return this.bitMatrix.get(i2, i4) ? (i5 << 1) | 1 : i5 << 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] readCodewords() throws FormatException {
        FormatInformation readFormatInformation = readFormatInformation();
        Version readVersion = readVersion();
        DataMask forReference = DataMask.forReference(readFormatInformation.getDataMask());
        int height = this.bitMatrix.getHeight();
        forReference.unmaskBitMatrix(this.bitMatrix, height);
        BitMatrix buildFunctionPattern = readVersion.buildFunctionPattern();
        byte[] bArr = new byte[readVersion.getTotalCodewords()];
        int i2 = height - 1;
        boolean z3 = true;
        int i4 = i2;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i4 > 0) {
            if (i4 == 6) {
                i4--;
            }
            for (int i8 = 0; i8 < height; i8++) {
                int i9 = z3 ? i2 - i8 : i8;
                for (int i10 = 0; i10 < 2; i10++) {
                    int i11 = i4 - i10;
                    if (!buildFunctionPattern.get(i11, i9)) {
                        i6++;
                        i7 <<= 1;
                        if (this.bitMatrix.get(i11, i9)) {
                            i7 |= 1;
                        }
                        if (i6 == 8) {
                            bArr[i5] = (byte) i7;
                            i5++;
                            i6 = 0;
                            i7 = 0;
                        }
                    }
                }
            }
            z3 = !z3;
            i4 -= 2;
        }
        if (i5 == readVersion.getTotalCodewords()) {
            return bArr;
        }
        throw FormatException.getFormatInstance();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FormatInformation readFormatInformation() throws FormatException {
        FormatInformation formatInformation = this.parsedFormatInfo;
        if (formatInformation != null) {
            return formatInformation;
        }
        int i2 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < 6; i5++) {
            i4 = copyBit(i5, 8, i4);
        }
        int copyBit = copyBit(8, 7, copyBit(8, 8, copyBit(7, 8, i4)));
        for (int i6 = 5; i6 >= 0; i6--) {
            copyBit = copyBit(8, i6, copyBit);
        }
        int height = this.bitMatrix.getHeight();
        int i7 = height - 7;
        for (int i8 = height - 1; i8 >= i7; i8--) {
            i2 = copyBit(8, i8, i2);
        }
        for (int i9 = height - 8; i9 < height; i9++) {
            i2 = copyBit(i9, 8, i2);
        }
        FormatInformation decodeFormatInformation = FormatInformation.decodeFormatInformation(copyBit, i2);
        this.parsedFormatInfo = decodeFormatInformation;
        if (decodeFormatInformation != null) {
            return decodeFormatInformation;
        }
        throw FormatException.getFormatInstance();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Version readVersion() throws FormatException {
        Version version = this.parsedVersion;
        if (version != null) {
            return version;
        }
        int height = this.bitMatrix.getHeight();
        int i2 = (height - 17) >> 2;
        if (i2 <= 6) {
            return Version.getVersionForNumber(i2);
        }
        int i4 = height - 11;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 5; i7 >= 0; i7--) {
            for (int i8 = height - 9; i8 >= i4; i8--) {
                i6 = copyBit(i8, i7, i6);
            }
        }
        Version decodeVersionInformation = Version.decodeVersionInformation(i6);
        if (decodeVersionInformation != null && decodeVersionInformation.getDimensionForVersion() == height) {
            this.parsedVersion = decodeVersionInformation;
            return decodeVersionInformation;
        }
        for (int i9 = 5; i9 >= 0; i9--) {
            for (int i10 = height - 9; i10 >= i4; i10--) {
                i5 = copyBit(i9, i10, i5);
            }
        }
        Version decodeVersionInformation2 = Version.decodeVersionInformation(i5);
        if (decodeVersionInformation2 != null && decodeVersionInformation2.getDimensionForVersion() == height) {
            this.parsedVersion = decodeVersionInformation2;
            return decodeVersionInformation2;
        }
        throw FormatException.getFormatInstance();
    }
}
