package m.framework.utils;
/* loaded from: classes5.dex */
public class HEX {
    private static final char[] DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static byte[] decodeHex(char[] cArr) {
        int length = cArr.length;
        if ((length & 1) == 0) {
            byte[] bArr = new byte[length >> 1];
            int i2 = 0;
            int i4 = 0;
            while (i2 < length) {
                int i5 = i2 + 1;
                i2 = i5 + 1;
                bArr[i4] = (byte) (((toDigit(cArr[i2], i2) << 4) | toDigit(cArr[i5], i5)) & 255);
                i4++;
            }
            return bArr;
        }
        throw new RuntimeException("Odd number of characters.");
    }

    public static byte[] decodeHexString(String str) {
        return decodeHex(str.toCharArray());
    }

    public static char[] encodeHex(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length << 1];
        int i2 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            int i5 = i2 + 1;
            char[] cArr2 = DIGITS;
            cArr[i2] = cArr2[(bArr[i4] & 240) >>> 4];
            i2 = i5 + 1;
            cArr[i5] = cArr2[bArr[i4] & 15];
        }
        return cArr;
    }

    public static String encodeHexString(byte[] bArr) {
        return new String(encodeHex(bArr));
    }

    public static byte[] toByte(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length % 2 == 1) {
            return null;
        }
        int i2 = length / 2;
        byte[] bArr = new byte[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = i4 * 2;
            bArr[i4] = (byte) Integer.parseInt(str.substring(i5, i5 + 2), 16);
        }
        return bArr;
    }

    protected static int toDigit(char c4, int i2) {
        int digit = Character.digit(c4, 16);
        if (digit != -1) {
            return digit;
        }
        throw new RuntimeException("Illegal hexadecimal charcter " + c4 + " at index " + i2);
    }

    public static String toHex(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < bArr.length; i2++) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(bArr[i2])));
        }
        return stringBuffer.toString();
    }

    public byte[] decode(byte[] bArr) {
        return decodeHex(new String(bArr).toCharArray());
    }

    public byte[] encode(byte[] bArr) {
        return new String(encodeHex(bArr)).getBytes();
    }

    public byte[] decode(Object obj) {
        try {
            return decodeHex(obj instanceof String ? ((String) obj).toCharArray() : (char[]) obj);
        } catch (ClassCastException e4) {
            throw new RuntimeException(e4.getMessage());
        }
    }

    public char[] encode(Object obj) {
        try {
            return encodeHex(obj instanceof String ? ((String) obj).getBytes() : (byte[]) obj);
        } catch (ClassCastException e4) {
            throw new RuntimeException(e4.getMessage());
        }
    }
}
