package com.efs.sdk.pa.a;

import com.efs.sdk.pa.PAMsgListener;
import java.io.BufferedOutputStream;
/* loaded from: classes2.dex */
final class f implements d {

    /* renamed from: a  reason: collision with root package name */
    PAMsgListener f11522a;

    /* renamed from: b  reason: collision with root package name */
    boolean f11523b;

    /* renamed from: c  reason: collision with root package name */
    String f11524c;

    /* renamed from: d  reason: collision with root package name */
    BufferedOutputStream f11525d;

    /* JADX WARN: Removed duplicated region for block: B:40:0x008b A[Catch: Exception -> 0x00ae, TryCatch #0 {Exception -> 0x00ae, blocks: (B:6:0x0010, B:10:0x001d, B:12:0x0023, B:14:0x002d, B:17:0x0038, B:19:0x003e, B:22:0x004a, B:25:0x0054, B:38:0x0081, B:40:0x008b, B:42:0x0091, B:44:0x0097, B:46:0x009f, B:47:0x00a7, B:26:0x0059, B:28:0x005f, B:30:0x0065, B:33:0x0071, B:36:0x007b), top: B:53:0x0010 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.efs.sdk.pa.b b(java.lang.String r9, long r10, long r12) {
        /*
            java.lang.String r0 = ")"
            java.lang.String r1 = "{"
            java.lang.String r2 = "("
            r3 = 0
            if (r9 != 0) goto Lb
            return r3
        Lb:
            com.efs.sdk.pa.b r4 = new com.efs.sdk.pa.b
            r4.<init>()
            java.lang.String r5 = ":"
            int r5 = r9.indexOf(r5)     // Catch: java.lang.Exception -> Lae
            java.lang.String r6 = ""
            r7 = -1
            if (r5 == r7) goto L2c
            int r5 = r5 + 2
            int r8 = r9.length()     // Catch: java.lang.Exception -> Lae
            if (r5 >= r8) goto L2c
            int r8 = r9.length()     // Catch: java.lang.Exception -> Lae
            java.lang.String r5 = r9.substring(r5, r8)     // Catch: java.lang.Exception -> Lae
            goto L2d
        L2c:
            r5 = r6
        L2d:
            r4.f11529a = r5     // Catch: java.lang.Exception -> Lae
            boolean r5 = r9.contains(r2)     // Catch: java.lang.Exception -> Lae
            java.lang.String r8 = "}"
            if (r5 == 0) goto L59
            boolean r5 = r9.contains(r0)     // Catch: java.lang.Exception -> Lae
            if (r5 == 0) goto L59
            int r1 = r9.indexOf(r2)     // Catch: java.lang.Exception -> Lae
            int r0 = r9.indexOf(r0)     // Catch: java.lang.Exception -> Lae
            if (r1 == r7) goto L80
            if (r0 == r7) goto L80
            int r1 = r1 + 1
            int r2 = r9.length()     // Catch: java.lang.Exception -> Lae
            if (r1 >= r2) goto L80
            if (r0 <= r1) goto L80
            java.lang.String r0 = r9.substring(r1, r0)     // Catch: java.lang.Exception -> Lae
            goto L81
        L59:
            boolean r0 = r9.contains(r1)     // Catch: java.lang.Exception -> Lae
            if (r0 == 0) goto L80
            boolean r0 = r9.contains(r8)     // Catch: java.lang.Exception -> Lae
            if (r0 == 0) goto L80
            int r0 = r9.indexOf(r1)     // Catch: java.lang.Exception -> Lae
            int r1 = r9.indexOf(r8)     // Catch: java.lang.Exception -> Lae
            if (r0 == r7) goto L80
            if (r1 == r7) goto L80
            int r0 = r0 + 1
            int r2 = r9.length()     // Catch: java.lang.Exception -> Lae
            if (r0 >= r2) goto L80
            if (r1 <= r0) goto L80
            java.lang.String r0 = r9.substring(r0, r1)     // Catch: java.lang.Exception -> Lae
            goto L81
        L80:
            r0 = r6
        L81:
            r4.f11530b = r0     // Catch: java.lang.Exception -> Lae
            java.lang.String r0 = "null"
            boolean r0 = r9.contains(r0)     // Catch: java.lang.Exception -> Lae
            if (r0 != 0) goto La7
            boolean r0 = r9.contains(r8)     // Catch: java.lang.Exception -> Lae
            if (r0 == 0) goto La7
            int r0 = r9.lastIndexOf(r8)     // Catch: java.lang.Exception -> Lae
            if (r0 == r7) goto La7
            int r0 = r0 + 1
            int r1 = r9.length()     // Catch: java.lang.Exception -> Lae
            if (r0 >= r1) goto La7
            int r1 = r9.length()     // Catch: java.lang.Exception -> Lae
            java.lang.String r6 = r9.substring(r0, r1)     // Catch: java.lang.Exception -> Lae
        La7:
            r4.f11531c = r6     // Catch: java.lang.Exception -> Lae
            r4.f11532d = r10
            r4.f11533e = r12
            return r4
        Lae:
            r9 = move-exception
            r9.printStackTrace()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.efs.sdk.pa.a.f.b(java.lang.String, long, long):com.efs.sdk.pa.b");
    }

    @Override // com.efs.sdk.pa.a.d
    public final void a(String str, long j4, long j5) {
        com.efs.sdk.pa.b b4 = b(str, j4, j5);
        if (b4 != null) {
            if (this.f11523b) {
                b4.toString();
            }
            if (this.f11524c != null) {
                try {
                    BufferedOutputStream bufferedOutputStream = this.f11525d;
                    bufferedOutputStream.write((b4.toString() + "\n").getBytes());
                } catch (Exception unused) {
                }
            }
            this.f11522a.msg(b4);
        }
    }
}
