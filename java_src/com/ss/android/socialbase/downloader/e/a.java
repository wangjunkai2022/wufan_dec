package com.ss.android.socialbase.downloader.e;

import android.os.Process;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.f.p;
import com.ss.android.socialbase.downloader.i.f;
import java.io.InputStream;
import java.util.concurrent.Future;
/* compiled from: AsyncStreamReader.java */
/* loaded from: classes4.dex */
public class a implements b {

    /* renamed from: a  reason: collision with root package name */
    private final InputStream f58032a;

    /* renamed from: b  reason: collision with root package name */
    private final int f58033b;

    /* renamed from: c  reason: collision with root package name */
    private final int f58034c;

    /* renamed from: f  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.f.a f58037f;

    /* renamed from: g  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.f.a f58038g;

    /* renamed from: h  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.f.a f58039h;

    /* renamed from: i  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.f.a f58040i;

    /* renamed from: j  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.f.a f58041j;

    /* renamed from: k  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.f.a f58042k;

    /* renamed from: l  reason: collision with root package name */
    private volatile boolean f58043l;

    /* renamed from: m  reason: collision with root package name */
    private volatile boolean f58044m;

    /* renamed from: n  reason: collision with root package name */
    private volatile Throwable f58045n;

    /* renamed from: o  reason: collision with root package name */
    private volatile Future f58046o;

    /* renamed from: p  reason: collision with root package name */
    private int f58047p;

    /* renamed from: d  reason: collision with root package name */
    private final Object f58035d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private final Object f58036e = new Object();

    /* renamed from: q  reason: collision with root package name */
    private final Runnable f58048q = new Runnable() { // from class: com.ss.android.socialbase.downloader.e.a.1
        @Override // java.lang.Runnable
        public void run() {
            com.ss.android.socialbase.downloader.f.a d4;
            Process.setThreadPriority(10);
            do {
                try {
                    d4 = a.this.d();
                    d4.f58062c = a.this.f58032a.read(d4.f58060a);
                    a.this.c(d4);
                } catch (Throwable th) {
                    try {
                        a.this.f58045n = th;
                        th.printStackTrace();
                        synchronized (a.this.f58036e) {
                            a.this.f58044m = true;
                            a.this.f58036e.notify();
                            f.a(a.this.f58032a);
                            return;
                        }
                    } catch (Throwable th2) {
                        synchronized (a.this.f58036e) {
                            a.this.f58044m = true;
                            a.this.f58036e.notify();
                            f.a(a.this.f58032a);
                            throw th2;
                        }
                    }
                }
            } while (d4.f58062c != -1);
            synchronized (a.this.f58036e) {
                a.this.f58044m = true;
                a.this.f58036e.notify();
            }
            f.a(a.this.f58032a);
        }
    };

    public a(InputStream inputStream, int i2, int i4) throws Throwable {
        this.f58032a = inputStream;
        this.f58033b = i2;
        if (i4 < 1) {
            i4 = 1;
        } else if (i4 > 64) {
            i4 = 64;
        }
        this.f58034c = i4;
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.ss.android.socialbase.downloader.f.a d() throws p, InterruptedException {
        int i2;
        com.ss.android.socialbase.downloader.f.a aVar = this.f58039h;
        if (aVar != null) {
            if (!this.f58043l) {
                this.f58039h = aVar.f58063d;
                aVar.f58063d = null;
                return aVar;
            }
            throw new p("");
        }
        synchronized (this.f58035d) {
            if (!this.f58043l) {
                com.ss.android.socialbase.downloader.f.a aVar2 = this.f58037f;
                if (aVar2 == null && (i2 = this.f58047p) < this.f58034c) {
                    this.f58047p = i2 + 1;
                    return new com.ss.android.socialbase.downloader.f.a(this.f58033b);
                }
                while (aVar2 == null) {
                    this.f58035d.wait();
                    if (!this.f58043l) {
                        aVar2 = this.f58037f;
                    } else {
                        throw new p("");
                    }
                }
                this.f58039h = aVar2.f58063d;
                this.f58038g = null;
                this.f58037f = null;
                aVar2.f58063d = null;
                return aVar2;
            }
            throw new p("");
        }
    }

    private com.ss.android.socialbase.downloader.f.a e() throws BaseException, InterruptedException {
        com.ss.android.socialbase.downloader.f.a aVar;
        com.ss.android.socialbase.downloader.f.a aVar2 = this.f58042k;
        if (aVar2 != null) {
            this.f58042k = aVar2.f58063d;
            aVar2.f58063d = null;
            return aVar2;
        }
        synchronized (this.f58036e) {
            aVar = this.f58040i;
            if (aVar == null) {
                do {
                    if (this.f58044m) {
                        f();
                    }
                    this.f58036e.wait();
                    aVar = this.f58040i;
                } while (aVar == null);
                this.f58042k = aVar.f58063d;
                this.f58041j = null;
                this.f58040i = null;
                aVar.f58063d = null;
            } else {
                this.f58042k = aVar.f58063d;
                this.f58041j = null;
                this.f58040i = null;
                aVar.f58063d = null;
            }
        }
        return aVar;
    }

    private void f() throws BaseException {
        Throwable th = this.f58045n;
        if (th != null) {
            if (th instanceof p) {
                throw new BaseException(1068, "async reader closed!");
            }
            f.a(th, "async_read");
        }
        throw new BaseException(1069, "async reader terminated!");
    }

    private void c() throws Throwable {
        this.f58046o = com.ss.android.socialbase.downloader.downloader.c.q().submit(this.f58048q);
    }

    @Override // com.ss.android.socialbase.downloader.e.b
    public void b() {
        synchronized (this.f58035d) {
            this.f58043l = true;
            this.f58035d.notify();
        }
        Future future = this.f58046o;
        if (future != null) {
            try {
                future.cancel(true);
            } catch (Throwable unused) {
            }
            this.f58046o = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.ss.android.socialbase.downloader.f.a aVar) {
        synchronized (this.f58036e) {
            com.ss.android.socialbase.downloader.f.a aVar2 = this.f58041j;
            if (aVar2 == null) {
                this.f58041j = aVar;
                this.f58040i = aVar;
                this.f58036e.notify();
            } else {
                aVar2.f58063d = aVar;
                this.f58041j = aVar;
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.e.b
    public com.ss.android.socialbase.downloader.f.a a() throws BaseException, InterruptedException {
        return e();
    }

    @Override // com.ss.android.socialbase.downloader.e.b
    public void a(com.ss.android.socialbase.downloader.f.a aVar) {
        b(aVar);
    }

    private void b(com.ss.android.socialbase.downloader.f.a aVar) {
        synchronized (this.f58035d) {
            com.ss.android.socialbase.downloader.f.a aVar2 = this.f58038g;
            if (aVar2 == null) {
                this.f58038g = aVar;
                this.f58037f = aVar;
                this.f58035d.notify();
            } else {
                aVar2.f58063d = aVar;
                this.f58038g = aVar;
            }
        }
    }
}
