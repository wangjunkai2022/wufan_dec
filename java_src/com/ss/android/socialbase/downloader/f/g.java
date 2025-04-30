package com.ss.android.socialbase.downloader.f;

import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MultiSegmentWriter.java */
/* loaded from: classes4.dex */
public class g {

    /* renamed from: c  reason: collision with root package name */
    private final DownloadInfo f58077c;

    /* renamed from: e  reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.g.a f58079e;

    /* renamed from: f  reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.h.f f58080f;

    /* renamed from: g  reason: collision with root package name */
    private final c f58081g;

    /* renamed from: h  reason: collision with root package name */
    private BaseException f58082h;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f58087m;

    /* renamed from: n  reason: collision with root package name */
    private final long f58088n;

    /* renamed from: o  reason: collision with root package name */
    private final long f58089o;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f58090p;

    /* renamed from: q  reason: collision with root package name */
    private long f58091q;

    /* renamed from: a  reason: collision with root package name */
    private final List<l> f58075a = new LinkedList();

    /* renamed from: b  reason: collision with root package name */
    private final List<l> f58076b = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    private volatile boolean f58083i = false;

    /* renamed from: j  reason: collision with root package name */
    private volatile boolean f58084j = false;

    /* renamed from: k  reason: collision with root package name */
    private volatile boolean f58085k = false;

    /* renamed from: r  reason: collision with root package name */
    private volatile long f58092r = 0;

    /* renamed from: s  reason: collision with root package name */
    private volatile long f58093s = 0;

