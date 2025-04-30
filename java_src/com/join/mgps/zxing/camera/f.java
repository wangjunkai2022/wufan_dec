package com.join.mgps.zxing.camera;

import android.graphics.Bitmap;
import com.google.zxing.LuminanceSource;
/* compiled from: PlanarYUVLuminanceSource.java */
/* loaded from: classes4.dex */
public final class f extends LuminanceSource {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f52484a;

    /* renamed from: b  reason: collision with root package name */
    private final int f52485b;

    /* renamed from: c  reason: collision with root package name */
    private final int f52486c;

    /* renamed from: d  reason: collision with root package name */
    private final int f52487d;

    /* renamed from: e  reason: collision with root package name */
    private final int f52488e;

    public f(byte[] bArr, int i2, int i4, int i5, int i6, int i7, int i8) {
        super(i7, i8);
        if (i7 + i5 <= i2) {
            int i9 = i8 + i6;
        }
        this.f52484a = bArr;
        this.f52485b = i2;
        this.f52486c = i4;
        this.f52487d = i5;
        this.f52488e = i6;
    }

    public int a() {
        return this.f52486c;
    }

    public int b() {
        return this.f52485b;
    }

    public Bitmap c() {
        int width = getWidth();
        int height = getHeight();
        int[] iArr = new int[width * height];
        byte[] bArr = this.f52484a;
        int i2 = (this.f52488e * this.f52485b) + this.f52487d;
        for (int i4 = 0; i4 < height; i4++) {
            int i5 = i4 * width;
            for (int i6 = 0; i6 < width; i6++) {
                iArr[i5 + i6] = ((bArr[i2 + i6] & 255) * 65793) | (-16777216);
            }
            i2 += this.f52485b;
        }
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        createBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
        return createBitmap;
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getMatrix() {
        int width = getWidth();
        int height = getHeight();
        int i2 = this.f52485b;
        if (width == i2 && height == this.f52486c) {
            return this.f52484a;
        }
        int i4 = width * height;
        byte[] bArr = new byte[i4];
        int i5 = (this.f52488e * i2) + this.f52487d;
        if (width == i2) {
            System.arraycopy(this.f52484a, i5, bArr, 0, i4);
            return bArr;
        }
        byte[] bArr2 = this.f52484a;
        for (int i6 = 0; i6 < height; i6++) {
            System.arraycopy(bArr2, i5, bArr, i6 * width, width);
            i5 += this.f52485b;
        }
        return bArr;
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getRow(int i2, byte[] bArr) {
        if (i2 >= 0 && i2 < getHeight()) {
            int width = getWidth();
            if (bArr == null || bArr.length < width) {
                bArr = new byte[width];
            }
            System.arraycopy(this.f52484a, ((i2 + this.f52488e) * this.f52485b) + this.f52487d, bArr, 0, width);
            return bArr;
        }
        throw new IllegalArgumentException("Requested row is outside the image: " + i2);
    }

    @Override // com.google.zxing.LuminanceSource
    public boolean isCropSupported() {
        return true;
    }
}
