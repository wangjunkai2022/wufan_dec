package com.ss.android.socialbase.downloader.h;

import android.os.Handler;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.view.InputDeviceCompat;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.ss.android.socialbase.downloader.depend.q;
import com.ss.android.socialbase.downloader.depend.r;
import com.ss.android.socialbase.downloader.depend.w;
import com.ss.android.socialbase.downloader.depend.x;
import com.ss.android.socialbase.downloader.downloader.j;
import com.ss.android.socialbase.downloader.downloader.s;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.f.k;
import com.ss.android.socialbase.downloader.f.n;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import com.ss.android.socialbase.downloader.model.b;
import com.ss.android.socialbase.downloader.network.i;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.SSLHandshakeException;
import org.cocos2dx.lib.GameControllerDelegate;
import org.json.JSONObject;
/* compiled from: DownloadRunnable.java */
/* loaded from: classes4.dex */
public class c implements f, Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static final String f58201a = c.class.getSimpleName();
    private r A;
    private String E;
    private long G;
    private long H;
    private final com.ss.android.socialbase.downloader.g.a I;

    /* renamed from: b  reason: collision with root package name */
    private Future f58202b;

    /* renamed from: c  reason: collision with root package name */
    private final DownloadTask f58203c;

    /* renamed from: e  reason: collision with root package name */
    private AtomicInteger f58205e;

    /* renamed from: g  reason: collision with root package name */
    private volatile com.ss.android.socialbase.downloader.downloader.e f58207g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f58208h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f58209i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f58210j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f58211k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f58212l;

    /* renamed from: m  reason: collision with root package name */
    private final AtomicBoolean f58213m;

    /* renamed from: o  reason: collision with root package name */
    private final j f58215o;

    /* renamed from: p  reason: collision with root package name */
    private DownloadInfo f58216p;

    /* renamed from: q  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.downloader.h f58217q;

    /* renamed from: r  reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.downloader.h f58218r;

    /* renamed from: s  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.downloader.g f58219s;

    /* renamed from: t  reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.downloader.g f58220t;

    /* renamed from: u  reason: collision with root package name */
    private s f58221u;

    /* renamed from: v  reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.downloader.f f58222v;

    /* renamed from: w  reason: collision with root package name */
    private volatile BaseException f58223w;

    /* renamed from: x  reason: collision with root package name */
    private i f58224x;

    /* renamed from: y  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.network.g f58225y;

    /* renamed from: z  reason: collision with root package name */
    private w f58226z;

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f58204d = false;

    /* renamed from: f  reason: collision with root package name */
    private final ArrayList<b> f58206f = new ArrayList<>();

    /* renamed from: n  reason: collision with root package name */
    private volatile com.ss.android.socialbase.downloader.constants.h f58214n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_NONE;
    private volatile int B = 5;
    private boolean C = false;
    private boolean D = false;
    private boolean F = false;
    private int J = 0;
    private volatile k K = null;

    public c(DownloadTask downloadTask, Handler handler) {
        this.f58203c = downloadTask;
        if (downloadTask != null) {
            this.f58216p = downloadTask.getDownloadInfo();
            this.f58217q = downloadTask.getChunkStrategy();
            this.f58219s = downloadTask.getChunkAdjustCalculator();
            this.f58226z = downloadTask.getForbiddenHandler();
            this.A = downloadTask.getDiskSpaceHandler();
            this.f58221u = a(downloadTask);
            this.I = com.ss.android.socialbase.downloader.g.a.a(this.f58216p.getId());
        } else {
            this.I = com.ss.android.socialbase.downloader.g.a.c();
        }
        h();
        this.f58215o = com.ss.android.socialbase.downloader.downloader.c.x();
        this.f58218r = com.ss.android.socialbase.downloader.downloader.c.I();
        this.f58220t = com.ss.android.socialbase.downloader.downloader.c.K();
        this.f58222v = new com.ss.android.socialbase.downloader.downloader.f(downloadTask, handler);
        this.f58213m = new AtomicBoolean(true);
    }

    private long A() {
        return this.f58221u.a(this.f58216p.getCurRetryTimeInTotal(), this.f58216p.getTotalRetryCount());
    }

    private void B() throws com.ss.android.socialbase.downloader.exception.i, BaseException {
        com.ss.android.socialbase.downloader.impls.a C;
        int id = this.f58216p.getId();
        int a4 = com.ss.android.socialbase.downloader.downloader.c.a(this.f58216p);
        if (this.f58216p.isDownloaded() && !this.f58216p.isExpiredRedownload() && !this.F) {
            throw new BaseException(1009, "file has downloaded");
        }
        DownloadInfo b4 = this.f58215o.b(a4);
        if (b4 == null || (C = com.ss.android.socialbase.downloader.downloader.c.C()) == null || b4.getId() == id || !b4.equalsTask(this.f58216p)) {
            return;
        }
        if (!C.a(b4.getId())) {
            List<com.ss.android.socialbase.downloader.model.b> c4 = this.f58215o.c(a4);
            com.ss.android.socialbase.downloader.i.f.a(this.f58216p);
            this.f58215o.f(a4);
            if (b4.isBreakpointAvailable()) {
                this.f58216p.copyFromCacheData(b4, false);
                this.f58215o.a(this.f58216p);
                if (c4 != null) {
                    for (com.ss.android.socialbase.downloader.model.b bVar : c4) {
                        bVar.b(id);
                        this.f58215o.a(bVar);
                    }
                }
                throw new com.ss.android.socialbase.downloader.exception.i("retry task because id generator changed");
            }
            return;
        }
        this.f58215o.f(id);
        throw new BaseException((int) InputDeviceCompat.SOURCE_GAMEPAD, "another same task is downloading");
    }

    private boolean C() {
        DownloadInfo downloadInfo = this.f58216p;
        if (downloadInfo == null || downloadInfo.isExpiredRedownload()) {
            return false;
        }
        return (!this.f58209i || this.f58216p.getChunkCount() > 1) && !this.f58216p.isChunkDowngradeRetryUsed() && this.f58210j && !this.f58212l;
    }

    private void D() throws BaseException {
        long j4;
        int a4;
        try {
            j4 = com.ss.android.socialbase.downloader.i.f.d(this.f58216p.getTempPath());
        } catch (BaseException unused) {
            j4 = 0;
        }
        String str = f58201a;
        com.ss.android.socialbase.downloader.c.a.c(str, "checkSpaceOverflowInProgress: available = " + com.ss.android.socialbase.downloader.i.f.a(j4) + "MB");
        if (j4 > 0) {
            long totalBytes = this.f58216p.getTotalBytes() - this.f58216p.getCurBytes();
            if (j4 < totalBytes && (a4 = com.ss.android.socialbase.downloader.g.a.a(this.f58216p.getId()).a("space_fill_min_keep_mb", 100)) > 0) {
                long j5 = j4 - (a4 * PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
                com.ss.android.socialbase.downloader.c.a.c(str, "checkSpaceOverflowInProgress: minKeep  = " + a4 + "MB, canDownload = " + com.ss.android.socialbase.downloader.i.f.a(j5) + "MB");
                if (j5 > 0) {
                    this.G = this.f58216p.getCurBytes() + j5 + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
                    return;
                } else {
                    this.G = 0L;
                    throw new com.ss.android.socialbase.downloader.exception.d(j4, totalBytes);
                }
            }
        }
        this.G = 0L;
    }

    private void E() throws com.ss.android.socialbase.downloader.exception.f {
        if (this.f58216p.isOnlyWifi() && !com.ss.android.socialbase.downloader.i.f.a(com.ss.android.socialbase.downloader.downloader.c.N(), "android.permission.ACCESS_NETWORK_STATE")) {
            throw new com.ss.android.socialbase.downloader.exception.f(1019, String.format("download task need permission:%s", "android.permission.ACCESS_NETWORK_STATE"));
        }
        if (this.f58216p.isDownloadWithWifiValid()) {
            if (!this.f58216p.isPauseReserveWithWifiValid()) {
                throw new com.ss.android.socialbase.downloader.exception.e();
            }
            return;
        }
        throw new com.ss.android.socialbase.downloader.exception.c();
    }

    private void F() throws BaseException {
        if (!TextUtils.isEmpty(this.f58216p.getSavePath())) {
            if (!TextUtils.isEmpty(this.f58216p.getName())) {
                File file = new File(this.f58216p.getSavePath());
                if (!file.exists()) {
                    boolean mkdirs = file.mkdirs();
                    if (mkdirs || file.exists()) {
                        return;
                    }
                    int i2 = 0;
                    if (com.ss.android.socialbase.downloader.g.a.a(this.f58216p.getId()).a("opt_mkdir_failed", 0) == 1) {
                        while (!mkdirs) {
                            int i4 = i2 + 1;
                            if (i2 >= 3) {
                                break;
                            }
                            try {
                                Thread.sleep(10L);
                                mkdirs = file.mkdirs();
                                i2 = i4;
                            } catch (InterruptedException unused) {
                            }
                        }
                        if (mkdirs || file.exists()) {
                            return;
                        }
                        if (com.ss.android.socialbase.downloader.i.f.d(this.f58216p.getSavePath()) < 16384) {
                            throw new BaseException(1006, "download savePath directory can not created:" + this.f58216p.getSavePath());
                        }
                        throw new BaseException(1030, "download savePath directory can not created:" + this.f58216p.getSavePath());
                    }
                    throw new BaseException(1030, "download savePath directory can not created:" + this.f58216p.getSavePath());
                } else if (file.isDirectory()) {
                    return;
                } else {
                    if (com.ss.android.socialbase.downloader.i.d.b(this.f58216p)) {
                        file.delete();
                        if (file.mkdirs() || file.exists()) {
                            return;
                        }
                        throw new BaseException(1031, "download savePath is not directory:path=" + this.f58216p.getSavePath());
                    }
                    throw new BaseException(1031, "download savePath is not a directory:" + this.f58216p.getSavePath());
                }
            }
            throw new BaseException(1029, "download name can not be empty");
        }
        throw new BaseException(1028, "download savePath can not be empty");
    }

    private void G() {
        long f4 = com.ss.android.socialbase.downloader.i.f.f(this.f58216p);
        long curBytes = this.f58216p.getCurBytes();
        if (f4 != curBytes) {
            String str = f58201a;
            com.ss.android.socialbase.downloader.c.a.d(str, "checkTaskCanResume: offset = " + f4 + ", curBytes = " + curBytes);
        }
        this.f58216p.setCurBytes(f4);
        boolean z3 = f4 > 0;
        this.f58209i = z3;
        if (z3 || this.F) {
            return;
        }
        com.ss.android.socialbase.downloader.c.a.c(f58201a, "checkTaskCanResume: deleteAllDownloadFiles");
        this.f58215o.d(this.f58216p.getId());
        this.f58215o.m(this.f58216p.getId());
        com.ss.android.socialbase.downloader.i.f.a(this.f58216p);
    }

    private void H() {
        String str = f58201a;
        com.ss.android.socialbase.downloader.c.a.d(str, "clearCurrentDownloadData::" + Log.getStackTraceString(new Throwable()));
        try {
            this.f58215o.d(this.f58216p.getId());
            this.f58215o.m(this.f58216p.getId());
            com.ss.android.socialbase.downloader.i.f.a(this.f58216p);
            this.f58209i = false;
            this.f58216p.resetDataForEtagEndure("");
            this.f58215o.a(this.f58216p);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void I() {
        try {
            Iterator it2 = ((ArrayList) this.f58206f.clone()).iterator();
            while (it2.hasNext()) {
                b bVar = (b) it2.next();
                if (bVar != null) {
                    bVar.b();
                }
            }
        } catch (Throwable th) {
            String str = f58201a;
            com.ss.android.socialbase.downloader.c.a.c(str, "cancelAllChunkRunnable: " + th.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        com.ss.android.socialbase.downloader.impls.a C;
        if (v() || (C = com.ss.android.socialbase.downloader.downloader.c.C()) == null) {
            return;
        }
        C.l(this.f58216p.getId());
    }

    private boolean K() {
        return false;
    }

    private void h() {
        DownloadInfo downloadInfo = this.f58216p;
        if (downloadInfo == null) {
            return;
        }
        int retryCount = downloadInfo.getRetryCount() - this.f58216p.getCurRetryTime();
        if (retryCount < 0) {
            retryCount = 0;
        }
        AtomicInteger atomicInteger = this.f58205e;
        if (atomicInteger == null) {
            this.f58205e = new AtomicInteger(retryCount);
        } else {
            atomicInteger.set(retryCount);
        }
    }

    private boolean i() {
        int status = this.f58216p.getStatus();
        if (status == 1 || this.f58216p.canSkipStatusHandler()) {
            return true;
        }
        if (status == -2 || status == -4) {
            return false;
        }
        b(new BaseException(1000, "The download Task can't start, because its status is not prepare:" + status));
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:78:0x00f3, code lost:
        if (r9.I.a("fix_file_exist_update_download_info") != false) goto L80;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ab A[Catch: all -> 0x00e8, TryCatch #6 {all -> 0x00e8, blocks: (B:56:0x00a7, B:58:0x00ab, B:60:0x00af, B:73:0x00e7), top: B:84:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00cd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void j() throws com.ss.android.socialbase.downloader.exception.a {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.h.c.j():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0058 A[LOOP:0: B:24:0x0058->B:57:0x0058, LOOP_START] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void k() {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.h.c.k():void");
    }

    private void l() {
        boolean z3;
        List<com.ss.android.socialbase.downloader.model.b> c4;
        try {
            this.f58214n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_NONE;
            this.f58216p.updateStartDownloadTime();
            this.f58216p.resetRealStartDownloadTime();
            long currentTimeMillis = System.currentTimeMillis();
            this.f58216p.setFirstSpeedTime(-1L);
            try {
                j();
                z3 = false;
            } catch (com.ss.android.socialbase.downloader.exception.a e4) {
                String str = f58201a;
                com.ss.android.socialbase.downloader.c.a.b(str, "file exist " + e4.a());
                this.E = e4.a();
                z3 = true;
            }
            if (!this.C) {
                this.f58222v.b();
            }
            this.C = false;
            if (v()) {
                return;
            }
            if (!TextUtils.isEmpty(this.E) && z3) {
                if (this.f58216p.isExpiredRedownload()) {
                    this.F = com.ss.android.socialbase.downloader.i.f.d(this.f58216p);
                }
                if (!this.F) {
                    m();
                    return;
                }
            }
            while (!v()) {
                try {
                    try {
                        try {
                            F();
                            B();
                            E();
                            c4 = this.f58215o.c(this.f58216p.getId());
                            G();
                        } catch (com.ss.android.socialbase.downloader.exception.i e5) {
                            String str2 = f58201a;
                            com.ss.android.socialbase.downloader.c.a.d(str2, "downloadInner: retry throwable for " + e5.a());
                            if (this.f58214n != com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_PAUSE) {
                                AtomicInteger atomicInteger = this.f58205e;
                                if (atomicInteger != null && atomicInteger.get() > 0) {
                                    this.f58216p.updateCurRetryTime(this.f58205e.decrementAndGet());
                                    this.f58216p.setStatus(5);
                                } else if (this.f58205e != null) {
                                    if (this.f58216p.trySwitchToNextBackupUrl()) {
                                        this.f58216p.setStatus(5);
                                        this.f58205e.set(this.f58216p.getRetryCount());
                                        this.f58216p.updateCurRetryTime(this.f58205e.get());
                                    } else {
                                        b(new BaseException(1018, String.format("retry for Throwable, but retry Time %s all used, last error is %s", String.valueOf(this.f58216p.getRetryCount()), e5.a())));
                                    }
                                } else {
                                    b(new BaseException(1043, "retry for Throwable, but retain retry time is NULL, last error is" + e5.a()));
                                }
                                s();
                            }
                        }
                    } catch (com.ss.android.socialbase.downloader.exception.a unused) {
                        m();
                    }
                } catch (BaseException e6) {
                    String str3 = f58201a;
                    com.ss.android.socialbase.downloader.c.a.d(str3, "downloadInner: baseException = " + e6);
                    if (this.f58214n != com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_PAUSE) {
                        if (e6.getErrorCode() != 1025 && e6.getErrorCode() != 1009) {
                            if (a(e6)) {
                                if (com.ss.android.socialbase.downloader.i.f.a(e6)) {
                                    H();
                                }
                                if (a(e6, 0L) != com.ss.android.socialbase.downloader.exception.h.RETURN) {
                                    s();
                                } else {
                                    s();
                                    return;
                                }
                            } else {
                                b(e6);
                            }
                        }
                        this.f58214n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_END_RIGHT_NOW;
                        s();
                        return;
                    }
                }
                if (n()) {
                    com.ss.android.socialbase.downloader.c.a.c(f58201a, "downloadSegments return");
                    s();
                    return;
                }
                String connectionUrl = this.f58216p.getConnectionUrl();
                if (v()) {
                    s();
                    return;
                }
                long e7 = this.f58209i ? com.ss.android.socialbase.downloader.i.f.e(this.f58216p) : 0L;
                com.ss.android.socialbase.downloader.model.b a4 = a(this.f58216p, e7);
                List<com.ss.android.socialbase.downloader.model.c> a5 = a(a4);
                com.ss.android.socialbase.downloader.i.f.a(a5, this.f58216p);
                com.ss.android.socialbase.downloader.i.f.b(a5, this.f58216p);
                this.f58216p.setPreconnectLevel(0);
                long currentTimeMillis2 = System.currentTimeMillis();
                try {
                    a(connectionUrl, a5, e7);
                    this.f58216p.increaseAllConnectTime(System.currentTimeMillis() - currentTimeMillis2);
                    if (v()) {
                        s();
                        return;
                    }
                    long totalBytes = this.f58216p.getTotalBytes();
                    a(totalBytes);
                    int a6 = a(totalBytes, c4);
                    if (v()) {
                        s();
                        return;
                    } else if (a6 > 0) {
                        boolean z4 = a6 == 1;
                        this.f58208h = z4;
                        if (z4) {
                            if (this.f58224x == null) {
                                try {
                                    currentTimeMillis2 = System.currentTimeMillis();
                                    a(connectionUrl, a5);
                                    this.f58216p.increaseAllConnectTime(System.currentTimeMillis() - currentTimeMillis2);
                                } finally {
                                }
                            }
                            if (v()) {
                                s();
                                return;
                            }
                            this.f58216p.setFirstSpeedTime(System.currentTimeMillis() - currentTimeMillis);
                            o();
                            a(a4, connectionUrl, this.f58224x);
                        } else {
                            if (!this.f58216p.isNeedReuseFirstConnection()) {
                                r();
                            }
                            if (v()) {
                                s();
                                return;
                            }
                            o();
                            this.f58216p.setFirstSpeedTime(System.currentTimeMillis() - currentTimeMillis);
                            if (this.f58209i) {
                                a(a6, c4);
                            } else {
                                a(totalBytes, a6);
                            }
                        }
                        s();
                        return;
                    } else {
                        throw new BaseException(1032, "chunkCount is 0");
                    }
                } finally {
                }
            }
        } finally {
            p();
        }
    }

    private void m() {
        com.ss.android.socialbase.downloader.c.a.b(f58201a, "finishWithFileExist");
        if (com.ss.android.socialbase.downloader.g.a.c().b("fix_end_for_file_exist_error", true)) {
            if (this.E.equals(this.f58216p.getName())) {
                this.f58214n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_END_RIGHT_NOW;
            } else {
                this.f58214n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_END_FOR_FILE_EXIST;
            }
        } else if (this.E.equals(this.f58216p.getTargetFilePath())) {
            this.f58214n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_END_RIGHT_NOW;
        } else {
            this.f58214n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_END_FOR_FILE_EXIST;
        }
    }

    private boolean n() throws BaseException, InterruptedException {
        if (!this.f58216p.isExpiredRedownload() && this.f58216p.getChunkCount() == 1 && this.f58216p.getThrottleNetSpeed() <= 0) {
            JSONObject d4 = com.ss.android.socialbase.downloader.g.a.a(this.f58216p.getId()).d("segment_config");
            List<com.ss.android.socialbase.downloader.f.i> n4 = this.f58215o.n(this.f58216p.getId());
            if (this.f58216p.getCurBytes() > 0) {
                if (n4 == null || n4.isEmpty()) {
                    return false;
                }
                if (d4 == null) {
                    d4 = new JSONObject();
                }
            }
            if (d4 == null) {
                return false;
            }
            this.K = new k(this.f58216p, n.a(d4), this);
            if (v()) {
                com.ss.android.socialbase.downloader.c.a.c(f58201a, "downloadSegments: is stopped by user");
                if (this.f58214n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_CANCELED) {
                    this.K.a();
                } else {
                    this.K.b();
                }
                return true;
            }
            return this.K.a(n4);
        }
        return false;
    }

    private void o() {
        if (com.ss.android.socialbase.downloader.g.a.a(this.f58216p.getId()).a("reset_retain_retry_times", 0) != 1 || this.J >= 3) {
            return;
        }
        this.f58205e.set(this.f58216p.isBackUpUrlUsed() ? this.f58216p.getBackUpUrlRetryCount() : this.f58216p.getRetryCount());
        this.J++;
    }

    private void p() {
        boolean z3;
        boolean z4;
        String str = f58201a;
        com.ss.android.socialbase.downloader.c.a.b(str, "endDownloadRunnable::runStatus=" + this.f58214n);
        boolean z5 = (this.f58214n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_PAUSE || this.f58214n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_CANCELED) ? false : true;
        try {
            z3 = w();
            z4 = false;
        } catch (Exception e4) {
            if (e4 instanceof BaseException) {
                this.f58222v.a((BaseException) e4);
            } else {
                this.f58222v.a(new BaseException(1046, e4));
            }
            z3 = true;
            z4 = true;
        }
        if (!z3 && !z4) {
            this.C = true;
            com.ss.android.socialbase.downloader.c.a.b(f58201a, "jump to restart");
            return;
        }
        this.f58213m.set(false);
        if (z5) {
            try {
                com.ss.android.socialbase.downloader.impls.a C = com.ss.android.socialbase.downloader.downloader.c.C();
                if (C != null) {
                    C.a(this);
                }
            } catch (Throwable th) {
                th.printStackTrace();
                x monitorDepend = this.f58203c.getMonitorDepend();
                DownloadInfo downloadInfo = this.f58216p;
                BaseException baseException = new BaseException(1014, com.ss.android.socialbase.downloader.i.f.b(th, "removeDownloadRunnable"));
                DownloadInfo downloadInfo2 = this.f58216p;
                com.ss.android.socialbase.downloader.d.a.a(monitorDepend, downloadInfo, baseException, downloadInfo2 != null ? downloadInfo2.getStatus() : 0);
            }
        }
    }

    private void q() {
        com.ss.android.socialbase.downloader.network.g gVar = this.f58225y;
        if (gVar != null) {
            gVar.c();
            this.f58225y = null;
        }
    }

    private void r() {
        i iVar = this.f58224x;
        if (iVar != null) {
            iVar.d();
            this.f58224x = null;
        }
    }

    private void s() {
        q();
        r();
    }

    private void t() throws BaseException {
        if (this.f58207g != null) {
            if (this.f58214n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_CANCELED) {
                this.f58216p.setStatus(-4);
                this.f58207g.c();
            } else if (this.f58214n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_PAUSE) {
                this.f58216p.setStatus(-2);
                this.f58207g.b();
            } else {
                this.f58207g.d();
            }
        }
    }

    private boolean u() {
        return this.f58214n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_CANCELED || this.f58214n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_PAUSE;
    }

    private boolean v() {
        if (u() || this.f58216p.getStatus() == -2) {
            if (u()) {
                return true;
            }
            if (this.f58216p.getStatus() == -2) {
                this.f58214n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_PAUSE;
                return true;
            } else if (this.f58216p.getStatus() == -4) {
                this.f58214n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_CANCELED;
                return true;
            } else {
                return true;
            }
        }
        return false;
    }

    private boolean w() {
        if (this.f58214n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_ERROR) {
            this.f58222v.a(this.f58223w);
        } else if (this.f58214n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_CANCELED) {
            this.f58222v.c();
        } else if (this.f58214n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_PAUSE) {
            this.f58222v.d();
        } else if (this.f58214n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_END_RIGHT_NOW) {
            try {
                this.f58222v.g();
            } catch (BaseException e4) {
                this.f58222v.a(e4);
            }
        } else if (this.f58214n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_END_FOR_FILE_EXIST) {
            try {
                this.f58222v.a(this.E);
            } catch (BaseException e5) {
                this.f58222v.a(e5);
            }
        } else if (this.f58214n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_ALL_CHUNK_RETRY_WITH_RESET) {
            this.f58222v.a(this.f58223w, false);
            return false;
        } else if (this.f58214n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_WAITING_ASYNC_HANDLER) {
            return true;
        } else {
            com.ss.android.socialbase.downloader.constants.h hVar = this.f58214n;
            com.ss.android.socialbase.downloader.constants.h hVar2 = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_RETRY_DELAY;
            if (hVar == hVar2 && !x()) {
                com.ss.android.socialbase.downloader.c.a.b(f58201a, "doTaskStatusHandle retryDelay");
                z();
                return this.f58214n == hVar2;
            }
            try {
                if (!y()) {
                    return false;
                }
                this.f58222v.f();
                com.ss.android.socialbase.downloader.impls.r.a().d();
            } catch (Throwable th) {
                b(new BaseException(1008, com.ss.android.socialbase.downloader.i.f.b(th, "doTaskStatusHandle onComplete")));
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean x() {
        /*
            r7 = this;
            com.ss.android.socialbase.downloader.model.DownloadInfo r0 = r7.f58216p
            int r0 = r0.getChunkCount()
            r1 = 0
            r2 = 1
            if (r0 > r2) goto L28
            com.ss.android.socialbase.downloader.model.DownloadInfo r0 = r7.f58216p
            long r3 = r0.getCurBytes()
            r5 = 0
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 <= 0) goto L27
            com.ss.android.socialbase.downloader.model.DownloadInfo r0 = r7.f58216p
            long r3 = r0.getCurBytes()
            com.ss.android.socialbase.downloader.model.DownloadInfo r0 = r7.f58216p
            long r5 = r0.getTotalBytes()
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 != 0) goto L27
            return r2
        L27:
            return r1
        L28:
            com.ss.android.socialbase.downloader.downloader.j r0 = r7.f58215o
            com.ss.android.socialbase.downloader.model.DownloadInfo r3 = r7.f58216p
            int r3 = r3.getId()
            java.util.List r0 = r0.c(r3)
            if (r0 == 0) goto L57
            int r3 = r0.size()
            if (r3 > r2) goto L3d
            goto L57
        L3d:
            java.util.Iterator r0 = r0.iterator()
        L41:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L56
            java.lang.Object r3 = r0.next()
            com.ss.android.socialbase.downloader.model.b r3 = (com.ss.android.socialbase.downloader.model.b) r3
            if (r3 == 0) goto L55
            boolean r3 = r3.i()
            if (r3 != 0) goto L41
        L55:
            return r1
        L56:
            return r2
        L57:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.h.c.x():boolean");
    }

    private boolean y() {
        if (this.f58216p.isChunked()) {
            DownloadInfo downloadInfo = this.f58216p;
            downloadInfo.setTotalBytes(downloadInfo.getCurBytes());
        }
        String str = f58201a;
        com.ss.android.socialbase.downloader.c.a.c(str, "checkCompletedByteValid: downloadInfo.getCurBytes() = " + this.f58216p.getCurBytes() + ",  downloadInfo.getTotalBytes() = " + this.f58216p.getTotalBytes());
        if (this.f58216p.getCurBytes() > 0) {
            if (this.f58216p.isIgnoreDataVerify()) {
                return true;
            }
            if (this.f58216p.getTotalBytes() > 0 && this.f58216p.getCurBytes() == this.f58216p.getTotalBytes()) {
                return true;
            }
        }
        this.f58216p.setByteInvalidRetryStatus(com.ss.android.socialbase.downloader.constants.b.BYTE_INVALID_RETRY_STATUS_RESTART);
        this.f58216p.reset();
        this.f58215o.a(this.f58216p);
        this.f58215o.d(this.f58216p.getId());
        this.f58215o.m(this.f58216p.getId());
        com.ss.android.socialbase.downloader.i.f.a(this.f58216p);
        return false;
    }

    private void z() {
        this.f58214n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_NONE;
    }

    public void b() {
        com.ss.android.socialbase.downloader.constants.h hVar = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_CANCELED;
        this.f58214n = hVar;
        if (this.K != null) {
            this.K.a();
        }
        if (this.f58207g != null) {
            this.f58207g.c();
        }
        if (this.K == null && this.f58207g == null) {
            s();
            this.f58214n = hVar;
            p();
        }
        I();
    }

    public DownloadTask c() {
        return this.f58203c;
    }

    public boolean d() {
        return this.f58213m.get();
    }

    public int e() {
        DownloadInfo downloadInfo = this.f58216p;
        if (downloadInfo != null) {
            return downloadInfo.getId();
        }
        return 0;
    }

    public void f() {
        this.H = System.currentTimeMillis();
        this.f58222v.a();
    }

    public Future g() {
        return this.f58202b;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.ss.android.socialbase.downloader.downloader.c.a(this.f58203c, 3);
        try {
            com.ss.android.socialbase.downloader.network.b.a().b();
            k();
            com.ss.android.socialbase.downloader.network.b.a().c();
            com.ss.android.socialbase.downloader.downloader.c.b(this.f58203c, 3);
        } catch (Throwable th) {
            com.ss.android.socialbase.downloader.network.b.a().c();
            throw th;
        }
    }

    private boolean d(BaseException baseException) {
        AtomicInteger atomicInteger = this.f58205e;
        boolean z3 = true;
        if (atomicInteger != null) {
            if (atomicInteger.get() <= 0 || (baseException != null && baseException.getErrorCode() == 1070)) {
                if (this.f58216p.trySwitchToNextBackupUrl()) {
                    this.f58205e.set(this.f58216p.getBackUpUrlRetryCount());
                    this.f58216p.updateCurRetryTime(this.f58205e.get());
                } else if (baseException != null && ((baseException.getErrorCode() == 1011 || (baseException.getCause() != null && (baseException.getCause() instanceof SSLHandshakeException))) && this.f58216p.canReplaceHttpForRetry())) {
                    this.f58205e.set(this.f58216p.getRetryCount());
                    this.f58216p.updateCurRetryTime(this.f58205e.get());
                    this.f58216p.setHttpsToHttpRetryUsed(true);
                } else {
                    b(new BaseException(baseException.getErrorCode(), String.format("retry for exception, but current retry time : %s , retry Time %s all used, last error is %s", String.valueOf(this.f58205e), String.valueOf(this.f58216p.getRetryCount()), baseException.getErrorMessage())));
                    return true;
                }
                z3 = false;
            }
            if (this.f58214n != com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_RETRY_DELAY && z3) {
                this.f58216p.updateCurRetryTime(this.f58205e.decrementAndGet());
            }
            return false;
        }
        b(new BaseException(1043, "retry for exception, but retain retry time is null, last error is :" + baseException.getErrorMessage()));
        return true;
    }

    @Override // com.ss.android.socialbase.downloader.h.f
    public void c(BaseException baseException) {
        DownloadInfo downloadInfo = this.f58216p;
        if (downloadInfo != null) {
            downloadInfo.setChunkDowngradeRetryUsed(true);
        }
        a(baseException, false);
    }

    public void a() {
        com.ss.android.socialbase.downloader.constants.h hVar = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_PAUSE;
        this.f58214n = hVar;
        if (this.K != null) {
            this.K.b();
        }
        if (this.f58207g != null) {
            this.f58207g.b();
        }
        if (this.K == null && this.f58207g == null) {
            s();
            this.f58214n = hVar;
            p();
        }
        try {
            Iterator it2 = ((ArrayList) this.f58206f.clone()).iterator();
            while (it2.hasNext()) {
                b bVar = (b) it2.next();
                if (bVar != null) {
                    bVar.a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void c(long j4) {
        i iVar = this.f58224x;
        if (iVar != null && (iVar instanceof com.ss.android.socialbase.downloader.network.a)) {
            try {
                ((com.ss.android.socialbase.downloader.network.a) iVar).a(j4);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private void b(String str, List<com.ss.android.socialbase.downloader.model.c> list, long j4) throws BaseException, com.ss.android.socialbase.downloader.exception.i {
        com.ss.android.socialbase.downloader.network.a.c a4;
        boolean z3 = true;
        if (this.f58216p.getChunkCount() == 1 && (a4 = com.ss.android.socialbase.downloader.network.a.a.a().a(str, list)) != null) {
            this.f58225y = a4;
            this.f58216p.setPreconnectLevel(1);
        }
        if (this.f58225y == null && !this.D && this.f58216p.isHeadConnectionAvailable()) {
            try {
                int b4 = this.I.b("net_lib_strategy");
                if (this.I.a("monitor_download_connect", 0) <= 0) {
                    z3 = false;
                }
                this.f58225y = com.ss.android.socialbase.downloader.downloader.c.a(str, list, b4, z3, this.f58216p);
            } catch (Throwable th) {
                this.f58216p.setHeadConnectionException(com.ss.android.socialbase.downloader.i.f.j(th));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x005c, code lost:
        if (r9 <= 0) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int a(long r7, java.util.List<com.ss.android.socialbase.downloader.model.b> r9) {
        /*
            r6 = this;
            boolean r0 = r6.C()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L5e
            boolean r0 = r6.f58209i
            if (r0 == 0) goto L1a
            if (r9 == 0) goto L13
            int r9 = r9.size()
            goto L5c
        L13:
            com.ss.android.socialbase.downloader.model.DownloadInfo r9 = r6.f58216p
            int r9 = r9.getChunkCount()
            goto L5c
        L1a:
            com.ss.android.socialbase.downloader.downloader.h r9 = r6.f58217q
            if (r9 == 0) goto L23
            int r9 = r9.a(r7)
            goto L29
        L23:
            com.ss.android.socialbase.downloader.downloader.h r9 = r6.f58218r
            int r9 = r9.a(r7)
        L29:
            com.ss.android.socialbase.downloader.network.k r0 = com.ss.android.socialbase.downloader.network.k.a()
            com.ss.android.socialbase.downloader.network.l r0 = r0.b()
            java.lang.String r3 = com.ss.android.socialbase.downloader.h.c.f58201a
            java.lang.Object[] r4 = new java.lang.Object[r2]
            java.lang.String r5 = r0.name()
            r4[r1] = r5
            java.lang.String r5 = "NetworkQuality is : %s"
            java.lang.String r4 = java.lang.String.format(r5, r4)
            com.ss.android.socialbase.downloader.c.a.b(r3, r4)
            com.ss.android.socialbase.downloader.model.DownloadInfo r3 = r6.f58216p
            java.lang.String r4 = r0.name()
            r3.setNetworkQuality(r4)
            com.ss.android.socialbase.downloader.downloader.g r3 = r6.f58219s
            if (r3 == 0) goto L56
            int r9 = r3.a(r9, r0)
            goto L5c
        L56:
            com.ss.android.socialbase.downloader.downloader.g r3 = r6.f58220t
            int r9 = r3.a(r9, r0)
        L5c:
            if (r9 > 0) goto L5f
        L5e:
            r9 = 1
        L5f:
            boolean r0 = com.ss.android.socialbase.downloader.c.a.a()
            if (r0 == 0) goto L88
            java.lang.String r0 = com.ss.android.socialbase.downloader.h.c.f58201a
            r3 = 3
            java.lang.Object[] r3 = new java.lang.Object[r3]
            java.lang.String r4 = java.lang.String.valueOf(r9)
            r3[r1] = r4
            com.ss.android.socialbase.downloader.model.DownloadInfo r1 = r6.f58216p
            java.lang.String r1 = r1.getName()
            r3[r2] = r1
            r1 = 2
            java.lang.String r7 = java.lang.String.valueOf(r7)
            r3[r1] = r7
            java.lang.String r7 = "chunk count : %s for %s contentLen:%s"
            java.lang.String r7 = java.lang.String.format(r7, r3)
            com.ss.android.socialbase.downloader.c.a.b(r0, r7)
        L88:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.h.c.a(long, java.util.List):int");
    }

    @Override // com.ss.android.socialbase.downloader.h.f
    public boolean b(long j4) throws BaseException {
        if (this.G > 0 && this.f58216p.getCurBytes() > this.G) {
            D();
        }
        return this.f58222v.a(j4);
    }

    @Override // com.ss.android.socialbase.downloader.h.f
    public void b(BaseException baseException) {
        String str = f58201a;
        com.ss.android.socialbase.downloader.c.a.b(str, "onError:" + baseException.getMessage());
        this.f58214n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_ERROR;
        this.f58223w = baseException;
        I();
    }

    private void a(String str, List<com.ss.android.socialbase.downloader.model.c> list, long j4) throws BaseException, com.ss.android.socialbase.downloader.exception.i {
        b(str, list, j4);
        com.ss.android.socialbase.downloader.network.g gVar = this.f58225y;
        if (gVar != null) {
            try {
                a(str, gVar, j4);
            } catch (Throwable unused) {
                this.D = true;
            }
        }
        if (this.f58225y == null || this.D) {
            a(str, list);
            a(str, this.f58224x, j4);
        }
    }

    private void a(String str, List<com.ss.android.socialbase.downloader.model.c> list) throws BaseException, com.ss.android.socialbase.downloader.exception.i {
        i iVar;
        if (this.f58224x != null) {
            return;
        }
        com.ss.android.socialbase.downloader.network.a.d b4 = this.f58216p.getChunkCount() == 1 ? com.ss.android.socialbase.downloader.network.a.a.a().b(str, list) : null;
        try {
            if (b4 != null) {
                a(this.f58224x);
                this.f58216p.setPreconnectLevel(2);
                this.f58224x = b4;
            } else {
                try {
                    iVar = com.ss.android.socialbase.downloader.downloader.c.a(this.f58216p.isNeedDefaultHttpServiceBackUp(), this.f58216p.getMaxBytes(), str, null, list, this.I.b("net_lib_strategy"), this.I.a("monitor_download_connect", 0) > 0, this.f58216p);
                    this.f58224x = iVar;
                } catch (BaseException e4) {
                    throw e4;
                } catch (Throwable th) {
                    if (this.f58216p.isExpiredRedownload() && com.ss.android.socialbase.downloader.i.f.g(th) && com.ss.android.socialbase.downloader.i.f.c(list)) {
                        com.ss.android.socialbase.downloader.c.a.b(f58201a, "dcache=execepiton responseCode=304 lastModified not changed, use local file.. old cacheControl=" + this.f58216p.getCacheControl());
                        long i2 = com.ss.android.socialbase.downloader.i.f.i(this.f58216p.getCacheControl());
                        if (i2 <= 0) {
                            i2 = com.ss.android.socialbase.downloader.g.a.a(this.f58216p.getId()).a("default_304_max_age", 300);
                        }
                        this.f58216p.setCacheExpiredTime(System.currentTimeMillis() + (i2 * 1000));
                        throw new com.ss.android.socialbase.downloader.exception.a(this.E);
                    }
                    if (com.ss.android.socialbase.downloader.i.f.f(th)) {
                        a("", "http code 416");
                    } else if (com.ss.android.socialbase.downloader.i.f.e(th)) {
                        a("", "http code 412");
                    } else {
                        com.ss.android.socialbase.downloader.i.f.a(th, "CreateFirstConnection");
                    }
                    iVar = this.f58224x;
                }
                a(iVar);
            }
            if (this.f58224x == null) {
                throw new BaseException((int) GameControllerDelegate.BUTTON_SELECT, new IOException("download can't continue, firstConnection is null"));
            }
        } catch (Throwable th2) {
            a(this.f58224x);
            throw th2;
        }
    }

    public static com.ss.android.socialbase.downloader.model.b a(DownloadInfo downloadInfo, long j4) {
        return new b.a(downloadInfo.getId()).a(-1).a(0L).e(j4).b(j4).c(0L).d(downloadInfo.getTotalBytes() - j4).a();
    }

    private List<com.ss.android.socialbase.downloader.model.c> a(com.ss.android.socialbase.downloader.model.b bVar) {
        List<com.ss.android.socialbase.downloader.model.c> a4 = com.ss.android.socialbase.downloader.i.f.a(this.f58216p.getExtraHeaders(), this.f58216p.geteTag(), bVar);
        if (this.f58216p.isExpiredRedownload() && this.F && this.f58216p.getLastModified() != null) {
            a4.add(new com.ss.android.socialbase.downloader.model.c("if-modified-since", this.f58216p.getLastModified()));
            a4.add(new com.ss.android.socialbase.downloader.model.c("download-tc21-1-15", "download-tc21-1-15"));
            String str = f58201a;
            com.ss.android.socialbase.downloader.c.a.b(str, "dcache::add head IF_MODIFIED_SINCE=" + this.f58216p.getLastModified());
        }
        return a4;
    }

    private void a(int i2, List<com.ss.android.socialbase.downloader.model.b> list) throws BaseException {
        if (list.size() == i2) {
            a(list, this.f58216p.getTotalBytes());
            return;
        }
        throw new BaseException(1033, new IllegalArgumentException());
    }

    private void a(long j4, int i2) throws BaseException {
        long j5 = j4 / i2;
        int id = this.f58216p.getId();
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        long j6 = 0;
        while (i4 < i2) {
            com.ss.android.socialbase.downloader.model.b a4 = new b.a(id).a(i4).a(j6).e(j6).b(j6).c(i4 == i2 + (-1) ? 0L : (j6 + j5) - 1).a();
            arrayList.add(a4);
            this.f58215o.a(a4);
            j6 += j5;
            i4++;
        }
        this.f58216p.setChunkCount(i2);
        this.f58215o.a(id, i2);
        a(arrayList, j4);
    }

    private void a(List<com.ss.android.socialbase.downloader.model.b> list, long j4) throws BaseException {
        long p3;
        for (com.ss.android.socialbase.downloader.model.b bVar : list) {
            if (bVar != null) {
                if (bVar.p() == 0) {
                    p3 = j4 - bVar.n();
                } else {
                    p3 = (bVar.p() - bVar.n()) + 1;
                }
                if (p3 > 0) {
                    bVar.a(p3);
                    if (this.f58216p.isNeedReuseFirstConnection() && this.f58224x != null && (!this.f58216p.isHeadConnectionAvailable() || this.D)) {
                        if (bVar.s() == 0) {
                            this.f58206f.add(new b(bVar, this.f58203c, this.f58224x, this));
                        } else if (bVar.s() > 0) {
                            this.f58206f.add(new b(bVar, this.f58203c, this));
                        }
                    } else {
                        this.f58206f.add(new b(bVar, this.f58203c, this));
                    }
                }
            }
        }
        if (com.ss.android.socialbase.downloader.i.a.a(64)) {
            ArrayList arrayList = new ArrayList(this.f58206f.size());
            Iterator<b> it2 = this.f58206f.iterator();
            while (it2.hasNext()) {
                b next = it2.next();
                if (this.f58214n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_CANCELED) {
                    next.b();
                } else if (this.f58214n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_PAUSE) {
                    next.a();
                } else {
                    arrayList.add(next);
                }
            }
            try {
                List<Future> d4 = com.ss.android.socialbase.downloader.impls.e.d(arrayList);
                for (Runnable runnable = (Runnable) arrayList.remove(0); runnable != null; runnable = com.ss.android.socialbase.downloader.impls.e.e(d4)) {
                    if (v()) {
                        return;
                    }
                    runnable.run();
                }
                if (d4 == null || d4.isEmpty()) {
                    return;
                }
                for (Future future : d4) {
                    if (future != null && !future.isDone()) {
                        try {
                            future.get();
                        } catch (Throwable unused) {
                        }
                    }
                }
                return;
            } catch (Throwable unused2) {
                return;
            }
        }
        ArrayList arrayList2 = new ArrayList(this.f58206f.size());
        Iterator<b> it3 = this.f58206f.iterator();
        while (it3.hasNext()) {
            b next2 = it3.next();
            if (this.f58214n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_CANCELED) {
                next2.b();
            } else if (this.f58214n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_PAUSE) {
                next2.a();
            } else {
                arrayList2.add(Executors.callable(next2));
            }
        }
        if (v()) {
            return;
        }
        try {
            com.ss.android.socialbase.downloader.impls.e.c(arrayList2);
        } catch (InterruptedException e4) {
            throw new BaseException(1020, e4);
        }
    }

    private void a(com.ss.android.socialbase.downloader.model.b bVar, String str, i iVar) throws BaseException {
        bVar.a(this.f58216p.getTotalBytes() - bVar.n());
        this.f58216p.setChunkCount(1);
        this.f58215o.a(this.f58216p.getId(), 1);
        this.f58207g = new com.ss.android.socialbase.downloader.downloader.e(this.f58216p, str, iVar, bVar, this);
        t();
    }

    @Override // com.ss.android.socialbase.downloader.h.f
    public void a(long j4) throws BaseException {
        long j5;
        String tempPath = this.f58216p.getTempPath();
        String tempName = this.f58216p.getTempName();
        if (com.ss.android.socialbase.downloader.i.f.b(j4)) {
            return;
        }
        com.ss.android.socialbase.downloader.model.e a4 = com.ss.android.socialbase.downloader.i.f.a(this.f58216p, tempPath, tempName, -1);
        try {
            long length = new File(tempPath, tempName).length();
            long j6 = j4 - length;
            long d4 = com.ss.android.socialbase.downloader.i.f.d(tempPath);
            com.ss.android.socialbase.downloader.g.a a5 = com.ss.android.socialbase.downloader.g.a.a(this.f58216p.getId());
            if (a5.a("space_fill_part_download", 0) == 1) {
                this.G = 0L;
                if (j6 <= 0) {
                    j6 = this.f58216p.getTotalBytes() - this.f58216p.getCurBytes();
                }
                if (d4 < j6) {
                    String str = f58201a;
                    com.ss.android.socialbase.downloader.c.a.d(str, "checkSpaceOverflow: contentLength = " + com.ss.android.socialbase.downloader.i.f.a(j4) + "MB, downloaded = " + com.ss.android.socialbase.downloader.i.f.a(length) + "MB, required = " + com.ss.android.socialbase.downloader.i.f.a(j6) + "MB, available = " + com.ss.android.socialbase.downloader.i.f.a(d4) + "MB");
                    if (d4 > 0) {
                        int a6 = a5.a("space_fill_min_keep_mb", 100);
                        if (a6 > 0) {
                            long j7 = d4 - (a6 * PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
                            com.ss.android.socialbase.downloader.c.a.d(str, "checkSpaceOverflow: minKeep = " + a6 + "MB, canDownload = " + com.ss.android.socialbase.downloader.i.f.a(j7) + "MB");
                            if (j7 > 0) {
                                this.G = this.f58216p.getCurBytes() + j7;
                                j5 = j7;
                            } else {
                                throw new com.ss.android.socialbase.downloader.exception.d(d4, j6);
                            }
                        } else {
                            j5 = d4;
                        }
                        if (length < j4) {
                            if (j5 + length > j4) {
                            }
                            a4.b(j4);
                            com.ss.android.socialbase.downloader.i.f.a(a4);
                        }
                    } else if (a5.a("download_when_space_negative", 0) != 1) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("availableSpace ");
                        sb.append(d4 == 0 ? SimpleComparison.EQUAL_TO_OPERATION : SimpleComparison.LESS_THAN_OPERATION);
                        sb.append(" 0");
                        throw new BaseException(1052, sb.toString());
                    } else {
                        a4.b(j4);
                        com.ss.android.socialbase.downloader.i.f.a(a4);
                    }
                }
            } else if (d4 <= 0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("availableSpace ");
                sb2.append(d4 == 0 ? SimpleComparison.EQUAL_TO_OPERATION : SimpleComparison.LESS_THAN_OPERATION);
                sb2.append(" 0");
                throw new BaseException(1052, sb2.toString());
            } else if (d4 < j6) {
                throw new com.ss.android.socialbase.downloader.exception.d(d4, j6);
            }
            a4.b(j4);
            com.ss.android.socialbase.downloader.i.f.a(a4);
        } catch (Throwable th) {
            com.ss.android.socialbase.downloader.i.f.a(a4);
            throw th;
        }
    }

    private boolean a(int i2, String str, String str2) {
        if (i2 == 412) {
            return true;
        }
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || str.equals(str2) || !(this.f58211k || this.f58210j)) {
            return (i2 == 201 || i2 == 416) && this.f58216p.getCurBytes() > 0;
        }
        return true;
    }

    private void a(String str, String str2) throws com.ss.android.socialbase.downloader.exception.i {
        this.f58215o.d(this.f58216p.getId());
        this.f58215o.m(this.f58216p.getId());
        com.ss.android.socialbase.downloader.i.f.a(this.f58216p);
        this.f58209i = false;
        this.f58216p.resetDataForEtagEndure(str);
        this.f58215o.a(this.f58216p);
        throw new com.ss.android.socialbase.downloader.exception.i(str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x0256, code lost:
        r2 = com.ss.android.socialbase.downloader.i.f.b(r10, "Content-Range");
        com.ss.android.socialbase.downloader.c.a.c(r14, "firstConnection: contentRange = " + r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0274, code lost:
        if (android.text.TextUtils.isEmpty(r2) != false) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x027e, code lost:
        if (r19.I.b("fix_get_total_bytes", true) == false) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0280, code lost:
        r7 = com.ss.android.socialbase.downloader.i.f.b(r2);
        com.ss.android.socialbase.downloader.c.a.c(r14, "firstConnection: 1 totalLength = " + r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0299, code lost:
        r7 = r22 + r12;
        com.ss.android.socialbase.downloader.c.a.e(r14, "firstConnection: 2 totalLength = " + r7 + ", contentLength = " + r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x013b, code lost:
        com.ss.android.socialbase.downloader.i.f.a(r19.f58216p);
     */
    @Override // com.ss.android.socialbase.downloader.h.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.String r20, com.ss.android.socialbase.downloader.network.g r21, long r22) throws com.ss.android.socialbase.downloader.exception.BaseException, com.ss.android.socialbase.downloader.exception.i {
        /*
            Method dump skipped, instructions count: 805
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.h.c.a(java.lang.String, com.ss.android.socialbase.downloader.network.g, long):void");
    }

    @Override // com.ss.android.socialbase.downloader.h.f
    public void a(b bVar) {
        if (this.f58208h) {
            return;
        }
        synchronized (this) {
            this.f58206f.remove(bVar);
        }
    }

    @Override // com.ss.android.socialbase.downloader.h.f
    public boolean a(BaseException baseException) {
        if (this.K == null || !com.ss.android.socialbase.downloader.i.f.i(baseException) || this.f58205e.get() >= this.f58216p.getRetryCount()) {
            if (com.ss.android.socialbase.downloader.i.f.b(baseException)) {
                if (this.f58208h && !this.f58204d) {
                    com.ss.android.socialbase.downloader.i.f.a(this.f58216p);
                    this.f58204d = true;
                }
                return true;
            }
            AtomicInteger atomicInteger = this.f58205e;
            if ((atomicInteger == null || atomicInteger.get() <= 0) && !this.f58216p.hasNextBackupUrl()) {
                if (baseException == null) {
                    return false;
                }
                if ((baseException.getErrorCode() != 1011 && (baseException.getCause() == null || !(baseException.getCause() instanceof SSLHandshakeException))) || !this.f58216p.canReplaceHttpForRetry()) {
                    return false;
                }
            }
            return !(baseException instanceof com.ss.android.socialbase.downloader.exception.f);
        }
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.h.f
    public void a(BaseException baseException, boolean z3) {
        com.ss.android.socialbase.downloader.c.a.b(f58201a, "onAllChunkRetryWithReset");
        this.f58214n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_ALL_CHUNK_RETRY_WITH_RESET;
        this.f58223w = baseException;
        I();
        if (z3 ? d(baseException) : false) {
            return;
        }
        H();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f58216p.setForbiddenBackupUrls(list, this.f58214n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_WAITING_ASYNC_HANDLER);
        com.ss.android.socialbase.downloader.impls.a C = com.ss.android.socialbase.downloader.downloader.c.C();
        if (C != null) {
            C.l(this.f58216p.getId());
        }
    }

    @Override // com.ss.android.socialbase.downloader.h.f
    public com.ss.android.socialbase.downloader.exception.h a(com.ss.android.socialbase.downloader.model.b bVar, BaseException baseException, long j4) {
        if (u()) {
            return com.ss.android.socialbase.downloader.exception.h.RETURN;
        }
        if (baseException != null && (baseException.getErrorCode() == 1047 || com.ss.android.socialbase.downloader.i.f.h(baseException))) {
            return a(baseException, j4);
        }
        this.f58223w = baseException;
        this.f58216p.increaseCurBytes(-j4);
        this.f58215o.a(this.f58216p);
        if (d(baseException)) {
            return com.ss.android.socialbase.downloader.exception.h.RETURN;
        }
        com.ss.android.socialbase.downloader.downloader.f fVar = this.f58222v;
        com.ss.android.socialbase.downloader.constants.h hVar = this.f58214n;
        com.ss.android.socialbase.downloader.constants.h hVar2 = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_RETRY_DELAY;
        fVar.a(bVar, baseException, hVar == hVar2);
        if (this.f58214n != hVar2 && this.f58216p.isNeedRetryDelay()) {
            long A = A();
            if (A > 0) {
                String str = f58201a;
                com.ss.android.socialbase.downloader.c.a.c(str, "onSingleChunkRetry with delay time " + A);
                try {
                    Thread.sleep(A);
                } catch (Throwable th) {
                    String str2 = f58201a;
                    com.ss.android.socialbase.downloader.c.a.d(str2, "onSingleChunkRetry:" + th.getMessage());
                }
            }
        }
        return com.ss.android.socialbase.downloader.exception.h.CONTINUE;
    }

    @Override // com.ss.android.socialbase.downloader.h.f
    public com.ss.android.socialbase.downloader.exception.h a(BaseException baseException, long j4) {
        long totalBytes;
        long j5;
        boolean z3;
        this.f58223w = baseException;
        this.f58216p.increaseCurBytes(-j4);
        this.f58215o.a(this.f58216p);
        if (u()) {
            return com.ss.android.socialbase.downloader.exception.h.RETURN;
        }
        if (baseException != null && baseException.getErrorCode() == 1047) {
            if (this.f58226z != null && !this.f58216p.isForbiddenRetryed()) {
                com.ss.android.socialbase.downloader.depend.b bVar = new com.ss.android.socialbase.downloader.depend.b() { // from class: com.ss.android.socialbase.downloader.h.c.1
                    @Override // com.ss.android.socialbase.downloader.depend.b, com.ss.android.socialbase.downloader.depend.v
                    public void a(List<String> list) {
                        super.a(list);
                        c.this.a(list);
                    }
                };
                boolean a4 = this.f58226z.a(bVar);
                this.f58216p.setForbiddenRetryed();
                if (a4) {
                    if (!bVar.a()) {
                        I();
                        this.f58222v.h();
                        this.f58214n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_WAITING_ASYNC_HANDLER;
                        return com.ss.android.socialbase.downloader.exception.h.RETURN;
                    }
                    z3 = true;
                }
            } else if (d(baseException)) {
                return com.ss.android.socialbase.downloader.exception.h.RETURN;
            }
            z3 = false;
        } else if (com.ss.android.socialbase.downloader.i.f.h(baseException)) {
            if (this.A == null) {
                b(baseException);
                return com.ss.android.socialbase.downloader.exception.h.RETURN;
            }
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            q qVar = new q() { // from class: com.ss.android.socialbase.downloader.h.c.2
                @Override // com.ss.android.socialbase.downloader.depend.q
                public void a() {
                    synchronized (c.this) {
                        atomicBoolean.set(true);
                        c.this.J();
                    }
                }
            };
            if (baseException instanceof com.ss.android.socialbase.downloader.exception.d) {
                com.ss.android.socialbase.downloader.exception.d dVar = (com.ss.android.socialbase.downloader.exception.d) baseException;
                j5 = dVar.a();
                totalBytes = dVar.b();
            } else {
                totalBytes = this.f58216p.getTotalBytes();
                j5 = -1;
            }
            synchronized (this) {
                if (this.A.a(j5, totalBytes, qVar)) {
                    if (!com.ss.android.socialbase.downloader.g.a.a(this.f58216p.getId()).b("not_delete_when_clean_space", false)) {
                        y();
                    }
                    if (!atomicBoolean.get()) {
                        com.ss.android.socialbase.downloader.constants.h hVar = this.f58214n;
                        com.ss.android.socialbase.downloader.constants.h hVar2 = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_WAITING_ASYNC_HANDLER;
                        if (hVar != hVar2) {
                            this.f58214n = hVar2;
                            I();
                            this.f58222v.h();
                        }
                        return com.ss.android.socialbase.downloader.exception.h.RETURN;
                    }
                    if (d(baseException)) {
                        return com.ss.android.socialbase.downloader.exception.h.RETURN;
                    }
                    z3 = true;
                } else if (this.f58214n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_WAITING_ASYNC_HANDLER) {
                    return com.ss.android.socialbase.downloader.exception.h.RETURN;
                } else {
                    b(baseException);
                    return com.ss.android.socialbase.downloader.exception.h.RETURN;
                }
            }
        } else {
            if (d(baseException)) {
                return com.ss.android.socialbase.downloader.exception.h.RETURN;
            }
            z3 = false;
        }
        if (!z3 && K()) {
            I();
        }
        com.ss.android.socialbase.downloader.downloader.f fVar = this.f58222v;
        com.ss.android.socialbase.downloader.constants.h hVar3 = this.f58214n;
        com.ss.android.socialbase.downloader.constants.h hVar4 = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_RETRY_DELAY;
        fVar.a(baseException, hVar3 == hVar4);
        return this.f58214n == hVar4 ? com.ss.android.socialbase.downloader.exception.h.RETURN : com.ss.android.socialbase.downloader.exception.h.CONTINUE;
    }

    @Override // com.ss.android.socialbase.downloader.h.f
    public synchronized com.ss.android.socialbase.downloader.model.b a(int i2) {
        com.ss.android.socialbase.downloader.model.b a4;
        if (this.f58216p.getChunkCount() < 2) {
            return null;
        }
        List<com.ss.android.socialbase.downloader.model.b> c4 = this.f58215o.c(this.f58216p.getId());
        if (c4 != null && !c4.isEmpty()) {
            for (int i4 = 0; i4 < c4.size(); i4++) {
                com.ss.android.socialbase.downloader.model.b bVar = c4.get(i4);
                if (bVar != null && (a4 = a(bVar, i2)) != null) {
                    return a4;
                }
            }
            return null;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001d  */
    @Override // com.ss.android.socialbase.downloader.h.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.ss.android.socialbase.downloader.network.g r2) {
        /*
            r1 = this;
            if (r2 == 0) goto L1a
            int r2 = r2.b()     // Catch: java.lang.Throwable -> L16
            com.ss.android.socialbase.downloader.model.DownloadInfo r0 = r1.f58216p     // Catch: java.lang.Throwable -> L16
            r0.setHttpStatusCode(r2)     // Catch: java.lang.Throwable -> L16
            com.ss.android.socialbase.downloader.model.DownloadInfo r0 = r1.f58216p     // Catch: java.lang.Throwable -> L16
            java.lang.String r2 = com.ss.android.socialbase.downloader.i.b.a(r2)     // Catch: java.lang.Throwable -> L16
            r0.setHttpStatusMessage(r2)     // Catch: java.lang.Throwable -> L16
            r2 = 1
            goto L1b
        L16:
            r2 = move-exception
            r2.printStackTrace()
        L1a:
            r2 = 0
        L1b:
            if (r2 != 0) goto L2a
            com.ss.android.socialbase.downloader.model.DownloadInfo r2 = r1.f58216p
            r0 = -1
            r2.setHttpStatusCode(r0)
            com.ss.android.socialbase.downloader.model.DownloadInfo r2 = r1.f58216p
            java.lang.String r0 = ""
            r2.setHttpStatusMessage(r0)
        L2a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.h.c.a(com.ss.android.socialbase.downloader.network.g):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x006c, code lost:
        if (r9.f() != false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.ss.android.socialbase.downloader.model.b a(com.ss.android.socialbase.downloader.model.b r9, int r10) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.h.c.a(com.ss.android.socialbase.downloader.model.b, int):com.ss.android.socialbase.downloader.model.b");
    }

    private s a(DownloadTask downloadTask) {
        s retryDelayTimeCalculator = downloadTask.getRetryDelayTimeCalculator();
        if (retryDelayTimeCalculator != null) {
            return retryDelayTimeCalculator;
        }
        DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
        if (downloadInfo != null) {
            String retryDelayTimeArray = downloadInfo.getRetryDelayTimeArray();
            if (!TextUtils.isEmpty(retryDelayTimeArray)) {
                return new com.ss.android.socialbase.downloader.impls.q(retryDelayTimeArray);
            }
        }
        return com.ss.android.socialbase.downloader.downloader.c.L();
    }

    public void a(Future future) {
        this.f58202b = future;
    }
}
