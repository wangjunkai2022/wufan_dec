package b2;
/* compiled from: ByteUtility.java */
/* loaded from: classes4.dex */
public class a {
    public static String a(byte[] bArr) {
        return b(bArr, false);
    }

    public static String b(byte[] bArr, boolean z3) {
        StringBuilder sb = new StringBuilder("");
        if (bArr == null || bArr.length <= 0) {
            return "";
        }
        for (byte b4 : bArr) {
            String hexString = Integer.toHexString(b4 & 255);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString);
            if (z3) {
                sb.append(" ");
            }
        }
        return sb.toString();
    }
}
