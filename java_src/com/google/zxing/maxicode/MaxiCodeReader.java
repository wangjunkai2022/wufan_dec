package com.google.zxing.maxicode;

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
import com.google.zxing.maxicode.decoder.Decoder;
import java.util.Map;
/* loaded from: classes2.dex */
public final class MaxiCodeReader implements Reader {
    private static final int MATRIX_HEIGHT = 33;
    private static final int MATRIX_WIDTH = 30;
    private static final ResultPoint[] NO_POINTS = new ResultPoint[0];
    private final Decoder decoder = new Decoder();

    private static BitMatrix extractPureBits(BitMatrix bitMatrix) throws NotFoundException {
        int[] enclosingRectangle = bitMatrix.getEnclosingRectangle();
        if (enclosingRectangle != null) {
            int i2 = enclosingRectangle[0];
            int i4 = enclosingRectangle[1];
            int i5 = enclosingRectangle[2];
            int i6 = enclosingRectangle[3];
            BitMatrix bitMatrix2 = new BitMatrix(30, 33);
            for (int i7 = 0; i7 < 33; i7++) {
                int i8 = (((i7 * i6) + (i6 / 2)) / 33) + i4;
                for (int i9 = 0; i9 < 30; i9++) {
                    if (bitMatrix.get(((((i9 * i5) + (i5 / 2)) + (((i7 & 1) * i5) / 2)) / 30) + i2, i8)) {
                        bitMatrix2.set(i9, i7);
                    }
                }
            }
            return bitMatrix2;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) throws NotFoundException, ChecksumException, FormatException {
        return decode(binaryBitmap, null);
    }

    Decoder getDecoder() {
        return this.decoder;
    }

    @Override // com.google.zxing.Reader
    public void reset() {
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        if (map != null && map.containsKey(DecodeHintType.PURE_BARCODE)) {
            DecoderResult decode = this.decoder.decode(extractPureBits(binaryBitmap.getBlackMatrix()), map);
            Result result = new Result(decode.getText(), decode.getRawBytes(), NO_POINTS, BarcodeFormat.MAXICODE);
            String eCLevel = decode.getECLevel();
            if (eCLevel != null) {
                result.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, eCLevel);
            }
            return result;
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
