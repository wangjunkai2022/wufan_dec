package com.ss.android.socialbase.downloader.downloader;

import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import com.ss.android.socialbase.downloader.depend.IDownloadFileUriProvider;
import com.ss.android.socialbase.downloader.depend.IDownloadListener;
import com.ss.android.socialbase.downloader.depend.ac;
import com.ss.android.socialbase.downloader.depend.af;
import com.ss.android.socialbase.downloader.depend.z;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.impls.DownloadHandleService;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import java.util.ArrayList;
import java.util.List;
/* compiled from: DownloadProcessDispatcher.java */
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static volatile d f57977a;

    /* renamed from: b  reason: collision with root package name */
    private volatile SparseArray<Boolean> f57978b = new SparseArray<>();

    /* renamed from: c  reason: collision with root package name */
    private Handler f57979c = new Handler(Looper.getMainLooper());

    /* renamed from: d  reason: collision with root package name */
    private volatile List<ac> f57980d = new ArrayList();

    public static d a() {
        if (f57977a == null) {
            synchronized (d.class) {
                f57977a = new d();
            }
        }
        return f57977a;
    }

    public void b(ac acVar) {
        if (acVar == null) {
            return;
        }
        synchronized (this.f57980d) {
            if (this.f57980d.contains(acVar)) {
                this.f57980d.remove(acVar);
            }
        }
    }

    public m c(int i2) {
        boolean z3 = true;
        return com.ss.android.socialbase.downloader.impls.l.a((a(i2) != 1 || com.ss.android.socialbase.downloader.i.f.c()) ? false : false);
    }

    public void d(int i2) {
        m c4 = c(i2);
        if (c4 == null) {
            return;
        }
        c4.a(i2);
    }

    public boolean e(int i2) {
        m c4 = c(i2);
        if (c4 == null) {
            return false;
        }
        return c4.b(i2);
    }

    public void f(int i2) {
        m c4 = c(i2);
        if (c4 == null) {
            return;
        }
        c4.c(i2);
    }

    public void g(int i2) {
        m c4 = c(i2);
        if (c4 == null) {
            return;
        }
        c4.d(i2);
    }

    public long h(int i2) {
        m c4 = c(i2);
        if (c4 == null) {
            return 0L;
        }
        return c4.e(i2);
    }

    public int i(int i2) {
        m c4 = c(i2);
        if (c4 == null) {
            return 0;
        }
        return c4.f(i2);
    }

    public boolean j(int i2) {
        m c4 = c(i2);
        if (c4 == null) {
            return false;
        }
        return c4.g(i2);
    }

    public DownloadInfo k(int i2) {
        m c4 = c(i2);
        if (c4 == null) {
            return null;
        }
        return c4.h(i2);
    }

    public z l(int i2) {
        m c4 = c(i2);
        if (c4 == null) {
            return null;
        }
        return c4.q(i2);
    }

    public af m(int i2) {
        m c4 = c(i2);
        if (c4 == null) {
            return null;
        }
        return c4.r(i2);
    }

    public void n(int i2) {
        m c4 = c(i2);
        if (c4 == null) {
            return;
        }
        c4.j(i2);
    }

    public boolean o(int i2) {
        m c4 = c(i2);
        if (c4 == null) {
            return false;
        }
        return c4.l(i2);
    }

    public void p(int i2) {
        m a4 = com.ss.android.socialbase.downloader.impls.l.a(false);
        if (a4 != null) {
            a4.k(i2);
        }
        m a5 = com.ss.android.socialbase.downloader.impls.l.a(true);
        if (a5 != null) {
            a5.k(i2);
        }
    }

    public void q(int i2) {
        if (i2 == 0) {
            return;
        }
        b(i2, true);
        m a4 = com.ss.android.socialbase.downloader.impls.l.a(true);
        if (a4 == null) {
            return;
        }
        a4.startService();
    }

    public IDownloadFileUriProvider r(int i2) {
        m c4 = c(i2);
        if (c4 == null) {
            return null;
        }
        return c4.s(i2);
    }

    public void c(int i2, boolean z3) {
        if (com.ss.android.socialbase.downloader.i.f.a()) {
            if (com.ss.android.socialbase.downloader.i.a.a(8388608)) {
                m a4 = com.ss.android.socialbase.downloader.impls.l.a(true);
                if (a4 != null) {
                    a4.a(i2, z3);
                }
                m a5 = com.ss.android.socialbase.downloader.impls.l.a(false);
                if (a5 != null) {
                    a5.a(i2, z3);
                    return;
                }
                return;
            }
            m a6 = com.ss.android.socialbase.downloader.impls.l.a(false);
            if (a6 != null) {
                a6.a(i2, z3);
            }
            m a7 = com.ss.android.socialbase.downloader.impls.l.a(true);
            if (a7 != null) {
                a7.a(i2, z3);
                return;
            }
            return;
        }
        m c4 = c(i2);
        if (c4 != null) {
            c4.a(i2, z3);
        }
        com.ss.android.socialbase.downloader.impls.l.a(true).a(2, i2);
    }

    public void d(int i2, boolean z3) {
        m c4 = c(i2);
        if (c4 == null) {
            return;
        }
        c4.b(i2, z3);
    }

    public List<DownloadInfo> e(String str) {
        SparseArray<DownloadInfo> sparseArray = new SparseArray<>();
        m a4 = com.ss.android.socialbase.downloader.impls.l.a(false);
        List<DownloadInfo> e4 = a4 != null ? a4.e(str) : null;
        m a5 = com.ss.android.socialbase.downloader.impls.l.a(true);
        return a(e4, a5 != null ? a5.e(str) : null, sparseArray);
    }

    public boolean f() {
        m a4 = com.ss.android.socialbase.downloader.impls.l.a(false);
        if (a4 != null) {
            return a4.e();
        }
        return false;
    }

    public void b() {
        synchronized (this.f57980d) {
            for (ac acVar : this.f57980d) {
                if (acVar != null) {
                    acVar.a();
                }
            }
        }
    }

    public boolean d() {
        return c.O();
    }

    public void a(ac acVar) {
        if (acVar == null) {
            return;
        }
        if (com.ss.android.socialbase.downloader.i.f.c()) {
            acVar.a();
            return;
        }
        if (com.ss.android.socialbase.downloader.impls.l.a(true).g()) {
            acVar.a();
        }
        synchronized (this.f57980d) {
            if (!this.f57980d.contains(acVar)) {
                this.f57980d.add(acVar);
            }
        }
    }

    public List<DownloadInfo> d(String str) {
        SparseArray<DownloadInfo> sparseArray = new SparseArray<>();
        m a4 = com.ss.android.socialbase.downloader.impls.l.a(false);
        List<DownloadInfo> d4 = a4 != null ? a4.d(str) : null;
        m a5 = com.ss.android.socialbase.downloader.impls.l.a(true);
        return a(d4, a5 != null ? a5.d(str) : null, sparseArray);
    }

    public List<DownloadInfo> e() {
        SparseArray<DownloadInfo> sparseArray = new SparseArray<>();
        m a4 = com.ss.android.socialbase.downloader.impls.l.a(false);
        List<DownloadInfo> d4 = a4 != null ? a4.d() : null;
        m a5 = com.ss.android.socialbase.downloader.impls.l.a(true);
        return a(d4, a5 != null ? a5.d() : null, sparseArray);
    }

    public synchronized void b(int i2, boolean z3) {
        this.f57978b.put(i2, z3 ? Boolean.TRUE : Boolean.FALSE);
    }

    public synchronized int b(int i2) {
        if (this.f57978b.get(i2) == null) {
            return -1;
        }
        return this.f57978b.get(i2).booleanValue() ? 1 : 0;
    }

    public void a(int i2, boolean z3) {
        b(i2, z3);
        if (c.S() && !com.ss.android.socialbase.downloader.i.f.c() && com.ss.android.socialbase.downloader.impls.l.a(true).g()) {
            com.ss.android.socialbase.downloader.impls.l.a(true).c(i2, z3);
        }
        if (c.c() || com.ss.android.socialbase.downloader.i.f.c() || com.ss.android.socialbase.downloader.i.f.a()) {
            return;
        }
        try {
            Intent intent = new Intent(c.N(), DownloadHandleService.class);
            intent.setAction("com.ss.android.downloader.action.PROCESS_NOTIFY");
            intent.putExtra("extra_download_id", i2);
            c.N().startService(intent);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void c() {
        m a4 = com.ss.android.socialbase.downloader.impls.l.a(false);
        if (a4 != null) {
            a4.a();
        }
        m a5 = com.ss.android.socialbase.downloader.impls.l.a(true);
        if (a5 != null) {
            a5.a();
        }
    }

    private m b(DownloadTask downloadTask) {
        DownloadInfo downloadInfo;
        List<com.ss.android.socialbase.downloader.model.b> i2;
        if (downloadTask == null || (downloadInfo = downloadTask.getDownloadInfo()) == null) {
            return null;
        }
        downloadInfo.isNeedIndependentProcess();
        boolean z3 = (com.ss.android.socialbase.downloader.i.f.c() || !com.ss.android.socialbase.downloader.i.f.a()) ? true : true;
        int a4 = a(downloadInfo.getId());
        if (a4 >= 0 && a4 != z3) {
            try {
                if (a4 == 1) {
                    if (com.ss.android.socialbase.downloader.i.f.a()) {
                        com.ss.android.socialbase.downloader.impls.l.a(true).a(downloadInfo.getId());
                        DownloadInfo h4 = com.ss.android.socialbase.downloader.impls.l.a(true).h(downloadInfo.getId());
                        if (h4 != null) {
                            com.ss.android.socialbase.downloader.impls.l.a(false).b(h4);
                        }
                        if (h4.getChunkCount() > 1 && (i2 = com.ss.android.socialbase.downloader.impls.l.a(true).i(downloadInfo.getId())) != null) {
                            com.ss.android.socialbase.downloader.impls.l.a(false).a(downloadInfo.getId(), com.ss.android.socialbase.downloader.i.f.a(i2));
                        }
                    }
                } else if (com.ss.android.socialbase.downloader.i.f.a()) {
                    com.ss.android.socialbase.downloader.impls.l.a(false).a(downloadInfo.getId());
                    List<com.ss.android.socialbase.downloader.model.b> i4 = com.ss.android.socialbase.downloader.impls.l.a(false).i(downloadInfo.getId());
                    if (i4 != null) {
                        com.ss.android.socialbase.downloader.impls.l.a(true).a(downloadInfo.getId(), com.ss.android.socialbase.downloader.i.f.a(i4));
                    }
                } else {
                    downloadTask.setNeedDelayForCacheSync(true);
                    com.ss.android.socialbase.downloader.impls.l.a(true).a(1, downloadInfo.getId());
                }
            } catch (Throwable unused) {
            }
        }
        a(downloadInfo.getId(), z3);
        return com.ss.android.socialbase.downloader.impls.l.a(z3);
    }

    public List<DownloadInfo> c(String str) {
        SparseArray<DownloadInfo> sparseArray = new SparseArray<>();
        m a4 = com.ss.android.socialbase.downloader.impls.l.a(false);
        List<DownloadInfo> c4 = a4 != null ? a4.c(str) : null;
        m a5 = com.ss.android.socialbase.downloader.impls.l.a(true);
        return a(c4, a5 != null ? a5.c(str) : null, sparseArray);
    }

    public int a(int i2) {
        if (c.S()) {
            if (!com.ss.android.socialbase.downloader.i.f.c() && com.ss.android.socialbase.downloader.impls.l.a(true).g()) {
                return com.ss.android.socialbase.downloader.impls.l.a(true).m(i2);
            }
            return b(i2);
        }
        return -1;
    }

    public int a(String str, String str2) {
        return c.a(str, str2);
    }

    public List<DownloadInfo> a(String str) {
        List<DownloadInfo> a4 = com.ss.android.socialbase.downloader.impls.l.a(false).a(str);
        List<DownloadInfo> a5 = com.ss.android.socialbase.downloader.impls.l.a(true).a(str);
        if (a4 == null && a5 == null) {
            return null;
        }
        if (a4 == null || a5 == null) {
            return a4 != null ? a4 : a5;
        }
        ArrayList arrayList = new ArrayList(a4);
        arrayList.addAll(a5);
        return arrayList;
    }

    public void a(int i2, z zVar) {
        m c4 = c(i2);
        if (c4 == null) {
            return;
        }
        c4.a(i2, zVar);
    }

    private List<DownloadInfo> a(List<DownloadInfo> list, List<DownloadInfo> list2, SparseArray<DownloadInfo> sparseArray) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (DownloadInfo downloadInfo : list) {
                if (downloadInfo != null && sparseArray.get(downloadInfo.getId()) == null) {
                    sparseArray.put(downloadInfo.getId(), downloadInfo);
                }
            }
        }
        if (list2 != null) {
            for (DownloadInfo downloadInfo2 : list2) {
                if (downloadInfo2 != null && sparseArray.get(downloadInfo2.getId()) == null) {
                    sparseArray.put(downloadInfo2.getId(), downloadInfo2);
                }
            }
        }
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            arrayList.add(sparseArray.get(sparseArray.keyAt(i2)));
        }
        return arrayList;
    }

    public DownloadInfo b(String str, String str2) {
        int a4 = a(str, str2);
        m c4 = c(a4);
        if (c4 == null) {
            return null;
        }
        return c4.h(a4);
    }

    public List<DownloadInfo> b(String str) {
        SparseArray<DownloadInfo> sparseArray = new SparseArray<>();
        m a4 = com.ss.android.socialbase.downloader.impls.l.a(false);
        List<DownloadInfo> b4 = a4 != null ? a4.b(str) : null;
        m a5 = com.ss.android.socialbase.downloader.impls.l.a(true);
        return a(b4, a5 != null ? a5.b(str) : null, sparseArray);
    }

    public void a(List<String> list) {
        m a4 = com.ss.android.socialbase.downloader.impls.l.a(false);
        if (a4 != null) {
            a4.a(list);
        }
        m a5 = com.ss.android.socialbase.downloader.impls.l.a(true);
        if (a5 != null) {
            a5.a(list);
        }
    }

    public void b(List<String> list) {
        m a4 = com.ss.android.socialbase.downloader.impls.l.a(false);
        if (a4 != null) {
            a4.b(list);
        }
        m a5 = com.ss.android.socialbase.downloader.impls.l.a(true);
        if (a5 != null) {
            a5.b(list);
        }
    }

    public void a(int i2, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.f fVar, boolean z3) {
        m c4 = c(i2);
        if (c4 == null) {
            return;
        }
        c4.b(i2, iDownloadListener == null ? 0 : iDownloadListener.hashCode(), iDownloadListener, fVar, z3);
    }

    public void b(int i2, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.f fVar, boolean z3) {
        m c4 = c(i2);
        if (c4 == null) {
            return;
        }
        c4.a(i2, iDownloadListener.hashCode(), iDownloadListener, fVar, z3);
    }

    public void a(int i2, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.f fVar, boolean z3, boolean z4) {
        m c4 = c(i2);
        if (c4 == null) {
            return;
        }
        c4.a(i2, iDownloadListener.hashCode(), iDownloadListener, fVar, z3, z4);
    }

    public void b(com.ss.android.socialbase.downloader.depend.k kVar) {
        c.b(kVar);
    }

    public boolean a(DownloadInfo downloadInfo) {
        m c4;
        if (downloadInfo == null || (c4 = c(downloadInfo.getId())) == null) {
            return false;
        }
        return c4.a(downloadInfo);
    }

    public void a(final DownloadTask downloadTask) {
        final m b4 = b(downloadTask);
        if (b4 == null) {
            if (downloadTask != null) {
                com.ss.android.socialbase.downloader.d.a.a(downloadTask.getMonitorDepend(), downloadTask.getDownloadInfo(), new BaseException(1003, "tryDownload but getDownloadHandler failed"), downloadTask.getDownloadInfo() != null ? downloadTask.getDownloadInfo().getStatus() : 0);
            }
        } else if (downloadTask.isNeedDelayForCacheSync()) {
            this.f57979c.postDelayed(new Runnable() { // from class: com.ss.android.socialbase.downloader.downloader.d.1
                @Override // java.lang.Runnable
                public void run() {
                    b4.a(downloadTask);
                }
            }, 500L);
        } else {
            b4.a(downloadTask);
        }
    }

    public void a(com.ss.android.socialbase.downloader.depend.k kVar) {
        c.a(kVar);
    }

    public void a(int i2, long j4) {
        m c4 = c(i2);
        if (c4 == null) {
            return;
        }
        c4.a(i2, j4);
    }
}
