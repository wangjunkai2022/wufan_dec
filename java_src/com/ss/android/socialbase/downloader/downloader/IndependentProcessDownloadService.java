package com.ss.android.socialbase.downloader.downloader;

import java.lang.ref.WeakReference;
/* loaded from: classes4.dex */
public class IndependentProcessDownloadService extends DownloadService {
    @Override // com.ss.android.socialbase.downloader.downloader.DownloadService, android.app.Service
    public void onCreate() {
        super.onCreate();
        c.a(this);
        if (c.T() == null) {
            c.a(new v());
        }
        o z3 = c.z();
        this.f57936a = z3;
        z3.a(new WeakReference(this));
    }
}
