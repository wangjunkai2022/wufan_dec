package com.github.snowdream.android.app.downloader;

import android.os.Handler;
import android.os.Message;
import com.join.mgps.Util.UtilsMy;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: CommonDownloadTask.java */
/* loaded from: classes2.dex */
public class c implements Runnable {

    /* renamed from: q  reason: collision with root package name */
    public static final int f13944q = 1;

    /* renamed from: r  reason: collision with root package name */
    public static final int f13945r = 3;

    /* renamed from: s  reason: collision with root package name */
    public static final int f13946s = 4;

    /* renamed from: t  reason: collision with root package name */
    public static final int f13947t = 5;

    /* renamed from: u  reason: collision with root package name */
    public static final int f13948u = 2;

    /* renamed from: v  reason: collision with root package name */
    public static final int f13949v = 6;

    /* renamed from: w  reason: collision with root package name */
    public static final int f13950w = 7;

    /* renamed from: b  reason: collision with root package name */
    private Handler f13952b;

    /* renamed from: d  reason: collision with root package name */
    private long f13954d;

    /* renamed from: e  reason: collision with root package name */
    private long f13955e;

    /* renamed from: f  reason: collision with root package name */
    private String f13956f;

    /* renamed from: g  reason: collision with root package name */
    private String f13957g;

    /* renamed from: h  reason: collision with root package name */
    private String f13958h;

    /* renamed from: i  reason: collision with root package name */
    private File f13959i;

    /* renamed from: j  reason: collision with root package name */
    private HttpURLConnection f13960j;

    /* renamed from: k  reason: collision with root package name */
    private HttpURLConnection f13961k;

    /* renamed from: n  reason: collision with root package name */
    private long f13964n;

    /* renamed from: o  reason: collision with root package name */
    String f13965o;

    /* renamed from: p  reason: collision with root package name */
    int f13966p;

    /* renamed from: a  reason: collision with root package name */
    private AtomicBoolean f13951a = new AtomicBoolean(false);

    /* renamed from: c  reason: collision with root package name */
    int f13953c = 3;

    /* renamed from: l  reason: collision with root package name */
    private RandomAccessFile f13962l = null;

    /* renamed from: m  reason: collision with root package name */
    private InputStream f13963m = null;

    /* compiled from: CommonDownloadTask.java */
    /* loaded from: classes2.dex */
    class a extends Thread {
        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            if (c.this.f13960j != null) {
                c.this.f13960j.disconnect();
                c.this.f13960j = null;
            }
        }
    }

    /* compiled from: CommonDownloadTask.java */
    /* loaded from: classes2.dex */
    class b extends Thread {
        b() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            if (c.this.f13961k != null) {
                c.this.f13961k.disconnect();
                c.this.f13961k = null;
            }
        }
    }

    public c(String str, String str2, String str3, long j4) {
        this.f13956f = str;
        this.f13957g = str2;
        this.f13958h = str3;
        if (!str3.endsWith(net.lingala.zip4j.util.e.F0)) {
            this.f13958h = str3 + net.lingala.zip4j.util.e.F0;
        }
        this.f13954d = j4;
    }

    private void f() {
        try {
            HttpURLConnection httpURLConnection = this.f13960j;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
        } catch (Exception unused) {
        }
        try {
            InputStream inputStream = this.f13963m;
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        RandomAccessFile randomAccessFile = this.f13962l;
        if (randomAccessFile != null) {
            try {
                randomAccessFile.close();
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        }
        HttpURLConnection httpURLConnection2 = this.f13961k;
        if (httpURLConnection2 != null) {
            try {
                httpURLConnection2.disconnect();
                this.f13961k = null;
            } catch (Exception e6) {
                e6.printStackTrace();
            }
        }
    }

    private void m() throws IOException {
        byte[] bArr = new byte[4096];
        long currentTimeMillis = System.currentTimeMillis();
        while (true) {
            int read = this.f13963m.read(bArr, 0, 4096);
            if (read <= 0) {
                return;
            }
            if (this.f13951a.get()) {
                u();
                return;
            }
            this.f13962l.write(bArr, 0, read);
            this.f13964n += read;
            long currentTimeMillis2 = System.currentTimeMillis();
            long j4 = currentTimeMillis2 - currentTimeMillis;
            if (j4 > 200) {
                this.f13965o = UtilsMy.c((read * 1000) / j4);
                this.f13966p = (int) ((this.f13964n * 100) / this.f13955e);
                n(5);
                currentTimeMillis = currentTimeMillis2;
            }
        }
    }

    private void n(int i2) {
        Message obtain = Message.obtain();
        obtain.what = i2;
        if (i2 == 5) {
            obtain.obj = this.f13956f + ";" + this.f13965o + ";" + this.f13966p;
            obtain.arg1 = this.f13966p;
        } else if (i2 == 7) {
            obtain.obj = Long.valueOf(this.f13955e);
        } else {
            obtain.obj = this.f13956f;
        }
        this.f13952b.sendMessage(obtain);
    }

    private void u() {
        f();
        File file = this.f13959i;
        if (file != null) {
            UtilsMy.delete(file);
        }
        n(3);
    }

    public void e() {
        this.f13951a.set(true);
    }

    public long g() {
        return this.f13955e;
    }

    public String h() {
        return this.f13958h;
    }

    public long i() {
        return this.f13954d;
    }

    public File j() {
        return this.f13959i;
    }

    public String k() {
        return this.f13957g;
    }

    public String l() {
        return this.f13956f;
    }

    public void o(String str) {
        this.f13958h = str;
    }

    public void p(long j4) {
        this.f13954d = j4;
    }

    public void q(String str) {
        this.f13957g = str;
    }

    public void r(Handler handler) {
        this.f13952b = handler;
    }

    /* JADX WARN: Code restructure failed: missing block: B:129:0x0285, code lost:
        if (r9 == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x02e1, code lost:
        if (r9 == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0322, code lost:
        if (r9 == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0353, code lost:
        if (r9 == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0385, code lost:
        if (r9 == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x03ab, code lost:
        if (r9 == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x03ad, code lost:
        n(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0111, code lost:
        if (r9 == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0153, code lost:
        if (r9 == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01d1, code lost:
        if (r9 == false) goto L51;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 970
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.snowdream.android.app.downloader.c.run():void");
    }

    public void t(String str) {
        this.f13956f = str;
    }
}
