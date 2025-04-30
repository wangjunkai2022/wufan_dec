package com.google.zxing.pdf417.encoder;

import com.google.zxing.WriterException;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.math.BigInteger;
import java.util.Arrays;
import okio.Utf8;
/* loaded from: classes2.dex */
final class PDF417HighLevelEncoder {
    private static final int BYTE_COMPACTION = 1;
    private static final int LATCH_TO_BYTE = 924;
    private static final int LATCH_TO_BYTE_PADDED = 901;
    private static final int LATCH_TO_NUMERIC = 902;
    private static final int LATCH_TO_TEXT = 900;
    private static final byte[] MIXED;
    private static final int NUMERIC_COMPACTION = 2;
    private static final int SHIFT_TO_BYTE = 913;
    private static final int SUBMODE_ALPHA = 0;
    private static final int SUBMODE_LOWER = 1;
    private static final int SUBMODE_MIXED = 2;
    private static final int SUBMODE_PUNCTUATION = 3;
    private static final int TEXT_COMPACTION = 0;
    private static final byte[] TEXT_MIXED_RAW = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 38, 13, 9, HttpConstants.COMMA, HttpConstants.COLON, BinaryMemcacheOpcodes.GATK, 45, 46, BinaryMemcacheOpcodes.GATKQ, 47, 43, 37, 42, HttpConstants.EQUALS, 94, 0, 32, 0, 0, 0};
    private static final byte[] TEXT_PUNCTUATION_RAW = {HttpConstants.SEMICOLON, 60, 62, 64, 91, 92, 93, 95, 96, 126, BinaryMemcacheOpcodes.SASL_AUTH, 13, 9, HttpConstants.COMMA, HttpConstants.COLON, 10, 45, 46, BinaryMemcacheOpcodes.GATKQ, 47, 34, 124, 42, 40, 41, Utf8.REPLACEMENT_BYTE, 123, 125, 39, 0};
    private static final byte[] PUNCTUATION = new byte[128];

    static {
        byte[] bArr = new byte[128];
        MIXED = bArr;
        Arrays.fill(bArr, (byte) -1);
        byte b4 = 0;
        byte b5 = 0;
        while (true) {
            byte[] bArr2 = TEXT_MIXED_RAW;
            if (b5 >= bArr2.length) {
                break;
            }
            byte b6 = bArr2[b5];
            if (b6 > 0) {
                MIXED[b6] = b5;
            }
            b5 = (byte) (b5 + 1);
        }
        Arrays.fill(PUNCTUATION, (byte) -1);
        while (true) {
            byte[] bArr3 = TEXT_PUNCTUATION_RAW;
            if (b4 >= bArr3.length) {
                return;
            }
            byte b7 = bArr3[b4];
            if (b7 > 0) {
                PUNCTUATION[b7] = b4;
            }
            b4 = (byte) (b4 + 1);
        }
    }

    private PDF417HighLevelEncoder() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0026, code lost:
        return r1 - r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003f, code lost:
        return r1 - r9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int determineConsecutiveBinaryCount(java.lang.CharSequence r7, byte[] r8, int r9) throws com.google.zxing.WriterException {
        /*
            int r0 = r7.length()
            r1 = r9
        L5:
            if (r1 >= r0) goto L74
            char r2 = r7.charAt(r1)
            r3 = 0
            r4 = 0
        Ld:
            r5 = 13
            if (r4 >= r5) goto L23
            boolean r6 = isDigit(r2)
            if (r6 == 0) goto L23
            int r4 = r4 + 1
            int r6 = r1 + r4
            if (r6 < r0) goto L1e
            goto L23
        L1e:
            char r2 = r7.charAt(r6)
            goto Ld
        L23:
            if (r4 < r5) goto L27
            int r1 = r1 - r9
            return r1
        L27:
            r4 = 5
            if (r3 >= r4) goto L3c
            boolean r2 = isText(r2)
            if (r2 == 0) goto L3c
            int r3 = r3 + 1
            int r2 = r1 + r3
            if (r2 < r0) goto L37
            goto L3c
        L37:
            char r2 = r7.charAt(r2)
            goto L27
        L3c:
            if (r3 < r4) goto L40
            int r1 = r1 - r9
            return r1
        L40:
            char r2 = r7.charAt(r1)
            r3 = r8[r1]
            r4 = 63
            if (r3 != r4) goto L71
            if (r2 != r4) goto L4d
            goto L71
        L4d:
            com.google.zxing.WriterException r7 = new com.google.zxing.WriterException
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = "Non-encodable character detected: "
            r8.append(r9)
            r8.append(r2)
            java.lang.String r9 = " (Unicode: "
            r8.append(r9)
            r8.append(r2)
            r9 = 41
            r8.append(r9)
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        L71:
            int r1 = r1 + 1
            goto L5
        L74:
            int r1 = r1 - r9
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.encoder.PDF417HighLevelEncoder.determineConsecutiveBinaryCount(java.lang.CharSequence, byte[], int):int");
    }

    private static int determineConsecutiveDigitCount(CharSequence charSequence, int i2) {
        int length = charSequence.length();
        int i4 = 0;
        if (i2 < length) {
            char charAt = charSequence.charAt(i2);
            while (isDigit(charAt) && i2 < length) {
                i4++;
                i2++;
                if (i2 < length) {
                    charAt = charSequence.charAt(i2);
                }
            }
        }
        return i4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0027, code lost:
        return (r1 - r7) - r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int determineConsecutiveTextCount(java.lang.CharSequence r6, int r7) {
        /*
            int r0 = r6.length()
            r1 = r7
        L5:
            if (r1 >= r0) goto L39
            char r2 = r6.charAt(r1)
            r3 = 0
        Lc:
            r4 = 13
            if (r3 >= r4) goto L23
            boolean r5 = isDigit(r2)
            if (r5 == 0) goto L23
            if (r1 >= r0) goto L23
            int r3 = r3 + 1
            int r1 = r1 + 1
            if (r1 >= r0) goto Lc
            char r2 = r6.charAt(r1)
            goto Lc
        L23:
            if (r3 < r4) goto L28
            int r1 = r1 - r7
            int r1 = r1 - r3
            return r1
        L28:
            if (r3 <= 0) goto L2b
            goto L5
        L2b:
            char r2 = r6.charAt(r1)
            boolean r2 = isText(r2)
            if (r2 != 0) goto L36
            goto L39
        L36:
            int r1 = r1 + 1
            goto L5
        L39:
            int r1 = r1 - r7
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.encoder.PDF417HighLevelEncoder.determineConsecutiveTextCount(java.lang.CharSequence, int):int");
    }

    private static void encodeBinary(byte[] bArr, int i2, int i4, int i5, StringBuilder sb) {
        int i6;
        if (i4 == 1 && i5 == 0) {
            sb.append((char) 913);
        }
        if (i4 >= 6) {
            sb.append((char) 924);
            char[] cArr = new char[5];
            i6 = i2;
            while ((i2 + i4) - i6 >= 6) {
                long j4 = 0;
                for (int i7 = 0; i7 < 6; i7++) {
                    j4 = (j4 << 8) + (bArr[i6 + i7] & 255);
                }
                for (int i8 = 0; i8 < 5; i8++) {
                    cArr[i8] = (char) (j4 % 900);
                    j4 /= 900;
                }
                for (int i9 = 4; i9 >= 0; i9--) {
                    sb.append(cArr[i9]);
                }
                i6 += 6;
            }
        } else {
            i6 = i2;
        }
        int i10 = i2 + i4;
        if (i6 < i10) {
            sb.append((char) 901);
        }
        while (i6 < i10) {
            sb.append((char) (bArr[i6] & 255));
            i6++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String encodeHighLevel(String str, Compaction compaction) throws WriterException {
        int determineConsecutiveDigitCount;
        StringBuilder sb = new StringBuilder(str.length());
        int length = str.length();
        if (compaction == Compaction.TEXT) {
            encodeText(str, 0, length, sb, 0);
        } else if (compaction == Compaction.BYTE) {
            byte[] bytesForMessage = getBytesForMessage(str);
            encodeBinary(bytesForMessage, 0, bytesForMessage.length, 1, sb);
        } else if (compaction == Compaction.NUMERIC) {
            sb.append((char) 902);
            encodeNumeric(str, 0, length, sb);
        } else {
            byte[] bArr = null;
            int i2 = 0;
            int i4 = 0;
            loop0: while (true) {
                int i5 = 0;
                while (i2 < length) {
                    determineConsecutiveDigitCount = determineConsecutiveDigitCount(str, i2);
                    if (determineConsecutiveDigitCount >= 13) {
                        break;
                    }
                    int determineConsecutiveTextCount = determineConsecutiveTextCount(str, i2);
                    if (determineConsecutiveTextCount < 5 && determineConsecutiveDigitCount != length) {
                        if (bArr == null) {
                            bArr = getBytesForMessage(str);
                        }
                        int determineConsecutiveBinaryCount = determineConsecutiveBinaryCount(str, bArr, i2);
                        if (determineConsecutiveBinaryCount == 0) {
                            determineConsecutiveBinaryCount = 1;
                        }
                        if (determineConsecutiveBinaryCount == 1 && i4 == 0) {
                            encodeBinary(bArr, i2, 1, 0, sb);
                        } else {
                            encodeBinary(bArr, i2, determineConsecutiveBinaryCount, i4, sb);
                            i4 = 1;
                            i5 = 0;
                        }
                        i2 += determineConsecutiveBinaryCount;
                    } else {
                        if (i4 != 0) {
                            sb.append((char) 900);
                            i4 = 0;
                            i5 = 0;
                        }
                        i5 = encodeText(str, i2, determineConsecutiveTextCount, sb, i5);
                        i2 += determineConsecutiveTextCount;
                    }
                }
                sb.append((char) 902);
                i4 = 2;
                encodeNumeric(str, i2, determineConsecutiveDigitCount, sb);
                i2 += determineConsecutiveDigitCount;
            }
        }
        return sb.toString();
    }

    private static void encodeNumeric(String str, int i2, int i4, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder((i4 / 3) + 1);
        BigInteger valueOf = BigInteger.valueOf(900L);
        BigInteger valueOf2 = BigInteger.valueOf(0L);
        int i5 = 0;
        while (i5 < i4 - 1) {
            sb2.setLength(0);
            int min = Math.min(44, i4 - i5);
            StringBuilder sb3 = new StringBuilder();
            sb3.append('1');
            int i6 = i2 + i5;
            sb3.append(str.substring(i6, i6 + min));
            BigInteger bigInteger = new BigInteger(sb3.toString());
            do {
                sb2.append((char) bigInteger.mod(valueOf).intValue());
                bigInteger = bigInteger.divide(valueOf);
            } while (!bigInteger.equals(valueOf2));
            for (int length = sb2.length() - 1; length >= 0; length--) {
                sb.append(sb2.charAt(length));
            }
            i5 += min;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x00f6 A[EDGE_INSN: B:76:0x00f6->B:55:0x00f6 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0011 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int encodeText(java.lang.CharSequence r16, int r17, int r18, java.lang.StringBuilder r19, int r20) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.encoder.PDF417HighLevelEncoder.encodeText(java.lang.CharSequence, int, int, java.lang.StringBuilder, int):int");
    }

    private static byte[] getBytesForMessage(String str) {
        return str.getBytes();
    }

    private static boolean isAlphaLower(char c4) {
        return c4 == ' ' || (c4 >= 'a' && c4 <= 'z');
    }

    private static boolean isAlphaUpper(char c4) {
        return c4 == ' ' || (c4 >= 'A' && c4 <= 'Z');
    }

    private static boolean isDigit(char c4) {
        return c4 >= '0' && c4 <= '9';
    }

    private static boolean isMixed(char c4) {
        return MIXED[c4] != -1;
    }

    private static boolean isPunctuation(char c4) {
        return PUNCTUATION[c4] != -1;
    }

    private static boolean isText(char c4) {
        return c4 == '\t' || c4 == '\n' || c4 == '\r' || (c4 >= ' ' && c4 <= '~');
    }
}
