package com.google.zxing.oned;

import com.facebook.imagepipeline.common.RotationOptions;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class OneDReader implements Reader {
    protected static final int INTEGER_MATH_SHIFT = 8;
    protected static final int PATTERN_MATCH_RESULT_SCALE_FACTOR = 256;

    /* JADX WARN: Removed duplicated region for block: B:41:0x007d A[Catch: ReaderException -> 0x00c6, TryCatch #0 {ReaderException -> 0x00c6, blocks: (B:39:0x0077, B:41:0x007d, B:43:0x008e), top: B:63:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00c5 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.zxing.Result doDecode(com.google.zxing.BinaryBitmap r22, java.util.Map<com.google.zxing.DecodeHintType, ?> r23) throws com.google.zxing.NotFoundException {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.OneDReader.doDecode(com.google.zxing.BinaryBitmap, java.util.Map):com.google.zxing.Result");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int patternMatchVariance(int[] iArr, int[] iArr2, int i2) {
        int length = iArr.length;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6++) {
            i4 += iArr[i6];
            i5 += iArr2[i6];
        }
        if (i4 < i5) {
            return Integer.MAX_VALUE;
        }
        int i7 = (i4 << 8) / i5;
        int i8 = (i2 * i7) >> 8;
        int i9 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = iArr[i10] << 8;
            int i12 = iArr2[i10] * i7;
            int i13 = i11 > i12 ? i11 - i12 : i12 - i11;
            if (i13 > i8) {
                return Integer.MAX_VALUE;
            }
            i9 += i13;
        }
        return i9 / i4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void recordPattern(BitArray bitArray, int i2, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int i4 = 0;
        Arrays.fill(iArr, 0, length, 0);
        int size = bitArray.getSize();
        if (i2 < size) {
            boolean z3 = !bitArray.get(i2);
            while (i2 < size) {
                if (bitArray.get(i2) ^ z3) {
                    iArr[i4] = iArr[i4] + 1;
                } else {
                    i4++;
                    if (i4 == length) {
                        break;
                    }
                    iArr[i4] = 1;
                    z3 = !z3;
                }
                i2++;
            }
            if (i4 != length) {
                if (i4 != length - 1 || i2 != size) {
                    throw NotFoundException.getNotFoundInstance();
                }
                return;
            }
            return;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void recordPatternInReverse(BitArray bitArray, int i2, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        boolean z3 = bitArray.get(i2);
        while (i2 > 0 && length >= 0) {
            i2--;
            if (bitArray.get(i2) != z3) {
                length--;
                z3 = !z3;
            }
        }
        if (length < 0) {
            recordPattern(bitArray, i2 + 1, iArr);
            return;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) throws NotFoundException, FormatException {
        return decode(binaryBitmap, null);
    }

    public abstract Result decodeRow(int i2, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException;

    @Override // com.google.zxing.Reader
    public void reset() {
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        try {
            return doDecode(binaryBitmap, map);
        } catch (NotFoundException e4) {
            if ((map != null && map.containsKey(DecodeHintType.TRY_HARDER)) && binaryBitmap.isRotateSupported()) {
                BinaryBitmap rotateCounterClockwise = binaryBitmap.rotateCounterClockwise();
                Result doDecode = doDecode(rotateCounterClockwise, map);
                Map<ResultMetadataType, Object> resultMetadata = doDecode.getResultMetadata();
                int i2 = RotationOptions.f12538f;
                if (resultMetadata != null) {
                    ResultMetadataType resultMetadataType = ResultMetadataType.ORIENTATION;
                    if (resultMetadata.containsKey(resultMetadataType)) {
                        i2 = (((Integer) resultMetadata.get(resultMetadataType)).intValue() + RotationOptions.f12538f) % 360;
                    }
                }
                doDecode.putMetadata(ResultMetadataType.ORIENTATION, Integer.valueOf(i2));
                ResultPoint[] resultPoints = doDecode.getResultPoints();
                if (resultPoints != null) {
                    int height = rotateCounterClockwise.getHeight();
                    for (int i4 = 0; i4 < resultPoints.length; i4++) {
                        resultPoints[i4] = new ResultPoint((height - resultPoints[i4].getY()) - 1.0f, resultPoints[i4].getX());
                    }
                }
                return doDecode;
            }
            throw e4;
        }
    }
}
