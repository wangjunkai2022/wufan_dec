package com.google.zxing.multi;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class GenericMultipleBarcodeReader implements MultipleBarcodeReader {
    private static final int MIN_DIMENSION_TO_RECUR = 100;
    private final Reader delegate;

    public GenericMultipleBarcodeReader(Reader reader) {
        this.delegate = reader;
    }

    private void doDecodeMultiple(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map, List<Result> list, int i2, int i4) {
        boolean z3;
        float f4;
        float f5;
        try {
            Result decode = this.delegate.decode(binaryBitmap, map);
            Iterator<Result> it2 = list.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (it2.next().getText().equals(decode.getText())) {
                        z3 = true;
                        break;
                    }
                } else {
                    z3 = false;
                    break;
                }
            }
            if (z3) {
                return;
            }
            list.add(translateResultPoints(decode, i2, i4));
            ResultPoint[] resultPoints = decode.getResultPoints();
            if (resultPoints == null || resultPoints.length == 0) {
                return;
            }
            int width = binaryBitmap.getWidth();
            int height = binaryBitmap.getHeight();
            float f6 = width;
            float f7 = 0.0f;
            float f8 = height;
            float f9 = 0.0f;
            for (ResultPoint resultPoint : resultPoints) {
                float x3 = resultPoint.getX();
                float y3 = resultPoint.getY();
                if (x3 < f6) {
                    f6 = x3;
                }
                if (y3 < f8) {
                    f8 = y3;
                }
                if (x3 > f9) {
                    f9 = x3;
                }
                if (y3 > f7) {
                    f7 = y3;
                }
            }
            if (f6 > 100.0f) {
                f4 = f7;
                f5 = f9;
                doDecodeMultiple(binaryBitmap.crop(0, 0, (int) f6, height), map, list, i2, i4);
            } else {
                f4 = f7;
                f5 = f9;
            }
            if (f8 > 100.0f) {
                doDecodeMultiple(binaryBitmap.crop(0, 0, width, (int) f8), map, list, i2, i4);
            }
            float f10 = f5;
            if (f10 < width - 100) {
                int i5 = (int) f10;
                doDecodeMultiple(binaryBitmap.crop(i5, 0, width - i5, height), map, list, i2 + i5, i4);
            }
            float f11 = f4;
            if (f11 < height - 100) {
                int i6 = (int) f11;
                doDecodeMultiple(binaryBitmap.crop(0, i6, width, height - i6), map, list, i2, i4 + i6);
            }
        } catch (ReaderException unused) {
        }
    }

    private static Result translateResultPoints(Result result, int i2, int i4) {
        ResultPoint[] resultPoints = result.getResultPoints();
        if (resultPoints == null) {
            return result;
        }
        ResultPoint[] resultPointArr = new ResultPoint[resultPoints.length];
        for (int i5 = 0; i5 < resultPoints.length; i5++) {
            ResultPoint resultPoint = resultPoints[i5];
            resultPointArr[i5] = new ResultPoint(resultPoint.getX() + i2, resultPoint.getY() + i4);
        }
        return new Result(result.getText(), result.getRawBytes(), resultPointArr, result.getBarcodeFormat());
    }

    @Override // com.google.zxing.multi.MultipleBarcodeReader
    public Result[] decodeMultiple(BinaryBitmap binaryBitmap) throws NotFoundException {
        return decodeMultiple(binaryBitmap, null);
    }

    @Override // com.google.zxing.multi.MultipleBarcodeReader
    public Result[] decodeMultiple(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException {
        ArrayList arrayList = new ArrayList();
        doDecodeMultiple(binaryBitmap, map, arrayList, 0, 0);
        if (!arrayList.isEmpty()) {
            return (Result[]) arrayList.toArray(new Result[arrayList.size()]);
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
