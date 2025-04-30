package cn.com.chinatelecom.account.api.e;

import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
/* loaded from: classes2.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private static final String f8685a = "l";

    /* renamed from: b  reason: collision with root package name */
    private static byte[] f8686b = {68, 64, 94, 49, 69, BinaryMemcacheOpcodes.GATK, 50, 83};

    public static String a(byte[] bArr) {
        try {
            int length = bArr.length;
            byte[] bArr2 = new byte[length];
            for (int i2 = 0; i2 < length; i2++) {
                bArr2[i2] = bArr[i2];
                for (byte b4 : f8686b) {
                    bArr2[i2] = (byte) (b4 ^ bArr2[i2]);
                }
            }
            return new String(bArr2);
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }
}
