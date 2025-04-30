package com.ss.android.socialbase.downloader.h;

import com.ss.android.socialbase.downloader.downloader.j;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import com.ss.android.socialbase.downloader.network.i;
/* compiled from: DownloadChunkRunnable.java */
/* loaded from: classes4.dex */
public class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static final String f58189a = b.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.model.b f58190b;

    /* renamed from: c  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.model.b f58191c;

    /* renamed from: d  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.downloader.e f58192d;

    /* renamed from: e  reason: collision with root package name */
    private final DownloadTask f58193e;

    /* renamed from: f  reason: collision with root package name */
    private DownloadInfo f58194f;

    /* renamed from: g  reason: collision with root package name */
    private final f f58195g;

    /* renamed from: h  reason: collision with root package name */
    private i f58196h;

    /* renamed from: i  reason: collision with root package name */
    private j f58197i;

    /* renamed from: j  reason: collision with root package name */
    private volatile boolean f58198j;

    /* renamed from: k  reason: collision with root package name */
    private volatile boolean f58199k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f58200l;

    public b(com.ss.android.socialbase.downloader.model.b bVar, DownloadTask downloadTask, f fVar) {
        this.f58200l = false;
        this.f58191c = bVar;
        this.f58193e = downloadTask;
        if (downloadTask != null) {
            this.f58194f = downloadTask.getDownloadInfo();
        }
        this.f58195g = fVar;
        this.f58197i = com.ss.android.socialbase.downloader.downloader.c.x();
        this.f58191c.a(this);
    }

    private String c() {
        return this.f58194f.getConnectionUrl();
    }

    private void d() {
        i iVar = this.f58196h;
        if (iVar != null) {
            iVar.d();
            this.f58196h = null;
        }
    }

    private boolean e() {
        return this.f58198j || this.f58199k;
    }

    public void a(long j4, long j5) {
        com.ss.android.socialbase.downloader.downloader.e eVar = this.f58192d;
        if (eVar == null) {
            return;
        }
        eVar.a(j4, j5);
    }

    public void b() {
        this.f58199k = true;
        com.ss.android.socialbase.downloader.downloader.e eVar = this.f58192d;
        if (eVar != null) {
            eVar.c();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0017, code lost:
        r3.f58190b.a(false);
     */
    @Override // java.lang.Runnable
    @android.annotation.SuppressLint({"DefaultLocale"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            r3 = this;
            r0 = 10
            android.os.Process.setThreadPriority(r0)
            com.ss.android.socialbase.downloader.model.b r0 = r3.f58191c
            r3.f58190b = r0
        L9:
            r0 = 0
            com.ss.android.socialbase.downloader.model.b r1 = r3.f58190b     // Catch: java.lang.Throwable -> L5d
            r1.a(r3)     // Catch: java.lang.Throwable -> L5d
            com.ss.android.socialbase.downloader.model.b r1 = r3.f58190b     // Catch: java.lang.Throwable -> L5d
            boolean r1 = r3.a(r1)     // Catch: java.lang.Throwable -> L5d
            if (r1 != 0) goto L1d
            com.ss.android.socialbase.downloader.model.b r1 = r3.f58190b     // Catch: java.lang.Throwable -> L5d
            r1.a(r0)     // Catch: java.lang.Throwable -> L5d
            goto L4d
        L1d:
            com.ss.android.socialbase.downloader.model.b r1 = r3.f58190b     // Catch: java.lang.Throwable -> L5d
            r1.a(r0)     // Catch: java.lang.Throwable -> L5d
            boolean r1 = r3.e()     // Catch: java.lang.Throwable -> L5d
            if (r1 == 0) goto L29
            goto L4d
        L29:
            com.ss.android.socialbase.downloader.h.f r1 = r3.f58195g     // Catch: java.lang.Throwable -> L5d
            com.ss.android.socialbase.downloader.model.b r2 = r3.f58190b     // Catch: java.lang.Throwable -> L5d
            int r2 = r2.s()     // Catch: java.lang.Throwable -> L5d
            com.ss.android.socialbase.downloader.model.b r1 = r1.a(r2)     // Catch: java.lang.Throwable -> L5d
            r3.f58190b = r1     // Catch: java.lang.Throwable -> L5d
            boolean r1 = r3.e()     // Catch: java.lang.Throwable -> L5d
            if (r1 != 0) goto L4d
            com.ss.android.socialbase.downloader.model.b r1 = r3.f58190b     // Catch: java.lang.Throwable -> L5d
            if (r1 != 0) goto L42
            goto L4d
        L42:
            r1 = 50
            java.lang.Thread.sleep(r1)     // Catch: java.lang.Throwable -> L48
            goto L9
        L48:
            r1 = move-exception
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L5d
            goto L9
        L4d:
            com.ss.android.socialbase.downloader.model.b r1 = r3.f58190b
            if (r1 == 0) goto L54
            r1.a(r0)
        L54:
            r3.d()
            com.ss.android.socialbase.downloader.h.f r0 = r3.f58195g
            r0.a(r3)
            return
        L5d:
            r1 = move-exception
            com.ss.android.socialbase.downloader.model.b r2 = r3.f58190b
            if (r2 == 0) goto L65
            r2.a(r0)
        L65:
            r3.d()
            com.ss.android.socialbase.downloader.h.f r0 = r3.f58195g
            r0.a(r3)
            goto L6f
        L6e:
            throw r1
        L6f:
            goto L6e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.h.b.run():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:139:0x01dc A[Catch: all -> 0x02a1, TRY_ENTER, TryCatch #2 {all -> 0x02a1, blocks: (B:135:0x01d2, B:139:0x01dc, B:141:0x01e2, B:144:0x01eb, B:146:0x01f3, B:148:0x01f9, B:152:0x0204, B:154:0x0208, B:156:0x0210, B:158:0x0221, B:168:0x0249, B:170:0x024f, B:172:0x025c, B:176:0x0264, B:171:0x0256, B:162:0x0230, B:163:0x023c, B:178:0x026f, B:180:0x0277, B:182:0x027f, B:184:0x0287, B:186:0x028f, B:189:0x0298, B:122:0x01b4, B:126:0x01be, B:129:0x01c5), top: B:198:0x01d2, inners: #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x024f A[Catch: all -> 0x02a1, TryCatch #2 {all -> 0x02a1, blocks: (B:135:0x01d2, B:139:0x01dc, B:141:0x01e2, B:144:0x01eb, B:146:0x01f3, B:148:0x01f9, B:152:0x0204, B:154:0x0208, B:156:0x0210, B:158:0x0221, B:168:0x0249, B:170:0x024f, B:172:0x025c, B:176:0x0264, B:171:0x0256, B:162:0x0230, B:163:0x023c, B:178:0x026f, B:180:0x0277, B:182:0x027f, B:184:0x0287, B:186:0x028f, B:189:0x0298, B:122:0x01b4, B:126:0x01be, B:129:0x01c5), top: B:198:0x01d2, inners: #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0256 A[Catch: all -> 0x02a1, TryCatch #2 {all -> 0x02a1, blocks: (B:135:0x01d2, B:139:0x01dc, B:141:0x01e2, B:144:0x01eb, B:146:0x01f3, B:148:0x01f9, B:152:0x0204, B:154:0x0208, B:156:0x0210, B:158:0x0221, B:168:0x0249, B:170:0x024f, B:172:0x025c, B:176:0x0264, B:171:0x0256, B:162:0x0230, B:163:0x023c, B:178:0x026f, B:180:0x0277, B:182:0x027f, B:184:0x0287, B:186:0x028f, B:189:0x0298, B:122:0x01b4, B:126:0x01be, B:129:0x01c5), top: B:198:0x01d2, inners: #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0264 A[Catch: all -> 0x02a1, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x02a1, blocks: (B:135:0x01d2, B:139:0x01dc, B:141:0x01e2, B:144:0x01eb, B:146:0x01f3, B:148:0x01f9, B:152:0x0204, B:154:0x0208, B:156:0x0210, B:158:0x0221, B:168:0x0249, B:170:0x024f, B:172:0x025c, B:176:0x0264, B:171:0x0256, B:162:0x0230, B:163:0x023c, B:178:0x026f, B:180:0x0277, B:182:0x027f, B:184:0x0287, B:186:0x028f, B:189:0x0298, B:122:0x01b4, B:126:0x01be, B:129:0x01c5), top: B:198:0x01d2, inners: #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0260 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:227:0x01d8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:231:0x00fb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00ff A[Catch: all -> 0x01b2, BaseException -> 0x01ce, TRY_ENTER, TryCatch #4 {BaseException -> 0x01ce, blocks: (B:22:0x004f, B:26:0x0059, B:30:0x0064, B:62:0x00f5, B:66:0x00ff, B:68:0x0103, B:79:0x0131, B:51:0x00db), top: B:201:0x004f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(com.ss.android.socialbase.downloader.model.b r31) {
        /*
            Method dump skipped, instructions count: 680
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.h.b.a(com.ss.android.socialbase.downloader.model.b):boolean");
    }

    public b(com.ss.android.socialbase.downloader.model.b bVar, DownloadTask downloadTask, i iVar, f fVar) {
        this(bVar, downloadTask, fVar);
        this.f58196h = iVar;
    }

    private void a(com.ss.android.socialbase.downloader.model.b bVar, long j4) {
        com.ss.android.socialbase.downloader.model.b e4 = bVar.d() ? bVar.e() : bVar;
        if (e4 != null) {
            if (e4.h()) {
                this.f58197i.a(e4.k(), e4.b(), j4);
            }
            e4.b(j4);
            this.f58197i.a(e4.k(), e4.s(), e4.b(), j4);
        } else if (bVar.d()) {
            this.f58197i.a(bVar.k(), bVar.s(), j4);
        }
    }

    public void a() {
        this.f58198j = true;
        com.ss.android.socialbase.downloader.downloader.e eVar = this.f58192d;
        if (eVar != null) {
            eVar.b();
        }
    }
}
