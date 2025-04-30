package com.ss.android.downloadlib.addownload;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.ss.android.download.api.config.IDownloadButtonClickListener;
import com.ss.android.download.api.config.OnItemClickListener;
import com.ss.android.download.api.config.s;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.download.DownloadStatusChangeListener;
import com.ss.android.download.api.download.c;
import com.ss.android.download.api.model.DownloadShortInfo;
import com.ss.android.downloadad.api.download.AdDownloadModel;
import com.ss.android.downloadlib.addownload.g;
import com.ss.android.downloadlib.g.m;
import com.ss.android.socialbase.appdownloader.DownloadHandlerService;
import com.ss.android.socialbase.downloader.depend.IDownloadListener;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* compiled from: CommonDownloadHandler.java */
/* loaded from: classes4.dex */
public class e implements f, m.a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f57260a = "e";

    /* renamed from: b  reason: collision with root package name */
    private final m f57261b;

    /* renamed from: c  reason: collision with root package name */
    private g f57262c;

    /* renamed from: d  reason: collision with root package name */
    private d f57263d;

    /* renamed from: e  reason: collision with root package name */
    private WeakReference<Context> f57264e;

    /* renamed from: f  reason: collision with root package name */
    private final Map<Integer, Object> f57265f;

    /* renamed from: g  reason: collision with root package name */
    private DownloadShortInfo f57266g;

    /* renamed from: h  reason: collision with root package name */
    private DownloadInfo f57267h;

    /* renamed from: i  reason: collision with root package name */
    private c f57268i;

    /* renamed from: j  reason: collision with root package name */
    private final IDownloadListener f57269j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f57270k;

    /* renamed from: l  reason: collision with root package name */
    private long f57271l;

    /* renamed from: m  reason: collision with root package name */
    private long f57272m;

    /* renamed from: n  reason: collision with root package name */
    private DownloadModel f57273n;

    /* renamed from: o  reason: collision with root package name */
    private DownloadEventConfig f57274o;

    /* renamed from: p  reason: collision with root package name */
    private DownloadController f57275p;

    /* renamed from: q  reason: collision with root package name */
    private SoftReference<OnItemClickListener> f57276q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f57277r;

    /* renamed from: s  reason: collision with root package name */
    private final boolean f57278s;

    /* renamed from: t  reason: collision with root package name */
    private SoftReference<IDownloadButtonClickListener> f57279t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommonDownloadHandler.java */
    /* loaded from: classes4.dex */
    public interface a {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommonDownloadHandler.java */
    /* loaded from: classes4.dex */
    public interface b {
        void a(long j4);
    }

    public e() {
        m mVar = new m(Looper.getMainLooper(), this);
        this.f57261b = mVar;
        this.f57265f = new ConcurrentHashMap();
        this.f57269j = new g.a(mVar);
        this.f57272m = -1L;
        this.f57273n = null;
        this.f57274o = null;
        this.f57275p = null;
        this.f57262c = new g(this);
        this.f57263d = new d(mVar);
        this.f57278s = com.ss.android.socialbase.downloader.g.a.c().a("ttdownloader_callback_twice");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context getContext() {
        WeakReference<Context> weakReference = this.f57264e;
        if (weakReference != null && weakReference.get() != null) {
            return this.f57264e.get();
        }
        return j.getContext();
    }

    private void k() {
        SoftReference<OnItemClickListener> softReference = this.f57276q;
        if (softReference != null && softReference.get() != null) {
            this.f57276q.get().onItemClick(this.f57273n, l(), m());
            this.f57276q = null;
            return;
        }
        j.b().a(getContext(), this.f57273n, m(), l());
    }

    @NonNull
    private DownloadEventConfig l() {
        DownloadEventConfig downloadEventConfig = this.f57274o;
        return downloadEventConfig == null ? new c.a().a() : downloadEventConfig;
    }

    @NonNull
    private DownloadController m() {
        if (this.f57275p == null) {
            this.f57275p = new com.ss.android.download.api.download.b();
        }
        return this.f57275p;
    }

    private void n() {
        String str = f57260a;
        com.ss.android.downloadlib.g.k.a(str, "pICD", null);
        if (this.f57262c.d(this.f57267h)) {
            com.ss.android.downloadlib.g.k.a(str, "pICD BC", null);
            f(false);
            return;
        }
        com.ss.android.downloadlib.g.k.a(str, "pICD IC", null);
        k();
    }

    private boolean o() {
        if (com.ss.android.socialbase.downloader.g.a.c().a("fix_click_start")) {
            DownloadInfo downloadInfo = this.f57267h;
            if (downloadInfo == null) {
                return true;
            }
            if ((downloadInfo.getStatus() == -3 && this.f57267h.getCurBytes() <= 0) || this.f57267h.getStatus() == 0 || this.f57267h.getStatus() == -4) {
                return true;
            }
            return com.ss.android.socialbase.downloader.i.f.a(this.f57267h.getStatus(), this.f57267h.getSavePath(), this.f57267h.getName());
        }
        DownloadInfo downloadInfo2 = this.f57267h;
        if (downloadInfo2 == null) {
            return true;
        }
        return !(downloadInfo2.getStatus() == -3 || Downloader.getInstance(j.getContext()).canResume(this.f57267h.getId())) || this.f57267h.getStatus() == 0;
    }

    private void p() {
        c cVar = this.f57268i;
        if (cVar != null && cVar.getStatus() != AsyncTask.Status.FINISHED) {
            this.f57268i.cancel(true);
        }
        c cVar2 = new c();
        this.f57268i = cVar2;
        com.ss.android.downloadlib.g.b.a(cVar2, this.f57273n.getDownloadUrl(), this.f57273n.getPackageName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DownloadShortInfo q() {
        if (this.f57266g == null) {
            this.f57266g = new DownloadShortInfo();
        }
        return this.f57266g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(final boolean z3) {
        this.f57263d.a(new com.ss.android.downloadlib.addownload.b.e(this.f57272m, this.f57273n, l(), m()));
        this.f57263d.a(0, 0L, 0L, new a() { // from class: com.ss.android.downloadlib.addownload.e.5
            @Override // com.ss.android.downloadlib.addownload.e.a
            public void a() {
                if (e.this.f57263d.a()) {
                    return;
                }
                e.this.h(z3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(boolean z3) {
        for (DownloadStatusChangeListener downloadStatusChangeListener : g.a(this.f57265f)) {
            downloadStatusChangeListener.onDownloadStart(this.f57273n, m());
        }
        int a4 = this.f57262c.a(j.getContext(), this.f57269j);
        String str = f57260a;
        com.ss.android.downloadlib.g.k.a(str, "beginDown id:" + a4, null);
        if (a4 != 0) {
            if (this.f57267h != null && !com.ss.android.socialbase.downloader.g.a.c().a("fix_click_start")) {
                this.f57262c.a(this.f57267h, false);
            } else if (z3) {
                this.f57262c.a();
            }
        } else {
            DownloadInfo a5 = new DownloadInfo.a(this.f57273n.getDownloadUrl()).a();
            a5.setStatus(-1);
            a(a5);
            com.ss.android.downloadlib.d.a.a().a(this.f57272m, new BaseException(2, "start download failed, id=0"));
            com.ss.android.downloadlib.e.c.a().b("beginDown");
        }
        if (this.f57262c.a(c())) {
            com.ss.android.downloadlib.g.k.a(str, "beginDown IC id:" + a4, null);
            k();
        }
    }

    public boolean c() {
        DownloadInfo downloadInfo = this.f57267h;
        return (downloadInfo == null || downloadInfo.getStatus() == 0) ? false : true;
    }

    @Override // com.ss.android.downloadlib.addownload.f
    public long d() {
        return this.f57271l;
    }

    public boolean e() {
        return j.i().optInt("quick_app_enable_switch", 0) == 0 && this.f57273n.getQuickAppModel() != null && !TextUtils.isEmpty(this.f57273n.getQuickAppModel().a()) && com.ss.android.downloadlib.addownload.c.a(this.f57267h) && com.ss.android.downloadlib.g.l.a(getContext(), new Intent("android.intent.action.VIEW", Uri.parse(this.f57273n.getQuickAppModel().a())));
    }

    public void f() {
        this.f57261b.post(new Runnable() { // from class: com.ss.android.downloadlib.addownload.e.1
            @Override // java.lang.Runnable
            public void run() {
                for (DownloadStatusChangeListener downloadStatusChangeListener : g.a(e.this.f57265f)) {
                    downloadStatusChangeListener.onInstalled(e.this.q());
                }
            }
        });
    }

    public boolean i() {
        SoftReference<IDownloadButtonClickListener> softReference = this.f57279t;
        if (softReference == null) {
            return false;
        }
        return h.a(this.f57273n, softReference.get());
    }

    private boolean c(int i2) {
        if (e()) {
            int i4 = -1;
            String a4 = this.f57273n.getQuickAppModel().a();
            if (i2 == 1) {
                i4 = 5;
            } else if (i2 == 2) {
                i4 = 4;
            }
            DownloadModel downloadModel = this.f57273n;
            if (downloadModel instanceof AdDownloadModel) {
                ((AdDownloadModel) downloadModel).setFunnelType(3);
            }
            boolean c4 = com.ss.android.downloadlib.g.i.c(j.getContext(), a4);
            if (c4) {
                com.ss.android.downloadlib.d.a.a().a(this.f57272m, i2);
                Message obtain = Message.obtain();
                obtain.what = i4;
                obtain.obj = Long.valueOf(this.f57273n.getId());
                com.ss.android.downloadlib.addownload.c.a().a(this, i4, this.f57273n);
            } else {
                com.ss.android.downloadlib.d.a.a().a(this.f57272m, false, 0);
            }
            return c4;
        }
        return false;
    }

    private void f(final boolean z3) {
        DownloadModel downloadModel;
        DownloadController downloadController;
        DownloadController downloadController2;
        String str = f57260a;
        com.ss.android.downloadlib.g.k.a(str, "pBCD", null);
        if (o()) {
            com.ss.android.downloadlib.addownload.b.e e4 = com.ss.android.downloadlib.addownload.b.f.a().e(this.f57272m);
            if (this.f57277r) {
                if (i()) {
                    if (d(false) && (downloadController2 = e4.f57142d) != null && downloadController2.isAutoDownloadOnCardShow()) {
                        a(z3, true);
                        return;
                    }
                    return;
                }
                a(z3, true);
                return;
            } else if (this.f57273n.isAd() && (downloadController = e4.f57142d) != null && downloadController.enableShowComplianceDialog() && e4.f57140b != null && com.ss.android.downloadlib.addownload.compliance.b.a().a(e4.f57140b) && com.ss.android.downloadlib.addownload.compliance.b.a().a(e4)) {
                return;
            } else {
                a(z3, true);
                return;
            }
        }
        com.ss.android.downloadlib.g.k.a(str, "pBCD continue download, status:" + this.f57267h.getStatus(), null);
        DownloadInfo downloadInfo = this.f57267h;
        if (downloadInfo != null && (downloadModel = this.f57273n) != null) {
            downloadInfo.setOnlyWifi(downloadModel.isNeedWifi());
        }
        final int status = this.f57267h.getStatus();
        final int id = this.f57267h.getId();
        final com.ss.android.downloadad.api.a.b a4 = com.ss.android.downloadlib.addownload.b.f.a().a(this.f57267h);
        if (status != -2 && status != -1) {
            if (l.a(status)) {
                if (this.f57273n.enablePause()) {
                    this.f57263d.a(true);
                    com.ss.android.downloadlib.c.h.a().b(com.ss.android.downloadlib.addownload.b.f.a().d(this.f57272m));
                    com.ss.android.downloadlib.addownload.d.f.a().a(a4, status, new com.ss.android.downloadlib.addownload.d.c() { // from class: com.ss.android.downloadlib.addownload.e.3
                        @Override // com.ss.android.downloadlib.addownload.d.c
                        public void a(com.ss.android.downloadad.api.a.b bVar) {
                            if (e.this.f57267h == null && com.ss.android.socialbase.downloader.g.a.c().a("fix_handle_pause")) {
                                e.this.f57267h = Downloader.getInstance(j.getContext()).getDownloadInfo(id);
                            }
                            e.this.f57262c.a(e.this.f57267h, z3);
                            if (e.this.f57267h != null && com.ss.android.socialbase.downloader.i.f.b(j.getContext()) && e.this.f57267h.isPauseReserveOnWifi()) {
                                e.this.f57267h.stopPauseReserveOnWifi();
                                com.ss.android.downloadlib.d.a.a().b("pause_reserve_wifi_cancel_on_wifi", a4);
                                return;
                            }
                            e eVar = e.this;
                            eVar.a(id, status, eVar.f57267h);
                        }
                    });
                    return;
                }
                return;
            }
            this.f57262c.a(this.f57267h, z3);
            a(id, status, this.f57267h);
            return;
        }
        this.f57262c.a(this.f57267h, z3);
        if (a4 != null) {
            a4.h(System.currentTimeMillis());
            a4.i(this.f57267h.getCurBytes());
        }
        this.f57267h.setDownloadFromReserveWifi(false);
        this.f57263d.a(new com.ss.android.downloadlib.addownload.b.e(this.f57272m, this.f57273n, l(), m()));
        this.f57263d.a(id, this.f57267h.getCurBytes(), this.f57267h.getTotalBytes(), new a() { // from class: com.ss.android.downloadlib.addownload.e.2
            @Override // com.ss.android.downloadlib.addownload.e.a
            public void a() {
                if (e.this.f57263d.a()) {
                    return;
                }
                e eVar = e.this;
                eVar.a(id, status, eVar.f57267h);
            }
        });
    }

    public boolean d(boolean z3) {
        SoftReference<IDownloadButtonClickListener> softReference = this.f57279t;
        if (softReference != null && softReference.get() != null) {
            try {
                if (!z3) {
                    this.f57279t.get().handleComplianceDialog(true);
                } else {
                    this.f57279t.get().handleMarketFailedComplianceDialog();
                }
                this.f57279t = null;
                return true;
            } catch (Exception unused) {
                com.ss.android.downloadlib.e.c.a().b("mDownloadButtonClickListener has recycled");
                return false;
            }
        }
        com.ss.android.downloadlib.e.c.a().b("mDownloadButtonClickListener has recycled");
        return false;
    }

    public void g() {
        if (this.f57265f.size() == 0) {
            return;
        }
        for (DownloadStatusChangeListener downloadStatusChangeListener : g.a(this.f57265f)) {
            downloadStatusChangeListener.onIdle();
        }
        DownloadInfo downloadInfo = this.f57267h;
        if (downloadInfo != null) {
            downloadInfo.setStatus(-4);
        }
    }

    @Override // com.ss.android.downloadlib.addownload.f
    /* renamed from: a */
    public e b(Context context) {
        if (context != null) {
            this.f57264e = new WeakReference<>(context);
        }
        j.b(context);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CommonDownloadHandler.java */
    /* loaded from: classes4.dex */
    public class c extends AsyncTask<String, Void, DownloadInfo> {
        private c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public DownloadInfo doInBackground(String... strArr) {
            DownloadInfo downloadInfo = null;
            if (strArr != null) {
                if (strArr.length < 1 || !TextUtils.isEmpty(strArr[0])) {
                    String str = strArr[0];
                    if (e.this.f57273n != null && !TextUtils.isEmpty(e.this.f57273n.getFilePath())) {
                        downloadInfo = Downloader.getInstance(j.getContext()).getDownloadInfo(str, e.this.f57273n.getFilePath());
                    }
                    return downloadInfo == null ? com.ss.android.socialbase.appdownloader.d.j().a(j.getContext(), str) : downloadInfo;
                }
                return null;
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public void onPostExecute(DownloadInfo downloadInfo) {
            super.onPostExecute(downloadInfo);
            if (isCancelled() || e.this.f57273n == null) {
                return;
            }
            try {
                com.ss.android.downloadlib.addownload.b.c a4 = com.ss.android.downloadlib.g.l.a(e.this.f57273n.getPackageName(), e.this.f57273n.getVersionCode(), e.this.f57273n.getVersionName());
                com.ss.android.downloadlib.addownload.b.h.a().a(e.this.f57273n.getVersionCode(), a4.b(), com.ss.android.downloadlib.addownload.b.f.a().a(downloadInfo));
                boolean a5 = a4.a();
                if (downloadInfo != null && downloadInfo.getId() != 0 && (a5 || !Downloader.getInstance(j.getContext()).isDownloadSuccessAndFileNotExist(downloadInfo))) {
                    Downloader.getInstance(j.getContext()).removeTaskMainListener(downloadInfo.getId());
                    if (e.this.f57267h == null || e.this.f57267h.getStatus() != -4) {
                        e.this.f57267h = downloadInfo;
                        if (e.this.f57278s) {
                            Downloader.getInstance(j.getContext()).setMainThreadListener(e.this.f57267h.getId(), e.this.f57269j, false);
                        } else {
                            Downloader.getInstance(j.getContext()).setMainThreadListener(e.this.f57267h.getId(), e.this.f57269j);
                        }
                    } else {
                        e.this.f57267h = null;
                    }
                    e.this.f57262c.a(e.this.f57267h, e.this.q(), g.a(e.this.f57265f));
                } else {
                    if (downloadInfo != null && Downloader.getInstance(j.getContext()).isDownloadSuccessAndFileNotExist(downloadInfo)) {
                        com.ss.android.socialbase.downloader.notification.b.a().f(downloadInfo.getId());
                        e.this.f57267h = null;
                    }
                    if (e.this.f57267h != null) {
                        Downloader.getInstance(j.getContext()).removeTaskMainListener(e.this.f57267h.getId());
                        if (e.this.f57278s) {
                            Downloader.getInstance(e.this.getContext()).setMainThreadListener(e.this.f57267h.getId(), e.this.f57269j, false);
                        } else {
                            Downloader.getInstance(e.this.getContext()).setMainThreadListener(e.this.f57267h.getId(), e.this.f57269j);
                        }
                    }
                    if (!a5) {
                        for (DownloadStatusChangeListener downloadStatusChangeListener : g.a(e.this.f57265f)) {
                            downloadStatusChangeListener.onIdle();
                        }
                        e.this.f57267h = null;
                    } else {
                        e eVar = e.this;
                        eVar.f57267h = new DownloadInfo.a(eVar.f57273n.getDownloadUrl()).a();
                        e.this.f57267h.setStatus(-3);
                        e.this.f57262c.a(e.this.f57267h, e.this.q(), g.a(e.this.f57265f));
                    }
                }
                e.this.f57262c.c(e.this.f57267h);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    private void e(boolean z3) {
        if (com.ss.android.downloadlib.g.e.b(this.f57273n).b("notification_opt_2") == 1 && this.f57267h != null) {
            com.ss.android.socialbase.downloader.notification.b.a().f(this.f57267h.getId());
        }
        f(z3);
    }

    @Override // com.ss.android.downloadlib.addownload.f
    /* renamed from: a */
    public e b(int i2, DownloadStatusChangeListener downloadStatusChangeListener) {
        if (downloadStatusChangeListener != null) {
            if (j.i().optInt("back_use_softref_listener") == 1) {
                this.f57265f.put(Integer.valueOf(i2), downloadStatusChangeListener);
            } else {
                this.f57265f.put(Integer.valueOf(i2), new SoftReference(downloadStatusChangeListener));
            }
        }
        return this;
    }

    @Override // com.ss.android.downloadlib.addownload.f
    public boolean b() {
        return this.f57270k;
    }

    @Override // com.ss.android.downloadlib.addownload.f
    public void b(int i2) {
        if (i2 != 1 && i2 != 2) {
            throw new IllegalArgumentException("error actionType");
        }
        this.f57262c.a(this.f57272m);
        if (!com.ss.android.downloadlib.addownload.b.f.a().e(this.f57272m).y()) {
            com.ss.android.downloadlib.e.c.a().a("handleDownload ModelBox !isStrictValid");
        }
        if (this.f57262c.a(getContext(), i2, this.f57277r)) {
            return;
        }
        boolean c4 = c(i2);
        if (i2 == 1) {
            if (c4) {
                return;
            }
            String str = f57260a;
            com.ss.android.downloadlib.g.k.a(str, "handleDownload id:" + this.f57272m + ",pIC:", null);
            c(true);
        } else if (i2 == 2 && !c4) {
            String str2 = f57260a;
            com.ss.android.downloadlib.g.k.a(str2, "handleDownload id:" + this.f57272m + ",pBC:", null);
            b(true);
        }
    }

    @Override // com.ss.android.downloadlib.addownload.f
    /* renamed from: a */
    public e b(DownloadModel downloadModel) {
        if (downloadModel != null) {
            if (downloadModel.isAd()) {
                if (downloadModel.getId() <= 0 || TextUtils.isEmpty(downloadModel.getLogExtra())) {
                    com.ss.android.downloadlib.e.c.a().a("setDownloadModel ad error");
                }
            } else if (downloadModel.getId() == 0 && (downloadModel instanceof AdDownloadModel)) {
                com.ss.android.downloadlib.e.c.a().a(false, "setDownloadModel id=0");
                if (com.ss.android.socialbase.downloader.g.a.c().a("fix_model_id")) {
                    ((AdDownloadModel) downloadModel).setId(downloadModel.getDownloadUrl().hashCode());
                }
            }
            com.ss.android.downloadlib.addownload.b.f.a().a(downloadModel);
            this.f57272m = downloadModel.getId();
            this.f57273n = downloadModel;
            if (h.a(downloadModel)) {
                ((AdDownloadModel) downloadModel).setExtraValue(3L);
                com.ss.android.downloadad.api.a.b d4 = com.ss.android.downloadlib.addownload.b.f.a().d(this.f57272m);
                if (d4 != null && d4.l() != 3) {
                    d4.e(3L);
                    com.ss.android.downloadlib.addownload.b.i.a().a(d4);
                }
            }
        }
        return this;
    }

    public void c(boolean z3) {
        if (z3) {
            com.ss.android.downloadlib.d.a.a().a(this.f57272m, 1);
        }
        n();
    }

    @Override // com.ss.android.downloadlib.addownload.f
    public void h() {
        com.ss.android.downloadlib.addownload.b.f.a().f(this.f57272m);
    }

    public void b(boolean z3) {
        e(z3);
    }

    @Override // com.ss.android.downloadlib.addownload.f
    /* renamed from: a */
    public e b(DownloadController downloadController) {
        JSONObject extra;
        this.f57275p = downloadController;
        if (com.ss.android.downloadlib.g.e.b(this.f57273n).b("force_auto_open") == 1) {
            m().setLinkMode(1);
        }
        if (com.ss.android.socialbase.downloader.g.a.c().a("fix_show_dialog") && (extra = this.f57273n.getExtra()) != null && extra.optInt("subprocess") > 0) {
            m().setEnableNewActivity(false);
        }
        com.ss.android.downloadlib.addownload.b.f.a().a(this.f57272m, m());
        return this;
    }

    @Override // com.ss.android.downloadlib.addownload.f
    /* renamed from: a */
    public e b(DownloadEventConfig downloadEventConfig) {
        this.f57274o = downloadEventConfig;
        this.f57277r = l().getDownloadScene() == 0;
        com.ss.android.downloadlib.addownload.b.f.a().a(this.f57272m, l());
        return this;
    }

    @Override // com.ss.android.downloadlib.addownload.f
    public f a(OnItemClickListener onItemClickListener) {
        if (onItemClickListener == null) {
            this.f57276q = null;
        } else {
            this.f57276q = new SoftReference<>(onItemClickListener);
        }
        return this;
    }

    @Override // com.ss.android.downloadlib.addownload.f
    public void a() {
        this.f57270k = true;
        com.ss.android.downloadlib.addownload.b.f.a().a(this.f57272m, l());
        com.ss.android.downloadlib.addownload.b.f.a().a(this.f57272m, m());
        this.f57262c.a(this.f57272m);
        p();
        if (j.i().optInt("enable_empty_listener", 1) == 1 && this.f57265f.get(Integer.MIN_VALUE) == null) {
            b(Integer.MIN_VALUE, new com.ss.android.download.api.config.a());
        }
    }

    @Override // com.ss.android.downloadlib.addownload.f
    public boolean a(int i2) {
        if (i2 == 0) {
            this.f57265f.clear();
        } else {
            this.f57265f.remove(Integer.valueOf(i2));
        }
        if (this.f57265f.isEmpty()) {
            this.f57270k = false;
            this.f57271l = System.currentTimeMillis();
            if (this.f57267h != null) {
                Downloader.getInstance(j.getContext()).removeTaskMainListener(this.f57267h.getId());
            }
            c cVar = this.f57268i;
            if (cVar != null && cVar.getStatus() != AsyncTask.Status.FINISHED) {
                this.f57268i.cancel(true);
            }
            this.f57262c.a(this.f57267h);
            String str = f57260a;
            StringBuilder sb = new StringBuilder();
            sb.append("onUnbind removeCallbacksAndMessages, downloadUrl:");
            DownloadInfo downloadInfo = this.f57267h;
            sb.append(downloadInfo == null ? "" : downloadInfo.getUrl());
            com.ss.android.downloadlib.g.k.a(str, sb.toString(), null);
            this.f57261b.removeCallbacksAndMessages(null);
            this.f57266g = null;
            this.f57267h = null;
            return true;
        }
        if (this.f57265f.size() == 1 && this.f57265f.containsKey(Integer.MIN_VALUE)) {
            this.f57262c.b(this.f57267h);
        }
        return false;
    }

    @Override // com.ss.android.downloadlib.addownload.f
    public void a(boolean z3) {
        if (this.f57267h != null) {
            if (z3) {
                com.ss.android.socialbase.appdownloader.c.d b4 = com.ss.android.socialbase.appdownloader.d.j().b();
                if (b4 != null) {
                    b4.a(this.f57267h);
                }
                Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.c.N()).cancel(this.f57267h.getId(), true);
                return;
            }
            Intent intent = new Intent(j.getContext(), DownloadHandlerService.class);
            intent.setAction("android.ss.intent.action.DOWNLOAD_DELETE");
            intent.putExtra("extra_click_download_ids", this.f57267h.getId());
            j.getContext().startService(intent);
        }
    }

    @Override // com.ss.android.downloadlib.addownload.f
    public f a(long j4) {
        if (j4 != 0) {
            DownloadModel a4 = com.ss.android.downloadlib.addownload.b.f.a().a(j4);
            if (a4 != null) {
                this.f57273n = a4;
                this.f57272m = j4;
                this.f57262c.a(j4);
            }
        } else {
            com.ss.android.downloadlib.e.c.a().a(false, "setModelId");
        }
        return this;
    }

    @Override // com.ss.android.downloadlib.g.m.a
    public void a(Message message) {
        if (message != null && this.f57270k && message.what == 3) {
            this.f57267h = (DownloadInfo) message.obj;
            this.f57262c.a(message, q(), this.f57265f);
        }
    }

    public void a(boolean z3, final boolean z4) {
        if (z3) {
            com.ss.android.downloadlib.d.a.a().a(this.f57272m, 2);
        }
        if (!com.ss.android.downloadlib.g.j.b("android.permission.WRITE_EXTERNAL_STORAGE") && !m().enableNewActivity()) {
            this.f57273n.setFilePath(this.f57262c.b());
        }
        if (com.ss.android.downloadlib.g.e.c(this.f57273n) == 0) {
            com.ss.android.downloadlib.g.k.a(f57260a, "pBCD not start", null);
            this.f57262c.a(new s() { // from class: com.ss.android.downloadlib.addownload.e.4
                @Override // com.ss.android.download.api.config.s
                public void a() {
                    com.ss.android.downloadlib.g.k.a(e.f57260a, "pBCD start download", null);
                    e.this.g(z4);
                }

                @Override // com.ss.android.download.api.config.s
                public void a(String str) {
                    com.ss.android.downloadlib.g.k.a(e.f57260a, "pBCD onDenied", null);
                }
            });
            return;
        }
        g(z4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, int i4, @NonNull DownloadInfo downloadInfo) {
        if (com.ss.android.socialbase.downloader.g.a.c().a("fix_click_start")) {
            if (i4 != -3 && !com.ss.android.socialbase.downloader.downloader.d.a().e(i2)) {
                a(false, false);
                return;
            } else {
                com.ss.android.socialbase.appdownloader.d.j().a(j.getContext(), i2, i4);
                return;
            }
        }
        com.ss.android.socialbase.appdownloader.d.j().a(j.getContext(), i2, i4);
    }

    private void a(DownloadInfo downloadInfo) {
        Message obtain = Message.obtain();
        obtain.what = 3;
        obtain.obj = downloadInfo;
        this.f57261b.sendMessage(obtain);
    }

    @Override // com.ss.android.downloadlib.addownload.f
    public f a(IDownloadButtonClickListener iDownloadButtonClickListener) {
        if (iDownloadButtonClickListener == null) {
            this.f57279t = null;
        } else {
            this.f57279t = new SoftReference<>(iDownloadButtonClickListener);
        }
        return this;
    }
}
