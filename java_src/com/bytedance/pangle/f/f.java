package com.bytedance.pangle.f;

import android.support.v4.media.session.PlaybackStateCompat;
import android.util.ArrayMap;
import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.RequiresApi;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.DigestException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
final class f {

    /* renamed from: a  reason: collision with root package name */
    static final HashMap<String, SparseArray<m>> f10223a = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a implements j {

        /* renamed from: a  reason: collision with root package name */
        private final MessageDigest[] f10224a;

        a(MessageDigest[] messageDigestArr) {
            this.f10224a = messageDigestArr;
        }

        @Override // com.bytedance.pangle.f.j
        public final void a(ByteBuffer byteBuffer) {
            MessageDigest[] messageDigestArr;
            ByteBuffer slice = byteBuffer.slice();
            for (MessageDigest messageDigest : this.f10224a) {
                slice.position(0);
                messageDigest.update(slice);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(api = 21)
    public static void a(Map<Integer, byte[]> map, RandomAccessFile randomAccessFile, m mVar) {
        if (!map.isEmpty()) {
            ArrayMap arrayMap = new ArrayMap();
            boolean z3 = true;
            if (map.containsKey(1)) {
                arrayMap.put(1, map.get(1));
            }
            if (map.containsKey(2)) {
                arrayMap.put(2, map.get(2));
            }
            boolean z4 = false;
            if (!arrayMap.isEmpty()) {
                try {
                    a(arrayMap, randomAccessFile.getFD(), mVar);
                    z3 = false;
                } catch (IOException e4) {
                    throw new SecurityException("Cannot get FD", e4);
                }
            }
            if (map.containsKey(3)) {
                try {
                    if (!Arrays.equals(a(map.get(3), randomAccessFile.length(), mVar), g.a(randomAccessFile, mVar, new i() { // from class: com.bytedance.pangle.f.f.1
                        @Override // com.bytedance.pangle.f.i
                        public final ByteBuffer a(int i2) {
                            return ByteBuffer.allocate(i2);
                        }
                    }).f10227b)) {
                        throw new SecurityException("APK verity digest of contents did not verify");
                    }
                } catch (IOException | DigestException | NoSuchAlgorithmException e5) {
                    throw new SecurityException("Error during verification", e5);
                }
            } else {
                z4 = z3;
            }
            if (z4) {
                throw new SecurityException("No known digest exists for integrity check");
            }
            return;
        }
        throw new SecurityException("No digests provided");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(int i2) {
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 == 3) {
                    return "SHA-256";
                }
                throw new IllegalArgumentException("Unknown content digest algorthm: ".concat(String.valueOf(i2)));
            }
            return "SHA-512";
        }
        return "SHA-256";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(int i2) {
        if (i2 == 513 || i2 == 514) {
            return "EC";
        }
        if (i2 != 769) {
            if (i2 != 1057) {
                if (i2 != 1059) {
                    if (i2 != 1061) {
                        switch (i2) {
                            case 257:
                            case com.join.mgps.socket.fight.arena.a.f52158i /* 258 */:
                            case 259:
                            case 260:
                                return "RSA";
                            default:
                                throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(i2 & (-1)));
                        }
                    }
                    return "DSA";
                }
                return "EC";
            }
            return "RSA";
        }
        return "DSA";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Pair<String, ? extends AlgorithmParameterSpec> d(int i2) {
        if (i2 != 513) {
            if (i2 != 514) {
                if (i2 != 769) {
                    if (i2 != 1057) {
                        if (i2 != 1059) {
                            if (i2 != 1061) {
                                switch (i2) {
                                    case 257:
                                        return Pair.create("SHA256withRSA/PSS", new PSSParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, 32, 1));
                                    case com.join.mgps.socket.fight.arena.a.f52158i /* 258 */:
                                        return Pair.create("SHA512withRSA/PSS", new PSSParameterSpec("SHA-512", "MGF1", MGF1ParameterSpec.SHA512, 64, 1));
                                    case 259:
                                        break;
                                    case 260:
                                        return Pair.create("SHA512withRSA", null);
                                    default:
                                        throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(i2 & (-1)));
                                }
                            }
                        }
                    }
                    return Pair.create("SHA256withRSA", null);
                }
                return Pair.create("SHA256withDSA", null);
            }
            return Pair.create("SHA512withECDSA", null);
        }
        return Pair.create("SHA256withECDSA", null);
    }

