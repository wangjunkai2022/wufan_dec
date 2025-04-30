package com.ss.android.socialbase.downloader.downloader;

import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.ss.android.socialbase.downloader.constants.DownloadStatus;
import com.ss.android.socialbase.downloader.depend.IDownloadListener;
import com.ss.android.socialbase.downloader.depend.ai;
import com.ss.android.socialbase.downloader.depend.x;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: DownloadStatusHandler.java */
/* loaded from: classes4.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f58011a = "f";

    /* renamed from: b  reason: collision with root package name */
    private final boolean f58012b;

    /* renamed from: c  reason: collision with root package name */
    private DownloadInfo f58013c;

    /* renamed from: d  reason: collision with root package name */
    private final j f58014d;

    /* renamed from: e  reason: collision with root package name */
    private final Handler f58015e;

    /* renamed from: f  reason: collision with root package name */
    private DownloadTask f58016f;

    /* renamed from: g  reason: collision with root package name */
    private SparseArray<IDownloadListener> f58017g;

    /* renamed from: h  reason: collision with root package name */
    private SparseArray<IDownloadListener> f58018h;

    /* renamed from: i  reason: collision with root package name */
    private SparseArray<IDownloadListener> f58019i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f58020j = false;

    /* renamed from: k  reason: collision with root package name */
    private volatile long f58021k = 0;

    /* renamed from: l  reason: collision with root package name */
    private final AtomicLong f58022l = new AtomicLong();

    /* renamed from: m  reason: collision with root package name */
    private boolean f58023m = false;

    /* renamed from: n  reason: collision with root package name */
    private int f58024n;

    /* renamed from: o  reason: collision with root package name */
    private long f58025o;

    /* renamed from: p  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.depend.n f58026p;

    /* renamed from: q  reason: collision with root package name */
    private x f58027q;

    public f(DownloadTask downloadTask, Handler handler) {
        this.f58016f = downloadTask;
        j();
        this.f58015e = handler;
        this.f58014d = c.x();
        DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
        if (downloadInfo != null) {
            this.f58012b = com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).a("fix_start_with_file_exist_update_error");
        } else {
            this.f58012b = false;
        }
    }

    private void j() {
        DownloadTask downloadTask = this.f58016f;
        if (downloadTask != null) {
            this.f58013c = downloadTask.getDownloadInfo();
            this.f58017g = this.f58016f.getDownloadListeners(com.ss.android.socialbase.downloader.constants.f.MAIN);
            this.f58019i = this.f58016f.getDownloadListeners(com.ss.android.socialbase.downloader.constants.f.NOTIFICATION);
            this.f58018h = this.f58016f.getDownloadListeners(com.ss.android.socialbase.downloader.constants.f.SUB);
            this.f58026p = this.f58016f.getDepend();
            this.f58027q = this.f58016f.getMonitorDepend();
        }
    }

    private void k() {
        ExecutorService l4 = c.l();
        if (l4 != null) {
            l4.execute(new Runnable() { // from class: com.ss.android.socialbase.downloader.downloader.f.1
                @Override // java.lang.Runnable
                public void run() {
                    f.this.f58014d.i(f.this.f58013c.getId());
                    f.this.a(1, (BaseException) null);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        try {
            com.ss.android.socialbase.downloader.c.a.b(f58011a, "saveFileAsTargetName onSuccess");
            try {
                m();
                this.f58013c.setFirstSuccess(false);
                this.f58013c.setSuccessByCache(false);
                a(-3, (BaseException) null);
                this.f58014d.c(this.f58013c.getId(), this.f58013c.getTotalBytes());
                this.f58014d.d(this.f58013c.getId());
                this.f58014d.m(this.f58013c.getId());
            } catch (BaseException e4) {
                a(e4);
            }
        } catch (Throwable th) {
            a(new BaseException(1008, com.ss.android.socialbase.downloader.i.f.b(th, "onCompleted")));
        }
    }

    private void m() throws BaseException {
        List<com.ss.android.socialbase.downloader.depend.m> downloadCompleteHandlers = this.f58016f.getDownloadCompleteHandlers();
        if (downloadCompleteHandlers.isEmpty()) {
            return;
        }
        DownloadInfo downloadInfo = this.f58013c;
        a(11, (BaseException) null);
        this.f58014d.a(downloadInfo);
        for (com.ss.android.socialbase.downloader.depend.m mVar : downloadCompleteHandlers) {
            try {
                if (mVar.b(downloadInfo)) {
                    mVar.a(downloadInfo);
                    this.f58014d.a(downloadInfo);
                }
            } catch (BaseException e4) {
                throw e4;
            } catch (Throwable th) {
                throw new BaseException(1071, th);
            }
        }
    }

    public void d() {
        this.f58013c.setStatus(-2);
        try {
            this.f58014d.d(this.f58013c.getId(), this.f58013c.getCurBytes());
        } catch (SQLiteException e4) {
            e4.printStackTrace();
        }
        a(-2, (BaseException) null);
    }

    public void e() {
        this.f58013c.setStatus(-7);
        try {
            this.f58014d.j(this.f58013c.getId());
        } catch (SQLiteException e4) {
            e4.printStackTrace();
        }
        a(-7, (BaseException) null);
    }

    public void f() {
        this.f58013c.setFirstDownload(false);
        if (!this.f58013c.isIgnoreDataVerify() && this.f58013c.getCurBytes() != this.f58013c.getTotalBytes()) {
            com.ss.android.socialbase.downloader.c.a.b(f58011a, this.f58013c.getErrorBytesLog());
            a(new com.ss.android.socialbase.downloader.exception.f(1027, "current bytes is not equals to total bytes, bytes changed with process : " + this.f58013c.getByteInvalidRetryStatus()));
        } else if (this.f58013c.getCurBytes() <= 0) {
            com.ss.android.socialbase.downloader.c.a.b(f58011a, this.f58013c.getErrorBytesLog());
            a(new com.ss.android.socialbase.downloader.exception.f(1026, "curBytes is 0, bytes changed with process : " + this.f58013c.getByteInvalidRetryStatus()));
        } else if (!this.f58013c.isIgnoreDataVerify() && this.f58013c.getTotalBytes() <= 0) {
            com.ss.android.socialbase.downloader.c.a.b(f58011a, this.f58013c.getErrorBytesLog());
            a(new com.ss.android.socialbase.downloader.exception.f(1044, "TotalBytes is 0, bytes changed with process : " + this.f58013c.getByteInvalidRetryStatus()));
        } else {
            String str = f58011a;
            com.ss.android.socialbase.downloader.c.a.b(str, "" + this.f58013c.getName() + " onCompleted start save file as target name");
            x xVar = this.f58027q;
            DownloadTask downloadTask = this.f58016f;
            if (downloadTask != null) {
                xVar = downloadTask.getMonitorDepend();
            }
            com.ss.android.socialbase.downloader.i.f.a(this.f58013c, xVar, new ai() { // from class: com.ss.android.socialbase.downloader.downloader.f.2
                @Override // com.ss.android.socialbase.downloader.depend.ai
                public void a() {
                    f.this.l();
                }

                @Override // com.ss.android.socialbase.downloader.depend.ai
                public void a(BaseException baseException) {
                    String str2 = f.f58011a;
                    StringBuilder sb = new StringBuilder();
                    sb.append("saveFileAsTargetName onFailed : ");
                    sb.append(baseException != null ? baseException.getErrorMessage() : "");
                    com.ss.android.socialbase.downloader.c.a.b(str2, sb.toString());
                    f.this.a(baseException);
                }
            });
        }
    }

    public void g() throws BaseException {
        if (this.f58012b) {
            m();
            com.ss.android.socialbase.downloader.c.a.b(f58011a, "onCompleteForFileExist");
            this.f58013c.setSuccessByCache(true);
            a(-3, (BaseException) null);
            this.f58014d.c(this.f58013c.getId(), this.f58013c.getTotalBytes());
            this.f58014d.d(this.f58013c.getId());
            this.f58014d.a(this.f58013c);
            this.f58014d.m(this.f58013c.getId());
            return;
        }
        m();
        com.ss.android.socialbase.downloader.c.a.b(f58011a, "onCompleteForFileExist");
        this.f58013c.setSuccessByCache(true);
        a(-3, (BaseException) null);
        this.f58014d.c(this.f58013c.getId(), this.f58013c.getTotalBytes());
        this.f58014d.d(this.f58013c.getId());
        this.f58014d.m(this.f58013c.getId());
    }

    public void h() {
        this.f58013c.setStatus(8);
        this.f58013c.setAsyncHandleStatus(com.ss.android.socialbase.downloader.constants.a.ASYNC_HANDLE_WAITING);
        com.ss.android.socialbase.downloader.impls.a C = c.C();
        if (C != null) {
            C.a(this.f58013c.getId(), this.f58016f.getHashCodeForSameTask(), 8);
        }
    }

    public void b() {
        if (this.f58013c.canSkipStatusHandler()) {
            this.f58013c.changeSkipStatus();
            return;
        }
        this.f58014d.g(this.f58013c.getId());
        if (this.f58013c.isFirstDownload()) {
            a(6, (BaseException) null);
        }
        a(2, (BaseException) null);
    }

    public void c() {
        a(-4, (BaseException) null);
    }

    private BaseException c(BaseException baseException) {
        Context N;
        if (com.ss.android.socialbase.downloader.g.a.a(this.f58013c.getId()).a("download_failed_check_net", 1) != 1 || !com.ss.android.socialbase.downloader.i.f.i(baseException) || (N = c.N()) == null || com.ss.android.socialbase.downloader.i.f.c(N)) {
            return baseException;
        }
        return new BaseException(this.f58013c.isOnlyWifi() ? 1013 : 1049, baseException.getErrorMessage());
    }

    public void a() {
        if (this.f58013c.canSkipStatusHandler()) {
            return;
        }
        this.f58013c.setStatus(1);
        k();
    }

    public void a(long j4, String str, String str2) {
        this.f58013c.setTotalBytes(j4);
        this.f58013c.seteTag(str);
        if (!TextUtils.isEmpty(str2) && TextUtils.isEmpty(this.f58013c.getName())) {
            this.f58013c.setName(str2);
        }
        try {
            this.f58014d.a(this.f58013c.getId(), j4, str, str2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        a(3, (BaseException) null);
        this.f58025o = this.f58013c.getMinByteIntervalForPostToMainThread(j4);
        this.f58024n = this.f58013c.getMinProgressTimeMsInterval();
        this.f58020j = true;
        com.ss.android.socialbase.downloader.impls.r.a().e();
    }

    private void b(BaseException baseException) {
        StringBuilder sb = new StringBuilder();
        sb.append("handleError::");
        sb.append(baseException);
        sb.append(" \r\n");
        sb.append(Log.getStackTraceString(new Throwable()));
        if (baseException != null && baseException.getCause() != null && (baseException.getCause() instanceof SQLiteFullException)) {
            try {
                this.f58014d.f(this.f58013c.getId());
            } catch (SQLiteException e4) {
                e4.printStackTrace();
            }
        } else {
            try {
                try {
                    this.f58014d.b(this.f58013c.getId(), this.f58013c.getCurBytes());
                } catch (SQLiteException unused) {
                    this.f58014d.f(this.f58013c.getId());
                }
            } catch (SQLiteException e5) {
                e5.printStackTrace();
            }
        }
        BaseException c4 = c(baseException);
        this.f58013c.setFailedException(c4);
        a(c4 instanceof com.ss.android.socialbase.downloader.exception.e ? -2 : -1, c4);
        if (com.ss.android.socialbase.downloader.g.a.a(this.f58013c.getId()).a("retry_schedule", 0) > 0) {
            com.ss.android.socialbase.downloader.impls.r.a().a(this.f58013c);
        }
    }

    public boolean a(long j4) {
        this.f58022l.addAndGet(j4);
        this.f58013c.increaseCurBytes(j4);
        long uptimeMillis = SystemClock.uptimeMillis();
        return a(uptimeMillis, b(uptimeMillis));
    }

    private boolean b(long j4) {
        boolean z3 = true;
        if (!this.f58023m) {
            this.f58023m = true;
            return true;
        }
        long j5 = j4 - this.f58021k;
        if (this.f58022l.get() < this.f58025o && j5 < this.f58024n) {
            z3 = false;
        }
        if (z3) {
            this.f58021k = j4;
            this.f58022l.set(0L);
        }
        return z3;
    }

    public void a(BaseException baseException, boolean z3) {
        this.f58013c.setFirstDownload(false);
        this.f58022l.set(0L);
        b(baseException, z3);
    }

    public void a(com.ss.android.socialbase.downloader.model.b bVar, BaseException baseException, boolean z3) {
        this.f58013c.setFirstDownload(false);
        this.f58022l.set(0L);
        this.f58014d.h(this.f58013c.getId());
        a(z3 ? 10 : 9, baseException, true);
    }

    private void b(BaseException baseException, boolean z3) {
        this.f58014d.h(this.f58013c.getId());
        a(z3 ? 7 : 5, baseException);
    }

    public void a(BaseException baseException) {
        this.f58013c.setFirstDownload(false);
        b(baseException);
    }

    public void a(String str) throws BaseException {
        String str2 = f58011a;
        com.ss.android.socialbase.downloader.c.a.b(str2, "onCompleteForFileExist existTargetFileName is " + str + " but curName is " + this.f58013c.getName());
        if (this.f58012b) {
            com.ss.android.socialbase.downloader.i.f.a(this.f58013c, str);
            m();
            this.f58013c.setSuccessByCache(true);
            a(-3, (BaseException) null);
            this.f58014d.a(this.f58013c);
            return;
        }
        this.f58014d.a(this.f58013c);
        com.ss.android.socialbase.downloader.i.f.a(this.f58013c, str);
        this.f58013c.setSuccessByCache(true);
        m();
        a(-3, (BaseException) null);
    }

    private boolean a(long j4, boolean z3) {
        boolean z4 = false;
        if (this.f58013c.getCurBytes() == this.f58013c.getTotalBytes()) {
            try {
                this.f58014d.a(this.f58013c.getId(), this.f58013c.getCurBytes());
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            return false;
        }
        if (this.f58020j) {
            this.f58020j = false;
            this.f58013c.setStatus(4);
        }
        if (this.f58013c.isNeedPostProgress() && z3) {
            z4 = true;
        }
        a(4, (BaseException) null, z4);
        return z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, BaseException baseException) {
        a(i2, baseException, true);
    }

    private void a(int i2, BaseException baseException, boolean z3) {
        SparseArray<IDownloadListener> sparseArray;
        SparseArray<IDownloadListener> sparseArray2;
        int status = this.f58013c.getStatus();
        if (status == -3 && i2 == 4) {
            return;
        }
        j();
        if (i2 != 4 && DownloadStatus.isRealTimeUploadStatus(i2)) {
            this.f58013c.updateRealDownloadTime(false);
            if (DownloadStatus.isTimeUploadStatus(i2)) {
                this.f58013c.updateDownloadTime();
            }
        }
        if (!this.f58013c.isAddListenerToSameTask()) {
            com.ss.android.socialbase.downloader.d.a.a(this.f58016f, baseException, i2);
        }
        if (i2 == 6) {
            this.f58013c.setStatus(2);
        } else if (i2 == -6) {
            this.f58013c.setStatus(-3);
        } else {
            this.f58013c.setStatus(i2);
        }
        if (status == -3 || status == -1) {
            if (this.f58013c.getRetryDelayStatus() == com.ss.android.socialbase.downloader.constants.g.DELAY_RETRY_DOWNLOADING) {
                this.f58013c.setRetryDelayStatus(com.ss.android.socialbase.downloader.constants.g.DELAY_RETRY_DOWNLOADED);
            }
            if (this.f58013c.getAsyncHandleStatus() == com.ss.android.socialbase.downloader.constants.a.ASYNC_HANDLE_DOWNLOADING) {
                this.f58013c.setAsyncHandleStatus(com.ss.android.socialbase.downloader.constants.a.ASYNC_HANDLE_DOWNLOADED);
            }
            if (this.f58013c.getByteInvalidRetryStatus() == com.ss.android.socialbase.downloader.constants.b.BYTE_INVALID_RETRY_STATUS_DOWNLOADING) {
                this.f58013c.setByteInvalidRetryStatus(com.ss.android.socialbase.downloader.constants.b.BYTE_INVALID_RETRY_STATUS_DOWNLOADED);
            }
        }
        com.ss.android.socialbase.downloader.i.c.a(i2, this.f58018h, true, this.f58013c, baseException);
        if (i2 == -4) {
            return;
        }
        if (z3 && this.f58015e != null && (((sparseArray = this.f58017g) != null && sparseArray.size() > 0) || ((sparseArray2 = this.f58019i) != null && sparseArray2.size() > 0 && (this.f58013c.canShowNotification() || this.f58013c.isAutoInstallWithoutNotification())))) {
            this.f58015e.obtainMessage(i2, this.f58013c.getId(), this.f58016f.getHashCodeForSameTask(), baseException).sendToTarget();
            return;
        }
        com.ss.android.socialbase.downloader.impls.a C = c.C();
        if (C != null) {
            C.a(this.f58013c.getId(), this.f58016f.getHashCodeForSameTask(), i2);
        }
    }
}
