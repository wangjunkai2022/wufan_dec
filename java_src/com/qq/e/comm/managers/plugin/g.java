package com.qq.e.comm.managers.plugin;

import android.text.TextUtils;
import com.qq.e.comm.managers.plugin.c;
import com.qq.e.comm.util.GDTLogger;
import java.io.File;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final File f56465a;

    /* renamed from: b  reason: collision with root package name */
    private final File f56466b;

    /* renamed from: c  reason: collision with root package name */
    private String f56467c;

    /* renamed from: d  reason: collision with root package name */
    private int f56468d;

    /* renamed from: e  reason: collision with root package name */
    private String f56469e;

    public g(File file, File file2) {
        this.f56465a = file;
        this.f56466b = file2;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0040 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String a(java.io.File r5) throws java.io.IOException {
        /*
            r4 = this;
            java.lang.String r0 = "Exception while close bufferreader"
            r1 = 0
            if (r5 == 0) goto L48
            boolean r2 = r5.exists()
            if (r2 != 0) goto Lc
            goto L48
        Lc:
            java.io.FileReader r2 = new java.io.FileReader     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L35
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L35
            java.io.BufferedReader r5 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L35
            r5.<init>(r2)     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L35
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L31 java.lang.Throwable -> L3a
            r1.<init>()     // Catch: java.io.IOException -> L31 java.lang.Throwable -> L3a
        L1b:
            java.lang.String r2 = r5.readLine()     // Catch: java.io.IOException -> L31 java.lang.Throwable -> L3a
            if (r2 == 0) goto L25
            r1.append(r2)     // Catch: java.io.IOException -> L31 java.lang.Throwable -> L3a
            goto L1b
        L25:
            java.lang.String r1 = r1.toString()     // Catch: java.io.IOException -> L31 java.lang.Throwable -> L3a
            r5.close()     // Catch: java.lang.Exception -> L2d
            goto L30
        L2d:
            com.qq.e.comm.util.GDTLogger.d(r0)
        L30:
            return r1
        L31:
            r1 = move-exception
            goto L39
        L33:
            r5 = move-exception
            goto L3e
        L35:
            r5 = move-exception
            r3 = r1
            r1 = r5
            r5 = r3
        L39:
            throw r1     // Catch: java.lang.Throwable -> L3a
        L3a:
            r1 = move-exception
            r3 = r1
            r1 = r5
            r5 = r3
        L3e:
            if (r1 == 0) goto L47
            r1.close()     // Catch: java.lang.Exception -> L44
            goto L47
        L44:
            com.qq.e.comm.util.GDTLogger.d(r0)
        L47:
            throw r5
        L48:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qq.e.comm.managers.plugin.g.a(java.io.File):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        int i2;
        try {
            if (this.f56466b.exists() && this.f56465a.exists()) {
                String a4 = a(this.f56466b);
                this.f56469e = a4;
                if (TextUtils.isEmpty(a4)) {
                    return false;
                }
                String[] split = this.f56469e.split("#####");
                if (split.length == 2) {
                    String str = split[1];
                    try {
                        i2 = Integer.parseInt(split[0]);
                    } catch (Throwable unused) {
                        i2 = 0;
                    }
                    if (c.b.f56463a.a(str, this.f56465a)) {
                        this.f56467c = str;
                        this.f56468d = i2;
                        return true;
                    }
                }
            }
            return false;
        } catch (Throwable unused2) {
            GDTLogger.d("Exception while checking plugin");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(File file, File file2) {
        return (file.equals(this.f56465a) || h.a(this.f56465a, file)) && (file2.equals(this.f56466b) || h.a(this.f56466b, file2));
    }

    public String d() {
        return this.f56469e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String e() {
        return this.f56467c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        return this.f56468d;
    }
}
