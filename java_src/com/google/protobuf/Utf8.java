package com.google.protobuf;

import com.android.dx.io.Opcodes;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.nio.ByteBuffer;
import tv.danmaku.ijk.media.player.IjkMediaMeta;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class Utf8 {
    private static final long ASCII_MASK_LONG = -9187201950435737472L;
    public static final int COMPLETE = 0;
    public static final int MALFORMED = -1;
    static final int MAX_BYTES_PER_CHAR = 3;
    private static final int UNSAFE_COUNT_ASCII_THRESHOLD = 16;
    private static final Processor processor;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class Processor {
        Processor() {
        }

        abstract int encodeUtf8(CharSequence charSequence, byte[] bArr, int i2, int i4);

        final void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
            if (byteBuffer.hasArray()) {
                int arrayOffset = byteBuffer.arrayOffset();
                byteBuffer.position(Utf8.encode(charSequence, byteBuffer.array(), byteBuffer.position() + arrayOffset, byteBuffer.remaining()) - arrayOffset);
            } else if (byteBuffer.isDirect()) {
                encodeUtf8Direct(charSequence, byteBuffer);
            } else {
                encodeUtf8Default(charSequence, byteBuffer);
            }
        }

        final void encodeUtf8Default(CharSequence charSequence, ByteBuffer byteBuffer) {
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

        abstract void encodeUtf8Direct(CharSequence charSequence, ByteBuffer byteBuffer);

        final boolean isValidUtf8(byte[] bArr, int i2, int i4) {
            return partialIsValidUtf8(0, bArr, i2, i4) == 0;
        }

        final int partialIsValidUtf8(int i2, ByteBuffer byteBuffer, int i4, int i5) {
            if (byteBuffer.hasArray()) {
                int arrayOffset = byteBuffer.arrayOffset();
                return partialIsValidUtf8(i2, byteBuffer.array(), i4 + arrayOffset, arrayOffset + i5);
            } else if (byteBuffer.isDirect()) {
                return partialIsValidUtf8Direct(i2, byteBuffer, i4, i5);
            } else {
                return partialIsValidUtf8Default(i2, byteBuffer, i4, i5);
            }
        }

        abstract int partialIsValidUtf8(int i2, byte[] bArr, int i4, int i5);

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0017, code lost:
            if (r8.get(r9) > (-65)) goto L12;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x004c, code lost:
            if (r8.get(r9) > (-65)) goto L31;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x008b, code lost:
            if (r8.get(r9) > (-65)) goto L51;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final int partialIsValidUtf8Default(int r7, java.nio.ByteBuffer r8, int r9, int r10) {
            /*
                r6 = this;
                if (r7 == 0) goto L8e
                if (r9 < r10) goto L5
                return r7
            L5:
                byte r0 = (byte) r7
                r1 = -32
                r2 = -1
                r3 = -65
                if (r0 >= r1) goto L1e
                r7 = -62
                if (r0 < r7) goto L1d
                int r7 = r9 + 1
                byte r9 = r8.get(r9)
                if (r9 <= r3) goto L1a
                goto L1d
            L1a:
                r9 = r7
                goto L8e
            L1d:
                return r2
            L1e:
                r4 = -16
                if (r0 >= r4) goto L4f
                int r7 = r7 >> 8
                r7 = r7 ^ r2
                byte r7 = (byte) r7
                if (r7 != 0) goto L38
                int r7 = r9 + 1
                byte r9 = r8.get(r9)
                if (r7 < r10) goto L35
                int r7 = com.google.protobuf.Utf8.access$000(r0, r9)
                return r7
            L35:
                r5 = r9
                r9 = r7
                r7 = r5
            L38:
                if (r7 > r3) goto L4e
                r4 = -96
                if (r0 != r1) goto L40
                if (r7 < r4) goto L4e
            L40:
                r1 = -19
                if (r0 != r1) goto L46
                if (r7 >= r4) goto L4e
            L46:
                int r7 = r9 + 1
                byte r9 = r8.get(r9)
                if (r9 <= r3) goto L1a
            L4e:
                return r2
            L4f:
                int r1 = r7 >> 8
                r1 = r1 ^ r2
                byte r1 = (byte) r1
                r4 = 0
                if (r1 != 0) goto L65
                int r7 = r9 + 1
                byte r1 = r8.get(r9)
                if (r7 < r10) goto L63
                int r7 = com.google.protobuf.Utf8.access$000(r0, r1)
                return r7
            L63:
                r9 = r7
                goto L68
            L65:
                int r7 = r7 >> 16
                byte r4 = (byte) r7
            L68:
                if (r4 != 0) goto L78
                int r7 = r9 + 1
                byte r4 = r8.get(r9)
                if (r7 < r10) goto L77
                int r7 = com.google.protobuf.Utf8.access$100(r0, r1, r4)
                return r7
            L77:
                r9 = r7
            L78:
                if (r1 > r3) goto L8d
                int r7 = r0 << 28
                int r1 = r1 + 112
                int r7 = r7 + r1
                int r7 = r7 >> 30
                if (r7 != 0) goto L8d
                if (r4 > r3) goto L8d
                int r7 = r9 + 1
                byte r9 = r8.get(r9)
                if (r9 <= r3) goto L1a
            L8d:
                return r2
            L8e:
                int r7 = partialIsValidUtf8(r8, r9, r10)
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.Processor.partialIsValidUtf8Default(int, java.nio.ByteBuffer, int, int):int");
        }

        abstract int partialIsValidUtf8Direct(int i2, ByteBuffer byteBuffer, int i4, int i5);

        final boolean isValidUtf8(ByteBuffer byteBuffer, int i2, int i4) {
            return partialIsValidUtf8(0, byteBuffer, i2, i4) == 0;
        }

        private static int partialIsValidUtf8(ByteBuffer byteBuffer, int i2, int i4) {
            int estimateConsecutiveAscii = i2 + Utf8.estimateConsecutiveAscii(byteBuffer, i2, i4);
            while (estimateConsecutiveAscii < i4) {
                int i5 = estimateConsecutiveAscii + 1;
                byte b4 = byteBuffer.get(estimateConsecutiveAscii);
                if (b4 < 0) {
                    if (b4 < -32) {
                        if (i5 >= i4) {
                            return b4;
                        }
                        if (b4 < -62 || byteBuffer.get(i5) > -65) {
                            return -1;
                        }
                        i5++;
                    } else if (b4 >= -16) {
                        if (i5 >= i4 - 2) {
                            return Utf8.incompleteStateFor(byteBuffer, b4, i5, i4 - i5);
                        }
                        int i6 = i5 + 1;
                        byte b5 = byteBuffer.get(i5);
                        if (b5 <= -65 && (((b4 << BinaryMemcacheOpcodes.TOUCH) + (b5 + 112)) >> 30) == 0) {
                            int i7 = i6 + 1;
                            if (byteBuffer.get(i6) <= -65) {
                                i5 = i7 + 1;
                                if (byteBuffer.get(i7) > -65) {
                                }
                            }
                        }
                        return -1;
                    } else if (i5 >= i4 - 1) {
                        return Utf8.incompleteStateFor(byteBuffer, b4, i5, i4 - i5);
                    } else {
                        int i8 = i5 + 1;
                        byte b6 = byteBuffer.get(i5);
                        if (b6 > -65 || ((b4 == -32 && b6 < -96) || ((b4 == -19 && b6 >= -96) || byteBuffer.get(i8) > -65))) {
                            return -1;
                        }
                        estimateConsecutiveAscii = i8 + 1;
                    }
                }
                estimateConsecutiveAscii = i5;
            }
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class UnpairedSurrogateException extends IllegalArgumentException {
        UnpairedSurrogateException(int i2, int i4) {
            super("Unpaired surrogate at index " + i2 + " of " + i4);
        }
    }

    static {
        processor = UnsafeProcessor.isAvailable() ? new UnsafeProcessor() : new SafeProcessor();
    }

    private Utf8() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int encode(CharSequence charSequence, byte[] bArr, int i2, int i4) {
        return processor.encodeUtf8(charSequence, bArr, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
        processor.encodeUtf8(charSequence, byteBuffer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int encodedLength(CharSequence charSequence) {
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
                    i4 += encodedLengthGeneral(charSequence, i2);
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

    private static int encodedLengthGeneral(CharSequence charSequence, int i2) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public static int estimateConsecutiveAscii(ByteBuffer byteBuffer, int i2, int i4) {
        int i5 = i4 - 7;
        int i6 = i2;
        while (i6 < i5 && (byteBuffer.getLong(i6) & ASCII_MASK_LONG) == 0) {
            i6 += 8;
        }
        return i6 - i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int incompleteStateFor(int i2) {
        if (i2 > -12) {
            return -1;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int incompleteStateFor(int i2, int i4) {
        if (i2 > -12 || i4 > -65) {
            return -1;
        }
        return i2 ^ (i4 << 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int incompleteStateFor(int i2, int i4, int i5) {
        if (i2 > -12 || i4 > -65 || i5 > -65) {
            return -1;
        }
        return (i2 ^ (i4 << 8)) ^ (i5 << 16);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int incompleteStateFor(byte[] bArr, int i2, int i4) {
        byte b4 = bArr[i2 - 1];
        int i5 = i4 - i2;
        if (i5 != 0) {
            if (i5 != 1) {
                if (i5 == 2) {
                    return incompleteStateFor(b4, bArr[i2], bArr[i2 + 1]);
                }
                throw new AssertionError();
            }
            return incompleteStateFor(b4, bArr[i2]);
        }
        return incompleteStateFor(b4);
    }

    public static boolean isValidUtf8(byte[] bArr) {
        return processor.isValidUtf8(bArr, 0, bArr.length);
    }

    public static int partialIsValidUtf8(int i2, byte[] bArr, int i4, int i5) {
        return processor.partialIsValidUtf8(i2, bArr, i4, i5);
    }

    /* loaded from: classes2.dex */
    static final class UnsafeProcessor extends Processor {
        UnsafeProcessor() {
        }

        static boolean isAvailable() {
            return UnsafeUtil.hasUnsafeArrayOperations() && UnsafeUtil.hasUnsafeByteBufferOperations();
        }

        private static int unsafeEstimateConsecutiveAscii(byte[] bArr, long j4, int i2) {
            if (i2 < 16) {
                return 0;
            }
            int i4 = ((int) j4) & 7;
            int i5 = i4;
            while (i5 > 0) {
                long j5 = 1 + j4;
                if (UnsafeUtil.getByte(bArr, j4) < 0) {
                    return i4 - i5;
                }
                i5--;
                j4 = j5;
            }
            int i6 = i2 - i4;
            while (i6 >= 8 && (UnsafeUtil.getLong(bArr, j4) & Utf8.ASCII_MASK_LONG) == 0) {
                j4 += 8;
                i6 -= 8;
            }
            return i2 - i6;
        }

        private static int unsafeIncompleteStateFor(byte[] bArr, int i2, long j4, int i4) {
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 == 2) {
                        return Utf8.incompleteStateFor(i2, UnsafeUtil.getByte(bArr, j4), UnsafeUtil.getByte(bArr, j4 + 1));
                    }
                    throw new AssertionError();
                }
                return Utf8.incompleteStateFor(i2, UnsafeUtil.getByte(bArr, j4));
            }
            return Utf8.incompleteStateFor(i2);
        }

        @Override // com.google.protobuf.Utf8.Processor
        int encodeUtf8(CharSequence charSequence, byte[] bArr, int i2, int i4) {
            char c4;
            long j4;
            long arrayBaseOffset;
            long j5;
            long j6;
            int i5;
            char charAt;
            long arrayBaseOffset2 = UnsafeUtil.getArrayBaseOffset() + i2;
            long j7 = i4 + arrayBaseOffset2;
            int length = charSequence.length();
            if (length > i4 || bArr.length - i4 < i2) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(length - 1) + " at index " + (i2 + i4));
            }
            int i6 = 0;
            while (true) {
                c4 = 128;
                j4 = 1;
                if (i6 >= length || (charAt = charSequence.charAt(i6)) >= 128) {
                    break;
                }
                UnsafeUtil.putByte(bArr, arrayBaseOffset2, (byte) charAt);
                i6++;
                arrayBaseOffset2 = 1 + arrayBaseOffset2;
            }
            if (i6 == length) {
                arrayBaseOffset = UnsafeUtil.getArrayBaseOffset();
            } else {
                while (i6 < length) {
                    char charAt2 = charSequence.charAt(i6);
                    if (charAt2 >= c4 || arrayBaseOffset2 >= j7) {
                        if (charAt2 < 2048 && arrayBaseOffset2 <= j7 - 2) {
                            long j8 = arrayBaseOffset2 + j4;
                            UnsafeUtil.putByte(bArr, arrayBaseOffset2, (byte) ((charAt2 >>> 6) | 960));
                            UnsafeUtil.putByte(bArr, j8, (byte) ((charAt2 & '?') | 128));
                            j5 = j8 + j4;
                            j6 = j4;
                        } else if ((charAt2 >= 55296 && 57343 >= charAt2) || arrayBaseOffset2 > j7 - 3) {
                            if (arrayBaseOffset2 <= j7 - 4) {
                                int i7 = i6 + 1;
                                if (i7 != length) {
                                    char charAt3 = charSequence.charAt(i7);
                                    if (Character.isSurrogatePair(charAt2, charAt3)) {
                                        int codePoint = Character.toCodePoint(charAt2, charAt3);
                                        long j9 = arrayBaseOffset2 + 1;
                                        UnsafeUtil.putByte(bArr, arrayBaseOffset2, (byte) ((codePoint >>> 18) | 240));
                                        long j10 = j9 + 1;
                                        UnsafeUtil.putByte(bArr, j9, (byte) (((codePoint >>> 12) & 63) | 128));
                                        long j11 = j10 + 1;
                                        UnsafeUtil.putByte(bArr, j10, (byte) (((codePoint >>> 6) & 63) | 128));
                                        j6 = 1;
                                        j5 = j11 + 1;
                                        UnsafeUtil.putByte(bArr, j11, (byte) ((codePoint & 63) | 128));
                                        i6 = i7;
                                    } else {
                                        i6 = i7;
                                    }
                                }
                                throw new UnpairedSurrogateException(i6 - 1, length);
                            } else if (55296 <= charAt2 && charAt2 <= 57343 && ((i5 = i6 + 1) == length || !Character.isSurrogatePair(charAt2, charSequence.charAt(i5)))) {
                                throw new UnpairedSurrogateException(i6, length);
                            } else {
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + arrayBaseOffset2);
                            }
                        } else {
                            long j12 = arrayBaseOffset2 + j4;
                            UnsafeUtil.putByte(bArr, arrayBaseOffset2, (byte) ((charAt2 >>> '\f') | 480));
                            long j13 = j12 + j4;
                            UnsafeUtil.putByte(bArr, j12, (byte) (((charAt2 >>> 6) & 63) | 128));
                            UnsafeUtil.putByte(bArr, j13, (byte) ((charAt2 & '?') | 128));
                            j5 = j13 + 1;
                            j6 = 1;
                        }
                        i6++;
                        c4 = 128;
                        long j14 = j6;
                        arrayBaseOffset2 = j5;
                        j4 = j14;
                    } else {
                        long j15 = arrayBaseOffset2 + j4;
                        UnsafeUtil.putByte(bArr, arrayBaseOffset2, (byte) charAt2);
                        j6 = j4;
                        j5 = j15;
                    }
                    i6++;
                    c4 = 128;
                    long j142 = j6;
                    arrayBaseOffset2 = j5;
                    j4 = j142;
                }
                arrayBaseOffset = UnsafeUtil.getArrayBaseOffset();
            }
            return (int) (arrayBaseOffset2 - arrayBaseOffset);
        }

        @Override // com.google.protobuf.Utf8.Processor
        void encodeUtf8Direct(CharSequence charSequence, ByteBuffer byteBuffer) {
            char c4;
            long j4;
            int i2;
            char charAt;
            long addressOffset = UnsafeUtil.addressOffset(byteBuffer);
            long position = byteBuffer.position() + addressOffset;
            long limit = byteBuffer.limit() + addressOffset;
            int length = charSequence.length();
            if (length > limit - position) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(length - 1) + " at index " + byteBuffer.limit());
            }
            int i4 = 0;
            while (true) {
                c4 = 128;
                if (i4 >= length || (charAt = charSequence.charAt(i4)) >= 128) {
                    break;
                }
                UnsafeUtil.putByte(position, (byte) charAt);
                i4++;
                position = 1 + position;
            }
            if (i4 == length) {
                byteBuffer.position((int) (position - addressOffset));
                return;
            }
            while (i4 < length) {
                char charAt2 = charSequence.charAt(i4);
                if (charAt2 < c4 && position < limit) {
                    UnsafeUtil.putByte(position, (byte) charAt2);
                    position++;
                    j4 = addressOffset;
                } else if (charAt2 >= 2048 || position > limit - 2) {
                    j4 = addressOffset;
                    if ((charAt2 >= 55296 && 57343 >= charAt2) || position > limit - 3) {
                        if (position <= limit - 4) {
                            int i5 = i4 + 1;
                            if (i5 != length) {
                                char charAt3 = charSequence.charAt(i5);
                                if (Character.isSurrogatePair(charAt2, charAt3)) {
                                    int codePoint = Character.toCodePoint(charAt2, charAt3);
                                    long j5 = position + 1;
                                    UnsafeUtil.putByte(position, (byte) ((codePoint >>> 18) | 240));
                                    long j6 = j5 + 1;
                                    UnsafeUtil.putByte(j5, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j7 = j6 + 1;
                                    UnsafeUtil.putByte(j6, (byte) (((codePoint >>> 6) & 63) | 128));
                                    long j8 = j7 + 1;
                                    UnsafeUtil.putByte(j7, (byte) ((codePoint & 63) | 128));
                                    i4 = i5;
                                    position = j8;
                                } else {
                                    i4 = i5;
                                }
                            }
                            throw new UnpairedSurrogateException(i4 - 1, length);
                        } else if (55296 <= charAt2 && charAt2 <= 57343 && ((i2 = i4 + 1) == length || !Character.isSurrogatePair(charAt2, charSequence.charAt(i2)))) {
                            throw new UnpairedSurrogateException(i4, length);
                        } else {
                            throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + position);
                        }
                    }
                    long j9 = position + 1;
                    UnsafeUtil.putByte(position, (byte) ((charAt2 >>> '\f') | 480));
                    long j10 = j9 + 1;
                    UnsafeUtil.putByte(j9, (byte) (((charAt2 >>> 6) & 63) | 128));
                    UnsafeUtil.putByte(j10, (byte) ((charAt2 & '?') | 128));
                    position = j10 + 1;
                } else {
                    j4 = addressOffset;
                    long j11 = position + 1;
                    UnsafeUtil.putByte(position, (byte) ((charAt2 >>> 6) | 960));
                    UnsafeUtil.putByte(j11, (byte) ((charAt2 & '?') | 128));
                    position = j11 + 1;
                }
                i4++;
                addressOffset = j4;
                c4 = 128;
            }
            byteBuffer.position((int) (position - addressOffset));
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x0063, code lost:
            if (com.google.protobuf.UnsafeUtil.getByte(r13, r2) > (-65)) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00a8, code lost:
            if (com.google.protobuf.UnsafeUtil.getByte(r13, r2) > (-65)) goto L56;
         */
        @Override // com.google.protobuf.Utf8.Processor
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        int partialIsValidUtf8(int r12, byte[] r13, int r14, int r15) {
            /*
                Method dump skipped, instructions count: 216
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.UnsafeProcessor.partialIsValidUtf8(int, byte[], int, int):int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x0063, code lost:
            if (com.google.protobuf.UnsafeUtil.getByte(r2) > (-65)) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00a8, code lost:
            if (com.google.protobuf.UnsafeUtil.getByte(r2) > (-65)) goto L56;
         */
        @Override // com.google.protobuf.Utf8.Processor
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        int partialIsValidUtf8Direct(int r11, java.nio.ByteBuffer r12, int r13, int r14) {
            /*
                Method dump skipped, instructions count: 219
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.UnsafeProcessor.partialIsValidUtf8Direct(int, java.nio.ByteBuffer, int, int):int");
        }

        private static int unsafeEstimateConsecutiveAscii(long j4, int i2) {
            if (i2 < 16) {
                return 0;
            }
            int i4 = ((int) j4) & 7;
            int i5 = i4;
            while (i5 > 0) {
                long j5 = 1 + j4;
                if (UnsafeUtil.getByte(j4) < 0) {
                    return i4 - i5;
                }
                i5--;
                j4 = j5;
            }
            int i6 = i2 - i4;
            while (i6 >= 8 && (UnsafeUtil.getLong(j4) & Utf8.ASCII_MASK_LONG) == 0) {
                j4 += 8;
                i6 -= 8;
            }
            return i2 - i6;
        }

        private static int unsafeIncompleteStateFor(long j4, int i2, int i4) {
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 == 2) {
                        return Utf8.incompleteStateFor(i2, UnsafeUtil.getByte(j4), UnsafeUtil.getByte(j4 + 1));
                    }
                    throw new AssertionError();
                }
                return Utf8.incompleteStateFor(i2, UnsafeUtil.getByte(j4));
            }
            return Utf8.incompleteStateFor(i2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0039, code lost:
            return -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x008e, code lost:
            return -1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static int partialIsValidUtf8(byte[] r8, long r9, int r11) {
            /*
                int r0 = unsafeEstimateConsecutiveAscii(r8, r9, r11)
                int r11 = r11 - r0
                long r0 = (long) r0
                long r9 = r9 + r0
            L7:
                r0 = 0
                r1 = 0
            L9:
                r2 = 1
                if (r11 <= 0) goto L1a
                long r4 = r9 + r2
                byte r1 = com.google.protobuf.UnsafeUtil.getByte(r8, r9)
                if (r1 < 0) goto L19
                int r11 = r11 + (-1)
                r9 = r4
                goto L9
            L19:
                r9 = r4
            L1a:
                if (r11 != 0) goto L1d
                return r0
            L1d:
                int r11 = r11 + (-1)
                r0 = -32
                r4 = -65
                r5 = -1
                if (r1 >= r0) goto L3a
                if (r11 != 0) goto L29
                return r1
            L29:
                int r11 = r11 + (-1)
                r0 = -62
                if (r1 < r0) goto L39
                long r2 = r2 + r9
                byte r9 = com.google.protobuf.UnsafeUtil.getByte(r8, r9)
                if (r9 <= r4) goto L37
                goto L39
            L37:
                r9 = r2
                goto L7
            L39:
                return r5
            L3a:
                r6 = -16
                if (r1 >= r6) goto L64
                r6 = 2
                if (r11 >= r6) goto L46
                int r8 = unsafeIncompleteStateFor(r8, r1, r9, r11)
                return r8
            L46:
                int r11 = r11 + (-2)
                long r6 = r9 + r2
                byte r9 = com.google.protobuf.UnsafeUtil.getByte(r8, r9)
                if (r9 > r4) goto L63
                r10 = -96
                if (r1 != r0) goto L56
                if (r9 < r10) goto L63
            L56:
                r0 = -19
                if (r1 != r0) goto L5c
                if (r9 >= r10) goto L63
            L5c:
                long r2 = r2 + r6
                byte r9 = com.google.protobuf.UnsafeUtil.getByte(r8, r6)
                if (r9 <= r4) goto L37
            L63:
                return r5
            L64:
                r0 = 3
                if (r11 >= r0) goto L6c
                int r8 = unsafeIncompleteStateFor(r8, r1, r9, r11)
                return r8
            L6c:
                int r11 = r11 + (-3)
                long r6 = r9 + r2
                byte r9 = com.google.protobuf.UnsafeUtil.getByte(r8, r9)
                if (r9 > r4) goto L8e
                int r10 = r1 << 28
                int r9 = r9 + 112
                int r10 = r10 + r9
                int r9 = r10 >> 30
                if (r9 != 0) goto L8e
                long r9 = r6 + r2
                byte r0 = com.google.protobuf.UnsafeUtil.getByte(r8, r6)
                if (r0 > r4) goto L8e
                long r2 = r2 + r9
                byte r9 = com.google.protobuf.UnsafeUtil.getByte(r8, r9)
                if (r9 <= r4) goto L37
            L8e:
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.UnsafeProcessor.partialIsValidUtf8(byte[], long, int):int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0039, code lost:
            return -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x008e, code lost:
            return -1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static int partialIsValidUtf8(long r8, int r10) {
            /*
                int r0 = unsafeEstimateConsecutiveAscii(r8, r10)
                long r1 = (long) r0
                long r8 = r8 + r1
                int r10 = r10 - r0
            L7:
                r0 = 0
                r1 = 0
            L9:
                r2 = 1
                if (r10 <= 0) goto L1a
                long r4 = r8 + r2
                byte r1 = com.google.protobuf.UnsafeUtil.getByte(r8)
                if (r1 < 0) goto L19
                int r10 = r10 + (-1)
                r8 = r4
                goto L9
            L19:
                r8 = r4
            L1a:
                if (r10 != 0) goto L1d
                return r0
            L1d:
                int r10 = r10 + (-1)
                r0 = -32
                r4 = -65
                r5 = -1
                if (r1 >= r0) goto L3a
                if (r10 != 0) goto L29
                return r1
            L29:
                int r10 = r10 + (-1)
                r0 = -62
                if (r1 < r0) goto L39
                long r2 = r2 + r8
                byte r8 = com.google.protobuf.UnsafeUtil.getByte(r8)
                if (r8 <= r4) goto L37
                goto L39
            L37:
                r8 = r2
                goto L7
            L39:
                return r5
            L3a:
                r6 = -16
                if (r1 >= r6) goto L64
                r6 = 2
                if (r10 >= r6) goto L46
                int r8 = unsafeIncompleteStateFor(r8, r1, r10)
                return r8
            L46:
                int r10 = r10 + (-2)
                long r6 = r8 + r2
                byte r8 = com.google.protobuf.UnsafeUtil.getByte(r8)
                if (r8 > r4) goto L63
                r9 = -96
                if (r1 != r0) goto L56
                if (r8 < r9) goto L63
            L56:
                r0 = -19
                if (r1 != r0) goto L5c
                if (r8 >= r9) goto L63
            L5c:
                long r2 = r2 + r6
                byte r8 = com.google.protobuf.UnsafeUtil.getByte(r6)
                if (r8 <= r4) goto L37
            L63:
                return r5
            L64:
                r0 = 3
                if (r10 >= r0) goto L6c
                int r8 = unsafeIncompleteStateFor(r8, r1, r10)
                return r8
            L6c:
                int r10 = r10 + (-3)
                long r6 = r8 + r2
                byte r8 = com.google.protobuf.UnsafeUtil.getByte(r8)
                if (r8 > r4) goto L8e
                int r9 = r1 << 28
                int r8 = r8 + 112
                int r9 = r9 + r8
                int r8 = r9 >> 30
                if (r8 != 0) goto L8e
                long r8 = r6 + r2
                byte r0 = com.google.protobuf.UnsafeUtil.getByte(r6)
                if (r0 > r4) goto L8e
                long r2 = r2 + r8
                byte r8 = com.google.protobuf.UnsafeUtil.getByte(r8)
                if (r8 <= r4) goto L37
            L8e:
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.UnsafeProcessor.partialIsValidUtf8(long, int):int");
        }
    }

    public static boolean isValidUtf8(byte[] bArr, int i2, int i4) {
        return processor.isValidUtf8(bArr, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int partialIsValidUtf8(int i2, ByteBuffer byteBuffer, int i4, int i5) {
        return processor.partialIsValidUtf8(i2, byteBuffer, i4, i5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isValidUtf8(ByteBuffer byteBuffer) {
        return processor.isValidUtf8(byteBuffer, byteBuffer.position(), byteBuffer.remaining());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int incompleteStateFor(ByteBuffer byteBuffer, int i2, int i4, int i5) {
        if (i5 != 0) {
            if (i5 != 1) {
                if (i5 == 2) {
                    return incompleteStateFor(i2, byteBuffer.get(i4), byteBuffer.get(i4 + 1));
                }
                throw new AssertionError();
            }
            return incompleteStateFor(i2, byteBuffer.get(i4));
        }
        return incompleteStateFor(i2);
    }

    /* loaded from: classes2.dex */
    static final class SafeProcessor extends Processor {
        SafeProcessor() {
        }

        private static int partialIsValidUtf8NonAscii(byte[] bArr, int i2, int i4) {
            while (i2 < i4) {
                int i5 = i2 + 1;
                byte b4 = bArr[i2];
                if (b4 < 0) {
                    if (b4 < -32) {
                        if (i5 >= i4) {
                            return b4;
                        }
                        if (b4 >= -62) {
                            i2 = i5 + 1;
                            if (bArr[i5] > -65) {
                            }
                        }
                        return -1;
                    } else if (b4 >= -16) {
                        if (i5 >= i4 - 2) {
                            return Utf8.incompleteStateFor(bArr, i5, i4);
                        }
                        int i6 = i5 + 1;
                        byte b5 = bArr[i5];
                        if (b5 <= -65 && (((b4 << BinaryMemcacheOpcodes.TOUCH) + (b5 + 112)) >> 30) == 0) {
                            int i7 = i6 + 1;
                            if (bArr[i6] <= -65) {
                                i5 = i7 + 1;
                                if (bArr[i7] > -65) {
                                }
                            }
                        }
                        return -1;
                    } else if (i5 >= i4 - 1) {
                        return Utf8.incompleteStateFor(bArr, i5, i4);
                    } else {
                        int i8 = i5 + 1;
                        byte b6 = bArr[i5];
                        if (b6 <= -65 && ((b4 != -32 || b6 >= -96) && (b4 != -19 || b6 < -96))) {
                            i2 = i8 + 1;
                            if (bArr[i8] > -65) {
                            }
                        }
                        return -1;
                    }
                }
                i2 = i5;
            }
            return 0;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
            return r10 + r0;
         */
        @Override // com.google.protobuf.Utf8.Processor
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        int encodeUtf8(java.lang.CharSequence r8, byte[] r9, int r10, int r11) {
            /*
                Method dump skipped, instructions count: 254
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.SafeProcessor.encodeUtf8(java.lang.CharSequence, byte[], int, int):int");
        }

        @Override // com.google.protobuf.Utf8.Processor
        void encodeUtf8Direct(CharSequence charSequence, ByteBuffer byteBuffer) {
            encodeUtf8Default(charSequence, byteBuffer);
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
            if (r8[r9] > (-65)) goto L12;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0046, code lost:
            if (r8[r9] > (-65)) goto L31;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x007f, code lost:
            if (r8[r9] > (-65)) goto L51;
         */
        @Override // com.google.protobuf.Utf8.Processor
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        int partialIsValidUtf8(int r7, byte[] r8, int r9, int r10) {
            /*
                r6 = this;
                if (r7 == 0) goto L82
                if (r9 < r10) goto L5
                return r7
            L5:
                byte r0 = (byte) r7
                r1 = -32
                r2 = -1
                r3 = -65
                if (r0 >= r1) goto L1c
                r7 = -62
                if (r0 < r7) goto L1b
                int r7 = r9 + 1
                r9 = r8[r9]
                if (r9 <= r3) goto L18
                goto L1b
            L18:
                r9 = r7
                goto L82
            L1b:
                return r2
            L1c:
                r4 = -16
                if (r0 >= r4) goto L49
                int r7 = r7 >> 8
                r7 = r7 ^ r2
                byte r7 = (byte) r7
                if (r7 != 0) goto L34
                int r7 = r9 + 1
                r9 = r8[r9]
                if (r7 < r10) goto L31
                int r7 = com.google.protobuf.Utf8.access$000(r0, r9)
                return r7
            L31:
                r5 = r9
                r9 = r7
                r7 = r5
            L34:
                if (r7 > r3) goto L48
                r4 = -96
                if (r0 != r1) goto L3c
                if (r7 < r4) goto L48
            L3c:
                r1 = -19
                if (r0 != r1) goto L42
                if (r7 >= r4) goto L48
            L42:
                int r7 = r9 + 1
                r9 = r8[r9]
                if (r9 <= r3) goto L18
            L48:
                return r2
            L49:
                int r1 = r7 >> 8
                r1 = r1 ^ r2
                byte r1 = (byte) r1
                r4 = 0
                if (r1 != 0) goto L5d
                int r7 = r9 + 1
                r1 = r8[r9]
                if (r7 < r10) goto L5b
                int r7 = com.google.protobuf.Utf8.access$000(r0, r1)
                return r7
            L5b:
                r9 = r7
                goto L60
            L5d:
                int r7 = r7 >> 16
                byte r4 = (byte) r7
            L60:
                if (r4 != 0) goto L6e
                int r7 = r9 + 1
                r4 = r8[r9]
                if (r7 < r10) goto L6d
                int r7 = com.google.protobuf.Utf8.access$100(r0, r1, r4)
                return r7
            L6d:
                r9 = r7
            L6e:
                if (r1 > r3) goto L81
                int r7 = r0 << 28
                int r1 = r1 + 112
                int r7 = r7 + r1
                int r7 = r7 >> 30
                if (r7 != 0) goto L81
                if (r4 > r3) goto L81
                int r7 = r9 + 1
                r9 = r8[r9]
                if (r9 <= r3) goto L18
            L81:
                return r2
            L82:
                int r7 = partialIsValidUtf8(r8, r9, r10)
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.SafeProcessor.partialIsValidUtf8(int, byte[], int, int):int");
        }

        @Override // com.google.protobuf.Utf8.Processor
        int partialIsValidUtf8Direct(int i2, ByteBuffer byteBuffer, int i4, int i5) {
            return partialIsValidUtf8Default(i2, byteBuffer, i4, i5);
        }

        private static int partialIsValidUtf8(byte[] bArr, int i2, int i4) {
            while (i2 < i4 && bArr[i2] >= 0) {
                i2++;
            }
            if (i2 >= i4) {
                return 0;
            }
            return partialIsValidUtf8NonAscii(bArr, i2, i4);
        }
    }
}
