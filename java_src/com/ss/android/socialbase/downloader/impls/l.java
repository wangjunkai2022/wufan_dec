package com.ss.android.socialbase.downloader.impls;
/* compiled from: DownloadProxy.java */
/* loaded from: classes4.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private static volatile com.ss.android.socialbase.downloader.downloader.m f58384a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile com.ss.android.socialbase.downloader.downloader.m f58385b;

    public static com.ss.android.socialbase.downloader.downloader.m a(boolean z3) {
        if (z3 && com.ss.android.socialbase.downloader.downloader.c.S()) {
            if (f58385b == null) {
                synchronized (l.class) {
                    if (f58385b == null) {
                        f58385b = com.ss.android.socialbase.downloader.downloader.c.T().b();
                    }
                }
            }
            return f58385b;
        }
        if (f58384a == null) {
            synchronized (l.class) {
                if (f58384a == null) {
                    f58384a = new p();
                }
            }
        }
        return f58384a;
    }
}
