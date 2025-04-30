package com.ss.android.socialbase.downloader.f;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.h.e;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.network.c;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* compiled from: SegmentDispatcher.java */
/* loaded from: classes4.dex */
public class k implements f, c.a {
    private int A;
    private final boolean B;

    /* renamed from: a  reason: collision with root package name */
    private final DownloadInfo f58105a;

    /* renamed from: b  reason: collision with root package name */
    private final n f58106b;

    /* renamed from: c  reason: collision with root package name */
    private final b f58107c;

    /* renamed from: d  reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.h.f f58108d;

    /* renamed from: e  reason: collision with root package name */
    private final g f58109e;

    /* renamed from: j  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.model.d f58114j;

    /* renamed from: k  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.model.d f58115k;

    /* renamed from: m  reason: collision with root package name */
    private long f58117m;

    /* renamed from: p  reason: collision with root package name */
    private int f58120p;

    /* renamed from: q  reason: collision with root package name */
    private BaseException f58121q;

    /* renamed from: r  reason: collision with root package name */
    private volatile boolean f58122r;

    /* renamed from: t  reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.i.e f58124t;

    /* renamed from: u  reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.h.e f58125u;

    /* renamed from: w  reason: collision with root package name */
    private long f58127w;

    /* renamed from: x  reason: collision with root package name */
    private long f58128x;

    /* renamed from: y  reason: collision with root package name */
    private long f58129y;

    /* renamed from: z  reason: collision with root package name */
    private float f58130z;

    /* renamed from: f  reason: collision with root package name */
    private volatile boolean f58110f = false;

    /* renamed from: g  reason: collision with root package name */
    private volatile boolean f58111g = false;

    /* renamed from: h  reason: collision with root package name */
    private final List<m> f58112h = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    private final List<q> f58113i = new ArrayList();

    /* renamed from: l  reason: collision with root package name */
    private volatile boolean f58116l = true;

    /* renamed from: n  reason: collision with root package name */
    private final LinkedList<i> f58118n = new LinkedList<>();

    /* renamed from: o  reason: collision with root package name */
    private final List<i> f58119o = new ArrayList();

    /* renamed from: s  reason: collision with root package name */
    private final Object f58123s = new Object();

    /* renamed from: v  reason: collision with root package name */
    private volatile boolean f58126v = false;
    private final e.b C = new e.b() { // from class: com.ss.android.socialbase.downloader.f.k.1

        /* renamed from: b  reason: collision with root package name */
        private int f58132b;

        @Override // com.ss.android.socialbase.downloader.h.e.b
        public long a() {
            if (k.this.f58110f || k.this.f58111g) {
                return -1L;
            }
            synchronized (k.this) {
                if (k.this.f58114j == null && k.this.f58115k == null) {
                    long j4 = k.this.f58127w;
                    if (j4 <= 0) {
                        return -1L;
                    }
                    this.f58132b++;
                    m a4 = k.this.a(false, System.currentTimeMillis(), j4);
                    if (a4 != null) {
                        k.this.c(a4);
                        a4.f();
                        return ((this.f58132b / k.this.f58113i.size()) + 1) * j4;
                    }
                    return j4;
                }
                return -1L;
            }
        }
    };
    private final e.b D = new e.b() { // from class: com.ss.android.socialbase.downloader.f.k.2
        @Override // com.ss.android.socialbase.downloader.h.e.b
        public long a() {
            return k.this.r();
        }
    };

