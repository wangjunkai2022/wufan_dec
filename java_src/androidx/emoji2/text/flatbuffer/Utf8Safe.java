package androidx.emoji2.text.flatbuffer;

import androidx.emoji2.text.flatbuffer.Utf8;
import com.android.dx.io.Opcodes;
import java.nio.ByteBuffer;
import tv.danmaku.ijk.media.player.IjkMediaMeta;
/* loaded from: classes.dex */
public final class Utf8Safe extends Utf8 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class UnpairedSurrogateException extends IllegalArgumentException {
        UnpairedSurrogateException(int i2, int i4) {
            super("Unpaired surrogate at index " + i2 + " of " + i4);
        }
    }

    private static int a(CharSequence charSequence) {
        int length = charSequence.length();
        int i2 = 0;
        while (i2 < length && charSequence.charAt(i2) < 128) {
            i2++;
        }
        int i4 = length;
        while (true) {
            if (i2 < length) {
                char charAt = charSequence.charAt(i2);
                if (charAt >= 2048) {
                    i4 += d(charSequence, i2);
                    break;
                }
                i4 += (127 - charAt) >>> 31;
                i2++;
            } else {
                break;
            }
        }
        if (i4 >= length) {
            return i4;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i4 + IjkMediaMeta.AV_CH_WIDE_RIGHT));
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
        return r9 + r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int b(java.lang.CharSequence r7, byte[] r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.flatbuffer.Utf8Safe.b(java.lang.CharSequence, byte[], int, int):int");
    }

    private static void c(CharSequence charSequence, ByteBuffer byteBuffer) {
        int length = charSequence.length();
        int position = byteBuffer.position();
        int i2 = 0;
        while (i2 < length) {
            try {
                char charAt = charSequence.charAt(i2);
                if (charAt >= 128) {
                    break;
                }
                byteBuffer.put(position + i2, (byte) charAt);
                i2++;
            } catch (IndexOutOfBoundsException unused) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(i2) + " at index " + (byteBuffer.position() + Math.max(i2, (position - byteBuffer.position()) + 1)));
            }
        }
        if (i2 == length) {
            byteBuffer.position(position + i2);
            return;
        }
        position += i2;
        while (i2 < length) {
            char charAt2 = charSequence.charAt(i2);
            if (charAt2 < 128) {
                byteBuffer.put(position, (byte) charAt2);
            } else if (charAt2 < 2048) {
                int i4 = position + 1;
                try {
                    byteBuffer.put(position, (byte) ((charAt2 >>> 6) | 192));
                    byteBuffer.put(i4, (byte) ((charAt2 & '?') | 128));
                    position = i4;
                } catch (IndexOutOfBoundsException unused2) {
                    position = i4;
                    throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(i2) + " at index " + (byteBuffer.position() + Math.max(i2, (position - byteBuffer.position()) + 1)));
                }
            } else if (charAt2 >= 55296 && 57343 >= charAt2) {
                int i5 = i2 + 1;
                if (i5 != length) {
                    try {
                        char charAt3 = charSequence.charAt(i5);
                        if (Character.isSurrogatePair(charAt2, charAt3)) {
                            int codePoint = Character.toCodePoint(charAt2, charAt3);
                            int i6 = position + 1;
                            try {
                                byteBuffer.put(position, (byte) ((codePoint >>> 18) | 240));
                                int i7 = i6 + 1;
                                byteBuffer.put(i6, (byte) (((codePoint >>> 12) & 63) | 128));
                                int i8 = i7 + 1;
                                byteBuffer.put(i7, (byte) (((codePoint >>> 6) & 63) | 128));
                                byteBuffer.put(i8, (byte) ((codePoint & 63) | 128));
                                position = i8;
                                i2 = i5;
                            } catch (IndexOutOfBoundsException unused3) {
                                position = i6;
                                i2 = i5;
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(i2) + " at index " + (byteBuffer.position() + Math.max(i2, (position - byteBuffer.position()) + 1)));
                            }
                        } else {
                            i2 = i5;
                        }
                    } catch (IndexOutOfBoundsException unused4) {
                    }
                }
                throw new UnpairedSurrogateException(i2, length);
            } else {
                int i9 = position + 1;
                byteBuffer.put(position, (byte) ((charAt2 >>> '\f') | Opcodes.SHL_INT_LIT8));
                position = i9 + 1;
                byteBuffer.put(i9, (byte) (((charAt2 >>> 6) & 63) | 128));
                byteBuffer.put(position, (byte) ((charAt2 & '?') | 128));
            }
            i2++;
            position++;
        }
        byteBuffer.position(position);
    }

    private static int d(CharSequence charSequence, int i2) {
        int length = charSequence.length();
        int i4 = 0;
        while (i2 < length) {
            char charAt = charSequence.charAt(i2);
            if (charAt < 2048) {
                i4 += (127 - charAt) >>> 31;
            } else {
                i4 += 2;
                if (55296 <= charAt && charAt <= 57343) {
                    if (Character.codePointAt(charSequence, i2) < 65536) {
                        throw new UnpairedSurrogateException(i2, length);
                    }
                    i2++;
                }
            }
            i2++;
        }
        return i4;
    }

    public static String decodeUtf8Array(byte[] bArr, int i2, int i4) {
        if ((i2 | i4 | ((bArr.length - i2) - i4)) >= 0) {
            int i5 = i2 + i4;
            char[] cArr = new char[i4];
            int i6 = 0;
            while (i2 < i5) {
                byte b4 = bArr[i2];
                if (!Utf8.DecodeUtil.g(b4)) {
                    break;
                }
                i2++;
                Utf8.DecodeUtil.b(b4, cArr, i6);
                i6++;
            }
            int i7 = i6;
            while (i2 < i5) {
                int i8 = i2 + 1;
                byte b5 = bArr[i2];
                if (Utf8.DecodeUtil.g(b5)) {
                    int i9 = i7 + 1;
                    Utf8.DecodeUtil.b(b5, cArr, i7);
                    while (i8 < i5) {
                        byte b6 = bArr[i8];
                        if (!Utf8.DecodeUtil.g(b6)) {
                            break;
                        }
                        i8++;
                        Utf8.DecodeUtil.b(b6, cArr, i9);
                        i9++;
                    }
                    i2 = i8;
                    i7 = i9;
                } else if (Utf8.DecodeUtil.i(b5)) {
                    if (i8 < i5) {
                        Utf8.DecodeUtil.d(b5, bArr[i8], cArr, i7);
                        i2 = i8 + 1;
                        i7++;
                    } else {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                } else if (Utf8.DecodeUtil.h(b5)) {
                    if (i8 < i5 - 1) {
                        int i10 = i8 + 1;
                        Utf8.DecodeUtil.c(b5, bArr[i8], bArr[i10], cArr, i7);
                        i2 = i10 + 1;
                        i7++;
                    } else {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                } else if (i8 < i5 - 2) {
                    int i11 = i8 + 1;
                    byte b7 = bArr[i8];
                    int i12 = i11 + 1;
                    Utf8.DecodeUtil.a(b5, b7, bArr[i11], bArr[i12], cArr, i7);
                    i2 = i12 + 1;
                    i7 = i7 + 1 + 1;
                } else {
                    throw new IllegalArgumentException("Invalid UTF-8");
                }
            }
            return new String(cArr, 0, i7);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i4)));
    }

    public static String decodeUtf8Buffer(ByteBuffer byteBuffer, int i2, int i4) {
        if ((i2 | i4 | ((byteBuffer.limit() - i2) - i4)) >= 0) {
            int i5 = i2 + i4;
            char[] cArr = new char[i4];
            int i6 = 0;
            while (i2 < i5) {
                byte b4 = byteBuffer.get(i2);
                if (!Utf8.DecodeUtil.g(b4)) {
                    break;
                }
                i2++;
                Utf8.DecodeUtil.b(b4, cArr, i6);
                i6++;
            }
            int i7 = i6;
            while (i2 < i5) {
                int i8 = i2 + 1;
                byte b5 = byteBuffer.get(i2);
                if (Utf8.DecodeUtil.g(b5)) {
                    int i9 = i7 + 1;
                    Utf8.DecodeUtil.b(b5, cArr, i7);
                    while (i8 < i5) {
                        byte b6 = byteBuffer.get(i8);
                        if (!Utf8.DecodeUtil.g(b6)) {
                            break;
                        }
                        i8++;
                        Utf8.DecodeUtil.b(b6, cArr, i9);
                        i9++;
                    }
                    i2 = i8;
                    i7 = i9;
                } else if (Utf8.DecodeUtil.i(b5)) {
                    if (i8 < i5) {
                        Utf8.DecodeUtil.d(b5, byteBuffer.get(i8), cArr, i7);
                        i2 = i8 + 1;
                        i7++;
                    } else {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                } else if (Utf8.DecodeUtil.h(b5)) {
                    if (i8 < i5 - 1) {
                        int i10 = i8 + 1;
                        Utf8.DecodeUtil.c(b5, byteBuffer.get(i8), byteBuffer.get(i10), cArr, i7);
                        i2 = i10 + 1;
                        i7++;
                    } else {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                } else if (i8 < i5 - 2) {
                    int i11 = i8 + 1;
                    byte b7 = byteBuffer.get(i8);
                    int i12 = i11 + 1;
                    Utf8.DecodeUtil.a(b5, b7, byteBuffer.get(i11), byteBuffer.get(i12), cArr, i7);
                    i2 = i12 + 1;
                    i7 = i7 + 1 + 1;
                } else {
                    throw new IllegalArgumentException("Invalid UTF-8");
                }
            }
            return new String(cArr, 0, i7);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i2), Integer.valueOf(i4)));
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public String decodeUtf8(ByteBuffer byteBuffer, int i2, int i4) throws IllegalArgumentException {
        if (byteBuffer.hasArray()) {
            return decodeUtf8Array(byteBuffer.array(), byteBuffer.arrayOffset() + i2, i4);
        }
        return decodeUtf8Buffer(byteBuffer, i2, i4);
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            int arrayOffset = byteBuffer.arrayOffset();
            byteBuffer.position(b(charSequence, byteBuffer.array(), byteBuffer.position() + arrayOffset, byteBuffer.remaining()) - arrayOffset);
            return;
        }
        c(charSequence, byteBuffer);
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public int encodedLength(CharSequence charSequence) {
        return a(charSequence);
    }
}
