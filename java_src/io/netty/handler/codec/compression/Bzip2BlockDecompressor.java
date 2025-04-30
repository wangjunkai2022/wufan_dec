package io.netty.handler.codec.compression;
/* loaded from: classes5.dex */
final class Bzip2BlockDecompressor {
    private final int blockCRC;
    private final boolean blockRandomised;
    private final byte[] bwtBlock;
    private int bwtBlockLength;
    private int bwtBytesDecoded;
    private int bwtCurrentMergedPointer;
    private int[] bwtMergedPointers;
    private final int bwtStartPointer;
    int huffmanEndOfBlockSymbol;
    int huffmanInUse16;
    private int mtfValue;
    private int randomIndex;
    private final Bzip2BitReader reader;
    private int repeatCount;
    private int rleAccumulator;
    private int rleRepeat;
    private final Crc32 crc = new Crc32();
    final byte[] huffmanSymbolMap = new byte[256];
    private final int[] bwtByteCounts = new int[256];
    private int rleLastDecodedByte = -1;
    private int randomCount = Bzip2Rand.rNums(0) - 1;
    private final Bzip2MoveToFrontTable symbolMTF = new Bzip2MoveToFrontTable();
    private int repeatIncrement = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bzip2BlockDecompressor(int i2, int i4, boolean z3, int i5, Bzip2BitReader bzip2BitReader) {
        this.bwtBlock = new byte[i2];
        this.blockCRC = i4;
        this.blockRandomised = z3;
        this.bwtStartPointer = i5;
        this.reader = bzip2BitReader;
    }

    private int decodeNextBWTByte() {
        int i2 = this.bwtCurrentMergedPointer;
        int i4 = i2 & 255;
        this.bwtCurrentMergedPointer = this.bwtMergedPointers[i2 >>> 8];
        if (this.blockRandomised) {
            int i5 = this.randomCount - 1;
            this.randomCount = i5;
            if (i5 == 0) {
                i4 ^= 1;
                int i6 = (this.randomIndex + 1) % 512;
                this.randomIndex = i6;
                this.randomCount = Bzip2Rand.rNums(i6);
            }
        }
        this.bwtBytesDecoded++;
        return i4;
    }

    private void initialiseInverseBWT() {
        int i2 = this.bwtStartPointer;
        byte[] bArr = this.bwtBlock;
        int i4 = this.bwtBlockLength;
        int[] iArr = new int[i4];
        int[] iArr2 = new int[256];
        if (i2 >= 0 && i2 < i4) {
            System.arraycopy(this.bwtByteCounts, 0, iArr2, 1, 255);
            for (int i5 = 2; i5 <= 255; i5++) {
                iArr2[i5] = iArr2[i5] + iArr2[i5 - 1];
            }
            for (int i6 = 0; i6 < this.bwtBlockLength; i6++) {
                int i7 = bArr[i6] & 255;
                int i8 = iArr2[i7];
                iArr2[i7] = i8 + 1;
                iArr[i8] = (i6 << 8) + i7;
            }
            this.bwtMergedPointers = iArr;
            this.bwtCurrentMergedPointer = iArr[i2];
            return;
        }
        throw new DecompressionException("start pointer invalid");
    }

    public int blockLength() {
        return this.bwtBlockLength;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int checkCRC() {
        int crc = this.crc.getCRC();
        if (this.blockCRC == crc) {
            return crc;
        }
        throw new DecompressionException("block CRC error");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean decodeHuffmanData(Bzip2HuffmanStageDecoder bzip2HuffmanStageDecoder) {
        Bzip2BitReader bzip2BitReader = this.reader;
        byte[] bArr = this.bwtBlock;
        byte[] bArr2 = this.huffmanSymbolMap;
        int length = bArr.length;
        int i2 = this.huffmanEndOfBlockSymbol;
        int[] iArr = this.bwtByteCounts;
        Bzip2MoveToFrontTable bzip2MoveToFrontTable = this.symbolMTF;
        int i4 = this.bwtBlockLength;
        int i5 = this.repeatCount;
        int i6 = this.repeatIncrement;
        int i7 = this.mtfValue;
        while (bzip2BitReader.hasReadableBits(23)) {
            int nextSymbol = bzip2HuffmanStageDecoder.nextSymbol();
            if (nextSymbol == 0) {
                i5 += i6;
                i6 <<= 1;
            } else if (nextSymbol == 1) {
                i6 <<= 1;
                i5 += i6;
            } else {
                if (i5 > 0) {
                    if (i4 + i5 <= length) {
                        byte b4 = bArr2[i7];
                        int i8 = b4 & 255;
                        iArr[i8] = iArr[i8] + i5;
                        while (true) {
                            i5--;
                            if (i5 < 0) {
                                break;
                            }
                            bArr[i4] = b4;
                            i4++;
                        }
                        i5 = 0;
                        i6 = 1;
                    } else {
                        throw new DecompressionException("block exceeds declared block size");
                    }
                }
                if (nextSymbol == i2) {
                    this.bwtBlockLength = i4;
                    initialiseInverseBWT();
                    return true;
                } else if (i4 < length) {
                    i7 = bzip2MoveToFrontTable.indexToFront(nextSymbol - 1) & 255;
                    byte b5 = bArr2[i7];
                    int i9 = b5 & 255;
                    iArr[i9] = iArr[i9] + 1;
                    bArr[i4] = b5;
                    i4++;
                } else {
                    throw new DecompressionException("block exceeds declared block size");
                }
            }
        }
        this.bwtBlockLength = i4;
        this.repeatCount = i5;
        this.repeatIncrement = i6;
        this.mtfValue = i7;
        return false;
    }

    public int read() {
        while (true) {
            int i2 = this.rleRepeat;
            if (i2 < 1) {
                if (this.bwtBytesDecoded == this.bwtBlockLength) {
                    return -1;
                }
                int decodeNextBWTByte = decodeNextBWTByte();
                if (decodeNextBWTByte != this.rleLastDecodedByte) {
                    this.rleLastDecodedByte = decodeNextBWTByte;
                    this.rleRepeat = 1;
                    this.rleAccumulator = 1;
                    this.crc.updateCRC(decodeNextBWTByte);
                } else {
                    int i4 = this.rleAccumulator + 1;
                    this.rleAccumulator = i4;
                    if (i4 == 4) {
                        int decodeNextBWTByte2 = decodeNextBWTByte() + 1;
                        this.rleRepeat = decodeNextBWTByte2;
                        this.rleAccumulator = 0;
                        this.crc.updateCRC(decodeNextBWTByte, decodeNextBWTByte2);
                    } else {
                        this.rleRepeat = 1;
                        this.crc.updateCRC(decodeNextBWTByte);
                    }
                }
            } else {
                this.rleRepeat = i2 - 1;
                return this.rleLastDecodedByte;
            }
        }
    }
}
