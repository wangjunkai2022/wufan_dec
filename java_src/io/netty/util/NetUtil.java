package io.netty.util;

import external.org.apache.commons.lang3.d;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.logging.InternalLogger;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NetworkInterface;
import java.net.UnknownHostException;
/* loaded from: classes5.dex */
public final class NetUtil {
    private static final int IPV4_MAX_CHAR_BETWEEN_SEPARATOR = 3;
    private static final boolean IPV4_PREFERRED;
    private static final int IPV4_SEPARATORS = 3;
    private static final boolean IPV6_ADDRESSES_PREFERRED;
    private static final int IPV6_BYTE_COUNT = 16;
    private static final int IPV6_MAX_CHAR_BETWEEN_SEPARATOR = 4;
    private static final int IPV6_MAX_CHAR_COUNT = 39;
    private static final int IPV6_MAX_SEPARATORS = 8;
    private static final int IPV6_MIN_SEPARATORS = 2;
    private static final int IPV6_WORD_COUNT = 8;
    public static final InetAddress LOCALHOST;
    public static final Inet4Address LOCALHOST4;
    public static final Inet6Address LOCALHOST6;
    public static final NetworkInterface LOOPBACK_IF;
    public static final int SOMAXCONN;
    private static final InternalLogger logger;

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d9, code lost:
        r10 = r8.nextElement();
        r6 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0130, code lost:
        if (r10 != null) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x010e  */
    static {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.util.NetUtil.<clinit>():void");
    }

    private NetUtil() {
    }

    public static String bytesToIpAddress(byte[] bArr) {
        return bytesToIpAddress(bArr, 0, bArr.length);
    }

    public static byte[] createByteArrayFromIpAddressString(String str) {
        if (isValidIpV4Address(str)) {
            return validIpV4ToBytes(str);
        }
        if (isValidIpV6Address(str)) {
            if (str.charAt(0) == '[') {
                str = str.substring(1, str.length() - 1);
            }
            int indexOf = str.indexOf(37);
            if (indexOf >= 0) {
                str = str.substring(0, indexOf);
            }
            return getIPv6ByName(str, true);
        }
        return null;
    }

    private static int decimalDigit(String str, int i2) {
        return str.charAt(i2) - '0';
    }

    public static Inet6Address getByName(CharSequence charSequence) {
        return getByName(charSequence, true);
    }

    public static String getHostname(InetSocketAddress inetSocketAddress) {
        return PlatformDependent.javaVersion() >= 7 ? inetSocketAddress.getHostString() : inetSocketAddress.getHostName();
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0168, code lost:
        if ((r6 - r9) <= 3) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0186, code lost:
        if (r19.charAt(0) == ':') goto L167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0199, code lost:
        if (r7 <= 2) goto L166;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] getIPv6ByName(java.lang.CharSequence r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 649
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.util.NetUtil.getIPv6ByName(java.lang.CharSequence, boolean):byte[]");
    }

    private static boolean inRangeEndExclusive(int i2, int i4, int i5) {
        return i2 >= i4 && i2 < i5;
    }

    public static String intToIpAddress(int i2) {
        StringBuilder sb = new StringBuilder(15);
        sb.append((i2 >> 24) & 255);
        sb.append(d.f65364a);
        sb.append((i2 >> 16) & 255);
        sb.append(d.f65364a);
        sb.append((i2 >> 8) & 255);
        sb.append(d.f65364a);
        sb.append(i2 & 255);
        return sb.toString();
    }

    private static byte ipv4WordToByte(String str, int i2, int i4) {
        int decimalDigit = decimalDigit(str, i2);
        int i5 = i2 + 1;
        if (i5 == i4) {
            return (byte) decimalDigit;
        }
        int decimalDigit2 = (decimalDigit * 10) + decimalDigit(str, i5);
        int i6 = i5 + 1;
        return i6 == i4 ? (byte) decimalDigit2 : (byte) ((decimalDigit2 * 10) + decimalDigit(str, i6));
    }

