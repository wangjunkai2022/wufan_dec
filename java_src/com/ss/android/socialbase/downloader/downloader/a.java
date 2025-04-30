package com.ss.android.socialbase.downloader.downloader;

import android.app.Notification;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.SparseArray;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* compiled from: AbsDownloadServiceHandler.java */
/* loaded from: classes4.dex */
public abstract class a implements o {

    /* renamed from: e  reason: collision with root package name */
    private static final String f57942e = "a";

    /* renamed from: c  reason: collision with root package name */
    protected volatile boolean f57945c;

    /* renamed from: f  reason: collision with root package name */
    private WeakReference<Service> f57947f;

    /* renamed from: a  reason: collision with root package name */
    protected final SparseArray<List<DownloadTask>> f57943a = new SparseArray<>();

    /* renamed from: b  reason: collision with root package name */
    protected volatile boolean f57944b = false;

    /* renamed from: d  reason: collision with root package name */
    protected volatile boolean f57946d = false;

    /* renamed from: g  reason: collision with root package name */
    private Handler f57948g = new Handler(Looper.getMainLooper());

    /* renamed from: h  reason: collision with root package name */
    private Runnable f57949h = new Runnable() { // from class: com.ss.android.socialbase.downloader.downloader.a.1
        @Override // java.lang.Runnable
        public void run() {
            if (com.ss.android.socialbase.downloader.c.a.a()) {
                com.ss.android.socialbase.downloader.c.a.b(a.f57942e, "tryDownload: 2 try");
            }
            if (a.this.f57944b) {
                return;
            }
            if (com.ss.android.socialbase.downloader.c.a.a()) {
                com.ss.android.socialbase.downloader.c.a.b(a.f57942e, "tryDownload: 2 error");
            }
            a.this.startService(c.N(), null);
        }
    };

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void a(Intent intent, int i2, int i4) {
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void a(n nVar) {
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void a(WeakReference weakReference) {
        this.f57947f = weakReference;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public boolean b() {
        String str = f57942e;
        com.ss.android.socialbase.downloader.c.a.c(str, "isServiceForeground = " + this.f57945c);
        return this.f57945c;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void c() {
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void c(DownloadTask downloadTask) {
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void d() {
        this.f57944b = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e() {
        SparseArray<List<DownloadTask>> clone;
        synchronized (this.f57943a) {
            String str = f57942e;
            com.ss.android.socialbase.downloader.c.a.b(str, "resumePendingTask pendingTasks.size:" + this.f57943a.size());
            clone = this.f57943a.clone();
            this.f57943a.clear();
        }
        com.ss.android.socialbase.downloader.impls.a C = c.C();
        if (C != null) {
            for (int i2 = 0; i2 < clone.size(); i2++) {
                List<DownloadTask> list = clone.get(clone.keyAt(i2));
                if (list != null) {
                    for (DownloadTask downloadTask : list) {
                        String str2 = f57942e;
                        com.ss.android.socialbase.downloader.c.a.b(str2, "resumePendingTask key:" + downloadTask.getDownloadId());
                        C.a(downloadTask);
                    }
                }
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void startService() {
        if (this.f57944b) {
            return;
        }
        if (com.ss.android.socialbase.downloader.c.a.a()) {
            com.ss.android.socialbase.downloader.c.a.b(f57942e, "startService");
        }
        startService(c.N(), null);
    }

    protected void startService(Context context, ServiceConnection serviceConnection) {
    }

    protected void stopService(Context context, ServiceConnection serviceConnection) {
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public boolean a() {
        return this.f57944b;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public IBinder a(Intent intent) {
        com.ss.android.socialbase.downloader.c.a.b(f57942e, "onBind Abs");
        return new Binder();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void b(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        if (!this.f57944b) {
            if (com.ss.android.socialbase.downloader.c.a.a()) {
                com.ss.android.socialbase.downloader.c.a.b(f57942e, "tryDownload but service is not alive");
            }
            if (com.ss.android.socialbase.downloader.i.a.a(262144)) {
                a(downloadTask);
                if (!this.f57946d) {
                    if (com.ss.android.socialbase.downloader.c.a.a()) {
                        com.ss.android.socialbase.downloader.c.a.b(f57942e, "tryDownload: 1");
                    }
                    startService(c.N(), null);
                    this.f57946d = true;
                    return;
                }
                this.f57948g.removeCallbacks(this.f57949h);
                this.f57948g.postDelayed(this.f57949h, 10L);
                return;
            }
            a(downloadTask);
            startService(c.N(), null);
            return;
        }
        String str = f57942e;
        com.ss.android.socialbase.downloader.c.a.b(str, "tryDownload when isServiceAlive");
        e();
        com.ss.android.socialbase.downloader.impls.a C = c.C();
        if (C != null) {
            com.ss.android.socialbase.downloader.c.a.b(str, "tryDownload current task: " + downloadTask.getDownloadId());
            C.a(downloadTask);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void a(int i2, Notification notification) {
        WeakReference<Service> weakReference = this.f57947f;
        if (weakReference != null && weakReference.get() != null) {
            String str = f57942e;
            com.ss.android.socialbase.downloader.c.a.c(str, "startForeground  id = " + i2 + ", service = " + this.f57947f.get() + ",  isServiceAlive = " + this.f57944b);
            try {
                this.f57947f.get().startForeground(i2, notification);
                this.f57945c = true;
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        com.ss.android.socialbase.downloader.c.a.d(f57942e, "startForeground: downloadService is null, do nothing!");
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void a(boolean z3) {
        WeakReference<Service> weakReference = this.f57947f;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        String str = f57942e;
        com.ss.android.socialbase.downloader.c.a.c(str, "stopForeground  service = " + this.f57947f.get() + ",  isServiceAlive = " + this.f57944b);
        try {
            this.f57945c = false;
            this.f57947f.get().stopForeground(z3);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void a(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        int downloadId = downloadTask.getDownloadId();
        synchronized (this.f57943a) {
            String str = f57942e;
            com.ss.android.socialbase.downloader.c.a.b(str, "pendDownloadTask pendingTasks.size:" + this.f57943a.size() + " downloadId:" + downloadId);
            List<DownloadTask> list = this.f57943a.get(downloadId);
            if (list == null) {
                list = new ArrayList<>();
                this.f57943a.put(downloadId, list);
            }
            com.ss.android.socialbase.downloader.c.a.b(str, "before pendDownloadTask taskArray.size:" + list.size());
            list.add(downloadTask);
            com.ss.android.socialbase.downloader.c.a.b(str, "after pendDownloadTask pendingTasks.size:" + this.f57943a.size());
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void a(int i2) {
        com.ss.android.socialbase.downloader.c.a.a(i2);
    }
}
