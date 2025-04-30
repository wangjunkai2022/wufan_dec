package com.google.zxing.qrcode.decoder;

import com.android.dx.io.Opcodes;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitSource;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.StringUtils;
import external.org.apache.commons.lang3.d;
import java.io.UnsupportedEncodingException;
import java.util.Collection;
import java.util.Map;
/* loaded from: classes2.dex */
final class DecodedBitStreamParser {
    private static final char[] ALPHANUMERIC_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', ' ', '$', '%', '*', '+', '-', d.f65364a, '/', ':'};
    private static final int GB2312_SUBSET = 1;

    private DecodedBitStreamParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00c2 A[LOOP:0: B:3:0x001a->B:55:0x00c2, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00aa A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.zxing.common.DecoderResult decode(byte[] r16, com.google.zxing.qrcode.decoder.Version r17, com.google.zxing.qrcode.decoder.ErrorCorrectionLevel r18, java.util.Map<com.google.zxing.DecodeHintType, ?> r19) throws com.google.zxing.FormatException {
        /*
            r0 = r16
            r1 = r17
            com.google.zxing.common.BitSource r8 = new com.google.zxing.common.BitSource
            r8.<init>(r0)
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r2 = 50
            r9.<init>(r2)
            java.util.ArrayList r10 = new java.util.ArrayList
            r11 = 1
            r10.<init>(r11)
            r12 = 0
            r2 = 0
            r14 = r12
            r13 = 0
        L1a:
            int r2 = r8.available()
            r3 = 4
            if (r2 >= r3) goto L25
            com.google.zxing.qrcode.decoder.Mode r2 = com.google.zxing.qrcode.decoder.Mode.TERMINATOR
        L23:
            r15 = r2
            goto L2e
        L25:
            int r2 = r8.readBits(r3)     // Catch: java.lang.IllegalArgumentException -> Lc5
            com.google.zxing.qrcode.decoder.Mode r2 = com.google.zxing.qrcode.decoder.Mode.forBits(r2)     // Catch: java.lang.IllegalArgumentException -> Lc5
            goto L23
        L2e:
            com.google.zxing.qrcode.decoder.Mode r7 = com.google.zxing.qrcode.decoder.Mode.TERMINATOR
            if (r15 == r7) goto L54
            com.google.zxing.qrcode.decoder.Mode r2 = com.google.zxing.qrcode.decoder.Mode.FNC1_FIRST_POSITION
            if (r15 == r2) goto La6
            com.google.zxing.qrcode.decoder.Mode r2 = com.google.zxing.qrcode.decoder.Mode.FNC1_SECOND_POSITION
            if (r15 != r2) goto L3c
            goto La6
        L3c:
            com.google.zxing.qrcode.decoder.Mode r2 = com.google.zxing.qrcode.decoder.Mode.STRUCTURED_APPEND
            if (r15 != r2) goto L46
            r2 = 16
            r8.readBits(r2)
            goto L54
        L46:
            com.google.zxing.qrcode.decoder.Mode r2 = com.google.zxing.qrcode.decoder.Mode.ECI
            if (r15 != r2) goto L5b
            int r2 = parseECIValue(r8)
            com.google.zxing.common.CharacterSetECI r14 = com.google.zxing.common.CharacterSetECI.getCharacterSetECIByValue(r2)
            if (r14 == 0) goto L56
        L54:
            r11 = r7
            goto La8
        L56:
            com.google.zxing.FormatException r0 = com.google.zxing.FormatException.getFormatInstance()
            throw r0
        L5b:
            com.google.zxing.qrcode.decoder.Mode r2 = com.google.zxing.qrcode.decoder.Mode.HANZI
            if (r15 != r2) goto L71
            int r2 = r8.readBits(r3)
            int r3 = r15.getCharacterCountBits(r1)
            int r3 = r8.readBits(r3)
            if (r2 != r11) goto L54
            decodeHanziSegment(r8, r9, r3)
            goto L54
        L71:
            int r2 = r15.getCharacterCountBits(r1)
            int r4 = r8.readBits(r2)
            com.google.zxing.qrcode.decoder.Mode r2 = com.google.zxing.qrcode.decoder.Mode.NUMERIC
            if (r15 != r2) goto L81
            decodeNumericSegment(r8, r9, r4)
            goto L54
        L81:
            com.google.zxing.qrcode.decoder.Mode r2 = com.google.zxing.qrcode.decoder.Mode.ALPHANUMERIC
            if (r15 != r2) goto L89
            decodeAlphanumericSegment(r8, r9, r4, r13)
            goto L54
        L89:
            com.google.zxing.qrcode.decoder.Mode r2 = com.google.zxing.qrcode.decoder.Mode.BYTE
            if (r15 != r2) goto L98
            r2 = r8
            r3 = r9
            r5 = r14
            r6 = r10
            r11 = r7
            r7 = r19
            decodeByteSegment(r2, r3, r4, r5, r6, r7)
            goto La8
        L98:
            r11 = r7
            com.google.zxing.qrcode.decoder.Mode r2 = com.google.zxing.qrcode.decoder.Mode.KANJI
            if (r15 != r2) goto La1
            decodeKanjiSegment(r8, r9, r4)
            goto La8
        La1:
            com.google.zxing.FormatException r0 = com.google.zxing.FormatException.getFormatInstance()
            throw r0
        La6:
            r11 = r7
            r13 = 1
        La8:
            if (r15 != r11) goto Lc2
            com.google.zxing.common.DecoderResult r1 = new com.google.zxing.common.DecoderResult
            java.lang.String r2 = r9.toString()
            boolean r3 = r10.isEmpty()
            if (r3 == 0) goto Lb7
            r10 = r12
        Lb7:
            if (r18 != 0) goto Lba
            goto Lbe
        Lba:
            java.lang.String r12 = r18.toString()
        Lbe:
            r1.<init>(r0, r2, r10, r12)
            return r1
        Lc2:
            r11 = 1
            goto L1a
        Lc5:
            com.google.zxing.FormatException r0 = com.google.zxing.FormatException.getFormatInstance()
            goto Lcb
        Lca:
            throw r0
        Lcb:
            goto Lca
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.decoder.DecodedBitStreamParser.decode(byte[], com.google.zxing.qrcode.decoder.Version, com.google.zxing.qrcode.decoder.ErrorCorrectionLevel, java.util.Map):com.google.zxing.common.DecoderResult");
    }

    private static void decodeAlphanumericSegment(BitSource bitSource, StringBuilder sb, int i2, boolean z3) throws FormatException {
        while (i2 > 1) {
            int readBits = bitSource.readBits(11);
            sb.append(toAlphaNumericChar(readBits / 45));
            sb.append(toAlphaNumericChar(readBits % 45));
            i2 -= 2;
        }
        if (i2 == 1) {
            sb.append(toAlphaNumericChar(bitSource.readBits(6)));
        }
        if (z3) {
            for (int length = sb.length(); length < sb.length(); length++) {
                if (sb.charAt(length) == '%') {
                    if (length < sb.length() - 1) {
                        int i4 = length + 1;
                        if (sb.charAt(i4) == '%') {
                            sb.deleteCharAt(i4);
                        }
                    }
                    sb.setCharAt(length, (char) 29);
                }
            }
        }
    }

    private static void decodeByteSegment(BitSource bitSource, StringBuilder sb, int i2, CharacterSetECI characterSetECI, Collection<byte[]> collection, Map<DecodeHintType, ?> map) throws FormatException {
        String name;
        if ((i2 << 3) <= bitSource.available()) {
            byte[] bArr = new byte[i2];
            for (int i4 = 0; i4 < i2; i4++) {
                bArr[i4] = (byte) bitSource.readBits(8);
            }
            if (characterSetECI == null) {
                name = StringUtils.guessEncoding(bArr, map);
            } else {
                name = characterSetECI.name();
            }
            try {
                sb.append(new String(bArr, name));
                collection.add(bArr);
                return;
            } catch (UnsupportedEncodingException unused) {
                throw FormatException.getFormatInstance();
            }
        }
        throw FormatException.getFormatInstance();
    }

    private static void decodeHanziSegment(BitSource bitSource, StringBuilder sb, int i2) throws FormatException {
        if (i2 * 13 <= bitSource.available()) {
            byte[] bArr = new byte[i2 * 2];
            int i4 = 0;
            while (i2 > 0) {
                int readBits = bitSource.readBits(13);
                int i5 = (readBits % 96) | ((readBits / 96) << 8);
                int i6 = i5 + (i5 < 959 ? 41377 : 42657);
                bArr[i4] = (byte) ((i6 >> 8) & 255);
                bArr[i4 + 1] = (byte) (i6 & 255);
                i4 += 2;
                i2--;
            }
            try {
                sb.append(new String(bArr, StringUtils.GB2312));
                return;
            } catch (UnsupportedEncodingException unused) {
                throw FormatException.getFormatInstance();
            }
        }
        throw FormatException.getFormatInstance();
    }

    private static void decodeKanjiSegment(BitSource bitSource, StringBuilder sb, int i2) throws FormatException {
        if (i2 * 13 <= bitSource.available()) {
            byte[] bArr = new byte[i2 * 2];
            int i4 = 0;
            while (i2 > 0) {
                int readBits = bitSource.readBits(13);
                int i5 = (readBits % 192) | ((readBits / 192) << 8);
                int i6 = i5 + (i5 < 7936 ? 33088 : 49472);
                bArr[i4] = (byte) (i6 >> 8);
                bArr[i4 + 1] = (byte) i6;
                i4 += 2;
                i2--;
            }
            try {
                sb.append(new String(bArr, StringUtils.SHIFT_JIS));
                return;
            } catch (UnsupportedEncodingException unused) {
                throw FormatException.getFormatInstance();
            }
        }
        throw FormatException.getFormatInstance();
    }

    private static void decodeNumericSegment(BitSource bitSource, StringBuilder sb, int i2) throws FormatException {
        while (i2 >= 3) {
            if (bitSource.available() >= 10) {
                int readBits = bitSource.readBits(10);
                if (readBits < 1000) {
                    sb.append(toAlphaNumericChar(readBits / 100));
                    sb.append(toAlphaNumericChar((readBits / 10) % 10));
                    sb.append(toAlphaNumericChar(readBits % 10));
                    i2 -= 3;
                } else {
                    throw FormatException.getFormatInstance();
                }
            } else {
                throw FormatException.getFormatInstance();
            }
        }
        if (i2 == 2) {
            if (bitSource.available() >= 7) {
                int readBits2 = bitSource.readBits(7);
                if (readBits2 < 100) {
                    sb.append(toAlphaNumericChar(readBits2 / 10));
                    sb.append(toAlphaNumericChar(readBits2 % 10));
                    return;
                }
                throw FormatException.getFormatInstance();
            }
            throw FormatException.getFormatInstance();
        } else if (i2 == 1) {
            if (bitSource.available() >= 4) {
                int readBits3 = bitSource.readBits(4);
                if (readBits3 < 10) {
                    sb.append(toAlphaNumericChar(readBits3));
                    return;
                }
                throw FormatException.getFormatInstance();
            }
            throw FormatException.getFormatInstance();
        }
    }

    private static int parseECIValue(BitSource bitSource) {
        int readBits = bitSource.readBits(8);
        if ((readBits & 128) == 0) {
            return readBits & 127;
        }
        if ((readBits & 192) == 128) {
            return bitSource.readBits(8) | ((readBits & 63) << 8);
        }
        if ((readBits & Opcodes.SHL_INT_LIT8) == 192) {
            return bitSource.readBits(16) | ((readBits & 31) << 16);
        }
        throw new IllegalArgumentException("Bad ECI bits starting with byte " + readBits);
    }

    private static char toAlphaNumericChar(int i2) throws FormatException {
        char[] cArr = ALPHANUMERIC_CHARS;
        if (i2 < cArr.length) {
            return cArr[i2];
        }
        throw FormatException.getFormatInstance();
    }
}
