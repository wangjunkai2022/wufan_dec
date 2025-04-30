package com.google.zxing;

import com.google.zxing.common.BitMatrix;
import java.util.Map;
/* loaded from: classes2.dex */
public interface Writer {
    BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i2, int i4) throws WriterException;

    BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i2, int i4, Map<EncodeHintType, ?> map) throws WriterException;
}
