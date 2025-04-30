package io.netty.handler.codec.compression;
/* loaded from: classes5.dex */
final class Bzip2HuffmanAllocator {
    private Bzip2HuffmanAllocator() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void allocateHuffmanCodeLengths(int[] iArr, int i2) {
        int length = iArr.length;
        if (length != 1) {
            if (length != 2) {
                setExtendedParentPointers(iArr);
                int findNodesToRelocate = findNodesToRelocate(iArr, i2);
                if (iArr[0] % iArr.length >= findNodesToRelocate) {
                    allocateNodeLengths(iArr);
                    return;
                } else {
                    allocateNodeLengthsWithRelocation(iArr, findNodesToRelocate, i2 - (32 - Integer.numberOfLeadingZeros(findNodesToRelocate - 1)));
                    return;
                }
            }
            iArr[1] = 1;
        }
        iArr[0] = 1;
    }

    private static void allocateNodeLengths(int[] iArr) {
        int i2 = 2;
        int length = iArr.length - 2;
        int i4 = 1;
        int length2 = iArr.length - 1;
        while (i2 > 0) {
            int first = first(iArr, length - 1, 0);
            int i5 = length - first;
            int i6 = i2 - i5;
            while (i6 > 0) {
                iArr[length2] = i4;
                i6--;
                length2--;
            }
            i2 = i5 << 1;
            i4++;
            length = first;
        }
    }

    private static void allocateNodeLengthsWithRelocation(int[] iArr, int i2, int i4) {
        int length = iArr.length - 2;
        int length2 = iArr.length - 1;
        int i5 = i4 != 1 ? 1 : 2;
        int i6 = i4 == 1 ? i2 - 2 : i2;
        int i7 = i5 << 1;
        while (i7 > 0) {
            int first = length <= i2 ? length : first(iArr, length - 1, i2);
            int i8 = 0;
            if (i5 >= i4) {
                i8 = Math.min(i6, 1 << (i5 - i4));
            } else if (i5 == i4 - 1) {
                if (iArr[first] == length) {
                    first++;
                }
                i8 = 1;
            }
            int i9 = (length - first) + i8;
            int i10 = i7 - i9;
            while (i10 > 0) {
                iArr[length2] = i5;
                i10--;
                length2--;
            }
            i6 -= i8;
            i7 = i9 << 1;
            i5++;
            length = first;
        }
    }

    private static int findNodesToRelocate(int[] iArr, int i2) {
        int length = iArr.length - 2;
        for (int i4 = 1; i4 < i2 - 1 && length > 1; i4++) {
            length = first(iArr, length - 1, 0);
        }
        return length;
    }

    private static int first(int[] iArr, int i2, int i4) {
        int length = iArr.length;
        int length2 = iArr.length - 2;
        int i5 = i2;
        while (i5 >= i4 && iArr[i5] % length > i2) {
            length2 = i5;
            i5 -= (i2 - i5) + 1;
        }
        int max = Math.max(i4 - 1, i5);
        while (length2 > max + 1) {
            int i6 = (max + length2) >>> 1;
            if (iArr[i6] % length > i2) {
                length2 = i6;
            } else {
                max = i6;
            }
        }
        return length2;
    }

    private static void setExtendedParentPointers(int[] iArr) {
        int i2;
        int i4;
        int length = iArr.length;
        int i5 = 0;
        iArr[0] = iArr[0] + iArr[1];
        int i6 = 2;
        for (int i7 = 1; i7 < length - 1; i7++) {
            if (i6 < length && iArr[i5] >= iArr[i6]) {
                i2 = iArr[i6];
                i6++;
            } else {
                i2 = iArr[i5];
                iArr[i5] = i7;
                i5++;
            }
            if (i6 < length && (i5 >= i7 || iArr[i5] >= iArr[i6])) {
                i4 = i2 + iArr[i6];
                i6++;
            } else {
                i4 = i2 + iArr[i5];
                iArr[i5] = i7 + length;
                i5++;
            }
            iArr[i7] = i4;
        }
    }
}
