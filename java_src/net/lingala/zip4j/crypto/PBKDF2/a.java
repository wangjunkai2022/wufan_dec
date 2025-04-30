package net.lingala.zip4j.crypto.PBKDF2;
/* compiled from: BinTools.java */
/* loaded from: classes5.dex */
class a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f72880a = "0123456789ABCDEF";

    a() {
    }

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        for (byte b4 : bArr) {
            int i2 = (b4 + 256) % 256;
            stringBuffer.append(f72880a.charAt((i2 / 16) & 15));
            stringBuffer.append(f72880a.charAt((i2 % 16) & 15));
        }
        return stringBuffer.toString();
    }

    public static int b(char c4) {
        if (c4 < '0' || c4 > '9') {
            char c5 = 'A';
            if (c4 < 'A' || c4 > 'F') {
                c5 = 'a';
                if (c4 < 'a' || c4 > 'f') {
                    StringBuffer stringBuffer = new StringBuffer("Input string may only contain hex digits, but found '");
                    stringBuffer.append(c4);
                    stringBuffer.append("'");
                    throw new IllegalArgumentException(stringBuffer.toString());
                }
            }
            return (c4 - c5) + 10;
        }
        return c4 - '0';
    }

    public static byte[] c(String str) {
        if (str == null) {
            str = "";
        } else if (str.length() % 2 != 0) {
            StringBuffer stringBuffer = new StringBuffer("0");
            stringBuffer.append(str);
            str = stringBuffer.toString();
        }
        byte[] bArr = new byte[str.length() / 2];
        int i2 = 0;
        int i4 = 0;
        while (i2 < str.length()) {
            int i5 = i2 + 1;
            int i6 = i5 + 1;
            bArr[i4] = (byte) ((b(str.charAt(i2)) * 16) + b(str.charAt(i5)));
            i4++;
            i2 = i6;
        }
        return bArr;
    }
}
