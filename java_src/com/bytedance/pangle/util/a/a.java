package com.bytedance.pangle.util.a;
/* loaded from: classes2.dex */
public final class a {
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String[] a(java.io.File r11) {
        /*
            java.lang.String r0 = ""
            r1 = 1
            r2 = 0
            r3 = 0
            java.util.zip.ZipFile r4 = new java.util.zip.ZipFile     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La6
            r4.<init>(r11)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La6
            java.util.Enumeration r11 = r4.entries()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            r3.<init>()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            r5 = 0
            r6 = 0
            r7 = 0
        L16:
            boolean r8 = r11.hasMoreElements()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            if (r8 == 0) goto L63
            java.lang.Object r8 = r11.nextElement()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            java.util.zip.ZipEntry r8 = (java.util.zip.ZipEntry) r8     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            java.lang.String r9 = r8.getName()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            java.lang.String r10 = "META-INF/"
            boolean r9 = r9.startsWith(r10)     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            if (r9 == 0) goto L16
            java.lang.String r9 = r8.getName()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            java.lang.String r10 = "MANIFEST.MF"
            boolean r9 = r9.endsWith(r10)     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            if (r9 == 0) goto L3c
            r7 = 1
            goto L57
        L3c:
            java.lang.String r9 = r8.getName()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            java.lang.String r10 = ".SF"
            boolean r9 = r9.endsWith(r10)     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            if (r9 == 0) goto L4a
            r5 = 1
            goto L57
        L4a:
            java.lang.String r9 = r8.getName()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            java.lang.String r10 = ".RSA"
            boolean r9 = r9.endsWith(r10)     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            if (r9 == 0) goto L57
            r6 = 1
        L57:
            long r8 = r8.getCrc()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            java.lang.Long r8 = java.lang.Long.valueOf(r8)     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            r3.add(r8)     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            goto L16
        L63:
            java.util.Comparator r11 = java.util.Collections.reverseOrder()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            java.util.Collections.sort(r3, r11)     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            r11.<init>()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
        L73:
            boolean r8 = r3.hasNext()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            if (r8 == 0) goto L83
            java.lang.Object r8 = r3.next()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            java.lang.Long r8 = (java.lang.Long) r8     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            r11.append(r8)     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            goto L73
        L83:
            if (r7 == 0) goto L93
            if (r5 == 0) goto L93
            if (r6 == 0) goto L93
            java.lang.String r11 = r11.toString()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            java.lang.String r11 = com.bytedance.pangle.util.e.a(r11)     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            r3 = r0
            goto L98
        L93:
            java.lang.String r11 = "without v1 signature."
            r3 = r11
            r11 = r0
        L98:
            com.bytedance.pangle.util.a.c.a(r4)
            goto Lab
        L9c:
            r11 = move-exception
            r3 = r4
            goto La2
        L9f:
            r3 = r4
            goto La6
        La1:
            r11 = move-exception
        La2:
            com.bytedance.pangle.util.a.c.a(r3)
            throw r11
        La6:
            com.bytedance.pangle.util.a.c.a(r3)
            r11 = r0
            r3 = r11
        Lab:
            r4 = 3
            java.lang.String[] r4 = new java.lang.String[r4]
            r4[r2] = r11
            boolean r11 = android.text.TextUtils.isEmpty(r11)
            if (r11 == 0) goto Lb7
            goto Lb9
        Lb7:
            java.lang.String r0 = "V1"
        Lb9:
            r4[r1] = r0
            r11 = 2
            r4[r11] = r3
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.pangle.util.a.a.a(java.io.File):java.lang.String[]");
    }
}
