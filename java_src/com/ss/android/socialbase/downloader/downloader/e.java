package com.ss.android.socialbase.downloader.downloader;

import android.os.SystemClock;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.InputStream;
import java.util.concurrent.ExecutorService;
/* compiled from: DownloadResponseHandler.java */
/* loaded from: classes4.dex */
public class e {

    /* renamed from: b  reason: collision with root package name */
    private static String f57984b = "ResponseHandler";
    private long A;
    private long B;
    private long C;
    private long D;

    /* renamed from: c  reason: collision with root package name */
    private final DownloadInfo f57986c;

    /* renamed from: d  reason: collision with root package name */
    private final String f57987d;

    /* renamed from: e  reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.model.b f57988e;

    /* renamed from: f  reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.network.i f57989f;

    /* renamed from: g  reason: collision with root package name */
    private j f57990g;

    /* renamed from: h  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.impls.k f57991h;

    /* renamed from: i  reason: collision with root package name */
    private t f57992i;

    /* renamed from: j  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.model.e f57993j;

    /* renamed from: k  reason: collision with root package name */
    private BaseException f57994k;

    /* renamed from: l  reason: collision with root package name */
    private volatile boolean f57995l;

    /* renamed from: m  reason: collision with root package name */
    private volatile boolean f57996m;

    /* renamed from: n  reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.h.f f57997n;

    /* renamed from: o  reason: collision with root package name */
    private long f57998o;

    /* renamed from: p  reason: collision with root package name */
    private long f57999p;

    /* renamed from: q  reason: collision with root package name */
    private volatile long f58000q;

    /* renamed from: r  reason: collision with root package name */
    private volatile long f58001r;

    /* renamed from: s  reason: collision with root package name */
    private final boolean f58002s;

    /* renamed from: t  reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.g.a f58003t;

    /* renamed from: u  reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.a.a f58004u;

    /* renamed from: v  reason: collision with root package name */
    private final boolean f58005v;

    /* renamed from: w  reason: collision with root package name */
    private final long f58006w;

    /* renamed from: x  reason: collision with root package name */
    private final long f58007x;

    /* renamed from: y  reason: collision with root package name */
    private final boolean f58008y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f58009z;

    /* renamed from: a  reason: collision with root package name */
    boolean f57985a = false;
    private volatile long E = 0;
    private volatile long F = 0;

