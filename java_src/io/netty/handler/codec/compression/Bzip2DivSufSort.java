package io.netty.handler.codec.compression;
/* loaded from: classes5.dex */
final class Bzip2DivSufSort {
    private static final int BUCKET_A_SIZE = 256;
    private static final int BUCKET_B_SIZE = 65536;
    private static final int INSERTIONSORT_THRESHOLD = 8;
    private static final int[] LOG_2_TABLE = {-1, 0, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7};
    private static final int SS_BLOCKSIZE = 1024;
    private static final int STACK_SIZE = 64;
    private final int[] SA;
    private final byte[] T;

    /* renamed from: n  reason: collision with root package name */
    private final int f65744n;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class PartitionResult {
        final int first;
        final int last;

        PartitionResult(int i2, int i4) {
            this.first = i2;
            this.last = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class StackEntry {

        /* renamed from: a  reason: collision with root package name */
        final int f65745a;

        /* renamed from: b  reason: collision with root package name */
        final int f65746b;

        /* renamed from: c  reason: collision with root package name */
        final int f65747c;

        /* renamed from: d  reason: collision with root package name */
        final int f65748d;

        StackEntry(int i2, int i4, int i5, int i6) {
            this.f65745a = i2;
            this.f65746b = i4;
            this.f65747c = i5;
            this.f65748d = i6;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class TRBudget {
        int budget;
        int chance;

        TRBudget(int i2, int i4) {
            this.budget = i2;
            this.chance = i4;
        }

        boolean update(int i2, int i4) {
            int i5 = this.budget - i4;
            this.budget = i5;
            if (i5 <= 0) {
                int i6 = this.chance - 1;
                this.chance = i6;
                if (i6 == 0) {
                    return false;
                }
                this.budget = i5 + i2;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bzip2DivSufSort(byte[] bArr, int[] iArr, int i2) {
        this.T = bArr;
        this.SA = iArr;
        this.f65744n = i2;
    }

    private static int BUCKET_B(int i2, int i4) {
        return i2 | (i4 << 8);
    }

    private static int BUCKET_BSTAR(int i2, int i4) {
        return (i2 << 8) | i4;
    }

    private int constructBWT(int[] iArr, int[] iArr2) {
        byte[] bArr = this.T;
        int[] iArr3 = this.SA;
        int i2 = this.f65744n;
        int i4 = 254;
        int i5 = 0;
        int i6 = 0;
        while (i4 >= 0) {
            int i7 = i4 + 1;
            int i8 = iArr2[BUCKET_BSTAR(i4, i7)];
            int i9 = 0;
            int i10 = -1;
            for (int i11 = iArr[i7]; i8 <= i11; i11--) {
                int i12 = iArr3[i11];
                if (i12 >= 0) {
                    int i13 = i12 - 1;
                    if (i13 < 0) {
                        i13 = i2 - 1;
                    }
                    int i14 = bArr[i13] & 255;
                    if (i14 <= i4) {
                        iArr3[i11] = i12 ^ (-1);
                        if (i13 > 0 && (bArr[i13 - 1] & 255) > i14) {
                            i13 ^= -1;
                        }
                        if (i10 == i14) {
                            i9--;
                            iArr3[i9] = i13;
                        } else {
                            if (i10 >= 0) {
                                iArr2[BUCKET_B(i10, i4)] = i9;
                            }
                            i9 = iArr2[BUCKET_B(i14, i4)] - 1;
                            iArr3[i9] = i13;
                            i10 = i14;
                        }
                    }
                } else {
                    iArr3[i11] = i12 ^ (-1);
                }
            }
            i4--;
            i5 = i9;
            i6 = i10;
        }
        int i15 = -1;
        for (int i16 = 0; i16 < i2; i16++) {
            int i17 = iArr3[i16];
            if (i17 >= 0) {
                int i18 = i17 - 1;
                if (i18 < 0) {
                    i18 = i2 - 1;
                }
                int i19 = bArr[i18] & 255;
                if (i19 >= (bArr[i18 + 1] & 255)) {
                    if (i18 > 0 && (bArr[i18 - 1] & 255) < i19) {
                        i18 ^= -1;
                    }
                    if (i19 == i6) {
                        i5++;
                        iArr3[i5] = i18;
                    } else {
                        if (i6 != -1) {
                            iArr[i6] = i5;
                        }
                        i5 = iArr[i19] + 1;
                        iArr3[i5] = i18;
                        i6 = i19;
                    }
                }
            } else {
                i17 ^= -1;
            }
            if (i17 == 0) {
                iArr3[i16] = bArr[i2 - 1];
                i15 = i16;
            } else {
                iArr3[i16] = bArr[i17 - 1];
            }
        }
        return i15;
    }

    private static int getIDX(int i2) {
        return i2 >= 0 ? i2 : i2 ^ (-1);
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x01bf A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0135 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0105  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x0129 -> B:56:0x00fd). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void lsIntroSort(int r21, int r22, int r23, int r24, int r25) {
        /*
            Method dump skipped, instructions count: 463
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.codec.compression.Bzip2DivSufSort.lsIntroSort(int, int, int, int, int):void");
    }

    private void lsSort(int i2, int i4, int i5) {
        int i6;
        int[] iArr = this.SA;
        int i7 = i5 + i2;
        while (true) {
            int i8 = 0;
            if ((-i4) >= iArr[0]) {
                return;
            }
            int i9 = 0;
            int i10 = 0;
            do {
                int i11 = iArr[i10];
                if (i11 < 0) {
                    i10 -= i11;
                    i9 += i11;
                    continue;
                } else {
                    if (i9 != 0) {
                        iArr[i10 + i9] = i9;
                        i6 = 0;
                    } else {
                        i6 = i9;
                    }
                    int i12 = iArr[i11 + i2] + 1;
                    lsIntroSort(i2, i7, i2 + i4, i10, i12);
                    i9 = i6;
                    i10 = i12;
                    continue;
                }
            } while (i10 < i4);
            if (i9 != 0) {
                iArr[i10 + i9] = i9;
            }
            int i13 = i7 - i2;
            if (i4 < i13) {
                do {
                    int i14 = iArr[i8];
                    if (i14 < 0) {
                        i8 -= i14;
                        continue;
                    } else {
                        int i15 = iArr[i14 + i2] + 1;
                        while (i8 < i15) {
                            iArr[iArr[i8] + i2] = i8;
                            i8++;
                        }
                        i8 = i15;
                        continue;
                    }
                } while (i8 < i4);
                return;
            }
            i7 += i13;
        }
    }

    private void lsUpdateGroup(int i2, int i4, int i5) {
        int[] iArr = this.SA;
        while (i4 < i5) {
            if (iArr[i4] >= 0) {
                int i6 = i4;
                do {
                    iArr[iArr[i6] + i2] = i6;
                    i6++;
                    if (i6 >= i5) {
                        break;
                    }
                } while (iArr[i6] >= 0);
                iArr[i4] = i4 - i6;
                if (i5 <= i6) {
                    return;
                }
                i4 = i6;
            }
            int i7 = i4;
            do {
                iArr[i7] = iArr[i7] ^ (-1);
                i7++;
            } while (iArr[i7] < 0);
            do {
                iArr[iArr[i4] + i2] = i7;
                i4++;
            } while (i4 <= i7);
            i4 = i7 + 1;
        }
    }

    private int sortTypeBstar(int[] iArr, int[] iArr2) {
        boolean z3;
        int i2;
        int i4;
        int i5;
        int i6;
        int[] iArr3;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        byte[] bArr = this.T;
        int[] iArr4 = this.SA;
        int i15 = this.f65744n;
        int[] iArr5 = new int[256];
        int i16 = 1;
        while (true) {
            if (i16 >= i15) {
                break;
            }
            int i17 = i16 - 1;
            if (bArr[i17] == bArr[i16]) {
                i16++;
            } else if ((bArr[i17] & 255) > (bArr[i16] & 255)) {
                z3 = false;
            }
        }
        z3 = true;
        int i18 = i15 - 1;
        int i19 = bArr[i18] & 255;
        int i20 = bArr[0] & 255;
        if (i19 < i20 || (bArr[i18] == bArr[0] && z3)) {
            if (!z3) {
                int BUCKET_BSTAR = BUCKET_BSTAR(i19, i20);
                iArr2[BUCKET_BSTAR] = iArr2[BUCKET_BSTAR] + 1;
                i2 = i15 - 1;
                iArr4[i2] = i18;
            } else {
                int BUCKET_B = BUCKET_B(i19, i20);
                iArr2[BUCKET_B] = iArr2[BUCKET_B] + 1;
                i2 = i15;
            }
            i4 = i18 - 1;
            while (i4 >= 0) {
                int i21 = bArr[i4] & 255;
                int i22 = bArr[i4 + 1] & 255;
                if (i21 <= i22) {
                    int BUCKET_B2 = BUCKET_B(i21, i22);
                    iArr2[BUCKET_B2] = iArr2[BUCKET_B2] + 1;
                    i4--;
                }
            }
        } else {
            i2 = i15;
            i4 = i18;
        }
        while (i4 >= 0) {
            do {
                int i23 = bArr[i4] & 255;
                iArr[i23] = iArr[i23] + 1;
                i4--;
                if (i4 < 0) {
                    break;
                }
            } while ((bArr[i4] & 255) >= (bArr[i4 + 1] & 255));
            if (i4 >= 0) {
                int BUCKET_BSTAR2 = BUCKET_BSTAR(bArr[i4] & 255, bArr[i4 + 1] & 255);
                iArr2[BUCKET_BSTAR2] = iArr2[BUCKET_BSTAR2] + 1;
                i2--;
                iArr4[i2] = i4;
                while (true) {
                    i4--;
                    if (i4 >= 0 && (i13 = bArr[i4] & 255) <= (i14 = bArr[i4 + 1] & 255)) {
                        int BUCKET_B3 = BUCKET_B(i13, i14);
                        iArr2[BUCKET_B3] = iArr2[BUCKET_B3] + 1;
                    }
                }
            }
        }
        int i24 = i15 - i2;
        if (i24 == 0) {
            for (int i25 = 0; i25 < i15; i25++) {
                iArr4[i25] = i25;
            }
            return 0;
        }
        int i26 = 0;
        int i27 = -1;
        int i28 = 0;
        while (i26 < 256) {
            int i29 = iArr[i26] + i27;
            iArr[i26] = i27 + i28;
            int i30 = i29 + iArr2[BUCKET_B(i26, i26)];
            int i31 = i26 + 1;
            for (int i32 = i31; i32 < 256; i32++) {
                i28 += iArr2[BUCKET_BSTAR(i26, i32)];
                iArr2[(i26 << 8) | i32] = i28;
                i30 += iArr2[BUCKET_B(i26, i32)];
            }
            i26 = i31;
            i27 = i30;
        }
        int i33 = i15 - i24;
        for (int i34 = i24 - 2; i34 >= 0; i34--) {
            int i35 = iArr4[i33 + i34];
            int BUCKET_BSTAR3 = BUCKET_BSTAR(bArr[i35] & 255, bArr[i35 + 1] & 255);
            int i36 = iArr2[BUCKET_BSTAR3] - 1;
            iArr2[BUCKET_BSTAR3] = i36;
            iArr4[i36] = i34;
        }
        int i37 = iArr4[(i33 + i24) - 1];
        int BUCKET_BSTAR4 = BUCKET_BSTAR(bArr[i37] & 255, bArr[i37 + 1] & 255);
        int i38 = iArr2[BUCKET_BSTAR4] - 1;
        iArr2[BUCKET_BSTAR4] = i38;
        int i39 = i24 - 1;
        iArr4[i38] = i39;
        int i40 = i15 - (i24 * 2);
        if (i40 <= 256) {
            iArr3 = iArr5;
            i5 = 256;
            i6 = 0;
        } else {
            i5 = i40;
            i6 = i24;
            iArr3 = iArr4;
        }
        int i41 = i24;
        int i42 = 255;
        while (i41 > 0) {
            int i43 = i41;
            int i44 = 255;
            while (i42 < i44) {
                int i45 = iArr2[BUCKET_BSTAR(i42, i44)];
                if (1 < i43 - i45) {
                    i9 = i44;
                    i10 = i42;
                    i11 = i39;
                    i12 = i24;
                    subStringSort(i33, i45, i43, iArr3, i6, i5, 2, iArr4[i45] == i39, i15);
                } else {
                    i9 = i44;
                    i10 = i42;
                    i11 = i39;
                    i12 = i24;
                }
                i44 = i9 - 1;
                i24 = i12;
                i43 = i45;
                i42 = i10;
                i39 = i11;
            }
            i42--;
            i41 = i43;
        }
        int i46 = i39;
        int i47 = i24;
        while (i39 >= 0) {
            if (iArr4[i39] >= 0) {
                int i48 = i39;
                do {
                    iArr4[i47 + iArr4[i48]] = i48;
                    i48--;
                    if (i48 < 0) {
                        break;
                    }
                } while (iArr4[i48] >= 0);
                iArr4[i48 + 1] = i48 - i39;
                if (i48 <= 0) {
                    break;
                }
                i39 = i48;
            }
            int i49 = i39;
            do {
                int i50 = iArr4[i49] ^ (-1);
                iArr4[i49] = i50;
                iArr4[i47 + i50] = i39;
                i49--;
            } while (iArr4[i49] < 0);
            iArr4[i47 + iArr4[i49]] = i39;
            i39 = i49 - 1;
        }
        trSort(i47, i47, 1);
        if ((bArr[i18] & 255) < (bArr[0] & 255) || (bArr[i18] == bArr[0] && z3)) {
            if (z3) {
                i7 = i47;
            } else {
                i7 = i47 - 1;
                iArr4[iArr4[i47 + i7]] = i18;
            }
            i8 = i18 - 1;
            while (i8 >= 0 && (bArr[i8] & 255) <= (bArr[i8 + 1] & 255)) {
                i8--;
            }
        } else {
            i7 = i47;
            i8 = i18;
        }
        while (i8 >= 0) {
            do {
                i8--;
                if (i8 < 0) {
                    break;
                }
            } while ((bArr[i8] & 255) >= (bArr[i8 + 1] & 255));
            if (i8 >= 0) {
                i7--;
                iArr4[iArr4[i47 + i7]] = i8;
                do {
                    i8--;
                    if (i8 >= 0) {
                    }
                } while ((bArr[i8] & 255) <= (bArr[i8 + 1] & 255));
            }
        }
        int i51 = i46;
        for (int i52 = 255; i52 >= 0; i52--) {
            for (int i53 = 255; i52 < i53; i53--) {
                int i54 = i18 - iArr2[BUCKET_B(i52, i53)];
                iArr2[BUCKET_B(i52, i53)] = i18 + 1;
                int i55 = iArr2[BUCKET_BSTAR(i52, i53)];
                i18 = i54;
                while (i55 <= i51) {
                    iArr4[i18] = iArr4[i51];
                    i18--;
                    i51--;
                }
            }
            int i56 = i18 - iArr2[BUCKET_B(i52, i52)];
            iArr2[BUCKET_B(i52, i52)] = i18 + 1;
            if (i52 < 255) {
                iArr2[BUCKET_BSTAR(i52, i52 + 1)] = i56 + 1;
            }
            i18 = iArr[i52];
        }
        return i47;
    }

    private static void ssBlockSwap(int[] iArr, int i2, int[] iArr2, int i4, int i5) {
        while (i5 > 0) {
            swapElements(iArr, i2, iArr2, i4);
            i5--;
            i2++;
            i4++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0033, code lost:
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:?, code lost:
        return (r1[r5] & 255) - (r1[r7] & 255);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
        if (r7 >= r3) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int ssCompare(int r5, int r6, int r7) {
        /*
            r4 = this;
            int[] r0 = r4.SA
            byte[] r1 = r4.T
            int r2 = r5 + 1
            r2 = r0[r2]
            int r2 = r2 + 2
            int r3 = r6 + 1
            r3 = r0[r3]
            int r3 = r3 + 2
            r5 = r0[r5]
            int r5 = r5 + r7
            r6 = r0[r6]
            int r7 = r7 + r6
        L16:
            if (r5 >= r2) goto L25
            if (r7 >= r3) goto L25
            r6 = r1[r5]
            r0 = r1[r7]
            if (r6 != r0) goto L25
            int r5 = r5 + 1
            int r7 = r7 + 1
            goto L16
        L25:
            if (r5 >= r2) goto L35
            if (r7 >= r3) goto L33
            r5 = r1[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            r6 = r1[r7]
            r6 = r6 & 255(0xff, float:3.57E-43)
            int r5 = r5 - r6
            goto L3a
        L33:
            r5 = 1
            goto L3a
        L35:
            if (r7 >= r3) goto L39
            r5 = -1
            goto L3a
        L39:
            r5 = 0
        L3a:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.codec.compression.Bzip2DivSufSort.ssCompare(int, int, int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
        return (r1[r7] & 255) - (r1[r9] & 255);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0047, code lost:
        if (r9 >= r8) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:?, code lost:
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:?, code lost:
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:?, code lost:
        return (r1[r7] & 255) - (r1[r9] & 255);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
        if (r9 >= r8) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int ssCompareLast(int r6, int r7, int r8, int r9, int r10) {
        /*
            r5 = this;
            int[] r0 = r5.SA
            byte[] r1 = r5.T
            r7 = r0[r7]
            int r7 = r7 + r9
            r2 = r0[r8]
            int r9 = r9 + r2
            r2 = 1
            int r8 = r8 + r2
            r8 = r0[r8]
            int r8 = r8 + 2
        L10:
            if (r7 >= r10) goto L1f
            if (r9 >= r8) goto L1f
            r3 = r1[r7]
            r4 = r1[r9]
            if (r3 != r4) goto L1f
            int r7 = r7 + 1
            int r9 = r9 + 1
            goto L10
        L1f:
            if (r7 >= r10) goto L2e
            if (r9 >= r8) goto L2d
            r6 = r1[r7]
            r6 = r6 & 255(0xff, float:3.57E-43)
            r7 = r1[r9]
            r7 = r7 & 255(0xff, float:3.57E-43)
            int r2 = r6 - r7
        L2d:
            return r2
        L2e:
            if (r9 != r8) goto L31
            return r2
        L31:
            int r7 = r7 % r10
            r6 = r0[r6]
            int r6 = r6 + 2
        L36:
            if (r7 >= r6) goto L45
            if (r9 >= r8) goto L45
            r10 = r1[r7]
            r0 = r1[r9]
            if (r10 != r0) goto L45
            int r7 = r7 + 1
            int r9 = r9 + 1
            goto L36
        L45:
            if (r7 >= r6) goto L54
            if (r9 >= r8) goto L59
            r6 = r1[r7]
            r6 = r6 & 255(0xff, float:3.57E-43)
            r7 = r1[r9]
            r7 = r7 & 255(0xff, float:3.57E-43)
            int r2 = r6 - r7
            goto L59
        L54:
            if (r9 >= r8) goto L58
            r2 = -1
            goto L59
        L58:
            r2 = 0
        L59:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.codec.compression.Bzip2DivSufSort.ssCompareLast(int, int, int, int, int):int");
    }

    private void ssFixdown(int i2, int i4, int i5, int i6, int i7) {
        int[] iArr = this.SA;
        byte[] bArr = this.T;
        int i8 = iArr[i5 + i6];
        int i9 = bArr[iArr[i4 + i8] + i2] & 255;
        while (true) {
            int i10 = (i6 * 2) + 1;
            if (i10 >= i7) {
                break;
            }
            int i11 = i10 + 1;
            int i12 = bArr[iArr[iArr[i5 + i10] + i4] + i2] & 255;
            int i13 = bArr[iArr[iArr[i5 + i11] + i4] + i2] & 255;
            if (i12 < i13) {
                i10 = i11;
                i12 = i13;
            }
            if (i12 <= i9) {
                break;
            }
            iArr[i6 + i5] = iArr[i5 + i10];
            i6 = i10;
        }
        iArr[i5 + i6] = i8;
    }

    private void ssHeapSort(int i2, int i4, int i5, int i6) {
        int i7;
        int[] iArr = this.SA;
        byte[] bArr = this.T;
        int i8 = i6 % 2;
        if (i8 == 0) {
            int i9 = i6 - 1;
            int i10 = (i9 / 2) + i5;
            int i11 = i5 + i9;
            if ((bArr[iArr[iArr[i10] + i4] + i2] & 255) < (bArr[iArr[iArr[i11] + i4] + i2] & 255)) {
                swapElements(iArr, i11, iArr, i10);
            }
            i7 = i9;
        } else {
            i7 = i6;
        }
        for (int i12 = (i7 / 2) - 1; i12 >= 0; i12--) {
            ssFixdown(i2, i4, i5, i12, i7);
        }
        if (i8 == 0) {
            swapElements(iArr, i5, iArr, i5 + i7);
            ssFixdown(i2, i4, i5, 0, i7);
        }
        for (int i13 = i7 - 1; i13 > 0; i13--) {
            int i14 = iArr[i5];
            int i15 = i5 + i13;
            iArr[i5] = iArr[i15];
            ssFixdown(i2, i4, i5, 0, i13);
            iArr[i15] = i14;
        }
    }

    private void ssInsertionSort(int i2, int i4, int i5, int i6) {
        int ssCompare;
        int[] iArr = this.SA;
        for (int i7 = i5 - 2; i4 <= i7; i7--) {
            int i8 = iArr[i7];
            int i9 = i7 + 1;
            do {
                ssCompare = ssCompare(i2 + i8, iArr[i9] + i2, i6);
                if (ssCompare <= 0) {
                    break;
                }
                do {
                    iArr[i9 - 1] = iArr[i9];
                    i9++;
                    if (i9 < i5) {
                    }
                } while (iArr[i9] < 0);
                continue;
            } while (i5 > i9);
            if (ssCompare == 0) {
                iArr[i9] = iArr[i9] ^ (-1);
            }
            iArr[i9 - 1] = i8;
        }
    }

    private static int ssLog(int i2) {
        return (65280 & i2) != 0 ? LOG_2_TABLE[(i2 >> 8) & 255] + 8 : LOG_2_TABLE[i2 & 255];
    }

    private int ssMedian3(int i2, int i4, int i5, int i6, int i7) {
        int[] iArr = this.SA;
        byte[] bArr = this.T;
        int i8 = bArr[iArr[iArr[i5] + i4] + i2] & 255;
        int i9 = bArr[iArr[iArr[i6] + i4] + i2] & 255;
        int i10 = bArr[i2 + iArr[i4 + iArr[i7]]] & 255;
        if (i8 <= i9) {
            i6 = i5;
            i5 = i6;
            i9 = i8;
            i8 = i9;
        }
        return i8 > i10 ? i9 > i10 ? i6 : i7 : i5;
    }

    private int ssMedian5(int i2, int i4, int i5, int i6, int i7, int i8, int i9) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int[] iArr = this.SA;
        byte[] bArr = this.T;
        int i19 = bArr[iArr[iArr[i5] + i4] + i2] & 255;
        int i20 = bArr[iArr[iArr[i6] + i4] + i2] & 255;
        int i21 = bArr[iArr[iArr[i7] + i4] + i2] & 255;
        int i22 = bArr[iArr[iArr[i8] + i4] + i2] & 255;
        int i23 = bArr[iArr[iArr[i9] + i4] + i2] & 255;
        if (i20 > i21) {
            i10 = i7;
            i11 = i20;
            i12 = i6;
        } else {
            i10 = i6;
            i11 = i21;
            i21 = i20;
            i12 = i7;
        }
        if (i22 > i23) {
            i14 = i23;
            i13 = i22;
            i16 = i8;
            i15 = i9;
        } else {
            i13 = i23;
            i14 = i22;
            i15 = i8;
            i16 = i9;
        }
        if (i21 > i14) {
            int i24 = i12;
            i12 = i16;
            i16 = i24;
            int i25 = i13;
            i13 = i11;
            i11 = i25;
        } else {
            i10 = i15;
            i21 = i14;
        }
        if (i19 > i11) {
            i17 = i19;
            i18 = i5;
        } else {
            i17 = i11;
            i11 = i19;
            i18 = i12;
            i12 = i5;
        }
        if (i11 > i21) {
            i10 = i12;
            i21 = i11;
        } else {
            i16 = i18;
            i13 = i17;
        }
        return i13 > i21 ? i10 : i16;
    }

    private void ssMerge(int i2, int i4, int i5, int i6, int[] iArr, int i7, int i8, int i9) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int[] iArr2 = this.SA;
        StackEntry[] stackEntryArr = new StackEntry[64];
        int i15 = i4;
        int i16 = i5;
        int i17 = i6;
        int i18 = 0;
        int i19 = 0;
        while (true) {
            int i20 = i17 - i16;
            if (i20 <= i8) {
                if (i15 >= i16 || i16 >= i17) {
                    i10 = i17;
                } else {
                    i10 = i17;
                    ssMergeBackward(i2, iArr, i7, i15, i16, i17, i9);
                }
                if ((i18 & 1) != 0) {
                    ssMergeCheckEqual(i2, i9, i15);
                }
                if ((i18 & 2) != 0) {
                    ssMergeCheckEqual(i2, i9, i10);
                }
                if (i19 == 0) {
                    return;
                }
                i19--;
                StackEntry stackEntry = stackEntryArr[i19];
                i15 = stackEntry.f65745a;
                i16 = stackEntry.f65746b;
                i17 = stackEntry.f65747c;
                i11 = stackEntry.f65748d;
            } else {
                int i21 = i17;
                int i22 = i16 - i15;
                if (i22 <= i8) {
                    if (i15 < i16) {
                        ssMergeForward(i2, iArr, i7, i15, i16, i21, i9);
                    }
                    if ((i18 & 1) != 0) {
                        ssMergeCheckEqual(i2, i9, i15);
                    }
                    if ((i18 & 2) != 0) {
                        ssMergeCheckEqual(i2, i9, i21);
                    }
                    if (i19 == 0) {
                        return;
                    }
                    i19--;
                    StackEntry stackEntry2 = stackEntryArr[i19];
                    i15 = stackEntry2.f65745a;
                    i16 = stackEntry2.f65746b;
                    i17 = stackEntry2.f65747c;
                    i11 = stackEntry2.f65748d;
                } else {
                    int min = Math.min(i22, i20);
                    int i23 = min >> 1;
                    int i24 = 0;
                    while (min > 0) {
                        if (ssCompare(getIDX(iArr2[i16 + i24 + i23]) + i2, getIDX(iArr2[((i16 - i24) - i23) - 1]) + i2, i9) < 0) {
                            i24 += i23 + 1;
                            i23 -= (min & 1) ^ 1;
                        }
                        min = i23;
                        i23 = min >> 1;
                    }
                    if (i24 > 0) {
                        int i25 = i16 - i24;
                        ssBlockSwap(iArr2, i25, iArr2, i16, i24);
                        int i26 = i16 + i24;
                        if (i26 < i21) {
                            if (iArr2[i26] < 0) {
                                i14 = i16;
                                while (iArr2[i14 - 1] < 0) {
                                    i14--;
                                }
                                iArr2[i26] = iArr2[i26] ^ (-1);
                            } else {
                                i14 = i16;
                            }
                            i12 = i16;
                            while (iArr2[i12] < 0) {
                                i12++;
                            }
                            i17 = i14;
                            i13 = 1;
                        } else {
                            i12 = i16;
                            i17 = i12;
                            i13 = 0;
                        }
                        if (i17 - i15 <= i21 - i12) {
                            stackEntryArr[i19] = new StackEntry(i12, i26, i21, (i13 & 1) | (i18 & 2));
                            i18 &= 1;
                            i16 = i25;
                            i19++;
                        } else {
                            if (i17 == i16 && i16 == i12) {
                                i13 <<= 1;
                            }
                            stackEntryArr[i19] = new StackEntry(i15, i25, i17, (i18 & 1) | (i13 & 2));
                            i18 = (i18 & 2) | (i13 & 1);
                            i16 = i26;
                            i19++;
                            i15 = i12;
                            i17 = i21;
                        }
                    } else {
                        if ((i18 & 1) != 0) {
                            ssMergeCheckEqual(i2, i9, i15);
                        }
                        ssMergeCheckEqual(i2, i9, i16);
                        if ((i18 & 2) != 0) {
                            ssMergeCheckEqual(i2, i9, i21);
                        }
                        if (i19 == 0) {
                            return;
                        }
                        i19--;
                        StackEntry stackEntry3 = stackEntryArr[i19];
                        i15 = stackEntry3.f65745a;
                        i16 = stackEntry3.f65746b;
                        i17 = stackEntry3.f65747c;
                        i11 = stackEntry3.f65748d;
                    }
                }
            }
            i18 = i11;
        }
    }

    private void ssMergeBackward(int i2, int[] iArr, int i4, int i5, int i6, int i7, int i8) {
        int i9;
        boolean z3;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        boolean z4;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int[] iArr2 = this.SA;
        int i23 = i7 - i6;
        ssBlockSwap(iArr, i4, iArr2, i6, i23);
        int i24 = (i4 + i23) - 1;
        if (iArr[i24] < 0) {
            i9 = i2 + (iArr[i24] ^ (-1));
            z3 = true;
        } else {
            i9 = i2 + iArr[i24];
            z3 = false;
        }
        int i25 = i6 - 1;
        if (iArr2[i25] < 0) {
            z3 |= true;
            i10 = iArr2[i25] ^ (-1);
        } else {
            i10 = iArr2[i25];
        }
        int i26 = i2 + i10;
        int i27 = i7 - 1;
        int i28 = iArr2[i27];
        while (true) {
            int ssCompare = ssCompare(i9, i26, i8);
            if (ssCompare > 0) {
                if (z3 & true) {
                    while (true) {
                        i12 = i27 - 1;
                        iArr2[i27] = iArr[i24];
                        i13 = i24 - 1;
                        iArr[i24] = iArr2[i12];
                        if (iArr[i13] >= 0) {
                            break;
                        }
                        i24 = i13;
                        i27 = i12;
                    }
                    z3 = !z3;
                    i24 = i13;
                    i27 = i12;
                }
                int i29 = i27 - 1;
                iArr2[i27] = iArr[i24];
                if (i24 <= i4) {
                    iArr[i24] = i28;
                    return;
                }
                int i30 = i24 - 1;
                iArr[i24] = iArr2[i29];
                if (iArr[i30] < 0) {
                    z3 |= true;
                    i11 = iArr[i30] ^ (-1);
                } else {
                    i11 = iArr[i30];
                }
                int i31 = i2 + i11;
                i24 = i30;
                i27 = i29;
                i9 = i31;
            } else if (ssCompare < 0) {
                if (z3 & true) {
                    while (true) {
                        i15 = i27 - 1;
                        iArr2[i27] = iArr2[i25];
                        i16 = i25 - 1;
                        iArr2[i25] = iArr2[i15];
                        if (iArr2[i16] >= 0) {
                            break;
                        }
                        i25 = i16;
                        i27 = i15;
                    }
                    z3 ^= true;
                    i25 = i16;
                    i27 = i15;
                }
                int i32 = i27 - 1;
                iArr2[i27] = iArr2[i25];
                int i33 = i25 - 1;
                iArr2[i25] = iArr2[i32];
                if (i33 < i5) {
                    while (i4 < i24) {
                        int i34 = i32 - 1;
                        iArr2[i32] = iArr[i24];
                        iArr[i24] = iArr2[i34];
                        i32 = i34;
                        i24--;
                    }
                    iArr2[i32] = iArr[i24];
                    iArr[i24] = i28;
                    return;
                }
                if (iArr2[i33] < 0) {
                    z3 |= true;
                    i14 = iArr2[i33] ^ (-1);
                } else {
                    i14 = iArr2[i33];
                }
                i26 = i2 + i14;
                i25 = i33;
                i27 = i32;
            } else {
                if (z3 & true) {
                    while (true) {
                        i21 = i27 - 1;
                        iArr2[i27] = iArr[i24];
                        i22 = i24 - 1;
                        iArr[i24] = iArr2[i21];
                        if (iArr[i22] >= 0) {
                            break;
                        }
                        i24 = i22;
                        i27 = i21;
                    }
                    z3 = !z3;
                    i24 = i22;
                    i27 = i21;
                }
                int i35 = i27 - 1;
                iArr2[i27] = iArr[i24] ^ (-1);
                if (i24 <= i4) {
                    iArr[i24] = i28;
                    return;
                }
                int i36 = i24 - 1;
                iArr[i24] = iArr2[i35];
                if (z3 & true) {
                    while (true) {
                        i19 = i35 - 1;
                        iArr2[i35] = iArr2[i25];
                        i20 = i25 - 1;
                        iArr2[i25] = iArr2[i19];
                        if (iArr2[i20] >= 0) {
                            break;
                        }
                        i25 = i20;
                        i35 = i19;
                    }
                    z3 ^= true;
                    i25 = i20;
                    i35 = i19;
                }
                int i37 = i35 - 1;
                iArr2[i35] = iArr2[i25];
                int i38 = i25 - 1;
                iArr2[i25] = iArr2[i37];
                if (i38 < i5) {
                    while (i4 < i36) {
                        int i39 = i37 - 1;
                        iArr2[i37] = iArr[i36];
                        iArr[i36] = iArr2[i39];
                        i37 = i39;
                        i36--;
                    }
                    iArr2[i37] = iArr[i36];
                    iArr[i36] = i28;
                    return;
                }
                if (iArr[i36] < 0) {
                    z4 = z3 | true;
                    i17 = i2 + (iArr[i36] ^ (-1));
                } else {
                    boolean z5 = z3;
                    i17 = i2 + iArr[i36];
                    z4 = z5;
                }
                if (iArr2[i38] < 0) {
                    z4 |= true;
                    i18 = iArr2[i38] ^ (-1);
                } else {
                    i18 = iArr2[i38];
                }
                i26 = i2 + i18;
                int i40 = i17;
                z3 = z4;
                i25 = i38;
                i9 = i40;
                i24 = i36;
                i27 = i37;
            }
        }
    }

    private void ssMergeCheckEqual(int i2, int i4, int i5) {
        int[] iArr = this.SA;
        if (iArr[i5] < 0 || ssCompare(getIDX(iArr[i5 - 1]) + i2, i2 + iArr[i5], i4) != 0) {
            return;
        }
        iArr[i5] = iArr[i5] ^ (-1);
    }

    private void ssMergeForward(int i2, int[] iArr, int i4, int i5, int i6, int i7, int i8) {
        int i9;
        int[] iArr2 = this.SA;
        int i10 = i6 - i5;
        int i11 = (i4 + i10) - 1;
        ssBlockSwap(iArr, i4, iArr2, i5, i10);
        int i12 = iArr2[i5];
        while (true) {
            int ssCompare = ssCompare(iArr[i4] + i2, iArr2[i6] + i2, i8);
            if (ssCompare < 0) {
                while (true) {
                    i9 = i5 + 1;
                    iArr2[i5] = iArr[i4];
                    if (i11 <= i4) {
                        iArr[i4] = i12;
                        return;
                    }
                    int i13 = i4 + 1;
                    iArr[i4] = iArr2[i9];
                    if (iArr[i13] >= 0) {
                        i4 = i13;
                        break;
                    } else {
                        i4 = i13;
                        i5 = i9;
                    }
                }
            } else if (ssCompare > 0) {
                while (true) {
                    i9 = i5 + 1;
                    iArr2[i5] = iArr2[i6];
                    int i14 = i6 + 1;
                    iArr2[i6] = iArr2[i9];
                    if (i7 <= i14) {
                        while (i4 < i11) {
                            int i15 = i9 + 1;
                            iArr2[i9] = iArr[i4];
                            iArr[i4] = iArr2[i15];
                            i9 = i15;
                            i4++;
                        }
                        iArr2[i9] = iArr[i4];
                        iArr[i4] = i12;
                        return;
                    } else if (iArr2[i14] >= 0) {
                        i6 = i14;
                        break;
                    } else {
                        i6 = i14;
                        i5 = i9;
                    }
                }
            } else {
                iArr2[i6] = iArr2[i6] ^ (-1);
                while (true) {
                    int i16 = i5 + 1;
                    iArr2[i5] = iArr[i4];
                    if (i11 <= i4) {
                        iArr[i4] = i12;
                        return;
                    }
                    int i17 = i4 + 1;
                    iArr[i4] = iArr2[i16];
                    if (iArr[i17] >= 0) {
                        while (true) {
                            int i18 = i16 + 1;
                            iArr2[i16] = iArr2[i6];
                            int i19 = i6 + 1;
                            iArr2[i6] = iArr2[i18];
                            if (i7 <= i19) {
                                while (i17 < i11) {
                                    int i20 = i18 + 1;
                                    iArr2[i18] = iArr[i17];
                                    iArr[i17] = iArr2[i20];
                                    i17++;
                                    i18 = i20;
                                }
                                iArr2[i18] = iArr[i17];
                                iArr[i17] = i12;
                                return;
                            } else if (iArr2[i19] >= 0) {
                                i6 = i19;
                                i5 = i18;
                                i4 = i17;
                                break;
                            } else {
                                i6 = i19;
                                i16 = i18;
                            }
                        }
                    } else {
                        i4 = i17;
                        i5 = i16;
                    }
                }
            }
            i5 = i9;
        }
    }

    private void ssMultiKeyIntroSort(int i2, int i4, int i5, int i6) {
        int ssLog;
        int i7;
        int i8;
        int i9;
        int i10;
        Bzip2DivSufSort bzip2DivSufSort = this;
        int[] iArr = bzip2DivSufSort.SA;
        byte[] bArr = bzip2DivSufSort.T;
        StackEntry[] stackEntryArr = new StackEntry[64];
        int i11 = -1;
        int i12 = i5;
        int i13 = i6;
        int ssLog2 = ssLog(i5 - i4);
        int i14 = 0;
        int i15 = 0;
        int i16 = i4;
        while (true) {
            int i17 = i12 - i16;
            if (i17 <= 8) {
                if (1 < i17) {
                    bzip2DivSufSort.ssInsertionSort(i2, i16, i12, i13);
                }
                if (i14 == 0) {
                    return;
                }
                i14--;
                StackEntry stackEntry = stackEntryArr[i14];
                int i18 = stackEntry.f65745a;
                int i19 = stackEntry.f65746b;
                int i20 = stackEntry.f65747c;
                ssLog2 = stackEntry.f65748d;
                i16 = i18;
                i12 = i19;
                i13 = i20;
            } else {
                int i21 = ssLog2 - 1;
                if (ssLog2 == 0) {
                    bzip2DivSufSort.ssHeapSort(i13, i2, i16, i17);
                }
                if (i21 < 0) {
                    int i22 = bArr[iArr[iArr[i16] + i2] + i13] & 255;
                    int i23 = i16;
                    i16++;
                    while (i16 < i12) {
                        i15 = bArr[iArr[iArr[i16] + i2] + i13] & 255;
                        if (i15 != i22) {
                            if (1 < i16 - i23) {
                                break;
                            }
                            i23 = i16;
                            i22 = i15;
                        }
                        i16++;
                    }
                    if ((bArr[(iArr[iArr[i23] + i2] + i13) - 1] & 255) < i22) {
                        i23 = bzip2DivSufSort.ssSubstringPartition(i2, i23, i16, i13);
                    }
                    int i24 = i16 - i23;
                    int i25 = i12 - i16;
                    if (i24 <= i25) {
                        if (1 < i24) {
                            stackEntryArr[i14] = new StackEntry(i16, i12, i13, i11);
                            i13++;
                            ssLog = ssLog(i24);
                            i14++;
                            int i26 = ssLog;
                            i12 = i16;
                            i16 = i23;
                            ssLog2 = i26;
                        } else {
                            ssLog2 = -1;
                        }
                    } else if (1 < i25) {
                        stackEntryArr[i14] = new StackEntry(i23, i16, i13 + 1, ssLog(i24));
                        i14++;
                        ssLog2 = -1;
                    } else {
                        i13++;
                        ssLog = ssLog(i24);
                        int i262 = ssLog;
                        i12 = i16;
                        i16 = i23;
                        ssLog2 = i262;
                    }
                } else {
                    int ssPivot = bzip2DivSufSort.ssPivot(i13, i2, i16, i12);
                    int i27 = bArr[iArr[iArr[ssPivot] + i2] + i13] & 255;
                    swapElements(iArr, i16, iArr, ssPivot);
                    int i28 = i16 + 1;
                    while (i28 < i12) {
                        i15 = bArr[iArr[iArr[i28] + i2] + i13] & 255;
                        if (i15 != i27) {
                            break;
                        }
                        i28++;
                    }
                    if (i28 < i12 && i15 < i27) {
                        i7 = i15;
                        i8 = i28;
                        while (true) {
                            i28++;
                            if (i28 >= i12 || (i7 = bArr[iArr[iArr[i28] + i2] + i13] & 255) > i27) {
                                break;
                            } else if (i7 == i27) {
                                swapElements(iArr, i28, iArr, i8);
                                i8++;
                            }
                        }
                    } else {
                        i7 = i15;
                        i8 = i28;
                    }
                    int i29 = i12 - 1;
                    while (i28 < i29) {
                        i7 = bArr[iArr[iArr[i29] + i2] + i13] & 255;
                        if (i7 != i27) {
                            break;
                        }
                        i29--;
                    }
                    if (i28 < i29 && i7 > i27) {
                        int i30 = i7;
                        int i31 = i29;
                        while (true) {
                            i29 += i11;
                            if (i28 >= i29) {
                                i9 = i31;
                                i7 = i30;
                                break;
                            }
                            int i32 = bArr[i13 + iArr[i2 + iArr[i29]]] & 255;
                            if (i32 < i27) {
                                int i33 = i31;
                                i7 = i32;
                                i9 = i33;
                                break;
                            }
                            if (i32 == i27) {
                                swapElements(iArr, i29, iArr, i31);
                                i31--;
                            }
                            i30 = i32;
                            i11 = -1;
                        }
                    } else {
                        i9 = i29;
                    }
                    while (i28 < i29) {
                        swapElements(iArr, i28, iArr, i29);
                        while (true) {
                            i28++;
                            if (i28 >= i29 || (i7 = bArr[iArr[iArr[i28] + i2] + i13] & 255) > i27) {
                                break;
                            } else if (i7 == i27) {
                                swapElements(iArr, i28, iArr, i8);
                                i8++;
                            }
                        }
                        while (true) {
                            i29--;
                            if (i28 < i29 && (i7 = bArr[iArr[iArr[i29] + i2] + i13] & 255) >= i27) {
                                if (i7 == i27) {
                                    swapElements(iArr, i29, iArr, i9);
                                    i9--;
                                }
                            }
                        }
                    }
                    if (i8 <= i9) {
                        int i34 = i28 - 1;
                        int i35 = i7;
                        int i36 = i8 - i16;
                        int i37 = i28 - i8;
                        if (i36 > i37) {
                            i36 = i37;
                        }
                        int i38 = i16;
                        int i39 = i28;
                        int i40 = i28 - i36;
                        while (i36 > 0) {
                            swapElements(iArr, i38, iArr, i40);
                            i36--;
                            i38++;
                            i40++;
                        }
                        int i41 = i9 - i34;
                        int i42 = (i12 - i9) - 1;
                        if (i41 <= i42) {
                            i42 = i41;
                        }
                        int i43 = i12 - i42;
                        int i44 = i39;
                        while (i42 > 0) {
                            swapElements(iArr, i44, iArr, i43);
                            i42--;
                            i44++;
                            i43++;
                        }
                        int i45 = i16 + i37;
                        int i46 = i12 - i41;
                        int ssSubstringPartition = i27 <= (bArr[(iArr[iArr[i45] + i2] + i13) + (-1)] & 255) ? i45 : bzip2DivSufSort.ssSubstringPartition(i2, i45, i46, i13);
                        int i47 = i45 - i16;
                        int i48 = i12 - i46;
                        if (i47 <= i48) {
                            int i49 = i46 - ssSubstringPartition;
                            if (i48 <= i49) {
                                int i50 = i14 + 1;
                                stackEntryArr[i14] = new StackEntry(ssSubstringPartition, i46, i13 + 1, ssLog(i49));
                                i14 = i50 + 1;
                                i10 = i21;
                                stackEntryArr[i50] = new StackEntry(i46, i12, i13, i10);
                            } else {
                                i10 = i21;
                                if (i47 <= i49) {
                                    int i51 = i14 + 1;
                                    stackEntryArr[i14] = new StackEntry(i46, i12, i13, i10);
                                    i14 = i51 + 1;
                                    stackEntryArr[i51] = new StackEntry(ssSubstringPartition, i46, i13 + 1, ssLog(i49));
                                } else {
                                    int i52 = i14 + 1;
                                    stackEntryArr[i14] = new StackEntry(i46, i12, i13, i10);
                                    i14 = i52 + 1;
                                    stackEntryArr[i52] = new StackEntry(i16, i45, i13, i10);
                                    i13++;
                                    i12 = i46;
                                    i11 = -1;
                                    ssLog2 = ssLog(i49);
                                    i16 = ssSubstringPartition;
                                    i15 = i35;
                                }
                            }
                            i15 = i35;
                            i12 = i45;
                            ssLog2 = i10;
                        } else {
                            int i53 = i46 - ssSubstringPartition;
                            if (i47 <= i53) {
                                int i54 = i14 + 1;
                                stackEntryArr[i14] = new StackEntry(ssSubstringPartition, i46, i13 + 1, ssLog(i53));
                                i14 = i54 + 1;
                                stackEntryArr[i54] = new StackEntry(i16, i45, i13, i21);
                            } else if (i48 <= i53) {
                                int i55 = i14 + 1;
                                stackEntryArr[i14] = new StackEntry(i16, i45, i13, i21);
                                i14 = i55 + 1;
                                stackEntryArr[i55] = new StackEntry(ssSubstringPartition, i46, i13 + 1, ssLog(i53));
                            } else {
                                int i56 = i14 + 1;
                                stackEntryArr[i14] = new StackEntry(i16, i45, i13, i21);
                                i14 = i56 + 1;
                                stackEntryArr[i56] = new StackEntry(i46, i12, i13, i21);
                                i13++;
                                i11 = -1;
                                i12 = i46;
                                i16 = ssSubstringPartition;
                                i15 = i35;
                                ssLog2 = ssLog(i53);
                                bzip2DivSufSort = this;
                            }
                            i11 = -1;
                            bzip2DivSufSort = this;
                            i15 = i35;
                            i16 = i46;
                            ssLog2 = i21;
                        }
                    } else {
                        int i57 = i7;
                        int i58 = i21 + 1;
                        if ((bArr[(iArr[iArr[i16] + i2] + i13) - 1] & 255) < i27) {
                            bzip2DivSufSort = this;
                            i16 = bzip2DivSufSort.ssSubstringPartition(i2, i16, i12, i13);
                            ssLog2 = ssLog(i12 - i16);
                        } else {
                            bzip2DivSufSort = this;
                            ssLog2 = i58;
                        }
                        i13++;
                        i15 = i57;
                    }
                    i11 = -1;
                }
            }
        }
    }

    private int ssPivot(int i2, int i4, int i5, int i6) {
        int i7 = i6 - i5;
        int i8 = i5 + (i7 / 2);
        if (i7 <= 512) {
            if (i7 <= 32) {
                return ssMedian3(i2, i4, i5, i8, i6 - 1);
            }
            int i9 = i7 >> 2;
            int i10 = i6 - 1;
            return ssMedian5(i2, i4, i5, i5 + i9, i8, i10 - i9, i10);
        }
        int i11 = i7 >> 3;
        int i12 = i11 << 1;
        int i13 = i6 - 1;
        return ssMedian3(i2, i4, ssMedian3(i2, i4, i5, i5 + i11, i5 + i12), ssMedian3(i2, i4, i8 - i11, i8, i8 + i11), ssMedian3(i2, i4, i13 - i12, i13 - i11, i13));
    }

    private int ssSubstringPartition(int i2, int i4, int i5, int i6) {
        int[] iArr = this.SA;
        int i7 = i4 - 1;
        while (true) {
            i7++;
            if (i7 < i5 && iArr[iArr[i7] + i2] + i6 >= iArr[iArr[i7] + i2 + 1] + 1) {
                iArr[i7] = iArr[i7] ^ (-1);
            } else {
                do {
                    i5--;
                    if (i7 >= i5) {
                        break;
                    }
                } while (iArr[iArr[i5] + i2] + i6 < iArr[iArr[i5] + i2 + 1] + 1);
                if (i5 <= i7) {
                    break;
                }
                iArr[i5] = iArr[i7];
                iArr[i7] = iArr[i5] ^ (-1);
            }
        }
        if (i4 < i7) {
            iArr[i4] = iArr[i4] ^ (-1);
        }
        return i7;
    }

    private void subStringSort(int i2, int i4, int i5, int[] iArr, int i6, int i7, int i8, boolean z3, int i9) {
        int i10;
        int i11;
        int[] iArr2;
        int[] iArr3 = this.SA;
        int i12 = z3 ? i4 + 1 : i4;
        int i13 = i12;
        int i14 = 0;
        while (true) {
            int i15 = i13 + 1024;
            if (i15 >= i5) {
                break;
            }
            ssMultiKeyIntroSort(i2, i13, i15, i8);
            int i16 = i5 - i15;
            if (i16 <= i7) {
                iArr2 = iArr;
                i11 = i6;
                i10 = i7;
            } else {
                i10 = i16;
                i11 = i15;
                iArr2 = iArr3;
            }
            int i17 = i13;
            int i18 = i14;
            int i19 = 1024;
            while ((i18 & 1) != 0) {
                int i20 = i17 - i19;
                ssMerge(i2, i20, i17, i17 + i19, iArr2, i11, i10, i8);
                i19 <<= 1;
                i18 >>>= 1;
                i17 = i20;
                i15 = i15;
            }
            i14++;
            i13 = i15;
        }
        ssMultiKeyIntroSort(i2, i13, i5, i8);
        int i21 = i13;
        int i22 = 1024;
        for (int i23 = i14; i23 != 0; i23 >>= 1) {
            if ((i23 & 1) != 0) {
                int i24 = i21 - i22;
                ssMerge(i2, i24, i21, i5, iArr, i6, i7, i8);
                i21 = i24;
            }
            i22 <<= 1;
        }
        if (z3) {
            int i25 = iArr3[i12 - 1];
            int i26 = 1;
            while (i12 < i5 && (iArr3[i12] < 0 || (i26 = ssCompareLast(i2, i2 + i25, i2 + iArr3[i12], i8, i9)) > 0)) {
                iArr3[i12 - 1] = iArr3[i12];
                i12++;
            }
            if (i26 == 0) {
                iArr3[i12] = iArr3[i12] ^ (-1);
            }
            iArr3[i12 - 1] = i25;
        }
    }

    private static void swapElements(int[] iArr, int i2, int[] iArr2, int i4) {
        int i5 = iArr[i2];
        iArr[i2] = iArr2[i4];
        iArr2[i4] = i5;
    }

    private void trCopy(int i2, int i4, int i5, int i6, int i7, int i8, int i9) {
        int[] iArr = this.SA;
        int i10 = i7 - 1;
        int i11 = i6 - 1;
        while (i5 <= i11) {
            int i12 = iArr[i5] - i9;
            if (i12 < 0) {
                i12 += i4 - i2;
            }
            int i13 = i2 + i12;
            if (iArr[i13] == i10) {
                i11++;
                iArr[i11] = i12;
                iArr[i13] = i11;
            }
            i5++;
        }
        int i14 = i8 - 1;
        int i15 = i11 + 1;
        while (i15 < i7) {
            int i16 = iArr[i14] - i9;
            if (i16 < 0) {
                i16 += i4 - i2;
            }
            int i17 = i2 + i16;
            if (iArr[i17] == i10) {
                i7--;
                iArr[i7] = i16;
                iArr[i17] = i7;
            }
            i14--;
        }
    }

    private void trFixdown(int i2, int i4, int i5, int i6, int i7, int i8) {
        int[] iArr = this.SA;
        int i9 = iArr[i6 + i7];
        int trGetC = trGetC(i2, i4, i5, i9);
        while (true) {
            int i10 = (i7 * 2) + 1;
            if (i10 >= i8) {
                break;
            }
            int i11 = i10 + 1;
            int trGetC2 = trGetC(i2, i4, i5, iArr[i6 + i10]);
            int trGetC3 = trGetC(i2, i4, i5, iArr[i6 + i11]);
            if (trGetC2 < trGetC3) {
                i10 = i11;
                trGetC2 = trGetC3;
            }
            if (trGetC2 <= trGetC) {
                break;
            }
            iArr[i7 + i6] = iArr[i6 + i10];
            i7 = i10;
        }
        iArr[i6 + i7] = i9;
    }

    private int trGetC(int i2, int i4, int i5, int i6) {
        int i7 = i4 + i6;
        return i7 < i5 ? this.SA[i7] : this.SA[i2 + (((i4 - i2) + i6) % (i5 - i2))];
    }

    private void trHeapSort(int i2, int i4, int i5, int i6, int i7) {
        int i8;
        int[] iArr = this.SA;
        int i9 = i7 % 2;
        if (i9 == 0) {
            int i10 = i7 - 1;
            int i11 = (i10 / 2) + i6;
            int i12 = i6 + i10;
            if (trGetC(i2, i4, i5, iArr[i11]) < trGetC(i2, i4, i5, iArr[i12])) {
                swapElements(iArr, i12, iArr, i11);
            }
            i8 = i10;
        } else {
            i8 = i7;
        }
        for (int i13 = (i8 / 2) - 1; i13 >= 0; i13--) {
            trFixdown(i2, i4, i5, i6, i13, i8);
        }
        if (i9 == 0) {
            swapElements(iArr, i6, iArr, i6 + i8);
            trFixdown(i2, i4, i5, i6, 0, i8);
        }
        for (int i14 = i8 - 1; i14 > 0; i14--) {
            int i15 = iArr[i6];
            int i16 = i6 + i14;
            iArr[i6] = iArr[i16];
            trFixdown(i2, i4, i5, i6, 0, i14);
            iArr[i16] = i15;
        }
    }

    private void trInsertionSort(int i2, int i4, int i5, int i6, int i7) {
        int trGetC;
        int[] iArr = this.SA;
        for (int i8 = i6 + 1; i8 < i7; i8++) {
            int i9 = iArr[i8];
            int i10 = i8 - 1;
            do {
                trGetC = trGetC(i2, i4, i5, i9) - trGetC(i2, i4, i5, iArr[i10]);
                if (trGetC >= 0) {
                    break;
                }
                do {
                    iArr[i10 + 1] = iArr[i10];
                    i10--;
                    if (i6 <= i10) {
                    }
                } while (iArr[i10] < 0);
                continue;
            } while (i10 >= i6);
            if (trGetC == 0) {
                iArr[i10] = iArr[i10] ^ (-1);
            }
            iArr[i10 + 1] = i9;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:138:0x02c8  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x04e0 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:150:0x02ed -> B:135:0x02c0). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void trIntroSort(int r22, int r23, int r24, int r25, int r26, io.netty.handler.codec.compression.Bzip2DivSufSort.TRBudget r27, int r28) {
        /*
            Method dump skipped, instructions count: 1298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.codec.compression.Bzip2DivSufSort.trIntroSort(int, int, int, int, int, io.netty.handler.codec.compression.Bzip2DivSufSort$TRBudget, int):void");
    }

    private static int trLog(int i2) {
        return ((-65536) & i2) != 0 ? ((-16777216) & i2) != 0 ? LOG_2_TABLE[(i2 >> 24) & 255] + 24 : LOG_2_TABLE[(i2 >> 16) & 271] : (65280 & i2) != 0 ? LOG_2_TABLE[(i2 >> 8) & 255] + 8 : LOG_2_TABLE[i2 & 255];
    }

    private int trMedian3(int i2, int i4, int i5, int i6, int i7, int i8) {
        int[] iArr = this.SA;
        int trGetC = trGetC(i2, i4, i5, iArr[i6]);
        int trGetC2 = trGetC(i2, i4, i5, iArr[i7]);
        int trGetC3 = trGetC(i2, i4, i5, iArr[i8]);
        if (trGetC <= trGetC2) {
            i7 = i6;
            i6 = i7;
            trGetC2 = trGetC;
            trGetC = trGetC2;
        }
        return trGetC > trGetC3 ? trGetC2 > trGetC3 ? i7 : i8 : i6;
    }

    private int trMedian5(int i2, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        int[] iArr = this.SA;
        int trGetC = trGetC(i2, i4, i5, iArr[i6]);
        int trGetC2 = trGetC(i2, i4, i5, iArr[i7]);
        int trGetC3 = trGetC(i2, i4, i5, iArr[i8]);
        int trGetC4 = trGetC(i2, i4, i5, iArr[i9]);
        int trGetC5 = trGetC(i2, i4, i5, iArr[i10]);
        if (trGetC2 > trGetC3) {
            i8 = i7;
            i7 = i8;
            trGetC3 = trGetC2;
            trGetC2 = trGetC3;
        }
        if (trGetC4 > trGetC5) {
            trGetC4 = trGetC5;
            trGetC5 = trGetC4;
        } else {
            i10 = i9;
            i9 = i10;
        }
        if (trGetC2 > trGetC4) {
            int i11 = trGetC3;
            trGetC3 = trGetC5;
            trGetC5 = i11;
            int i12 = i9;
            i9 = i8;
            i8 = i12;
        } else {
            i7 = i10;
            trGetC2 = trGetC4;
        }
        if (trGetC > trGetC3) {
            int i13 = i8;
            i8 = i6;
            i6 = i13;
            int i14 = trGetC3;
            trGetC3 = trGetC;
            trGetC = i14;
        }
        if (trGetC > trGetC2) {
            i7 = i6;
            trGetC2 = trGetC;
        } else {
            i9 = i8;
            trGetC5 = trGetC3;
        }
        return trGetC5 > trGetC2 ? i7 : i9;
    }

    private PartitionResult trPartition(int i2, int i4, int i5, int i6, int i7, int i8) {
        int i9;
        int i10;
        int trGetC;
        int trGetC2;
        int trGetC3;
        int[] iArr = this.SA;
        int i11 = 0;
        int i12 = i6;
        while (i12 < i7) {
            i11 = trGetC(i2, i4, i5, iArr[i12]);
            if (i11 != i8) {
                break;
            }
            i12++;
        }
        if (i12 < i7 && i11 < i8) {
            i9 = i12;
            while (true) {
                i12++;
                if (i12 >= i7 || (i11 = trGetC(i2, i4, i5, iArr[i12])) > i8) {
                    break;
                } else if (i11 == i8) {
                    swapElements(iArr, i12, iArr, i9);
                    i9++;
                }
            }
        } else {
            i9 = i12;
        }
        int i13 = i7 - 1;
        while (i12 < i13) {
            i11 = trGetC(i2, i4, i5, iArr[i13]);
            if (i11 != i8) {
                break;
            }
            i13--;
        }
        if (i12 < i13 && i11 > i8) {
            i10 = i13;
            while (true) {
                i13--;
                if (i12 >= i13 || (trGetC3 = trGetC(i2, i4, i5, iArr[i13])) < i8) {
                    break;
                } else if (trGetC3 == i8) {
                    swapElements(iArr, i13, iArr, i10);
                    i10--;
                }
            }
        } else {
            i10 = i13;
        }
        while (i12 < i13) {
            swapElements(iArr, i12, iArr, i13);
            while (true) {
                i12++;
                if (i12 >= i13 || (trGetC2 = trGetC(i2, i4, i5, iArr[i12])) > i8) {
                    break;
                } else if (trGetC2 == i8) {
                    swapElements(iArr, i12, iArr, i9);
                    i9++;
                }
            }
            while (true) {
                i13--;
                if (i12 < i13 && (trGetC = trGetC(i2, i4, i5, iArr[i13])) >= i8) {
                    if (trGetC == i8) {
                        swapElements(iArr, i13, iArr, i10);
                        i10--;
                    }
                }
            }
        }
        if (i9 <= i10) {
            int i14 = i12 - 1;
            int i15 = i9 - i6;
            int i16 = i12 - i9;
            if (i15 > i16) {
                i15 = i16;
            }
            int i17 = i12 - i15;
            int i18 = i6;
            while (i15 > 0) {
                swapElements(iArr, i18, iArr, i17);
                i15--;
                i18++;
                i17++;
            }
            int i19 = i10 - i14;
            int i20 = (i7 - i10) - 1;
            if (i19 <= i20) {
                i20 = i19;
            }
            int i21 = i7 - i20;
            while (i20 > 0) {
                swapElements(iArr, i12, iArr, i21);
                i20--;
                i12++;
                i21++;
            }
            i6 += i16;
            i7 -= i19;
        }
        return new PartitionResult(i6, i7);
    }

    private int trPivot(int i2, int i4, int i5, int i6, int i7) {
        int i8 = i7 - i6;
        int i9 = i6 + (i8 / 2);
        if (i8 <= 512) {
            if (i8 <= 32) {
                return trMedian3(i2, i4, i5, i6, i9, i7 - 1);
            }
            int i10 = i8 >> 2;
            int i11 = i7 - 1;
            return trMedian5(i2, i4, i5, i6, i6 + i10, i9, i11 - i10, i11);
        }
        int i12 = i8 >> 3;
        int i13 = i12 << 1;
        int i14 = i7 - 1;
        return trMedian3(i2, i4, i5, trMedian3(i2, i4, i5, i6, i6 + i12, i6 + i13), trMedian3(i2, i4, i5, i9 - i12, i9, i9 + i12), trMedian3(i2, i4, i5, i14 - i13, i14 - i12, i14));
    }

    private void trSort(int i2, int i4, int i5) {
        int[] iArr = this.SA;
        if ((-i4) < iArr[0]) {
            TRBudget tRBudget = new TRBudget(i4, ((trLog(i4) * 2) / 3) + 1);
            int i6 = 0;
            do {
                int i7 = iArr[i6];
                if (i7 < 0) {
                    i6 -= i7;
                    continue;
                } else {
                    int i8 = iArr[i2 + i7] + 1;
                    if (1 < i8 - i6) {
                        trIntroSort(i2, i2 + i5, i2 + i4, i6, i8, tRBudget, i4);
                        if (tRBudget.chance == 0) {
                            if (i6 > 0) {
                                iArr[0] = -i6;
                            }
                            lsSort(i2, i4, i5);
                            return;
                        }
                    }
                    i6 = i8;
                    continue;
                }
            } while (i6 < i4);
        }
    }

    public int bwt() {
        int[] iArr = this.SA;
        byte[] bArr = this.T;
        int i2 = this.f65744n;
        int[] iArr2 = new int[256];
        int[] iArr3 = new int[65536];
        if (i2 == 0) {
            return 0;
        }
        if (i2 == 1) {
            iArr[0] = bArr[0];
            return 0;
        } else if (sortTypeBstar(iArr2, iArr3) > 0) {
            return constructBWT(iArr2, iArr3);
        } else {
            return 0;
        }
    }
}
