package com.ss.android.downloadlib;

import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Environment;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.qq.e.comm.constants.ErrorCode;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.ss.android.downloadlib.addownload.b.d;
import com.ss.android.downloadlib.addownload.b.i;
import com.ss.android.downloadlib.addownload.j;
import com.ss.android.downloadlib.c.h;
import com.ss.android.downloadlib.g.l;
import com.ss.android.socialbase.appdownloader.b;
import com.ss.android.socialbase.downloader.a.a;
import com.ss.android.socialbase.downloader.constants.DownloadStatus;
import com.ss.android.socialbase.downloader.depend.ag;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.network.k;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AdDownloadCompletedEventHandlerImpl.java */
/* loaded from: classes4.dex */
public class a implements com.ss.android.downloadad.api.a, b.c, a.InterfaceC0308a, ag {

    /* renamed from: a  reason: collision with root package name */
    private static String f57009a = "a";

    /* renamed from: d  reason: collision with root package name */
    private static volatile a f57010d;

    /* renamed from: b  reason: collision with root package name */
    private long f57011b;

    /* renamed from: c  reason: collision with root package name */
    private b f57012c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AdDownloadCompletedEventHandlerImpl.java */
    @WorkerThread
    /* renamed from: com.ss.android.downloadlib.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class RunnableC0291a implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final int f57025b;

        public RunnableC0291a(int i2) {
            this.f57025b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                com.ss.android.downloadlib.addownload.b.f.a().b();
                ConcurrentHashMap<Long, com.ss.android.downloadad.api.a.b> c4 = com.ss.android.downloadlib.addownload.b.f.a().c();
                if (c4 == null || c4.isEmpty()) {
                    return;
                }
                a.this.a(c4, this.f57025b);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AdDownloadCompletedEventHandlerImpl.java */
    /* loaded from: classes4.dex */
    public static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private long f57027a;

        /* renamed from: b  reason: collision with root package name */
        private int f57028b;

        /* renamed from: c  reason: collision with root package name */
        private long f57029c;

        /* renamed from: d  reason: collision with root package name */
        private int f57030d;

