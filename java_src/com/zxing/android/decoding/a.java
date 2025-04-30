package com.zxing.android.decoding;

import android.graphics.Bitmap;
import com.google.zxing.LuminanceSource;
/* compiled from: BitmapLuminanceSource.java */
/* loaded from: classes3.dex */
public class a extends LuminanceSource {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f65056a;

    public a(Bitmap bitmap) {
        super(bitmap.getWidth(), bitmap.getHeight());
        int width = bitmap.getWidth() * bitmap.getHeight();
        int[] iArr = new int[width];
        this.f65056a = new byte[bitmap.getWidth() * bitmap.getHeight()];
        bitmap.getPixels(iArr, 0, getWidth(), 0, 0, getWidth(), getHeight());
        for (int i2 = 0; i2 < width; i2++) {
            this.f65056a[i2] = (byte) iArr[i2];
        }
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getMatrix() {
        return this.f65056a;
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getRow(int i2, byte[] bArr) {
        System.arraycopy(this.f65056a, i2 * getWidth(), bArr, 0, getWidth());
        return bArr;
    }
}