    public static boolean isIpV4StackPreferred() {
        return IPV4_PREFERRED;
    }

    public static boolean isIpV6AddressesPreferred() {
        return IPV6_ADDRESSES_PREFERRED;
    }

    private static boolean isValidHexChar(char c4) {
        return (c4 >= '0' && c4 <= '9') || (c4 >= 'A' && c4 <= 'F') || (c4 >= 'a' && c4 <= 'f');
    }

    private static boolean isValidIPv4Mapped(byte[] bArr, int i2, int i4, int i5) {
        boolean z3 = i5 + i4 >= 14;
        return i2 <= 12 && i2 >= 2 && (!z3 || i4 < 12) && isValidIPv4MappedSeparators(bArr[i2 + (-1)], bArr[i2 + (-2)], z3) && PlatformDependent.isZero(bArr, 0, i2 + (-3));
    }

    private static boolean isValidIPv4MappedChar(char c4) {
        return c4 == 'f' || c4 == 'F';
    }

    private static boolean isValidIPv4MappedSeparators(byte b4, byte b5, boolean z3) {
        return b4 == b5 && (b4 == 0 || (!z3 && b5 == -1));
    }

    public static boolean isValidIpV4Address(CharSequence charSequence) {
        return isValidIpV4Address(charSequence, 0, charSequence.length());
    }

    private static boolean isValidIpV4Address0(CharSequence charSequence, int i2, int i4) {
        int indexOf;
        int i5;
        int indexOf2;
        int i6;
        int indexOf3;
        int i7 = i4 - i2;
        return i7 <= 15 && i7 >= 7 && (indexOf = AsciiString.indexOf(charSequence, d.f65364a, i2 + 1)) > 0 && isValidIpV4Word(charSequence, i2, indexOf) && (indexOf2 = AsciiString.indexOf(charSequence, d.f65364a, (i5 = indexOf + 2))) > 0 && isValidIpV4Word(charSequence, i5 - 1, indexOf2) && (indexOf3 = AsciiString.indexOf(charSequence, d.f65364a, (i6 = indexOf2 + 2))) > 0 && isValidIpV4Word(charSequence, i6 - 1, indexOf3) && isValidIpV4Word(charSequence, indexOf3 + 1, i4);
    }

    private static boolean isValidIpV4Word(CharSequence charSequence, int i2, int i4) {
        char charAt;
        char charAt2;
        int i5 = i4 - i2;
        if (i5 < 1 || i5 > 3 || (charAt = charSequence.charAt(i2)) < '0') {
            return false;
        }
        if (i5 != 3) {
            if (charAt <= '9') {
                return i5 == 1 || isValidNumericChar(charSequence.charAt(i2 + 1));
            }
            return false;
        }
        char charAt3 = charSequence.charAt(i2 + 1);
        if (charAt3 < '0' || (charAt2 = charSequence.charAt(i2 + 2)) < '0') {
            return false;
        }
        if (charAt > '1' || charAt3 > '9' || charAt2 > '9') {
            if (charAt != '2' || charAt3 > '5') {
                return false;
            }
            if (charAt2 > '5' && (charAt3 >= '5' || charAt2 > '9')) {
                return false;
            }
        }
        return true;
    }

    public static boolean isValidIpV6Address(String str) {
        return isValidIpV6Address((CharSequence) str);
    }

    private static boolean isValidNumericChar(char c4) {
        return c4 >= '0' && c4 <= '9';
    }

