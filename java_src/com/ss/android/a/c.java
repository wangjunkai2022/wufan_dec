package com.ss.android.a;

import com.sdk.a.g;
import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.Objects;
/* compiled from: TTMd5.java */
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f56872a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TTMd5.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f56873a;

        /* renamed from: b  reason: collision with root package name */
        private int f56874b;

        /* renamed from: c  reason: collision with root package name */
        private int f56875c;

        /* renamed from: d  reason: collision with root package name */
        private long f56876d;

        /* renamed from: e  reason: collision with root package name */
        private String f56877e;

        private a() {
        }
    }

    public static String a(File file) {
        return a(file, 9, 8192L);
    }

    private static String b(File file, int i2, long j4) throws Exception {
        return a(new com.ss.android.a.a(file), i2, j4);
    }

    public static String a(File file, int i2, long j4) {
        if (file != null) {
            try {
                if (file.exists()) {
                    return b(file, i2, j4);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return "";
    }

    private static long b(String str) throws RuntimeException {
        return (Long.parseLong(str, 16) - 31) >> 4;
    }

    public static int a(String str, File file) {
        return a(str, file, (b) null);
    }

    public static int a(String str, File file, b bVar) {
        String b4;
        if (str == null || str.length() == 0) {
            return 2;
        }
        try {
            if (bVar != null) {
                if (bVar.a() <= 0) {
                    try {
                        bVar.b();
                    } catch (Throwable unused) {
                    }
                    return 5;
                }
            } else if (file == null || !file.exists()) {
                return 5;
            }
            int i2 = -1;
            long j4 = -1;
            try {
                a a4 = a(str);
                if (a4 != null) {
                    if (a4.f56873a > 1) {
                        return 3;
                    }
                    i2 = a4.f56875c;
                    j4 = a4.f56876d;
                }
                a aVar = null;
                if (bVar != null) {
                    b4 = a(bVar, i2, j4);
                } else {
                    b4 = b(file, i2, j4);
                }
                if (b4 != null && b4.length() != 0) {
                    if (a4 != null && (a4.f56873a != 1 || a4.f56874b != 1)) {
                        if (a4.f56877e != null) {
                            try {
                                aVar = a(b4);
                            } catch (Throwable unused2) {
                            }
                            if (aVar != null && a4.f56875c == aVar.f56875c && a4.f56876d == aVar.f56876d && a4.f56877e.equals(aVar.f56877e)) {
                                return 0;
                            }
                        }
                    }
                    return b4.equals(str) ? 0 : 1;
                }
                return 6;
            } catch (Throwable unused3) {
                return 4;
            }
        } catch (Throwable unused4) {
            return 99;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:5|6|(6:13|14|(3:16|(1:18)|19)|(1:21)|22|(4:31|32|33|34)(3:26|27|28))|38|14|(0)|(0)|22|(1:24)|31|32|33|34) */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0040 A[Catch: all -> 0x009c, TryCatch #2 {all -> 0x009c, blocks: (B:6:0x000d, B:10:0x001a, B:15:0x002e, B:17:0x0040, B:19:0x004d, B:21:0x0064, B:22:0x006e, B:28:0x0080), top: B:43:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0064 A[Catch: all -> 0x009c, TryCatch #2 {all -> 0x009c, blocks: (B:6:0x000d, B:10:0x001a, B:15:0x002e, B:17:0x0040, B:19:0x004d, B:21:0x0064, B:22:0x006e, B:28:0x0080), top: B:43:0x000d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String a(com.ss.android.a.b r21, int r22, long r23) throws java.lang.Exception {
        /*
            r0 = r22
            java.lang.String r1 = "MD5"
            java.security.MessageDigest r1 = java.security.MessageDigest.getInstance(r1)
            if (r1 != 0) goto Ld
            java.lang.String r0 = ""
            return r0
        Ld:
            long r9 = r21.a()     // Catch: java.lang.Throwable -> L9c
            r11 = 1
            if (r0 <= 0) goto L2c
            r2 = 0
            int r4 = (r23 > r2 ? 1 : (r23 == r2 ? 0 : -1))
            if (r4 <= 0) goto L2c
            long r2 = (long) r0     // Catch: java.lang.Throwable -> L9c
            long r2 = r2 * r23
            r4 = 8
            long r4 = r4 * r9
            r6 = 10
            long r4 = r4 / r6
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 <= 0) goto L29
            goto L2c
        L29:
            r12 = r23
            goto L2e
        L2c:
            r12 = r9
            r0 = 1
        L2e:
            r2 = 8192(0x2000, float:1.14794E-41)
            byte[] r14 = new byte[r2]     // Catch: java.lang.Throwable -> L9c
            r15 = 0
            r2 = r21
            r3 = r1
            r4 = r14
            r5 = r15
            r7 = r12
            a(r2, r3, r4, r5, r7)     // Catch: java.lang.Throwable -> L9c
            r2 = 2
            if (r0 <= r2) goto L62
            long r2 = (long) r0     // Catch: java.lang.Throwable -> L9c
            long r2 = r2 * r12
            long r2 = r9 - r2
            int r7 = r0 + (-1)
            long r4 = (long) r7     // Catch: java.lang.Throwable -> L9c
            long r17 = r2 / r4
            r8 = 1
        L4b:
            if (r8 >= r7) goto L62
            long r2 = r12 + r17
            long r15 = r15 + r2
            r2 = r21
            r3 = r1
            r4 = r14
            r5 = r15
            r19 = r7
            r20 = r8
            r7 = r12
            a(r2, r3, r4, r5, r7)     // Catch: java.lang.Throwable -> L9c
            int r8 = r20 + 1
            r7 = r19
            goto L4b
        L62:
            if (r0 <= r11) goto L6e
            long r5 = r9 - r12
            r2 = r21
            r3 = r1
            r4 = r14
            r7 = r12
            a(r2, r3, r4, r5, r7)     // Catch: java.lang.Throwable -> L9c
        L6e:
            byte[] r1 = r1.digest()     // Catch: java.lang.Throwable -> L9c
            java.lang.String r1 = a(r1)     // Catch: java.lang.Throwable -> L9c
            if (r0 != r11) goto L80
            int r2 = (r12 > r9 ? 1 : (r12 == r9 ? 0 : -1))
            if (r2 != 0) goto L80
            r21.b()     // Catch: java.lang.Throwable -> L7f
        L7f:
            return r1
        L80:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L9c
            r2.<init>()     // Catch: java.lang.Throwable -> L9c
            java.lang.String r0 = a(r0, r12)     // Catch: java.lang.Throwable -> L9c
            r2.append(r0)     // Catch: java.lang.Throwable -> L9c
            java.lang.String r0 = ";"
            r2.append(r0)     // Catch: java.lang.Throwable -> L9c
            r2.append(r1)     // Catch: java.lang.Throwable -> L9c
            java.lang.String r0 = r2.toString()     // Catch: java.lang.Throwable -> L9c
            r21.b()     // Catch: java.lang.Throwable -> L9b
        L9b:
            return r0
        L9c:
            r0 = move-exception
            r21.b()     // Catch: java.lang.Throwable -> La0
        La0:
            goto La2
        La1:
            throw r0
        La2:
            goto La1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.a.c.a(com.ss.android.a.b, int, long):java.lang.String");
    }

    private static void a(b bVar, MessageDigest messageDigest, byte[] bArr, long j4, long j5) throws IOException {
        bVar.a(j4, j5);
        long j6 = 0;
        while (j6 < j5) {
            int a4 = bVar.a(bArr, 0, (int) Math.min(j5 - j6, bArr.length));
            if (a4 > 0) {
                messageDigest.update(bArr, 0, a4);
                j6 += a4;
            } else {
                throw new IOException("updateSample unexpected readCount <= 0, readCount = " + a4 + ", readTotalCount = " + j6 + ", sampleSize = " + j5);
            }
        }
    }

    private static String a(byte[] bArr) {
        Objects.requireNonNull(bArr, "bytes is null");
        int length = bArr.length;
        int i2 = length * 2;
        char[] cArr = new char[i2];
        int i4 = 0;
        for (int i5 = 0; i5 < length; i5++) {
            int i6 = bArr[i5 + 0] & 255;
            int i7 = i4 + 1;
            char[] cArr2 = f56872a;
            cArr[i4] = cArr2[i6 >> 4];
            i4 = i7 + 1;
            cArr[i7] = cArr2[i6 & 15];
        }
        return new String(cArr, 0, i2);
    }

    private static String a(int i2, long j4) {
        return "ttmd5:1:1:" + a(i2) + g.f56552a + a(j4);
    }

    private static a a(String str) throws Exception {
        if (str.startsWith("ttmd5:")) {
            String[] split = str.split(";");
            String[] split2 = split[0].split(":");
            a aVar = new a();
            aVar.f56873a = Integer.parseInt(split2[1]);
            if (aVar.f56873a > 1) {
                return aVar;
            }
            aVar.f56874b = Integer.parseInt(split2[2]);
            String[] split3 = split2[3].split(g.f56552a);
            aVar.f56875c = (int) b(split3[0]);
            aVar.f56876d = b(split3[1]);
            aVar.f56877e = split[1];
            return aVar;
        }
        return null;
    }

    private static String a(long j4) {
        return Long.toHexString((j4 << 4) + 31);
    }
}
