package com.ss.android.socialbase.downloader.impls;

import com.ss.android.socialbase.downloader.constants.DownloadStatus;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
/* compiled from: DefaultDownloadEngine.java */
/* loaded from: classes4.dex */
public class e extends a {

    /* renamed from: b  reason: collision with root package name */
    private static com.ss.android.socialbase.downloader.h.d f58367b;

    public e() {
        f58367b = new com.ss.android.socialbase.downloader.h.d();
    }

    public static void c(List<Callable<Object>> list) throws InterruptedException {
        ExecutorService q3 = com.ss.android.socialbase.downloader.downloader.c.q();
        if (q3 != null) {
            q3.invokeAll(list);
        }
    }

    public static List<Future> d(List<Runnable> list) {
        ExecutorService q3 = com.ss.android.socialbase.downloader.downloader.c.q();
        ArrayList arrayList = new ArrayList(list.size());
        for (Runnable runnable : list) {
            arrayList.add(q3.submit(runnable));
        }
        return arrayList;
    }

    public static Runnable e(List<Future> list) {
        BlockingQueue<Runnable> queue;
        Runnable runnable;
        if (list != null && !list.isEmpty()) {
            try {
                ExecutorService q3 = com.ss.android.socialbase.downloader.downloader.c.q();
                if ((q3 instanceof ThreadPoolExecutor) && (queue = ((ThreadPoolExecutor) q3).getQueue()) != null && !queue.isEmpty()) {
                    Iterator<Future> it2 = list.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            runnable = null;
                            break;
                        }
                        Future next = it2.next();
                        if ((next instanceof Runnable) && queue.remove(next)) {
                            runnable = (Runnable) next;
                            break;
                        }
                    }
                    if (runnable != null) {
                        list.remove(runnable);
                        return runnable;
                    }
                }
            } catch (Throwable th) {
                com.ss.android.socialbase.downloader.c.a.d("DefaultDownloadEngine", "getUnstartedTask() error: " + th.toString());
            }
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.impls.a
    public boolean a(int i2) {
        DownloadInfo d4;
        com.ss.android.socialbase.downloader.h.d dVar = f58367b;
        if (dVar == null || !dVar.a(i2) || (d4 = d(i2)) == null) {
            return false;
        }
        if (DownloadStatus.isDownloading(d4.getStatus())) {
            return true;
        }
        b(i2);
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.impls.a
    public void b(int i2) {
        com.ss.android.socialbase.downloader.h.d dVar = f58367b;
        if (dVar == null) {
            return;
        }
        dVar.c(i2);
    }

    @Override // com.ss.android.socialbase.downloader.impls.a
    protected com.ss.android.socialbase.downloader.h.c c(int i2) {
        com.ss.android.socialbase.downloader.h.d dVar = f58367b;
        if (dVar == null) {
            return null;
        }
        return dVar.b(i2);
    }

    @Override // com.ss.android.socialbase.downloader.impls.a
    public void a(com.ss.android.socialbase.downloader.h.c cVar) {
        com.ss.android.socialbase.downloader.h.d dVar = f58367b;
        if (dVar == null) {
            return;
        }
        dVar.b(cVar);
    }

    @Override // com.ss.android.socialbase.downloader.impls.a
    public void a(int i2, DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        com.ss.android.socialbase.downloader.c.a.b("DownloadTask", "start doDownload for task : " + i2);
        f58367b.a(new com.ss.android.socialbase.downloader.h.c(downloadTask, this.f58327a));
    }

    @Override // com.ss.android.socialbase.downloader.impls.a
    public List<Integer> a() {
        return f58367b.a();
    }

    @Override // com.ss.android.socialbase.downloader.impls.a
    public void a(int i2, long j4) {
        com.ss.android.socialbase.downloader.h.d dVar = f58367b;
        if (dVar == null) {
            return;
        }
        dVar.a(i2, j4);
    }
}
