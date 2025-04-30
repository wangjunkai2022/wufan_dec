package com.fasterxml.jackson.core.io;

import com.join.mgps.Util.u;
import com.join.mgps.dto.PayCenterOrderRequest;
/* loaded from: classes2.dex */
public final class NumberOutput {
    private static int BILLION = 1000000000;
    private static long BILLION_L = 1000000000;
    private static long MAX_INT_AS_LONG = 2147483647L;
    private static int MILLION = 1000000;
    private static long MIN_INT_AS_LONG = -2147483648L;
    static final String SMALLEST_INT = String.valueOf(Integer.MIN_VALUE);
    static final String SMALLEST_LONG = String.valueOf(Long.MIN_VALUE);
    private static final int[] TRIPLET_TO_CHARS = new int[1000];
    private static final String[] sSmallIntStrs;
    private static final String[] sSmallIntStrs2;

    static {
        int i2 = 0;
        for (int i4 = 0; i4 < 10; i4++) {
            for (int i5 = 0; i5 < 10; i5++) {
                int i6 = 0;
                while (i6 < 10) {
                    TRIPLET_TO_CHARS[i2] = ((i4 + 48) << 16) | ((i5 + 48) << 8) | (i6 + 48);
                    i6++;
                    i2++;
                }
            }
        }
        sSmallIntStrs = new String[]{"0", "1", PayCenterOrderRequest.PAY_TYPE_RECHARGE, "3", "4", "5", "6", "7", "8", "9", u.f27861t};
        sSmallIntStrs2 = new String[]{"-1", "-2", "-3", "-4", "-5", "-6", "-7", "-8", "-9", "-10"};
    }

    private static int _full3(int i2, char[] cArr, int i4) {
        int i5 = TRIPLET_TO_CHARS[i2];
        int i6 = i4 + 1;
        cArr[i4] = (char) (i5 >> 16);
        int i7 = i6 + 1;
        cArr[i6] = (char) ((i5 >> 8) & 127);
        int i8 = i7 + 1;
        cArr[i7] = (char) (i5 & 127);
        return i8;
    }

    private static int _leading3(int i2, char[] cArr, int i4) {
        int i5 = TRIPLET_TO_CHARS[i2];
        if (i2 > 9) {
            if (i2 > 99) {
                cArr[i4] = (char) (i5 >> 16);
                i4++;
            }
            cArr[i4] = (char) ((i5 >> 8) & 127);
            i4++;
        }
        int i6 = i4 + 1;
        cArr[i4] = (char) (i5 & 127);
        return i6;
    }

    private static int _outputFullBillion(int i2, char[] cArr, int i4) {
        int i5 = i2 / 1000;
        int i6 = i2 - (i5 * 1000);
        int i7 = i5 / 1000;
        int[] iArr = TRIPLET_TO_CHARS;
        int i8 = iArr[i7];
        int i9 = i4 + 1;
        cArr[i4] = (char) (i8 >> 16);
        int i10 = i9 + 1;
        cArr[i9] = (char) ((i8 >> 8) & 127);
        int i11 = i10 + 1;
        cArr[i10] = (char) (i8 & 127);
        int i12 = iArr[i5 - (i7 * 1000)];
        int i13 = i11 + 1;
        cArr[i11] = (char) (i12 >> 16);
        int i14 = i13 + 1;
        cArr[i13] = (char) ((i12 >> 8) & 127);
        int i15 = i14 + 1;
        cArr[i14] = (char) (i12 & 127);
        int i16 = iArr[i6];
        int i17 = i15 + 1;
        cArr[i15] = (char) (i16 >> 16);
        int i18 = i17 + 1;
        cArr[i17] = (char) ((i16 >> 8) & 127);
        int i19 = i18 + 1;
        cArr[i18] = (char) (i16 & 127);
        return i19;
    }

    private static int _outputSmallestI(char[] cArr, int i2) {
        String str = SMALLEST_INT;
        int length = str.length();
        str.getChars(0, length, cArr, i2);
        return i2 + length;
    }

    private static int _outputSmallestL(char[] cArr, int i2) {
        String str = SMALLEST_LONG;
        int length = str.length();
        str.getChars(0, length, cArr, i2);
        return i2 + length;
    }

