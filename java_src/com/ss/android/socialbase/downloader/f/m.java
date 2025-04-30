package com.ss.android.socialbase.downloader.f;

import android.text.TextUtils;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;
import org.cocos2dx.lib.GameControllerDelegate;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SegmentReader.java */
/* loaded from: classes4.dex */
public class m implements Runnable {
    private Thread A;
    private volatile boolean B;
    private int C;
    private int D;
    private int E;
    private long F;
    private int G;
    private boolean H;
    private BaseException I;
    private boolean J;
    private boolean K;
    private com.ss.android.socialbase.downloader.i.e L;

    /* renamed from: a  reason: collision with root package name */
    volatile i f58137a;

    /* renamed from: b  reason: collision with root package name */
    q f58138b;

    /* renamed from: c  reason: collision with root package name */
    final int f58139c;

    /* renamed from: d  reason: collision with root package name */
    volatile long f58140d;

    /* renamed from: e  reason: collision with root package name */
    volatile long f58141e;

    /* renamed from: f  reason: collision with root package name */
    volatile long f58142f;

    /* renamed from: g  reason: collision with root package name */
    volatile long f58143g;

    /* renamed from: h  reason: collision with root package name */
    String f58144h;

    /* renamed from: i  reason: collision with root package name */
    String f58145i;

    /* renamed from: j  reason: collision with root package name */
    String f58146j;

    /* renamed from: k  reason: collision with root package name */
    private final f f58147k;

    /* renamed from: l  reason: collision with root package name */
    private final c f58148l;

    /* renamed from: m  reason: collision with root package name */
    private final DownloadInfo f58149m;

    /* renamed from: n  reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.g.a f58150n;

    /* renamed from: o  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.network.i f58151o;

    /* renamed from: p  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.model.d f58152p;

    /* renamed from: r  reason: collision with root package name */
    private long f58154r;

    /* renamed from: s  reason: collision with root package name */
    private volatile long f58155s;

    /* renamed from: t  reason: collision with root package name */
    private volatile long f58156t;

    /* renamed from: v  reason: collision with root package name */
    private volatile long f58158v;

    /* renamed from: w  reason: collision with root package name */
    private Future f58159w;

    /* renamed from: x  reason: collision with root package name */
    private volatile boolean f58160x;

    /* renamed from: y  reason: collision with root package name */
    private volatile boolean f58161y;

    /* renamed from: z  reason: collision with root package name */
    private volatile boolean f58162z;

    /* renamed from: q  reason: collision with root package name */
    private final List<i> f58153q = new ArrayList();

