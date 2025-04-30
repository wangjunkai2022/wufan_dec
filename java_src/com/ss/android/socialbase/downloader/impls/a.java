package com.ss.android.socialbase.downloader.impls;

import android.database.sqlite.SQLiteException;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import com.ss.android.socialbase.downloader.constants.DownloadStatus;
import com.ss.android.socialbase.downloader.constants.EnqueueType;
import com.ss.android.socialbase.downloader.depend.IDownloadFileUriProvider;
import com.ss.android.socialbase.downloader.depend.IDownloadListener;
import com.ss.android.socialbase.downloader.depend.af;
import com.ss.android.socialbase.downloader.depend.x;
import com.ss.android.socialbase.downloader.depend.z;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.h.h;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;
/* compiled from: AbsDownloadEngine.java */
/* loaded from: classes4.dex */
public abstract class a implements h.a {

    /* renamed from: b  reason: collision with root package name */
    private final SparseArray<DownloadTask> f58328b = new SparseArray<>();

    /* renamed from: c  reason: collision with root package name */
    private final SparseArray<DownloadTask> f58329c = new SparseArray<>();

    /* renamed from: d  reason: collision with root package name */
    private final SparseArray<DownloadTask> f58330d = new SparseArray<>();

    /* renamed from: e  reason: collision with root package name */
    private final SparseArray<DownloadTask> f58331e = new SparseArray<>();

    /* renamed from: f  reason: collision with root package name */
    private final SparseArray<DownloadTask> f58332f = new SparseArray<>();

    /* renamed from: g  reason: collision with root package name */
    private final SparseArray<SparseArray<DownloadTask>> f58333g = new SparseArray<>();

    /* renamed from: h  reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.i.h<Integer, DownloadTask> f58334h = new com.ss.android.socialbase.downloader.i.h<>();

    /* renamed from: i  reason: collision with root package name */
    private final SparseArray<Long> f58335i = new SparseArray<>();

    /* renamed from: j  reason: collision with root package name */
    private final LinkedBlockingDeque<DownloadTask> f58336j = new LinkedBlockingDeque<>();

    /* renamed from: a  reason: collision with root package name */
    protected final com.ss.android.socialbase.downloader.h.h f58327a = new com.ss.android.socialbase.downloader.h.h(Looper.getMainLooper(), this);

