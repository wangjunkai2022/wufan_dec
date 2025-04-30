package io.netty.handler.codec.base64;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.handler.codec.http2.Http2CodecUtil;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import io.netty.util.ByteProcessor;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import java.nio.ByteOrder;
import okio.Utf8;
/* loaded from: classes5.dex */
public final class Base64 {
    private static final byte EQUALS_SIGN = 61;
    private static final byte EQUALS_SIGN_ENC = -1;
    private static final int MAX_LINE_LENGTH = 76;
    private static final byte NEW_LINE = 10;
    private static final byte WHITE_SPACE_ENC = -5;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class Decoder implements ByteProcessor {
        private final byte[] b4;
        private int b4Posn;
        private byte[] decodabet;
        private ByteBuf dest;
        private int outBuffPosn;

        private Decoder() {
            this.b4 = new byte[4];
        }

        private static int decode4to3(byte[] bArr, ByteBuf byteBuf, int i2, byte[] bArr2) {
            int i4;
            int i5;
            int i6;
            byte b4 = bArr[0];
            byte b5 = bArr[1];
            byte b6 = bArr[2];
            if (b6 == 61) {
                try {
                    byteBuf.setByte(i2, ((bArr2[b4] & 255) << 2) | ((bArr2[b5] & 255) >>> 4));
                    return 1;
                } catch (IndexOutOfBoundsException unused) {
                    throw new IllegalArgumentException("not encoded in Base64");
                }
            }
            byte b7 = bArr[3];
            if (b7 == 61) {
                byte b8 = bArr2[b5];
                try {
                    if (byteBuf.order() == ByteOrder.BIG_ENDIAN) {
                        i6 = ((b8 & 15) << 4) | ((((bArr2[b4] & Utf8.REPLACEMENT_BYTE) << 2) | ((b8 & 240) >> 4)) << 8) | ((bArr2[b6] & 252) >>> 2);
                    } else {
                        i6 = ((((b8 & 15) << 4) | ((bArr2[b6] & 252) >>> 2)) << 8) | ((bArr2[b4] & Utf8.REPLACEMENT_BYTE) << 2) | ((b8 & 240) >> 4);
                    }
                    byteBuf.setShort(i2, i6);
                    return 2;
                } catch (IndexOutOfBoundsException unused2) {
                    throw new IllegalArgumentException("not encoded in Base64");
                }
            }
            try {
                if (byteBuf.order() == ByteOrder.BIG_ENDIAN) {
                    i4 = ((bArr2[b4] & Utf8.REPLACEMENT_BYTE) << 18) | ((bArr2[b5] & 255) << 12) | ((bArr2[b6] & 255) << 6);
                    i5 = bArr2[b7] & 255;
                } else {
                    byte b9 = bArr2[b5];
                    byte b10 = bArr2[b6];
                    i4 = ((bArr2[b4] & Utf8.REPLACEMENT_BYTE) << 2) | ((b9 & 15) << 12) | ((b9 & 240) >>> 4) | ((b10 & 3) << 22) | ((b10 & 252) << 6);
                    i5 = (bArr2[b7] & 255) << 16;
                }
                byteBuf.setMedium(i2, i5 | i4);
                return 3;
            } catch (IndexOutOfBoundsException unused3) {
                throw new IllegalArgumentException("not encoded in Base64");
            }
        }

        ByteBuf decode(ByteBuf byteBuf, int i2, int i4, ByteBufAllocator byteBufAllocator, Base64Dialect base64Dialect) {
            this.dest = byteBufAllocator.buffer(Base64.decodedBufferSize(i4)).order(byteBuf.order());
            this.decodabet = Base64.decodabet(base64Dialect);
            try {
                byteBuf.forEachByte(i2, i4, this);
                return this.dest.slice(0, this.outBuffPosn);
            } catch (Throwable th) {
                this.dest.release();
                PlatformDependent.throwException(th);
                return null;
            }
        }

        @Override // io.netty.util.ByteProcessor
        public boolean process(byte b4) throws Exception {
            byte[] bArr;
            byte b5;
            if (b4 <= 0 || (b5 = (bArr = this.decodabet)[b4]) < -5) {
                throw new IllegalArgumentException("invalid Base64 input character: " + ((int) ((short) (b4 & 255))) + " (decimal)");
            } else if (b5 >= -1) {
                byte[] bArr2 = this.b4;
                int i2 = this.b4Posn;
                int i4 = i2 + 1;
                this.b4Posn = i4;
                bArr2[i2] = b4;
                if (i4 > 3) {
                    int i5 = this.outBuffPosn;
                    this.outBuffPosn = i5 + decode4to3(bArr2, this.dest, i5, bArr);
                    this.b4Posn = 0;
                    return b4 != 61;
                }
                return true;
            } else {
                return true;
            }
        }
    }

