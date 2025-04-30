package com.ss.android.downloadlib;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.MainThread;
import com.ss.android.download.api.config.IDownloadButtonClickListener;
import com.ss.android.download.api.config.OnItemClickListener;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.download.DownloadStatusChangeListener;
import com.ss.android.downloadlib.addownload.j;
import com.ss.android.downloadlib.addownload.k;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
/* compiled from: TTDownloader.java */
/* loaded from: classes4.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static volatile g f57466a;

    /* renamed from: b  reason: collision with root package name */
    private final com.ss.android.download.api.a f57467b;

    /* renamed from: c  reason: collision with root package name */
    private final f f57468c;

    /* renamed from: d  reason: collision with root package name */
    private final com.ss.android.downloadad.api.a f57469d;

    /* renamed from: e  reason: collision with root package name */
    private com.ss.android.downloadad.api.b f57470e;

    /* renamed from: f  reason: collision with root package name */
    private long f57471f;

    /* JADX INFO: Access modifiers changed from: private */
    public f h() {
        return this.f57468c;
    }

    public void c() {
        this.f57471f = System.currentTimeMillis();
    }

    public com.ss.android.downloadad.api.a d() {
        return this.f57469d;
    }

    public com.ss.android.downloadad.api.b e() {
        if (this.f57470e == null) {
            this.f57470e = b.a();
        }
        return this.f57470e;
    }

    public String f() {
        return j.m();
    }

    public void g() {
        d.a().e();
    }

    private g(Context context) {
        this.f57468c = f.a();
        this.f57467b = new e();
        this.f57471f = System.currentTimeMillis();
        b(context);
        this.f57469d = a.a();
    }

    public static g a(final Context context) {
        if (f57466a == null) {
            synchronized (g.class) {
                if (f57466a == null) {
                    com.ss.android.downloadlib.e.b.a(new Runnable() { // from class: com.ss.android.downloadlib.g.1
                        @Override // java.lang.Runnable
                        public void run() {
                            g unused = g.f57466a = new g(context);
                        }
                    });
                }
            }
        }
        return f57466a;
    }

    private void b(Context context) {
        j.a(context);
        Downloader.getInstance(j.getContext());
        com.ss.android.downloadlib.addownload.b.f.a().b();
        com.ss.android.socialbase.appdownloader.d.j().a(j.getContext(), "misc_config", new com.ss.android.downloadlib.c.g(), new com.ss.android.downloadlib.c.f(context), new c());
        com.ss.android.downloadlib.c.d dVar = new com.ss.android.downloadlib.c.d();
        com.ss.android.socialbase.appdownloader.d.j().a(dVar);
        Downloader.getInstance(context).registerDownloadCacheSyncListener(dVar);
        com.ss.android.socialbase.appdownloader.d.j().a(new k());
        com.ss.android.socialbase.downloader.downloader.c.a(new com.ss.android.downloadlib.c.e());
        com.ss.android.socialbase.appdownloader.d.j().a(com.ss.android.downloadlib.f.c.a());
    }

    public com.ss.android.download.api.a a() {
        return this.f57467b;
    }

    @MainThread
    public void a(final Context context, final int i2, final DownloadStatusChangeListener downloadStatusChangeListener, final DownloadModel downloadModel) {
        com.ss.android.downloadlib.e.b.a(new Runnable() { // from class: com.ss.android.downloadlib.g.4
            @Override // java.lang.Runnable
            public void run() {
                g.this.h().a(context, i2, downloadStatusChangeListener, downloadModel);
            }
        });
    }

    @MainThread
    public void a(final String str, final long j4, final int i2, final DownloadEventConfig downloadEventConfig, final DownloadController downloadController, final OnItemClickListener onItemClickListener, final IDownloadButtonClickListener iDownloadButtonClickListener) {
        com.ss.android.downloadlib.e.b.a(new Runnable() { // from class: com.ss.android.downloadlib.g.5
            @Override // java.lang.Runnable
            public void run() {
                g.this.h().a(str, j4, i2, downloadEventConfig, downloadController, onItemClickListener, iDownloadButtonClickListener);
            }
        });
    }

    @MainThread
    public void a(final String str, final long j4, final int i2, final DownloadEventConfig downloadEventConfig, final DownloadController downloadController) {
        com.ss.android.downloadlib.e.b.a(new Runnable() { // from class: com.ss.android.downloadlib.g.6
            @Override // java.lang.Runnable
            public void run() {
                g.this.h().a(str, j4, i2, downloadEventConfig, downloadController);
            }
        });
    }

    @MainThread
    public void a(final String str, final long j4, final int i2, final DownloadEventConfig downloadEventConfig, final DownloadController downloadController, final IDownloadButtonClickListener iDownloadButtonClickListener) {
        com.ss.android.downloadlib.e.b.a(new Runnable() { // from class: com.ss.android.downloadlib.g.7
            @Override // java.lang.Runnable
            public void run() {
                g.this.h().a(str, j4, i2, downloadEventConfig, downloadController, iDownloadButtonClickListener);
            }
        });
    }

    public long b() {
        return this.f57471f;
    }

    @MainThread
    public void a(final String str, final int i2) {
        com.ss.android.downloadlib.e.b.a(new Runnable() { // from class: com.ss.android.downloadlib.g.2
            @Override // java.lang.Runnable
            public void run() {
                g.this.h().a(str, i2);
            }
        });
    }

    @MainThread
    public void a(final String str, final boolean z3) {
        com.ss.android.downloadlib.e.b.a(new Runnable() { // from class: com.ss.android.downloadlib.g.3
            @Override // java.lang.Runnable
            public void run() {
                g.this.h().a(str, z3);
            }
        });
    }

    public void a(com.ss.android.download.api.download.a.a aVar) {
        h().a(aVar);
    }

    public DownloadInfo a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return com.ss.android.socialbase.appdownloader.d.j().a(j.getContext(), str);
    }
}
