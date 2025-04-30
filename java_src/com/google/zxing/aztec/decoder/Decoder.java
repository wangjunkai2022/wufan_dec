package com.google.zxing.aztec.decoder;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.zxing.FormatException;
import com.google.zxing.aztec.AztecDetectorResult;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.Util.g0;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.sdk.a.g;
import com.uc.crashsdk.export.LogType;
import com.umeng.analytics.pro.ai;
import com.xinzhu.overmind.utils.helpers.d;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import m.a;
import net.lingala.zip4j.util.e;
/* loaded from: classes2.dex */
public final class Decoder {
    private int codewordSize;
    private AztecDetectorResult ddata;
    private int invertedBitCount;
    private int numCodewords;
    private static final int[] NB_BITS_COMPACT = {0, 104, 240, TTAdConstant.INTERACTION_TYPE_CODE, TypedValues.MotionType.TYPE_DRAW_PATH};
    private static final int[] NB_BITS = {0, 128, 288, 480, TypedValues.TransitionType.TYPE_AUTO_TRANSITION, 960, 1248, 1568, 1920, LogType.UNEXP_LOW_MEMORY, 2720, 3168, 3648, 4160, 4704, 5280, 5888, 6528, 7200, 7904, 8640, 9408, 10208, 11040, 11904, 12800, 13728, 14688, 15680, 16704, 17760, 18848, 19968};
    private static final int[] NB_DATABLOCK_COMPACT = {0, 17, 40, 51, 76};
    private static final int[] NB_DATABLOCK = {0, 21, 48, 60, 88, 120, 156, 196, 240, 230, 272, TypedValues.AttributesType.TYPE_PATH_ROTATE, 364, 416, 470, 528, 588, 652, 720, 790, 864, 940, 1020, 920, 992, 1066, 1144, 1224, 1306, 1392, 1480, 1570, 1664};
    private static final String[] UPPER_TABLE = {"CTRL_PS", " ", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "CTRL_LL", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    private static final String[] LOWER_TABLE = {"CTRL_PS", " ", "a", "b", ai.aD, d.f64708a, "e", "f", g.f56552a, "h", ai.aA, "j", "k", "l", "m", "n", "o", ai.av, "q", e.f73017f0, ai.az, ai.aF, ai.aE, "v", "w", "x", "y", ai.aB, "CTRL_US", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    private static final String[] MIXED_TABLE = {"CTRL_PS", " ", "\u0001", "\u0002", "\u0003", "\u0004", "\u0005", "\u0006", "\u0007", "\b", "\t", "\n", "\u000b", "\f", "\r", "\u001b", "\u001c", "\u001d", "\u001e", "\u001f", "@", "\\", "^", "_", "`", "|", "~", "\u007f", "CTRL_LL", "CTRL_UL", "CTRL_PL", "CTRL_BS"};
    private static final String[] PUNCT_TABLE = {"", "\r", "\r\n", ". ", ", ", ": ", "!", a.f72569g, "#", "$", "%", a.f72566d, "'", "(", ")", WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD, "+", ",", "-", g0.f27568a, e.F0, ":", ";", SimpleComparison.LESS_THAN_OPERATION, SimpleComparison.EQUAL_TO_OPERATION, SimpleComparison.GREATER_THAN_OPERATION, "?", "[", "]", "{", "}", "CTRL_UL"};
    private static final String[] DIGIT_TABLE = {"CTRL_PS", " ", "0", "1", PayCenterOrderRequest.PAY_TYPE_RECHARGE, "3", "4", "5", "6", "7", "8", "9", ",", g0.f27568a, "CTRL_UL", "CTRL_US"};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.zxing.aztec.decoder.Decoder$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table;

        static {
            int[] iArr = new int[Table.values().length];
            $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table = iArr;
            try {
                iArr[Table.BINARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.UPPER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.LOWER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.MIXED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.PUNCT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.DIGIT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum Table {
        UPPER,
        LOWER,
        MIXED,
        DIGIT,
        PUNCT,
        BINARY
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00f0, code lost:
        r0 = r0 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean[] correctBits(boolean[] r14) throws com.google.zxing.FormatException {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.aztec.decoder.Decoder.correctBits(boolean[]):boolean[]");
    }

    private boolean[] extractBits(BitMatrix bitMatrix) throws FormatException {
        boolean[] zArr;
        int i2;
        if (this.ddata.isCompact()) {
            int nbLayers = this.ddata.getNbLayers();
            int[] iArr = NB_BITS_COMPACT;
            if (nbLayers <= iArr.length) {
                zArr = new boolean[iArr[this.ddata.getNbLayers()]];
                this.numCodewords = NB_DATABLOCK_COMPACT[this.ddata.getNbLayers()];
            } else {
                throw FormatException.getFormatInstance();
            }
        } else {
            int nbLayers2 = this.ddata.getNbLayers();
            int[] iArr2 = NB_BITS;
            if (nbLayers2 <= iArr2.length) {
                zArr = new boolean[iArr2[this.ddata.getNbLayers()]];
                this.numCodewords = NB_DATABLOCK[this.ddata.getNbLayers()];
            } else {
                throw FormatException.getFormatInstance();
            }
        }
        int nbLayers3 = this.ddata.getNbLayers();
        int height = bitMatrix.getHeight();
        int i4 = 0;
        int i5 = 0;
        while (nbLayers3 != 0) {
            int i6 = 0;
            int i7 = 0;
            while (true) {
                i2 = height * 2;
                if (i6 >= i2 - 4) {
                    break;
                }
                int i8 = (i6 / 2) + i5;
                zArr[i4 + i6] = bitMatrix.get(i5 + i7, i8);
                zArr[((i2 + i4) - 4) + i6] = bitMatrix.get(i8, ((i5 + height) - 1) - i7);
                i7 = (i7 + 1) % 2;
                i6++;
            }
            int i9 = 0;
            for (int i10 = i2 + 1; i10 > 5; i10--) {
                int i11 = i2 - i10;
                int i12 = ((i10 / 2) + i5) - 1;
                zArr[(((height * 4) + i4) - 8) + i11 + 1] = bitMatrix.get(((i5 + height) - 1) - i9, i12);
                zArr[(((height * 6) + i4) - 12) + i11 + 1] = bitMatrix.get(i12, i5 + i9);
                i9 = (i9 + 1) % 2;
            }
            i5 += 2;
            i4 += (height * 8) - 16;
            nbLayers3--;
            height -= 4;
        }
        return zArr;
    }

    private static String getCharacter(Table table, int i2) {
        int i4 = AnonymousClass1.$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[table.ordinal()];
        if (i4 != 2) {
            if (i4 != 3) {
                if (i4 != 4) {
                    if (i4 != 5) {
                        return i4 != 6 ? "" : DIGIT_TABLE[i2];
                    }
                    return PUNCT_TABLE[i2];
                }
                return MIXED_TABLE[i2];
            }
            return LOWER_TABLE[i2];
        }
        return UPPER_TABLE[i2];
    }

    private String getEncodedData(boolean[] zArr) throws FormatException {
        int nbDatablocks = (this.codewordSize * this.ddata.getNbDatablocks()) - this.invertedBitCount;
        if (nbDatablocks <= zArr.length) {
            Table table = Table.UPPER;
            StringBuilder sb = new StringBuilder(20);
            Table table2 = table;
            boolean z3 = false;
            boolean z4 = false;
            int i2 = 0;
            while (true) {
                boolean z5 = false;
                while (!z3) {
                    if (z4) {
                        z5 = true;
                    } else {
                        table2 = table;
                    }
                    if (AnonymousClass1.$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[table.ordinal()] != 1) {
                        int i4 = table == Table.DIGIT ? 4 : 5;
                        if (nbDatablocks - i2 >= i4) {
                            int readCode = readCode(zArr, i2, i4);
                            i2 += i4;
                            String character = getCharacter(table, readCode);
                            if (character.startsWith("CTRL_")) {
                                table = getTable(character.charAt(5));
                                if (character.charAt(6) == 'S') {
                                    z4 = true;
                                    continue;
                                } else {
                                    continue;
                                }
                            } else {
                                sb.append(character);
                                continue;
                            }
                        }
                        z3 = true;
                        continue;
                    } else {
                        if (nbDatablocks - i2 >= 8) {
                            int readCode2 = readCode(zArr, i2, 8);
                            i2 += 8;
                            sb.append((char) readCode2);
                            continue;
                        }
                        z3 = true;
                        continue;
                    }
                    if (z5) {
                        break;
                    }
                }
                return sb.toString();
                table = table2;
                z4 = false;
            }
        } else {
            throw FormatException.getFormatInstance();
        }
    }

    private static Table getTable(char c4) {
        if (c4 != 'B') {
            if (c4 != 'D') {
                if (c4 != 'P') {
                    if (c4 != 'L') {
                        if (c4 != 'M') {
                            return Table.UPPER;
                        }
                        return Table.MIXED;
                    }
                    return Table.LOWER;
                }
                return Table.PUNCT;
            }
            return Table.DIGIT;
        }
        return Table.BINARY;
    }

    private static int readCode(boolean[] zArr, int i2, int i4) {
        int i5 = 0;
        for (int i6 = i2; i6 < i2 + i4; i6++) {
            i5 <<= 1;
            if (zArr[i6]) {
                i5++;
            }
        }
        return i5;
    }

    private static BitMatrix removeDashedLines(BitMatrix bitMatrix) {
        int width = ((((bitMatrix.getWidth() - 1) / 2) / 16) * 2) + 1;
        BitMatrix bitMatrix2 = new BitMatrix(bitMatrix.getWidth() - width, bitMatrix.getHeight() - width);
        int i2 = 0;
        for (int i4 = 0; i4 < bitMatrix.getWidth(); i4++) {
            if (((bitMatrix.getWidth() / 2) - i4) % 16 != 0) {
                int i5 = 0;
                for (int i6 = 0; i6 < bitMatrix.getHeight(); i6++) {
                    if (((bitMatrix.getWidth() / 2) - i6) % 16 != 0) {
                        if (bitMatrix.get(i4, i6)) {
                            bitMatrix2.set(i2, i5);
                        }
                        i5++;
                    }
                }
                i2++;
            }
        }
        return bitMatrix2;
    }

    public DecoderResult decode(AztecDetectorResult aztecDetectorResult) throws FormatException {
        this.ddata = aztecDetectorResult;
        BitMatrix bits = aztecDetectorResult.getBits();
        if (!this.ddata.isCompact()) {
            bits = removeDashedLines(this.ddata.getBits());
        }
        return new DecoderResult(null, getEncodedData(correctBits(extractBits(bits))), null, null);
    }
}
