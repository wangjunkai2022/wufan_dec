package com.ss.android.socialbase.downloader.downloader;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import java.lang.ref.WeakReference;
import java.util.concurrent.ExecutorService;
/* loaded from: classes4.dex */
public class DownloadService extends Service {

    /* renamed from: b  reason: collision with root package name */
    private static final String f57935b = DownloadService.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    protected o f57936a;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        String str = f57935b;
        StringBuilder sb = new StringBuilder();
        sb.append("onBind downloadServiceHandler != null:");
        sb.append(this.f57936a != null);
        com.ss.android.socialbase.downloader.c.a.b(str, sb.toString());
        o oVar = this.f57936a;
        if (oVar != null) {
            return oVar.a(intent);
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        c.a(this);
        o y3 = c.y();
        this.f57936a = y3;
        y3.a(new WeakReference(this));
    }

    @Override // android.app.Service
    public void onDestroy() {
        if (com.ss.android.socialbase.downloader.c.a.a()) {
            com.ss.android.socialbase.downloader.c.a.b(f57935b, "Service onDestroy");
        }
        o oVar = this.f57936a;
        if (oVar != null) {
            oVar.d();
            this.f57936a = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(final Intent intent, final int i2, final int i4) {
        if (com.ss.android.socialbase.downloader.c.a.a()) {
            com.ss.android.socialbase.downloader.c.a.b(f57935b, "DownloadService onStartCommand");
        }
        this.f57936a.c();
        ExecutorService l4 = c.l();
        if (l4 != null) {
            l4.execute(new Runnable() { // from class: com.ss.android.socialbase.downloader.downloader.DownloadService.1
                @Override // java.lang.Runnable
                public void run() {
                    o oVar = DownloadService.this.f57936a;
                    if (oVar != null) {
                        oVar.a(intent, i2, i4);
                    }
                }
            });
        }
        return c.j() ? 2 : 3;
    }
}
