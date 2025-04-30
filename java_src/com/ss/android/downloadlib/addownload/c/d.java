package com.ss.android.downloadlib.addownload.c;

import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import com.ss.android.downloadlib.addownload.j;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: DownloadOptimizationManager.java */
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static volatile d f57170a;

    /* renamed from: b  reason: collision with root package name */
    private long f57171b = 0;

    /* renamed from: c  reason: collision with root package name */
    private ConcurrentHashMap<String, e> f57172c = new ConcurrentHashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private HashMap<String, Integer> f57173d = new HashMap<>();

    /* renamed from: e  reason: collision with root package name */
    private List<String> f57174e = new CopyOnWriteArrayList();

    public static d a() {
        if (f57170a == null) {
            synchronized (d.class) {
                if (f57170a == null) {
                    f57170a = new d();
                }
            }
        }
        return f57170a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long b() {
        return this.f57171b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        this.f57171b = System.currentTimeMillis();
    }

    public int b(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        if (this.f57173d == null) {
            this.f57173d = new HashMap<>();
        }
        if (this.f57173d.containsKey(str)) {
            return this.f57173d.get(str).intValue();
        }
        return 0;
    }

    public void a(String str, e eVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f57172c.put(str, eVar);
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f57172c.remove(str);
    }

    @WorkerThread
    public static void a(com.ss.android.downloadad.api.a.b bVar) {
        DownloadInfo downloadInfo;
        if (bVar == null || bVar.b() <= 0 || (downloadInfo = Downloader.getInstance(j.getContext()).getDownloadInfo(bVar.s())) == null) {
            return;
        }
        a(downloadInfo);
    }

    @WorkerThread
    public static void a(DownloadInfo downloadInfo) {
        if (downloadInfo == null || com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).a("delete_file_after_install", 0) == 0) {
            return;
        }
        try {
            String str = downloadInfo.getSavePath() + File.separator + downloadInfo.getName();
            if (TextUtils.isEmpty(str)) {
                return;
            }
            File file = new File(str);
            if (file.isFile() && file.exists()) {
                file.delete();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
