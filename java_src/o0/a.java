package o0;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.os.Build;
import java.util.Arrays;
/* compiled from: AnimatedDrawableUtil.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int f73142a = 11;

    /* renamed from: b  reason: collision with root package name */
    private static final int f73143b = 100;

    public static boolean f(int i2, int i4, int i5) {
        if (i2 == -1 || i4 == -1) {
            return true;
        }
        if (i2 <= i4) {
            if (i5 < i2 || i5 > i4) {
                return true;
            }
        } else if (i5 < i2 && i5 > i4) {
            return true;
        }
        return false;
    }

    public void a(int[] iArr) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (iArr[i2] < 11) {
                iArr[i2] = 100;
            }
        }
    }

    public int b(int[] iArr, int i2) {
        int binarySearch = Arrays.binarySearch(iArr, i2);
        return binarySearch < 0 ? ((-binarySearch) - 1) - 1 : binarySearch;
    }

    public int[] c(int[] iArr) {
        int[] iArr2 = new int[iArr.length];
        int i2 = 0;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            iArr2[i4] = i2;
            i2 += iArr[i4];
        }
        return iArr2;
    }

    @SuppressLint({"NewApi"})
    public int d(Bitmap bitmap) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 19) {
            return bitmap.getAllocationByteCount();
        }
        if (i2 >= 12) {
            return bitmap.getByteCount();
        }
        return bitmap.getWidth() * bitmap.getHeight() * 4;
    }

    public int e(int[] iArr) {
        int i2 = 0;
        for (int i4 : iArr) {
            i2 += i4;
        }
        return i2;
    }
}
