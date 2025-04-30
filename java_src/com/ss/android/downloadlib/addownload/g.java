package com.ss.android.downloadlib.addownload;

import android.content.Context;
import android.os.Environment;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ss.android.download.api.config.s;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.download.DownloadStatusChangeListener;
import com.ss.android.download.api.model.DownloadShortInfo;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.ss.android.downloadlib.g.j;
import com.ss.android.downloadlib.g.m;
import com.ss.android.socialbase.downloader.depend.IDownloadListener;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.File;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: DownloadHelper.java */
/* loaded from: classes4.dex */
public class g implements m.a {

    /* renamed from: a  reason: collision with root package name */
    private long f57294a;

    /* renamed from: b  reason: collision with root package name */
    private com.ss.android.downloadlib.addownload.b.e f57295b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f57296c = false;

    /* renamed from: d  reason: collision with root package name */
    private e f57297d;

    /* renamed from: e  reason: collision with root package name */
    private b f57298e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DownloadHelper.java */
    /* loaded from: classes4.dex */
    public static class a extends com.ss.android.socialbase.downloader.depend.a {

        /* renamed from: a  reason: collision with root package name */
        private m f57304a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(m mVar) {
            this.f57304a = mVar;
        }

        @Override // com.ss.android.socialbase.downloader.depend.a, com.ss.android.socialbase.downloader.depend.s
        public void a(DownloadInfo downloadInfo) {
            a(downloadInfo, 11);
        }

        @Override // com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
        public void onCanceled(DownloadInfo downloadInfo) {
            a(downloadInfo, -4);
        }

        @Override // com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
        public void onFailed(DownloadInfo downloadInfo, BaseException baseException) {
            a(downloadInfo, -1);
        }

        @Override // com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
        public void onPause(DownloadInfo downloadInfo) {
            a(downloadInfo, -2);
        }

        @Override // com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
        public void onPrepare(DownloadInfo downloadInfo) {
            a(downloadInfo, 1);
        }

        @Override // com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
        public void onProgress(DownloadInfo downloadInfo) {
            a(downloadInfo, 4);
        }

        @Override // com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
        public void onStart(DownloadInfo downloadInfo) {
            a(downloadInfo, 2);
        }

        @Override // com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
        public void onSuccessed(DownloadInfo downloadInfo) {
            a(downloadInfo, -3);
        }

        private void a(DownloadInfo downloadInfo, int i2) {
            Message obtain = Message.obtain();
            obtain.what = 3;
            obtain.obj = downloadInfo;
            obtain.arg1 = i2;
            this.f57304a.sendMessage(obtain);
        }
    }

    /* compiled from: DownloadHelper.java */
    /* loaded from: classes4.dex */
    public interface b {
        void a(DownloadInfo downloadInfo);
    }

    public g(e eVar) {
        this.f57297d = eVar;
    }

    private boolean c() {
        return d() && e();
    }

    private boolean d() {
        DownloadModel downloadModel = this.f57295b.f57140b;
        return (downloadModel == null || TextUtils.isEmpty(downloadModel.getPackageName()) || TextUtils.isEmpty(this.f57295b.f57140b.getDownloadUrl())) ? false : true;
    }

    private boolean e() {
        return this.f57295b.f57142d.isAddToDownloadManage();
    }

    private boolean f() {
        return com.ss.android.downloadlib.g.l.a(this.f57295b.f57140b) && h.a(this.f57295b.f57142d.getLinkMode());
    }

    @Override // com.ss.android.downloadlib.g.m.a
    public void a(Message message) {
    }

    private boolean e(DownloadInfo downloadInfo) {
        return !com.ss.android.downloadlib.g.l.a(this.f57295b.f57140b) && f(downloadInfo);
    }

    private boolean f(DownloadInfo downloadInfo) {
        return downloadInfo != null && downloadInfo.getStatus() == -3 && com.ss.android.socialbase.downloader.i.f.d(downloadInfo.getSavePath(), downloadInfo.getName());
    }

    public void a(long j4) {
        this.f57294a = j4;
        com.ss.android.downloadlib.addownload.b.e e4 = com.ss.android.downloadlib.addownload.b.f.a().e(j4);
        this.f57295b = e4;
        if (e4.x()) {
            com.ss.android.downloadlib.e.c.a().a("setAdId ModelBox notValid");
        }
    }