    private Base64() {
    }

    private static byte[] alphabet(Base64Dialect base64Dialect) {
        return ((Base64Dialect) ObjectUtil.checkNotNull(base64Dialect, "dialect")).alphabet;
    }

    private static boolean breakLines(Base64Dialect base64Dialect) {
        return ((Base64Dialect) ObjectUtil.checkNotNull(base64Dialect, "dialect")).breakLinesByDefault;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] decodabet(Base64Dialect base64Dialect) {
        return ((Base64Dialect) ObjectUtil.checkNotNull(base64Dialect, "dialect")).decodabet;
    }

    public static ByteBuf decode(ByteBuf byteBuf) {
        return decode(byteBuf, Base64Dialect.STANDARD);
    }

    static int decodedBufferSize(int i2) {
        return i2 - (i2 >>> 2);
    }

    public static ByteBuf encode(ByteBuf byteBuf) {
        return encode(byteBuf, Base64Dialect.STANDARD);
    }

    private static void encode3to4(ByteBuf byteBuf, int i2, int i4, ByteBuf byteBuf2, int i5, byte[] bArr) {
        int i6 = 0;
        if (byteBuf.order() == ByteOrder.BIG_ENDIAN) {
            if (i4 == 1) {
                i6 = toInt(byteBuf.getByte(i2));
            } else if (i4 == 2) {
                i6 = toIntBE(byteBuf.getShort(i2));
            } else if (i4 > 0) {
                i6 = toIntBE(byteBuf.getMedium(i2));
            }
            encode3to4BigEndian(i6, i4, byteBuf2, i5, bArr);
            return;
        }
        if (i4 == 1) {
            i6 = toInt(byteBuf.getByte(i2));
        } else if (i4 == 2) {
            i6 = toIntLE(byteBuf.getShort(i2));
        } else if (i4 > 0) {
            i6 = toIntLE(byteBuf.getMedium(i2));
        }
        encode3to4LittleEndian(i6, i4, byteBuf2, i5, bArr);
    }

    private static void encode3to4BigEndian(int i2, int i4, ByteBuf byteBuf, int i5, byte[] bArr) {
        if (i4 == 1) {
            byteBuf.setInt(i5, (bArr[(i2 >>> 12) & 63] << 16) | (bArr[i2 >>> 18] << BinaryMemcacheOpcodes.FLUSHQ) | 15616 | 61);
        } else if (i4 == 2) {
            byteBuf.setInt(i5, (bArr[(i2 >>> 6) & 63] << 8) | (bArr[i2 >>> 18] << BinaryMemcacheOpcodes.FLUSHQ) | (bArr[(i2 >>> 12) & 63] << 16) | 61);
        } else if (i4 != 3) {
        } else {
            byteBuf.setInt(i5, bArr[i2 & 63] | (bArr[i2 >>> 18] << BinaryMemcacheOpcodes.FLUSHQ) | (bArr[(i2 >>> 12) & 63] << 16) | (bArr[(i2 >>> 6) & 63] << 8));
        }
    }

    private static void encode3to4LittleEndian(int i2, int i4, ByteBuf byteBuf, int i5, byte[] bArr) {
        if (i4 == 1) {
            byteBuf.setInt(i5, (bArr[(i2 >>> 12) & 63] << 8) | bArr[i2 >>> 18] | 3997696 | 1023410176);
        } else if (i4 == 2) {
            byteBuf.setInt(i5, (bArr[(i2 >>> 6) & 63] << 16) | bArr[i2 >>> 18] | (bArr[(i2 >>> 12) & 63] << 8) | 1023410176);
        } else if (i4 != 3) {
        } else {
            byteBuf.setInt(i5, (bArr[i2 & 63] << BinaryMemcacheOpcodes.FLUSHQ) | bArr[i2 >>> 18] | (bArr[(i2 >>> 12) & 63] << 8) | (bArr[(i2 >>> 6) & 63] << 16));
        }
    }

    static int encodedBufferSize(int i2, boolean z3) {
        long j4 = (i2 << 2) / 3;
        long j5 = (3 + j4) & (-4);
        if (z3) {
            j5 += j4 / 76;
        }
        if (j5 < 2147483647L) {
            return (int) j5;
        }
        return Integer.MAX_VALUE;
    }

    private static int toInt(byte b4) {
        return (b4 & 255) << 16;
    }

