package cn.sharesdk.framework.utils;
/* compiled from: PercentEscaper.java */
/* loaded from: classes2.dex */
public class e extends k {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f8923a = {'+'};

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f8924b = net.lingala.zip4j.crypto.PBKDF2.a.f72880a.toCharArray();

    /* renamed from: c  reason: collision with root package name */
    private final boolean f8925c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean[] f8926d;

    public e(String str, boolean z3) {
        if (!str.matches(".*[0-9A-Za-z].*")) {
            if (z3 && str.contains(" ")) {
                throw new IllegalArgumentException("plusForSpace cannot be specified when space is a 'safe' character");
            }
            if (!str.contains("%")) {
                this.f8925c = z3;
                this.f8926d = a(str);
                return;
            }
            throw new IllegalArgumentException("The '%' character cannot be specified as 'safe'");
        }
        throw new IllegalArgumentException("Alphanumeric characters are always 'safe' and should not be explicitly specified");
    }

    private static boolean[] a(String str) {
        char[] charArray = str.toCharArray();
        int i2 = 122;
        for (char c4 : charArray) {
            i2 = Math.max((int) c4, i2);
        }
        boolean[] zArr = new boolean[i2 + 1];
        for (int i4 = 48; i4 <= 57; i4++) {
            zArr[i4] = true;
        }
        for (int i5 = 65; i5 <= 90; i5++) {
            zArr[i5] = true;
        }
        for (int i6 = 97; i6 <= 122; i6++) {
            zArr[i6] = true;
        }
        for (char c5 : charArray) {
            zArr[c5] = true;
        }
        return zArr;
    }

    @Override // cn.sharesdk.framework.utils.k, cn.sharesdk.framework.utils.Escaper
    public String escape(String str) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            boolean[] zArr = this.f8926d;
            if (charAt >= zArr.length || !zArr[charAt]) {
                return a(str, i2);
            }
        }
        return str;
    }

    @Override // cn.sharesdk.framework.utils.k
    protected int a(CharSequence charSequence, int i2, int i4) {
        while (i2 < i4) {
            char charAt = charSequence.charAt(i2);
            boolean[] zArr = this.f8926d;
            if (charAt >= zArr.length || !zArr[charAt]) {
                break;
            }
            i2++;
        }
        return i2;
    }

    @Override // cn.sharesdk.framework.utils.k
    protected char[] a(int i2) {
        boolean[] zArr = this.f8926d;
        if (i2 >= zArr.length || !zArr[i2]) {
            if (i2 == 32 && this.f8925c) {
                return f8923a;
            }
            if (i2 <= 127) {
                char[] cArr = f8924b;
                return new char[]{'%', cArr[i2 >>> 4], cArr[i2 & 15]};
            } else if (i2 <= 2047) {
                char[] cArr2 = f8924b;
                char[] cArr3 = {'%', cArr2[(r14 >>> 4) | 12], cArr2[r14 & 15], '%', cArr2[(r14 & 3) | 8], cArr2[i2 & 15]};
                int i4 = i2 >>> 4;
                int i5 = i4 >>> 2;
                return cArr3;
            } else if (i2 <= 65535) {
                char[] cArr4 = f8924b;
                char[] cArr5 = {'%', 'E', cArr4[r14 >>> 2], '%', cArr4[(r14 & 3) | 8], cArr4[r14 & 15], '%', cArr4[(r14 & 3) | 8], cArr4[i2 & 15]};
                int i6 = i2 >>> 4;
                int i7 = i6 >>> 2;
                int i8 = i7 >>> 4;
                return cArr5;
            } else if (i2 <= 1114111) {
                char[] cArr6 = f8924b;
                char[] cArr7 = {'%', 'F', cArr6[(r14 >>> 2) & 7], '%', cArr6[(r14 & 3) | 8], cArr6[r14 & 15], '%', cArr6[(r14 & 3) | 8], cArr6[r14 & 15], '%', cArr6[(r14 & 3) | 8], cArr6[i2 & 15]};
                int i9 = i2 >>> 4;
                int i10 = i9 >>> 2;
                int i11 = i10 >>> 4;
                int i12 = i11 >>> 2;
                int i13 = i12 >>> 4;
                return cArr7;
            } else {
                throw new IllegalArgumentException("Invalid unicode character value " + i2);
            }
        }
        return null;
    }
}