    public void b(@Nullable DownloadInfo downloadInfo) {
        b bVar = this.f57298e;
        if (bVar != null) {
            bVar.a(downloadInfo);
            this.f57298e = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(DownloadInfo downloadInfo) {
        if (!h.a(this.f57295b.f57140b) || this.f57296c) {
            return;
        }
        com.ss.android.downloadlib.d.a.a().a("file_status", (downloadInfo == null || !com.ss.android.downloadlib.g.l.b(downloadInfo.getTargetFilePath())) ? 2 : 1, this.f57295b);
        this.f57296c = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(DownloadInfo downloadInfo) {
        return f() || e(downloadInfo);
    }

    private void b(final s sVar) {
        if (!com.ss.android.downloadlib.g.j.b("android.permission.WRITE_EXTERNAL_STORAGE")) {
            com.ss.android.downloadlib.g.j.a(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, new j.a() { // from class: com.ss.android.downloadlib.addownload.g.2
                @Override // com.ss.android.downloadlib.g.j.a
                public void a() {
                    s sVar2 = sVar;
                    if (sVar2 != null) {
                        sVar2.a();
                    }
                }

                @Override // com.ss.android.downloadlib.g.j.a
                public void a(String str) {
                    s sVar2 = sVar;
                    if (sVar2 != null) {
                        sVar2.a(str);
                    }
                }
            });
        } else if (sVar != null) {
            sVar.a();
        }
    }

    public void a(DownloadInfo downloadInfo) {
        this.f57296c = false;
        b(downloadInfo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(Context context, int i2, boolean z3) {
        if (com.ss.android.downloadlib.g.l.a(this.f57295b.f57140b)) {
            com.ss.android.downloadad.api.a.b d4 = com.ss.android.downloadlib.addownload.b.f.a().d(this.f57295b.f57139a);
            if (d4 != null) {
                com.ss.android.socialbase.downloader.notification.b.a().f(d4.s());
            }
            return com.ss.android.downloadlib.b.a.a(this.f57295b);
        } else if (a(i2) && !TextUtils.isEmpty(this.f57295b.f57140b.getPackageName()) && j.i().optInt("disable_market") != 1) {
            if (com.ss.android.downloadlib.b.a.a(this.f57295b, i2)) {
                return true;
            }
            return this.f57297d.i() && this.f57297d.d(true);
        } else if (z3 && this.f57295b.f57142d.getDownloadMode() == 4 && !this.f57297d.e()) {
            this.f57297d.c(true);
            return true;
        } else {
            return false;
        }
    }

    @Nullable
    public String b() {
        File externalFilesDir = j.getContext().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
        if (externalFilesDir != null) {
            if (!externalFilesDir.exists()) {
                externalFilesDir.mkdirs();
            }
            if (externalFilesDir.exists()) {
                return externalFilesDir.getAbsolutePath();
            }
            return null;
        }
        return null;
    }

    @NonNull
    public static List<com.ss.android.download.api.download.a> b(Map<Integer, Object> map) {
        ArrayList arrayList = new ArrayList();
        if (map != null && !map.isEmpty()) {
            for (Object obj : map.values()) {
                if (obj instanceof com.ss.android.download.api.download.a) {
                    arrayList.add((com.ss.android.download.api.download.a) obj);
                } else if (obj instanceof SoftReference) {
                    SoftReference softReference = (SoftReference) obj;
                    if (softReference.get() instanceof com.ss.android.download.api.download.a) {
                        arrayList.add((com.ss.android.download.api.download.a) softReference.get());
                    }
                }
            }
        }
        return arrayList;
    }

    private boolean a(int i2) {
        if (this.f57295b.f57142d.getDownloadMode() == 2 && i2 == 2) {
            return true;
        }
        return this.f57295b.f57142d.getDownloadMode() == 2 && i2 == 1 && j.i().optInt("disable_lp_if_market", 0) == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(boolean z3) {
        return !z3 && this.f57295b.f57142d.getDownloadMode() == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull final s sVar) {
        if (!TextUtils.isEmpty(this.f57295b.f57140b.getFilePath())) {
            String filePath = this.f57295b.f57140b.getFilePath();
            if (filePath.startsWith(Environment.getDataDirectory().getAbsolutePath())) {
                sVar.a();
                return;
            }
            try {
                if (filePath.startsWith(j.getContext().getExternalCacheDir().getParent())) {
                    sVar.a();
                    return;
                }
            } catch (Exception unused) {
            }
        }
        b(new s() { // from class: com.ss.android.downloadlib.addownload.g.1
            @Override // com.ss.android.download.api.config.s
            public void a() {
                sVar.a();
            }

            @Override // com.ss.android.download.api.config.s
            public void a(String str) {
                j.c().a(1, j.getContext(), g.this.f57295b.f57140b, "您已禁止使用存储权限，请授权后再下载", null, 1);
                com.ss.android.downloadlib.d.a.a().b(g.this.f57294a, 1);
                sVar.a(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Message message, DownloadShortInfo downloadShortInfo, Map<Integer, Object> map) {
        b bVar;
        if (message == null || message.what != 3) {
            return;
        }
        DownloadInfo downloadInfo = (DownloadInfo) message.obj;
        int i2 = message.arg1;
        if (i2 != 1 && i2 != 6 && i2 == 2) {
            if (downloadInfo.getIsFirstDownload()) {
                com.ss.android.downloadlib.f a4 = com.ss.android.downloadlib.f.a();
                com.ss.android.downloadlib.addownload.b.e eVar = this.f57295b;
                a4.a(eVar.f57140b, eVar.f57142d, eVar.f57141c);
                downloadInfo.setFirstDownload(false);
            }
            com.ss.android.downloadlib.d.a.a().a(downloadInfo);
        }
        downloadShortInfo.updateFromNewDownloadInfo(downloadInfo);
        i.a(downloadShortInfo);
        int a5 = com.ss.android.socialbase.appdownloader.c.a(downloadInfo.getStatus());
        long totalBytes = downloadInfo.getTotalBytes();
        int curBytes = totalBytes > 0 ? (int) ((downloadInfo.getCurBytes() * 100) / totalBytes) : 0;
        if ((totalBytes > 0 || com.ss.android.socialbase.downloader.g.a.c().a("fix_click_start")) && (bVar = this.f57298e) != null) {
            bVar.a(downloadInfo);
            this.f57298e = null;
        }
        for (DownloadStatusChangeListener downloadStatusChangeListener : a(map)) {
            if (a5 != 1) {
                if (a5 == 2) {
                    downloadStatusChangeListener.onDownloadPaused(downloadShortInfo, i.a(downloadInfo.getId(), curBytes));
                } else if (a5 == 3) {
                    if (downloadInfo.getStatus() == -4) {
                        downloadStatusChangeListener.onIdle();
                    } else if (downloadInfo.getStatus() == -1) {
                        downloadStatusChangeListener.onDownloadFailed(downloadShortInfo);
                    } else if (downloadInfo.getStatus() == -3) {
                        if (com.ss.android.downloadlib.g.l.a(this.f57295b.f57140b)) {
                            downloadStatusChangeListener.onInstalled(downloadShortInfo);
                        } else {
                            downloadStatusChangeListener.onDownloadFinished(downloadShortInfo);
                        }
                    }
                }
            } else if (downloadInfo.getStatus() != 11) {
                downloadStatusChangeListener.onDownloadActive(downloadShortInfo, i.a(downloadInfo.getId(), curBytes));
            } else {
                for (com.ss.android.download.api.download.a aVar : b(map)) {
                    aVar.a(downloadInfo);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (this.f57298e == null) {
            this.f57298e = new b() { // from class: com.ss.android.downloadlib.addownload.g.3
                @Override // com.ss.android.downloadlib.addownload.g.b
                public void a(DownloadInfo downloadInfo) {
                    com.ss.android.downloadlib.d.a.a().a(g.this.f57294a, 2, downloadInfo);
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(Context context, IDownloadListener iDownloadListener) {
        if (context == null) {
            return 0;
        }
        Map<String, String> headers = this.f57295b.f57140b.getHeaders();
        ArrayList arrayList = new ArrayList();
        if (headers != null) {
            for (Map.Entry<String, String> entry : headers.entrySet()) {
                if (entry != null) {
                    arrayList.add(new com.ss.android.socialbase.downloader.model.c(entry.getKey(), entry.getValue()));
                }
            }
        }
        String a4 = com.ss.android.downloadlib.g.d.a(String.valueOf(this.f57295b.f57140b.getId()), this.f57295b.f57140b.getNotificationJumpUrl(), this.f57295b.f57140b.isShowToast(), String.valueOf(this.f57295b.f57140b.getModelType()));
        com.ss.android.socialbase.downloader.g.a b4 = com.ss.android.downloadlib.g.e.b(this.f57295b.f57140b);
        JSONObject a5 = com.ss.android.downloadlib.g.e.a(this.f57295b.f57140b);
        if (!this.f57295b.f57142d.enableAH()) {
            a5 = com.ss.android.downloadlib.g.l.a(a5);
            com.ss.android.downloadlib.g.l.a(a5, "ah_plans", new JSONArray());
        }
        this.f57295b.f57140b.getExecutorGroup();
        int i2 = (this.f57295b.f57140b.isAd() || h.b(this.f57295b.f57140b)) ? 4 : 4;
        String a6 = a(b4);
        DownloadInfo downloadInfo = Downloader.getInstance(j.getContext()).getDownloadInfo(com.ss.android.socialbase.downloader.downloader.c.a(this.f57295b.f57140b.getDownloadUrl(), a6));
        if (downloadInfo != null && 3 == this.f57295b.f57140b.getModelType()) {
            downloadInfo.setFirstDownload(true);
        }
        com.ss.android.socialbase.appdownloader.f o3 = new com.ss.android.socialbase.appdownloader.f(context, this.f57295b.f57140b.getDownloadUrl()).b(this.f57295b.f57140b.getBackupUrls()).a(this.f57295b.f57140b.getName()).d(a4).a(arrayList).a(this.f57295b.f57140b.isShowNotification()).c(this.f57295b.f57140b.isNeedWifi()).b(this.f57295b.f57140b.getFileName()).c(a6).j(this.f57295b.f57140b.getAppIcon()).g(this.f57295b.f57140b.getMd5()).i(this.f57295b.f57140b.getSdkMonitorScene()).a(this.f57295b.f57140b.getExpectFileLength()).a(iDownloadListener).l(this.f57295b.f57140b.needIndependentProcess() || b4.a("need_independent_process", 0) == 1).a(this.f57295b.f57140b.getDownloadFileUriProvider()).b(this.f57295b.f57140b.autoInstallWithoutNotification()).f(this.f57295b.f57140b.getPackageName()).d(1000).e(100).a(a5).i(true).j(true).b(b4.a("retry_count", 5)).c(b4.a("backup_url_retry_count", 0)).j(true).m(b4.a("need_head_connection", 0) == 1).d(b4.a("need_https_to_http_retry", 0) == 1).h(b4.a("need_chunk_downgrade_retry", 1) == 1).g(b4.a("need_retry_delay", 0) == 1).h(b4.c("retry_delay_time_array")).k(b4.a("need_reuse_runnable", 0) == 1).f(i2).p(this.f57295b.f57140b.isAutoInstall()).o(this.f57295b.f57140b.distinctDir());
        if (!TextUtils.isEmpty(this.f57295b.f57140b.getMimeType())) {
            o3.e(this.f57295b.f57140b.getMimeType());
        } else {
            o3.e(AdBaseConstants.MIME_APK);
        }
        if (b4.a("notification_opt_2", 0) == 1) {
            o3.a(false);
            o3.b(true);
        }
        com.ss.android.downloadlib.addownload.c.a aVar = null;
        if (b4.a("clear_space_use_disk_handler", 0) == 1) {
            aVar = new com.ss.android.downloadlib.addownload.c.a();
            o3.a(aVar);
        }
        int a7 = h.a(this.f57295b, c(), o3);
        if (aVar != null) {
            aVar.a(a7);
        }
        return a7;
    }

    private String a(com.ss.android.socialbase.downloader.g.a aVar) {
        if (!TextUtils.isEmpty(this.f57295b.f57140b.getFilePath())) {
            return this.f57295b.f57140b.getFilePath();
        }
        DownloadInfo a4 = com.ss.android.socialbase.appdownloader.d.j().a(j.getContext(), this.f57295b.f57140b.getDownloadUrl());
        boolean b4 = com.ss.android.downloadlib.g.j.b("android.permission.WRITE_EXTERNAL_STORAGE");
        String b5 = b();
        if (a4 != null && !TextUtils.isEmpty(a4.getSavePath())) {
            String savePath = a4.getSavePath();
            if (b4 || savePath.startsWith(Environment.getDataDirectory().getAbsolutePath())) {
                return savePath;
            }
            try {
                if (!TextUtils.isEmpty(b5)) {
                    if (savePath.startsWith(b5)) {
                        return savePath;
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.c.N()).cancel(a4.getId());
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("ttdownloader_code", Integer.valueOf(b4 ? 1 : 2));
        } catch (JSONException e5) {
            e5.printStackTrace();
        }
        com.ss.android.downloadlib.d.a.a().a("label_external_permission", jSONObject, this.f57295b);
        String str = null;
        try {
            str = com.ss.android.socialbase.appdownloader.c.b();
        } catch (Exception unused) {
        }
        int a5 = com.ss.android.downloadlib.g.e.a(aVar);
        if (a5 != 0) {
            if (a5 != 4 && (b4 || a5 != 2)) {
                if ((a5 == 3 || (!b4 && a5 == 1)) && !TextUtils.isEmpty(b5)) {
                    return b5;
                }
            } else {
                File filesDir = j.getContext().getFilesDir();
                if (!filesDir.exists()) {
                    filesDir.mkdirs();
                }
                if (filesDir.exists()) {
                    return filesDir.getAbsolutePath();
                }
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(DownloadInfo downloadInfo, boolean z3) {
        if (this.f57295b.f57140b == null || downloadInfo == null || downloadInfo.getId() == 0) {
            return;
        }
        int status = downloadInfo.getStatus();
        if (status != -1 && status != -4) {
            if (h.a(this.f57295b.f57140b)) {
                com.ss.android.downloadlib.d.a.a().a(this.f57294a, 2);
            } else if (z3 && com.ss.android.downloadlib.d.c.a().c() && (status == -2 || status == -3)) {
                com.ss.android.downloadlib.d.a.a().a(this.f57294a, 2);
            }
        } else {
            com.ss.android.downloadlib.d.a.a().a(this.f57294a, 2);
        }
        switch (status) {
            case -4:
            case -1:
                a();
                com.ss.android.downloadlib.addownload.b.f a4 = com.ss.android.downloadlib.addownload.b.f.a();
                com.ss.android.downloadlib.addownload.b.e eVar = this.f57295b;
                a4.a(new com.ss.android.downloadad.api.a.b(eVar.f57140b, eVar.f57141c, eVar.f57142d, downloadInfo.getId()));
                return;
            case -3:
                if (com.ss.android.downloadlib.g.l.a(this.f57295b.f57140b)) {
                    com.ss.android.downloadlib.e.c.a().b("SUCCESSED isInstalledApp");
                    return;
                }
                com.ss.android.downloadlib.d.a.a().a(this.f57294a, 5, downloadInfo);
                if (z3 && com.ss.android.downloadlib.d.c.a().b() && !com.ss.android.downloadlib.d.c.a().b(this.f57294a, this.f57295b.f57140b.getLogExtra())) {
                    com.ss.android.downloadlib.d.a.a().a(this.f57294a, 2);
                    return;
                }
                return;
            case -2:
                com.ss.android.downloadlib.d.a.a().a(this.f57294a, 4, downloadInfo);
                if (z3 && com.ss.android.downloadlib.d.c.a().b() && !com.ss.android.downloadlib.d.c.a().b(this.f57294a, this.f57295b.f57140b.getLogExtra())) {
                    com.ss.android.downloadlib.d.a.a().a(this.f57294a, 2);
                    return;
                }
                return;
            case 0:
            case 6:
            default:
                return;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 7:
            case 8:
                com.ss.android.downloadlib.d.a.a().a(this.f57294a, 3, downloadInfo);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.ss.android.socialbase.downloader.model.DownloadInfo r7, com.ss.android.download.api.model.DownloadShortInfo r8, java.util.List<com.ss.android.download.api.download.DownloadStatusChangeListener> r9) {
        /*
            r6 = this;
            boolean r0 = r9.isEmpty()
            if (r0 == 0) goto L7
            return
        L7:
            if (r7 == 0) goto La8
            if (r8 != 0) goto Ld
            goto La8
        Ld:
            r0 = 0
            long r1 = r7.getTotalBytes()     // Catch: java.lang.Exception -> L27
            r3 = 0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 <= 0) goto L2b
            long r1 = r7.getCurBytes()     // Catch: java.lang.Exception -> L27
            r3 = 100
            long r1 = r1 * r3
            long r3 = r7.getTotalBytes()     // Catch: java.lang.Exception -> L27
            long r1 = r1 / r3
            int r2 = (int) r1
            goto L2c
        L27:
            r1 = move-exception
            r1.printStackTrace()
        L2b:
            r2 = 0
        L2c:
            if (r2 >= 0) goto L2f
            goto L30
        L2f:
            r0 = r2
        L30:
            r8.updateFromNewDownloadInfo(r7)
            com.ss.android.downloadlib.addownload.i.a(r8)
            java.util.Iterator r9 = r9.iterator()
        L3a:
            boolean r1 = r9.hasNext()
            if (r1 == 0) goto La7
            java.lang.Object r1 = r9.next()
            com.ss.android.download.api.download.DownloadStatusChangeListener r1 = (com.ss.android.download.api.download.DownloadStatusChangeListener) r1
            int r2 = r7.getStatus()
            switch(r2) {
                case -4: goto L92;
                case -3: goto L80;
                case -2: goto L74;
                case -1: goto L70;
                case 0: goto L92;
                case 1: goto L64;
                case 2: goto L64;
                case 3: goto L64;
                case 4: goto L64;
                case 5: goto L64;
                case 6: goto L4d;
                case 7: goto L64;
                case 8: goto L64;
                case 9: goto L4d;
                case 10: goto L4d;
                case 11: goto L4e;
                default: goto L4d;
            }
        L4d:
            goto L3a
        L4e:
            boolean r2 = r1 instanceof com.ss.android.download.api.download.a
            if (r2 == 0) goto L58
            com.ss.android.download.api.download.a r1 = (com.ss.android.download.api.download.a) r1
            r1.a(r7)
            goto L3a
        L58:
            int r2 = r7.getId()
            int r2 = com.ss.android.downloadlib.addownload.i.a(r2, r0)
            r1.onDownloadActive(r8, r2)
            goto L3a
        L64:
            int r2 = r7.getId()
            int r2 = com.ss.android.downloadlib.addownload.i.a(r2, r0)
            r1.onDownloadActive(r8, r2)
            goto L3a
        L70:
            r1.onDownloadFailed(r8)
            goto L3a
        L74:
            int r2 = r7.getId()
            int r2 = com.ss.android.downloadlib.addownload.i.a(r2, r0)
            r1.onDownloadPaused(r8, r2)
            goto L3a
        L80:
            com.ss.android.downloadlib.addownload.b.e r2 = r6.f57295b
            com.ss.android.download.api.download.DownloadModel r2 = r2.f57140b
            boolean r2 = com.ss.android.downloadlib.g.l.a(r2)
            if (r2 == 0) goto L8e
            r1.onInstalled(r8)
            goto L3a
        L8e:
            r1.onDownloadFinished(r8)
            goto L3a
        L92:
            com.ss.android.downloadlib.addownload.b.e r2 = r6.f57295b
            com.ss.android.download.api.download.DownloadModel r2 = r2.f57140b
            boolean r2 = com.ss.android.downloadlib.g.l.a(r2)
            if (r2 == 0) goto La3
            r2 = -3
            r8.status = r2
            r1.onInstalled(r8)
            goto L3a
        La3:
            r1.onIdle()
            goto L3a
        La7:
            return
        La8:
            java.util.Iterator r7 = r9.iterator()
        Lac:
            boolean r8 = r7.hasNext()
            if (r8 == 0) goto Lbc
            java.lang.Object r8 = r7.next()
            com.ss.android.download.api.download.DownloadStatusChangeListener r8 = (com.ss.android.download.api.download.DownloadStatusChangeListener) r8
            r8.onIdle()
            goto Lac
        Lbc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.downloadlib.addownload.g.a(com.ss.android.socialbase.downloader.model.DownloadInfo, com.ss.android.download.api.model.DownloadShortInfo, java.util.List):void");
    }

    @NonNull
    public static List<DownloadStatusChangeListener> a(Map<Integer, Object> map) {
        ArrayList arrayList = new ArrayList();
        if (map != null && !map.isEmpty()) {
            for (Object obj : map.values()) {
                if (obj instanceof DownloadStatusChangeListener) {
                    arrayList.add((DownloadStatusChangeListener) obj);
                } else if (obj instanceof SoftReference) {
                    SoftReference softReference = (SoftReference) obj;
                    if (softReference.get() instanceof DownloadStatusChangeListener) {
                        arrayList.add((DownloadStatusChangeListener) softReference.get());
                    }
                }
            }
        }
        return arrayList;
    }
}
