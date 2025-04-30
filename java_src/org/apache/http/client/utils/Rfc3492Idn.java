package org.apache.http.client.utils;

import com.join.mgps.Util.g0;
import external.org.apache.commons.lang3.d;
import java.util.StringTokenizer;
import org.apache.http.annotation.Immutable;
@Immutable
/* loaded from: classes5.dex */
public class Rfc3492Idn implements Idn {
    private static final String ACE_PREFIX = "xn--";
    private static final int base = 36;
    private static final int damp = 700;
    private static final char delimiter = '-';
    private static final int initial_bias = 72;
    private static final int initial_n = 128;
    private static final int skew = 38;
    private static final int tmax = 26;
    private static final int tmin = 1;

    private int adapt(int i2, int i4, boolean z3) {
        int i5;
        if (z3) {
            i5 = i2 / 700;
        } else {
            i5 = i2 / 2;
        }
        int i6 = i5 + (i5 / i4);
        int i7 = 0;
        while (i6 > 455) {
            i6 /= 35;
            i7 += 36;
        }
        return i7 + ((i6 * 36) / (i6 + 38));
    }

    private int digit(char c4) {
        if (c4 < 'A' || c4 > 'Z') {
            if (c4 < 'a' || c4 > 'z') {
                if (c4 < '0' || c4 > '9') {
                    throw new IllegalArgumentException("illegal digit: " + c4);
                }
                return (c4 - '0') + 26;
            }
            return c4 - 'a';
        }
        return c4 - 'A';
    }

    protected String decode(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        int lastIndexOf = str.lastIndexOf(45);
        int i2 = 128;
        int i4 = 72;
        if (lastIndexOf != -1) {
            sb.append(str.subSequence(0, lastIndexOf));
            str = str.substring(lastIndexOf + 1);
        }
        int i5 = 0;
        while (str.length() > 0) {
            int i6 = 36;
            int i7 = i5;
            int i8 = 1;
            while (str.length() != 0) {
                char charAt = str.charAt(0);
                str = str.substring(1);
                int digit = digit(charAt);
                i7 += digit * i8;
                int i9 = i6 <= i4 + 1 ? 1 : i6 >= i4 + 26 ? 26 : i6 - i4;
                if (digit < i9) {
                    break;
                }
                i8 *= 36 - i9;
                i6 += 36;
            }
            i4 = adapt(i7 - i5, sb.length() + 1, i5 == 0);
            i2 += i7 / (sb.length() + 1);
            int length = i7 % (sb.length() + 1);
            sb.insert(length, (char) i2);
            i5 = length + 1;
        }
        return sb.toString();
    }

    @Override // org.apache.http.client.utils.Idn
    public String toUnicode(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        StringTokenizer stringTokenizer = new StringTokenizer(str, g0.f27568a);
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            if (sb.length() > 0) {
                sb.append(d.f65364a);
            }
            if (nextToken.startsWith(ACE_PREFIX)) {
                nextToken = decode(nextToken.substring(4));
            }
            sb.append(nextToken);
        }
        return sb.toString();
    }
}
