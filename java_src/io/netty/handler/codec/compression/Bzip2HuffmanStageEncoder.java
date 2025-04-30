package io.netty.handler.codec.compression;

import androidx.core.app.FrameMetricsAggregator;
import io.netty.buffer.ByteBuf;
import java.lang.reflect.Array;
import java.util.Arrays;
/* loaded from: classes5.dex */
final class Bzip2HuffmanStageEncoder {
    private static final int HUFFMAN_HIGH_SYMBOL_COST = 15;
    private final int[][] huffmanCodeLengths;
    private final int[][] huffmanMergedCodeSymbols;
    private final int mtfAlphabetSize;
    private final char[] mtfBlock;
    private final int mtfLength;
    private final int[] mtfSymbolFrequencies;
    private final byte[] selectors;
    private final Bzip2BitWriter writer;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bzip2HuffmanStageEncoder(Bzip2BitWriter bzip2BitWriter, char[] cArr, int i2, int i4, int[] iArr) {
        this.writer = bzip2BitWriter;
        this.mtfBlock = cArr;
        this.mtfLength = i2;
        this.mtfAlphabetSize = i4;
        this.mtfSymbolFrequencies = iArr;
        int selectTableCount = selectTableCount(i2);
        this.huffmanCodeLengths = (int[][]) Array.newInstance(int.class, selectTableCount, i4);
        this.huffmanMergedCodeSymbols = (int[][]) Array.newInstance(int.class, selectTableCount, i4);
        this.selectors = new byte[((i2 + 50) - 1) / 50];
    }

    private void assignHuffmanCodeSymbols() {
        int[][] iArr = this.huffmanMergedCodeSymbols;
        int[][] iArr2 = this.huffmanCodeLengths;
        int i2 = this.mtfAlphabetSize;
        int length = iArr2.length;
        for (int i4 = 0; i4 < length; i4++) {
            int[] iArr3 = iArr2[i4];
            int i5 = 32;
            int i6 = 0;
            for (int i7 = 0; i7 < i2; i7++) {
                int i8 = iArr3[i7];
                if (i8 > i6) {
                    i6 = i8;
                }
                if (i8 < i5) {
                    i5 = i8;
                }
            }
            int i9 = 0;
            while (i5 <= i6) {
                for (int i10 = 0; i10 < i2; i10++) {
                    if ((iArr2[i4][i10] & 255) == i5) {
                        iArr[i4][i10] = (i5 << 24) | i9;
                        i9++;
                    }
                }
                i9 <<= 1;
                i5++;
            }
        }
    }

    private static void generateHuffmanCodeLengths(int i2, int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[i2];
        int[] iArr4 = new int[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            iArr3[i4] = (iArr[i4] << 9) | i4;
        }
        Arrays.sort(iArr3);
        for (int i5 = 0; i5 < i2; i5++) {
            iArr4[i5] = iArr3[i5] >>> 9;
        }
        Bzip2HuffmanAllocator.allocateHuffmanCodeLengths(iArr4, 20);
        for (int i6 = 0; i6 < i2; i6++) {
            iArr2[iArr3[i6] & FrameMetricsAggregator.EVERY_DURATION] = iArr4[i6];
        }
    }

    private void generateHuffmanOptimisationSeeds() {
        int[][] iArr = this.huffmanCodeLengths;
        int[] iArr2 = this.mtfSymbolFrequencies;
        int i2 = this.mtfAlphabetSize;
        int length = iArr.length;
        int i4 = this.mtfLength;
        int i5 = -1;
        for (int i6 = 0; i6 < length; i6++) {
            int i7 = length - i6;
            int i8 = i4 / i7;
            int i9 = i5 + 1;
            int i10 = 0;
            while (i10 < i8 && i5 < i2 - 1) {
                i5++;
                i10 += iArr2[i5];
            }
            if (i5 > i9 && i6 != 0 && i6 != length - 1 && (i7 & 1) == 0) {
                i10 -= iArr2[i5];
                i5--;
            }
            int[] iArr3 = iArr[i6];
            for (int i11 = 0; i11 < i2; i11++) {
                if (i11 < i9 || i11 > i5) {
                    iArr3[i11] = 15;
                }
            }
            i4 -= i10;
        }
    }