    private static int _outputUptoBillion(int i2, char[] cArr, int i4) {
        if (i2 < MILLION) {
            if (i2 < 1000) {
                return _leading3(i2, cArr, i4);
            }
            int i5 = i2 / 1000;
            return _outputUptoMillion(cArr, i4, i5, i2 - (i5 * 1000));
        }
        int i6 = i2 / 1000;
        int i7 = i2 - (i6 * 1000);
        int i8 = i6 / 1000;
        int _leading3 = _leading3(i8, cArr, i4);
        int[] iArr = TRIPLET_TO_CHARS;
        int i9 = iArr[i6 - (i8 * 1000)];
        int i10 = _leading3 + 1;
        cArr[_leading3] = (char) (i9 >> 16);
        int i11 = i10 + 1;
        cArr[i10] = (char) ((i9 >> 8) & 127);
        int i12 = i11 + 1;
        cArr[i11] = (char) (i9 & 127);
        int i13 = iArr[i7];
        int i14 = i12 + 1;
        cArr[i12] = (char) (i13 >> 16);
        int i15 = i14 + 1;
        cArr[i14] = (char) ((i13 >> 8) & 127);
        int i16 = i15 + 1;
        cArr[i15] = (char) (i13 & 127);
        return i16;
    }

    private static int _outputUptoMillion(char[] cArr, int i2, int i4, int i5) {
        int[] iArr = TRIPLET_TO_CHARS;
        int i6 = iArr[i4];
        if (i4 > 9) {
            if (i4 > 99) {
                cArr[i2] = (char) (i6 >> 16);
                i2++;
            }
            cArr[i2] = (char) ((i6 >> 8) & 127);
            i2++;
        }
        int i7 = i2 + 1;
        cArr[i2] = (char) (i6 & 127);
        int i8 = iArr[i5];
        int i9 = i7 + 1;
        cArr[i7] = (char) (i8 >> 16);
        int i10 = i9 + 1;
        cArr[i9] = (char) ((i8 >> 8) & 127);
        int i11 = i10 + 1;
        cArr[i10] = (char) (i8 & 127);
        return i11;
    }

    public static boolean notFinite(double d4) {
        return Double.isNaN(d4) || Double.isInfinite(d4);
    }

    public static int outputInt(int i2, char[] cArr, int i4) {
        int i5;
        if (i2 < 0) {
            if (i2 == Integer.MIN_VALUE) {
                return _outputSmallestI(cArr, i4);
            }
            cArr[i4] = '-';
            i2 = -i2;
            i4++;
        }
        if (i2 < MILLION) {
            if (i2 >= 1000) {
                int i6 = i2 / 1000;
                return _full3(i2 - (i6 * 1000), cArr, _leading3(i6, cArr, i4));
            } else if (i2 < 10) {
                cArr[i4] = (char) (i2 + 48);
                return i4 + 1;
            } else {
                return _leading3(i2, cArr, i4);
            }
        }
        int i7 = BILLION;
        if (i2 >= i7) {
            int i8 = i2 - i7;
            if (i8 >= i7) {
                i8 -= i7;
                i5 = i4 + 1;
                cArr[i4] = '2';
            } else {
                i5 = i4 + 1;
                cArr[i4] = '1';
            }
            return _outputFullBillion(i8, cArr, i5);
        }
        int i9 = i2 / 1000;
        int i10 = i9 / 1000;
        return _full3(i2 - (i9 * 1000), cArr, _full3(i9 - (i10 * 1000), cArr, _leading3(i10, cArr, i4)));
    }

    public static int outputLong(long j4, char[] cArr, int i2) {
        int _outputFullBillion;
        if (j4 < 0) {
            if (j4 > MIN_INT_AS_LONG) {
                return outputInt((int) j4, cArr, i2);
            }
            if (j4 == Long.MIN_VALUE) {
                return _outputSmallestL(cArr, i2);
            }
            cArr[i2] = '-';
            j4 = -j4;
            i2++;
        } else if (j4 <= MAX_INT_AS_LONG) {
            return outputInt((int) j4, cArr, i2);
        }
        long j5 = BILLION_L;
        long j6 = j4 / j5;
        long j7 = j4 - (j6 * j5);
        if (j6 < j5) {
            _outputFullBillion = _outputUptoBillion((int) j6, cArr, i2);
        } else {
            long j8 = j6 / j5;
            int _leading3 = _leading3((int) j8, cArr, i2);
            _outputFullBillion = _outputFullBillion((int) (j6 - (j5 * j8)), cArr, _leading3);
        }
        return _outputFullBillion((int) j7, cArr, _outputFullBillion);
    }