    /* renamed from: u  reason: collision with root package name */
    private volatile long f58157u = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(DownloadInfo downloadInfo, k kVar, c cVar, q qVar, int i2) {
        this.f58149m = downloadInfo;
        this.f58147k = kVar;
        this.f58148l = cVar;
        this.f58150n = com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId());
        this.f58138b = qVar;
        this.f58139c = i2;
    }

    private boolean a(i iVar) throws BaseException {
        k();
        while (true) {
            try {
                b(iVar);
                d(iVar);
                return true;
            } catch (j e4) {
                this.I = e4;
                throw e4;
            } catch (Throwable th) {
                try {
                    com.ss.android.socialbase.downloader.c.a.e("SegmentReader", "download: e = " + th + ", threadIndex = " + this.f58139c + ", reconnect = " + this.f58161y + ", closed = " + this.f58160x);
                    if (this.f58160x) {
                        return false;
                    }
                    if (this.f58161y) {
                        this.f58161y = false;
                        Thread.interrupted();
                        if (this.f58162z) {
                            this.f58162z = false;
                            throw new j(5, "download");
                        }
                    } else {
                        th.printStackTrace();
                        BaseException e5 = null;
                        if (th instanceof BaseException) {
                            e5 = th;
                        } else {
                            try {
                                com.ss.android.socialbase.downloader.i.f.a((Throwable) th, "download");
                            } catch (BaseException e6) {
                                e5 = e6;
                            }
                        }
                        if (e5 == null || !a(iVar, e5)) {
                            return false;
                        }
                    }
                } finally {
                    i();
                }
            }
        }
        return false;
    }

    private void b(i iVar) throws BaseException, com.ss.android.socialbase.downloader.exception.i {
        c(iVar);
        this.f58147k.a(this, iVar, this.f58138b, this.f58152p);
        this.f58138b.c();
    }

    private void c(i iVar) throws BaseException {
        try {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                this.f58141e = 0L;
                this.f58140d = currentTimeMillis;
                this.f58154r = iVar.e();
                this.f58156t = iVar.f();
                if (this.f58156t > 0 && this.f58154r > this.f58156t) {
                    throw new j(6, "createConn, " + iVar);
                }
                this.L = new com.ss.android.socialbase.downloader.i.e();
                List<com.ss.android.socialbase.downloader.model.c> a4 = com.ss.android.socialbase.downloader.i.f.a(this.f58149m.getExtraHeaders(), this.f58149m.geteTag(), this.f58154r, this.f58156t);
                a4.add(new com.ss.android.socialbase.downloader.model.c("Segment-Index", String.valueOf(iVar.g())));
                a4.add(new com.ss.android.socialbase.downloader.model.c("Thread-Index", String.valueOf(this.f58139c)));
                com.ss.android.socialbase.downloader.i.f.a(a4, this.f58149m);
                com.ss.android.socialbase.downloader.i.f.b(a4, this.f58149m);
                String str = this.f58138b.f58165a;
                if (this.H && !TextUtils.isEmpty(str) && str.startsWith("https")) {
                    str = str.replaceFirst("https", com.facebook.common.util.f.f11765a);
                }
                String str2 = this.f58138b.f58166b;
                com.ss.android.socialbase.downloader.c.a.c("SegmentReader", "createConnectionBegin: url = " + str + ", ip = " + str2 + ", segment = " + iVar + ", threadIndex = " + this.f58139c);
                this.f58144h = str;
                this.f58145i = str2;
                com.ss.android.socialbase.downloader.network.i a5 = com.ss.android.socialbase.downloader.downloader.c.a(this.f58149m.isNeedDefaultHttpServiceBackUp(), this.f58149m.getMaxBytes(), str, str2, a4, 0, currentTimeMillis - this.F > 3000 && this.f58150n.b("monitor_download_connect") > 0, this.f58149m);
                if (a5 != null) {
                    this.f58151o = a5;
                    this.f58152p = new com.ss.android.socialbase.downloader.model.d(str, a5);
                    if (!this.f58160x) {
                        if (a5 instanceof com.ss.android.socialbase.downloader.network.a) {
                            this.f58146j = ((com.ss.android.socialbase.downloader.network.a) a5).e();
                        }
                        StringBuilder sb = new StringBuilder();
                        sb.append("createConnectionSuccess: url = ");
                        sb.append(str);
                        sb.append(", ip = ");
                        sb.append(str2);
                        sb.append(", hostRealIp = ");
                        sb.append(this.f58146j);
                        sb.append(", threadIndex = ");
                        sb.append(this.f58139c);
                        this.f58141e = System.currentTimeMillis();
                        return;
                    }
                    throw new p("createConn");
                }
                throw new BaseException((int) GameControllerDelegate.BUTTON_SELECT, new IOException("download can't continue, chunk connection is null"));
            } catch (BaseException e4) {
                throw e4;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x012b, code lost:
        r7 = r11 + 1;
        r11 = r13 - r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0135, code lost:
        if (r11 <= 0) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0137, code lost:
        com.ss.android.socialbase.downloader.c.a.e("SegmentReader", "loopAndRead: redundant = " + r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x014d, code lost:
        r31.f58157u = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0150, code lost:
        r13 = r7;
        r11 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0154, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x015d, code lost:
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0165, code lost:
        throw new com.ss.android.socialbase.downloader.f.p("loopAndRead");
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01c1, code lost:
        r6 = 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x03a7  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:76:0x015b -> B:77:0x015c). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void d(com.ss.android.socialbase.downloader.f.i r32) throws com.ss.android.socialbase.downloader.exception.BaseException {
        /*
            Method dump skipped, instructions count: 999
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.f.m.d(com.ss.android.socialbase.downloader.f.i):void");
    }

    private void i() {
        this.F = this.f58140d;
        this.f58140d = -1L;
        this.f58141e = -1L;
        this.f58142f = -1L;
        this.f58143g = -1L;
        j();
    }

    private void j() {
        com.ss.android.socialbase.downloader.network.i iVar = this.f58151o;
        if (iVar != null) {
            try {
                com.ss.android.socialbase.downloader.c.a.c("SegmentReader", "closeConnection: thread = " + this.f58139c);
                iVar.d();
                iVar.c();
            } catch (Throwable unused) {
            }
        }
    }

    private void k() {
        this.H = false;
        l();
    }

    private void l() {
        this.D = this.f58138b.f58168d ? this.f58149m.getRetryCount() : this.f58149m.getBackUpUrlRetryCount();
        this.E = 0;
    }

    private long m() {
        long j4 = this.f58155s;
        this.f58155s = 0L;
        if (j4 <= 0) {
            return Long.MAX_VALUE;
        }
        return j4;
    }

    public void e() {
        com.ss.android.socialbase.downloader.c.a.c("SegmentReader", "close: threadIndex = " + this.f58139c);
        synchronized (this) {
            this.f58160x = true;
            this.B = true;
        }
        j();
        Future future = this.f58159w;
        if (future != null) {
            this.f58159w = null;
            try {
                future.cancel(true);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public void f() {
        a(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g() {
        return this.J;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long h() {
        return this.f58154r;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x007b, code lost:
        r6.f58137a = null;
        r2 = r6.f58147k;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.f.m.run():void");
    }

    public long b() {
        long c4;
        synchronized (this.f58147k) {
            c4 = this.f58158v + c();
        }
        return c4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z3) {
        this.J = z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(long j4) {
        long j5 = this.f58157u;
        com.ss.android.socialbase.downloader.i.e eVar = this.L;
        if (j5 < 0 || eVar == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("markProgress: curSegmentReadOffset = ");
        sb.append(j5);
        sb.append(", threadIndex = ");
        sb.append(this.f58139c);
        eVar.a(j5, j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(q qVar) {
        int i2 = this.G;
        if (i2 >= 30) {
            return false;
        }
        this.G = i2 + 1;
        q qVar2 = this.f58138b;
        if (qVar2 != null) {
            qVar2.b(this);
        }
        qVar.a(this);
        this.f58138b = qVar;
        l();
        return true;
    }

    private boolean a(i iVar, BaseException baseException) {
        com.ss.android.socialbase.downloader.c.a.e("SegmentReader", "handleDownloadFailed:  e = " + baseException + ", curRetryCount = " + this.E + ", retryCount = " + this.D);
        this.I = baseException;
        this.f58138b.b();
        this.f58147k.a(this, this.f58138b, iVar, baseException, this.E, this.D);
        int i2 = this.E;
        if (i2 < this.D) {
            this.E = i2 + 1;
            return true;
        } else if (a(baseException)) {
            return true;
        } else {
            this.f58147k.a(this, this.f58138b, iVar, baseException);
            return false;
        }
    }

    public long c() {
        synchronized (this.f58147k) {
            long j4 = this.f58157u;
            long j5 = this.f58154r;
            if (j5 < 0 || j4 <= j5) {
                return 0L;
            }
            return j4 - j5;
        }
    }

    private boolean a(BaseException baseException) {
        if (com.ss.android.socialbase.downloader.i.f.c(baseException)) {
            String str = this.f58138b.f58165a;
            if (TextUtils.isEmpty(str) || !str.startsWith("https") || !this.f58149m.isNeedHttpsToHttpRetry() || this.H) {
                return false;
            }
            this.H = true;
            l();
            return true;
        }
        return false;
    }

    public void c(boolean z3) {
        this.K = z3;
    }

    private a a(c cVar, InputStream inputStream) throws InterruptedException, BaseException, IOException {
        int i2;
        a b4 = cVar.b();
        try {
            i2 = inputStream.read(b4.f58060a);
        } catch (Throwable th) {
            th = th;
            i2 = -1;
        }
        try {
            if (i2 != -1) {
                b4.f58062c = i2;
                if (i2 == -1) {
                    cVar.a(b4);
                }
                return b4;
            }
            throw new BaseException(1073, "probe");
        } catch (Throwable th2) {
            th = th2;
            if (i2 == -1) {
                cVar.a(b4);
            }
            throw th;
        }
    }

    public boolean a(long j4) {
        long j5 = this.f58156t;
        if (j4 > 0 || j5 <= 0) {
            if (j4 <= j5 || j5 <= 0) {
                this.f58155s = j4;
                this.B = true;
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        q qVar = this.f58138b;
        try {
            synchronized (this.f58147k) {
                long c4 = c();
                if (c4 > 0) {
                    this.f58158v += c4;
                    qVar.a(c4);
                }
                this.f58157u = -1L;
            }
        } catch (Throwable unused) {
        }
    }

    public void a(boolean z3) {
        com.ss.android.socialbase.downloader.c.a.c("SegmentReader", "reconnect: threadIndex = " + this.f58139c);
        synchronized (this) {
            this.f58162z = z3;
            this.f58161y = true;
            this.B = true;
        }
        j();
        Thread thread = this.A;
        if (thread != null) {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("reconnect: t.interrupt threadIndex = ");
                sb.append(this.f58139c);
                thread.interrupt();
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Future future) {
        this.f58159w = future;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long a(long j4, long j5) {
        com.ss.android.socialbase.downloader.i.e eVar = this.L;
        if (eVar == null) {
            return -1L;
        }
        return eVar.b(j4, j5);
    }

    public long d() {
        return this.f58157u;
    }
}