    /* renamed from: d  reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.downloader.j f58078d = com.ss.android.socialbase.downloader.downloader.c.x();

    /* renamed from: l  reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.a.a f58086l = com.ss.android.socialbase.downloader.a.a.a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(DownloadInfo downloadInfo, com.ss.android.socialbase.downloader.h.f fVar, c cVar) {
        this.f58077c = downloadInfo;
        this.f58080f = fVar;
        this.f58081g = cVar;
        com.ss.android.socialbase.downloader.g.a a4 = com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId());
        this.f58079e = a4;
        boolean z3 = a4.a("sync_strategy", 0) == 1;
        this.f58087m = z3;
        if (z3) {
            this.f58088n = Math.max(a4.a("sync_interval_ms_fg", 5000), 500L);
            this.f58089o = Math.max(a4.a("sync_interval_ms_bg", 1000), 500L);
        } else {
            this.f58088n = 0L;
            this.f58089o = 0L;
        }
        this.f58090p = a4.b("monitor_rw") == 1;
    }

    private boolean a(long j4, long j5) {
        return j4 > 65536 && j5 > 500;
    }

    private void b(List<l> list) throws IOException {
        for (l lVar : list) {
            lVar.c();
        }
    }

    private void c() throws IOException {
        boolean z3 = this.f58090p;
        long nanoTime = z3 ? System.nanoTime() : 0L;
        DownloadInfo downloadInfo = this.f58077c;
        com.ss.android.socialbase.downloader.downloader.j jVar = this.f58078d;
        List<l> list = this.f58075a;
        List<l> list2 = this.f58076b;
        Map<Long, i> l4 = jVar.l(downloadInfo.getId());
        if (l4 == null) {
            l4 = new HashMap<>(4);
        }
        synchronized (this) {
            a(list);
            b(list);
            a(list, l4);
            if (list2.size() > 0) {
                c(list2);
                list.removeAll(list2);
                list2.clear();
            }
        }
        if (1 != 0) {
            downloadInfo.updateRealDownloadTime(true);
            jVar.a(downloadInfo.getId(), l4);
            jVar.a(downloadInfo);
            this.f58092r = downloadInfo.getCurBytes();
        }
        if (z3) {
            this.f58091q += System.nanoTime() - nanoTime;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(l lVar) {
        synchronized (this) {
            this.f58075a.add(lVar);
        }
    }

    public void b() {
        this.f58084j = true;
        this.f58083i = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x02a4, code lost:
        r3.b(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00b8, code lost:
        if (r13 <= 0) goto L267;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00bb, code lost:
        r3.b(r13);
     */
    /* JADX WARN: Removed duplicated region for block: B:160:0x01f4 A[Catch: all -> 0x03db, TryCatch #29 {all -> 0x03db, blocks: (B:158:0x01f0, B:160:0x01f4, B:163:0x01fa, B:165:0x0200, B:166:0x0203, B:167:0x0219, B:204:0x029e, B:205:0x02a0, B:244:0x0328, B:246:0x0332, B:248:0x0336, B:285:0x03b9, B:287:0x03bf, B:288:0x03c2, B:289:0x03da), top: B:363:0x0027, inners: #27 }] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0200 A[Catch: all -> 0x03db, TryCatch #29 {all -> 0x03db, blocks: (B:158:0x01f0, B:160:0x01f4, B:163:0x01fa, B:165:0x0200, B:166:0x0203, B:167:0x0219, B:204:0x029e, B:205:0x02a0, B:244:0x0328, B:246:0x0332, B:248:0x0336, B:285:0x03b9, B:287:0x03bf, B:288:0x03c2, B:289:0x03da), top: B:363:0x0027, inners: #27 }] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0332 A[Catch: all -> 0x03db, TryCatch #29 {all -> 0x03db, blocks: (B:158:0x01f0, B:160:0x01f4, B:163:0x01fa, B:165:0x0200, B:166:0x0203, B:167:0x0219, B:204:0x029e, B:205:0x02a0, B:244:0x0328, B:246:0x0332, B:248:0x0336, B:285:0x03b9, B:287:0x03bf, B:288:0x03c2, B:289:0x03da), top: B:363:0x0027, inners: #27 }] */
    /* JADX WARN: Removed duplicated region for block: B:287:0x03bf A[Catch: all -> 0x03db, TryCatch #29 {all -> 0x03db, blocks: (B:158:0x01f0, B:160:0x01f4, B:163:0x01fa, B:165:0x0200, B:166:0x0203, B:167:0x0219, B:204:0x029e, B:205:0x02a0, B:244:0x0328, B:246:0x0332, B:248:0x0336, B:285:0x03b9, B:287:0x03bf, B:288:0x03c2, B:289:0x03da), top: B:363:0x0027, inners: #27 }] */
    /* JADX WARN: Removed duplicated region for block: B:300:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x022a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:341:0x02ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:343:0x0365 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:345:0x00e3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:368:0x0419 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:372:0x03f9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:376:0x0249 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:378:0x02cc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.ss.android.socialbase.downloader.f.d r31) throws com.ss.android.socialbase.downloader.exception.BaseException {
        /*
            Method dump skipped, instructions count: 1136
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.f.g.a(com.ss.android.socialbase.downloader.f.d):void");
    }

    private void c(List<l> list) {
        for (l lVar : list) {
            lVar.d();
        }
    }

    private void a(long j4, boolean z3) throws IOException {
        long j5 = j4 - this.f58093s;
        if (this.f58087m) {
            if (j5 > (this.f58086l.b() ? this.f58088n : this.f58089o)) {
                c();
                this.f58093s = j4;
                return;
            }
            return;
        }
        long curBytes = this.f58077c.getCurBytes() - this.f58092r;
        if (z3 || a(curBytes, j5)) {
            c();
            this.f58093s = j4;
        }
    }

    private void a(e eVar) {
        synchronized (this) {
            this.f58076b.add((l) eVar);
        }
    }

    private void a(List<l> list) throws IOException {
        for (l lVar : list) {
            lVar.b();
        }
    }

    private void a(List<l> list, Map<Long, i> map) {
        for (l lVar : list) {
            i e4 = lVar.e();
            i iVar = map.get(Long.valueOf(e4.c()));
            if (iVar == null) {
                map.put(Long.valueOf(e4.c()), new i(e4));
            } else {
                iVar.a(e4.d());
                iVar.c(e4.f());
            }
        }
    }

    public void a() {
        this.f58085k = true;
        this.f58083i = true;
    }
}
