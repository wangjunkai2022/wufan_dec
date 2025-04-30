package androidx.core.util;

import androidx.annotation.RestrictTo;
import java.io.PrintWriter;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class TimeUtils {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int HUNDRED_DAY_FIELD_LEN = 19;

    /* renamed from: a  reason: collision with root package name */
    private static final int f4721a = 60;

    /* renamed from: b  reason: collision with root package name */
    private static final int f4722b = 3600;

    /* renamed from: c  reason: collision with root package name */
    private static final int f4723c = 86400;

    /* renamed from: d  reason: collision with root package name */
    private static final Object f4724d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private static char[] f4725e = new char[24];

    private TimeUtils() {
    }

    private static int a(int i2, int i4, boolean z3, int i5) {
        if (i2 > 99 || (z3 && i5 >= 3)) {
            return i4 + 3;
        }
        if (i2 > 9 || (z3 && i5 >= 2)) {
            return i4 + 2;
        }
        if (z3 || i2 > 0) {
            return i4 + 1;
        }
        return 0;
    }

    private static int b(long j4, int i2) {
        char c4;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        long j5 = j4;
        if (f4725e.length < i2) {
            f4725e = new char[i2];
        }
        char[] cArr = f4725e;
        if (j5 == 0) {
            int i9 = i2 - 1;
            while (i9 > 0) {
                cArr[0] = ' ';
            }
            cArr[0] = '0';
            return 1;
        }
        if (j5 > 0) {
            c4 = '+';
        } else {
            c4 = '-';
            j5 = -j5;
        }
        int i10 = (int) (j5 % 1000);
        int floor = (int) Math.floor(j5 / 1000);
        if (floor > f4723c) {
            i4 = floor / f4723c;
            floor -= f4723c * i4;
        } else {
            i4 = 0;
        }
        if (floor > f4722b) {
            i5 = floor / f4722b;
            floor -= i5 * f4722b;
        } else {
            i5 = 0;
        }
        if (floor > 60) {
            int i11 = floor / 60;
            i6 = floor - (i11 * 60);
            i7 = i11;
        } else {
            i6 = floor;
            i7 = 0;
        }
        if (i2 != 0) {
            int a4 = a(i4, 1, false, 0);
            int a5 = a4 + a(i5, 1, a4 > 0, 2);
            int a6 = a5 + a(i7, 1, a5 > 0, 2);
            int a7 = a6 + a(i6, 1, a6 > 0, 2);
            i8 = 0;
            for (int a8 = a7 + a(i10, 2, true, a7 > 0 ? 3 : 0) + 1; a8 < i2; a8++) {
                cArr[i8] = ' ';
                i8++;
            }
        } else {
            i8 = 0;
        }
        cArr[i8] = c4;
        int i12 = i8 + 1;
        boolean z3 = i2 != 0;
        int c5 = c(cArr, i4, 'd', i12, false, 0);
        int c6 = c(cArr, i5, 'h', c5, c5 != i12, z3 ? 2 : 0);
        int c7 = c(cArr, i7, 'm', c6, c6 != i12, z3 ? 2 : 0);
        int c8 = c(cArr, i6, 's', c7, c7 != i12, z3 ? 2 : 0);
        int c9 = c(cArr, i10, 'm', c8, true, (!z3 || c8 == i12) ? 0 : 3);
        cArr[c9] = 's';
        return c9 + 1;
    }

    private static int c(char[] cArr, int i2, char c4, int i4, boolean z3, int i5) {
        int i6;
        if (z3 || i2 > 0) {
            if ((!z3 || i5 < 3) && i2 <= 99) {
                i6 = i4;
            } else {
                int i7 = i2 / 100;
                cArr[i4] = (char) (i7 + 48);
                i6 = i4 + 1;
                i2 -= i7 * 100;
            }
            if ((z3 && i5 >= 2) || i2 > 9 || i4 != i6) {
                int i8 = i2 / 10;
                cArr[i6] = (char) (i8 + 48);
                i6++;
                i2 -= i8 * 10;
            }
            cArr[i6] = (char) (i2 + 48);
            int i9 = i6 + 1;
            cArr[i9] = c4;
            return i9 + 1;
        }
        return i4;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j4, StringBuilder sb) {
        synchronized (f4724d) {
            sb.append(f4725e, 0, b(j4, 0));
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j4, PrintWriter printWriter, int i2) {
        synchronized (f4724d) {
            printWriter.print(new String(f4725e, 0, b(j4, i2)));
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j4, PrintWriter printWriter) {
        formatDuration(j4, printWriter, 0);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j4, long j5, PrintWriter printWriter) {
        if (j4 == 0) {
            printWriter.print("--");
        } else {
            formatDuration(j4 - j5, printWriter, 0);
        }
    }
}