    public k(@NonNull DownloadInfo downloadInfo, @NonNull n nVar, com.ss.android.socialbase.downloader.h.f fVar) {
        this.f58105a = downloadInfo;
        this.f58106b = nVar;
        b bVar = new b(nVar.d(), nVar.e());
        this.f58107c = bVar;
        this.f58108d = fVar;
        this.f58109e = new g(downloadInfo, fVar, bVar);
        this.f58125u = new com.ss.android.socialbase.downloader.h.e();
        this.f58124t = new com.ss.android.socialbase.downloader.i.e();
        this.B = com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).b("debug") == 1;
    }

    private void h() {
        if (this.f58128x > 0) {
            this.f58129y = System.currentTimeMillis();
            this.f58125u.a(this.D, 0L);
        }
    }

    private void i() {
        List<String> backUpUrls;
        int l4 = this.f58106b.l();
        if (l4 <= 0) {
            this.f58116l = false;
            e();
            return;
        }
        com.ss.android.socialbase.downloader.network.c a4 = com.ss.android.socialbase.downloader.network.c.a();
        a4.a(this.f58105a.getUrl(), this, 2000L);
        if (l4 <= 2 || (backUpUrls = this.f58105a.getBackUpUrls()) == null) {
            return;
        }
        for (String str : backUpUrls) {
            if (!TextUtils.isEmpty(str)) {
                a4.a(str, this, 2000L);
            }
        }
    }

    private q j() {
        q qVar;
        synchronized (this) {
            int size = this.f58120p % this.f58113i.size();
            if (this.f58106b.b()) {
                this.f58120p++;
            }
            qVar = this.f58113i.get(size);
        }
        return qVar;
    }

    private void k() {
        com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "onComplete");
        this.f58107c.c();
        synchronized (this.f58123s) {
            this.f58123s.notify();
        }
    }

    private boolean l() {
        for (m mVar : this.f58112h) {
            if (!mVar.g()) {
                return false;
            }
        }
        return true;
    }

    private void m() {
        int size;
        if (this.f58117m > 0 && (size = this.f58119o.size()) > 1) {
            ArrayList<i> arrayList = null;
            int i2 = 0;
            for (int i4 = 1; i4 < size; i4++) {
                i iVar = this.f58119o.get(i2);
                i iVar2 = this.f58119o.get(i4);
                if (iVar.e() > iVar2.c() && iVar2.a() <= 0 && iVar2.f58096a == null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList(1);
                    }
                    arrayList.add(iVar2);
                    if (this.B) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("clearCovered, covered = ");
                        sb.append(iVar2);
                        sb.append(", prev = ");
                        sb.append(iVar);
                    }
                } else if (iVar2.e() > iVar.e()) {
                    i2++;
                }
            }
            if (arrayList != null) {
                for (i iVar3 : arrayList) {
                    this.f58119o.remove(iVar3);
                    for (m mVar : this.f58112h) {
                        if (mVar.f58137a == iVar3) {
                            if (this.B) {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("clearCoveredSegmentLocked: reconnect, segment = ");
                                sb2.append(iVar3);
                                sb2.append(", threadIndex = ");
                                sb2.append(mVar.f58139c);
                            }
                            mVar.a(true);
                        }
                    }
                }
            }
        }
    }

    private boolean n() {
        long j4 = this.f58117m;
        if (j4 <= 0) {
            this.f58122r = false;
            return false;
        }
        synchronized (this) {
            long a4 = o.a(this.f58119o);
            com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "isAllContentDownloaded: firstOffset = " + a4);
            if (a4 >= j4) {
                this.f58122r = true;
                return true;
            }
            this.f58122r = false;
            return false;
        }
    }

    private long o() {
        long j4 = 0;
        for (m mVar : this.f58112h) {
            j4 += mVar.b();
        }
        return j4;
    }

    private i p() {
        int i2 = 0;
        while (true) {
            i q3 = q();
            if (q3 == null) {
                return null;
            }
            m mVar = q3.f58096a;
            if (mVar == null) {
                return q3;
            }
            if (q3.j() >= 2) {
                return null;
            }
            long currentTimeMillis = System.currentTimeMillis();
            b(currentTimeMillis);
            if (currentTimeMillis - mVar.f58142f > 2000 && a(mVar, currentTimeMillis - 2000, currentTimeMillis, 500L, 1.0d)) {
                if (this.B) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("obtainSegmentWhenNoNewSegment: isDownloadSpeedPoor segment = ");
                    sb.append(q3);
                    sb.append(", owner.threadIndex = ");
                    sb.append(mVar.f58139c);
                }
                return q3;
            }
            int i4 = i2 + 1;
            if (i2 > 2) {
                if (this.B) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("obtainSegmentWhenNoNewSegment: waitCount > 2, return segment = ");
                    sb2.append(q3);
                }
                return q3;
            }
            try {
                synchronized (this) {
                    wait(500L);
                }
                i2 = i4;
            } catch (InterruptedException unused) {
                return null;
            }
        }
    }

    private i q() {
        int j4;
        i iVar = null;
        int i2 = Integer.MAX_VALUE;
        for (i iVar2 : this.f58119o) {
            if (a(iVar2) > 0 && (j4 = iVar2.j()) < i2) {
                iVar = iVar2;
                i2 = j4;
            }
        }
        return iVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long r() {
        if (this.f58110f || this.f58111g) {
            return -1L;
        }
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (this) {
            b(currentTimeMillis);
            long k4 = this.f58106b.k();
            if (k4 > 0) {
                long j4 = this.f58129y;
                if (j4 > 0 && currentTimeMillis - j4 > k4 && a(currentTimeMillis, k4)) {
                    this.f58129y = currentTimeMillis;
                    this.A++;
                }
            }
        }
        return 2000L;
    }

    private void b(List<i> list) {
        long totalBytes = this.f58105a.getTotalBytes();
        this.f58117m = totalBytes;
        if (totalBytes <= 0) {
            this.f58117m = this.f58105a.getExpectFileLength();
            com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "initSegments: getExpectFileLength = " + this.f58117m);
        }
        synchronized (this) {
            this.f58118n.clear();
            if (list != null && !list.isEmpty()) {
                for (i iVar : list) {
                    a((List<i>) this.f58118n, new i(iVar), false);
                }
                d(this.f58118n);
                c(this.f58118n);
                com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "initSegments: totalLength = " + this.f58117m);
            }
            a((List<i>) this.f58118n, new i(0L, -1L), false);
            com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "initSegments: totalLength = " + this.f58117m);
        }
    }

    private void c() throws BaseException, InterruptedException {
        BaseException baseException;
        synchronized (this.f58123s) {
            if (this.f58114j == null && this.f58115k == null) {
                this.f58123s.wait();
            }
        }
        if (this.f58114j == null && this.f58115k == null && (baseException = this.f58121q) != null) {
            throw baseException;
        }
    }

    private void d() throws BaseException {
        try {
            this.f58109e.a((d) this.f58107c);
        } catch (p unused) {
        } catch (BaseException e4) {
            com.ss.android.socialbase.downloader.c.a.e("SegmentDispatcher", "dispatchSegments: loopAndWrite e = " + e4);
            a(e4);
            throw e4;
        }
        if (this.f58111g || this.f58110f) {
            return;
        }
        try {
            synchronized (this) {
                while (!this.f58118n.isEmpty()) {
                    i poll = this.f58118n.poll();
                    if (poll != null) {
                        a(this.f58119o, poll, true);
                    }
                }
                c(this.f58119o);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (this.f58126v && this.f58121q != null) {
            com.ss.android.socialbase.downloader.c.a.e("SegmentDispatcher", "dispatchSegments: loopAndWrite  failedException = " + this.f58121q);
            throw this.f58121q;
        }
        if (this.f58105a.getCurBytes() != this.f58105a.getTotalBytes()) {
            com.ss.android.socialbase.downloader.d.a.a(this.f58105a, this.f58119o);
        }
        com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "dispatchSegments::download finished");
    }

    private void e() {
        int i2;
        if (this.f58117m <= 0 || this.f58116l) {
            i2 = 1;
        } else {
            i2 = this.f58106b.a();
            int h4 = (int) (this.f58117m / this.f58106b.h());
            if (i2 > h4) {
                i2 = h4;
            }
        }
        com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "dispatchReadThread: totalLength = " + this.f58117m + ", threadCount = " + i2);
        int i4 = i2 > 0 ? i2 : 1;
        synchronized (this) {
            do {
                if (this.f58112h.size() >= i4) {
                    break;
                }
                if (!this.f58111g && !this.f58110f) {
                    a(j());
                }
                return;
            } while (!this.f58106b.f());
        }
    }

    private void f() {
        this.f58113i.add(new q(this.f58105a.getUrl(), true));
        List<String> backUpUrls = this.f58105a.getBackUpUrls();
        if (backUpUrls != null) {
            for (String str : backUpUrls) {
                if (!TextUtils.isEmpty(str)) {
                    this.f58113i.add(new q(str, false));
                }
            }
        }
        this.f58106b.a(this.f58113i.size());
    }

    private void g() {
        n nVar = this.f58106b;
        this.f58127w = nVar.j();
        this.f58128x = nVar.k();
        this.f58130z = nVar.o();
        int i2 = this.A;
        if (i2 > 0) {
            this.f58125u.a(this.C, i2);
        }
    }

    public boolean a(List<i> list) throws BaseException, InterruptedException {
        try {
            f();
            b(list);
            e();
            g();
            i();
            long currentTimeMillis = System.currentTimeMillis();
            c();
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            this.f58105a.increaseAllConnectTime(currentTimeMillis2);
            this.f58105a.setFirstSpeedTime(currentTimeMillis2);
            if (!this.f58111g && !this.f58110f) {
                this.f58108d.a(this.f58117m);
                h();
                d();
                return true;
            }
            if (!this.f58111g && !this.f58110f) {
                com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "finally pause");
                b();
            }
            this.f58125u.b();
            return true;
        } finally {
            if (!this.f58111g && !this.f58110f) {
                com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "finally pause");
                b();
            }
            this.f58125u.b();
        }
    }

    private void c(List<i> list) {
        long b4 = o.b(list);
        com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "checkDownloadBytes: getCurBytes = " + this.f58105a.getCurBytes() + ", totalBytes = " + this.f58105a.getTotalBytes() + ", downloadedBytes = " + b4);
        if (b4 > this.f58105a.getTotalBytes() && this.f58105a.getTotalBytes() > 0) {
            b4 = this.f58105a.getTotalBytes();
        }
        if (this.f58105a.getCurBytes() == this.f58105a.getTotalBytes() || this.f58105a.getCurBytes() == b4) {
            return;
        }
        this.f58105a.setCurBytes(b4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a1, code lost:
        if ((r10.e() - r24.e()) < (r14 / 2)) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void e(com.ss.android.socialbase.downloader.f.m r23, com.ss.android.socialbase.downloader.f.i r24) throws com.ss.android.socialbase.downloader.f.j {
        /*
            Method dump skipped, instructions count: 706
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.f.k.e(com.ss.android.socialbase.downloader.f.m, com.ss.android.socialbase.downloader.f.i):void");
    }

    private void b(String str, List<q> list) {
        int a4;
        if (this.B) {
            for (q qVar : list) {
                StringBuilder sb = new StringBuilder();
                sb.append("addIpListLocked: urlRecord = ");
                sb.append(qVar);
            }
        }
        int l4 = this.f58106b.l();
        if ((l4 == 1 || l4 == 3) && (a4 = a(str)) >= 0 && a4 < this.f58113i.size()) {
            this.f58113i.addAll(a4 + 1, list);
        } else {
            this.f58113i.addAll(list);
        }
    }

    private List<q> c(String str, List<InetAddress> list) {
        boolean z3;
        if (list != null && !list.isEmpty()) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int i2 = 0;
            for (InetAddress inetAddress : list) {
                if (inetAddress != null) {
                    String hostAddress = inetAddress.getHostAddress();
                    if (!TextUtils.isEmpty(hostAddress)) {
                        if (this.B) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("onDnsResolved: ip = ");
                            sb.append(hostAddress);
                        }
                        q qVar = new q(str, hostAddress);
                        LinkedList linkedList = (LinkedList) linkedHashMap.get(qVar.f58167c);
                        if (linkedList == null) {
                            linkedList = new LinkedList();
                            linkedHashMap.put(qVar.f58167c, linkedList);
                        }
                        linkedList.add(qVar);
                        i2++;
                    }
                }
            }
            if (i2 > 0) {
                ArrayList arrayList = new ArrayList();
                do {
                    z3 = false;
                    for (Map.Entry entry : linkedHashMap.entrySet()) {
                        LinkedList linkedList2 = (LinkedList) entry.getValue();
                        if (linkedList2 != null && !linkedList2.isEmpty()) {
                            arrayList.add((q) linkedList2.pollFirst());
                            i2--;
                            z3 = true;
                        }
                    }
                    if (i2 <= 0) {
                        break;
                    }
                } while (z3);
                return arrayList;
            }
        }
        return null;
    }

    private void d(List<i> list) {
        i iVar = list.get(0);
        long c4 = iVar.c();
        if (c4 > 0) {
            i iVar2 = new i(0L, c4 - 1);
            StringBuilder sb = new StringBuilder();
            sb.append("fixSegmentsLocked: first = ");
            sb.append(iVar);
            sb.append(", add new first = ");
            sb.append(iVar2);
            a(list, iVar2, true);
        }
        Iterator<i> it2 = list.iterator();
        if (it2.hasNext()) {
            i next = it2.next();
            while (it2.hasNext()) {
                i next2 = it2.next();
                if (next.f() < next2.c() - 1) {
                    com.ss.android.socialbase.downloader.c.a.d("SegmentDispatcher", "fixSegment: segment = " + next + ", new end = " + (next2.c() - 1));
                    next.c(next2.c() - 1);
                }
                next = next2;
            }
        }
        i iVar3 = list.get(list.size() - 1);
        long totalBytes = this.f58105a.getTotalBytes();
        if (totalBytes <= 0 || (iVar3.f() != -1 && iVar3.f() < totalBytes - 1)) {
            com.ss.android.socialbase.downloader.c.a.d("SegmentDispatcher", "fixSegment: last segment = " + iVar3 + ", new end=-1");
            iVar3.c(-1L);
        }
    }

    private i b(m mVar, q qVar) {
        while (!this.f58118n.isEmpty()) {
            i poll = this.f58118n.poll();
            if (poll != null) {
                a(this.f58119o, poll, true);
                if (a(poll) > 0 || this.f58117m <= 0) {
                    return poll;
                }
            }
        }
        m();
        i c4 = c(mVar, qVar);
        if (c4 != null && a(c4) > 0) {
            a(this.f58119o, c4, true);
            return c4;
        }
        i p3 = p();
        if (p3 != null) {
            return p3;
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.f.f
    public void b(m mVar, i iVar) throws BaseException {
        synchronized (this) {
            e(mVar, iVar);
        }
    }

    @Override // com.ss.android.socialbase.downloader.network.c.a
    public void a(String str, List<InetAddress> list) {
        if (this.f58111g || this.f58110f) {
            return;
        }
        List<q> list2 = null;
        try {
            list2 = c(str, list);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        synchronized (this) {
            if (list2 != null) {
                b(str, list2);
            }
            this.f58116l = false;
            this.f58106b.a(this.f58113i.size());
            e();
        }
    }

    @Override // com.ss.android.socialbase.downloader.f.f
    public void b(m mVar) {
        com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "onReaderExit: threadIndex = " + mVar.f58139c);
        synchronized (this) {
            mVar.c(true);
            this.f58112h.remove(mVar);
            m();
            if (this.f58112h.isEmpty()) {
                k();
            } else if (n()) {
                for (m mVar2 : this.f58112h) {
                    mVar2.e();
                }
                k();
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.f.f
    public void c(m mVar, i iVar) {
        synchronized (this) {
            if (iVar.f58096a == mVar) {
                com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "unApplySegment " + iVar);
                iVar.d(mVar.d());
                iVar.f58096a = null;
                mVar.a();
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.f.f
    public e d(m mVar, i iVar) throws BaseException {
        e a4;
        synchronized (this) {
            l lVar = new l(this.f58105a, this.f58107c, iVar);
            this.f58109e.a(lVar);
            a4 = lVar.a();
        }
        return a4;
    }

    private int a(String str) {
        int size = this.f58113i.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (TextUtils.equals(this.f58113i.get(i2).f58165a, str)) {
                return i2;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(m mVar) {
        synchronized (this) {
            q d4 = d(mVar);
            if (d4 == null) {
                return false;
            }
            return mVar.a(d4);
        }
    }

    private void a(List<i> list, i iVar, boolean z3) {
        long c4 = iVar.c();
        int size = list.size();
        int i2 = 0;
        while (i2 < size && c4 >= list.get(i2).c()) {
            i2++;
        }
        list.add(i2, iVar);
        if (z3) {
            iVar.a(size);
        }
    }

    private q d(m mVar) {
        q qVar;
        Iterator<q> it2 = this.f58113i.iterator();
        q qVar2 = null;
        while (true) {
            if (!it2.hasNext()) {
                qVar = null;
                break;
            }
            qVar = it2.next();
            if (qVar != mVar.f58138b && !qVar.d()) {
                if (qVar2 == null) {
                    qVar2 = qVar;
                }
                if (qVar.a() <= 0) {
                    break;
                }
            }
        }
        if (this.f58106b.b()) {
            if (qVar != null) {
                return qVar;
            }
            if (this.f58106b.c()) {
                return null;
            }
        }
        return qVar2;
    }

    private void b(m mVar, i iVar, q qVar, com.ss.android.socialbase.downloader.model.d dVar) throws BaseException, com.ss.android.socialbase.downloader.exception.i {
        m mVar2 = iVar.f58096a;
        if (mVar2 != null && mVar2 != mVar) {
            throw new j(1, "segment already has an owner");
        }
        if (mVar.h() == iVar.e()) {
            if (!dVar.b()) {
                if (iVar.e() <= 0) {
                    com.ss.android.socialbase.downloader.c.a.e("SegmentDispatcher", "parseHttpResponse: segment.getCurrentOffsetRead = " + iVar.e());
                    if (!dVar.a()) {
                        int i2 = dVar.f58488c;
                        throw new com.ss.android.socialbase.downloader.exception.b(1004, i2, "2: response code error : " + dVar.f58488c + " segment=" + iVar);
                    }
                } else {
                    int i4 = dVar.f58488c;
                    throw new com.ss.android.socialbase.downloader.exception.b(1004, i4, "1: response code error : " + dVar.f58488c + " segment=" + iVar);
                }
            }
            if (qVar.f58168d) {
                if (this.f58114j == null) {
                    this.f58114j = dVar;
                    synchronized (this.f58123s) {
                        this.f58123s.notify();
                    }
                    com.ss.android.socialbase.downloader.h.f fVar = this.f58108d;
                    if (fVar != null) {
                        fVar.a(qVar.f58165a, dVar.f58487b, iVar.e());
                    }
                    long j4 = dVar.j();
                    if (j4 > 0) {
                        for (i iVar2 : this.f58119o) {
                            if (iVar2.f() <= 0 || iVar2.f() > j4 - 1) {
                                iVar2.c(j4 - 1);
                            }
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            a(dVar);
            if (this.f58115k == null) {
                this.f58115k = dVar;
                if (this.f58105a.getTotalBytes() <= 0) {
                    long j5 = dVar.j();
                    com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "checkSegmentHttpResponse:len=" + j5 + ",url=" + qVar.f58165a);
                    this.f58105a.setTotalBytes(j5);
                }
                synchronized (this.f58123s) {
                    this.f58123s.notify();
                }
                return;
            }
            return;
        }
        throw new j(5, "applySegment");
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.ss.android.socialbase.downloader.f.i c(com.ss.android.socialbase.downloader.f.m r28, com.ss.android.socialbase.downloader.f.q r29) {
        /*
            Method dump skipped, instructions count: 495
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.f.k.c(com.ss.android.socialbase.downloader.f.m, com.ss.android.socialbase.downloader.f.q):com.ss.android.socialbase.downloader.f.i");
    }

    private void a(q qVar) {
        m mVar = new m(this.f58105a, this, this.f58107c, qVar, this.f58112h.size());
        this.f58112h.add(mVar);
        mVar.a(com.ss.android.socialbase.downloader.downloader.c.q().submit(mVar));
    }

    private float d(m mVar, q qVar) {
        long b4 = mVar.b();
        int size = this.f58112h.size();
        if (size <= 1) {
            size = this.f58106b.a();
        }
        float f4 = 1.0f;
        if (b4 <= 0) {
            float m4 = this.f58106b.m();
            if (m4 <= 0.0f || m4 >= 1.0f) {
                m4 = 1.0f / size;
            }
            if (mVar.f58139c == 0) {
                return m4;
            }
            if (size > 1) {
                f4 = 1.0f - m4;
                size--;
            }
        } else {
            long o3 = o();
            if (o3 > b4) {
                return ((float) b4) / ((float) o3);
            }
        }
        return f4 / size;
    }

    @Override // com.ss.android.socialbase.downloader.f.f
    public void a(m mVar) {
        if (this.B) {
            com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "onReaderRun, threadIndex = " + mVar.f58139c);
        }
    }

    @Override // com.ss.android.socialbase.downloader.f.f
    public i a(m mVar, q qVar) {
        if (this.f58110f || this.f58111g) {
            return null;
        }
        synchronized (this) {
            i b4 = b(mVar, qVar);
            if (b4 != null) {
                b4.h();
                if (b4.j() > 1) {
                    return new i(b4);
                }
            }
            return b4;
        }
    }

    @Override // com.ss.android.socialbase.downloader.f.f
    public void a(m mVar, i iVar) {
        synchronized (this) {
            iVar.i();
        }
    }

    @Override // com.ss.android.socialbase.downloader.f.f
    public void a(m mVar, i iVar, q qVar, com.ss.android.socialbase.downloader.model.d dVar) throws BaseException, com.ss.android.socialbase.downloader.exception.i {
        synchronized (this) {
            if (!this.f58110f && !this.f58111g) {
                b(mVar, iVar, qVar, dVar);
                mVar.b(false);
                if (this.f58117m <= 0) {
                    long totalBytes = this.f58105a.getTotalBytes();
                    this.f58117m = totalBytes;
                    if (totalBytes <= 0) {
                        this.f58117m = dVar.j();
                    }
                    e();
                } else if (this.f58106b.f()) {
                    e();
                }
            } else {
                throw new p("connected");
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.f.f
    public void a(m mVar, q qVar, i iVar, BaseException baseException, int i2, int i4) {
        com.ss.android.socialbase.downloader.i.f.b(baseException);
        int errorCode = baseException.getErrorCode();
        if (((errorCode == 1047 || errorCode == 1074 || errorCode == 1055) ? true : true) || i2 >= i4) {
            c(mVar);
        }
    }

    public void b() {
        com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "pause1");
        this.f58111g = true;
        synchronized (this) {
            for (m mVar : this.f58112h) {
                mVar.e();
            }
        }
        this.f58109e.b();
        this.f58107c.c();
    }

    @Override // com.ss.android.socialbase.downloader.f.f
    public void a(m mVar, q qVar, i iVar, BaseException baseException) {
        synchronized (this) {
            com.ss.android.socialbase.downloader.c.a.e("SegmentDispatcher", "onSegmentFailed: segment = " + iVar + ", e = " + baseException);
            mVar.b(true);
            if (mVar.f58139c == 0) {
                this.f58121q = baseException;
            }
            if (l()) {
                if (this.f58121q == null) {
                    this.f58121q = baseException;
                }
                this.f58126v = true;
                a(this.f58121q);
            }
        }
    }

    private void b(long j4) {
        this.f58124t.a(this.f58105a.getCurBytes(), j4);
        for (m mVar : this.f58112h) {
            mVar.b(j4);
        }
    }

    private void a(BaseException baseException) {
        com.ss.android.socialbase.downloader.c.a.e("SegmentDispatcher", "onError, e = " + baseException);
        this.f58121q = baseException;
        this.f58107c.c();
        synchronized (this) {
            for (m mVar : this.f58112h) {
                mVar.e();
            }
        }
    }

    private void a(com.ss.android.socialbase.downloader.model.d dVar) throws BaseException {
        com.ss.android.socialbase.downloader.model.d dVar2 = this.f58114j;
        if (dVar2 == null && (dVar2 = this.f58115k) == null) {
            return;
        }
        long j4 = dVar.j();
        long j5 = dVar2.j();
        if (j4 != j5) {
            String str = "total len not equals,len=" + j4 + ",sLen=" + j5 + ",code=" + dVar.f58488c + ",sCode=" + dVar2.f58488c + ",range=" + dVar.e() + ",sRange = " + dVar2.e() + ",url = " + dVar.f58486a + ",sUrl=" + dVar2.f58486a;
            com.ss.android.socialbase.downloader.c.a.e("SegmentDispatcher", str);
            if (j4 > 0 && j5 > 0) {
                throw new BaseException(1074, str);
            }
        }
        String c4 = dVar.c();
        String c5 = dVar2.c();
        if (TextUtils.equals(c4, c5)) {
            return;
        }
        String str2 = "etag not equals with main url, etag = " + c4 + ", mainEtag = " + c5;
        com.ss.android.socialbase.downloader.c.a.e("SegmentDispatcher", str2);
        if (!TextUtils.isEmpty(c4) && !TextUtils.isEmpty(c5) && !c4.equalsIgnoreCase(c5)) {
            throw new BaseException(1074, str2);
        }
    }

    public void a() {
        com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "cancel");
        this.f58110f = true;
        synchronized (this) {
            for (m mVar : this.f58112h) {
                mVar.e();
            }
        }
        this.f58109e.a();
        this.f58107c.c();
    }

    private int a(long j4) {
        int size = this.f58119o.size();
        for (int i2 = 0; i2 < size; i2++) {
            i iVar = this.f58119o.get(i2);
            if (iVar.c() == j4) {
                return i2;
            }
            if (iVar.c() > j4) {
                return -1;
            }
        }
        return -1;
    }

    private long a(int i2, int i4) {
        i iVar = this.f58119o.get(i2);
        long a4 = a(iVar);
        int i5 = i2 + 1;
        i iVar2 = i5 < i4 ? this.f58119o.get(i5) : null;
        if (iVar2 == null) {
            return a4;
        }
        long c4 = iVar2.c() - iVar.e();
        return a4 == -1 ? c4 : Math.min(a4, c4);
    }

    private long a(i iVar) {
        long b4 = iVar.b();
        if (b4 == -1) {
            long j4 = this.f58117m;
            return j4 > 0 ? j4 - iVar.e() : b4;
        }
        return b4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public m a(boolean z3, long j4, long j5) {
        m mVar = null;
        for (m mVar2 : this.f58112h) {
            if (mVar2.f58139c != 0 || z3) {
                if (mVar2.f58140d > 0 && mVar2.f58141e <= 0 && j4 - mVar2.f58140d > j5 && (mVar == null || mVar2.f58140d < mVar.f58140d)) {
                    mVar = mVar2;
                }
            }
        }
        return mVar;
    }

    private boolean a(m mVar, long j4, long j5, long j6, double d4) {
        if (mVar.f58142f > 0) {
            long b4 = this.f58124t.b(j4, j5);
            int size = this.f58112h.size();
            long j7 = size > 0 ? b4 / size : b4;
            long a4 = mVar.a(j4, j5);
            if (a4 >= j6) {
                double d5 = j7;
                Double.isNaN(d5);
                if (a4 >= d5 * d4) {
                    return false;
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("isDownloadSpeedPoor: totalSpeed = ");
            sb.append(b4);
            sb.append(", threadAvgSpeed = ");
            sb.append(j7);
            sb.append(", poorSpeed = ");
            sb.append(j6);
            sb.append(", speed = ");
            sb.append(a4);
            sb.append(",threadIndex = ");
            sb.append(mVar.f58139c);
            return true;
        }
        return false;
    }

    private boolean a(long j4, long j5) {
        long j6 = j4 - j5;
        long b4 = this.f58124t.b(j6, j4);
        int size = this.f58112h.size();
        if (size > 0) {
            b4 /= size;
        }
        m a4 = a(j6, j4, Math.max(10.0f, ((float) b4) * this.f58130z), size / 2);
        if (a4 != null) {
            c(a4);
            com.ss.android.socialbase.downloader.c.a.d("SegmentDispatcher", "handlePoorReadThread: reconnect for poor speed, threadIndex = " + a4.f58139c);
            a4.f();
            return true;
        }
        m a5 = a(true, j4, j5);
        if (a5 != null) {
            c(a5);
            com.ss.android.socialbase.downloader.c.a.d("SegmentDispatcher", "handlePoorReadThread: reconnect for connect timeout, threadIndex = " + a5.f58139c);
            a5.f();
            return true;
        }
        return false;
    }

    private m a(long j4, long j5, long j6, int i2) {
        long j7 = Long.MAX_VALUE;
        int i4 = 0;
        m mVar = null;
        for (m mVar2 : this.f58112h) {
            if (mVar2.f58142f > 0) {
                i4++;
                long j8 = j7;
                if (mVar2.f58142f < j4) {
                    long a4 = mVar2.a(j4, j5);
                    if (this.B) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("findPoorReadThread: speed = ");
                        sb.append(a4);
                        sb.append(", threadIndex = ");
                        sb.append(mVar2.f58139c);
                    }
                    if (a4 >= 0 && a4 < j8) {
                        j7 = a4;
                        mVar = mVar2;
                    }
                }
                j7 = j8;
            }
        }
        long j9 = j7;
        if (mVar == null || i4 < i2 || j9 >= j6) {
            return null;
        }
        com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "findPoorReadThread: ----------- minSpeed = " + j9 + ", threadIndex = " + mVar.f58139c);
        return mVar;
    }
}