    private static int e(int i2) {
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 == 3) {
                    return 32;
                }
                throw new IllegalArgumentException("Unknown content digest algorthm: ".concat(String.valueOf(i2)));
            }
            return 64;
        }
        return 32;
    }

    private static ByteBuffer b(ByteBuffer byteBuffer, int i2) {
        if (i2 >= 0) {
            int limit = byteBuffer.limit();
            int position = byteBuffer.position();
            int i4 = i2 + position;
            if (i4 >= position && i4 <= limit) {
                byteBuffer.limit(i4);
                try {
                    ByteBuffer slice = byteBuffer.slice();
                    slice.order(byteBuffer.order());
                    byteBuffer.position(i4);
                    return slice;
                } finally {
                    byteBuffer.limit(limit);
                }
            }
            throw new BufferUnderflowException();
        }
        throw new IllegalArgumentException("size: ".concat(String.valueOf(i2)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] b(ByteBuffer byteBuffer) {
        int i2 = byteBuffer.getInt();
        if (i2 >= 0) {
            if (i2 <= byteBuffer.remaining()) {
                byte[] bArr = new byte[i2];
                byteBuffer.get(bArr);
                return bArr;
            }
            throw new IOException("Underflow while reading length-prefixed value. Length: " + i2 + ", available: " + byteBuffer.remaining());
        }
        throw new IOException("Negative length");
    }

    private static void a(Map<Integer, byte[]> map, FileDescriptor fileDescriptor, m mVar) {
        l lVar = new l(fileDescriptor, 0L, mVar.f10239b);
        long j4 = mVar.f10240c;
        l lVar2 = new l(fileDescriptor, j4, mVar.f10241d - j4);
        ByteBuffer duplicate = mVar.f10242e.duplicate();
        duplicate.order(ByteOrder.LITTLE_ENDIAN);
        long j5 = mVar.f10239b;
        s.a(duplicate);
        int position = duplicate.position() + 16;
        if (j5 >= 0 && j5 <= 4294967295L) {
            duplicate.putInt(duplicate.position() + position, (int) j5);
            h hVar = new h(duplicate);
            int size = map.size();
            int[] iArr = new int[size];
            int i2 = 0;
            for (Integer num : map.keySet()) {
                iArr[i2] = num.intValue();
                i2++;
            }
            try {
                byte[][] a4 = a(iArr, new k[]{lVar, lVar2, hVar});
                for (int i4 = 0; i4 < size; i4++) {
                    int i5 = iArr[i4];
                    if (!MessageDigest.isEqual(map.get(Integer.valueOf(i5)), a4[i4])) {
                        throw new SecurityException(b(i5) + " digest of contents did not verify");
                    }
                }
                return;
            } catch (DigestException e4) {
                throw new SecurityException("Failed to compute digest(s) of contents", e4);
            }
        }
        throw new IllegalArgumentException("uint32 value of out range: ".concat(String.valueOf(j5)));
    }

    private static byte[][] a(int[] iArr, k[] kVarArr) {
        int i2;
        long j4;
        MessageDigest messageDigest;
        long j5 = 0;
        long j6 = 0;
        int i4 = 0;
        while (true) {
            i2 = 3;
            j4 = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            if (i4 >= 3) {
                break;
            }
            j6 += ((kVarArr[i4].a() + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) - 1) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            i4++;
        }
        if (j6 < 2097151) {
            int i5 = (int) j6;
            byte[][] bArr = new byte[iArr.length];
            for (int i6 = 0; i6 < iArr.length; i6++) {
                byte[] bArr2 = new byte[(e(iArr[i6]) * i5) + 5];
                bArr2[0] = 90;
                a(i5, bArr2);
                bArr[i6] = bArr2;
            }
            byte[] bArr3 = new byte[5];
            bArr3[0] = -91;
            int length = iArr.length;
            MessageDigest[] messageDigestArr = new MessageDigest[length];
            for (int i7 = 0; i7 < iArr.length; i7++) {
                String b4 = b(iArr[i7]);
                try {
                    messageDigestArr[i7] = MessageDigest.getInstance(b4);
                } catch (NoSuchAlgorithmException e4) {
                    throw new RuntimeException(b4 + " digest not supported", e4);
                }
            }
            a aVar = new a(messageDigestArr);
            int i8 = 0;
            int i9 = 0;
            int i10 = 0;
            while (i8 < i2) {
                k kVar = kVarArr[i8];
                long j7 = j5;
                int i11 = i10;
                a aVar2 = aVar;
                long a4 = kVar.a();
                while (a4 > j5) {
                    int min = (int) Math.min(a4, j4);
                    a(min, bArr3);
                    for (int i12 = 0; i12 < length; i12++) {
                        messageDigestArr[i12].update(bArr3);
                    }
                    a aVar3 = aVar2;
                    long j8 = j7;
                    try {
                        kVar.a(aVar3, j8, min);
                        aVar2 = aVar3;
                        k kVar2 = kVar;
                        int i13 = 0;
                        while (i13 < iArr.length) {
                            int i14 = iArr[i13];
                            byte[] bArr4 = bArr3;
                            byte[] bArr5 = bArr[i13];
                            int e5 = e(i14);
                            int i15 = length;
                            MessageDigest[] messageDigestArr2 = messageDigestArr;
                            int digest = messageDigestArr[i13].digest(bArr5, (i11 * e5) + 5, e5);
                            if (digest != e5) {
                                throw new RuntimeException("Unexpected output size of " + messageDigest.getAlgorithm() + " digest: " + digest);
                            }
                            i13++;
                            bArr3 = bArr4;
                            length = i15;
                            messageDigestArr = messageDigestArr2;
                        }
                        long j9 = min;
                        long j10 = j8 + j9;
                        a4 -= j9;
                        i11++;
                        j5 = 0;
                        j4 = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
                        kVar = kVar2;
                        bArr3 = bArr3;
                        j7 = j10;
                    } catch (IOException e6) {
                        throw new DigestException("Failed to digest chunk #" + i11 + " of section #" + i9, e6);
                    }
                }
                i9++;
                i8++;
                i10 = i11;
                aVar = aVar2;
                j5 = 0;
                i2 = 3;
                j4 = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            }
            byte[][] bArr6 = new byte[iArr.length];
            for (int i16 = 0; i16 < iArr.length; i16++) {
                int i17 = iArr[i16];
                byte[] bArr7 = bArr[i16];
                String b5 = b(i17);
                try {
                    bArr6[i16] = MessageDigest.getInstance(b5).digest(bArr7);
                } catch (NoSuchAlgorithmException e7) {
                    throw new RuntimeException(b5 + " digest not supported", e7);
                }
            }
            return bArr6;
        }
        throw new DigestException("Too many chunks: ".concat(String.valueOf(j6)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] a(byte[] bArr, long j4, m mVar) {
        if (bArr.length == 40) {
            ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            order.position(32);
            if (order.getLong() == j4 - (mVar.f10240c - mVar.f10239b)) {
                return Arrays.copyOfRange(bArr, 0, 32);
            }
            throw new SecurityException("APK content size did not verify");
        }
        throw new SecurityException("Verity digest size is wrong: " + bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, int i4) {
        int a4 = a(i2);
        int a5 = a(i4);
        if (a4 == 1) {
            if (a5 != 1) {
                if (a5 == 2 || a5 == 3) {
                    return -1;
                }
                throw new IllegalArgumentException("Unknown digestAlgorithm2: ".concat(String.valueOf(a5)));
            }
            return 0;
        } else if (a4 == 2) {
            if (a5 != 1) {
                if (a5 == 2) {
                    return 0;
                }
                if (a5 != 3) {
                    throw new IllegalArgumentException("Unknown digestAlgorithm2: ".concat(String.valueOf(a5)));
                }
            }
            return 1;
        } else if (a4 == 3) {
            if (a5 != 1) {
                if (a5 != 2) {
                    if (a5 == 3) {
                        return 0;
                    }
                    throw new IllegalArgumentException("Unknown digestAlgorithm2: ".concat(String.valueOf(a5)));
                }
                return -1;
            }
            return 1;
        } else {
            throw new IllegalArgumentException("Unknown digestAlgorithm1: ".concat(String.valueOf(a4)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2) {
        if (i2 != 513) {
            if (i2 != 514) {
                if (i2 != 769) {
                    if (i2 == 1057 || i2 == 1059 || i2 == 1061) {
                        return 3;
                    }
                    switch (i2) {
                        case 257:
                        case 259:
                            return 1;
                        case com.join.mgps.socket.fight.arena.a.f52158i /* 258 */:
                        case 260:
                            return 2;
                        default:
                            throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(i2 & (-1)));
                    }
                }
                return 1;
            }
            return 2;
        }
        return 1;
    }

    private static ByteBuffer a(ByteBuffer byteBuffer, int i2) {
        if (i2 >= 8) {
            int capacity = byteBuffer.capacity();
            if (i2 <= byteBuffer.capacity()) {
                int limit = byteBuffer.limit();
                int position = byteBuffer.position();
                try {
                    byteBuffer.position(0);
                    byteBuffer.limit(i2);
                    byteBuffer.position(8);
                    ByteBuffer slice = byteBuffer.slice();
                    slice.order(byteBuffer.order());
                    return slice;
                } finally {
                    byteBuffer.position(0);
                    byteBuffer.limit(limit);
                    byteBuffer.position(position);
                }
            }
            throw new IllegalArgumentException("end > capacity: " + i2 + " > " + capacity);
        }
        throw new IllegalArgumentException("end < start: " + i2 + " < 8");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ByteBuffer a(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() >= 4) {
            int i2 = byteBuffer.getInt();
            if (i2 >= 0) {
                if (i2 <= byteBuffer.remaining()) {
                    return b(byteBuffer, i2);
                }
                throw new IOException("Length-prefixed field longer than remaining buffer. Field length: " + i2 + ", remaining: " + byteBuffer.remaining());
            }
            throw new IllegalArgumentException("Negative length");
        }
        throw new IOException("Remaining buffer too short to contain length of length-prefixed field. Remaining: " + byteBuffer.remaining());
    }

    private static void a(int i2, byte[] bArr) {
        bArr[1] = (byte) (i2 & 255);
        bArr[2] = (byte) ((i2 >>> 8) & 255);
        bArr[3] = (byte) ((i2 >>> 16) & 255);
        bArr[4] = (byte) ((i2 >>> 24) & 255);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0246  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(java.lang.String r24, java.io.RandomAccessFile r25, int... r26) {
        /*
            Method dump skipped, instructions count: 600
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.pangle.f.f.a(java.lang.String, java.io.RandomAccessFile, int[]):void");
    }
}
