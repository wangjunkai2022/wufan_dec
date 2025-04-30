package com.ss.android.downloadlib.addownload;

import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.downloadad.api.download.AdDownloadModel;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: AdQuickAppManager.java */
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static String f57159a = "c";

    /* renamed from: b  reason: collision with root package name */
    private static volatile c f57160b;

    /* renamed from: c  reason: collision with root package name */
    private ConcurrentHashMap<Long, Runnable> f57161c;

    public c() {
        this.f57161c = null;
        this.f57161c = new ConcurrentHashMap<>();
    }

    public static c a() {
        if (f57160b == null) {
            synchronized (c.class) {
                if (f57160b == null) {
                    f57160b = new c();
                }
            }
        }
        return f57160b;
    }

    public long b() {
        return j.i().optLong("quick_app_check_internal", 1200L);
    }

    public void a(e eVar, boolean z3, int i2, DownloadModel downloadModel) {
        if (downloadModel instanceof AdDownloadModel) {
            ((AdDownloadModel) downloadModel).setFunnelType(3);
        }
        long id = downloadModel.getId();
        if (i2 == 4) {
            if (!z3) {
                a(id, false, 2);
                eVar.b(false);
                return;
            }
            a(id, true, 2);
        } else if (i2 == 5) {
            if (!z3) {
                a(id, false, 1);
                eVar.c(false);
                return;
            }
            a(id, true, 1);
        } else if (i2 != 7) {
        } else {
            Runnable remove = this.f57161c.remove(Long.valueOf(id));
            if (z3) {
                com.ss.android.downloadlib.d.a.a().a(id, 1);
                a(id, true, 1);
                return;
            }
            if (remove != null) {
                com.ss.android.downloadlib.f.a().b().post(remove);
            }
            a(id, false, 1);
        }
    }

    private void a(long j4, boolean z3, int i2) {
        com.ss.android.downloadlib.d.a.a().a(j4, z3, i2);
        if (z3) {
            j.t().a(null, null, null, null, null, 3);
        }
    }

    public void a(final e eVar, final int i2, final DownloadModel downloadModel) {
        com.ss.android.downloadlib.b.e.a().a(new com.ss.android.downloadlib.b.d() { // from class: com.ss.android.downloadlib.addownload.c.1
            @Override // com.ss.android.downloadlib.b.d
            public void a(boolean z3) {
                c.this.a(eVar, z3, i2, downloadModel);
            }
        }, b());
    }

    public static boolean a(DownloadInfo downloadInfo) {
        return downloadInfo == null || downloadInfo.getStatus() == 0 || downloadInfo.getStatus() == -4;
    }
}
