package cn.aigestudio.downloader.bizs;

import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import com.facebook.imagepipeline.producers.s;
import com.join.mgps.Util.f0;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DLTask.java */
/* loaded from: classes2.dex */
public class h implements Runnable, l {

    /* renamed from: f  reason: collision with root package name */
    private static final String f8409f = h.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private f f8410a;

    /* renamed from: b  reason: collision with root package name */
    private Context f8411b;

    /* renamed from: c  reason: collision with root package name */
    private AtomicLong f8412c = new AtomicLong();

    /* renamed from: d  reason: collision with root package name */
    private int f8413d = 0;

    /* renamed from: e  reason: collision with root package name */
    private AtomicLong f8414e = new AtomicLong(System.currentTimeMillis());

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Context context, f fVar) {
        this.f8410a = fVar;
        this.f8411b = context;
        this.f8412c.set(fVar.f8372b.get());
        if (fVar.f8380j) {
            return;
        }
        c.k(context).e(fVar);
    }

    private void e(HttpURLConnection httpURLConnection) {
        for (e eVar : this.f8410a.f8385o) {
            httpURLConnection.addRequestProperty(eVar.f8369a, eVar.f8370b);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.io.InputStream] */
    private void f(HttpURLConnection httpURLConnection) throws Exception {
        FileOutputStream fileOutputStream;
        Throwable th;
        Exception e4;
        int read;
        try {
            try {
                httpURLConnection = httpURLConnection.getInputStream();
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e5) {
            e4 = e5;
        } catch (Throwable th3) {
            fileOutputStream = null;
            th = th3;
            httpURLConnection = 0;
        }
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(this.f8410a.f8388r);
            try {
                byte[] bArr = new byte[4096];
                while (!this.f8410a.f8389s && (read = httpURLConnection.read(bArr)) != -1) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("downloading...len=");
                    sb.append(read);
                    sb.append(";url=");
                    sb.append(this.f8410a.f8375e);
                    fileOutputStream2.write(bArr, 0, read);
                    System.currentTimeMillis();
                    b(this.f8410a.f8375e, read);
                }
                if (this.f8410a.f8389s) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("wap thread stop now.url=");
                    sb2.append(this.f8410a.f8375e);
                    i(this.f8410a);
                } else {
                    c(null);
                }
                fileOutputStream2.close();
                httpURLConnection.close();
            } catch (Exception e6) {
                e4 = e6;
                e4.printStackTrace();
                throw new IOException();
            }
        } catch (Exception e7) {
            e4 = e7;
        } catch (Throwable th4) {
            fileOutputStream = null;
            th = th4;
            fileOutputStream.close();
            httpURLConnection.close();
            throw th;
        }
    }

    private void g() {
        List<j> j4 = c.k(this.f8411b).j(this.f8410a.f8375e);
        if (j4 != null && j4.size() > 0) {
            for (j jVar : j4) {
                jVar.f8423e = true;
            }
            c.k(this.f8411b).i(this.f8410a.f8375e);
        }
        long j5 = 0;
        if (this.f8410a.f8388r.exists() && this.f8410a.f8388r.isFile()) {
            j5 = this.f8410a.f8388r.length();
        }
        String uuid = UUID.randomUUID().toString();
        f fVar = this.f8410a;
        j jVar2 = new j(uuid, fVar.f8375e, j5, fVar.f8371a.get());
        this.f8410a.a(jVar2);
        c.k(this.f8411b).g(jVar2);
        g.q(this.f8411b).b(new i(jVar2, this.f8410a, this));
    }

    private void h(HttpURLConnection httpURLConnection, int i2) throws Exception {
        List<j> list;
        StringBuilder sb = new StringBuilder();
        sb.append("method dlInit() called.code= ");
        sb.append(i2);
        sb.append(";url=");
        sb.append(this.f8410a.f8375e);
        j(httpURLConnection);
        c.k(this.f8411b).d(this.f8410a);
        if (this.f8410a.f8379i) {
            f fVar = this.f8410a;
            fVar.f8387q.c(fVar.f8375e, fVar.f8373c, fVar.f8376f, fVar.f8371a.get());
        }
        if (f0.g(this.f8410a.f8374d)) {
            this.f8410a.f8388r = new File(this.f8410a.f8374d);
            if (this.f8410a.f8388r.exists() && this.f8410a.f8388r.length() == this.f8410a.f8371a.get()) {
                if (this.f8410a.f8379i) {
                    g.q(this.f8411b).s(this.f8410a.f8375e, 7);
                    f fVar2 = this.f8410a;
                    fVar2.f8387q.f(fVar2.f8375e, fVar2.f8388r);
                    return;
                }
                return;
            } else if (i2 == 200 && this.f8410a.f8388r.exists() && this.f8410a.f8388r.length() > 0) {
                httpURLConnection.disconnect();
                throw new Exception("wap mode.");
            } else if (i2 == 200) {
                f(httpURLConnection);
                return;
            } else if (i2 != 206) {
                return;
            } else {
                if (this.f8410a.f8371a.get() <= 0) {
                    f(httpURLConnection);
                    return;
                } else if (this.f8410a.f8380j && (list = this.f8410a.f8386p) != null && list.size() == 1) {
                    for (j jVar : this.f8410a.f8386p) {
                        jVar.f8426h = false;
                        jVar.f8425g = false;
                        jVar.f8421c = this.f8410a.f8388r.length();
                        g.q(this.f8411b).b(new i(jVar, this.f8410a, this));
                    }
                    return;
                } else {
                    g();
                    return;
                }
            }
        }
        throw new DLException("Can not create file");
    }

    private synchronized void i(f fVar) {
        StringBuilder sb = new StringBuilder();
        sb.append("method onStop() called.url=");
        sb.append(fVar.f8375e);
        g.q(this.f8411b).s(fVar.f8375e, 2);
        if (fVar.f8379i) {
            fVar.f8387q.e(fVar.f8375e, fVar.f8388r.length());
        }
        g.q(this.f8411b).a();
    }

    private void j(HttpURLConnection httpURLConnection) {
        this.f8410a.f8383m = httpURLConnection.getHeaderField("Content-Disposition");
        this.f8410a.f8384n = httpURLConnection.getHeaderField("Content-Location");
        this.f8410a.f8381k = k.e(httpURLConnection.getContentType());
        String headerField = httpURLConnection.getHeaderField("Transfer-Encoding");
        if (TextUtils.isEmpty(headerField)) {
            try {
                this.f8410a.f8371a.set(Integer.parseInt(httpURLConnection.getHeaderField("Content-Length")));
            } catch (NumberFormatException unused) {
                this.f8410a.f8371a.set(-1L);
            }
        } else {
            this.f8410a.f8371a.set(-1L);
        }
        if (this.f8410a.f8371a.get() == -1 && (TextUtils.isEmpty(headerField) || !headerField.equalsIgnoreCase(HttpHeaders.Values.CHUNKED))) {
            throw new RuntimeException("Can not obtain size of download file.");
        }
        if (TextUtils.isEmpty(this.f8410a.f8373c)) {
            f fVar = this.f8410a;
            fVar.f8373c = k.f(fVar.f8376f, fVar.f8383m, fVar.f8384n);
        }
    }

    @Override // cn.aigestudio.downloader.bizs.l
    public synchronized void a(j jVar) {
        c.k(this.f8411b).f(jVar);
        int i2 = this.f8413d + 1;
        this.f8413d = i2;
        if (i2 >= this.f8410a.f8386p.size()) {
            this.f8410a.f8372b.set(this.f8412c.get());
            c.k(this.f8411b).d(this.f8410a);
            this.f8413d = 0;
            if (this.f8410a.f8379i) {
                f fVar = this.f8410a;
                fVar.f8387q.d(fVar.f8375e, this.f8412c.get());
            }
        }
    }

    @Override // cn.aigestudio.downloader.bizs.l
    public synchronized void b(String str, int i2) {
        AtomicLong atomicLong = this.f8412c;
        atomicLong.set(atomicLong.get() + i2);
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f8414e.get() > 1000) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f8412c.get());
            sb.append("");
            if (this.f8410a.f8379i) {
                this.f8410a.f8387q.b(str, this.f8412c.get());
            }
            this.f8414e.set(currentTimeMillis);
        }
    }

    @Override // cn.aigestudio.downloader.bizs.l
    public synchronized void c(j jVar) {
        if (jVar == null) {
            if (this.f8410a.f8379i) {
                g.q(this.f8411b).s(this.f8410a.f8375e, 1);
                f fVar = this.f8410a;
                fVar.f8387q.f(fVar.f8375e, fVar.f8388r);
            }
            return;
        }
        this.f8410a.b(jVar);
        c.k(this.f8411b).a(jVar.f8419a);
        if (jVar.f8421c < jVar.f8422d) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Thread size ");
        sb.append(this.f8410a.f8386p.size());
        if (this.f8410a.f8386p.isEmpty()) {
            g.q(this.f8411b).s(this.f8410a.f8375e, 1);
            c.k(this.f8411b).h(this.f8410a.f8375e);
            if (this.f8410a.f8379i) {
                f fVar2 = this.f8410a;
                fVar2.f8387q.b(fVar2.f8375e, fVar2.f8371a.get());
                f fVar3 = this.f8410a;
                fVar3.f8387q.f(fVar3.f8375e, fVar3.f8388r);
            }
            g.q(this.f8411b).a();
        } else {
            this.f8410a.f8377g.decrementAndGet();
            for (int i2 = 0; i2 < this.f8410a.f8386p.size(); i2++) {
                g.q(this.f8411b).b(new i(this.f8410a.f8386p.get(i2), this.f8410a, this));
            }
        }
    }

    @Override // cn.aigestudio.downloader.bizs.l
    public synchronized void d(j jVar) {
        c.k(this.f8411b).f(jVar);
        int i2 = this.f8413d + 1;
        this.f8413d = i2;
        if (i2 >= this.f8410a.f8386p.size()) {
            StringBuilder sb = new StringBuilder();
            sb.append("All the threads was stopped.threadInfo.isError=");
            sb.append(jVar.f8424f);
            this.f8410a.f8372b.set(this.f8412c.get());
            g.q(this.f8411b).c(this.f8410a).s(this.f8410a.f8375e, 3);
            c.k(this.f8411b).d(this.f8410a);
            this.f8413d = 0;
            if (this.f8410a.f8379i) {
                if (jVar.f8424f) {
                    f fVar = this.f8410a;
                    fVar.f8387q.g(fVar.f8375e, -1, "-1");
                } else {
                    f fVar2 = this.f8410a;
                    fVar2.f8387q.e(fVar2.f8375e, this.f8412c.get());
                }
            }
            g.q(this.f8411b).a();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        HttpURLConnection httpURLConnection;
        Throwable th;
        Exception e4;
        if (this.f8410a.f8379i) {
            f fVar = this.f8410a;
            fVar.f8387q.c(fVar.f8375e, fVar.f8373c, fVar.f8376f, fVar.f8371a.get());
        }
        Process.setThreadPriority(10);
        while (this.f8410a.f8378h < 5) {
            try {
                httpURLConnection = (HttpURLConnection) new URL(this.f8410a.f8376f).openConnection();
                try {
                    try {
                        f fVar2 = this.f8410a;
                        if (fVar2.f8389s) {
                            g.q(this.f8411b).s(this.f8410a.f8375e, 4);
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                                return;
                            }
                            return;
                        } else if (fVar2.f8390t) {
                            g.q(this.f8411b).s(this.f8410a.f8375e, 6);
                            if (this.f8410a.f8379i) {
                                f fVar3 = this.f8410a;
                                fVar3.f8387q.g(fVar3.f8375e, 138, "delete...");
                            }
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                                return;
                            }
                            return;
                        } else {
                            httpURLConnection.setInstanceFollowRedirects(false);
                            httpURLConnection.setConnectTimeout(10000);
                            httpURLConnection.setReadTimeout(s.f13217g);
                            e(httpURLConnection);
                            int responseCode = httpURLConnection.getResponseCode();
                            if (responseCode == 200 || responseCode == 206) {
                                h(httpURLConnection, responseCode);
                                httpURLConnection.disconnect();
                                return;
                            } else if (responseCode != 301 && responseCode != 307 && responseCode != 303 && responseCode != 304) {
                                if (this.f8410a.f8379i) {
                                    f fVar4 = this.f8410a;
                                    fVar4.f8387q.g(fVar4.f8375e, responseCode, httpURLConnection.getResponseMessage());
                                }
                                g.q(this.f8411b).s(this.f8410a.f8375e, 5);
                                httpURLConnection.disconnect();
                                return;
                            } else {
                                String headerField = httpURLConnection.getHeaderField("location");
                                if (!TextUtils.isEmpty(headerField)) {
                                    f fVar5 = this.f8410a;
                                    fVar5.f8376f = headerField;
                                    fVar5.f8378h++;
                                    httpURLConnection.disconnect();
                                } else {
                                    throw new DLException("Can not obtain real url from location in header.");
                                }
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        throw th;
                    }
                } catch (Exception e5) {
                    e4 = e5;
                    e4.printStackTrace();
                    g.q(this.f8411b).s(this.f8410a.f8375e, 6);
                    if (this.f8410a.f8379i) {
                        f fVar6 = this.f8410a;
                        fVar6.f8387q.g(fVar6.f8375e, 138, e4.toString());
                    }
                    g.q(this.f8411b).a();
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                        return;
                    }
                    return;
                }
            } catch (Exception e6) {
                httpURLConnection = null;
                e4 = e6;
            } catch (Throwable th3) {
                httpURLConnection = null;
                th = th3;
            }
        }
        throw new RuntimeException("Too many redirects");
    }
}
