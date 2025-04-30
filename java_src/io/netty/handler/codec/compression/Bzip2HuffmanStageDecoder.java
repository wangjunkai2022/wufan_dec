package io.netty.handler.codec.compression;

import com.join.mgps.socket.fight.arena.a;
import java.lang.reflect.Array;
/* loaded from: classes5.dex */
final class Bzip2HuffmanStageDecoder {
    final int alphabetSize;
    private final int[][] codeBases;
    private final int[][] codeLimits;
    private final int[][] codeSymbols;
    int currentAlpha;
    int currentGroup;
    int currentSelector;
    private int currentTable;
    private final int[] minimumLengths;
    boolean modifyLength;
    private final Bzip2BitReader reader;
    byte[] selectors;
    final byte[][] tableCodeLengths;
    final int totalTables;
    private int groupIndex = -1;
    private int groupPosition = -1;
    final Bzip2MoveToFrontTable tableMTF = new Bzip2MoveToFrontTable();
    int currentLength = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bzip2HuffmanStageDecoder(Bzip2BitReader bzip2BitReader, int i2, int i4) {
        this.reader = bzip2BitReader;
        this.totalTables = i2;
        this.alphabetSize = i4;
        this.minimumLengths = new int[i2];
        this.codeBases = (int[][]) Array.newInstance(int.class, i2, 25);
        this.codeLimits = (int[][]) Array.newInstance(int.class, i2, 24);
        this.codeSymbols = (int[][]) Array.newInstance(int.class, i2, a.f52158i);
        this.tableCodeLengths = (byte[][]) Array.newInstance(byte.class, i2, a.f52158i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void createHuffmanDecodingTables() {
        int i2 = this.alphabetSize;
        int i4 = 0;
        while (true) {
            byte[][] bArr = this.tableCodeLengths;
            if (i4 < bArr.length) {
                int[] iArr = this.codeBases[i4];
                int[] iArr2 = this.codeLimits[i4];
                int[] iArr3 = this.codeSymbols[i4];
                byte[] bArr2 = bArr[i4];
                int i5 = 23;
                int i6 = 0;
                for (int i7 = 0; i7 < i2; i7++) {
                    byte b4 = bArr2[i7];
                    i6 = Math.max((int) b4, i6);
                    i5 = Math.min((int) b4, i5);
                }
                this.minimumLengths[i4] = i5;
                for (int i8 = 0; i8 < i2; i8++) {
                    int i9 = bArr2[i8] + 1;
                    iArr[i9] = iArr[i9] + 1;
                }
                int i10 = iArr[0];
                for (int i11 = 1; i11 < 25; i11++) {
                    i10 += iArr[i11];
                    iArr[i11] = i10;
                }
                int i12 = i5;
                int i13 = 0;
                while (i12 <= i6) {
                    int i14 = i12 + 1;
                    int i15 = (iArr[i14] - iArr[i12]) + i13;
                    iArr[i12] = i13 - iArr[i12];
                    iArr2[i12] = i15 - 1;
                    i13 = i15 << 1;
                    i12 = i14;
                }
                int i16 = 0;
                while (i5 <= i6) {
                    for (int i17 = 0; i17 < i2; i17++) {
                        if (bArr2[i17] == i5) {
                            iArr3[i16] = i17;
                            i16++;
                        }
                    }
                    i5++;
                }
                i4++;
            } else {
                this.currentTable = this.selectors[0];
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int nextSymbol() {
        int i2 = this.groupPosition + 1;
        this.groupPosition = i2;
        if (i2 % 50 == 0) {
            int i4 = this.groupIndex + 1;
            this.groupIndex = i4;
            byte[] bArr = this.selectors;
            if (i4 != bArr.length) {
                this.currentTable = bArr[i4] & 255;
            } else {
                throw new DecompressionException("error decoding block");
            }
        }
        Bzip2BitReader bzip2BitReader = this.reader;
        int i5 = this.currentTable;
        int[] iArr = this.codeLimits[i5];
        int[] iArr2 = this.codeBases[i5];
        int[] iArr3 = this.codeSymbols[i5];
        int i6 = this.minimumLengths[i5];
        int readBits = bzip2BitReader.readBits(i6);
        while (i6 <= 23) {
            if (readBits <= iArr[i6]) {
                return iArr3[readBits - iArr2[i6]];
            }
            readBits = (readBits << 1) | bzip2BitReader.readBits(1);
            i6++;
        }
        throw new DecompressionException("a valid code was not recognised");
    }
}
