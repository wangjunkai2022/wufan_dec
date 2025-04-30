package com.switfpass.pay.activity.zxing.camera;

import android.graphics.Bitmap;
import com.google.zxing.LuminanceSource;
/* loaded from: classes4.dex */
public final class b extends LuminanceSource {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f58740a;

    /* renamed from: b  reason: collision with root package name */
    private final int f58741b;

    /* renamed from: c  reason: collision with root package name */
    private final int f58742c;

    /* renamed from: d  reason: collision with root package name */
    private final int f58743d;

    /* renamed from: e  reason: collision with root package name */
    private final int f58744e;

    public b(byte[] bArr, int i2, int i4, int i5, int i6, int i7, int i8) {
        super(i7, i8);
        if (i7 + i5 > i2 || i8 + i6 > i4) {
            throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
        }
        this.f58740a = bArr;
        this.f58741b = i2;
        this.f58742c = i4;
        this.f58743d = i5;
        this.f58744e = i6;
    }

    public final int a() {
        return this.f58742c;
    }

    public final int b() {
        return this.f58741b;
    }

    public final Bitmap c() {
        int width = getWidth();
        int height = getHeight();
        int[] iArr = new int[width * height];
        byte[] bArr = this.f58740a;
        int i2 = (this.f58744e * this.f58741b) + this.f58743d;
        for (int i4 = 0; i4 < height; i4++) {
            int i5 = i4 * width;
            for (int i6 = 0; i6 < width; i6++) {
                iArr[i5 + i6] = ((bArr[i2 + i6] & 255) * 65793) | (-16777216);
            }
            i2 += this.f58741b;
        }
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        createBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
        return createBitmap;
    }

    @Override // com.google.zxing.LuminanceSource
    public final byte[] getMatrix() {
        int width = getWidth();
        int height = getHeight();
        int i2 = this.f58741b;
        if (width == i2 && height == this.f58742c) {
            return this.f58740a;
        }
        int i4 = width * height;
        byte[] bArr = new byte[i4];
        int i5 = (this.f58744e * i2) + this.f58743d;
        if (width == i2) {
            System.arraycopy(this.f58740a, i5, bArr, 0, i4);
            return bArr;
        }
        byte[] bArr2 = this.f58740a;
        for (int i6 = 0; i6 < height; i6++) {
            System.arraycopy(bArr2, i5, bArr, i6 * width, width);
            i5 += this.f58741b;
        }
        return bArr;
    }

    @Override // com.google.zxing.LuminanceSource
    public final byte[] getRow(int i2, byte[] bArr) {
        if (i2 < 0 || i2 >= getHeight()) {
            throw new IllegalArgumentException("Requested row is outside the image: " + i2);
        }
        int width = getWidth();
        if (bArr == null || bArr.length < width) {
            bArr = new byte[width];
        }
        System.arraycopy(this.f58740a, ((i2 + this.f58744e) * this.f58741b) + this.f58743d, bArr, 0, width);
        return bArr;
    }

    @Override // com.google.zxing.LuminanceSource
    public final boolean isCropSupported() {
        return true;
    }
}
