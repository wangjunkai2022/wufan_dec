package com.join.mgps.Util;
/* compiled from: CRC32Util.java */
/* loaded from: classes3.dex */
public class m {
    /* JADX WARN: Removed duplicated region for block: B:13:0x0034 A[LOOP:0: B:11:0x002e->B:13:0x0034, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long a(java.io.File r8) {
        /*
            java.lang.String r0 = " "
            r1 = 0
            r3 = 0
            java.util.zip.CheckedInputStream r4 = new java.util.zip.CheckedInputStream     // Catch: java.io.IOException -> L1b java.io.FileNotFoundException -> L1d
            java.io.FileInputStream r5 = new java.io.FileInputStream     // Catch: java.io.IOException -> L1b java.io.FileNotFoundException -> L1d
            r5.<init>(r8)     // Catch: java.io.IOException -> L1b java.io.FileNotFoundException -> L1d
            java.util.zip.CRC32 r6 = new java.util.zip.CRC32     // Catch: java.io.IOException -> L1b java.io.FileNotFoundException -> L1d
            r6.<init>()     // Catch: java.io.IOException -> L1b java.io.FileNotFoundException -> L1d
            r4.<init>(r5, r6)     // Catch: java.io.IOException -> L1b java.io.FileNotFoundException -> L1d
            long r5 = r8.length()     // Catch: java.io.FileNotFoundException -> L19 java.io.IOException -> L1b
            goto L2a
        L19:
            r3 = r4
            goto L1d
        L1b:
            r8 = move-exception
            goto L5f
        L1d:
            java.io.PrintStream r4 = java.lang.System.err     // Catch: java.io.IOException -> L1b
            java.lang.String r5 = "File not found."
            r4.println(r5)     // Catch: java.io.IOException -> L1b
            r4 = 1
            java.lang.System.exit(r4)     // Catch: java.io.IOException -> L1b
            r5 = r1
            r4 = r3
        L2a:
            r3 = 128(0x80, float:1.794E-43)
            byte[] r3 = new byte[r3]     // Catch: java.io.IOException -> L1b
        L2e:
            int r7 = r4.read(r3)     // Catch: java.io.IOException -> L1b
            if (r7 < 0) goto L35
            goto L2e
        L35:
            java.util.zip.Checksum r3 = r4.getChecksum()     // Catch: java.io.IOException -> L1b
            long r1 = r3.getValue()     // Catch: java.io.IOException -> L1b
            java.io.PrintStream r3 = java.lang.System.out     // Catch: java.io.IOException -> L1b
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L1b
            r4.<init>()     // Catch: java.io.IOException -> L1b
            r4.append(r1)     // Catch: java.io.IOException -> L1b
            r4.append(r0)     // Catch: java.io.IOException -> L1b
            r4.append(r5)     // Catch: java.io.IOException -> L1b
            r4.append(r0)     // Catch: java.io.IOException -> L1b
            java.lang.String r8 = r8.getName()     // Catch: java.io.IOException -> L1b
            r4.append(r8)     // Catch: java.io.IOException -> L1b
            java.lang.String r8 = r4.toString()     // Catch: java.io.IOException -> L1b
            r3.println(r8)     // Catch: java.io.IOException -> L1b
            goto L62
        L5f:
            r8.printStackTrace()
        L62:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.Util.m.a(java.io.File):long");
    }
}
