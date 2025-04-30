package com.google.zxing.oned.rss;
/* loaded from: classes2.dex */
public final class RSSUtils {
    private RSSUtils() {
    }

    private static int combins(int i2, int i4) {
        int i5 = i2 - i4;
        if (i5 > i4) {
            i5 = i4;
            i4 = i5;
        }
        int i6 = 1;
        int i7 = 1;
        while (i2 > i4) {
            i6 *= i2;
            if (i7 <= i5) {
                i6 /= i7;
                i7++;
            }
            i2--;
        }
        while (i7 <= i5) {
            i6 /= i7;
            i7++;
        }
        return i6;
    }

    static int[] elements(int[] iArr, int i2, int i4) {
        int[] iArr2 = new int[iArr.length + 2];
        int i5 = i4 << 1;
        iArr2[0] = 1;
        int i6 = 10;
        int i7 = 1;
        for (int i8 = 1; i8 < i5 - 2; i8 += 2) {
            int i9 = i8 - 1;
            iArr2[i8] = iArr[i9] - iArr2[i9];
            int i10 = i8 + 1;
            iArr2[i10] = iArr[i8] - iArr2[i8];
            i7 += iArr2[i8] + iArr2[i10];
            if (iArr2[i8] < i6) {
                i6 = iArr2[i8];
            }
        }
        int i11 = i5 - 1;
        iArr2[i11] = i2 - i7;
        if (iArr2[i11] < i6) {
            i6 = iArr2[i11];
        }
        if (i6 > 1) {
            for (int i12 = 0; i12 < i5; i12 += 2) {
                int i13 = i6 - 1;
                iArr2[i12] = iArr2[i12] + i13;
                int i14 = i12 + 1;
                iArr2[i14] = iArr2[i14] - i13;
            }
        }
        return iArr2;
    }

    public static int getRSSvalue(int[] iArr, int i2, boolean z3) {
        int[] iArr2 = iArr;
        int length = iArr2.length;
        int i4 = 0;
        for (int i5 : iArr2) {
            i4 += i5;
        }
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int i9 = length - 1;
            if (i6 >= i9) {
                return i7;
            }
            int i10 = 1 << i6;
            i8 |= i10;
            int i11 = 1;
            while (i11 < iArr2[i6]) {
                int i12 = i4 - i11;
                int i13 = length - i6;
                int i14 = i13 - 2;
                int combins = combins(i12 - 1, i14);
                if (z3 && i8 == 0) {
                    int i15 = i13 - 1;
                    if (i12 - i15 >= i15) {
                        combins -= combins(i12 - i13, i14);
                    }
                }
                if (i13 - 1 > 1) {
                    int i16 = 0;
                    for (int i17 = i12 - i14; i17 > i2; i17--) {
                        i16 += combins((i12 - i17) - 1, i13 - 3);
                    }
                    combins -= i16 * (i9 - i6);
                } else if (i12 > i2) {
                    combins--;
                }
                i7 += combins;
                i11++;
                i8 &= i10 ^ (-1);
                iArr2 = iArr;
            }
            i4 -= i11;
            i6++;
            iArr2 = iArr;
        }
    }

    static int[] getRSSwidths(int i2, int i4, int i5, int i6, boolean z3) {
        int i7;
        int combins;
        int i8 = i5;
        int[] iArr = new int[i8];
        int i9 = i2;
        int i10 = i4;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int i13 = i8 - 1;
            if (i11 < i13) {
                int i14 = 1 << i11;
                i12 |= i14;
                int i15 = 1;
                while (true) {
                    i7 = i10 - i15;
                    int i16 = i8 - i11;
                    int i17 = i16 - 2;
                    combins = combins(i7 - 1, i17);
                    if (z3 && i12 == 0) {
                        int i18 = i16 - 1;
                        if (i7 - i18 >= i18) {
                            combins -= combins(i7 - i16, i17);
                        }
                    }
                    if (i16 - 1 > 1) {
                        int i19 = 0;
                        for (int i20 = i7 - i17; i20 > i6; i20--) {
                            i19 += combins((i7 - i20) - 1, i16 - 3);
                        }
                        combins -= i19 * (i13 - i11);
                    } else if (i7 > i6) {
                        combins--;
                    }
                    i9 -= combins;
                    if (i9 < 0) {
                        break;
                    }
                    i15++;
                    i12 &= i14 ^ (-1);
                    i8 = i5;
                }
                i9 += combins;
                iArr[i11] = i15;
                i11++;
                i8 = i5;
                i10 = i7;
            } else {
                iArr[i11] = i10;
                return iArr;
            }
        }
    }
}