    private static StringBuilder newSocketAddressStringBuilder(String str, String str2, boolean z3) {
        int length = str.length();
        if (z3) {
            StringBuilder sb = new StringBuilder(length + 1 + str2.length());
            sb.append(str);
            return sb;
        }
        StringBuilder sb2 = new StringBuilder(length + 3 + str2.length());
        if (length > 1 && str.charAt(0) == '[' && str.charAt(length - 1) == ']') {
            sb2.append(str);
            return sb2;
        }
        sb2.append('[');
        sb2.append(str);
        sb2.append(']');
        return sb2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Integer sysctlGetInt(String str) throws IOException {
        Process start = new ProcessBuilder("sysctl", str).start();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(start.getInputStream()));
            String readLine = bufferedReader.readLine();
            if (readLine != null && readLine.startsWith(str)) {
                for (int length = readLine.length() - 1; length > str.length(); length--) {
                    if (!Character.isDigit(readLine.charAt(length))) {
                        Integer valueOf = Integer.valueOf(readLine.substring(length + 1));
                        bufferedReader.close();
                        start.destroy();
                        return valueOf;
                    }
                }
            }
            bufferedReader.close();
            start.destroy();
            return null;
        } catch (Throwable th) {
            if (start != null) {
                start.destroy();
            }
            throw th;
        }
    }

    public static String toAddressString(InetAddress inetAddress) {
        return toAddressString(inetAddress, false);
    }

    public static String toSocketAddressString(InetSocketAddress inetSocketAddress) {
        StringBuilder newSocketAddressStringBuilder;
        String valueOf = String.valueOf(inetSocketAddress.getPort());
        if (inetSocketAddress.isUnresolved()) {
            String hostname = getHostname(inetSocketAddress);
            newSocketAddressStringBuilder = newSocketAddressStringBuilder(hostname, valueOf, !isValidIpV6Address(hostname));
        } else {
            InetAddress address = inetSocketAddress.getAddress();
            newSocketAddressStringBuilder = newSocketAddressStringBuilder(toAddressString(address), valueOf, address instanceof Inet4Address);
        }
        newSocketAddressStringBuilder.append(':');
        newSocketAddressStringBuilder.append(valueOf);
        return newSocketAddressStringBuilder.toString();
    }

    static byte[] validIpV4ToBytes(String str) {
        int indexOf = str.indexOf(46, 1);
        int i2 = indexOf + 1;
        int indexOf2 = str.indexOf(46, indexOf + 2);
        int indexOf3 = str.indexOf(46, indexOf2 + 2);
        return new byte[]{ipv4WordToByte(str, 0, indexOf), ipv4WordToByte(str, i2, indexOf2), ipv4WordToByte(str, indexOf2 + 1, indexOf3), ipv4WordToByte(str, indexOf3 + 1, str.length())};
    }

    public static String bytesToIpAddress(byte[] bArr, int i2, int i4) {
        if (i4 != 4) {
            if (i4 == 16) {
                return toAddressString(bArr, i2, false);
            }
            throw new IllegalArgumentException("length: " + i4 + " (expected: 4 or 16)");
        }
        StringBuilder sb = new StringBuilder(15);
        sb.append(bArr[i2] & 255);
        sb.append(d.f65364a);
        sb.append(bArr[i2 + 1] & 255);
        sb.append(d.f65364a);
        sb.append(bArr[i2 + 2] & 255);
        sb.append(d.f65364a);
        sb.append(bArr[i2 + 3] & 255);
        return sb.toString();
    }

    public static Inet6Address getByName(CharSequence charSequence, boolean z3) {
        byte[] iPv6ByName = getIPv6ByName(charSequence, z3);
        if (iPv6ByName == null) {
            return null;
        }
        try {
            return Inet6Address.getByAddress((String) null, iPv6ByName, -1);
        } catch (UnknownHostException e4) {
            throw new RuntimeException(e4);
        }
    }

    public static boolean isValidIpV4Address(String str) {
        return isValidIpV4Address(str, 0, str.length());
    }

    public static boolean isValidIpV6Address(CharSequence charSequence) {
        int i2;
        int i4;
        int length = charSequence.length();
        int i5 = 2;
        if (length < 2) {
            return false;
        }
        char charAt = charSequence.charAt(0);
        if (charAt == '[') {
            length--;
            if (charSequence.charAt(length) != ']') {
                return false;
            }
            charAt = charSequence.charAt(1);
            i2 = 1;
        } else {
            i2 = 0;
        }
        if (charAt != ':') {
            i5 = 0;
            i4 = -1;
        } else if (charSequence.charAt(i2 + 1) != ':') {
            return false;
        } else {
            int i6 = i2;
            i2 += 2;
            i4 = i6;
        }
        int i7 = i2;
        int i8 = 0;
        while (true) {
            if (i7 >= length) {
                break;
            }
            char charAt2 = charSequence.charAt(i7);
            if (!isValidHexChar(charAt2)) {
                if (charAt2 == '%') {
                    length = i7;
                    break;
                } else if (charAt2 == '.') {
                    if ((i4 >= 0 || i5 == 6) && ((i5 != 7 || i4 < i2) && i5 <= 7)) {
                        int i9 = i7 - i8;
                        int i10 = i9 - 2;
                        if (isValidIPv4MappedChar(charSequence.charAt(i10))) {
                            if (!isValidIPv4MappedChar(charSequence.charAt(i10 - 1)) || !isValidIPv4MappedChar(charSequence.charAt(i10 - 2)) || !isValidIPv4MappedChar(charSequence.charAt(i10 - 3))) {
                                return false;
                            }
                            i10 -= 5;
                        }
                        while (i10 >= i2) {
                            char charAt3 = charSequence.charAt(i10);
                            if (charAt3 != '0' && charAt3 != ':') {
                                return false;
                            }
                            i10--;
                        }
                        int indexOf = AsciiString.indexOf(charSequence, '%', i9 + 7);
                        if (indexOf >= 0) {
                            length = indexOf;
                        }
                        return isValidIpV4Address(charSequence, i9, length);
                    }
                    return false;
                } else if (charAt2 != ':' || i5 > 7) {
                    return false;
                } else {
                    int i11 = i7 - 1;
                    if (charSequence.charAt(i11) != ':') {
                        i8 = 0;
                    } else if (i4 >= 0) {
                        return false;
                    } else {
                        i4 = i11;
                    }
                    i5++;
                }
            } else if (i8 >= 4) {
                return false;
            } else {
                i8++;
            }
            i7++;
        }
        if (i4 < 0) {
            return i5 == 7 && i8 > 0;
        }
        if (i4 + 2 != length) {
            if (i8 <= 0) {
                return false;
            }
            if (i5 >= 8 && i4 > i2) {
                return false;
            }
        }
        return true;
    }

    public static String toAddressString(InetAddress inetAddress, boolean z3) {
        if (inetAddress instanceof Inet4Address) {
            return inetAddress.getHostAddress();
        }
        if (inetAddress instanceof Inet6Address) {
            return toAddressString(inetAddress.getAddress(), 0, z3);
        }
        throw new IllegalArgumentException("Unhandled type: " + inetAddress);
    }

    private static boolean isValidIpV4Address(CharSequence charSequence, int i2, int i4) {
        if (charSequence instanceof String) {
            return isValidIpV4Address((String) charSequence, i2, i4);
        }
        if (charSequence instanceof AsciiString) {
            return isValidIpV4Address((AsciiString) charSequence, i2, i4);
        }
        return isValidIpV4Address0(charSequence, i2, i4);
    }

    private static boolean isValidIpV4Address(String str, int i2, int i4) {
        int indexOf;
        int i5;
        int indexOf2;
        int i6;
        int indexOf3;
        int i7 = i4 - i2;
        return i7 <= 15 && i7 >= 7 && (indexOf = str.indexOf(46, i2 + 1)) > 0 && isValidIpV4Word(str, i2, indexOf) && (indexOf2 = str.indexOf(46, (i5 = indexOf + 2))) > 0 && isValidIpV4Word(str, i5 - 1, indexOf2) && (indexOf3 = str.indexOf(46, (i6 = indexOf2 + 2))) > 0 && isValidIpV4Word(str, i6 - 1, indexOf3) && isValidIpV4Word(str, indexOf3 + 1, i4);
    }

    private static String toAddressString(byte[] bArr, int i2, boolean z3) {
        int i4;
        int i5;
        int[] iArr = new int[8];
        int i6 = i2 + 8;
        while (true) {
            i4 = 1;
            if (i2 >= i6) {
                break;
            }
            int i7 = i2 << 1;
            iArr[i2] = (bArr[i7 + 1] & 255) | ((bArr[i7] & 255) << 8);
            i2++;
        }
        int i8 = -1;
        boolean z4 = false;
        int i9 = 0;
        int i10 = -1;
        int i11 = 0;
        int i12 = -1;
        while (i9 < 8) {
            if (iArr[i9] == 0) {
                if (i10 < 0) {
                    i10 = i9;
                }
            } else if (i10 >= 0) {
                int i13 = i9 - i10;
                if (i13 > i11) {
                    i11 = i13;
                } else {
                    i10 = i12;
                }
                i12 = i10;
                i10 = -1;
            }
            i9++;
        }
        if (i10 < 0 || (i5 = i9 - i10) <= i11) {
            i10 = i12;
        } else {
            i11 = i5;
        }
        if (i11 == 1) {
            i11 = 0;
        } else {
            i8 = i10;
        }
        int i14 = i11 + i8;
        StringBuilder sb = new StringBuilder(39);
        if (i14 < 0) {
            sb.append(Integer.toHexString(iArr[0]));
            while (i4 < 8) {
                sb.append(':');
                sb.append(Integer.toHexString(iArr[i4]));
                i4++;
            }
        } else {
            if (inRangeEndExclusive(0, i8, i14)) {
                sb.append("::");
                if (z3 && i14 == 5 && iArr[5] == 65535) {
                    z4 = true;
                }
            } else {
                sb.append(Integer.toHexString(iArr[0]));
            }
            while (i4 < 8) {
                if (!inRangeEndExclusive(i4, i8, i14)) {
                    if (!inRangeEndExclusive(i4 - 1, i8, i14)) {
                        if (z4 && i4 != 6) {
                            sb.append(d.f65364a);
                        } else {
                            sb.append(':');
                        }
                    }
                    if (z4 && i4 > 5) {
                        sb.append(iArr[i4] >> 8);
                        sb.append(d.f65364a);
                        sb.append(iArr[i4] & 255);
                    } else {
                        sb.append(Integer.toHexString(iArr[i4]));
                    }
                } else if (!inRangeEndExclusive(i4 - 1, i8, i14)) {
                    sb.append("::");
                }
                i4++;
            }
        }
        return sb.toString();
    }

    public static String toSocketAddressString(String str, int i2) {
        String valueOf = String.valueOf(i2);
        StringBuilder newSocketAddressStringBuilder = newSocketAddressStringBuilder(str, valueOf, !isValidIpV6Address(str));
        newSocketAddressStringBuilder.append(':');
        newSocketAddressStringBuilder.append(valueOf);
        return newSocketAddressStringBuilder.toString();
    }

    private static boolean isValidIpV4Address(AsciiString asciiString, int i2, int i4) {
        int indexOf;
        int i5;
        int indexOf2;
        int i6;
        int indexOf3;
        int i7 = i4 - i2;
        return i7 <= 15 && i7 >= 7 && (indexOf = asciiString.indexOf(d.f65364a, i2 + 1)) > 0 && isValidIpV4Word(asciiString, i2, indexOf) && (indexOf2 = asciiString.indexOf(d.f65364a, (i5 = indexOf + 2))) > 0 && isValidIpV4Word(asciiString, i5 - 1, indexOf2) && (indexOf3 = asciiString.indexOf(d.f65364a, (i6 = indexOf2 + 2))) > 0 && isValidIpV4Word(asciiString, i6 - 1, indexOf3) && isValidIpV4Word(asciiString, indexOf3 + 1, i4);
    }
}
