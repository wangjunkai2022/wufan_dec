package com.ss.android.socialbase.downloader.h;

import android.util.SparseArray;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: DownloadThreadPool.java */
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static ExecutorService f58230a = new ThreadPoolExecutor(2, 2, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new a("Download_OP_Thread"));

    /* renamed from: c  reason: collision with root package name */
    private int f58232c = 0;

    /* renamed from: b  reason: collision with root package name */
    private volatile SparseArray<c> f58231b = new SparseArray<>();

    public static void a(Runnable runnable) {
        f58230a.execute(runnable);
    }

    private void b() {
        try {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < this.f58231b.size(); i2++) {
                int keyAt = this.f58231b.keyAt(i2);
                if (!this.f58231b.get(keyAt).d()) {
                    arrayList.add(Integer.valueOf(keyAt));
                }
            }
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                Integer num = (Integer) arrayList.get(i4);
                if (num != null) {
                    this.f58231b.remove(num.intValue());
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void c(int i2) {
        synchronized (d.class) {
            b();
            c cVar = this.f58231b.get(i2);
            if (cVar != null) {
                cVar.a();
                c(cVar);
                this.f58231b.remove(i2);
            }
        }
    }

    public void a(c cVar) {
        cVar.f();
        synchronized (d.class) {
            int i2 = this.f58232c;
            if (i2 >= 500) {
                b();
                this.f58232c = 0;
            } else {
                this.f58232c = i2 + 1;
            }
            this.f58231b.put(cVar.e(), cVar);
        }
        DownloadTask c4 = cVar.c();
        try {
            ExecutorService p3 = com.ss.android.socialbase.downloader.downloader.c.p();
            if (c4 != null && c4.getDownloadInfo() != null) {
                if ("mime_type_plg".equals(c4.getDownloadInfo().getMimeType()) && com.ss.android.socialbase.downloader.g.a.c().a("divide_plugin", 1) == 1) {
                    c4.getDownloadInfo().safePutToDBJsonData("executor_group", 3);
                }
                int executorGroup = c4.getDownloadInfo().getExecutorGroup();
                if (executorGroup == 3) {
                    p3 = com.ss.android.socialbase.downloader.downloader.c.n();
                } else if (executorGroup == 4) {
                    p3 = com.ss.android.socialbase.downloader.downloader.c.o();
                }
            }
            if (p3 != null) {
                if (com.ss.android.socialbase.downloader.g.a.a(cVar.e()).b("pause_with_interrupt", false)) {
                    cVar.a(p3.submit(cVar));
                    return;
                } else {
                    p3.execute(cVar);
                    return;
                }
            }
            com.ss.android.socialbase.downloader.d.a.a(c4.getMonitorDepend(), c4.getDownloadInfo(), new BaseException(1003, "execute failed cpu thread executor service is null"), c4.getDownloadInfo() != null ? c4.getDownloadInfo().getStatus() : 0);
        } catch (Exception e4) {
            if (c4 != null) {
                com.ss.android.socialbase.downloader.d.a.a(c4.getMonitorDepend(), c4.getDownloadInfo(), new BaseException(1003, com.ss.android.socialbase.downloader.i.f.b(e4, "DownloadThreadPoolExecute")), c4.getDownloadInfo() != null ? c4.getDownloadInfo().getStatus() : 0);
            }
            e4.printStackTrace();
        } catch (OutOfMemoryError e5) {
            if (c4 != null) {
                com.ss.android.socialbase.downloader.d.a.a(c4.getMonitorDepend(), c4.getDownloadInfo(), new BaseException(1003, "execute OOM"), c4.getDownloadInfo() != null ? c4.getDownloadInfo().getStatus() : 0);
            }
            e5.printStackTrace();
        }
    }

    private void c(c cVar) {
        Future g4;
        if (cVar == null) {
            return;
        }
        try {
            ExecutorService p3 = com.ss.android.socialbase.downloader.downloader.c.p();
            DownloadTask c4 = cVar.c();
            if (c4 != null && c4.getDownloadInfo() != null) {
                int executorGroup = c4.getDownloadInfo().getExecutorGroup();
                if (executorGroup == 3) {
                    p3 = com.ss.android.socialbase.downloader.downloader.c.n();
                } else if (executorGroup == 4) {
                    p3 = com.ss.android.socialbase.downloader.downloader.c.o();
                }
            }
            if (p3 == null || !(p3 instanceof ThreadPoolExecutor)) {
                return;
            }
            ((ThreadPoolExecutor) p3).remove(cVar);
            if (!com.ss.android.socialbase.downloader.g.a.a(cVar.e()).b("pause_with_interrupt", false) || (g4 = cVar.g()) == null) {
                return;
            }
            g4.cancel(true);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void b(c cVar) {
        if (cVar == null) {
            return;
        }
        synchronized (d.class) {
            try {
                if (com.ss.android.socialbase.downloader.i.a.a(524288)) {
                    int indexOfValue = this.f58231b.indexOfValue(cVar);
                    if (indexOfValue >= 0) {
                        this.f58231b.removeAt(indexOfValue);
                    }
                } else {
                    this.f58231b.remove(cVar.e());
                }
            }
        }
    }

    public c b(int i2) {
        synchronized (d.class) {
            b();
            c cVar = this.f58231b.get(i2);
            if (cVar != null) {
                cVar.b();
                c(cVar);
                this.f58231b.remove(i2);
                return cVar;
            }
            return null;
        }
    }

    public boolean a(int i2) {
        synchronized (d.class) {
            boolean z3 = false;
            if (this.f58231b != null && this.f58231b.size() > 0) {
                c cVar = this.f58231b.get(i2);
                if (cVar != null && cVar.d()) {
                    z3 = true;
                }
                return z3;
            }
            return false;
        }
    }

    public List<Integer> a() {
        ArrayList arrayList;
        synchronized (d.class) {
            b();
            arrayList = new ArrayList();
            for (int i2 = 0; i2 < this.f58231b.size(); i2++) {
                c cVar = this.f58231b.get(this.f58231b.keyAt(i2));
                if (cVar != null) {
                    arrayList.add(Integer.valueOf(cVar.e()));
                }
            }
        }
        return arrayList;
    }

    public void a(int i2, long j4) {
        c cVar = this.f58231b.get(i2);
        if (cVar != null) {
            cVar.c(j4);
        }
    }
}
