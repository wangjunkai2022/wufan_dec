package com.bytedance.pangle.f;

import java.io.FileDescriptor;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.util.ArrayList;
/* loaded from: classes2.dex */
abstract class g {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f10225a = new byte[8];

    /* loaded from: classes2.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        public final ByteBuffer f10226a;

        /* renamed from: b  reason: collision with root package name */
        public final byte[] f10227b;

        a(ByteBuffer byteBuffer, byte[] bArr) {
            this.f10226a = byteBuffer;
            this.f10227b = bArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class b implements j {

        /* renamed from: a  reason: collision with root package name */
        private int f10228a;

        /* renamed from: b  reason: collision with root package name */
        private final ByteBuffer f10229b;

        /* renamed from: c  reason: collision with root package name */
        private final MessageDigest f10230c;

        /* renamed from: d  reason: collision with root package name */
        private final byte[] f10231d;

        /* renamed from: e  reason: collision with root package name */
        private final byte[] f10232e;

        /* synthetic */ b(byte[] bArr, ByteBuffer byteBuffer, byte b4) {
            this(bArr, byteBuffer);
        }

        @Override // com.bytedance.pangle.f.j
        public final void a(ByteBuffer byteBuffer) {
            byteBuffer.position();
            int remaining = byteBuffer.remaining();
            while (remaining > 0) {
                int min = Math.min(remaining, 4096 - this.f10228a);
                byteBuffer.limit(byteBuffer.position() + min);
                this.f10230c.update(byteBuffer);
                remaining -= min;
                int i2 = this.f10228a + min;
                this.f10228a = i2;
                if (i2 == 4096) {
                    MessageDigest messageDigest = this.f10230c;
                    byte[] bArr = this.f10231d;
                    messageDigest.digest(bArr, 0, bArr.length);
                    this.f10229b.put(this.f10231d);
                    this.f10230c.update(this.f10232e);
                    this.f10228a = 0;
                }
            }
        }

        final void b() {
            int position = this.f10229b.position() % 4096;
            if (position == 0) {
                return;
            }
            this.f10229b.put(ByteBuffer.allocate(4096 - position));
        }

        private b(byte[] bArr, ByteBuffer byteBuffer) {
            this.f10231d = new byte[32];
            this.f10232e = bArr;
            this.f10229b = byteBuffer.slice();
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            this.f10230c = messageDigest;
            messageDigest.update(bArr);
            this.f10228a = 0;
        }

        public final void a() {
            if (this.f10228a == 0) {
                return;
            }
            throw new IllegalStateException("Buffer is not empty: " + this.f10228a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(RandomAccessFile randomAccessFile, m mVar, i iVar) {
        int[] a4 = a(randomAccessFile.length() - (mVar.f10240c - mVar.f10239b));
        int i2 = a4[a4.length - 1];
        int i4 = i2 + 4096;
        ByteBuffer a5 = iVar.a(i4);
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        a5.order(byteOrder);
        ByteBuffer a6 = a(a5, 0, i2);
        int i5 = i2 + 64;
        ByteBuffer a7 = a(a5, i2, i5);
        ByteBuffer a8 = a(a5, i5, i4);
        byte[] bArr = new byte[32];
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.order(byteOrder);
        long j4 = mVar.f10239b;
        if (j4 % 4096 == 0) {
            long j5 = mVar.f10240c;
            if ((j5 - j4) % 4096 == 0) {
                long j6 = j5 - j4;
                int[] a9 = a(randomAccessFile.length() - j6);
                if (a6 != null) {
                    wrap.put(a(randomAccessFile, mVar, f10225a, a9, a6));
                    wrap.flip();
                }
                if (a7 != null) {
                    a7.order(byteOrder);
                    long length = randomAccessFile.length();
                    byte[] bArr2 = f10225a;
                    if (bArr2.length == 8) {
                        a7.put("TrueBrew".getBytes());
                        a7.put((byte) 1);
                        a7.put((byte) 0);
                        a7.put((byte) 12);
                        a7.put((byte) 7);
                        a7.putShort((short) 1);
                        a7.putShort((short) 1);
                        a7.putInt(0);
                        a7.putInt(0);
                        a7.putLong(length);
                        a7.put((byte) 2);
                        a7.put((byte) 0);
                        a7.put(bArr2);
                        a(a7, 22);
                        a7.flip();
                    } else {
                        throw new IllegalArgumentException("salt is not 8 bytes long");
                    }
                }
                if (a8 != null) {
                    a8.order(byteOrder);
                    long j7 = mVar.f10239b;
                    long j8 = mVar.f10241d;
                    a8.putInt(24);
                    a8.putShort((short) 1);
                    a(a8, 2);
                    a8.putLong(j7);
                    a8.putLong(j6);
                    a8.putInt(20);
                    a8.putShort((short) 2);
                    a(a8, 2);
                    a8.putLong(j8 + 16);
                    a8.putInt(c(j7));
                    a(a8, 4);
                    a8.flip();
                }
                a5.position(i5 + a8.limit());
                a5.putInt(a8.limit() + 64 + 4);
                a5.flip();
                return new a(a5, bArr);
            }
            throw new IllegalArgumentException("Size of APK Signing Block is not a multiple of 4096: " + (mVar.f10240c - mVar.f10239b));
        }
        throw new IllegalArgumentException("APK Signing Block does not start at the page  boundary: " + mVar.f10239b);
    }

    private static long b(long j4) {
        return ((j4 + 4096) - 1) / 4096;
    }

    private static int c(long j4) {
        int i2 = (int) j4;
        if (i2 == j4) {
            return i2;
        }
        throw new ArithmeticException("integer overflow");
    }

    private static void a(j jVar, k kVar, int i2) {
        long a4 = kVar.a();
        long j4 = 0;
        while (a4 > 0) {
            int min = (int) Math.min(a4, i2);
            kVar.a(jVar, j4, min);
            long j5 = min;
            j4 += j5;
            a4 -= j5;
        }
    }

    private static byte[] a(RandomAccessFile randomAccessFile, m mVar, byte[] bArr, int[] iArr, ByteBuffer byteBuffer) {
        b bVar = new b(bArr, a(byteBuffer, iArr[iArr.length - 2], iArr[iArr.length - 1]), (byte) 0);
        a(bVar, new l(randomAccessFile.getFD(), 0L, mVar.f10239b), 1048576);
        long j4 = mVar.f10241d + 16;
        FileDescriptor fd = randomAccessFile.getFD();
        long j5 = mVar.f10240c;
        a(bVar, new l(fd, j5, j4 - j5), 1048576);
        ByteBuffer order = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN);
        order.putInt(c(mVar.f10239b));
        order.flip();
        bVar.a(order);
        long j6 = j4 + 4;
        a(bVar, new l(randomAccessFile.getFD(), j6, randomAccessFile.length() - j6), 1048576);
        int length = (int) (randomAccessFile.length() % 4096);
        if (length != 0) {
            bVar.a(ByteBuffer.allocate(4096 - length));
        }
        bVar.a();
        bVar.b();
        for (int length2 = iArr.length - 3; length2 >= 0; length2--) {
            int i2 = length2 + 1;
            ByteBuffer a4 = a(byteBuffer, iArr[i2], iArr[length2 + 2]);
            ByteBuffer a5 = a(byteBuffer, iArr[length2], iArr[i2]);
            h hVar = new h(a4);
            b bVar2 = new b(bArr, a5, (byte) 0);
            a(bVar2, hVar, 4096);
            bVar2.a();
            bVar2.b();
        }
        byte[] bArr2 = new byte[32];
        b bVar3 = new b(bArr, ByteBuffer.wrap(bArr2), (byte) 0);
        bVar3.a(a(byteBuffer, 0, 4096));
        bVar3.a();
        return bArr2;
    }

    private static int[] a(long j4) {
        ArrayList arrayList = new ArrayList();
        do {
            j4 = b(j4) * 32;
            arrayList.add(Long.valueOf(b(j4) * 4096));
        } while (j4 > 4096);
        int[] iArr = new int[arrayList.size() + 1];
        int i2 = 0;
        iArr[0] = 0;
        while (i2 < arrayList.size()) {
            int i4 = i2 + 1;
            iArr[i4] = iArr[i2] + c(((Long) arrayList.get((arrayList.size() - i2) - 1)).longValue());
            i2 = i4;
        }
        return iArr;
    }

    private static ByteBuffer a(ByteBuffer byteBuffer, int i2, int i4) {
        ByteBuffer duplicate = byteBuffer.duplicate();
        duplicate.position(0);
        duplicate.limit(i4);
        duplicate.position(i2);
        return duplicate.slice();
    }

    private static void a(ByteBuffer byteBuffer, int i2) {
        byteBuffer.position(byteBuffer.position() + i2);
    }
}
