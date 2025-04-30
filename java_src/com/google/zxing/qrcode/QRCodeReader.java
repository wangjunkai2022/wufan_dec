package com.google.zxing.qrcode;

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
import com.google.zxing.qrcode.decoder.Decoder;
import com.google.zxing.qrcode.detector.Detector;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class QRCodeReader implements Reader {
    private static final ResultPoint[] NO_POINTS = new ResultPoint[0];
    private final Decoder decoder = new Decoder();

    private static BitMatrix extractPureBits(BitMatrix bitMatrix) throws NotFoundException {
        int[] topLeftOnBit = bitMatrix.getTopLeftOnBit();
        int[] bottomRightOnBit = bitMatrix.getBottomRightOnBit();
        if (topLeftOnBit != null && bottomRightOnBit != null) {
            float moduleSize = moduleSize(topLeftOnBit, bitMatrix);
            int i2 = topLeftOnBit[1];
            int i4 = bottomRightOnBit[1];
            int i5 = topLeftOnBit[0];
            int i6 = bottomRightOnBit[0];
            int i7 = i4 - i2;
            if (i7 != i6 - i5) {
                i6 = i5 + i7;
            }
            int round = Math.round(((i6 - i5) + 1) / moduleSize);
            int round2 = Math.round((i7 + 1) / moduleSize);
            if (round <= 0 || round2 <= 0) {
                throw NotFoundException.getNotFoundInstance();
            }
            if (round2 == round) {
                int round3 = Math.round(moduleSize / 2.0f);
                int i8 = i2 + round3;
                int i9 = i5 + round3;
                BitMatrix bitMatrix2 = new BitMatrix(round, round2);
                for (int i10 = 0; i10 < round2; i10++) {
                    int i11 = ((int) (i10 * moduleSize)) + i8;
                    for (int i12 = 0; i12 < round; i12++) {
                        if (bitMatrix.get(((int) (i12 * moduleSize)) + i9, i11)) {
                            bitMatrix2.set(i12, i10);
                        }
                    }
                }
                return bitMatrix2;
            }
            throw NotFoundException.getNotFoundInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static float moduleSize(int[] iArr, BitMatrix bitMatrix) throws NotFoundException {
        int height = bitMatrix.getHeight();
        int width = bitMatrix.getWidth();
        int i2 = iArr[0];
        boolean z3 = true;
        int i4 = iArr[1];
        int i5 = 0;
        while (i2 < width && i4 < height) {
            if (z3 != bitMatrix.get(i2, i4)) {
                i5++;
                if (i5 == 5) {
                    break;
                }
                z3 = !z3;
            }
            i2++;
            i4++;
        }
        if (i2 != width && i4 != height) {
            return (i2 - iArr[0]) / 7.0f;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) throws NotFoundException, ChecksumException, FormatException {
        return decode(binaryBitmap, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Decoder getDecoder() {
        return this.decoder;
    }

    @Override // com.google.zxing.Reader
    public void reset() {
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        ResultPoint[] points;
        DecoderResult decoderResult;
        if (map != null && map.containsKey(DecodeHintType.PURE_BARCODE)) {
            decoderResult = this.decoder.decode(extractPureBits(binaryBitmap.getBlackMatrix()), map);
            points = NO_POINTS;
        } else {
            DetectorResult detect = new Detector(binaryBitmap.getBlackMatrix()).detect(map);
            DecoderResult decode = this.decoder.decode(detect.getBits(), map);
            points = detect.getPoints();
            decoderResult = decode;
        }
        Result result = new Result(decoderResult.getText(), decoderResult.getRawBytes(), points, BarcodeFormat.QR_CODE);
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