    public e(DownloadInfo downloadInfo, String str, com.ss.android.socialbase.downloader.network.i iVar, com.ss.android.socialbase.downloader.model.b bVar, com.ss.android.socialbase.downloader.h.f fVar) {
        this.f57986c = downloadInfo;
        this.f57987d = str;
        j x3 = c.x();
        this.f57990g = x3;
        if (x3 instanceof com.ss.android.socialbase.downloader.impls.d) {
            com.ss.android.socialbase.downloader.impls.d dVar = (com.ss.android.socialbase.downloader.impls.d) x3;
            this.f57991h = dVar.a();
            this.f57992i = dVar.f();
        }
        this.f57989f = iVar;
        this.f57988e = bVar;
        this.f57997n = fVar;
        long n4 = bVar.n();
        this.f57998o = n4;
        this.f57999p = n4;
        if (bVar.d()) {
            this.f58001r = bVar.q();
        } else {
            this.f58001r = bVar.c(false);
        }
        this.f58000q = bVar.p();
        this.f58004u = com.ss.android.socialbase.downloader.a.a.a();
        com.ss.android.socialbase.downloader.g.a a4 = com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId());
        this.f58003t = a4;
        boolean z3 = a4.a("sync_strategy", 0) == 1;
        this.f58005v = z3;
        if (z3) {
            this.f58006w = Math.max(a4.a("sync_interval_ms_fg", 5000), 500L);
            this.f58007x = Math.max(a4.a("sync_interval_ms_bg", 1000), 500L);
        } else {
            this.f58006w = 0L;
            this.f58007x = 0L;
        }
        this.f58008y = a4.b("monitor_rw") == 1;
        this.f58002s = com.ss.android.socialbase.downloader.i.a.a(65536);
    }

    private boolean b(long j4, long j5) {
        return j4 > 65536 && j5 > 500;
    }

    private boolean f() {
        return this.f57995l || this.f57996m;
    }

    private void g() {
        ExecutorService l4;
        if (this.f57989f == null || (l4 = c.l()) == null) {
            return;
        }
        l4.execute(new Runnable() { // from class: com.ss.android.socialbase.downloader.downloader.e.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    e.this.f57989f.d();
                } catch (Throwable unused) {
                }
            }
        });
    }

    private void h() {
        boolean z3;
        long nanoTime = this.f58008y ? System.nanoTime() : 0L;
        try {
            this.f57993j.a();
            z3 = true;
        } catch (Exception unused) {
            z3 = false;
        }
        if (z3) {
            this.f57986c.updateRealDownloadTime(true);
            boolean z4 = this.f57986c.getChunkCount() > 1;
            m a4 = com.ss.android.socialbase.downloader.impls.l.a(com.ss.android.socialbase.downloader.i.f.b());
            if (z4) {
                a(this.f57992i);
                if (a4 != null) {
                    a4.c(this.f57986c);
                } else {
                    this.f57992i.a(this.f57986c.getId(), this.f57986c.getCurBytes());
                }
            } else if (a4 != null) {
                a4.c(this.f57986c);
            } else {
                this.f57992i.a(this.f57988e.k(), this.f57998o);
            }
            this.E = this.f57998o;
        }
        if (this.f58008y) {
            this.C += System.nanoTime() - nanoTime;
        }
    }

    public void b() {
        if (this.f57995l) {
            return;
        }
        this.f57995l = true;
        g();
    }

    public void c() {
        if (this.f57996m) {
            return;
        }
        synchronized (this.f57997n) {
            this.f57996m = true;
        }
        g();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:176:0x02e1 A[Catch: all -> 0x04db, TRY_ENTER, TryCatch #26 {all -> 0x04db, blocks: (B:176:0x02e1, B:177:0x02e8, B:206:0x0361, B:208:0x0367, B:209:0x036a, B:250:0x0456, B:251:0x0458, B:255:0x045f, B:257:0x047f, B:285:0x04cf, B:287:0x04d5, B:288:0x04d8, B:289:0x04da), top: B:333:0x002b, inners: #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0304  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0361 A[Catch: all -> 0x04db, TRY_ENTER, TryCatch #26 {all -> 0x04db, blocks: (B:176:0x02e1, B:177:0x02e8, B:206:0x0361, B:208:0x0367, B:209:0x036a, B:250:0x0456, B:251:0x0458, B:255:0x045f, B:257:0x047f, B:285:0x04cf, B:287:0x04d5, B:288:0x04d8, B:289:0x04da), top: B:333:0x002b, inners: #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:235:0x03e8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:236:0x03e9  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x047f A[Catch: all -> 0x04db, TRY_LEAVE, TryCatch #26 {all -> 0x04db, blocks: (B:176:0x02e1, B:177:0x02e8, B:206:0x0361, B:208:0x0367, B:209:0x036a, B:250:0x0456, B:251:0x0458, B:255:0x045f, B:257:0x047f, B:285:0x04cf, B:287:0x04d5, B:288:0x04d8, B:289:0x04da), top: B:333:0x002b, inners: #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:287:0x04d5 A[Catch: all -> 0x04db, TryCatch #26 {all -> 0x04db, blocks: (B:176:0x02e1, B:177:0x02e8, B:206:0x0361, B:208:0x0367, B:209:0x036a, B:250:0x0456, B:251:0x0458, B:255:0x045f, B:257:0x047f, B:285:0x04cf, B:287:0x04d5, B:288:0x04d8, B:289:0x04da), top: B:333:0x002b, inners: #28 }] */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v23 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v34 */
    /* JADX WARN: Type inference failed for: r6v35 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5, types: [int] */
    /* JADX WARN: Type inference failed for: r6v6, types: [int] */
    /* JADX WARN: Type inference failed for: r6v7, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void d() throws com.ss.android.socialbase.downloader.exception.BaseException {
        /*
            Method dump skipped, instructions count: 1380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.downloader.e.d():void");
    }

    public long e() {
        return this.E;
    }

    public long a() {
        return this.f57998o;
    }

    public void a(long j4, long j5, long j6) {
        this.f57998o = j4;
        this.f57999p = j4;
        this.f58000q = j5;
        this.f58001r = j6;
    }

    public void a(long j4, long j5) {
        this.f58000q = j4;
        this.f58001r = j5;
    }

    private com.ss.android.socialbase.downloader.e.b a(InputStream inputStream) {
        int H = c.H();
        if (this.f58003t.a("rw_concurrent", 0) == 1 && this.f57986c.getChunkCount() == 1 && this.f57986c.getTotalBytes() > 20971520) {
            try {
                com.ss.android.socialbase.downloader.e.a aVar = new com.ss.android.socialbase.downloader.e.a(inputStream, H, this.f58003t.a("rw_concurrent_max_buffer_count", 4));
                this.f58009z = true;
                return aVar;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        com.ss.android.socialbase.downloader.e.c cVar = new com.ss.android.socialbase.downloader.e.c(inputStream, H);
        this.f58009z = false;
        return cVar;
    }

    private void a(boolean z3) {
        long uptimeMillis = SystemClock.uptimeMillis();
        long j4 = uptimeMillis - this.F;
        if (this.f58005v) {
            if (j4 > (this.f58004u.b() ? this.f58006w : this.f58007x)) {
                h();
                this.F = uptimeMillis;
                return;
            }
            return;
        }
        long j5 = this.f57998o - this.E;
        if (z3 || b(j5, j4)) {
            h();
            this.F = uptimeMillis;
        }
    }

    private void a(j jVar) {
        com.ss.android.socialbase.downloader.model.b bVar;
        com.ss.android.socialbase.downloader.model.b bVar2;
        if (jVar == null) {
            return;
        }
        m mVar = null;
        boolean z3 = jVar instanceof com.ss.android.socialbase.downloader.b.e;
        if (z3 && (mVar = com.ss.android.socialbase.downloader.impls.l.a(com.ss.android.socialbase.downloader.i.f.b())) == null) {
            return;
        }
        m mVar2 = mVar;
        if (this.f57988e.d()) {
            bVar = this.f57988e.e();
        } else {
            bVar = this.f57988e;
        }
        com.ss.android.socialbase.downloader.model.b bVar3 = bVar;
        if (bVar3 != null) {
            bVar3.b(this.f57998o);
            if (z3 && mVar2 != null) {
                mVar2.a(bVar3.k(), bVar3.s(), bVar3.b(), this.f57998o);
                bVar2 = bVar3;
            } else {
                bVar2 = bVar3;
                jVar.a(bVar3.k(), bVar3.s(), bVar3.b(), this.f57998o);
            }
            if (bVar2.h()) {
                boolean z4 = false;
                if (bVar2.i()) {
                    long j4 = bVar2.j();
                    if (j4 > this.f57998o) {
                        if (z3 && mVar2 != null) {
                            mVar2.a(bVar2.k(), bVar2.b(), j4);
                        } else {
                            jVar.a(bVar2.k(), bVar2.b(), j4);
                        }
                        z4 = true;
                    }
                }
                if (z4) {
                    return;
                }
                if (z3 && mVar2 != null) {
                    mVar2.a(bVar2.k(), bVar2.b(), this.f57998o);
                } else {
                    jVar.a(bVar2.k(), bVar2.b(), this.f57998o);
                }
            }
        } else if (this.f57988e.d()) {
            if (z3 && mVar2 != null) {
                mVar2.a(this.f57988e.k(), this.f57988e.s(), this.f57998o);
            } else {
                jVar.a(this.f57988e.k(), this.f57988e.s(), this.f57998o);
            }
        }
    }
}