    /* renamed from: k  reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.downloader.j f58337k = com.ss.android.socialbase.downloader.downloader.c.x();

    private void c(DownloadTask downloadTask) {
        DownloadInfo downloadInfo;
        if (downloadTask == null || (downloadInfo = downloadTask.getDownloadInfo()) == null) {
            return;
        }
        try {
            if (this.f58336j.isEmpty()) {
                a(downloadTask, true);
                this.f58336j.put(downloadTask);
            } else if (downloadInfo.getEnqueueType() == EnqueueType.ENQUEUE_TAIL) {
                if (this.f58336j.getFirst().getDownloadId() == downloadTask.getDownloadId() && a(downloadTask.getDownloadId())) {
                    return;
                }
                Iterator<DownloadTask> it2 = this.f58336j.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    DownloadTask next = it2.next();
                    if (next != null && next.getDownloadId() == downloadTask.getDownloadId()) {
                        it2.remove();
                        break;
                    }
                }
                this.f58336j.put(downloadTask);
                new com.ss.android.socialbase.downloader.downloader.f(downloadTask, this.f58327a).a();
            } else {
                DownloadTask first = this.f58336j.getFirst();
                if (first.getDownloadId() == downloadTask.getDownloadId() && a(downloadTask.getDownloadId())) {
                    return;
                }
                e(first.getDownloadId());
                a(downloadTask, true);
                if (first.getDownloadId() != downloadTask.getDownloadId()) {
                    this.f58336j.putFirst(downloadTask);
                }
            }
        } catch (InterruptedException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DownloadTask o(int i2) {
        DownloadTask downloadTask = this.f58328b.get(i2);
        if (downloadTask == null) {
            DownloadTask downloadTask2 = this.f58330d.get(i2);
            if (downloadTask2 == null) {
                DownloadTask downloadTask3 = this.f58329c.get(i2);
                if (downloadTask3 == null) {
                    DownloadTask downloadTask4 = this.f58331e.get(i2);
                    return downloadTask4 == null ? this.f58332f.get(i2) : downloadTask4;
                }
                return downloadTask3;
            }
            return downloadTask2;
        }
        return downloadTask;
    }

    private void p(int i2) {
        DownloadTask first;
        if (this.f58336j.isEmpty()) {
            return;
        }
        DownloadTask first2 = this.f58336j.getFirst();
        if (first2 != null && first2.getDownloadId() == i2) {
            this.f58336j.poll();
        }
        if (this.f58336j.isEmpty() || (first = this.f58336j.getFirst()) == null) {
            return;
        }
        a(first, true);
    }

    protected abstract List<Integer> a();

    public abstract void a(int i2, long j4);

    protected abstract void a(int i2, DownloadTask downloadTask);

    public abstract void a(com.ss.android.socialbase.downloader.h.c cVar);

    public abstract boolean a(int i2);

    protected abstract void b(int i2);

    protected abstract com.ss.android.socialbase.downloader.h.c c(int i2);

    public synchronized DownloadInfo d(int i2) {
        DownloadInfo b4;
        DownloadTask downloadTask;
        b4 = this.f58337k.b(i2);
        if (b4 == null && (downloadTask = this.f58328b.get(i2)) != null) {
            b4 = downloadTask.getDownloadInfo();
        }
        return b4;
    }

    public synchronized boolean e(int i2) {
        com.ss.android.socialbase.downloader.c.a.b("AbsDownloadEngine", "pause id=" + i2);
        DownloadInfo b4 = this.f58337k.b(i2);
        if (b4 == null || b4.getStatus() != 11) {
            synchronized (this.f58328b) {
                b(i2);
            }
            if (b4 == null) {
                DownloadTask downloadTask = this.f58328b.get(i2);
                if (downloadTask != null) {
                    new com.ss.android.socialbase.downloader.downloader.f(downloadTask, this.f58327a).d();
                    return true;
                }
            } else {
                a(b4);
                if (b4.getStatus() == 1) {
                    DownloadTask downloadTask2 = this.f58328b.get(i2);
                    if (downloadTask2 != null) {
                        new com.ss.android.socialbase.downloader.downloader.f(downloadTask2, this.f58327a).d();
                        return true;
                    }
                } else if (DownloadStatus.isDownloading(b4.getStatus())) {
                    b4.setStatus(-2);
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public synchronized boolean f(int i2) {
        DownloadTask downloadTask = this.f58328b.get(i2);
        if (downloadTask != null) {
            DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
            if (downloadInfo != null) {
                downloadInfo.setDownloadFromReserveWifi(false);
            }
            a(downloadTask);
        } else {
            g(i2);
        }
        return true;
    }

    public synchronized boolean g(int i2) {
        DownloadTask downloadTask = this.f58330d.get(i2);
        if (downloadTask == null) {
            downloadTask = this.f58331e.get(i2);
        }
        if (downloadTask != null) {
            DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
            if (downloadInfo != null) {
                downloadInfo.setDownloadFromReserveWifi(false);
            }
            a(downloadTask);
            return true;
        }
        return false;
    }

    public synchronized af h(int i2) {
        DownloadTask downloadTask = this.f58328b.get(i2);
        if (downloadTask != null) {
            return downloadTask.getNotificationClickCallback();
        }
        DownloadTask downloadTask2 = this.f58329c.get(i2);
        if (downloadTask2 != null) {
            return downloadTask2.getNotificationClickCallback();
        }
        DownloadTask downloadTask3 = this.f58330d.get(i2);
        if (downloadTask3 != null) {
            return downloadTask3.getNotificationClickCallback();
        }
        DownloadTask downloadTask4 = this.f58331e.get(i2);
        if (downloadTask4 != null) {
            return downloadTask4.getNotificationClickCallback();
        }
        DownloadTask downloadTask5 = this.f58332f.get(i2);
        if (downloadTask5 != null) {
            return downloadTask5.getNotificationClickCallback();
        }
        return null;
    }

    public synchronized z i(int i2) {
        DownloadTask downloadTask = this.f58328b.get(i2);
        if (downloadTask != null) {
            return downloadTask.getNotificationEventListener();
        }
        DownloadTask downloadTask2 = this.f58329c.get(i2);
        if (downloadTask2 != null) {
            return downloadTask2.getNotificationEventListener();
        }
        DownloadTask downloadTask3 = this.f58330d.get(i2);
        if (downloadTask3 != null) {
            return downloadTask3.getNotificationEventListener();
        }
        DownloadTask downloadTask4 = this.f58331e.get(i2);
        if (downloadTask4 != null) {
            return downloadTask4.getNotificationEventListener();
        }
        DownloadTask downloadTask5 = this.f58332f.get(i2);
        if (downloadTask5 != null) {
            return downloadTask5.getNotificationEventListener();
        }
        return null;
    }

    public synchronized IDownloadFileUriProvider j(int i2) {
        DownloadTask downloadTask = this.f58328b.get(i2);
        if (downloadTask != null) {
            return downloadTask.getFileUriProvider();
        }
        DownloadTask downloadTask2 = this.f58329c.get(i2);
        if (downloadTask2 != null) {
            return downloadTask2.getFileUriProvider();
        }
        DownloadTask downloadTask3 = this.f58330d.get(i2);
        if (downloadTask3 != null) {
            return downloadTask3.getFileUriProvider();
        }
        DownloadTask downloadTask4 = this.f58331e.get(i2);
        if (downloadTask4 != null) {
            return downloadTask4.getFileUriProvider();
        }
        DownloadTask downloadTask5 = this.f58332f.get(i2);
        if (downloadTask5 != null) {
            return downloadTask5.getFileUriProvider();
        }
        return null;
    }

    public synchronized boolean k(int i2) {
        DownloadInfo downloadInfo;
        DownloadTask downloadTask = this.f58331e.get(i2);
        if (downloadTask != null && (downloadInfo = downloadTask.getDownloadInfo()) != null) {
            if (downloadInfo.canStartRetryDelayTask()) {
                a(downloadTask, false);
            }
            return true;
        }
        DownloadInfo b4 = this.f58337k.b(i2);
        if (b4 != null && b4.canStartRetryDelayTask()) {
            a(new DownloadTask(b4), false);
        }
        return false;
    }

    public synchronized boolean l(int i2) {
        DownloadInfo downloadInfo;
        DownloadTask downloadTask = this.f58332f.get(i2);
        if (downloadTask == null || (downloadInfo = downloadTask.getDownloadInfo()) == null) {
            return false;
        }
        if (downloadInfo.canReStartAsyncTask()) {
            a(downloadTask);
        }
        return true;
    }

    public synchronized void m(int i2) {
        DownloadInfo downloadInfo;
        DownloadTask downloadTask = this.f58328b.get(i2);
        if (downloadTask != null && (downloadInfo = downloadTask.getDownloadInfo()) != null) {
            downloadInfo.setForceIgnoreRecommendSize(true);
            a(downloadTask);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
        if (r1.f58330d.get(r2) != null) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean n(int r2) {
        /*
            r1 = this;
            monitor-enter(r1)
            if (r2 == 0) goto L18
            android.util.SparseArray<com.ss.android.socialbase.downloader.model.DownloadTask> r0 = r1.f58328b     // Catch: java.lang.Throwable -> L15
            java.lang.Object r0 = r0.get(r2)     // Catch: java.lang.Throwable -> L15
            if (r0 != 0) goto L13
            android.util.SparseArray<com.ss.android.socialbase.downloader.model.DownloadTask> r0 = r1.f58330d     // Catch: java.lang.Throwable -> L15
            java.lang.Object r2 = r0.get(r2)     // Catch: java.lang.Throwable -> L15
            if (r2 == 0) goto L18
        L13:
            r2 = 1
            goto L19
        L15:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        L18:
            r2 = 0
        L19:
            monitor-exit(r1)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.impls.a.n(int):boolean");
    }

    private void b(DownloadTask downloadTask) {
        int hashCodeForSameTask = downloadTask.getHashCodeForSameTask();
        if (hashCodeForSameTask == 0 && downloadTask.isAutoSetHashCodeForSameTask()) {
            hashCodeForSameTask = downloadTask.autoCalAndGetHashCodeForSameTask();
        }
        if (hashCodeForSameTask == 0) {
            return;
        }
        SparseArray<DownloadTask> sparseArray = this.f58333g.get(downloadTask.getDownloadId());
        if (sparseArray == null) {
            sparseArray = new SparseArray<>();
            this.f58333g.put(downloadTask.getDownloadId(), sparseArray);
        }
        com.ss.android.socialbase.downloader.c.a.b("AbsDownloadEngine", "tryCacheSameTaskWithListenerHashCode id:" + downloadTask.getDownloadId() + " listener hasCode:" + hashCodeForSameTask);
        sparseArray.put(hashCodeForSameTask, downloadTask);
    }

    private void a(DownloadTask downloadTask, boolean z3) {
        DownloadInfo downloadInfo;
        int i2;
        DownloadInfo downloadInfo2;
        DownloadTask remove;
        if (downloadTask == null || (downloadInfo = downloadTask.getDownloadInfo()) == null) {
            return;
        }
        if (downloadInfo.isEntityInvalid()) {
            x monitorDepend = downloadTask.getMonitorDepend();
            com.ss.android.socialbase.downloader.d.a.a(monitorDepend, downloadInfo, new BaseException(1003, "downloadInfo is Invalid, url is " + downloadInfo.getUrl() + " name is " + downloadInfo.getName() + " savePath is " + downloadInfo.getSavePath()), downloadInfo.getStatus());
            return;
        }
        boolean z4 = false;
        if (com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).a("no_net_opt", 0) == 1 && !com.ss.android.socialbase.downloader.i.f.c(com.ss.android.socialbase.downloader.downloader.c.N()) && !downloadInfo.isFirstDownload()) {
            new com.ss.android.socialbase.downloader.downloader.f(downloadTask, this.f58327a).a(new BaseException(1049, "network_not_available"));
            return;
        }
        int id = downloadInfo.getId();
        if (z3) {
            a(downloadInfo);
        }
        if (this.f58330d.get(id) != null) {
            this.f58330d.remove(id);
        }
        if (this.f58329c.get(id) != null) {
            this.f58329c.remove(id);
        }
        if (this.f58331e.get(id) != null) {
            this.f58331e.remove(id);
        }
        if (this.f58332f.get(id) != null) {
            this.f58332f.remove(id);
        }
        if (a(id) && !downloadInfo.canReStartAsyncTask()) {
            com.ss.android.socialbase.downloader.c.a.b("AbsDownloadEngine", "another task with same id is downloading when tryDownload");
            downloadTask.addListenerToDownloadingSameTask();
            com.ss.android.socialbase.downloader.d.a.a(downloadTask.getMonitorDepend(), downloadInfo, new BaseException(1003, "downloadInfo is isDownloading and addListenerToSameTask is false"), downloadInfo.getStatus());
            return;
        }
        com.ss.android.socialbase.downloader.c.a.b("AbsDownloadEngine", "no downloading task :" + id);
        if (downloadInfo.canReStartAsyncTask()) {
            downloadInfo.setAsyncHandleStatus(com.ss.android.socialbase.downloader.constants.a.ASYNC_HANDLE_RESTART);
        }
        if (com.ss.android.socialbase.downloader.i.a.a(32768) && (remove = this.f58334h.remove(Integer.valueOf(id))) != null) {
            downloadTask.copyListenerFromPendingTask(remove);
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        DownloadTask downloadTask2 = this.f58328b.get(id);
        if (downloadTask2 == null || (downloadInfo2 = downloadTask2.getDownloadInfo()) == null) {
            i2 = 0;
        } else {
            i2 = downloadInfo2.getStatus();
            if (DownloadStatus.isDownloading(i2)) {
                z4 = true;
            }
        }
        com.ss.android.socialbase.downloader.c.a.b("AbsDownloadEngine", "can add listener " + z4 + " , oldTaskStatus is :" + i2);
        if (z4) {
            downloadTask.addListenerToDownloadingSameTask();
            return;
        }
        b(downloadTask);
        this.f58328b.put(id, downloadTask);
        this.f58335i.put(id, Long.valueOf(uptimeMillis));
        a(id, downloadTask);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void d(int i2, boolean z3) {
        com.ss.android.socialbase.downloader.c.a.b("AbsDownloadEngine", "clearDownloadDataInSubThread::id=" + i2 + " deleteTargetFile=" + z3);
        DownloadInfo b4 = this.f58337k.b(i2);
        if (b4 != null) {
            if (z3) {
                com.ss.android.socialbase.downloader.i.f.a(b4);
            } else {
                com.ss.android.socialbase.downloader.i.f.c(b4.getTempPath(), b4.getTempName());
            }
            b4.erase();
        }
        try {
            this.f58337k.f(i2);
        } catch (SQLiteException e4) {
            e4.printStackTrace();
        }
        a(i2, 0, -4);
        if (this.f58330d.get(i2) != null) {
            this.f58330d.remove(i2);
        }
        if (this.f58329c.get(i2) != null) {
            this.f58329c.remove(i2);
        }
        this.f58334h.remove(Integer.valueOf(i2));
        com.ss.android.socialbase.downloader.g.a.b(i2);
    }

    public synchronized void b(List<String> list) {
        DownloadInfo downloadInfo;
        try {
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (com.ss.android.socialbase.downloader.i.f.b(com.ss.android.socialbase.downloader.downloader.c.N())) {
            for (int i2 = 0; i2 < this.f58328b.size(); i2++) {
                DownloadTask downloadTask = this.f58328b.get(this.f58328b.keyAt(i2));
                if (downloadTask != null && (downloadInfo = downloadTask.getDownloadInfo()) != null && downloadInfo.getMimeType() != null && list.contains(downloadInfo.getMimeType()) && b(downloadInfo)) {
                    downloadInfo.setAutoResumed(true);
                    downloadInfo.setShowNotificationForNetworkResumed(true);
                    a(downloadTask);
                    downloadInfo.setDownloadFromReserveWifi(true);
                    com.ss.android.socialbase.downloader.downloader.r reserveWifiStatusListener = Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.c.N()).getReserveWifiStatusListener();
                    if (reserveWifiStatusListener != null) {
                        reserveWifiStatusListener.a(downloadInfo, 5, 2);
                    }
                }
            }
        }
    }

    public void c(final int i2, final boolean z3) {
        DownloadInfo b4 = this.f58337k.b(i2);
        if (b4 != null) {
            a(b4);
        }
        this.f58327a.post(new Runnable() { // from class: com.ss.android.socialbase.downloader.impls.a.4
            @Override // java.lang.Runnable
            public void run() {
                com.ss.android.socialbase.downloader.notification.b.a().f(i2);
            }
        });
        com.ss.android.socialbase.downloader.downloader.c.a(new Runnable() { // from class: com.ss.android.socialbase.downloader.impls.a.5
            @Override // java.lang.Runnable
            public void run() {
                a.this.c(i2);
                a.this.e(i2, z3);
            }
        }, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i2, boolean z3) {
        try {
            DownloadInfo b4 = this.f58337k.b(i2);
            if (b4 != null) {
                com.ss.android.socialbase.downloader.i.f.a(b4, z3);
                b4.erase();
            }
            try {
                this.f58337k.d(i2);
                this.f58337k.a(b4);
            } catch (SQLiteException e4) {
                e4.printStackTrace();
            }
            if (this.f58330d.get(i2) != null) {
                this.f58330d.remove(i2);
            }
            if (this.f58329c.get(i2) != null) {
                this.f58329c.remove(i2);
            }
            this.f58334h.remove(Integer.valueOf(i2));
            com.ss.android.socialbase.downloader.g.a.b(i2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private boolean b(DownloadInfo downloadInfo) {
        if (downloadInfo != null && downloadInfo.statusInPause()) {
            return downloadInfo.isPauseReserveOnWifi();
        }
        return false;
    }

    public void b() {
        List<Integer> a4 = a();
        if (a4 == null) {
            return;
        }
        for (Integer num : a4) {
            e(num.intValue());
        }
    }

    public void b(final int i2, final boolean z3) {
        DownloadInfo b4 = this.f58337k.b(i2);
        if (b4 != null) {
            a(b4);
        }
        this.f58327a.post(new Runnable() { // from class: com.ss.android.socialbase.downloader.impls.a.2
            @Override // java.lang.Runnable
            public void run() {
                com.ss.android.socialbase.downloader.notification.b.a().f(i2);
            }
        });
        com.ss.android.socialbase.downloader.downloader.c.a(new Runnable() { // from class: com.ss.android.socialbase.downloader.impls.a.3
            @Override // java.lang.Runnable
            public void run() {
                DownloadTask o3;
                if (a.this.c(i2) == null && (o3 = a.this.o(i2)) != null) {
                    DownloadInfo downloadInfo = o3.getDownloadInfo();
                    SparseArray<IDownloadListener> downloadListeners = o3.getDownloadListeners(com.ss.android.socialbase.downloader.constants.f.SUB);
                    if (downloadListeners != null) {
                        synchronized (downloadListeners) {
                            for (int i4 = 0; i4 < downloadListeners.size(); i4++) {
                                IDownloadListener iDownloadListener = downloadListeners.get(downloadListeners.keyAt(i4));
                                if (iDownloadListener != null) {
                                    iDownloadListener.onCanceled(downloadInfo);
                                }
                            }
                        }
                    }
                }
                a.this.d(i2, z3);
            }
        }, false);
    }

    public synchronized void b(int i2, int i4, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.f fVar, boolean z3) {
        a(i2, i4, iDownloadListener, fVar, z3, true);
    }

    public List<DownloadInfo> b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Integer num : a()) {
            DownloadInfo d4 = d(num.intValue());
            if (d4 != null && str.equals(d4.getMimeType())) {
                arrayList.add(d4);
            }
        }
        return arrayList;
    }

    public synchronized void a(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
        if (downloadInfo == null) {
            return;
        }
        downloadInfo.setDownloadFromReserveWifi(false);
        if (downloadInfo.getEnqueueType() != EnqueueType.ENQUEUE_NONE) {
            c(downloadTask);
        } else {
            a(downloadTask, true);
        }
    }

    public void b(int i2, long j4) {
        DownloadInfo b4 = this.f58337k.b(i2);
        if (b4 != null) {
            b4.setThrottleNetSpeed(j4);
        }
        a(i2, j4);
    }

    public synchronized List<DownloadInfo> a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        List<DownloadInfo> a4 = this.f58337k.a(str);
        if (a4 == null || a4.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            int size = this.f58328b.size();
            for (int i2 = 0; i2 < size; i2++) {
                DownloadTask valueAt = this.f58328b.valueAt(i2);
                if (valueAt != null && valueAt.getDownloadInfo() != null && str.equals(valueAt.getDownloadInfo().getUrl())) {
                    arrayList.add(valueAt.getDownloadInfo());
                }
            }
            return arrayList;
        }
        return a4;
    }

    public synchronized boolean a(int i2, boolean z3) {
        DownloadTask downloadTask = this.f58328b.get(i2);
        if (downloadTask == null && com.ss.android.socialbase.downloader.i.a.a(65536)) {
            downloadTask = o(i2);
        }
        if (downloadTask != null) {
            if (!com.ss.android.socialbase.downloader.g.a.a(i2).b("fix_on_cancel_call_twice", true)) {
                new com.ss.android.socialbase.downloader.downloader.f(downloadTask, this.f58327a).c();
            }
            final DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
            final SparseArray<IDownloadListener> downloadListeners = downloadTask.getDownloadListeners(com.ss.android.socialbase.downloader.constants.f.MAIN);
            final SparseArray<IDownloadListener> downloadListeners2 = downloadTask.getDownloadListeners(com.ss.android.socialbase.downloader.constants.f.NOTIFICATION);
            this.f58327a.post(new Runnable() { // from class: com.ss.android.socialbase.downloader.impls.a.1
                @Override // java.lang.Runnable
                public void run() {
                    SparseArray sparseArray;
                    SparseArray sparseArray2 = downloadListeners;
                    if (sparseArray2 != null) {
                        synchronized (sparseArray2) {
                            for (int i4 = 0; i4 < downloadListeners.size(); i4++) {
                                IDownloadListener iDownloadListener = (IDownloadListener) downloadListeners.get(downloadListeners.keyAt(i4));
                                if (iDownloadListener != null) {
                                    iDownloadListener.onCanceled(downloadInfo);
                                }
                            }
                        }
                    }
                    DownloadInfo downloadInfo2 = downloadInfo;
                    if (downloadInfo2 == null || !downloadInfo2.canShowNotification() || (sparseArray = downloadListeners2) == null) {
                        return;
                    }
                    synchronized (sparseArray) {
                        for (int i5 = 0; i5 < downloadListeners2.size(); i5++) {
                            IDownloadListener iDownloadListener2 = (IDownloadListener) downloadListeners2.get(downloadListeners2.keyAt(i5));
                            if (iDownloadListener2 != null) {
                                iDownloadListener2.onCanceled(downloadInfo);
                            }
                        }
                    }
                }
            });
        }
        DownloadInfo b4 = this.f58337k.b(i2);
        if (com.ss.android.socialbase.downloader.i.a.a(65536)) {
            if (b4 != null) {
                b4.setStatus(-4);
            }
        } else if (b4 != null && DownloadStatus.isDownloading(b4.getStatus())) {
            b4.setStatus(-4);
        }
        b(i2, z3);
        return true;
    }

    private void a(DownloadInfo downloadInfo) {
        if (downloadInfo != null) {
            try {
                if (downloadInfo.getStatus() == 7 || downloadInfo.getRetryDelayStatus() != com.ss.android.socialbase.downloader.constants.g.DELAY_RETRY_NONE) {
                    downloadInfo.setStatus(5);
                    downloadInfo.setRetryDelayStatus(com.ss.android.socialbase.downloader.constants.g.DELAY_RETRY_NONE);
                    com.ss.android.socialbase.downloader.c.a.b("AbsDownloadEngine", "cancelAlarm");
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public synchronized void a(int i2, z zVar) {
        DownloadTask downloadTask = this.f58328b.get(i2);
        if (downloadTask != null) {
            downloadTask.setNotificationEventListener(zVar);
        }
    }

    public synchronized void a(List<String> list) {
        DownloadInfo downloadInfo;
        try {
            boolean b4 = com.ss.android.socialbase.downloader.i.a.a(1048576) ? com.ss.android.socialbase.downloader.i.f.b(com.ss.android.socialbase.downloader.downloader.c.N()) : true;
            for (int i2 = 0; i2 < this.f58330d.size(); i2++) {
                DownloadTask downloadTask = this.f58330d.get(this.f58330d.keyAt(i2));
                if (downloadTask != null && (downloadInfo = downloadTask.getDownloadInfo()) != null && downloadInfo.getMimeType() != null && list.contains(downloadInfo.getMimeType()) && (!downloadInfo.isOnlyWifi() || b4)) {
                    downloadInfo.setAutoResumed(true);
                    downloadInfo.setShowNotificationForNetworkResumed(true);
                    a(downloadTask);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public synchronized void a(int i2, int i4, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.f fVar, boolean z3) {
        DownloadTask o3 = o(i2);
        if (o3 == null) {
            o3 = this.f58334h.get(Integer.valueOf(i2));
        }
        if (o3 != null) {
            o3.removeDownloadListener(i4, iDownloadListener, fVar, z3);
        }
    }

    public synchronized void a(int i2, int i4, final IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.f fVar, boolean z3, boolean z4) {
        DownloadInfo b4;
        DownloadTask o3 = o(i2);
        if (o3 != null) {
            o3.addDownloadListener(i4, iDownloadListener, fVar, z3);
            final DownloadInfo downloadInfo = o3.getDownloadInfo();
            if (z4 && downloadInfo != null && !a(i2) && (fVar == com.ss.android.socialbase.downloader.constants.f.MAIN || fVar == com.ss.android.socialbase.downloader.constants.f.NOTIFICATION)) {
                boolean z5 = true;
                if (fVar == com.ss.android.socialbase.downloader.constants.f.NOTIFICATION && !downloadInfo.canShowNotification()) {
                    z5 = false;
                }
                if (z5) {
                    this.f58327a.post(new Runnable() { // from class: com.ss.android.socialbase.downloader.impls.a.6
                        @Override // java.lang.Runnable
                        public void run() {
                            if (iDownloadListener != null) {
                                if (downloadInfo.getStatus() == -3) {
                                    iDownloadListener.onSuccessed(downloadInfo);
                                } else if (downloadInfo.getStatus() == -1) {
                                    iDownloadListener.onFailed(downloadInfo, new BaseException(1000, "try add listener for failed task"));
                                }
                            }
                        }
                    });
                }
            }
        } else if (com.ss.android.socialbase.downloader.i.a.a(32768) && (b4 = this.f58337k.b(i2)) != null && b4.getStatus() != -3) {
            DownloadTask downloadTask = this.f58334h.get(Integer.valueOf(i2));
            if (downloadTask == null) {
                downloadTask = new DownloadTask(b4);
                this.f58334h.put(Integer.valueOf(i2), downloadTask);
            }
            downloadTask.addDownloadListener(i4, iDownloadListener, fVar, z3);
        }
    }

    private void a(int i2, BaseException baseException, DownloadTask downloadTask) {
        if (downloadTask != null) {
            DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
            SparseArray<IDownloadListener> downloadListeners = downloadTask.getDownloadListeners(com.ss.android.socialbase.downloader.constants.f.MAIN);
            SparseArray<IDownloadListener> downloadListeners2 = downloadTask.getDownloadListeners(com.ss.android.socialbase.downloader.constants.f.NOTIFICATION);
            boolean z3 = downloadTask.canShowNotification() || downloadInfo.isAutoInstallWithoutNotification();
            com.ss.android.socialbase.downloader.i.c.a(i2, downloadListeners, true, downloadInfo, baseException);
            com.ss.android.socialbase.downloader.i.c.a(i2, downloadListeners2, z3, downloadInfo, baseException);
        }
    }

    private void a(int i2, int i4) {
        com.ss.android.socialbase.downloader.c.a.b("AbsDownloadEngine", "removeTask id: " + i2 + " listener hasCode: " + i4);
        if (i4 == 0) {
            this.f58328b.remove(i2);
            this.f58333g.remove(i2);
            return;
        }
        SparseArray<DownloadTask> sparseArray = this.f58333g.get(i2);
        if (sparseArray != null) {
            sparseArray.remove(i4);
            com.ss.android.socialbase.downloader.c.a.b("AbsDownloadEngine", "after downloadTaskWithListenerMap removeTask taskArray.size: " + sparseArray.size());
            if (sparseArray.size() == 0) {
                this.f58328b.remove(i2);
                this.f58333g.remove(i2);
                return;
            }
            return;
        }
        this.f58328b.remove(i2);
    }

    public synchronized void a(int i2, int i4, int i5) {
        if (i5 != -7) {
            if (i5 == -6) {
                this.f58329c.put(i2, this.f58328b.get(i2));
                a(i2, i4);
            } else if (i5 == -4) {
                a(i2, i4);
                p(i2);
            } else if (i5 == -3) {
                this.f58329c.put(i2, this.f58328b.get(i2));
                a(i2, i4);
                p(i2);
            } else if (i5 != -1) {
                if (i5 == 7) {
                    DownloadTask downloadTask = this.f58328b.get(i2);
                    if (downloadTask != null) {
                        if (this.f58331e.get(i2) == null) {
                            this.f58331e.put(i2, downloadTask);
                        }
                        a(i2, i4);
                    }
                    p(i2);
                } else if (i5 == 8) {
                    DownloadTask downloadTask2 = this.f58328b.get(i2);
                    if (downloadTask2 != null && this.f58332f.get(i2) == null) {
                        this.f58332f.put(i2, downloadTask2);
                    }
                    p(i2);
                }
            }
        }
        DownloadTask downloadTask3 = this.f58328b.get(i2);
        if (downloadTask3 != null) {
            if (this.f58330d.get(i2) == null) {
                this.f58330d.put(i2, downloadTask3);
            }
            a(i2, i4);
        }
        p(i2);
    }

    @Override // com.ss.android.socialbase.downloader.h.h.a
    public void a(Message message) {
        int i2 = message.arg1;
        int i4 = message.arg2;
        com.ss.android.socialbase.downloader.c.a.b("AbsDownloadEngine", "handleMsg id: " + i2 + " listener hasCode: " + i4);
        Object obj = message.obj;
        DownloadTask downloadTask = null;
        BaseException baseException = obj instanceof Exception ? (BaseException) obj : null;
        synchronized (this) {
            if (i4 == 0) {
                downloadTask = this.f58328b.get(i2);
            } else {
                SparseArray<DownloadTask> sparseArray = this.f58333g.get(i2);
                if (sparseArray != null) {
                    downloadTask = sparseArray.get(i4);
                }
            }
            if (downloadTask == null) {
                return;
            }
            a(message.what, baseException, downloadTask);
            a(i2, i4, message.what);
        }
    }
}
