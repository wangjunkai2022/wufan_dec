package com.google.zxing.pdf417;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.pdf417.decoder.Decoder;
import com.google.zxing.pdf417.detector.Detector;
import java.util.Map;
/* loaded from: classes2.dex */
public final class PDF417Reader implements Reader {
    private static final ResultPoint[] NO_POINTS = new ResultPoint[0];
    private final Decoder decoder = new Decoder();

    private static BitMatrix extractPureBits(BitMatrix bitMatrix) throws NotFoundException {
        int[] topLeftOnBit = bitMatrix.getTopLeftOnBit();
        int[] bottomRightOnBit = bitMatrix.getBottomRightOnBit();
        if (topLeftOnBit != null && bottomRightOnBit != null) {
            int moduleSize = moduleSize(topLeftOnBit, bitMatrix);
            int i2 = topLeftOnBit[1];
            int i4 = bottomRightOnBit[1];
            int findPatternStart = findPatternStart(topLeftOnBit[0], i2, bitMatrix);
            int findPatternEnd = ((findPatternEnd(topLeftOnBit[0], i2, bitMatrix) - findPatternStart) + 1) / moduleSize;
            int i5 = ((i4 - i2) + 1) / moduleSize;
            if (findPatternEnd > 0 && i5 > 0) {
                int i6 = moduleSize >> 1;
                int i7 = i2 + i6;
                int i8 = findPatternStart + i6;
                BitMatrix bitMatrix2 = new BitMatrix(findPatternEnd, i5);
                for (int i9 = 0; i9 < i5; i9++) {
                    int i10 = (i9 * moduleSize) + i7;
                    for (int i11 = 0; i11 < findPatternEnd; i11++) {
                        if (bitMatrix.get((i11 * moduleSize) + i8, i10)) {
                            bitMatrix2.set(i11, i9);
                        }
                    }
                }
                return bitMatrix2;
            }
            throw NotFoundException.getNotFoundInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int findPatternEnd(int i2, int i4, BitMatrix bitMatrix) throws NotFoundException {
        boolean z3 = true;
        int width = bitMatrix.getWidth() - 1;
        while (width > i2 && !bitMatrix.get(width, i4)) {
            width--;
        }
        int i5 = 0;
        while (width > i2 && i5 < 9) {
            width--;
            boolean z4 = bitMatrix.get(width, i4);
            if (z3 != z4) {
                i5++;
            }
            z3 = z4;
        }
        if (width != i2) {
            return width;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int findPatternStart(int i2, int i4, BitMatrix bitMatrix) throws NotFoundException {
        int i5;
        int width = bitMatrix.getWidth();
        int i6 = 0;
        boolean z3 = true;
        while (true) {
            i5 = width - 1;
            if (i2 >= i5 || i6 >= 8) {
                break;
            }
            i2++;
            boolean z4 = bitMatrix.get(i2, i4);
            if (z3 != z4) {
                i6++;
            }
            z3 = z4;
        }
        if (i2 != i5) {
            return i2;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int moduleSize(int[] iArr, BitMatrix bitMatrix) throws NotFoundException {
        int i2 = iArr[0];
        int i4 = iArr[1];
        int width = bitMatrix.getWidth();
        while (i2 < width && bitMatrix.get(i2, i4)) {
            i2++;
        }
        if (i2 != width) {
            int i5 = (i2 - iArr[0]) >>> 3;
            if (i5 != 0) {
                return i5;
            }
            throw NotFoundException.getNotFoundInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) throws NotFoundException, FormatException {
        return decode(binaryBitmap, null);
    }

    @Override // com.google.zxing.Reader
    public void reset() {
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        ResultPoint[] points;
        DecoderResult decoderResult;
        if (map != null && map.containsKey(DecodeHintType.PURE_BARCODE)) {
            decoderResult = this.decoder.decode(extractPureBits(binaryBitmap.getBlackMatrix()));
            points = NO_POINTS;
        } else {
            DetectorResult detect = new Detector(binaryBitmap).detect();
            DecoderResult decode = this.decoder.decode(detect.getBits());
            points = detect.getPoints();
            decoderResult = decode;
        }
        return new Result(decoderResult.getText(), decoderResult.getRawBytes(), points, BarcodeFormat.PDF_417);
    }
}
