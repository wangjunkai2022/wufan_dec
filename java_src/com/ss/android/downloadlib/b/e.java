package com.ss.android.downloadlib.b;

import com.ss.android.socialbase.downloader.a.a;
/* compiled from: AppLinkMonitor.java */
/* loaded from: classes4.dex */
public class e implements a.InterfaceC0308a {

    /* renamed from: a  reason: collision with root package name */
    private long f57369a;

    /* compiled from: AppLinkMonitor.java */
    /* loaded from: classes4.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private static e f57373a = new e();
    }

    @Override // com.ss.android.socialbase.downloader.a.a.InterfaceC0308a
    public void b() {
        this.f57369a = System.currentTimeMillis();
    }

    @Override // com.ss.android.socialbase.downloader.a.a.InterfaceC0308a
    public void c() {
    }

    private e() {
        this.f57369a = 0L;
        com.ss.android.socialbase.downloader.a.a.a().a(this);
    }

    public static e a() {
        return a.f57373a;
    }

    public void b(d dVar) {
        if (dVar == null) {
            return;
        }
        int optInt = com.ss.android.downloadlib.addownload.j.i().optInt("check_an_result_delay", 1200);
        a(dVar, optInt > 0 ? optInt : 1200);
    }

    public void a(final d dVar, final long j4) {
        if (dVar == null) {
            return;
        }
        com.ss.android.downloadlib.d.a().a(new Runnable() { // from class: com.ss.android.downloadlib.b.e.1
            @Override // java.lang.Runnable
            public void run() {
                if (com.ss.android.socialbase.downloader.a.a.a().c() && System.currentTimeMillis() - e.this.f57369a > j4) {
                    dVar.a(false);
                } else {
                    dVar.a(true);
                }
            }
        }, j4);
    }

    public void a(d dVar) {
        a(dVar, 5000L);
    }
}
