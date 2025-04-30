package com.tencent.cos.utils;
/* loaded from: classes4.dex */
public final class CommonSha1Utils {
    private int blockIndex;
    private int[] state;
    private int[] block = new int[16];
    int[] dd = new int[5];
    private long count = 0;
    public byte[] digestBits = new byte[20];
    public boolean digestValid = false;

    public CommonSha1Utils() {
        this.state = new int[5];
        this.state = new int[5];
    }

    final void R0(int[] iArr, int i2, int i4, int i5, int i6, int i7, int i8) {
        iArr[i7] = iArr[i7] + (((iArr[i5] ^ iArr[i6]) & iArr[i4]) ^ iArr[i6]) + blk0(i8) + 1518500249 + rol(iArr[i2], 5);
        iArr[i4] = rol(iArr[i4], 30);
    }

    final void R1(int[] iArr, int i2, int i4, int i5, int i6, int i7, int i8) {
        iArr[i7] = iArr[i7] + (((iArr[i5] ^ iArr[i6]) & iArr[i4]) ^ iArr[i6]) + blk(i8) + 1518500249 + rol(iArr[i2], 5);
        iArr[i4] = rol(iArr[i4], 30);
    }

    final void R2(int[] iArr, int i2, int i4, int i5, int i6, int i7, int i8) {
        iArr[i7] = iArr[i7] + ((iArr[i5] ^ iArr[i4]) ^ iArr[i6]) + blk(i8) + 1859775393 + rol(iArr[i2], 5);
        iArr[i4] = rol(iArr[i4], 30);
    }

    final void R3(int[] iArr, int i2, int i4, int i5, int i6, int i7, int i8) {
        iArr[i7] = iArr[i7] + ((((iArr[i5] & iArr[i4]) | (iArr[i6] & (iArr[i4] | iArr[i5]))) + blk(i8)) - 1894007588) + rol(iArr[i2], 5);
        iArr[i4] = rol(iArr[i4], 30);
    }

    final void R4(int[] iArr, int i2, int i4, int i5, int i6, int i7, int i8) {
        iArr[i7] = iArr[i7] + ((((iArr[i5] ^ iArr[i4]) ^ iArr[i6]) + blk(i8)) - 899497514) + rol(iArr[i2], 5);
        iArr[i4] = rol(iArr[i4], 30);
    }

    final int blk(int i2) {
        int[] iArr = this.block;
        int i4 = i2 & 15;
        iArr[i4] = rol((iArr[(i2 + 2) & 15] ^ (iArr[(i2 + 13) & 15] ^ iArr[(i2 + 8) & 15])) ^ iArr[i4], 1);
        return this.block[i4];
    }

    final int blk0(int i2) {
        int[] iArr = this.block;
        iArr[i2] = (rol(iArr[i2], 24) & (-16711936)) | (rol(this.block[i2], 8) & 16711935);
        return this.block[i2];
    }

