package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class UPCEANReader extends OneDReader {
    static final int[][] L_AND_G_PATTERNS;
    static final int[][] L_PATTERNS;
    private static final int MAX_AVG_VARIANCE = 122;
    private static final int MAX_INDIVIDUAL_VARIANCE = 179;
    static final int[] START_END_PATTERN = {1, 1, 1};
    static final int[] MIDDLE_PATTERN = {1, 1, 1, 1, 1};
    private final StringBuilder decodeRowStringBuffer = new StringBuilder(20);
    private final UPCEANExtensionSupport extensionReader = new UPCEANExtensionSupport();
    private final EANManufacturerOrgSupport eanManSupport = new EANManufacturerOrgSupport();

    static {
        int[][] iArr = {new int[]{3, 2, 1, 1}, new int[]{2, 2, 2, 1}, new int[]{2, 1, 2, 2}, new int[]{1, 4, 1, 1}, new int[]{1, 1, 3, 2}, new int[]{1, 2, 3, 1}, new int[]{1, 1, 1, 4}, new int[]{1, 3, 1, 2}, new int[]{1, 2, 1, 3}, new int[]{3, 1, 1, 2}};
        L_PATTERNS = iArr;
        int[][] iArr2 = new int[20];
        L_AND_G_PATTERNS = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, 10);
        for (int i2 = 10; i2 < 20; i2++) {
            int[] iArr3 = L_PATTERNS[i2 - 10];
            int[] iArr4 = new int[iArr3.length];
            for (int i4 = 0; i4 < iArr3.length; i4++) {
                iArr4[i4] = iArr3[(iArr3.length - i4) - 1];
            }
            L_AND_G_PATTERNS[i2] = iArr4;
        }
    }

    private static boolean checkStandardUPCEANChecksum(CharSequence charSequence) throws FormatException {
        int length = charSequence.length();
        if (length == 0) {
            return false;
        }
        int i2 = 0;
        for (int i4 = length - 2; i4 >= 0; i4 -= 2) {
            int charAt = charSequence.charAt(i4) - '0';
            if (charAt < 0 || charAt > 9) {
                throw FormatException.getFormatInstance();
            }
            i2 += charAt;
        }
        int i5 = i2 * 3;
        for (int i6 = length - 1; i6 >= 0; i6 -= 2) {
            int charAt2 = charSequence.charAt(i6) - '0';
            if (charAt2 < 0 || charAt2 > 9) {
                throw FormatException.getFormatInstance();
            }
            i5 += charAt2;
        }
        return i5 % 10 == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeDigit(BitArray bitArray, int[] iArr, int i2, int[][] iArr2) throws NotFoundException {
        OneDReader.recordPattern(bitArray, i2, iArr);
        int length = iArr2.length;
        int i4 = 122;
        int i5 = -1;
        for (int i6 = 0; i6 < length; i6++) {
            int patternMatchVariance = OneDReader.patternMatchVariance(iArr, iArr2[i6], 179);
            if (patternMatchVariance < i4) {
                i5 = i6;
                i4 = patternMatchVariance;
            }
        }
        if (i5 >= 0) {
            return i5;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int[] findGuardPattern(BitArray bitArray, int i2, boolean z3, int[] iArr) throws NotFoundException {
        return findGuardPattern(bitArray, i2, z3, iArr, new int[iArr.length]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int[] findStartGuardPattern(BitArray bitArray) throws NotFoundException {
        int[] iArr = new int[START_END_PATTERN.length];
        int[] iArr2 = null;
        boolean z3 = false;
        int i2 = 0;
        while (!z3) {
            int[] iArr3 = START_END_PATTERN;
            Arrays.fill(iArr, 0, iArr3.length, 0);
            iArr2 = findGuardPattern(bitArray, i2, false, iArr3, iArr);
            int i4 = iArr2[0];
            int i5 = iArr2[1];
            int i6 = i4 - (i5 - i4);
            if (i6 >= 0) {
                z3 = bitArray.isRange(i6, i4, false);
            }
            i2 = i5;
        }
        return iArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean checkChecksum(String str) throws ChecksumException, FormatException {
        return checkStandardUPCEANChecksum(str);
    }

    int[] decodeEnd(BitArray bitArray, int i2) throws NotFoundException {
        return findGuardPattern(bitArray, i2, false, START_END_PATTERN);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int decodeMiddle(BitArray bitArray, int[] iArr, StringBuilder sb) throws NotFoundException;

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i2, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        return decodeRow(i2, bitArray, findStartGuardPattern(bitArray), map);
    }

    abstract BarcodeFormat getBarcodeFormat();

    static int[] findGuardPattern(BitArray bitArray, int i2, boolean z3, int[] iArr, int[] iArr2) throws NotFoundException {
        int length = iArr.length;
        int size = bitArray.getSize();
        int nextUnset = z3 ? bitArray.getNextUnset(i2) : bitArray.getNextSet(i2);
        boolean z4 = z3;
        int i4 = 0;
        int i5 = nextUnset;
        while (nextUnset < size) {
            if (bitArray.get(nextUnset) ^ z4) {
                iArr2[i4] = iArr2[i4] + 1;
            } else {
                int i6 = length - 1;
                if (i4 != i6) {
                    i4++;
                } else if (OneDReader.patternMatchVariance(iArr2, iArr, 179) < 122) {
                    return new int[]{i5, nextUnset};
                } else {
                    i5 += iArr2[0] + iArr2[1];
                    int i7 = length - 2;
                    System.arraycopy(iArr2, 2, iArr2, 0, i7);
                    iArr2[i7] = 0;
                    iArr2[i6] = 0;
                    i4--;
                }
                iArr2[i4] = 1;
                z4 = !z4;
            }
            nextUnset++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public Result decodeRow(int i2, BitArray bitArray, int[] iArr, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        String lookupCountryIdentifier;
        ResultPointCallback resultPointCallback = map == null ? null : (ResultPointCallback) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
        if (resultPointCallback != null) {
            resultPointCallback.foundPossibleResultPoint(new ResultPoint((iArr[0] + iArr[1]) / 2.0f, i2));
        }
        StringBuilder sb = this.decodeRowStringBuffer;
        sb.setLength(0);
        int decodeMiddle = decodeMiddle(bitArray, iArr, sb);
        if (resultPointCallback != null) {
            resultPointCallback.foundPossibleResultPoint(new ResultPoint(decodeMiddle, i2));
        }
        int[] decodeEnd = decodeEnd(bitArray, decodeMiddle);
        if (resultPointCallback != null) {
            resultPointCallback.foundPossibleResultPoint(new ResultPoint((decodeEnd[0] + decodeEnd[1]) / 2.0f, i2));
        }
        int i4 = decodeEnd[1];
        int i5 = (i4 - decodeEnd[0]) + i4;
        if (i5 < bitArray.getSize() && bitArray.isRange(i4, i5, false)) {
            String sb2 = sb.toString();
            if (checkChecksum(sb2)) {
                BarcodeFormat barcodeFormat = getBarcodeFormat();
                float f4 = i2;
                Result result = new Result(sb2, null, new ResultPoint[]{new ResultPoint((iArr[1] + iArr[0]) / 2.0f, f4), new ResultPoint((decodeEnd[1] + decodeEnd[0]) / 2.0f, f4)}, barcodeFormat);
                try {
                    Result decodeRow = this.extensionReader.decodeRow(i2, bitArray, decodeEnd[1]);
                    result.putAllMetadata(decodeRow.getResultMetadata());
                    result.addResultPoints(decodeRow.getResultPoints());
                } catch (ReaderException unused) {
                }
                if ((barcodeFormat == BarcodeFormat.EAN_13 || barcodeFormat == BarcodeFormat.UPC_A) && (lookupCountryIdentifier = this.eanManSupport.lookupCountryIdentifier(sb2)) != null) {
                    result.putMetadata(ResultMetadataType.POSSIBLE_COUNTRY, lookupCountryIdentifier);
                }
                return result;
            }
            throw ChecksumException.getChecksumInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
