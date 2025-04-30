package io.netty.handler.codec.compression;

import io.netty.buffer.ByteBuf;
import io.netty.util.ByteProcessor;
/* loaded from: classes5.dex */
final class Bzip2BlockCompressor {
    private final byte[] block;
    private int blockLength;
    private final int blockLengthLimit;
    private final int[] bwtBlock;
    private int rleLength;
    private final Bzip2BitWriter writer;
    private final ByteProcessor writeProcessor = new ByteProcessor() { // from class: io.netty.handler.codec.compression.Bzip2BlockCompressor.1
        @Override // io.netty.util.ByteProcessor
        public boolean process(byte b4) throws Exception {
            return Bzip2BlockCompressor.this.write(b4);
        }
    };
    private final Crc32 crc = new Crc32();
    private final boolean[] blockValuesPresent = new boolean[256];
    private int rleCurrentValue = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bzip2BlockCompressor(Bzip2BitWriter bzip2BitWriter, int i2) {
        this.writer = bzip2BitWriter;
        int i4 = i2 + 1;
        this.block = new byte[i4];
        this.bwtBlock = new int[i4];
        this.blockLengthLimit = i2 - 6;
    }

    private void writeRun(int i2, int i4) {
        int i5 = this.blockLength;
        byte[] bArr = this.block;
        this.blockValuesPresent[i2] = true;
        this.crc.updateCRC(i2, i4);
        byte b4 = (byte) i2;
        if (i4 == 1) {
            bArr[i5] = b4;
            this.blockLength = i5 + 1;
        } else if (i4 == 2) {
            bArr[i5] = b4;
            bArr[i5 + 1] = b4;
            this.blockLength = i5 + 2;
        } else if (i4 != 3) {
            int i6 = i4 - 4;
            this.blockValuesPresent[i6] = true;
            bArr[i5] = b4;
            bArr[i5 + 1] = b4;
            bArr[i5 + 2] = b4;
            bArr[i5 + 3] = b4;
            bArr[i5 + 4] = (byte) i6;
            this.blockLength = i5 + 5;
        } else {
            bArr[i5] = b4;
            bArr[i5 + 1] = b4;
            bArr[i5 + 2] = b4;
            this.blockLength = i5 + 3;
        }
    }

    private void writeSymbolMap(ByteBuf byteBuf) {
        Bzip2BitWriter bzip2BitWriter = this.writer;
        boolean[] zArr = this.blockValuesPresent;
        boolean[] zArr2 = new boolean[16];
        for (int i2 = 0; i2 < 16; i2++) {
            int i4 = i2 << 4;
            int i5 = 0;
            while (i5 < 16) {
                if (zArr[i4]) {
                    zArr2[i2] = true;
                }
                i5++;
                i4++;
            }
        }
        for (int i6 = 0; i6 < 16; i6++) {
            bzip2BitWriter.writeBoolean(byteBuf, zArr2[i6]);
        }
        for (int i7 = 0; i7 < 16; i7++) {
            if (zArr2[i7]) {
                int i8 = i7 << 4;
                int i9 = 0;
                while (i9 < 16) {
                    bzip2BitWriter.writeBoolean(byteBuf, zArr[i8]);
                    i9++;
                    i8++;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int availableSize() {
        int i2 = this.blockLength;
        if (i2 == 0) {
            return this.blockLengthLimit + 2;
        }
        return (this.blockLengthLimit - i2) + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void close(ByteBuf byteBuf) {
        int i2 = this.rleLength;
        if (i2 > 0) {
            writeRun(this.rleCurrentValue & 255, i2);
        }
        byte[] bArr = this.block;
        bArr[this.blockLength] = bArr[0];
        int bwt = new Bzip2DivSufSort(this.block, this.bwtBlock, this.blockLength).bwt();
        Bzip2BitWriter bzip2BitWriter = this.writer;
        bzip2BitWriter.writeBits(byteBuf, 24, 3227993L);
        bzip2BitWriter.writeBits(byteBuf, 24, 2511705L);
        bzip2BitWriter.writeInt(byteBuf, this.crc.getCRC());
        bzip2BitWriter.writeBoolean(byteBuf, false);
        bzip2BitWriter.writeBits(byteBuf, 24, bwt);
        writeSymbolMap(byteBuf);
        Bzip2MTFAndRLE2StageEncoder bzip2MTFAndRLE2StageEncoder = new Bzip2MTFAndRLE2StageEncoder(this.bwtBlock, this.blockLength, this.blockValuesPresent);
        bzip2MTFAndRLE2StageEncoder.encode();
        new Bzip2HuffmanStageEncoder(bzip2BitWriter, bzip2MTFAndRLE2StageEncoder.mtfBlock(), bzip2MTFAndRLE2StageEncoder.mtfLength(), bzip2MTFAndRLE2StageEncoder.mtfAlphabetSize(), bzip2MTFAndRLE2StageEncoder.mtfSymbolFrequencies()).encode(byteBuf);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int crc() {
        return this.crc.getCRC();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isEmpty() {
        return this.blockLength == 0 && this.rleLength == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isFull() {
        return this.blockLength > this.blockLengthLimit;
    }

    boolean write(int i2) {
        if (this.blockLength > this.blockLengthLimit) {
            return false;
        }
        int i4 = this.rleCurrentValue;
        int i5 = this.rleLength;
        if (i5 == 0) {
            this.rleCurrentValue = i2;
            this.rleLength = 1;
        } else if (i4 != i2) {
            writeRun(i4 & 255, i5);
            this.rleCurrentValue = i2;
            this.rleLength = 1;
        } else if (i5 == 254) {
            writeRun(i4 & 255, 255);
            this.rleLength = 0;
        } else {
            this.rleLength = i5 + 1;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int write(ByteBuf byteBuf, int i2, int i4) {
        int forEachByte = byteBuf.forEachByte(i2, i4, this.writeProcessor);
        return forEachByte == -1 ? i4 : forEachByte - i2;
    }
}
