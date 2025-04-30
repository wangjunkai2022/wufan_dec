package com.zxing.android.camera;

import android.graphics.Bitmap;
import com.google.zxing.LuminanceSource;
/* compiled from: PlanarYUVLuminanceSource.java */
/* loaded from: classes3.dex */
public final class e extends LuminanceSource {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f65039a;

    /* renamed from: b  reason: collision with root package name */
    private final int f65040b;

    /* renamed from: c  reason: collision with root package name */
    private final int f65041c;

    /* renamed from: d  reason: collision with root package name */
    private final int f65042d;

    /* renamed from: e  reason: collision with root package name */
    private final int f65043e;

    public e(byte[] bArr, int i2, int i4, int i5, int i6, int i7, int i8, boolean z3) {
        super(i7, i8);
        if (i5 + i7 <= i2 && i6 + i8 <= i4) {
            this.f65039a = bArr;
            this.f65040b = i2;
            this.f65041c = i4;
            this.f65042d = i5;
            this.f65043e = i6;
            if (z3) {
                b(i7, i8);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
    }

    private void b(int i2, int i4) {
        byte[] bArr = this.f65039a;
        int i5 = (this.f65043e * this.f65040b) + this.f65042d;
        int i6 = 0;
        while (i6 < i4) {
            int i7 = (i2 / 2) + i5;
            int i8 = (i5 + i2) - 1;
            int i9 = i5;
            while (i9 < i7) {
                byte b4 = bArr[i9];
                bArr[i9] = bArr[i8];
                bArr[i8] = b4;
                i9++;
                i8--;
            }
            i6++;
            i5 += this.f65040b;
        }
    }

    public Bitmap a() {
        int width = getWidth();
        int height = getHeight();
        int[] iArr = new int[width * height];
        byte[] bArr = this.f65039a;
        int i2 = (this.f65043e * this.f65040b) + this.f65042d;
        for (int i4 = 0; i4 < height; i4++) {
            int i5 = i4 * width;
            for (int i6 = 0; i6 < width; i6++) {
                iArr[i5 + i6] = ((bArr[i2 + i6] & 255) * 65793) | (-16777216);
            }
            i2 += this.f65040b;
        }
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        createBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
        return createBitmap;
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getMatrix() {
        int width = getWidth();
        int height = getHeight();
        int i2 = this.f65040b;
        if (width == i2 && height == this.f65041c) {
            return this.f65039a;
        }
        int i4 = width * height;
        byte[] bArr = new byte[i4];
        int i5 = (this.f65043e * i2) + this.f65042d;
        if (width == i2) {
            System.arraycopy(this.f65039a, i5, bArr, 0, i4);
            return bArr;
        }
        byte[] bArr2 = this.f65039a;
        for (int i6 = 0; i6 < height; i6++) {
            System.arraycopy(bArr2, i5, bArr, i6 * width, width);
            i5 += this.f65040b;
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
            try {
                System.arraycopy(this.f65039a, ((i2 + this.f65043e) * this.f65040b) + this.f65042d, bArr, 0, width);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            return bArr;
        }
        throw new IllegalArgumentException("Requested row is outside the image: " + i2);
    }

    @Override // com.google.zxing.LuminanceSource
    public boolean isCropSupported() {
        return true;
    }
}
