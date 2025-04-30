package com.efs.sdk.base.core.util;

import android.os.Process;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.List;
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static String f11405a = null;

    /* renamed from: b  reason: collision with root package name */
    private static List<Integer> f11406b = null;

    /* renamed from: c  reason: collision with root package name */
    private static long f11407c = -1;

    public static int a() {
        return Process.myPid();
    }

    public static String b() {
        String str = f11405a;
        if (TextUtils.isEmpty(str)) {
            String a4 = a(Process.myPid());
            f11405a = a4;
            return a4;
        }
        return str;
    }

    public static String a(int i2) {
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/" + i2 + "/cmdline")));
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    int read = bufferedReader2.read();
                    if (read > 0) {
                        sb.append((char) read);
                    } else {
                        sb.trimToSize();
                        String sb2 = sb.toString();
                        try {
                            bufferedReader2.close();
                            return sb2;
                        } catch (Throwable th) {
                            th.printStackTrace();
                            return sb2;
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = bufferedReader2;
                try {
                    d.b("efs.base", "get process name error", th);
                    return "";
                } finally {
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th3) {
                            th3.printStackTrace();
                        }
                    }
                }
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002b, code lost:
        r1 = com.efs.sdk.base.core.util.e.f11406b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002d, code lost:
        if (r1 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002f, code lost:
        r1.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0033, code lost:
        com.efs.sdk.base.core.util.e.f11406b = new java.util.ArrayList();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003a, code lost:
        r7 = (android.app.ActivityManager) r7.getSystemService(com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField.TT_ACTIVITY);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0042, code lost:
        if (r7 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0044, code lost:
        r7 = r7.getRunningAppProcesses().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0050, code lost:
        if (r7.hasNext() == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0052, code lost:
        com.efs.sdk.base.core.util.e.f11406b.add(java.lang.Integer.valueOf(r7.next().pid));
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0064, code lost:
        com.efs.sdk.base.core.util.e.f11407c = java.lang.System.currentTimeMillis();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(android.content.Context r7, java.lang.String r8) {
        /*
            r0 = 1
            int r8 = java.lang.Integer.parseInt(r8)     // Catch: java.lang.Throwable -> L75
            java.util.List<java.lang.Integer> r1 = com.efs.sdk.base.core.util.e.f11406b     // Catch: java.lang.Throwable -> L75
            r2 = 0
            if (r1 == 0) goto L29
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L75
            if (r1 == 0) goto L11
            goto L29
        L11:
            long r3 = com.efs.sdk.base.core.util.e.f11407c     // Catch: java.lang.Throwable -> L75
            r5 = 0
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 <= 0) goto L29
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L75
            long r5 = com.efs.sdk.base.core.util.e.f11407c     // Catch: java.lang.Throwable -> L75
            long r3 = r3 - r5
            r5 = 600000(0x927c0, double:2.964394E-318)
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 <= 0) goto L28
            goto L29
        L28:
            r2 = 1
        L29:
            if (r2 != 0) goto L6a
            java.util.List<java.lang.Integer> r1 = com.efs.sdk.base.core.util.e.f11406b     // Catch: java.lang.Throwable -> L75
            if (r1 == 0) goto L33
            r1.clear()     // Catch: java.lang.Throwable -> L75
            goto L3a
        L33:
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L75
            r1.<init>()     // Catch: java.lang.Throwable -> L75
            com.efs.sdk.base.core.util.e.f11406b = r1     // Catch: java.lang.Throwable -> L75
        L3a:
            java.lang.String r1 = "activity"
            java.lang.Object r7 = r7.getSystemService(r1)     // Catch: java.lang.Throwable -> L75
            android.app.ActivityManager r7 = (android.app.ActivityManager) r7     // Catch: java.lang.Throwable -> L75
            if (r7 == 0) goto L64
            java.util.List r7 = r7.getRunningAppProcesses()     // Catch: java.lang.Throwable -> L75
            java.util.Iterator r7 = r7.iterator()     // Catch: java.lang.Throwable -> L75
        L4c:
            boolean r1 = r7.hasNext()     // Catch: java.lang.Throwable -> L75
            if (r1 == 0) goto L64
            java.lang.Object r1 = r7.next()     // Catch: java.lang.Throwable -> L75
            android.app.ActivityManager$RunningAppProcessInfo r1 = (android.app.ActivityManager.RunningAppProcessInfo) r1     // Catch: java.lang.Throwable -> L75
            java.util.List<java.lang.Integer> r2 = com.efs.sdk.base.core.util.e.f11406b     // Catch: java.lang.Throwable -> L75
            int r1 = r1.pid     // Catch: java.lang.Throwable -> L75
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L75
            r2.add(r1)     // Catch: java.lang.Throwable -> L75
            goto L4c
        L64:
            long r1 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L75
            com.efs.sdk.base.core.util.e.f11407c = r1     // Catch: java.lang.Throwable -> L75
        L6a:
            java.util.List<java.lang.Integer> r7 = com.efs.sdk.base.core.util.e.f11406b     // Catch: java.lang.Throwable -> L75
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> L75
            boolean r7 = r7.contains(r8)     // Catch: java.lang.Throwable -> L75
            return r7
        L75:
            r7 = move-exception
            java.lang.String r8 = "efs.base"
            java.lang.String r1 = "Process exist judge error"
            com.efs.sdk.base.core.util.d.b(r8, r1, r7)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.efs.sdk.base.core.util.e.a(android.content.Context, java.lang.String):boolean");
    }
}