    public static String toString(int i2) {
        String[] strArr = sSmallIntStrs;
        if (i2 < strArr.length) {
            if (i2 >= 0) {
                return strArr[i2];
            }
            int i4 = (-i2) - 1;
            String[] strArr2 = sSmallIntStrs2;
            if (i4 < strArr2.length) {
                return strArr2[i4];
            }
        }
        return Integer.toString(i2);
    }

    public static boolean notFinite(float f4) {
        return Float.isNaN(f4) || Float.isInfinite(f4);
    }

    private static int _outputSmallestI(byte[] bArr, int i2) {
        int length = SMALLEST_INT.length();
        int i4 = 0;
        while (i4 < length) {
            bArr[i2] = (byte) SMALLEST_INT.charAt(i4);
            i4++;
            i2++;
        }
        return i2;
    }

    private static int _outputSmallestL(byte[] bArr, int i2) {
        int length = SMALLEST_LONG.length();
        int i4 = 0;
        while (i4 < length) {
            bArr[i2] = (byte) SMALLEST_LONG.charAt(i4);
            i4++;
            i2++;
        }
        return i2;
    }

    private static int _full3(int i2, byte[] bArr, int i4) {
        int i5 = TRIPLET_TO_CHARS[i2];
        int i6 = i4 + 1;
        bArr[i4] = (byte) (i5 >> 16);
        int i7 = i6 + 1;
        bArr[i6] = (byte) (i5 >> 8);
        int i8 = i7 + 1;
        bArr[i7] = (byte) i5;
        return i8;
    }

    private static int _leading3(int i2, byte[] bArr, int i4) {
        int i5 = TRIPLET_TO_CHARS[i2];
        if (i2 > 9) {
            if (i2 > 99) {
                bArr[i4] = (byte) (i5 >> 16);
                i4++;
            }
            bArr[i4] = (byte) (i5 >> 8);
            i4++;
        }
        int i6 = i4 + 1;
        bArr[i4] = (byte) i5;
        return i6;
    }

    public static String toString(long j4) {
        if (j4 <= 2147483647L && j4 >= -2147483648L) {
            return toString((int) j4);
        }
        return Long.toString(j4);
    }

    public static String toString(double d4) {
        return Double.toString(d4);
    }

    private static int _outputUptoMillion(byte[] bArr, int i2, int i4, int i5) {
        int[] iArr = TRIPLET_TO_CHARS;
        int i6 = iArr[i4];
        if (i4 > 9) {
            if (i4 > 99) {
                bArr[i2] = (byte) (i6 >> 16);
                i2++;
            }
            bArr[i2] = (byte) (i6 >> 8);
            i2++;
        }
        int i7 = i2 + 1;
        bArr[i2] = (byte) i6;
        int i8 = iArr[i5];
        int i9 = i7 + 1;
        bArr[i7] = (byte) (i8 >> 16);
        int i10 = i9 + 1;
        bArr[i9] = (byte) (i8 >> 8);
        int i11 = i10 + 1;
        bArr[i10] = (byte) i8;
        return i11;
    }

    public static String toString(float f4) {
        return Float.toString(f4);
    }

    public static int outputLong(long j4, byte[] bArr, int i2) {
        int _outputFullBillion;
        if (j4 < 0) {
            if (j4 > MIN_INT_AS_LONG) {
                return outputInt((int) j4, bArr, i2);
            }
            if (j4 == Long.MIN_VALUE) {
                return _outputSmallestL(bArr, i2);
            }
            bArr[i2] = 45;
            j4 = -j4;
            i2++;
        } else if (j4 <= MAX_INT_AS_LONG) {
            return outputInt((int) j4, bArr, i2);
        }
        long j5 = BILLION_L;
        long j6 = j4 / j5;
        long j7 = j4 - (j6 * j5);
        if (j6 < j5) {
            _outputFullBillion = _outputUptoBillion((int) j6, bArr, i2);
        } else {
            long j8 = j6 / j5;
            int _leading3 = _leading3((int) j8, bArr, i2);
            _outputFullBillion = _outputFullBillion((int) (j6 - (j5 * j8)), bArr, _leading3);
        }
        return _outputFullBillion((int) j7, bArr, _outputFullBillion);
    }