    private void optimiseSelectorsAndHuffmanTables(boolean z3) {
        char[] cArr = this.mtfBlock;
        byte[] bArr = this.selectors;
        int[][] iArr = this.huffmanCodeLengths;
        int i2 = this.mtfLength;
        int i4 = this.mtfAlphabetSize;
        int length = iArr.length;
        int i5 = 1;
        int[][] iArr2 = (int[][]) Array.newInstance(int.class, length, i4);
        int i6 = 0;
        int i7 = 0;
        while (i6 < i2) {
            int min = Math.min(i6 + 50, i2) - i5;
            short[] sArr = new short[length];
            for (int i8 = i6; i8 <= min; i8++) {
                char c4 = cArr[i8];
                for (int i9 = 0; i9 < length; i9++) {
                    sArr[i9] = (short) (sArr[i9] + iArr[i9][c4]);
                }
            }
            short s3 = sArr[0];
            byte b4 = 0;
            for (byte b5 = 1; b5 < length; b5 = (byte) (b5 + 1)) {
                short s4 = sArr[b5];
                if (s4 < s3) {
                    s3 = s4;
                    b4 = b5;
                }
            }
            int[] iArr3 = iArr2[b4];
            while (i6 <= min) {
                char c5 = cArr[i6];
                iArr3[c5] = iArr3[c5] + 1;
                i6++;
            }
            if (z3) {
                bArr[i7] = b4;
                i7++;
            }
            i6 = min + 1;
            i5 = 1;
        }
        for (int i10 = 0; i10 < length; i10++) {
            generateHuffmanCodeLengths(i4, iArr2[i10], iArr[i10]);
        }
    }

    private static int selectTableCount(int i2) {
        if (i2 >= 2400) {
            return 6;
        }
        if (i2 >= 1200) {
            return 5;
        }
        if (i2 >= 600) {
            return 4;
        }
        return i2 >= 200 ? 3 : 2;
    }

    private void writeBlockData(ByteBuf byteBuf) {
        Bzip2BitWriter bzip2BitWriter = this.writer;
        int[][] iArr = this.huffmanMergedCodeSymbols;
        byte[] bArr = this.selectors;
        char[] cArr = this.mtfBlock;
        int i2 = this.mtfLength;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            int min = Math.min(i4 + 50, i2) - 1;
            int i6 = i5 + 1;
            int[] iArr2 = iArr[bArr[i5]];
            while (i4 <= min) {
                int i7 = i4 + 1;
                int i8 = iArr2[cArr[i4]];
                bzip2BitWriter.writeBits(byteBuf, i8 >>> 24, i8);
                i4 = i7;
            }
            i5 = i6;
        }
    }

    private void writeSelectorsAndHuffmanTables(ByteBuf byteBuf) {
        Bzip2BitWriter bzip2BitWriter = this.writer;
        byte[] bArr = this.selectors;
        int length = bArr.length;
        int[][] iArr = this.huffmanCodeLengths;
        int length2 = iArr.length;
        int i2 = this.mtfAlphabetSize;
        bzip2BitWriter.writeBits(byteBuf, 3, length2);
        bzip2BitWriter.writeBits(byteBuf, 15, length);
        Bzip2MoveToFrontTable bzip2MoveToFrontTable = new Bzip2MoveToFrontTable();
        for (byte b4 : bArr) {
            bzip2BitWriter.writeUnary(byteBuf, bzip2MoveToFrontTable.valueToFront(b4));
        }
        for (int[] iArr2 : iArr) {
            int i4 = iArr2[0];
            bzip2BitWriter.writeBits(byteBuf, 5, i4);
            int i5 = 0;
            while (i5 < i2) {
                int i6 = iArr2[i5];
                int i7 = i4 < i6 ? 2 : 3;
                int abs = Math.abs(i6 - i4);
                while (true) {
                    int i8 = abs - 1;
                    if (abs > 0) {
                        bzip2BitWriter.writeBits(byteBuf, 2, i7);
                        i2 = i2;
                        abs = i8;
                    }
                }
                bzip2BitWriter.writeBoolean(byteBuf, false);
                i5++;
                i4 = i6;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void encode(ByteBuf byteBuf) {
        generateHuffmanOptimisationSeeds();
        int i2 = 3;
        while (i2 >= 0) {
            optimiseSelectorsAndHuffmanTables(i2 == 0);
            i2--;
        }
        assignHuffmanCodeSymbols();
        writeSelectorsAndHuffmanTables(byteBuf);
        writeBlockData(byteBuf);
    }
}
