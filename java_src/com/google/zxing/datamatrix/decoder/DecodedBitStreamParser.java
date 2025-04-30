package com.google.zxing.datamatrix.decoder;

import com.android.dx.io.Opcodes;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitSource;
import com.google.zxing.common.DecoderResult;
import external.org.apache.commons.lang3.d;
import io.netty.util.internal.StringUtil;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import kotlin.text.Typography;
import org.apache.http.conn.ssl.TokenParser;
/* loaded from: classes2.dex */
final class DecodedBitStreamParser {
    private static final char[] C40_BASIC_SET_CHARS = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
    private static final char[] C40_SHIFT2_SET_CHARS = {'!', '\"', '#', '$', '%', Typography.amp, '\'', '(', ')', '*', '+', StringUtil.COMMA, '-', d.f65364a, '/', ':', ';', Typography.less, '=', Typography.greater, '?', '@', '[', TokenParser.ESCAPE, ']', '^', '_'};
    private static final char[] TEXT_BASIC_SET_CHARS = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
    private static final char[] TEXT_SHIFT3_SET_CHARS = {'\'', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '{', '|', '}', '~', 127};

    /* renamed from: com.google.zxing.datamatrix.decoder.DecodedBitStreamParser$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode;

        static {
            int[] iArr = new int[Mode.values().length];
            $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode = iArr;
            try {
                iArr[Mode.C40_ENCODE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode[Mode.TEXT_ENCODE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode[Mode.ANSIX12_ENCODE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode[Mode.EDIFACT_ENCODE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode[Mode.BASE256_ENCODE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum Mode {
        PAD_ENCODE,
        ASCII_ENCODE,
        C40_ENCODE,
        TEXT_ENCODE,
        ANSIX12_ENCODE,
        EDIFACT_ENCODE,
        BASE256_ENCODE
    }

    private DecodedBitStreamParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DecoderResult decode(byte[] bArr) throws FormatException {
        BitSource bitSource = new BitSource(bArr);
        StringBuilder sb = new StringBuilder(100);
        StringBuilder sb2 = new StringBuilder(0);
        ArrayList arrayList = new ArrayList(1);
        Mode mode = Mode.ASCII_ENCODE;
        do {
            Mode mode2 = Mode.ASCII_ENCODE;
            if (mode == mode2) {
                mode = decodeAsciiSegment(bitSource, sb, sb2);
            } else {
                int i2 = AnonymousClass1.$SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode[mode.ordinal()];
                if (i2 == 1) {
                    decodeC40Segment(bitSource, sb);
                } else if (i2 == 2) {
                    decodeTextSegment(bitSource, sb);
                } else if (i2 == 3) {
                    decodeAnsiX12Segment(bitSource, sb);
                } else if (i2 == 4) {
                    decodeEdifactSegment(bitSource, sb);
                } else if (i2 == 5) {
                    decodeBase256Segment(bitSource, sb, arrayList);
                } else {
                    throw FormatException.getFormatInstance();
                }
                mode = mode2;
            }
            if (mode == Mode.PAD_ENCODE) {
                break;
            }
        } while (bitSource.available() > 0);
        if (sb2.length() > 0) {
            sb.append(sb2.toString());
        }
        String sb3 = sb.toString();
        if (arrayList.isEmpty()) {
            arrayList = null;
        }
        return new DecoderResult(bArr, sb3, arrayList, null);
    }

    private static void decodeAnsiX12Segment(BitSource bitSource, StringBuilder sb) throws FormatException {
        int readBits;
        int[] iArr = new int[3];
        while (bitSource.available() != 8 && (readBits = bitSource.readBits(8)) != 254) {
            parseTwoBytes(readBits, bitSource.readBits(8), iArr);
            for (int i2 = 0; i2 < 3; i2++) {
                int i4 = iArr[i2];
                if (i4 == 0) {
                    sb.append('\r');
                } else if (i4 == 1) {
                    sb.append('*');
                } else if (i4 == 2) {
                    sb.append(Typography.greater);
                } else if (i4 == 3) {
                    sb.append(' ');
                } else if (i4 < 14) {
                    sb.append((char) (i4 + 44));
                } else if (i4 < 40) {
                    sb.append((char) (i4 + 51));
                } else {
                    throw FormatException.getFormatInstance();
                }
            }
            if (bitSource.available() <= 0) {
                return;
            }
        }
    }

    private static Mode decodeAsciiSegment(BitSource bitSource, StringBuilder sb, StringBuilder sb2) throws FormatException {
        boolean z3 = false;
        do {
            int readBits = bitSource.readBits(8);
            if (readBits == 0) {
                throw FormatException.getFormatInstance();
            }
            if (readBits <= 128) {
                if (z3) {
                    readBits += 128;
                }
                sb.append((char) (readBits - 1));
                return Mode.ASCII_ENCODE;
            } else if (readBits == 129) {
                return Mode.PAD_ENCODE;
            } else {
                if (readBits <= 229) {
                    int i2 = readBits - 130;
                    if (i2 < 10) {
                        sb.append('0');
                    }
                    sb.append(i2);
                } else if (readBits == 230) {
                    return Mode.C40_ENCODE;
                } else {
                    if (readBits == 231) {
                        return Mode.BASE256_ENCODE;
                    }
                    if (readBits == 232) {
                        sb.append((char) 29);
                    } else if (readBits != 233 && readBits != 234) {
                        if (readBits == 235) {
                            z3 = true;
                        } else if (readBits == 236) {
                            sb.append("[)>\u001e05\u001d");
                            sb2.insert(0, "\u001e\u0004");
                        } else if (readBits == 237) {
                            sb.append("[)>\u001e06\u001d");
                            sb2.insert(0, "\u001e\u0004");
                        } else if (readBits == 238) {
                            return Mode.ANSIX12_ENCODE;
                        } else {
                            if (readBits == 239) {
                                return Mode.TEXT_ENCODE;
                            }
                            if (readBits == 240) {
                                return Mode.EDIFACT_ENCODE;
                            }
                            if (readBits != 241 && readBits >= 242 && (readBits != 254 || bitSource.available() != 0)) {
                                throw FormatException.getFormatInstance();
                            }
                        }
                    }
                }
            }
        } while (bitSource.available() > 0);
        return Mode.ASCII_ENCODE;
    }

    private static void decodeBase256Segment(BitSource bitSource, StringBuilder sb, Collection<byte[]> collection) throws FormatException {
        int byteOffset = bitSource.getByteOffset() + 1;
        int i2 = byteOffset + 1;
        int unrandomize255State = unrandomize255State(bitSource.readBits(8), byteOffset);
        if (unrandomize255State == 0) {
            unrandomize255State = bitSource.available() / 8;
        } else if (unrandomize255State >= 250) {
            unrandomize255State = ((unrandomize255State - 249) * 250) + unrandomize255State(bitSource.readBits(8), i2);
            i2++;
        }
        if (unrandomize255State >= 0) {
            byte[] bArr = new byte[unrandomize255State];
            int i4 = 0;
            while (i4 < unrandomize255State) {
                if (bitSource.available() >= 8) {
                    bArr[i4] = (byte) unrandomize255State(bitSource.readBits(8), i2);
                    i4++;
                    i2++;
                } else {
                    throw FormatException.getFormatInstance();
                }
            }
            collection.add(bArr);
            try {
                sb.append(new String(bArr, "ISO8859_1"));
                return;
            } catch (UnsupportedEncodingException e4) {
                throw new IllegalStateException("Platform does not support required encoding: " + e4);
            }
        }
        throw FormatException.getFormatInstance();
    }

    private static void decodeC40Segment(BitSource bitSource, StringBuilder sb) throws FormatException {
        int readBits;
        int[] iArr = new int[3];
        boolean z3 = false;
        int i2 = 0;
        while (bitSource.available() != 8 && (readBits = bitSource.readBits(8)) != 254) {
            parseTwoBytes(readBits, bitSource.readBits(8), iArr);
            for (int i4 = 0; i4 < 3; i4++) {
                int i5 = iArr[i4];
                if (i2 != 0) {
                    if (i2 != 1) {
                        if (i2 == 2) {
                            char[] cArr = C40_SHIFT2_SET_CHARS;
                            if (i5 < cArr.length) {
                                char c4 = cArr[i5];
                                if (z3) {
                                    sb.append((char) (c4 + 128));
                                    z3 = false;
                                } else {
                                    sb.append(c4);
                                }
                            } else if (i5 == 27) {
                                sb.append((char) 29);
                            } else if (i5 != 30) {
                                throw FormatException.getFormatInstance();
                            } else {
                                z3 = true;
                            }
                            i2 = 0;
                        } else if (i2 != 3) {
                            throw FormatException.getFormatInstance();
                        } else {
                            if (z3) {
                                sb.append((char) (i5 + Opcodes.SHL_INT_LIT8));
                                z3 = false;
                                i2 = 0;
                            } else {
                                sb.append((char) (i5 + 96));
                                i2 = 0;
                            }
                        }
                    } else if (z3) {
                        sb.append((char) (i5 + 128));
                        z3 = false;
                        i2 = 0;
                    } else {
                        sb.append((char) i5);
                        i2 = 0;
                    }
                } else if (i5 < 3) {
                    i2 = i5 + 1;
                } else {
                    char[] cArr2 = C40_BASIC_SET_CHARS;
                    if (i5 < cArr2.length) {
                        char c5 = cArr2[i5];
                        if (z3) {
                            sb.append((char) (c5 + 128));
                            z3 = false;
                        } else {
                            sb.append(c5);
                        }
                    } else {
                        throw FormatException.getFormatInstance();
                    }
                }
            }
            if (bitSource.available() <= 0) {
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x000b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void decodeEdifactSegment(com.google.zxing.common.BitSource r5, java.lang.StringBuilder r6) {
        /*
            r0 = 0
            r1 = 0
        L2:
            int r2 = r5.available()
            r3 = 16
            if (r2 > r3) goto Lb
            return
        Lb:
            r2 = 0
        Lc:
            r3 = 4
            if (r2 >= r3) goto L28
            r3 = 6
            int r3 = r5.readBits(r3)
            r4 = 31
            if (r3 != r4) goto L19
            r1 = 1
        L19:
            if (r1 != 0) goto L25
            r4 = r3 & 32
            if (r4 != 0) goto L21
            r3 = r3 | 64
        L21:
            char r3 = (char) r3
            r6.append(r3)
        L25:
            int r2 = r2 + 1
            goto Lc
        L28:
            if (r1 != 0) goto L30
            int r2 = r5.available()
            if (r2 > 0) goto L2
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.datamatrix.decoder.DecodedBitStreamParser.decodeEdifactSegment(com.google.zxing.common.BitSource, java.lang.StringBuilder):void");
    }

    private static void decodeTextSegment(BitSource bitSource, StringBuilder sb) throws FormatException {
        int readBits;
        int[] iArr = new int[3];
        boolean z3 = false;
        int i2 = 0;
        while (bitSource.available() != 8 && (readBits = bitSource.readBits(8)) != 254) {
            parseTwoBytes(readBits, bitSource.readBits(8), iArr);
            for (int i4 = 0; i4 < 3; i4++) {
                int i5 = iArr[i4];
                if (i2 != 0) {
                    if (i2 != 1) {
                        if (i2 == 2) {
                            char[] cArr = C40_SHIFT2_SET_CHARS;
                            if (i5 < cArr.length) {
                                char c4 = cArr[i5];
                                if (z3) {
                                    sb.append((char) (c4 + 128));
                                    z3 = false;
                                } else {
                                    sb.append(c4);
                                }
                            } else if (i5 == 27) {
                                sb.append((char) 29);
                            } else if (i5 != 30) {
                                throw FormatException.getFormatInstance();
                            } else {
                                z3 = true;
                            }
                            i2 = 0;
                        } else if (i2 == 3) {
                            char[] cArr2 = TEXT_SHIFT3_SET_CHARS;
                            if (i5 < cArr2.length) {
                                char c5 = cArr2[i5];
                                if (z3) {
                                    sb.append((char) (c5 + 128));
                                    z3 = false;
                                    i2 = 0;
                                } else {
                                    sb.append(c5);
                                    i2 = 0;
                                }
                            } else {
                                throw FormatException.getFormatInstance();
                            }
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                    } else if (z3) {
                        sb.append((char) (i5 + 128));
                        z3 = false;
                        i2 = 0;
                    } else {
                        sb.append((char) i5);
                        i2 = 0;
                    }
                } else if (i5 < 3) {
                    i2 = i5 + 1;
                } else {
                    char[] cArr3 = TEXT_BASIC_SET_CHARS;
                    if (i5 < cArr3.length) {
                        char c6 = cArr3[i5];
                        if (z3) {
                            sb.append((char) (c6 + 128));
                            z3 = false;
                        } else {
                            sb.append(c6);
                        }
                    } else {
                        throw FormatException.getFormatInstance();
                    }
                }
            }
            if (bitSource.available() <= 0) {
                return;
            }
        }
    }

    private static void parseTwoBytes(int i2, int i4, int[] iArr) {
        int i5 = ((i2 << 8) + i4) - 1;
        int i6 = i5 / 1600;
        iArr[0] = i6;
        int i7 = i5 - (i6 * 1600);
        int i8 = i7 / 40;
        iArr[1] = i8;
        iArr[2] = i7 - (i8 * 40);
    }

    private static int unrandomize255State(int i2, int i4) {
        int i5 = i2 - (((i4 * 149) % 255) + 1);
        return i5 >= 0 ? i5 : i5 + 256;
    }
}
