package q0;

import android.graphics.Bitmap;
import com.facebook.common.internal.h;
/* compiled from: InPlaceRoundFilter.java */
/* loaded from: classes2.dex */
public final class a {
    private a() {
    }

    public static void a(Bitmap bitmap) {
        h.i(bitmap);
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int min = Math.min(width, height) / 2;
        int i2 = width / 2;
        int i4 = height / 2;
        if (min == 0) {
            return;
        }
        h.d(min >= 1);
        h.d(width > 0 && ((float) width) <= 2048.0f);
        h.d(height > 0 && ((float) height) <= 2048.0f);
        h.d(i2 > 0 && i2 < width);
        h.d(i4 > 0 && i4 < height);
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        int i5 = min - 1;
        h.d(i2 - i5 >= 0 && i4 - i5 >= 0 && i2 + i5 < width && i4 + i5 < height);
        int i6 = (-min) * 2;
        int[] iArr2 = new int[width];
        int i7 = i6 + 1;
        int i8 = 0;
        int i9 = 1;
        int i10 = 1;
        while (i5 >= i8) {
            int i11 = i2 + i5;
            int i12 = i2 - i5;
            int i13 = i2 + i8;
            int i14 = min;
            int i15 = i2 - i8;
            int i16 = i4 + i5;
            int i17 = i4 - i5;
            int i18 = i2;
            int i19 = i4 + i8;
            int i20 = i4 - i8;
            h.d(i5 >= 0 && i13 < width && i15 >= 0 && i19 < height && i20 >= 0);
            int i21 = i19 * width;
            int i22 = height;
            int i23 = width * i20;
            int i24 = i4;
            int i25 = width * i16;
            int i26 = i6;
            int i27 = width * i17;
            int i28 = i9;
            System.arraycopy(iArr2, 0, iArr, i21, i12);
            System.arraycopy(iArr2, 0, iArr, i23, i12);
            System.arraycopy(iArr2, 0, iArr, i25, i15);
            System.arraycopy(iArr2, 0, iArr, i27, i15);
            int i29 = width - i11;
            System.arraycopy(iArr2, 0, iArr, i21 + i11, i29);
            System.arraycopy(iArr2, 0, iArr, i23 + i11, i29);
            int i30 = width - i13;
            System.arraycopy(iArr2, 0, iArr, i25 + i13, i30);
            System.arraycopy(iArr2, 0, iArr, i27 + i13, i30);
            if (i7 <= 0) {
                i8++;
                i10 += 2;
                i7 += i10;
            }
            if (i7 > 0) {
                i5--;
                i9 = i28 + 2;
                i7 += i9 + i26;
                min = i14;
                i6 = i26;
            } else {
                min = i14;
                i6 = i26;
                i9 = i28;
            }
            i2 = i18;
            i4 = i24;
            height = i22;
        }
        int i31 = height;
        int i32 = min;
        int i33 = i4;
        for (int i34 = i33 - i32; i34 >= 0; i34--) {
            System.arraycopy(iArr2, 0, iArr, i34 * width, width);
        }
        for (int i35 = i33 + i32; i35 < i31; i35++) {
            System.arraycopy(iArr2, 0, iArr, i35 * width, width);
        }
        bitmap.setPixels(iArr, 0, width, 0, 0, width, i31);
    }
}
