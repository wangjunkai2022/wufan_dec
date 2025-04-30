package cn.com.chinatelecom.account.a;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f8471a = "a";

    /* JADX WARN: Removed duplicated region for block: B:34:0x00ae A[Catch: Exception -> 0x0098, TRY_ENTER, TryCatch #3 {Exception -> 0x0098, blocks: (B:22:0x0094, B:26:0x009c, B:34:0x00ae, B:36:0x00b3), top: B:56:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b3 A[Catch: Exception -> 0x0098, TRY_LEAVE, TryCatch #3 {Exception -> 0x0098, blocks: (B:22:0x0094, B:26:0x009c, B:34:0x00ae, B:36:0x00b3), top: B:56:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(android.content.Context r6, java.lang.String r7, java.lang.String r8) {
        /*
            java.lang.String r6 = "UTF-8"
            java.lang.String r0 = ""
            r1 = 0
            java.net.URL r2 = new java.net.URL     // Catch: java.lang.Throwable -> La4
            r2.<init>(r7)     // Catch: java.lang.Throwable -> La4
            java.net.URLConnection r7 = r2.openConnection()     // Catch: java.lang.Throwable -> La4
            java.net.HttpURLConnection r7 = (java.net.HttpURLConnection) r7     // Catch: java.lang.Throwable -> La4
            java.lang.String r2 = "accept"
        */
        //  java.lang.String r3 = "*/*"
        /*
            r7.setRequestProperty(r2, r3)     // Catch: java.lang.Throwable -> La4
            java.lang.String r2 = "POST"
            r7.setRequestMethod(r2)     // Catch: java.lang.Throwable -> La4
            r2 = 1
            r7.setDoOutput(r2)     // Catch: java.lang.Throwable -> La4
            r7.setDoInput(r2)     // Catch: java.lang.Throwable -> La4
            r2 = 5000(0x1388, float:7.006E-42)
            r7.setConnectTimeout(r2)     // Catch: java.lang.Throwable -> La4
            r7.setReadTimeout(r2)     // Catch: java.lang.Throwable -> La4
            r2 = 0
            r7.setUseCaches(r2)     // Catch: java.lang.Throwable -> La4
            java.lang.String r2 = "Accept-Charset"
            r7.addRequestProperty(r2, r6)     // Catch: java.lang.Throwable -> La4
            boolean r2 = android.text.TextUtils.isEmpty(r8)     // Catch: java.lang.Throwable -> La4
            if (r2 != 0) goto L56
            java.io.DataOutputStream r2 = new java.io.DataOutputStream     // Catch: java.lang.Throwable -> La4
            java.io.BufferedOutputStream r3 = new java.io.BufferedOutputStream     // Catch: java.lang.Throwable -> La4
            java.io.OutputStream r4 = r7.getOutputStream()     // Catch: java.lang.Throwable -> La4
            r3.<init>(r4)     // Catch: java.lang.Throwable -> La4
            r2.<init>(r3)     // Catch: java.lang.Throwable -> La4
            byte[] r6 = r8.getBytes(r6)     // Catch: java.lang.Throwable -> La4
            r2.write(r6)     // Catch: java.lang.Throwable -> La4
            r2.flush()     // Catch: java.lang.Throwable -> La4
            r2.close()     // Catch: java.lang.Throwable -> La4
            goto L59
        L56:
            r7.connect()     // Catch: java.lang.Throwable -> La4
        L59:
            int r6 = r7.getResponseCode()     // Catch: java.lang.Throwable -> La4
            r8 = 200(0xc8, float:2.8E-43)
            if (r6 != r8) goto L91
            java.io.InputStream r6 = r7.getInputStream()     // Catch: java.lang.Throwable -> La4
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8c
            r7.<init>()     // Catch: java.lang.Throwable -> L8c
            java.io.BufferedReader r8 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L8c
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L8c
            r2.<init>(r6)     // Catch: java.lang.Throwable -> L8c
            r8.<init>(r2)     // Catch: java.lang.Throwable -> L8c
        L74:
            java.lang.String r1 = r8.readLine()     // Catch: java.lang.Throwable -> L89
            if (r1 == 0) goto L83
            r7.append(r1)     // Catch: java.lang.Throwable -> L89
            java.lang.String r1 = "\n"
            r7.append(r1)     // Catch: java.lang.Throwable -> L89
            goto L74
        L83:
            java.lang.String r0 = r7.toString()     // Catch: java.lang.Throwable -> L89
            r1 = r8
            goto L92
        L89:
            r7 = move-exception
            r1 = r8
            goto La9
        L8c:
            r7 = move-exception
            r5 = r7
            r7 = r6
            r6 = r5
            goto La6
        L91:
            r6 = r1
        L92:
            if (r1 == 0) goto L9a
            r1.close()     // Catch: java.lang.Exception -> L98
            goto L9a
        L98:
            r6 = move-exception
            goto La0
        L9a:
            if (r6 == 0) goto Lb6
            r6.close()     // Catch: java.lang.Exception -> L98
            goto Lb6
        La0:
            r6.printStackTrace()
            goto Lb6
        La4:
            r6 = move-exception
            r7 = r1
        La6:
            r5 = r7
            r7 = r6
            r6 = r5
        La9:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> Lb7
            if (r1 == 0) goto Lb1
            r1.close()     // Catch: java.lang.Exception -> L98
        Lb1:
            if (r6 == 0) goto Lb6
            r6.close()     // Catch: java.lang.Exception -> L98
        Lb6:
            return r0
        Lb7:
            r7 = move-exception
            if (r1 == 0) goto Lc0
            r1.close()     // Catch: java.lang.Exception -> Lbe
            goto Lc0
        Lbe:
            r6 = move-exception
            goto Lc6
        Lc0:
            if (r6 == 0) goto Lc9
            r6.close()     // Catch: java.lang.Exception -> Lbe
            goto Lc9
        Lc6:
            r6.printStackTrace()
        Lc9:
            goto Lcb
        Lca:
            throw r7
        Lcb:
            goto Lca
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.com.chinatelecom.account.a.a.a(android.content.Context, java.lang.String, java.lang.String):java.lang.String");
    }
}
