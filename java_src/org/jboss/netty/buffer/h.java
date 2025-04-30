package org.jboss.netty.buffer;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.UShort;
/* compiled from: ChannelBuffers.java */
/* loaded from: classes5.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final ByteOrder f73372a = ByteOrder.BIG_ENDIAN;

    /* renamed from: b  reason: collision with root package name */
    public static final ByteOrder f73373b = ByteOrder.LITTLE_ENDIAN;

    /* renamed from: c  reason: collision with root package name */
    public static final e f73374c = new c(0);

    /* renamed from: d  reason: collision with root package name */
    private static final char[] f73375d = new char[1024];

    static {
        char[] charArray = "0123456789abcdef".toCharArray();
        for (int i2 = 0; i2 < 256; i2++) {
            char[] cArr = f73375d;
            int i4 = i2 << 1;
            cArr[i4] = charArray[(i2 >>> 4) & 15];
            cArr[i4 + 1] = charArray[i2 & 15];
        }
    }

    private h() {
    }

    public static e A(int i2) {
        return B(f73372a, i2);
    }

    public static e B(ByteOrder byteOrder, int i2) {
        Objects.requireNonNull(byteOrder, "endianness");
        if (i2 == 0) {
            return f73374c;
        }
        d dVar = new d(ByteBuffer.allocateDirect(i2).order(byteOrder));
        dVar.clear();
        return dVar;
    }

    public static e C() {
        return F(f73372a, 256);
    }

    public static e D(int i2) {
        return F(f73372a, i2);
    }

    public static e E(int i2, f fVar) {
        Objects.requireNonNull(fVar, "factory");
        return new l(fVar.d(), i2, fVar);
    }

    public static e F(ByteOrder byteOrder, int i2) {
        return new l(byteOrder, i2);
    }

    public static e G(ByteOrder byteOrder, int i2, f fVar) {
        return new l(byteOrder, i2, fVar);
    }

    public static e H(f fVar) {
        Objects.requireNonNull(fVar, "factory");
        return new l(fVar.d(), 256, fVar);
    }

    static ByteBuffer I(CharBuffer charBuffer, Charset charset) {
        CharsetEncoder b4 = org.jboss.netty.util.a.b(charset);
        double remaining = charBuffer.remaining();
        double maxBytesPerChar = b4.maxBytesPerChar();
        Double.isNaN(remaining);
        Double.isNaN(maxBytesPerChar);
        ByteBuffer allocate = ByteBuffer.allocate((int) (remaining * maxBytesPerChar));
        try {
            CoderResult encode = b4.encode(charBuffer, allocate, true);
            if (!encode.isUnderflow()) {
                encode.throwException();
            }
            CoderResult flush = b4.flush(allocate);
            if (!flush.isUnderflow()) {
                flush.throwException();
            }
            allocate.flip();
            return allocate;
        } catch (CharacterCodingException e4) {
            throw new IllegalStateException(e4);
        }
    }

    public static boolean J(e eVar, e eVar2) {
        int readableBytes = eVar.readableBytes();
        if (readableBytes != eVar2.readableBytes()) {
            return false;
        }
        int i2 = readableBytes >>> 3;
        int readerIndex = eVar.readerIndex();
        int readerIndex2 = eVar2.readerIndex();
        if (eVar.order() == eVar2.order()) {
            while (i2 > 0) {
                if (eVar.getLong(readerIndex) != eVar2.getLong(readerIndex2)) {
                    return false;
                }
                readerIndex += 8;
                readerIndex2 += 8;
                i2--;
            }
        } else {
            while (i2 > 0) {
                if (eVar.getLong(readerIndex) != V(eVar2.getLong(readerIndex2))) {
                    return false;
                }
                readerIndex += 8;
                readerIndex2 += 8;
                i2--;
            }
        }
        for (int i4 = readableBytes & 7; i4 > 0; i4--) {
            if (eVar.getByte(readerIndex) != eVar2.getByte(readerIndex2)) {
                return false;
            }
            readerIndex++;
            readerIndex2++;
        }
        return true;
    }

    private static int K(e eVar, int i2, int i4, byte b4) {
        int max = Math.max(i2, 0);
        if (max < i4 && eVar.capacity() != 0) {
            while (max < i4) {
                if (eVar.getByte(max) == b4) {
                    return max;
                }
                max++;
            }
        }
        return -1;
    }

    private static int L(e eVar, int i2, int i4, g gVar) {
        int max = Math.max(i2, 0);
        if (max < i4 && eVar.capacity() != 0) {
            while (max < i4) {
                if (gVar.a(eVar, max)) {
                    return max;
                }
                max++;
            }
        }
        return -1;
    }

    public static int M(e eVar) {
        int i2;
        int readableBytes = eVar.readableBytes();
        int i4 = readableBytes >>> 2;
        int i5 = readableBytes & 3;
        int readerIndex = eVar.readerIndex();
        if (eVar.order() == f73372a) {
            i2 = 1;
            while (i4 > 0) {
                i2 = (i2 * 31) + eVar.getInt(readerIndex);
                readerIndex += 4;
                i4--;
            }
        } else {
            i2 = 1;
            while (i4 > 0) {
                i2 = (i2 * 31) + U(eVar.getInt(readerIndex));
                readerIndex += 4;
                i4--;
            }
        }
        while (i5 > 0) {
            i2 = (i2 * 31) + eVar.getByte(readerIndex);
            i5--;
            readerIndex++;
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    public static String N(e eVar) {
        return O(eVar, eVar.readerIndex(), eVar.readableBytes());
    }

    public static String O(e eVar, int i2, int i4) {
        if (i4 < 0) {
            throw new IllegalArgumentException("length: " + i4);
        } else if (i4 == 0) {
            return "";
        } else {
            int i5 = i2 + i4;
            char[] cArr = new char[i4 << 1];
            int i6 = 0;
            while (i2 < i5) {
                System.arraycopy(f73375d, eVar.getUnsignedByte(i2) << 1, cArr, i6, 2);
                i2++;
                i6 += 2;
            }
            return new String(cArr);
        }
    }

    public static e P(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i2 = 0; i2 < length; i2 += 2) {
            bArr[i2 / 2] = (byte) ((Character.digit(str.charAt(i2), 16) << 4) + Character.digit(str.charAt(i2 + 1), 16));
        }
        return g0(bArr);
    }

    public static int Q(e eVar, int i2, int i4, byte b4) {
        if (i2 <= i4) {
            return K(eVar, i2, i4, b4);
        }
        return S(eVar, i2, i4, b4);
    }

    public static int R(e eVar, int i2, int i4, g gVar) {
        if (i2 <= i4) {
            return L(eVar, i2, i4, gVar);
        }
        return T(eVar, i2, i4, gVar);
    }

    private static int S(e eVar, int i2, int i4, byte b4) {
        int min = Math.min(i2, eVar.capacity());
        if (min >= 0 && eVar.capacity() != 0) {
            for (int i5 = min - 1; i5 >= i4; i5--) {
                if (eVar.getByte(i5) == b4) {
                    return i5;
                }
            }
        }
        return -1;
    }

    private static int T(e eVar, int i2, int i4, g gVar) {
        int min = Math.min(i2, eVar.capacity());
        if (min >= 0 && eVar.capacity() != 0) {
            for (int i5 = min - 1; i5 >= i4; i5--) {
                if (gVar.a(eVar, i5)) {
                    return i5;
                }
            }
        }
        return -1;
    }

    public static int U(int i2) {
        return (X((short) (i2 >>> 16)) & UShort.MAX_VALUE) | (X((short) i2) << 16);
    }

    public static long V(long j4) {
        return (U((int) (j4 >>> 32)) & 4294967295L) | (U((int) j4) << 32);
    }

    public static int W(int i2) {
        return ((i2 >>> 16) & 255) | ((i2 << 16) & 16711680) | (65280 & i2);
    }

    public static short X(short s3) {
        return (short) (((s3 >>> 8) & 255) | (s3 << 8));
    }

    public static e Y(e eVar) {
        if (eVar instanceof p) {
            eVar = ((p) eVar).y();
        }
        return new p(eVar);
    }

    public static e Z(ByteBuffer byteBuffer) {
        if (!byteBuffer.hasRemaining()) {
            return f73374c;
        }
        if (byteBuffer.hasArray()) {
            return b0(byteBuffer.order(), byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
        }
        return new d(byteBuffer);
    }

    public static e a(int i2) {
        return b(f73372a, i2);
    }

    public static e a0(ByteOrder byteOrder, byte[] bArr) {
        if (byteOrder == f73372a) {
            if (bArr.length == 0) {
                return f73374c;
            }
            return new c(bArr);
        } else if (byteOrder == f73373b) {
            if (bArr.length == 0) {
                return f73374c;
            }
            return new o(bArr);
        } else {
            throw new NullPointerException("endianness");
        }
    }

    public static e b(ByteOrder byteOrder, int i2) {
        if (byteOrder == f73372a) {
            if (i2 == 0) {
                return f73374c;
            }
            return new c(i2);
        } else if (byteOrder == f73373b) {
            if (i2 == 0) {
                return f73374c;
            }
            return new o(i2);
        } else {
            throw new NullPointerException("endianness");
        }
    }

    public static e b0(ByteOrder byteOrder, byte[] bArr, int i2, int i4) {
        Objects.requireNonNull(byteOrder, "endianness");
        if (i2 != 0) {
            if (i4 == 0) {
                return f73374c;
            }
            return new q(a0(byteOrder, bArr), i2, i4);
        } else if (i4 == bArr.length) {
            return a0(byteOrder, bArr);
        } else {
            if (i4 == 0) {
                return f73374c;
            }
            return new r(a0(byteOrder, bArr), i4);
        }
    }

    public static int c(e eVar, e eVar2) {
        int readableBytes = eVar.readableBytes();
        int readableBytes2 = eVar2.readableBytes();
        int min = Math.min(readableBytes, readableBytes2);
        int i2 = min >>> 2;
        int readerIndex = eVar.readerIndex();
        int readerIndex2 = eVar2.readerIndex();
        if (eVar.order() == eVar2.order()) {
            while (i2 > 0) {
                long unsignedInt = eVar.getUnsignedInt(readerIndex);
                long unsignedInt2 = eVar2.getUnsignedInt(readerIndex2);
                if (unsignedInt > unsignedInt2) {
                    return 1;
                }
                if (unsignedInt < unsignedInt2) {
                    return -1;
                }
                readerIndex += 4;
                readerIndex2 += 4;
                i2--;
            }
        } else {
            while (i2 > 0) {
                long unsignedInt3 = eVar.getUnsignedInt(readerIndex);
                long U = U(eVar2.getInt(readerIndex2)) & 4294967295L;
                if (unsignedInt3 > U) {
                    return 1;
                }
                if (unsignedInt3 < U) {
                    return -1;
                }
                readerIndex += 4;
                readerIndex2 += 4;
                i2--;
            }
        }
        for (int i4 = min & 3; i4 > 0; i4--) {
            short unsignedByte = eVar.getUnsignedByte(readerIndex);
            short unsignedByte2 = eVar2.getUnsignedByte(readerIndex2);
            if (unsignedByte > unsignedByte2) {
                return 1;
            }
            if (unsignedByte < unsignedByte2) {
                return -1;
            }
            readerIndex++;
            readerIndex2++;
        }
        return readableBytes - readableBytes2;
    }

    public static e c0(ByteOrder byteOrder, byte[]... bArr) {
        int length = bArr.length;
        if (length != 0) {
            if (length != 1) {
                ArrayList arrayList = new ArrayList(bArr.length);
                for (byte[] bArr2 : bArr) {
                    if (bArr2 == null) {
                        break;
                    }
                    if (bArr2.length > 0) {
                        arrayList.add(a0(byteOrder, bArr2));
                    }
                }
                return d(byteOrder, arrayList, false);
            } else if (bArr[0].length != 0) {
                return a0(byteOrder, bArr[0]);
            }
        }
        return f73374c;
    }

    private static e d(ByteOrder byteOrder, List<e> list, boolean z3) {
        int size = list.size();
        if (size != 0) {
            if (size != 1) {
                return new i(byteOrder, list, z3);
            }
            return list.get(0);
        }
        return f73374c;
    }

    public static e d0(e eVar) {
        if (eVar.I0()) {
            return eVar.H0();
        }
        return f73374c;
    }

    public static e e(CharSequence charSequence, int i2, int i4, Charset charset) {
        return i(f73372a, charSequence, i2, i4, charset);
    }

    public static e e0(boolean z3, ByteBuffer... byteBufferArr) {
        int length = byteBufferArr.length;
        if (length != 0) {
            if (length != 1) {
                ByteOrder byteOrder = null;
                ArrayList arrayList = new ArrayList(byteBufferArr.length);
                for (ByteBuffer byteBuffer : byteBufferArr) {
                    if (byteBuffer == null) {
                        break;
                    }
                    if (byteBuffer.hasRemaining()) {
                        if (byteOrder != null) {
                            if (!byteOrder.equals(byteBuffer.order())) {
                                throw new IllegalArgumentException("inconsistent byte order");
                            }
                        } else {
                            byteOrder = byteBuffer.order();
                        }
                        arrayList.add(Z(byteBuffer));
                    }
                }
                return d(byteOrder, arrayList, z3);
            } else if (byteBufferArr[0].hasRemaining()) {
                return Z(byteBufferArr[0]);
            }
        }
        return f73374c;
    }

    public static e f(CharSequence charSequence, Charset charset) {
        return j(f73372a, charSequence, charset);
    }

    public static e f0(boolean z3, e... eVarArr) {
        int length = eVarArr.length;
        if (length != 0) {
            if (length != 1) {
                ByteOrder byteOrder = null;
                ArrayList arrayList = new ArrayList(eVarArr.length);
                for (e eVar : eVarArr) {
                    if (eVar == null) {
                        break;
                    }
                    if (eVar.I0()) {
                        if (byteOrder != null) {
                            if (!byteOrder.equals(eVar.order())) {
                                throw new IllegalArgumentException("inconsistent byte order");
                            }
                        } else {
                            byteOrder = eVar.order();
                        }
                        if (eVar instanceof i) {
                            arrayList.addAll(((i) eVar).A(eVar.readerIndex(), eVar.readableBytes()));
                        } else {
                            arrayList.add(eVar.H0());
                        }
                    }
                }
                return d(byteOrder, arrayList, z3);
            } else if (eVarArr[0].I0()) {
                return d0(eVarArr[0]);
            }
        }
        return f73374c;
    }

    @Deprecated
    public static e g(String str, String str2) {
        return f(str, Charset.forName(str2));
    }

    public static e g0(byte[] bArr) {
        return a0(f73372a, bArr);
    }

    public static e h(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        if (remaining == 0) {
            return f73374c;
        }
        byte[] bArr = new byte[remaining];
        int position = byteBuffer.position();
        try {
            byteBuffer.get(bArr);
            byteBuffer.position(position);
            return a0(byteBuffer.order(), bArr);
        } catch (Throwable th) {
            byteBuffer.position(position);
            throw th;
        }
    }

    public static e h0(byte[] bArr, int i2, int i4) {
        return b0(f73372a, bArr, i2, i4);
    }

    public static e i(ByteOrder byteOrder, CharSequence charSequence, int i2, int i4, Charset charset) {
        Objects.requireNonNull(charSequence, TypedValues.Custom.S_STRING);
        if (i4 == 0) {
            return f73374c;
        }
        if (charSequence instanceof CharBuffer) {
            CharBuffer charBuffer = (CharBuffer) charSequence;
            if (charBuffer.hasArray()) {
                return o(byteOrder, charBuffer.array(), charBuffer.arrayOffset() + charBuffer.position() + i2, i4, charset);
            }
            CharBuffer slice = charBuffer.slice();
            slice.limit(i4);
            slice.position(i2);
            return l(byteOrder, slice, charset);
        }
        return l(byteOrder, CharBuffer.wrap(charSequence, i2, i4 + i2), charset);
    }

    public static e i0(ByteBuffer... byteBufferArr) {
        return e0(false, byteBufferArr);
    }

    public static e j(ByteOrder byteOrder, CharSequence charSequence, Charset charset) {
        Objects.requireNonNull(charSequence, TypedValues.Custom.S_STRING);
        if (charSequence instanceof CharBuffer) {
            return l(byteOrder, (CharBuffer) charSequence, charset);
        }
        return l(byteOrder, CharBuffer.wrap(charSequence), charset);
    }

    public static e j0(e... eVarArr) {
        return f0(false, eVarArr);
    }

    @Deprecated
    public static e k(ByteOrder byteOrder, String str, String str2) {
        return j(byteOrder, str, Charset.forName(str2));
    }

    public static e k0(byte[]... bArr) {
        return c0(f73372a, bArr);
    }

    private static e l(ByteOrder byteOrder, CharBuffer charBuffer, Charset charset) {
        ByteBuffer I = I(charBuffer, charset);
        e a02 = a0(byteOrder, I.array());
        a02.u0(I.remaining());
        return a02;
    }

    public static e m(ByteOrder byteOrder, byte[] bArr) {
        if (byteOrder == f73372a) {
            if (bArr.length == 0) {
                return f73374c;
            }
            return new c((byte[]) bArr.clone());
        } else if (byteOrder == f73373b) {
            if (bArr.length == 0) {
                return f73374c;
            }
            return new o((byte[]) bArr.clone());
        } else {
            throw new NullPointerException("endianness");
        }
    }

    public static e n(ByteOrder byteOrder, byte[] bArr, int i2, int i4) {
        Objects.requireNonNull(byteOrder, "endianness");
        if (i4 == 0) {
            return f73374c;
        }
        byte[] bArr2 = new byte[i4];
        System.arraycopy(bArr, i2, bArr2, 0, i4);
        return a0(byteOrder, bArr2);
    }

    public static e o(ByteOrder byteOrder, char[] cArr, int i2, int i4, Charset charset) {
        Objects.requireNonNull(cArr, "array");
        if (i4 == 0) {
            return f73374c;
        }
        return l(byteOrder, CharBuffer.wrap(cArr, i2, i4), charset);
    }

    public static e p(ByteOrder byteOrder, char[] cArr, Charset charset) {
        return o(byteOrder, cArr, 0, cArr.length, charset);
    }

    public static e q(ByteOrder byteOrder, byte[]... bArr) {
        int length = bArr.length;
        if (length != 0) {
            if (length != 1) {
                int i2 = 0;
                for (byte[] bArr2 : bArr) {
                    if (Integer.MAX_VALUE - i2 >= bArr2.length) {
                        i2 += bArr2.length;
                    } else {
                        throw new IllegalArgumentException("The total length of the specified arrays is too big.");
                    }
                }
                if (i2 == 0) {
                    return f73374c;
                }
                byte[] bArr3 = new byte[i2];
                int i4 = 0;
                for (byte[] bArr4 : bArr) {
                    System.arraycopy(bArr4, 0, bArr3, i4, bArr4.length);
                    i4 += bArr4.length;
                }
                return a0(byteOrder, bArr3);
            } else if (bArr[0].length == 0) {
                return f73374c;
            } else {
                return m(byteOrder, bArr[0]);
            }
        }
        return f73374c;
    }

    public static e r(e eVar) {
        if (eVar.I0()) {
            return eVar.copy();
        }
        return f73374c;
    }

    public static e s(byte[] bArr) {
        return m(f73372a, bArr);
    }

    public static e t(byte[] bArr, int i2, int i4) {
        return n(f73372a, bArr, i2, i4);
    }

    public static e u(char[] cArr, int i2, int i4, Charset charset) {
        return o(f73372a, cArr, i2, i4, charset);
    }

    public static e v(char[] cArr, Charset charset) {
        return o(f73372a, cArr, 0, cArr.length, charset);
    }

    public static e w(ByteBuffer... byteBufferArr) {
        int length = byteBufferArr.length;
        if (length != 0) {
            if (length != 1) {
                e[] eVarArr = new e[byteBufferArr.length];
                for (int i2 = 0; i2 < byteBufferArr.length; i2++) {
                    eVarArr[i2] = h(byteBufferArr[i2]);
                }
                return f0(false, eVarArr);
            }
            return h(byteBufferArr[0]);
        }
        return f73374c;
    }

    public static e x(e... eVarArr) {
        int length = eVarArr.length;
        if (length != 0) {
            if (length != 1) {
                e[] eVarArr2 = new e[eVarArr.length];
                for (int i2 = 0; i2 < eVarArr.length; i2++) {
                    eVarArr2[i2] = r(eVarArr[i2]);
                }
                return f0(false, eVarArr2);
            }
            return r(eVarArr[0]);
        }
        return f73374c;
    }

    public static e y(byte[]... bArr) {
        return q(f73372a, bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String z(ByteBuffer byteBuffer, Charset charset) {
        CharsetDecoder a4 = org.jboss.netty.util.a.a(charset);
        double remaining = byteBuffer.remaining();
        double maxCharsPerByte = a4.maxCharsPerByte();
        Double.isNaN(remaining);
        Double.isNaN(maxCharsPerByte);
        CharBuffer allocate = CharBuffer.allocate((int) (remaining * maxCharsPerByte));
        try {
            CoderResult decode = a4.decode(byteBuffer, allocate, true);
            if (!decode.isUnderflow()) {
                decode.throwException();
            }
            CoderResult flush = a4.flush(allocate);
            if (!flush.isUnderflow()) {
                flush.throwException();
            }
            return allocate.flip().toString();
        } catch (CharacterCodingException e4) {
            throw new IllegalStateException(e4);
        }
    }
}
