package com.ss.android.socialbase.downloader.impls;

import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import android.util.SparseArray;
import com.ss.android.socialbase.downloader.downloader.c;
import com.ss.android.socialbase.downloader.downloader.t;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.h.h;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: DefaultDownloadCache.java */
/* loaded from: classes4.dex */
public class d implements com.ss.android.socialbase.downloader.downloader.j {

    /* renamed from: b  reason: collision with root package name */
    private t f58356b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f58357c;

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f58358d;

    /* renamed from: f  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.h.h f58360f;

    /* renamed from: e  reason: collision with root package name */
    private h.a f58359e = new h.a() { // from class: com.ss.android.socialbase.downloader.impls.d.1
        @Override // com.ss.android.socialbase.downloader.h.h.a
        public void a(Message message) {
            if (message.what == 1) {
                com.ss.android.socialbase.downloader.downloader.c.l().execute(new Runnable() { // from class: com.ss.android.socialbase.downloader.impls.d.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            d.this.i();
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    }
                });
            }
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final k f58355a = new k();

    public d() {
        this.f58360f = null;
        if (com.ss.android.socialbase.downloader.g.a.c().a("fix_sigbus_downloader_db")) {
            if (!com.ss.android.socialbase.downloader.i.f.a() && com.ss.android.socialbase.downloader.downloader.c.S()) {
                this.f58356b = com.ss.android.socialbase.downloader.downloader.c.T().a(new c.a.InterfaceC0327a() { // from class: com.ss.android.socialbase.downloader.impls.d.2
                    @Override // com.ss.android.socialbase.downloader.downloader.c.a.InterfaceC0327a
                    public void a() {
                        d.this.f58356b = new com.ss.android.socialbase.downloader.b.e();
                    }
                });
            } else {
                this.f58356b = new com.ss.android.socialbase.downloader.b.e();
            }
        } else {
            this.f58356b = new com.ss.android.socialbase.downloader.b.e();
        }
        this.f58357c = false;
        this.f58360f = new com.ss.android.socialbase.downloader.h.h(Looper.getMainLooper(), this.f58359e);
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        synchronized (this) {
            this.f58357c = true;
            notifyAll();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public List<DownloadInfo> c(String str) {
        return this.f58355a.c(str);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public boolean d() {
        return this.f58357c;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public boolean e() {
        if (this.f58357c) {
            return true;
        }
        synchronized (this) {
            if (!this.f58357c) {
                com.ss.android.socialbase.downloader.c.a.d("DefaultDownloadCache", "ensureDownloadCacheSyncSuccess: waiting start!!!!");
                try {
                    wait(5000L);
                } catch (InterruptedException e4) {
                    e4.printStackTrace();
                }
                com.ss.android.socialbase.downloader.c.a.d("DefaultDownloadCache", "ensureDownloadCacheSyncSuccess: waiting end!!!!");
            }
        }
        return this.f58357c;
    }

    public t f() {
        return this.f58356b;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo g(int i2) {
        DownloadInfo g4 = this.f58355a.g(i2);
        c(g4);
        return g4;
    }

    public void h() {
        long j4;
        if (com.ss.android.socialbase.downloader.g.a.c().a("task_resume_delay")) {
            j4 = 4000;
        } else {
            j4 = Build.VERSION.SDK_INT >= 23 ? 1000L : 5000L;
        }
        this.f58360f.sendMessageDelayed(this.f58360f.obtainMessage(1), j4);
    }

    public void i() {
        List<String> list;
        ArrayList arrayList;
        DownloadInfo downloadInfo;
        DownloadInfo downloadInfo2;
        if (this.f58357c) {
            if (this.f58358d) {
                com.ss.android.socialbase.downloader.c.a.b("DefaultDownloadCache", "resumeUnCompleteTask: has resumed, return!!!");
                return;
            }
            this.f58358d = true;
            if (com.ss.android.socialbase.downloader.i.f.a()) {
                com.ss.android.socialbase.downloader.downloader.l w3 = com.ss.android.socialbase.downloader.downloader.c.w();
                if (w3 != null) {
                    list = w3.a();
                    arrayList = (list == null || list.isEmpty()) ? null : new ArrayList();
                } else {
                    list = null;
                    arrayList = null;
                }
                SparseArray sparseArray = new SparseArray();
                synchronized (this) {
                    SparseArray<DownloadInfo> a4 = this.f58355a.a();
                    for (int i2 = 0; i2 < a4.size(); i2++) {
                        int keyAt = a4.keyAt(i2);
                        if (keyAt != 0 && (downloadInfo2 = a4.get(keyAt)) != null) {
                            sparseArray.put(keyAt, downloadInfo2);
                        }
                    }
                }
                if (sparseArray.size() == 0) {
                    return;
                }
                for (int i4 = 0; i4 < sparseArray.size(); i4++) {
                    int keyAt2 = sparseArray.keyAt(i4);
                    if (keyAt2 != 0 && (downloadInfo = (DownloadInfo) sparseArray.get(keyAt2)) != null) {
                        int realStatus = downloadInfo.getRealStatus();
                        int statusAtDbInit = downloadInfo.getStatusAtDbInit();
                        if (statusAtDbInit >= 1 && statusAtDbInit <= 11) {
                            com.ss.android.socialbase.downloader.d.a.a(com.ss.android.socialbase.downloader.downloader.c.g(), downloadInfo, (BaseException) null, -5);
                        }
                        if (list != null && arrayList != null && downloadInfo.getMimeType() != null && list.contains(downloadInfo.getMimeType()) && (com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).b("enable_notification_ui") >= 2 || realStatus != -2 || downloadInfo.isPauseReserveOnWifi())) {
                            downloadInfo.setDownloadFromReserveWifi(false);
                            arrayList.add(downloadInfo);
                        }
                    }
                }
                if (w3 == null || arrayList == null || arrayList.isEmpty()) {
                    return;
                }
                w3.a(arrayList, 1);
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public Map<Long, com.ss.android.socialbase.downloader.f.i> l(int i2) {
        Map<Long, com.ss.android.socialbase.downloader.f.i> l4 = this.f58355a.l(i2);
        if (l4 == null || l4.isEmpty()) {
            Map<Long, com.ss.android.socialbase.downloader.f.i> l5 = this.f58356b.l(i2);
            this.f58355a.a(i2, l5);
            return l5;
        }
        return l4;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void m(int i2) {
        this.f58355a.m(i2);
        this.f58356b.m(i2);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public List<com.ss.android.socialbase.downloader.f.i> n(int i2) {
        List<com.ss.android.socialbase.downloader.f.i> n4 = this.f58355a.n(i2);
        return (n4 == null || n4.size() == 0) ? this.f58356b.n(i2) : n4;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo b(int i2) {
        return this.f58355a.b(i2);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public List<com.ss.android.socialbase.downloader.model.b> c(int i2) {
        return this.f58355a.c(i2);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public List<DownloadInfo> d(String str) {
        return this.f58355a.d(str);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public boolean f(int i2) {
        if (com.ss.android.socialbase.downloader.i.f.b()) {
            com.ss.android.socialbase.downloader.downloader.m a4 = l.a(true);
            if (a4 != null) {
                a4.p(i2);
            } else {
                this.f58356b.f(i2);
            }
        } else {
            this.f58356b.f(i2);
        }
        return this.f58355a.f(i2);
    }

    public k a() {
        return this.f58355a;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public List<DownloadInfo> b(String str) {
        return this.f58355a.b(str);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void c() {
        try {
            this.f58355a.c();
        } catch (SQLiteException e4) {
            e4.printStackTrace();
        }
        if (com.ss.android.socialbase.downloader.i.f.b()) {
            com.ss.android.socialbase.downloader.downloader.m a4 = l.a(true);
            if (a4 != null) {
                a4.f();
                return;
            } else {
                this.f58356b.c();
                return;
            }
        }
        this.f58356b.c();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void d(int i2) {
        this.f58355a.d(i2);
        if (com.ss.android.socialbase.downloader.i.f.b()) {
            com.ss.android.socialbase.downloader.downloader.m a4 = l.a(true);
            if (a4 != null) {
                a4.o(i2);
                return;
            } else {
                this.f58356b.d(i2);
                return;
            }
        }
        this.f58356b.d(i2);
    }

    public void g() {
        List<com.ss.android.socialbase.downloader.model.b> list;
        DownloadInfo downloadInfo;
        com.ss.android.socialbase.downloader.downloader.c.a(com.ss.android.socialbase.downloader.constants.d.SYNC_START);
        final SparseArray<DownloadInfo> sparseArray = new SparseArray<>();
        final SparseArray<List<com.ss.android.socialbase.downloader.model.b>> sparseArray2 = new SparseArray<>();
        synchronized (this.f58355a) {
            SparseArray<DownloadInfo> a4 = this.f58355a.a();
            for (int i2 = 0; i2 < a4.size(); i2++) {
                int keyAt = a4.keyAt(i2);
                if (keyAt != 0 && (downloadInfo = a4.get(keyAt)) != null) {
                    sparseArray.put(keyAt, downloadInfo);
                }
            }
            SparseArray<List<com.ss.android.socialbase.downloader.model.b>> f4 = this.f58355a.f();
            for (int i4 = 0; i4 < f4.size(); i4++) {
                int keyAt2 = f4.keyAt(i4);
                if (keyAt2 != 0 && (list = f4.get(keyAt2)) != null) {
                    sparseArray2.put(keyAt2, new CopyOnWriteArrayList(list));
                }
            }
        }
        this.f58356b.a(sparseArray, sparseArray2, new com.ss.android.socialbase.downloader.b.d() { // from class: com.ss.android.socialbase.downloader.impls.d.3
            @Override // com.ss.android.socialbase.downloader.b.d
            public void a() {
                synchronized (d.this.f58355a) {
                    SparseArray<DownloadInfo> a5 = d.this.f58355a.a();
                    if (sparseArray != null) {
                        for (int i5 = 0; i5 < sparseArray.size(); i5++) {
                            int keyAt3 = sparseArray.keyAt(i5);
                            if (keyAt3 != 0) {
                                a5.put(keyAt3, (DownloadInfo) sparseArray.get(keyAt3));
                            }
                        }
                    }
                    SparseArray<List<com.ss.android.socialbase.downloader.model.b>> f5 = d.this.f58355a.f();
                    if (sparseArray2 != null) {
                        for (int i6 = 0; i6 < sparseArray2.size(); i6++) {
                            int keyAt4 = sparseArray2.keyAt(i6);
                            if (keyAt4 != 0) {
                                f5.put(keyAt4, (List) sparseArray2.get(keyAt4));
                            }
                        }
                    }
                }
                d.this.j();
                d.this.h();
                com.ss.android.socialbase.downloader.downloader.c.a(com.ss.android.socialbase.downloader.constants.d.SYNC_SUCCESS);
            }
        });
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public List<DownloadInfo> a(String str) {
        return this.f58355a.a(str);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public List<DownloadInfo> b() {
        return this.f58355a.b();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void a(com.ss.android.socialbase.downloader.model.b bVar) {
        synchronized (this.f58355a) {
            this.f58355a.a(bVar);
        }
        if (com.ss.android.socialbase.downloader.i.f.b()) {
            com.ss.android.socialbase.downloader.downloader.m a4 = l.a(true);
            if (a4 != null) {
                a4.a(bVar);
                return;
            } else {
                this.f58356b.a(bVar);
                return;
            }
        }
        this.f58356b.a(bVar);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void b(com.ss.android.socialbase.downloader.model.b bVar) {
        if (com.ss.android.socialbase.downloader.i.f.b()) {
            com.ss.android.socialbase.downloader.downloader.m a4 = l.a(true);
            if (a4 != null) {
                a4.a(bVar);
                return;
            } else {
                this.f58356b.a(bVar);
                return;
            }
        }
        this.f58356b.a(bVar);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo h(int i2) {
        DownloadInfo h4 = this.f58355a.h(i2);
        c(h4);
        return h4;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo j(int i2) {
        DownloadInfo j4 = this.f58355a.j(i2);
        c(j4);
        return j4;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo d(int i2, long j4) {
        DownloadInfo d4 = this.f58355a.d(i2, j4);
        b(i2, (List<com.ss.android.socialbase.downloader.model.b>) null);
        return d4;
    }

    private void c(DownloadInfo downloadInfo) {
        a(downloadInfo, true);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo b(int i2, long j4) {
        DownloadInfo b4 = this.f58355a.b(i2, j4);
        b(i2, (List<com.ss.android.socialbase.downloader.model.b>) null);
        return b4;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo c(int i2, long j4) {
        DownloadInfo c4 = this.f58355a.c(i2, j4);
        b(i2, (List<com.ss.android.socialbase.downloader.model.b>) null);
        return c4;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public boolean e(int i2) {
        try {
            if (com.ss.android.socialbase.downloader.i.f.b()) {
                com.ss.android.socialbase.downloader.downloader.m a4 = l.a(true);
                if (a4 != null) {
                    a4.n(i2);
                } else {
                    this.f58356b.e(i2);
                }
            } else {
                this.f58356b.e(i2);
            }
        } catch (SQLiteException e4) {
            e4.printStackTrace();
        }
        return this.f58355a.e(i2);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void b(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return;
        }
        this.f58355a.a(downloadInfo);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void b(int i2, List<com.ss.android.socialbase.downloader.model.b> list) {
        try {
            a(this.f58355a.b(i2));
            if (list == null) {
                list = this.f58355a.c(i2);
            }
            if (com.ss.android.socialbase.downloader.i.f.b()) {
                com.ss.android.socialbase.downloader.downloader.m a4 = l.a(true);
                if (a4 != null) {
                    a4.b(i2, list);
                    return;
                } else {
                    this.f58356b.b(i2, list);
                    return;
                }
            }
            this.f58356b.b(i2, list);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void a(int i2, int i4, long j4) {
        this.f58355a.a(i2, i4, j4);
        if (com.ss.android.socialbase.downloader.i.f.b()) {
            com.ss.android.socialbase.downloader.downloader.m a4 = l.a(true);
            if (a4 != null) {
                a4.a(i2, i4, j4);
                return;
            } else {
                this.f58356b.a(i2, i4, j4);
                return;
            }
        }
        this.f58356b.a(i2, i4, j4);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void a(int i2, int i4, int i5, long j4) {
        if (com.ss.android.socialbase.downloader.i.f.b()) {
            com.ss.android.socialbase.downloader.downloader.m a4 = l.a(true);
            if (a4 != null) {
                a4.a(i2, i4, i5, j4);
                return;
            } else {
                this.f58356b.a(i2, i4, i5, j4);
                return;
            }
        }
        this.f58356b.a(i2, i4, i5, j4);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void a(int i2, int i4, int i5, int i6) {
        if (com.ss.android.socialbase.downloader.i.f.b()) {
            com.ss.android.socialbase.downloader.downloader.m a4 = l.a(true);
            if (a4 != null) {
                a4.a(i2, i4, i5, i6);
                return;
            } else {
                this.f58356b.a(i2, i4, i5, i6);
                return;
            }
        }
        this.f58356b.a(i2, i4, i5, i6);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo a(int i2, int i4) {
        DownloadInfo a4 = this.f58355a.a(i2, i4);
        c(a4);
        return a4;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public boolean a(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return false;
        }
        boolean a4 = this.f58355a.a(downloadInfo);
        c(downloadInfo);
        return a4;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo a(int i2, long j4, String str, String str2) {
        DownloadInfo a4 = this.f58355a.a(i2, j4, str, str2);
        c(a4);
        return a4;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo i(int i2) {
        DownloadInfo i4 = this.f58355a.i(i2);
        c(i4);
        return i4;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo a(int i2, long j4) {
        DownloadInfo a4 = this.f58355a.a(i2, j4);
        a(a4, false);
        return a4;
    }

    private void a(DownloadInfo downloadInfo, boolean z3) {
        if (downloadInfo == null) {
            return;
        }
        if (!com.ss.android.socialbase.downloader.i.f.b()) {
            this.f58356b.a(downloadInfo);
        } else if (z3) {
            com.ss.android.socialbase.downloader.downloader.m a4 = l.a(true);
            if (a4 != null) {
                a4.c(downloadInfo);
            } else {
                this.f58356b.a(downloadInfo);
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void a(int i2, List<com.ss.android.socialbase.downloader.model.b> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        this.f58355a.a(i2, list);
        if (com.ss.android.socialbase.downloader.i.f.c()) {
            this.f58356b.b(i2, list);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public boolean a(int i2, Map<Long, com.ss.android.socialbase.downloader.f.i> map) {
        this.f58355a.a(i2, map);
        this.f58356b.a(i2, map);
        return false;
    }
}