    public String digout() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < 20; i2++) {
            byte[] bArr = this.digestBits;
            char c4 = (char) ((bArr[i2] >>> 4) & 15);
            char c5 = (char) (bArr[i2] & 15);
            char c6 = (char) (c4 > '\t' ? (c4 - '\n') + 97 : c4 + '0');
            int i4 = c5 > '\t' ? (c5 - '\n') + 97 : c5 + '0';
            stringBuffer.append(c6);
            stringBuffer.append((char) i4);
        }
        return stringBuffer.toString();
    }

    public String dumpTempState() {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < 5; i2++) {
            for (int i4 = 0; i4 < 4; i4++) {
                sb.append(String.format("%02x", Byte.valueOf((byte) (this.state[i2] >>> (i4 * 8)))));
            }
        }
        return sb.toString();
    }

    public void finish() {
        byte[] bArr = new byte[8];
        for (int i2 = 0; i2 < 8; i2++) {
            bArr[i2] = (byte) ((this.count >>> ((7 - i2) * 8)) & 255);
        }
        update(Byte.MIN_VALUE);
        while (this.blockIndex != 56) {
            update((byte) 0);
        }
        update(bArr);
        for (int i4 = 0; i4 < 20; i4++) {
            this.digestBits[i4] = (byte) ((this.state[i4 >> 2] >> ((3 - (i4 & 3)) * 8)) & 255);
        }
        this.digestValid = true;
    }

    public String getAlg() {
        return "SHA1";
    }

    public void init() {
        int[] iArr = this.state;
        iArr[0] = 1732584193;
        iArr[1] = -271733879;
        iArr[2] = -1732584194;
        iArr[3] = 271733878;
        iArr[4] = -1009589776;
        this.count = 0L;
        this.digestBits = new byte[20];
        this.digestValid = false;
        this.blockIndex = 0;
    }

    final int rol(int i2, int i4) {
        return (i2 >>> (32 - i4)) | (i2 << i4);
    }

    void transform() {
        int[] iArr = this.dd;
        int[] iArr2 = this.state;
        iArr[0] = iArr2[0];
        iArr[1] = iArr2[1];
        iArr[2] = iArr2[2];
        iArr[3] = iArr2[3];
        iArr[4] = iArr2[4];
        R0(iArr, 0, 1, 2, 3, 4, 0);
        R0(this.dd, 4, 0, 1, 2, 3, 1);
        R0(this.dd, 3, 4, 0, 1, 2, 2);
        R0(this.dd, 2, 3, 4, 0, 1, 3);
        R0(this.dd, 1, 2, 3, 4, 0, 4);
        R0(this.dd, 0, 1, 2, 3, 4, 5);
        R0(this.dd, 4, 0, 1, 2, 3, 6);
        R0(this.dd, 3, 4, 0, 1, 2, 7);
        R0(this.dd, 2, 3, 4, 0, 1, 8);
        R0(this.dd, 1, 2, 3, 4, 0, 9);
        R0(this.dd, 0, 1, 2, 3, 4, 10);
        R0(this.dd, 4, 0, 1, 2, 3, 11);
        R0(this.dd, 3, 4, 0, 1, 2, 12);
        R0(this.dd, 2, 3, 4, 0, 1, 13);
        R0(this.dd, 1, 2, 3, 4, 0, 14);
        R0(this.dd, 0, 1, 2, 3, 4, 15);
        R1(this.dd, 4, 0, 1, 2, 3, 16);
        R1(this.dd, 3, 4, 0, 1, 2, 17);
        R1(this.dd, 2, 3, 4, 0, 1, 18);
        R1(this.dd, 1, 2, 3, 4, 0, 19);
        R2(this.dd, 0, 1, 2, 3, 4, 20);
        R2(this.dd, 4, 0, 1, 2, 3, 21);
        R2(this.dd, 3, 4, 0, 1, 2, 22);
        R2(this.dd, 2, 3, 4, 0, 1, 23);
        R2(this.dd, 1, 2, 3, 4, 0, 24);
        R2(this.dd, 0, 1, 2, 3, 4, 25);
        R2(this.dd, 4, 0, 1, 2, 3, 26);
        R2(this.dd, 3, 4, 0, 1, 2, 27);
        R2(this.dd, 2, 3, 4, 0, 1, 28);
        R2(this.dd, 1, 2, 3, 4, 0, 29);
        R2(this.dd, 0, 1, 2, 3, 4, 30);
        R2(this.dd, 4, 0, 1, 2, 3, 31);
        R2(this.dd, 3, 4, 0, 1, 2, 32);
        R2(this.dd, 2, 3, 4, 0, 1, 33);
        R2(this.dd, 1, 2, 3, 4, 0, 34);
        R2(this.dd, 0, 1, 2, 3, 4, 35);
        R2(this.dd, 4, 0, 1, 2, 3, 36);
        R2(this.dd, 3, 4, 0, 1, 2, 37);
        R2(this.dd, 2, 3, 4, 0, 1, 38);
        R2(this.dd, 1, 2, 3, 4, 0, 39);
        R3(this.dd, 0, 1, 2, 3, 4, 40);
        R3(this.dd, 4, 0, 1, 2, 3, 41);
        R3(this.dd, 3, 4, 0, 1, 2, 42);
        R3(this.dd, 2, 3, 4, 0, 1, 43);
        R3(this.dd, 1, 2, 3, 4, 0, 44);
        R3(this.dd, 0, 1, 2, 3, 4, 45);
        R3(this.dd, 4, 0, 1, 2, 3, 46);
        R3(this.dd, 3, 4, 0, 1, 2, 47);
        R3(this.dd, 2, 3, 4, 0, 1, 48);
        R3(this.dd, 1, 2, 3, 4, 0, 49);
        R3(this.dd, 0, 1, 2, 3, 4, 50);
        R3(this.dd, 4, 0, 1, 2, 3, 51);
        R3(this.dd, 3, 4, 0, 1, 2, 52);
        R3(this.dd, 2, 3, 4, 0, 1, 53);
        R3(this.dd, 1, 2, 3, 4, 0, 54);
        R3(this.dd, 0, 1, 2, 3, 4, 55);
        R3(this.dd, 4, 0, 1, 2, 3, 56);
        R3(this.dd, 3, 4, 0, 1, 2, 57);
        R3(this.dd, 2, 3, 4, 0, 1, 58);
        R3(this.dd, 1, 2, 3, 4, 0, 59);
        R4(this.dd, 0, 1, 2, 3, 4, 60);
        R4(this.dd, 4, 0, 1, 2, 3, 61);
        R4(this.dd, 3, 4, 0, 1, 2, 62);
        R4(this.dd, 2, 3, 4, 0, 1, 63);
        R4(this.dd, 1, 2, 3, 4, 0, 64);
        R4(this.dd, 0, 1, 2, 3, 4, 65);
        R4(this.dd, 4, 0, 1, 2, 3, 66);
        R4(this.dd, 3, 4, 0, 1, 2, 67);
        R4(this.dd, 2, 3, 4, 0, 1, 68);
        R4(this.dd, 1, 2, 3, 4, 0, 69);
        R4(this.dd, 0, 1, 2, 3, 4, 70);
        R4(this.dd, 4, 0, 1, 2, 3, 71);
        R4(this.dd, 3, 4, 0, 1, 2, 72);
        R4(this.dd, 2, 3, 4, 0, 1, 73);
        R4(this.dd, 1, 2, 3, 4, 0, 74);
        R4(this.dd, 0, 1, 2, 3, 4, 75);
        R4(this.dd, 4, 0, 1, 2, 3, 76);
        R4(this.dd, 3, 4, 0, 1, 2, 77);
        R4(this.dd, 2, 3, 4, 0, 1, 78);
        R4(this.dd, 1, 2, 3, 4, 0, 79);
        int[] iArr3 = this.state;
        int i2 = iArr3[0];
        int[] iArr4 = this.dd;
        iArr3[0] = i2 + iArr4[0];
        iArr3[1] = iArr3[1] + iArr4[1];
        iArr3[2] = iArr3[2] + iArr4[2];
        iArr3[3] = iArr3[3] + iArr4[3];
        iArr3[4] = iArr3[4] + iArr4[4];
    }

    public synchronized void update(byte[] bArr, int i2, int i4) {
        for (int i5 = 0; i5 < i4; i5++) {
            update(bArr[i5 + i2]);
        }
    }

    public void updateASCII(String str) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            update((byte) (str.charAt(i2) & 255));
        }
    }

    public synchronized void update(byte[] bArr) {
        update(bArr, 0, bArr.length);
    }

    public synchronized void update(byte b4) {
        int i2 = this.blockIndex;
        int i4 = (i2 & 3) * 8;
        this.count += 8;
        int[] iArr = this.block;
        int i5 = i2 >> 2;
        iArr[i5] = iArr[i5] & ((255 << i4) ^ (-1));
        int i6 = i2 >> 2;
        iArr[i6] = ((b4 & 255) << i4) | iArr[i6];
        int i7 = i2 + 1;
        this.blockIndex = i7;
        if (i7 == 64) {
            transform();
            this.blockIndex = 0;
        }
    }
}