        /* renamed from: e  reason: collision with root package name */
        private long f57031e;

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            this.f57031e = System.currentTimeMillis();
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (a()) {
                    a.a().a(this.f57027a, this.f57028b);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        private b(long j4, int i2, long j5, int i4) {
            this.f57027a = j4;
            this.f57028b = i2;
            this.f57029c = j5;
            this.f57030d = i4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x006a, code lost:
            if (r9 < r1) goto L18;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        boolean a() {
            /*
                Method dump skipped, instructions count: 272
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ss.android.downloadlib.a.b.a():boolean");
        }

        private int a(boolean z3, com.ss.android.downloadad.api.a.b bVar, DownloadInfo downloadInfo, boolean z4, JSONObject jSONObject) {
            com.ss.android.socialbase.downloader.g.a a4 = com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId());
            int i2 = 1;
            if (a4.a("install_failed_check_ttmd5", 1) == 1) {
                int checkMd5Status = downloadInfo.checkMd5Status();
                try {
                    jSONObject.put("ttmd5_status", checkMd5Status);
                } catch (Throwable unused) {
                }
                if (!com.ss.android.socialbase.downloader.i.f.a(checkMd5Status)) {
                    return 2005;
                }
            }
            int i4 = this.f57030d;
            if (i4 != 2000) {
                return i4;
            }
            if (a4.a("install_failed_check_signature", 1) == 1 && l.d(j.getContext(), bVar.e())) {
                if (!l.a(l.h(j.getContext(), downloadInfo.getTargetFilePath()), l.g(j.getContext(), bVar.e()))) {
                    return 2006;
                }
            }
            if (z3) {
                long j4 = this.f57031e;
                long j5 = this.f57029c;
                if (j4 > j5) {
                    try {
                        jSONObject.put("install_time", j4 - j5);
                        if (bVar.C() <= this.f57029c) {
                            i2 = 0;
                        }
                        jSONObject.put("install_again", i2);
                    } catch (Throwable unused2) {
                    }
                    if (z4) {
                        return 2004;
                    }
                    return ErrorCode.NOT_INIT;
                }
                return 2000;
            }
            return ErrorCode.INNER_ERROR;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AdDownloadCompletedEventHandlerImpl.java */
    /* loaded from: classes4.dex */
    public class c implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final com.ss.android.downloadad.api.a.b f57058b;

        public c(com.ss.android.downloadad.api.a.b bVar) {
            this.f57058b = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    this.f57058b.j(true);
                    a.this.c(this.f57058b);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            } finally {
                this.f57058b.j(false);
            }
        }
    }

    private a() {
        com.ss.android.socialbase.appdownloader.b.a(this);
        com.ss.android.socialbase.downloader.a.a.a().a(this);
    }

    public static JSONObject b(JSONObject jSONObject, DownloadInfo downloadInfo) {
        if (jSONObject == null || downloadInfo == null || com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).a("download_event_opt", 1) == 0) {
            return jSONObject;
        }
        try {
            long a4 = l.a(0L);
            double d4 = a4;
            Double.isNaN(d4);
            jSONObject.put("available_space", d4 / 1048576.0d);
            long totalBytes = downloadInfo.getTotalBytes();
            double d5 = totalBytes;
            Double.isNaN(d5);
            jSONObject.put("apk_size", d5 / 1048576.0d);
            if (a4 > 0 && totalBytes > 0) {
                Double.isNaN(d4);
                Double.isNaN(d5);
                jSONObject.put("available_space_ratio", d4 / d5);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public void c(com.ss.android.downloadad.api.a.b bVar) {
        SystemClock.sleep(20000L);
        int i2 = 15;
        while (i2 > 0) {
            if (l.b(bVar)) {
                a(bVar.e());
                return;
            }
            i2--;
            if (i2 == 0) {
                return;
            }
            SystemClock.sleep(20000L);
        }
    }

    synchronized void d() {
        b bVar = this.f57012c;
        if (bVar != null) {
            bVar.b();
            this.f57012c = null;
        }
    }

    public static a a() {
        if (f57010d == null) {
            synchronized (a.class) {
                if (f57010d == null) {
                    f57010d = new a();
                }
            }
        }
        return f57010d;
    }

    public static String c(@NonNull DownloadInfo downloadInfo, @NonNull com.ss.android.downloadad.api.a.b bVar) {
        File file = new File(downloadInfo.getSavePath(), downloadInfo.getName());
        String str = null;
        if (file.exists()) {
            try {
                PackageInfo packageArchiveInfo = j.getContext().getPackageManager().getPackageArchiveInfo(file.getAbsolutePath(), com.ss.android.socialbase.appdownloader.c.a());
                if (packageArchiveInfo != null) {
                    str = packageArchiveInfo.packageName;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        if (!TextUtils.isEmpty(str) && !str.equals(downloadInfo.getPackageName())) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("real_package_name", str);
                jSONObject.put("input_package_name", downloadInfo.getPackageName());
            } catch (JSONException e5) {
                e5.printStackTrace();
            }
            com.ss.android.downloadlib.d.a.a().a("embeded_ad", "package_name_error", jSONObject, bVar);
            return str;
        }
        return downloadInfo.getPackageName();
    }

    private int d(com.ss.android.downloadad.api.a.b bVar) {
        int realStatus;
        double a4 = com.ss.android.socialbase.downloader.g.a.a(bVar.s()).a("download_failed_finally_hours", 48.0d);
        if (a4 <= 0.0d) {
            return -1;
        }
        if (System.currentTimeMillis() - bVar.H() < a4 * 60.0d * 60.0d * 1000.0d) {
            return 1;
        }
        if (bVar.f56986d.get()) {
            return 0;
        }
        DownloadInfo downloadInfo = Downloader.getInstance(j.getContext()).getDownloadInfo(bVar.s());
        if (downloadInfo == null || (realStatus = downloadInfo.getRealStatus()) == -3 || realStatus == -4) {
            return -1;
        }
        if (!DownloadStatus.isDownloading(realStatus) && bVar.f56986d.compareAndSet(false, true)) {
            try {
                JSONObject jSONObject = new JSONObject();
                a(jSONObject, downloadInfo);
                jSONObject.putOpt("download_status", Integer.valueOf(realStatus));
                jSONObject.putOpt("fail_status", Integer.valueOf(bVar.E()));
                jSONObject.putOpt("fail_msg", bVar.F());
                jSONObject.put("download_failed_times", bVar.x());
                if (downloadInfo.getTotalBytes() > 0) {
                    double curBytes = downloadInfo.getCurBytes();
                    double totalBytes = downloadInfo.getTotalBytes();
                    Double.isNaN(curBytes);
                    Double.isNaN(totalBytes);
                    jSONObject.put("download_percent", curBytes / totalBytes);
                }
                jSONObject.put("is_update_download", bVar.V() ? 1 : 2);
                com.ss.android.downloadlib.d.a.a().a(bVar.j(), "download_failed_finally", jSONObject, bVar);
                i.a().a(bVar);
                return 0;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return 1;
    }

    @WorkerThread
    public static synchronized void a(DownloadInfo downloadInfo, com.ss.android.downloadad.api.a.b bVar) {
        synchronized (a.class) {
            if (downloadInfo == null) {
                com.ss.android.downloadlib.e.c.a().a("onDownloadFinish info null");
            } else if (bVar == null) {
                com.ss.android.downloadlib.e.c.a().a("onDownloadFinish nativeModel null");
            } else if (bVar.G() != 1) {
            } else {
                h.a().d(bVar);
                String c4 = c(downloadInfo, bVar);
                com.ss.android.downloadlib.addownload.b.f.a().b(downloadInfo.getUrl(), c4);
                Map<Long, com.ss.android.downloadad.api.a.b> a4 = com.ss.android.downloadlib.addownload.b.f.a().a(downloadInfo.getUrl(), c4);
                bVar.f(System.currentTimeMillis());
                bVar.e(2);
                bVar.b(c4);
                a4.put(Long.valueOf(bVar.b()), bVar);
                i.a().a(a4.values());
                b(bVar);
                f.a().a(downloadInfo, c4);
                if (AdBaseConstants.MIME_APK.equals(downloadInfo.getMimeType())) {
                    a().a(bVar);
                    a().b(downloadInfo, bVar);
                    if (bVar.L()) {
                        com.ss.android.downloadlib.addownload.a.a.a().a(downloadInfo.getId(), bVar.b(), bVar.l(), c4, downloadInfo.getTitle(), bVar.d(), downloadInfo.getTargetFilePath());
                    }
                    com.ss.android.downloadlib.addownload.e.a.a(downloadInfo, bVar.b(), bVar.d(), c4);
                }
            }
        }
    }

    public void b(DownloadInfo downloadInfo, final com.ss.android.downloadad.api.a.b bVar) {
        if (downloadInfo == null || bVar == null || com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).a("install_finish_check_ttmd5", 1) == 0) {
            return;
        }
        final String targetFilePath = downloadInfo.getTargetFilePath();
        if (TextUtils.isEmpty(targetFilePath)) {
            return;
        }
        d.a().b(new Runnable() { // from class: com.ss.android.downloadlib.a.3
            @Override // java.lang.Runnable
            public void run() {
                String a4 = com.ss.android.downloadlib.g.a.a(targetFilePath);
                if (TextUtils.isEmpty(a4)) {
                    return;
                }
                j.getContext().getSharedPreferences("sp_ttdownloader_md5", 0).edit().putString(String.valueOf(bVar.b()), a4).apply();
            }
        });
    }

    private static void b(com.ss.android.downloadad.api.a.b bVar) {
        if (bVar == null) {
            return;
        }
        String P = TextUtils.isEmpty(bVar.P()) ? "" : bVar.P();
        DownloadInfo downloadInfo = Downloader.getInstance(j.getContext()).getDownloadInfo(bVar.s());
        bVar.l("");
        i.a().a(bVar);
        JSONObject a4 = a(new JSONObject(), downloadInfo);
        int i2 = 1;
        try {
            a4.putOpt("finish_reason", P);
            a4.putOpt("finish_from_reserve_wifi", Integer.valueOf(downloadInfo.isDownloadFromReserveWifi() ? 1 : 0));
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        com.ss.android.downloadad.api.a.b a5 = com.ss.android.downloadlib.addownload.b.f.a().a(downloadInfo);
        com.ss.android.downloadlib.g.f.a(a4, downloadInfo.getId());
        try {
            a4.put("download_failed_times", a5.x());
            a4.put("can_show_notification", com.ss.android.socialbase.appdownloader.e.d.a() ? 1 : 2);
            if (downloadInfo.getExpectFileLength() > 0 && downloadInfo.getTotalBytes() > 0) {
                a4.put("file_length_gap", downloadInfo.getExpectFileLength() - downloadInfo.getTotalBytes());
            }
            a4.put("ttmd5_status", downloadInfo.getTTMd5CheckStatus());
            a4.put("has_send_download_failed_finally", a5.f56986d.get() ? 1 : 2);
            if (!a5.V()) {
                i2 = 2;
            }
            a4.put("is_update_download", i2);
            com.ss.android.downloadlib.g.f.a(a5, a4);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        com.ss.android.downloadlib.d.a.a().b("download_finish", a4, bVar);
    }

    @Override // com.ss.android.socialbase.downloader.a.a.InterfaceC0308a
    public void c() {
        com.ss.android.socialbase.downloader.c.a.b(f57009a, "onAppBackground()");
        a(6);
    }

    @Override // com.ss.android.socialbase.downloader.a.a.InterfaceC0308a
    public void b() {
        com.ss.android.socialbase.downloader.c.a.b(f57009a, "onAppForeground()");
        d();
        a(5);
    }

    @WorkerThread
    public synchronized void a(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (!l.a()) {
            final com.ss.android.downloadad.api.a.b a4 = com.ss.android.downloadlib.addownload.b.f.a().a(str);
            if (a4 == null) {
                com.ss.android.downloadlib.addownload.b.d.a().a(str);
                return;
            }
            com.ss.android.downloadlib.addownload.e a5 = f.a().a(a4.a());
            if (a5 != null) {
                a5.f();
            }
            if (a4.f56985c.get()) {
                return;
            }
            if (com.ss.android.socialbase.downloader.g.a.a(a4.s()).b("notification_opt_2") == 1) {
                com.ss.android.socialbase.downloader.notification.b.a().f(a4.s());
            }
            new com.ss.android.downloadlib.b.b().a(a4, new com.ss.android.downloadlib.b.g() { // from class: com.ss.android.downloadlib.a.1
                @Override // com.ss.android.downloadlib.b.g
                public void a(boolean z3) {
                    String str2 = a.f57009a;
                    com.ss.android.socialbase.downloader.c.a.b(str2, "appBackForeground->" + z3);
                    if (z3) {
                        if (!(com.ss.android.downloadlib.b.f.c(a4) ? com.ss.android.downloadlib.b.a.a(str, a4) : false) && com.ss.android.downloadlib.b.f.d(a4) && a4.K() == 4) {
                            com.ss.android.downloadlib.addownload.a.a.a().a(a4);
                        }
                    } else if (com.ss.android.downloadlib.b.a.a(str, a4) || a4.K() != 4) {
                    } else {
                        com.ss.android.downloadlib.addownload.a.a.a().a(a4);
                    }
                }
            }, com.ss.android.downloadlib.g.e.a(a4).a("try_applink_delay_after_installed", 0));
            h.a().f(a4);
            a(str, a4);
            com.ss.android.downloadlib.addownload.a.a.a().b(str);
            DownloadInfo a6 = a(Downloader.getInstance(j.getContext()).getSuccessedDownloadInfosWithMimeType(AdBaseConstants.MIME_APK), str);
            if (a6 != null) {
                if (com.ss.android.socialbase.downloader.g.a.a(a6.getId()).b("no_hide_notification") != 1) {
                    com.ss.android.socialbase.downloader.notification.b.a().a(a6.getId());
                }
                f.a().b(a6, str);
                com.ss.android.downloadlib.addownload.c.d.a(a6);
            } else {
                f.a().b(null, str);
            }
            return;
        }
        throw new RuntimeException("handleAppInstalled in main thread.");
    }

    private JSONObject b(@NonNull DownloadInfo downloadInfo, com.ss.android.socialbase.appdownloader.a aVar) {
        com.ss.android.downloadad.api.a.b a4 = com.ss.android.downloadlib.addownload.b.f.a().a(downloadInfo);
        if (a4 == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        aVar.a(jSONObject);
        try {
            jSONObject.put("download_id", downloadInfo.getId());
            jSONObject.put("name", downloadInfo.getName());
        } catch (Throwable th) {
            th.printStackTrace();
        }
        com.ss.android.downloadlib.g.f.a(jSONObject, downloadInfo.getId());
        com.ss.android.downloadlib.d.a.a().a("embeded_ad", "ah_result", jSONObject, a4);
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(DownloadInfo downloadInfo, com.ss.android.downloadad.api.a.b bVar, int i2) {
        long max;
        if (downloadInfo == null || bVar == null) {
            return;
        }
        d();
        long currentTimeMillis = System.currentTimeMillis();
        bVar.b(currentTimeMillis);
        bVar.g(l.a(Environment.getDataDirectory(), -1L));
        if (i2 != 2000) {
            max = 2000;
        } else {
            long a4 = com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).a("check_install_failed_delay_time", 120000L);
            if (a4 < 0) {
                return;
            }
            max = Math.max(a4, 30000L);
        }
        long j4 = max;
        b bVar2 = new b(bVar.b(), downloadInfo.getId(), currentTimeMillis, i2);
        d.a().a(bVar2, j4);
        this.f57012c = bVar2;
        i.a().a(bVar);
    }

    public void a(final long j4, int i2) {
        long a4 = com.ss.android.socialbase.downloader.g.a.a(i2).a("check_install_finish_hijack_delay_time", 900000L);
        if (a4 < 0) {
            return;
        }
        d.a().a(new Runnable() { // from class: com.ss.android.downloadlib.a.2
            @Override // java.lang.Runnable
            public void run() {
                a.a().a(j4);
            }
        }, Math.max(a4, (long) q.a.f73955b));
    }

    public void a(long j4) {
        d.a a4;
        int i2;
        try {
            com.ss.android.downloadad.api.a.b d4 = com.ss.android.downloadlib.addownload.b.f.a().d(j4);
            if (d4 != null && !l.b(d4) && !d4.f56985c.get()) {
                Pair<d.a, Integer> b4 = com.ss.android.downloadlib.addownload.b.d.a().b(d4);
                if (b4 != null) {
                    a4 = (d.a) b4.first;
                    i2 = ((Integer) b4.second).intValue();
                } else {
                    a4 = com.ss.android.downloadlib.addownload.b.d.a().a(d4);
                    i2 = -1;
                }
                if (a4 == null) {
                    return;
                }
                com.ss.android.downloadlib.addownload.b.d.a().b(a4.f57134a);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("installed_app_name", a4.f57137d);
                jSONObject.put("installed_pkg_name", a4.f57134a);
                if (i2 != -1) {
                    jSONObject.put("error_code", i2);
                    com.ss.android.downloadlib.g.f.a(jSONObject, d4.s());
                    com.ss.android.downloadlib.d.a.a().b("install_finish_hijack", jSONObject, d4);
                    return;
                }
                com.ss.android.downloadlib.d.a.a().b("install_finish_may_hijack", jSONObject, d4);
            }
        } catch (Throwable th) {
            com.ss.android.downloadlib.e.c.a().a(th, "trySendInstallFinishHijack");
        }
    }

    public void a(String str, com.ss.android.downloadad.api.a.b bVar) {
        if (bVar != null && l.b(bVar) && bVar.f56985c.compareAndSet(false, true)) {
            com.ss.android.downloadlib.d.a.a().a(bVar.j(), "install_finish", a(bVar, str, bVar.K() != 4 ? 3 : 4), bVar);
            i.a().a(bVar);
        }
    }

    private static DownloadInfo a(List<DownloadInfo> list, String str) {
        if (list != null && !list.isEmpty() && !TextUtils.isEmpty(str)) {
            for (DownloadInfo downloadInfo : list) {
                if (downloadInfo != null) {
                    if (str.equals(downloadInfo.getPackageName())) {
                        return downloadInfo;
                    }
                    if (l.a(j.getContext(), downloadInfo.getTargetFilePath(), str)) {
                        return downloadInfo;
                    }
                }
            }
        }
        return null;
    }

    public static JSONObject a(JSONObject jSONObject, DownloadInfo downloadInfo) {
        if (jSONObject != null && downloadInfo != null) {
            int i2 = 1;
            if (com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).a("download_event_opt", 1) == 0) {
                return jSONObject;
            }
            try {
                jSONObject.put("download_id", downloadInfo.getId());
                jSONObject.put("name", downloadInfo.getName());
                jSONObject.put("cur_bytes", downloadInfo.getCurBytes());
                jSONObject.put("total_bytes", downloadInfo.getTotalBytes());
                jSONObject.put("network_quality", downloadInfo.getNetworkQuality());
                jSONObject.put("current_network_quality", k.a().b().name());
                jSONObject.put("only_wifi", downloadInfo.isOnlyWifi() ? 1 : 0);
                jSONObject.put("need_https_degrade", downloadInfo.isNeedHttpsToHttpRetry() ? 1 : 0);
                jSONObject.put("https_degrade_retry_used", downloadInfo.isHttpsToHttpRetryUsed() ? 1 : 0);
                jSONObject.put("chunk_count", downloadInfo.getChunkCount());
                jSONObject.put("retry_count", downloadInfo.getRetryCount());
                jSONObject.put("cur_retry_time", downloadInfo.getCurRetryTime());
                jSONObject.put("need_retry_delay", downloadInfo.isNeedRetryDelay() ? 1 : 0);
                jSONObject.put("backup_url_used", downloadInfo.isBackUpUrlUsed() ? 1 : 0);
                jSONObject.put("head_connection_error_msg", downloadInfo.getHeadConnectionException() != null ? downloadInfo.getHeadConnectionException() : "");
                jSONObject.put("need_independent_process", downloadInfo.isNeedIndependentProcess() ? 1 : 0);
                jSONObject.put("total_retry_count", downloadInfo.getTotalRetryCount());
                jSONObject.put("cur_retry_time_in_total", downloadInfo.getCurRetryTimeInTotal());
                jSONObject.put("real_download_time", downloadInfo.getRealDownloadTime());
                jSONObject.put("first_speed_time", downloadInfo.getFirstSpeedTime());
                jSONObject.put("all_connect_time", downloadInfo.getAllConnectTime());
                jSONObject.put("download_prepare_time", downloadInfo.getDownloadPrepareTime());
                jSONObject.put("download_time", downloadInfo.getRealDownloadTime() + downloadInfo.getAllConnectTime() + downloadInfo.getDownloadPrepareTime());
                jSONObject.put("chunk_downgrade_retry_used", downloadInfo.isChunkDowngradeRetryUsed() ? 1 : 0);
                jSONObject.put("need_chunk_downgrade_retry", downloadInfo.isNeedChunkDowngradeRetry() ? 1 : 0);
                jSONObject.put("failed_resume_count", downloadInfo.getFailedResumeCount());
                jSONObject.put("preconnect_level", downloadInfo.getPreconnectLevel());
                jSONObject.put("md5", downloadInfo.getMd5());
                jSONObject.put("expect_file_length", downloadInfo.getExpectFileLength());
                jSONObject.put("retry_schedule_count", downloadInfo.getRetryScheduleCount());
                jSONObject.put("rw_concurrent", downloadInfo.isRwConcurrent() ? 1 : 0);
                double curBytes = downloadInfo.getCurBytes();
                Double.isNaN(curBytes);
                double d4 = curBytes / 1048576.0d;
                double realDownloadTime = downloadInfo.getRealDownloadTime();
                Double.isNaN(realDownloadTime);
                double d5 = realDownloadTime / 1000.0d;
                if (d4 > 0.0d && d5 > 0.0d) {
                    double d6 = d4 / d5;
                    try {
                        jSONObject.put("download_speed", d6);
                    } catch (Exception unused) {
                    }
                    com.ss.android.socialbase.downloader.c.a.b(f57009a, "download speed : " + d6 + "MB/s");
                }
                try {
                    jSONObject.put("is_download_service_foreground", Downloader.getInstance(j.getContext()).isDownloadServiceForeground(downloadInfo.getId()) ? 1 : 0);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                if (downloadInfo.getBackUpUrls() != null) {
                    jSONObject.put("backup_url_count", downloadInfo.getBackUpUrls().size());
                    jSONObject.put("cur_backup_url_index", downloadInfo.getCurBackUpUrlIndex());
                }
                jSONObject.put("clear_space_restart_times", com.ss.android.downloadlib.addownload.c.d.a().b(downloadInfo.getUrl()));
                jSONObject.put("mime_type", downloadInfo.getMimeType());
                if (!com.ss.android.socialbase.downloader.i.f.c(j.getContext())) {
                    i2 = 2;
                }
                jSONObject.put("network_available", i2);
                jSONObject.put("status_code", downloadInfo.getHttpStatusCode());
                b(jSONObject, downloadInfo);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return jSONObject;
    }

    private int a(com.ss.android.downloadad.api.a.b bVar, DownloadInfo downloadInfo, String str, JSONObject jSONObject) {
        int b4 = com.ss.android.socialbase.appdownloader.c.b(j.getContext(), downloadInfo);
        int b5 = l.b(j.getContext(), str);
        if (b4 > 0 && b5 > 0 && b4 != b5) {
            return b5 > b4 ? 3011 : 3010;
        } else if (com.ss.android.socialbase.downloader.g.a.a(bVar.s()).a("install_finish_check_ttmd5", 1) == 1) {
            String string = j.getContext().getSharedPreferences("sp_ttdownloader_md5", 0).getString(String.valueOf(bVar.b()), null);
            if (TextUtils.isEmpty(string) && downloadInfo != null) {
                string = com.ss.android.downloadlib.g.a.a(downloadInfo.getTargetFilePath());
            }
            int a4 = com.ss.android.downloadlib.g.a.a(string, com.ss.android.downloadlib.g.a.b(str));
            try {
                jSONObject.put("ttmd5_status", a4);
            } catch (Throwable unused) {
            }
            if (a4 == 0) {
                return 3000;
            }
            return a4 == 1 ? ErrorCode.NETWORK_TIMEOUT : ErrorCode.NETWORK_ERROR;
        } else {
            return ErrorCode.NETWORK_ERROR;
        }
    }

    @Override // com.ss.android.downloadad.api.a
    public void a(int i2) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f57011b < 120000) {
            return;
        }
        d.a().a(new RunnableC0291a(i2), this.f57011b > 0 ? 2000L : 8000L);
        this.f57011b = currentTimeMillis;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public void a(@NonNull ConcurrentHashMap<Long, com.ss.android.downloadad.api.a.b> concurrentHashMap, int i2) {
        ArrayList arrayList = new ArrayList();
        long currentTimeMillis = System.currentTimeMillis();
        for (com.ss.android.downloadad.api.a.b bVar : concurrentHashMap.values()) {
            if (bVar.f56985c.get()) {
                if (currentTimeMillis - bVar.H() >= com.ss.android.socialbase.downloader.g.a.a(bVar.s()).a("start_event_expire_hours", 168) * 60 * 60 * 1000) {
                    arrayList.add(Long.valueOf(bVar.b()));
                }
            } else if (bVar.G() == 1) {
                if (d(bVar) <= 0 && currentTimeMillis - bVar.H() >= com.ss.android.socialbase.downloader.g.a.a(bVar.s()).a("start_event_expire_hours", 168) * 60 * 60 * 1000) {
                    arrayList.add(Long.valueOf(bVar.b()));
                }
            } else if (bVar.G() == 2) {
                if (!bVar.Y()) {
                    if (l.b(bVar)) {
                        if (bVar.K() == 4) {
                            i2 = bVar.K();
                        }
                        com.ss.android.downloadlib.d.a.a().a(a(bVar, bVar.e(), i2), bVar);
                        arrayList.add(Long.valueOf(bVar.b()));
                        com.ss.android.downloadlib.addownload.c.d.a(bVar);
                    } else if (currentTimeMillis - bVar.H() >= com.ss.android.socialbase.downloader.g.a.a(bVar.s()).a("finish_event_expire_hours", 168) * 60 * 60 * 1000) {
                        arrayList.add(Long.valueOf(bVar.b()));
                    } else if (TextUtils.isEmpty(bVar.e())) {
                        arrayList.add(Long.valueOf(bVar.b()));
                    }
                }
            } else {
                arrayList.add(Long.valueOf(bVar.b()));
            }
        }
        com.ss.android.downloadlib.addownload.b.f.a().a(arrayList);
    }

    @Override // com.ss.android.socialbase.appdownloader.b.c
    public void a(DownloadInfo downloadInfo, com.ss.android.socialbase.appdownloader.a aVar) {
        JSONObject b4;
        if (downloadInfo == null || aVar == null) {
            return;
        }
        JSONArray e4 = com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).e("ah_report_config");
        if (aVar.f57556b != 0) {
            downloadInfo.getTempCacheData().remove("intent");
        }
        if (e4 == null || (b4 = b(downloadInfo, aVar)) == null) {
            return;
        }
        downloadInfo.getTempCacheData().put("ah_ext_json", b4);
    }

    @Override // com.ss.android.socialbase.downloader.depend.ag
    public void a(@Nullable final DownloadInfo downloadInfo, @Nullable String str) {
        if (downloadInfo == null) {
            com.ss.android.downloadlib.e.c.a().a("info is null");
        } else if ((com.ss.android.socialbase.downloader.g.a.a(downloadInfo).b("check_applink_mode") & 2) != 0) {
            final JSONObject jSONObject = (JSONObject) downloadInfo.getTempCacheData().get("ah_ext_json");
            com.ss.android.downloadlib.b.e.a().b(new com.ss.android.downloadlib.b.d() { // from class: com.ss.android.downloadlib.a.4
                @Override // com.ss.android.downloadlib.b.d
                public void a(boolean z3) {
                    if (!z3) {
                        Intent intent = (Intent) downloadInfo.getTempCacheData().get("intent");
                        if (intent != null) {
                            downloadInfo.getTempCacheData().remove("intent");
                            com.ss.android.socialbase.appdownloader.c.a(j.getContext(), intent);
                            l.a(jSONObject, "backup", (Object) 1);
                        } else {
                            l.a(jSONObject, "backup", (Object) 2);
                        }
                    }
                    com.ss.android.downloadad.api.a.b a4 = com.ss.android.downloadlib.addownload.b.f.a().a(downloadInfo);
                    if (a4 != null) {
                        com.ss.android.downloadlib.d.a.a().a(z3 ? "installer_delay_success" : "installer_delay_failed", jSONObject, a4);
                    } else {
                        com.ss.android.downloadlib.e.c.a().b("ah nativeModel=null");
                    }
                    if (z3) {
                        j.t().a(j.getContext(), null, null, null, null, 1);
                    }
                }
            });
        }
    }

    public void a(com.ss.android.downloadad.api.a.b bVar) {
        d.a().a(new c(bVar));
    }

    private JSONObject a(com.ss.android.downloadad.api.a.b bVar, String str, int i2) {
        com.ss.android.socialbase.appdownloader.a a4;
        JSONObject jSONObject = new JSONObject();
        try {
            DownloadInfo downloadInfo = Downloader.getInstance(j.getContext()).getDownloadInfo(bVar.s());
            jSONObject.putOpt("scene", Integer.valueOf(i2));
            com.ss.android.downloadlib.g.f.a(jSONObject, bVar.s());
            com.ss.android.downloadlib.g.f.a(bVar, jSONObject);
            jSONObject.put("is_update_download", bVar.V() ? 1 : 2);
            jSONObject.put("install_after_back_app", bVar.ab() ? 1 : 2);
            jSONObject.putOpt("clean_space_install_params", bVar.R() ? "1" : PayCenterOrderRequest.PAY_TYPE_RECHARGE);
            if (downloadInfo != null) {
                a(jSONObject, downloadInfo);
                try {
                    jSONObject.put("uninstall_resume_count", downloadInfo.getUninstallResumeCount());
                    if (bVar.C() > 0) {
                        jSONObject.put("install_time", System.currentTimeMillis() - bVar.C());
                    }
                } catch (Throwable unused) {
                }
                String a5 = com.ss.android.socialbase.downloader.i.f.a(downloadInfo.getTempCacheData().get("ah_attempt"), (String) null);
                if (!TextUtils.isEmpty(a5) && (a4 = com.ss.android.socialbase.appdownloader.a.a(a5)) != null) {
                    a4.a(jSONObject);
                }
            }
            int a6 = a(bVar, downloadInfo, str, jSONObject);
            jSONObject.put("fail_status", a6);
            if (a6 == 3000) {
                jSONObject.put("hijack", 2);
            } else if (a6 == 3001) {
                jSONObject.put("hijack", 0);
            } else {
                jSONObject.put("hijack", 1);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }

    public void a(DownloadInfo downloadInfo, long j4, long j5, long j6, long j7, long j8, boolean z3) {
        com.ss.android.downloadad.api.a.b a4 = com.ss.android.downloadlib.addownload.b.f.a().a(downloadInfo);
        if (a4 == null) {
            com.ss.android.downloadlib.e.c.a().a("trySendClearSpaceEvent nativeModel null");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            double d4 = j4;
            Double.isNaN(d4);
            jSONObject.putOpt("space_before", Double.valueOf(d4 / 1048576.0d));
            double d5 = j5 - j4;
            Double.isNaN(d5);
            jSONObject.putOpt("space_cleaned", Double.valueOf(d5 / 1048576.0d));
            jSONObject.putOpt("clean_up_time_cost", Long.valueOf(j7));
            jSONObject.putOpt("is_download_restarted", Integer.valueOf(z3 ? 1 : 0));
            jSONObject.putOpt("byte_required", Long.valueOf(j6));
            double d6 = j6 - j5;
            Double.isNaN(d6);
            jSONObject.putOpt("byte_required_after", Double.valueOf(d6 / 1048576.0d));
            jSONObject.putOpt("clear_sleep_time", Long.valueOf(j8));
            com.ss.android.downloadlib.g.f.c(downloadInfo, jSONObject);
            com.ss.android.downloadlib.d.a.a().a("cleanup", jSONObject, a4);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
