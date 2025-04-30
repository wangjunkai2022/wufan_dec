package com.ss.android.downloadlib.addownload.compliance;

import com.ss.android.socialbase.downloader.i.h;
/* compiled from: AppInfoCache.java */
/* loaded from: classes4.dex */
public class c extends h<Long, com.ss.android.downloadlib.addownload.b.b> {

    /* compiled from: AppInfoCache.java */
    /* loaded from: classes4.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private static c f57220a = new c();
    }

    public static c a() {
        return a.f57220a;
    }

    private c() {
        super(16, 16);
    }

    public void a(com.ss.android.downloadlib.addownload.b.b bVar) {
        if (bVar == null) {
            return;
        }
        put(Long.valueOf(bVar.a()), bVar);
    }

    public com.ss.android.downloadlib.addownload.b.b a(long j4, long j5) {
        return get(get(Long.valueOf(j4)) != null ? Long.valueOf(j4) : Long.valueOf(j5));
    }

    public com.ss.android.downloadlib.addownload.b.b a(long j4) {
        return get(Long.valueOf(j4));
    }
}
