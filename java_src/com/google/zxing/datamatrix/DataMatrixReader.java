package com.google.zxing.datamatrix;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.datamatrix.decoder.Decoder;
import com.google.zxing.datamatrix.detector.Detector;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class DataMatrixReader implements Reader {
    private static final ResultPoint[] NO_POINTS = new ResultPoint[0];
    private final Decoder decoder = new Decoder();

    private static BitMatrix extractPureBits(BitMatrix bitMatrix) throws NotFoundException {
        int[] topLeftOnBit = bitMatrix.getTopLeftOnBit();
        int[] bottomRightOnBit = bitMatrix.getBottomRightOnBit();
        if (topLeftOnBit != null && bottomRightOnBit != null) {
            int moduleSize = moduleSize(topLeftOnBit, bitMatrix);
            int i2 = topLeftOnBit[1];
            int i4 = bottomRightOnBit[1];
            int i5 = topLeftOnBit[0];
            int i6 = ((bottomRightOnBit[0] - i5) + 1) / moduleSize;
            int i7 = ((i4 - i2) + 1) / moduleSize;
            if (i6 > 0 && i7 > 0) {
                int i8 = moduleSize >> 1;
                int i9 = i2 + i8;
                int i10 = i5 + i8;
                BitMatrix bitMatrix2 = new BitMatrix(i6, i7);
                for (int i11 = 0; i11 < i7; i11++) {
                    int i12 = (i11 * moduleSize) + i9;
                    for (int i13 = 0; i13 < i6; i13++) {
                        if (bitMatrix.get((i13 * moduleSize) + i10, i12)) {
                            bitMatrix2.set(i13, i11);
                        }
                    }
                }
                return bitMatrix2;
            }
            throw NotFoundException.getNotFoundInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int moduleSize(int[] iArr, BitMatrix bitMatrix) throws NotFoundException {
        int width = bitMatrix.getWidth();
        int i2 = iArr[0];
        int i4 = iArr[1];
        while (i2 < width && bitMatrix.get(i2, i4)) {
            i2++;
        }
        if (i2 != width) {
            int i5 = i2 - iArr[0];
            if (i5 != 0) {
                return i5;
            }
            throw NotFoundException.getNotFoundInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) throws NotFoundException, ChecksumException, FormatException {
        return decode(binaryBitmap, null);
    }

    @Override // com.google.zxing.Reader
    public void reset() {
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        ResultPoint[] points;
        DecoderResult decoderResult;
        if (map != null && map.containsKey(DecodeHintType.PURE_BARCODE)) {
            decoderResult = this.decoder.decode(extractPureBits(binaryBitmap.getBlackMatrix()));
            points = NO_POINTS;
        } else {
            DetectorResult detect = new Detector(binaryBitmap.getBlackMatrix()).detect();
            DecoderResult decode = this.decoder.decode(detect.getBits());
            points = detect.getPoints();
            decoderResult = decode;
        }
        Result result = new Result(decoderResult.getText(), decoderResult.getRawBytes(), points, BarcodeFormat.DATA_MATRIX);
        List<byte[]> byteSegments = decoderResult.getByteSegments();
        if (byteSegments != null) {
            result.putMetadata(ResultMetadataType.BYTE_SEGMENTS, byteSegments);
        }
        String eCLevel = decoderResult.getECLevel();
        if (eCLevel != null) {
            result.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, eCLevel);
        }
        return result;
    }
}
