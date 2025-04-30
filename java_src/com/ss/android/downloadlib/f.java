package com.ss.android.downloadlib;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.ss.android.download.api.config.IDownloadButtonClickListener;
import com.ss.android.download.api.config.OnItemClickListener;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.download.DownloadStatusChangeListener;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: DownloadDispatcher.java */
/* loaded from: classes4.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static volatile f f57431a;

    /* renamed from: f  reason: collision with root package name */
    private long f57436f;

    /* renamed from: c  reason: collision with root package name */
    private final List<com.ss.android.downloadlib.addownload.f> f57433c = new CopyOnWriteArrayList();

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, com.ss.android.downloadlib.addownload.f> f57434d = new ConcurrentHashMap();

    /* renamed from: e  reason: collision with root package name */
    private final CopyOnWriteArrayList<Object> f57435e = new CopyOnWriteArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private final Handler f57432b = new Handler(Looper.getMainLooper());

    private f() {
    }

    private synchronized void b(Context context, int i2, DownloadStatusChangeListener downloadStatusChangeListener, DownloadModel downloadModel) {
        if (this.f57433c.size() <= 0) {
            c(context, i2, downloadStatusChangeListener, downloadModel);
        } else {
            com.ss.android.downloadlib.addownload.f remove = this.f57433c.remove(0);
            remove.b(context).b(i2, downloadStatusChangeListener).b(downloadModel).a();
            this.f57434d.put(downloadModel.getDownloadUrl(), remove);
        }
    }

    private void c(Context context, int i2, DownloadStatusChangeListener downloadStatusChangeListener, DownloadModel downloadModel) {
        if (downloadModel == null) {
            return;
        }
        com.ss.android.downloadlib.addownload.e eVar = new com.ss.android.downloadlib.addownload.e();
        eVar.b(context).b(i2, downloadStatusChangeListener).b(downloadModel).a();
        this.f57434d.put(downloadModel.getDownloadUrl(), eVar);
    }

    private void d() {
        long currentTimeMillis = System.currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        for (com.ss.android.downloadlib.addownload.f fVar : this.f57433c) {
            if (!fVar.b() && currentTimeMillis - fVar.d() > q.a.f73955b) {
                fVar.h();
                arrayList.add(fVar);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.f57433c.removeAll(arrayList);
    }

    public static f a() {
        if (f57431a == null) {
            synchronized (f.class) {
                if (f57431a == null) {
                    f57431a = new f();
                }
            }
        }
        return f57431a;
    }

    private void c() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f57436f < q.a.f73955b) {
            return;
        }
        this.f57436f = currentTimeMillis;
        if (this.f57433c.isEmpty()) {
            return;
        }
        d();
    }

    public void a(Context context, int i2, DownloadStatusChangeListener downloadStatusChangeListener, DownloadModel downloadModel) {
        if (downloadModel == null || TextUtils.isEmpty(downloadModel.getDownloadUrl())) {
            return;
        }
        com.ss.android.downloadlib.addownload.f fVar = this.f57434d.get(downloadModel.getDownloadUrl());
        if (fVar != null) {
            fVar.b(context).b(i2, downloadStatusChangeListener).b(downloadModel).a();
        } else if (!this.f57433c.isEmpty()) {
            b(context, i2, downloadStatusChangeListener, downloadModel);
        } else {
            c(context, i2, downloadStatusChangeListener, downloadModel);
        }
    }

    public void b(final DownloadInfo downloadInfo, final String str) {
        this.f57432b.post(new Runnable() { // from class: com.ss.android.downloadlib.f.4
            @Override // java.lang.Runnable
            public void run() {
                Iterator it2 = f.this.f57435e.iterator();
                while (it2.hasNext()) {
                    Object next = it2.next();
                    if (next instanceof com.ss.android.download.api.download.a.a) {
                        ((com.ss.android.download.api.download.a.a) next).b(downloadInfo, str);
                    } else if (next instanceof SoftReference) {
                        SoftReference softReference = (SoftReference) next;
                        if (softReference.get() instanceof com.ss.android.download.api.download.a.a) {
                            ((com.ss.android.download.api.download.a.a) softReference.get()).b(downloadInfo, str);
                        }
                    }
                }
            }
        });
    }

    public Handler b() {
        return this.f57432b;
    }

    public com.ss.android.downloadlib.addownload.e a(String str) {
        Map<String, com.ss.android.downloadlib.addownload.f> map = this.f57434d;
        if (map != null && map.size() != 0 && !TextUtils.isEmpty(str)) {
            com.ss.android.downloadlib.addownload.f fVar = this.f57434d.get(str);
            if (fVar instanceof com.ss.android.downloadlib.addownload.e) {
                return (com.ss.android.downloadlib.addownload.e) fVar;
            }
        }
        return null;
    }

    public void a(String str, int i2) {
        com.ss.android.downloadlib.addownload.f fVar;
        if (TextUtils.isEmpty(str) || (fVar = this.f57434d.get(str)) == null) {
            return;
        }
        if (fVar.a(i2)) {
            this.f57433c.add(fVar);
            this.f57434d.remove(str);
        }
        c();
    }

    public void a(String str, boolean z3) {
        com.ss.android.downloadlib.addownload.f fVar;
        if (TextUtils.isEmpty(str) || (fVar = this.f57434d.get(str)) == null) {
            return;
        }
        fVar.a(z3);
    }

    public void a(String str, long j4, int i2, DownloadEventConfig downloadEventConfig, DownloadController downloadController) {
        a(str, j4, i2, downloadEventConfig, downloadController, null, null);
    }

    public void a(String str, long j4, int i2, DownloadEventConfig downloadEventConfig, DownloadController downloadController, IDownloadButtonClickListener iDownloadButtonClickListener) {
        a(str, j4, i2, downloadEventConfig, downloadController, null, iDownloadButtonClickListener);
    }

    public void a(String str, long j4, int i2, DownloadEventConfig downloadEventConfig, DownloadController downloadController, OnItemClickListener onItemClickListener, IDownloadButtonClickListener iDownloadButtonClickListener) {
        com.ss.android.downloadlib.addownload.f fVar;
        if (TextUtils.isEmpty(str) || (fVar = this.f57434d.get(str)) == null) {
            return;
        }
        fVar.a(j4).b(downloadEventConfig).b(downloadController).a(onItemClickListener).a(iDownloadButtonClickListener).b(i2);
    }

    public void a(com.ss.android.download.api.download.a.a aVar) {
        if (aVar != null) {
            if (com.ss.android.socialbase.downloader.g.a.c().b("fix_listener_oom", false)) {
                this.f57435e.add(new SoftReference(aVar));
            } else {
                this.f57435e.add(aVar);
            }
        }
    }

    public void a(final DownloadModel downloadModel, @Nullable final DownloadController downloadController, @Nullable final DownloadEventConfig downloadEventConfig) {
        this.f57432b.post(new Runnable() { // from class: com.ss.android.downloadlib.f.1
            @Override // java.lang.Runnable
            public void run() {
                Iterator it2 = f.this.f57435e.iterator();
                while (it2.hasNext()) {
                    Object next = it2.next();
                    if (next instanceof com.ss.android.download.api.download.a.a) {
                        ((com.ss.android.download.api.download.a.a) next).a(downloadModel, downloadController, downloadEventConfig);
                    } else if (next instanceof SoftReference) {
                        SoftReference softReference = (SoftReference) next;
                        if (softReference.get() instanceof com.ss.android.download.api.download.a.a) {
                            ((com.ss.android.download.api.download.a.a) softReference.get()).a(downloadModel, downloadController, downloadEventConfig);
                        }
                    }
                }
            }
        });
    }

    public void a(final DownloadInfo downloadInfo, final BaseException baseException, final String str) {
        this.f57432b.post(new Runnable() { // from class: com.ss.android.downloadlib.f.2
            @Override // java.lang.Runnable
            public void run() {
                Iterator it2 = f.this.f57435e.iterator();
                while (it2.hasNext()) {
                    Object next = it2.next();
                    if (next instanceof com.ss.android.download.api.download.a.a) {
                        ((com.ss.android.download.api.download.a.a) next).a(downloadInfo, baseException, str);
                    } else if (next instanceof SoftReference) {
                        SoftReference softReference = (SoftReference) next;
                        if (softReference.get() instanceof com.ss.android.download.api.download.a.a) {
                            ((com.ss.android.download.api.download.a.a) softReference.get()).a(downloadInfo, baseException, str);
                        }
                    }
                }
            }
        });
    }

    public void a(final DownloadInfo downloadInfo, final String str) {
        this.f57432b.post(new Runnable() { // from class: com.ss.android.downloadlib.f.3
            @Override // java.lang.Runnable
            public void run() {
                Iterator it2 = f.this.f57435e.iterator();
                while (it2.hasNext()) {
                    Object next = it2.next();
                    if (next instanceof com.ss.android.download.api.download.a.a) {
                        ((com.ss.android.download.api.download.a.a) next).a(downloadInfo, str);
                    } else if (next instanceof SoftReference) {
                        SoftReference softReference = (SoftReference) next;
                        if (softReference.get() instanceof com.ss.android.download.api.download.a.a) {
                            ((com.ss.android.download.api.download.a.a) softReference.get()).a(downloadInfo, str);
                        }
                    }
                }
            }
        });
    }

    public void a(final DownloadInfo downloadInfo) {
        this.f57432b.post(new Runnable() { // from class: com.ss.android.downloadlib.f.5
            @Override // java.lang.Runnable
            public void run() {
                Iterator it2 = f.this.f57435e.iterator();
                while (it2.hasNext()) {
                    Object next = it2.next();
                    if (next instanceof com.ss.android.download.api.download.a.a) {
                        ((com.ss.android.download.api.download.a.a) next).a(downloadInfo);
                    } else if (next instanceof SoftReference) {
                        SoftReference softReference = (SoftReference) next;
                        if (softReference.get() instanceof com.ss.android.download.api.download.a.a) {
                            ((com.ss.android.download.api.download.a.a) softReference.get()).a(downloadInfo);
                        }
                    }
                }
            }
        });
    }
}