    private static int _outputFullBillion(int i2, byte[] bArr, int i4) {
        int i5 = i2 / 1000;
        int i6 = i2 - (i5 * 1000);
        int i7 = i5 / 1000;
        int i8 = i5 - (i7 * 1000);
        int[] iArr = TRIPLET_TO_CHARS;
        int i9 = iArr[i7];
        int i10 = i4 + 1;
        bArr[i4] = (byte) (i9 >> 16);
        int i11 = i10 + 1;
        bArr[i10] = (byte) (i9 >> 8);
        int i12 = i11 + 1;
        bArr[i11] = (byte) i9;
        int i13 = iArr[i8];
        int i14 = i12 + 1;
        bArr[i12] = (byte) (i13 >> 16);
        int i15 = i14 + 1;
        bArr[i14] = (byte) (i13 >> 8);
        int i16 = i15 + 1;
        bArr[i15] = (byte) i13;
        int i17 = iArr[i6];
        int i18 = i16 + 1;
        bArr[i16] = (byte) (i17 >> 16);
        int i19 = i18 + 1;
        bArr[i18] = (byte) (i17 >> 8);
        int i20 = i19 + 1;
        bArr[i19] = (byte) i17;
        return i20;
    }

    private static int _outputUptoBillion(int i2, byte[] bArr, int i4) {
        if (i2 < MILLION) {
            if (i2 < 1000) {
                return _leading3(i2, bArr, i4);
            }
            int i5 = i2 / 1000;
            return _outputUptoMillion(bArr, i4, i5, i2 - (i5 * 1000));
        }
        int i6 = i2 / 1000;
        int i7 = i2 - (i6 * 1000);
        int i8 = i6 / 1000;
        int _leading3 = _leading3(i8, bArr, i4);
        int[] iArr = TRIPLET_TO_CHARS;
        int i9 = iArr[i6 - (i8 * 1000)];
        int i10 = _leading3 + 1;
        bArr[_leading3] = (byte) (i9 >> 16);
        int i11 = i10 + 1;
        bArr[i10] = (byte) (i9 >> 8);
        int i12 = i11 + 1;
        bArr[i11] = (byte) i9;
        int i13 = iArr[i7];
        int i14 = i12 + 1;
        bArr[i12] = (byte) (i13 >> 16);
        int i15 = i14 + 1;
        bArr[i14] = (byte) (i13 >> 8);
        int i16 = i15 + 1;
        bArr[i15] = (byte) i13;
        return i16;
    }

    public static int outputInt(int i2, byte[] bArr, int i4) {
        int i5;
        if (i2 < 0) {
            if (i2 == Integer.MIN_VALUE) {
                return _outputSmallestI(bArr, i4);
            }
            bArr[i4] = 45;
            i2 = -i2;
            i4++;
        }
        if (i2 < MILLION) {
            if (i2 >= 1000) {
                int i6 = i2 / 1000;
                return _full3(i2 - (i6 * 1000), bArr, _leading3(i6, bArr, i4));
            } else if (i2 < 10) {
                int i7 = i4 + 1;
                bArr[i4] = (byte) (i2 + 48);
                return i7;
            } else {
                return _leading3(i2, bArr, i4);
            }
        }
        int i8 = BILLION;
        if (i2 >= i8) {
            int i9 = i2 - i8;
            if (i9 >= i8) {
                i9 -= i8;
                i5 = i4 + 1;
                bArr[i4] = 50;
            } else {
                i5 = i4 + 1;
                bArr[i4] = 49;
            }
            return _outputFullBillion(i9, bArr, i5);
        }
        int i10 = i2 / 1000;
        int i11 = i10 / 1000;
        return _full3(i2 - (i10 * 1000), bArr, _full3(i10 - (i11 * 1000), bArr, _leading3(i11, bArr, i4)));
    }
}
