package io.netty.buffer;
/* loaded from: classes5.dex */
final class HeapByteBufUtil {
    private HeapByteBufUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte getByte(byte[] bArr, int i2) {
        return bArr[i2];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getInt(byte[] bArr, int i2) {
        return (bArr[i2 + 3] & 255) | ((bArr[i2] & 255) << 24) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getIntLE(byte[] bArr, int i2) {
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long getLong(byte[] bArr, int i2) {
        return (bArr[i2 + 7] & 255) | ((bArr[i2] & 255) << 56) | ((bArr[i2 + 1] & 255) << 48) | ((bArr[i2 + 2] & 255) << 40) | ((bArr[i2 + 3] & 255) << 32) | ((bArr[i2 + 4] & 255) << 24) | ((bArr[i2 + 5] & 255) << 16) | ((bArr[i2 + 6] & 255) << 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long getLongLE(byte[] bArr, int i2) {
        return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static short getShort(byte[] bArr, int i2) {
        return (short) ((bArr[i2 + 1] & 255) | (bArr[i2] << 8));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static short getShortLE(byte[] bArr, int i2) {
        return (short) ((bArr[i2 + 1] << 8) | (bArr[i2] & 255));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getUnsignedMedium(byte[] bArr, int i2) {
        return (bArr[i2 + 2] & 255) | ((bArr[i2] & 255) << 16) | ((bArr[i2 + 1] & 255) << 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getUnsignedMediumLE(byte[] bArr, int i2) {
        return ((bArr[i2 + 2] & 255) << 16) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setByte(byte[] bArr, int i2, int i4) {
        bArr[i2] = (byte) i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setInt(byte[] bArr, int i2, int i4) {
        bArr[i2] = (byte) (i4 >>> 24);
        bArr[i2 + 1] = (byte) (i4 >>> 16);
        bArr[i2 + 2] = (byte) (i4 >>> 8);
        bArr[i2 + 3] = (byte) i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setIntLE(byte[] bArr, int i2, int i4) {
        bArr[i2] = (byte) i4;
        bArr[i2 + 1] = (byte) (i4 >>> 8);
        bArr[i2 + 2] = (byte) (i4 >>> 16);
        bArr[i2 + 3] = (byte) (i4 >>> 24);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setLong(byte[] bArr, int i2, long j4) {
        bArr[i2] = (byte) (j4 >>> 56);
        bArr[i2 + 1] = (byte) (j4 >>> 48);
        bArr[i2 + 2] = (byte) (j4 >>> 40);
        bArr[i2 + 3] = (byte) (j4 >>> 32);
        bArr[i2 + 4] = (byte) (j4 >>> 24);
        bArr[i2 + 5] = (byte) (j4 >>> 16);
        bArr[i2 + 6] = (byte) (j4 >>> 8);
        bArr[i2 + 7] = (byte) j4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setLongLE(byte[] bArr, int i2, long j4) {
        bArr[i2] = (byte) j4;
        bArr[i2 + 1] = (byte) (j4 >>> 8);
        bArr[i2 + 2] = (byte) (j4 >>> 16);
        bArr[i2 + 3] = (byte) (j4 >>> 24);
        bArr[i2 + 4] = (byte) (j4 >>> 32);
        bArr[i2 + 5] = (byte) (j4 >>> 40);
        bArr[i2 + 6] = (byte) (j4 >>> 48);
        bArr[i2 + 7] = (byte) (j4 >>> 56);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setMedium(byte[] bArr, int i2, int i4) {
        bArr[i2] = (byte) (i4 >>> 16);
        bArr[i2 + 1] = (byte) (i4 >>> 8);
        bArr[i2 + 2] = (byte) i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setMediumLE(byte[] bArr, int i2, int i4) {
        bArr[i2] = (byte) i4;
        bArr[i2 + 1] = (byte) (i4 >>> 8);
        bArr[i2 + 2] = (byte) (i4 >>> 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setShort(byte[] bArr, int i2, int i4) {
        bArr[i2] = (byte) (i4 >>> 8);
        bArr[i2 + 1] = (byte) i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setShortLE(byte[] bArr, int i2, int i4) {
        bArr[i2] = (byte) i4;
        bArr[i2 + 1] = (byte) (i4 >>> 8);
    }
}
