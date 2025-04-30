package io.netty.handler.codec.compression;
/* loaded from: classes5.dex */
final class FastLz {
    static final byte BLOCK_TYPE_COMPRESSED = 1;
    static final byte BLOCK_TYPE_NON_COMPRESSED = 0;
    static final byte BLOCK_WITHOUT_CHECKSUM = 0;
    static final byte BLOCK_WITH_CHECKSUM = 16;
    static final int CHECKSUM_OFFSET = 4;
    private static final int HASH_LOG = 13;
    private static final int HASH_MASK = 8191;
    private static final int HASH_SIZE = 8192;
    static final int LEVEL_1 = 1;
    static final int LEVEL_2 = 2;
    static final int LEVEL_AUTO = 0;
    static final int MAGIC_NUMBER = 4607066;
    static final int MAX_CHUNK_LENGTH = 65535;
    private static final int MAX_COPY = 32;
    private static final int MAX_DISTANCE = 8191;
    private static final int MAX_FARDISTANCE = 73725;
    private static final int MAX_LEN = 264;
    static final int MIN_LENGTH_TO_COMPRESSION = 32;
    private static final int MIN_RECOMENDED_LENGTH_FOR_LEVEL_2 = 65536;
    static final int OPTIONS_OFFSET = 3;

    private FastLz() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int calculateOutputBufferLength(int i2) {
        double d4 = i2;
        Double.isNaN(d4);
        return Math.max((int) (d4 * 1.06d), 66);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0147 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0167  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int compress(byte[] r25, int r26, int r27, byte[] r28, int r29, int r30) {
        /*
            Method dump skipped, instructions count: 910
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.codec.compression.FastLz.compress(byte[], int, int, byte[], int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0118  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int decompress(byte[] r30, int r31, int r32, byte[] r33, int r34, int r35) {
        /*
            Method dump skipped, instructions count: 440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.codec.compression.FastLz.decompress(byte[], int, int, byte[], int, int):int");
    }

    private static int hashFunction(byte[] bArr, int i2) {
        int readU16 = readU16(bArr, i2);
        return ((readU16(bArr, i2 + 1) ^ (readU16 >> 3)) ^ readU16) & 8191;
    }

    private static int readU16(byte[] bArr, int i2) {
        int i4 = i2 + 1;
        if (i4 >= bArr.length) {
            return bArr[i2] & 255;
        }
        return (bArr[i2] & 255) | ((bArr[i4] & 255) << 8);
    }
}