    private static int toIntBE(int i2) {
        return (i2 & 255) | (16711680 & i2) | (65280 & i2);
    }

    private static int toIntBE(short s3) {
        return ((s3 & Http2CodecUtil.MAX_UNSIGNED_BYTE) << 8) | ((65280 & s3) << 8);
    }

    private static int toIntLE(int i2) {
        return ((i2 & 16711680) >>> 16) | ((i2 & 255) << 16) | (65280 & i2);
    }

    private static int toIntLE(short s3) {
        return (s3 & 65280) | ((s3 & Http2CodecUtil.MAX_UNSIGNED_BYTE) << 16);
    }

    public static ByteBuf decode(ByteBuf byteBuf, Base64Dialect base64Dialect) {
        ObjectUtil.checkNotNull(byteBuf, "src");
        ByteBuf decode = decode(byteBuf, byteBuf.readerIndex(), byteBuf.readableBytes(), base64Dialect);
        byteBuf.readerIndex(byteBuf.writerIndex());
        return decode;
    }

    public static ByteBuf encode(ByteBuf byteBuf, Base64Dialect base64Dialect) {
        return encode(byteBuf, breakLines(base64Dialect), base64Dialect);
    }

    public static ByteBuf encode(ByteBuf byteBuf, boolean z3) {
        return encode(byteBuf, z3, Base64Dialect.STANDARD);
    }

    public static ByteBuf encode(ByteBuf byteBuf, boolean z3, Base64Dialect base64Dialect) {
        ObjectUtil.checkNotNull(byteBuf, "src");
        ByteBuf encode = encode(byteBuf, byteBuf.readerIndex(), byteBuf.readableBytes(), z3, base64Dialect);
        byteBuf.readerIndex(byteBuf.writerIndex());
        return encode;
    }

    public static ByteBuf decode(ByteBuf byteBuf, int i2, int i4) {
        return decode(byteBuf, i2, i4, Base64Dialect.STANDARD);
    }

    public static ByteBuf decode(ByteBuf byteBuf, int i2, int i4, Base64Dialect base64Dialect) {
        return decode(byteBuf, i2, i4, base64Dialect, byteBuf.alloc());
    }

    public static ByteBuf decode(ByteBuf byteBuf, int i2, int i4, Base64Dialect base64Dialect, ByteBufAllocator byteBufAllocator) {
        ObjectUtil.checkNotNull(byteBuf, "src");
        ObjectUtil.checkNotNull(base64Dialect, "dialect");
        return new Decoder().decode(byteBuf, i2, i4, byteBufAllocator, base64Dialect);
    }

    public static ByteBuf encode(ByteBuf byteBuf, int i2, int i4) {
        return encode(byteBuf, i2, i4, Base64Dialect.STANDARD);
    }

    public static ByteBuf encode(ByteBuf byteBuf, int i2, int i4, Base64Dialect base64Dialect) {
        return encode(byteBuf, i2, i4, breakLines(base64Dialect), base64Dialect);
    }

    public static ByteBuf encode(ByteBuf byteBuf, int i2, int i4, boolean z3) {
        return encode(byteBuf, i2, i4, z3, Base64Dialect.STANDARD);
    }

    public static ByteBuf encode(ByteBuf byteBuf, int i2, int i4, boolean z3, Base64Dialect base64Dialect) {
        return encode(byteBuf, i2, i4, z3, base64Dialect, byteBuf.alloc());
    }

    public static ByteBuf encode(ByteBuf byteBuf, int i2, int i4, boolean z3, Base64Dialect base64Dialect, ByteBufAllocator byteBufAllocator) {
        ObjectUtil.checkNotNull(byteBuf, "src");
        ObjectUtil.checkNotNull(base64Dialect, "dialect");
        ByteBuf order = byteBufAllocator.buffer(encodedBufferSize(i4, z3)).order(byteBuf.order());
        byte[] alphabet = alphabet(base64Dialect);
        int i5 = i4 - 2;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i6 < i5) {
            encode3to4(byteBuf, i6 + i2, 3, order, i7, alphabet);
            i8 += 4;
            if (z3 && i8 == 76) {
                order.setByte(i7 + 4, 10);
                i7++;
                i8 = 0;
            }
            i6 += 3;
            i7 += 4;
        }
        if (i6 < i4) {
            encode3to4(byteBuf, i6 + i2, i4 - i6, order, i7, alphabet);
            i7 += 4;
        }
        if (i7 > 1 && order.getByte(i7 - 1) == 10) {
            i7--;
        }
        return order.slice(0, i7);
    }
}
