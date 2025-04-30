package net.lingala.zip4j.crypto.engine;
/* compiled from: ZipCryptoEngine.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f72935b = new int[256];

    /* renamed from: a  reason: collision with root package name */
    private final int[] f72936a = new int[3];

    static {
        for (int i2 = 0; i2 < 256; i2++) {
            int i4 = i2;
            for (int i5 = 0; i5 < 8; i5++) {
                i4 = (i4 & 1) == 1 ? (i4 >>> 1) ^ (-306674912) : i4 >>> 1;
            }
            f72935b[i2] = i4;
        }
    }

    private int a(int i2, byte b4) {
        return f72935b[(i2 ^ b4) & 255] ^ (i2 >>> 8);
    }

    public byte b() {
        int i2 = this.f72936a[2] | 2;
        return (byte) ((i2 * (i2 ^ 1)) >>> 8);
    }

    public void c(char[] cArr) {
        int[] iArr = this.f72936a;
        iArr[0] = 305419896;
        iArr[1] = 591751049;
        iArr[2] = 878082192;
        for (char c4 : cArr) {
            d((byte) (c4 & 255));
        }
    }

    public void d(byte b4) {
        int[] iArr = this.f72936a;
        iArr[0] = a(iArr[0], b4);
        int[] iArr2 = this.f72936a;
        iArr2[1] = iArr2[1] + (iArr2[0] & 255);
        iArr2[1] = (iArr2[1] * 134775813) + 1;
        iArr2[2] = a(iArr2[2], (byte) (iArr2[1] >> 24));
    }
}
