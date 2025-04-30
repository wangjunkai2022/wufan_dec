package cn.com.chinatelecom.account.a;

import android.content.Context;
import java.io.File;
/* loaded from: classes2.dex */
public class b {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:69:0x005c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0052 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(android.content.Context r5) {
        /*
            java.io.File r5 = c(r5)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            if (r5 == 0) goto L93
            boolean r1 = r5.exists()
            if (r1 != 0) goto L13
            goto L93
        L13:
            r1 = 0
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L48
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L48
            java.io.InputStreamReader r5 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L45
            r5.<init>(r2)     // Catch: java.lang.Throwable -> L45
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L40
            r3.<init>(r5)     // Catch: java.lang.Throwable -> L40
        L23:
            java.lang.String r1 = r3.readLine()     // Catch: java.lang.Throwable -> L3e
            if (r1 == 0) goto L2d
            r0.append(r1)     // Catch: java.lang.Throwable -> L3e
            goto L23
        L2d:
            r3.close()     // Catch: java.lang.Exception -> L31
            goto L35
        L31:
            r1 = move-exception
            r1.printStackTrace()
        L35:
            r5.close()     // Catch: java.lang.Exception -> L39
            goto L66
        L39:
            r5 = move-exception
            r5.printStackTrace()
            goto L66
        L3e:
            r1 = move-exception
            goto L4d
        L40:
            r3 = move-exception
            r4 = r3
            r3 = r1
            r1 = r4
            goto L4d
        L45:
            r5 = move-exception
            r3 = r1
            goto L4b
        L48:
            r5 = move-exception
            r2 = r1
            r3 = r2
        L4b:
            r1 = r5
            r5 = r3
        L4d:
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L73
            if (r3 == 0) goto L5a
            r3.close()     // Catch: java.lang.Exception -> L56
            goto L5a
        L56:
            r1 = move-exception
            r1.printStackTrace()
        L5a:
            if (r5 == 0) goto L64
            r5.close()     // Catch: java.lang.Exception -> L60
            goto L64
        L60:
            r5 = move-exception
            r5.printStackTrace()
        L64:
            if (r2 == 0) goto L6e
        L66:
            r2.close()     // Catch: java.lang.Exception -> L6a
            goto L6e
        L6a:
            r5 = move-exception
            r5.printStackTrace()
        L6e:
            java.lang.String r5 = r0.toString()
            return r5
        L73:
            r0 = move-exception
            if (r3 == 0) goto L7e
            r3.close()     // Catch: java.lang.Exception -> L7a
            goto L7e
        L7a:
            r1 = move-exception
            r1.printStackTrace()
        L7e:
            if (r5 == 0) goto L88
            r5.close()     // Catch: java.lang.Exception -> L84
            goto L88
        L84:
            r5 = move-exception
            r5.printStackTrace()
        L88:
            if (r2 == 0) goto L92
            r2.close()     // Catch: java.lang.Exception -> L8e
            goto L92
        L8e:
            r5 = move-exception
            r5.printStackTrace()
        L92:
            throw r0
        L93:
            java.lang.String r5 = ""
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.com.chinatelecom.account.a.b.a(android.content.Context):java.lang.String");
    }

    public static void a(Context context, String str) {
        File c4 = c(context);
        if (c4 == null || !c4.exists()) {
            a(b(context), str);
        } else {
            a(c4, str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0058 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(java.io.File r3, java.lang.String r4) {
        /*
            if (r3 == 0) goto L6b
            boolean r0 = r3.exists()
            if (r0 == 0) goto L6b
            r0 = 0
            java.io.FileWriter r1 = new java.io.FileWriter     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L39
            r2 = 0
            r1.<init>(r3, r2)     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L39
            java.io.BufferedWriter r3 = new java.io.BufferedWriter     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            boolean r0 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2e
            if (r0 == 0) goto L1c
            java.lang.String r4 = ""
        L1c:
            r3.write(r4)     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2e
            r3.flush()     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2e
            r3.close()     // Catch: java.lang.Exception -> L26
            goto L4b
        L26:
            r3 = move-exception
            r3.printStackTrace()
            goto L4b
        L2b:
            r4 = move-exception
            r0 = r3
            goto L55
        L2e:
            r4 = move-exception
            r0 = r3
            goto L3c
        L31:
            r3 = move-exception
            goto L56
        L33:
            r3 = move-exception
            r4 = r3
            goto L3c
        L36:
            r3 = move-exception
            r1 = r0
            goto L56
        L39:
            r3 = move-exception
            r4 = r3
            r1 = r0
        L3c:
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L54
            if (r0 == 0) goto L49
            r0.close()     // Catch: java.lang.Exception -> L45
            goto L49
        L45:
            r3 = move-exception
            r3.printStackTrace()
        L49:
            if (r1 == 0) goto L6b
        L4b:
            r1.close()     // Catch: java.lang.Exception -> L4f
            goto L6b
        L4f:
            r3 = move-exception
            r3.printStackTrace()
            goto L6b
        L54:
            r4 = move-exception
        L55:
            r3 = r4
        L56:
            if (r0 == 0) goto L60
            r0.close()     // Catch: java.lang.Exception -> L5c
            goto L60
        L5c:
            r4 = move-exception
            r4.printStackTrace()
        L60:
            if (r1 == 0) goto L6a
            r1.close()     // Catch: java.lang.Exception -> L66
            goto L6a
        L66:
            r4 = move-exception
            r4.printStackTrace()
        L6a:
            throw r3
        L6b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.com.chinatelecom.account.a.b.a(java.io.File, java.lang.String):void");
    }

    private static File b(Context context) {
        if (context != null) {
            try {
                File file = new File(context.getFilesDir() + "/eAccount/Log/");
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(file, "ipa_ol.ds");
                if (file2.exists()) {
                    file2.delete();
                }
                file2.createNewFile();
                return file2;
            } catch (Exception e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    private static File c(Context context) {
        if (context != null) {
            try {
                File file = new File(context.getFilesDir() + "/eAccount/Log/");
                if (file.exists()) {
                    File file2 = new File(file, "ipa_ol.ds");
                    if (file2.exists()) {
                        return file2;
                    }
                    return null;
                }
                return null;
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        return null;
    }
}
