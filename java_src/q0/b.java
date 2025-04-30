package q0;

import android.graphics.Bitmap;
import com.facebook.common.internal.h;
/* compiled from: IterativeBoxBlurFilter.java */
/* loaded from: classes2.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f74010a = "IterativeBoxBlurFilter";

    private static int a(int i2, int i4, int i5) {
        return i2 < i4 ? i4 : i2 > i5 ? i5 : i2;
    }

    public static void b(Bitmap bitmap, int i2, int i4) {
        h.i(bitmap);
        h.d(bitmap.isMutable());
        h.d(((float) bitmap.getHeight()) <= 2048.0f);
        h.d(((float) bitmap.getWidth()) <= 2048.0f);
        h.d(i4 > 0 && i4 <= 25);
        h.d(i2 > 0);
        try {
            c(bitmap, i2, i4);
        } catch (OutOfMemoryError e4) {
            com.facebook.common.logging.a.u(f74010a, String.format(null, "OOM: %d iterations on %dx%d with %d radius", Integer.valueOf(i2), Integer.valueOf(bitmap.getWidth()), Integer.valueOf(bitmap.getHeight()), Integer.valueOf(i4)));
            throw e4;
        }
    }

    private static void c(Bitmap bitmap, int i2, int i4) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        int i5 = i4 + 1;
        int i6 = i5 + i4;
        int[] iArr2 = new int[i6 * 256];
        int i7 = 1;
        while (true) {
            if (i7 > 255) {
                break;
            }
            for (int i8 = 0; i8 < i6; i8++) {
                iArr2[i5] = i7;
                i5++;
            }
            i7++;
        }
        int[] iArr3 = new int[Math.max(width, height)];
        for (int i9 = 0; i9 < i2; i9++) {
            for (int i10 = 0; i10 < height; i10++) {
                d(iArr, iArr3, width, i10, i6, iArr2);
                System.arraycopy(iArr3, 0, iArr, i10 * width, width);
            }
            int i11 = 0;
            while (i11 < width) {
                int i12 = i11;
                e(iArr, iArr3, width, height, i11, i6, iArr2);
                int i13 = i12;
                for (int i14 = 0; i14 < height; i14++) {
                    iArr[i13] = iArr3[i14];
                    i13 += width;
                }
                i11 = i12 + 1;
            }
        }
        bitmap.setPixels(iArr, 0, width, 0, 0, width, height);
    }

    private static void d(int[] iArr, int[] iArr2, int i2, int i4, int i5, int[] iArr3) {
        int i6 = i2 * i4;
        int i7 = ((i4 + 1) * i2) - 1;
        int i8 = i5 >> 1;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        for (int i13 = -i8; i13 < i2 + i8; i13++) {
            int i14 = iArr[a(i6 + i13, i6, i7)];
            i9 += (i14 >> 16) & 255;
            i10 += (i14 >> 8) & 255;
            i11 += i14 & 255;
            i12 += i14 >>> 24;
            if (i13 >= i8) {
                iArr2[i13 - i8] = (iArr3[i12] << 24) | (iArr3[i9] << 16) | (iArr3[i10] << 8) | iArr3[i11];
                int i15 = iArr[a((i13 - (i5 - 1)) + i6, i6, i7)];
                i9 -= (i15 >> 16) & 255;
                i10 -= (i15 >> 8) & 255;
                i11 -= i15 & 255;
                i12 -= i15 >>> 24;
            }
        }
    }

    private static void e(int[] iArr, int[] iArr2, int i2, int i4, int i5, int i6, int[] iArr3) {
        int i7 = ((i4 - 1) * i2) + i5;
        int i8 = (i6 >> 1) * i2;
        int i9 = (i6 - 1) * i2;
        int i10 = i5 - i8;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (i10 <= i7 + i8) {
            int i16 = iArr[a(i10, i5, i7)];
            i11 += (i16 >> 16) & 255;
            i12 += (i16 >> 8) & 255;
            i13 += i16 & 255;
            i14 += i16 >>> 24;
            if (i10 - i8 >= i5) {
                iArr2[i15] = (iArr3[i14] << 24) | (iArr3[i11] << 16) | (iArr3[i12] << 8) | iArr3[i13];
                i15++;
                int i17 = iArr[a(i10 - i9, i5, i7)];
                i11 -= (i17 >> 16) & 255;
                i12 -= (i17 >> 8) & 255;
                i13 -= i17 & 255;
                i14 -= i17 >>> 24;
            }
            i10 += i2;
        }
    }
}
