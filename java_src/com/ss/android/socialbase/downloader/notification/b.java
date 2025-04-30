package com.ss.android.socialbase.downloader.notification;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.downloader.c;
import com.ss.android.socialbase.downloader.downloader.j;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* compiled from: DownloadNotificationManager.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: c  reason: collision with root package name */
    private static volatile b f58593c;

    /* renamed from: e  reason: collision with root package name */
    private static final Object f58594e = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final long f58595a = 1000;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Integer, Long> f58596b = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private final Set<String> f58597d = new HashSet();

    /* renamed from: f  reason: collision with root package name */
    private final SparseArray<a> f58598f = new SparseArray<>();

    private b() {
    }

    public static b a() {
        if (f58593c == null) {
            synchronized (b.class) {
                if (f58593c == null) {
                    f58593c = new b();
                }
            }
        }
        return f58593c;
    }

    static boolean b(int i2) {
        return i2 == 1 || i2 == 3;
    }

    static boolean c(DownloadInfo downloadInfo) {
        return downloadInfo.isDownloadOverStatus() && b(downloadInfo.getNotificationVisibility());
    }

    void b(DownloadInfo downloadInfo) {
        if (c(downloadInfo)) {
            f(downloadInfo.getId());
        }
    }

    public a d(int i2) {
        a aVar;
        if (i2 == 0) {
            return null;
        }
        synchronized (this.f58598f) {
            aVar = this.f58598f.get(i2);
            if (aVar != null) {
                this.f58598f.remove(i2);
                com.ss.android.socialbase.downloader.c.a.a("removeNotificationId " + i2);
            }
        }
        return aVar;
    }

    public a e(int i2) {
        a aVar;
        if (i2 == 0) {
            return null;
        }
        synchronized (this.f58598f) {
            aVar = this.f58598f.get(i2);
        }
        return aVar;
    }

    public void f(int i2) {
        d(i2);
        if (i2 != 0) {
            a().c(i2);
        }
    }

    public void c(int i2) {
        Context N = c.N();
        if (N == null || i2 == 0) {
            return;
        }
        try {
            Intent intent = new Intent(N, DownloadNotificationService.class);
            intent.setAction("android.ss.intent.action.DOWNLOAD_NOTIFICATION_CANCEL");
            intent.putExtra("DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA_ID", i2);
            N.startService(intent);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SparseArray<a> b() {
        SparseArray<a> sparseArray;
        synchronized (this.f58598f) {
            sparseArray = this.f58598f;
        }
        return sparseArray;
    }

    public void a(int i2) {
        DownloadInfo downloadInfo = Downloader.getInstance(c.N()).getDownloadInfo(i2);
        if (downloadInfo == null) {
            return;
        }
        a(downloadInfo);
        b(downloadInfo);
    }

    void a(DownloadInfo downloadInfo) {
        j x3 = c.x();
        if (x3 != null && downloadInfo.isDownloadOverStatus()) {
            downloadInfo.setNotificationVisibility(3);
            try {
                x3.a(downloadInfo);
            } catch (SQLiteException e4) {
                e4.printStackTrace();
            }
        }
    }

    public void a(int i2, int i4, Notification notification) {
        Context N = c.N();
        if (N == null || i2 == 0 || notification == null) {
            return;
        }
        if (i4 == 4) {
            synchronized (this.f58596b) {
                Long l4 = this.f58596b.get(Integer.valueOf(i2));
                long currentTimeMillis = System.currentTimeMillis();
                if (l4 != null && Math.abs(currentTimeMillis - l4.longValue()) < 1000) {
                    return;
                }
                this.f58596b.put(Integer.valueOf(i2), Long.valueOf(currentTimeMillis));
            }
        }
        try {
            Intent intent = new Intent(N, DownloadNotificationService.class);
            intent.setAction("android.ss.intent.action.DOWNLOAD_NOTIFICATION_NOTIFY");
            intent.putExtra("DOWNLOAD_NOTIFICATION_EXTRA_STATUS", i4);
            intent.putExtra("DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA_ID", i2);
            intent.putExtra("DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA", notification);
            N.startService(intent);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(a aVar) {
        if (aVar == null) {
            return;
        }
        synchronized (this.f58598f) {
            this.f58598f.put(aVar.a(), aVar);
        }
    }
}
