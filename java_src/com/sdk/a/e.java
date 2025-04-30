package com.sdk.a;

import android.os.SystemClock;
import com.sdk.Unicorn.base.framework.utils.app.AppUtils;
import com.sdk.Unicorn.base.module.manager.SDKManager;
import com.sdk.a.g;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class e<T> extends com.sdk.d.e<Object, Object, Void> implements com.sdk.c.b {

    /* renamed from: j  reason: collision with root package name */
    public static final d f56528j = new d();

    /* renamed from: k  reason: collision with root package name */
    public static Map<String, Long> f56529k = new TreeMap();

    /* renamed from: m  reason: collision with root package name */
    public com.sdk.e.b<T> f56531m;

    /* renamed from: n  reason: collision with root package name */
    public String f56532n;

    /* renamed from: o  reason: collision with root package name */
    public String f56533o;

    /* renamed from: q  reason: collision with root package name */
    public int f56535q;

    /* renamed from: s  reason: collision with root package name */
    public long f56537s;

    /* renamed from: v  reason: collision with root package name */
    public Boolean f56540v;

    /* renamed from: w  reason: collision with root package name */
    public Boolean f56541w;

    /* renamed from: x  reason: collision with root package name */
    public Boolean f56542x;

    /* renamed from: y  reason: collision with root package name */
    public h<T> f56543y;

    /* renamed from: z  reason: collision with root package name */
    public long f56544z;

    /* renamed from: l  reason: collision with root package name */
    public long f56530l = d.f56524a;

    /* renamed from: p  reason: collision with root package name */
    public a f56534p = a.WAITING;

    /* renamed from: r  reason: collision with root package name */
    public boolean f56536r = true;

    /* renamed from: t  reason: collision with root package name */
    public String f56538t = null;

    /* renamed from: u  reason: collision with root package name */
    public boolean f56539u = false;

    /* loaded from: classes4.dex */
    public enum a {
        WAITING(0),
        STARTED(1),
        LOADING(2),
        FAILURE(3),
        CANCELLED(4),
        SUCCESS(5);

        a(int i2) {
        }
    }

    public e(g<T> gVar) {
        Boolean bool = Boolean.FALSE;
        this.f56540v = bool;
        this.f56541w = bool;
        this.f56542x = bool;
        if (gVar != null) {
            h<T> hVar = gVar.f56557f;
            this.f56543y = hVar;
            if (hVar != null) {
                this.f56532n = hVar.f56572c;
                this.f56533o = hVar.f56573d;
                this.f56535q = hVar.f56578i;
                this.f56531m = hVar.f56579j;
            }
        }
    }

    public void a() {
        this.f56534p = a.CANCELLED;
        if (!this.f56607e.get()) {
            try {
                this.f56607e.set(true);
                this.f56606d.cancel(true);
            } catch (Throwable th) {
                com.sdk.o.b.a("PriorityAsyncTask", th.getMessage(), this.f56610h);
            }
        }
        com.sdk.e.b<T> bVar = this.f56531m;
        if (bVar != null) {
            bVar.a();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.sdk.a.i<T> b(com.sdk.a.g<T> r9, java.net.HttpURLConnection r10) {
        /*
            r8 = this;
            java.lang.String r0 = "PriorityAsyncTask"
            r1 = 0
            r2 = 1
            com.sdk.a.d r3 = com.sdk.a.e.f56528j     // Catch: java.lang.Throwable -> L80
            java.lang.String r4 = r8.f56532n     // Catch: java.lang.Throwable -> L80
            boolean r4 = r3.b(r4)     // Catch: java.lang.Throwable -> L80
            if (r4 == 0) goto L1c
            java.lang.String r4 = r8.f56533o     // Catch: java.lang.Throwable -> L80
            java.lang.String r3 = r3.a(r4)     // Catch: java.lang.Throwable -> L80
            if (r3 == 0) goto L1c
            com.sdk.a.i r4 = new com.sdk.a.i     // Catch: java.lang.Throwable -> L80
            r4.<init>(r1, r3, r2)     // Catch: java.lang.Throwable -> L80
            return r4
        L1c:
            java.lang.Boolean r3 = r8.f56540v     // Catch: java.lang.Throwable -> L80
            boolean r3 = r3.booleanValue()     // Catch: java.lang.Throwable -> L80
            if (r3 == 0) goto L69
            boolean r3 = r8.f56539u     // Catch: java.lang.Throwable -> L80
            if (r3 == 0) goto L69
            java.lang.String r3 = "走了下载请求"
            java.lang.Boolean r4 = r8.f56610h     // Catch: java.lang.Throwable -> L80
            com.sdk.o.b.a(r0, r3, r4)     // Catch: java.lang.Throwable -> L80
            java.io.File r3 = new java.io.File     // Catch: java.lang.Throwable -> L80
            java.lang.String r4 = r8.f56538t     // Catch: java.lang.Throwable -> L80
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L80
            boolean r4 = r3.isFile()     // Catch: java.lang.Throwable -> L80
            r5 = 0
            if (r4 == 0) goto L49
            boolean r4 = r3.exists()     // Catch: java.lang.Throwable -> L80
            if (r4 == 0) goto L49
            long r3 = r3.length()     // Catch: java.lang.Throwable -> L80
            goto L4a
        L49:
            r3 = r5
        L4a:
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 <= 0) goto L69
            java.lang.String r5 = "RANGE"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L80
            r6.<init>()     // Catch: java.lang.Throwable -> L80
            java.lang.String r7 = "bytes="
            r6.append(r7)     // Catch: java.lang.Throwable -> L80
            r6.append(r3)     // Catch: java.lang.Throwable -> L80
            java.lang.String r3 = "-"
            r6.append(r3)     // Catch: java.lang.Throwable -> L80
            java.lang.String r3 = r6.toString()     // Catch: java.lang.Throwable -> L80
            r10.setRequestProperty(r5, r3)     // Catch: java.lang.Throwable -> L80
        L69:
            java.util.concurrent.atomic.AtomicBoolean r3 = r8.f56607e     // Catch: java.lang.Throwable -> L80
            boolean r3 = r3.get()     // Catch: java.lang.Throwable -> L80
            if (r3 != 0) goto Lc4
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L80
            r8.f56544z = r3     // Catch: java.lang.Throwable -> L80
            java.net.HttpURLConnection r3 = r9.a(r10)     // Catch: java.lang.Throwable -> L80
            com.sdk.a.i r9 = r8.a(r9, r3)     // Catch: java.lang.Throwable -> L80
            goto Lc5
        L80:
            r3 = move-exception
            java.lang.String r4 = r3.toString()
            com.sdk.o.c.c(r4)
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "网络访问异常228："
            r4.append(r5)
            java.lang.String r3 = r3.toString()
            r4.append(r3)
            java.lang.String r3 = r4.toString()
            java.lang.Boolean r4 = r8.f56610h
            com.sdk.o.b.a(r0, r3, r4)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "retryCount---->"
            r3.append(r4)
            int r4 = r8.f56535q
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            java.lang.Boolean r4 = r8.f56610h
            com.sdk.o.b.a(r0, r3, r4)
            int r0 = r8.f56535q
            if (r0 <= 0) goto Lc4
            int r0 = r0 - r2
            r8.f56535q = r0
            r8.b(r9, r10)
        Lc4:
            r9 = 0
        Lc5:
            if (r9 != 0) goto Lce
            com.sdk.a.i r9 = new com.sdk.a.i
            java.lang.String r10 = "网络访问异常"
            r9.<init>(r2, r10, r1)
        Lce:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sdk.a.e.b(com.sdk.a.g, java.net.HttpURLConnection):com.sdk.a.i");
    }

    public final String b() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", 1);
            jSONObject.put("status", 102001);
            jSONObject.put("msg", "选择流量通道失败");
            return jSONObject.toString();
        } catch (JSONException unused) {
            return null;
        }
    }

    public final i<T> a(g<T> gVar, HttpURLConnection httpURLConnection) {
        byte[] bArr;
        if (this.f56607e.get()) {
            return new i<>(1, "网络访问已取消", false);
        }
        try {
            com.sdk.o.c.a(httpURLConnection.getURL().toString(), System.currentTimeMillis() - this.f56544z);
            int responseCode = httpURLConnection.getResponseCode();
            StringBuilder sb = new StringBuilder();
            sb.append("net请求host：");
            sb.append(httpURLConnection.getURL().getHost());
            sb.append("\n net请求path：");
            sb.append(httpURLConnection.getURL().getPath());
            sb.append("\n net请求getheadfields ");
            sb.append(httpURLConnection.getHeaderFields());
            sb.append("\n  net请求码：");
            sb.append(responseCode);
            this.f56610h.booleanValue();
            if (this.f56610h.booleanValue()) {
                f56529k.put(httpURLConnection.getURL().toString(), Long.valueOf(System.currentTimeMillis() - this.f56544z));
                StringBuilder sb2 = new StringBuilder();
                sb2.append("响应返回：code=");
                sb2.append(responseCode);
                sb2.append(";耗时=");
                sb2.append(System.currentTimeMillis() - this.f56544z);
                com.sdk.o.b.b("PriorityAsyncTask", sb2.toString(), this.f56610h);
                StringBuilder sb3 = new StringBuilder();
                sb3.append("ip：ip");
                sb3.append(AppUtils.getLocalIPAddress());
                sb3.append(";=");
                sb3.append(System.currentTimeMillis() - this.f56544z);
                com.sdk.o.b.b("PriorityAsyncTask", sb3.toString(), this.f56610h);
            }
            if (responseCode < 300) {
                this.f56536r = false;
                if (this.f56539u) {
                    this.f56540v = Boolean.valueOf(this.f56540v.booleanValue() && com.sdk.m.a.b(httpURLConnection));
                    new com.sdk.c.a().a(httpURLConnection, this, this.f56538t, this.f56540v.booleanValue(), this.f56541w.booleanValue() ? com.sdk.m.a.a(httpURLConnection) : null);
                }
                if (this.f56542x.booleanValue()) {
                    InputStream inputStream = httpURLConnection.getInputStream();
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr2 = new byte[4096];
                    while (true) {
                        int read = inputStream.read(bArr2);
                        if (read == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr2, 0, read);
                    }
                    byteArrayOutputStream.flush();
                    bArr = byteArrayOutputStream.toByteArray();
                } else {
                    String a4 = new com.sdk.c.c().a(httpURLConnection, this, "UTF-8");
                    d dVar = f56528j;
                    bArr = a4;
                    if (dVar.b(this.f56532n)) {
                        dVar.a(this.f56533o, a4, this.f56530l);
                        bArr = a4;
                    }
                }
                return new i<>(0, bArr, false);
            }
            if (responseCode == 301 || responseCode == 302) {
                String headerField = httpURLConnection.getHeaderField("Location");
                String headerField2 = httpURLConnection.getHeaderField(HttpHeaders.Names.SET_COOKIE);
                String path = httpURLConnection.getURL().getPath();
                if (com.sdk.o.b.b(headerField).booleanValue() && gVar != null) {
                    gVar.f56557f.f56573d = headerField;
                    HttpURLConnection a5 = gVar.a(headerField, com.sdk.m.a.a(headerField));
                    if (com.sdk.o.b.b(headerField2).booleanValue()) {
                        if ("/ctcnet/gctcmc.do".equals(path)) {
                            com.sdk.j.a.a(SDKManager.mContext, "ctc", headerField2);
                            com.sdk.o.b.b("PriorityAsyncTask", "mdb Cookie cache", this.f56610h);
                        }
                        a5.setRequestProperty(HttpHeaders.Names.COOKIE, headerField2);
                    } else {
                        a5.setRequestProperty(HttpHeaders.Names.COOKIE, com.sdk.j.a.c(SDKManager.mContext, "ctc"));
                    }
                    if (a5 == null) {
                        return new i<>(0, b(), false);
                    }
                    gVar.f56557f.a(g.a.GET.f56569l);
                    return b(gVar, a5);
                }
            }
            com.sdk.o.c.c("服务异常 ResponseCode = " + responseCode);
            com.sdk.o.b.a("PriorityAsyncTask", "服务异常 ResponseCode = " + responseCode, this.f56610h);
            return new i<>(0, "服务端数据格式出错", false);
        } catch (Exception e4) {
            com.sdk.o.c.c(e4.toString());
            com.sdk.o.b.a("PriorityAsyncTask", e4.toString(), this.f56610h);
            return new i<>(1, "网络访问异常", false);
        }
    }

    public boolean a(long j4, long j5, boolean z3) {
        if (this.f56531m != null && this.f56534p != a.CANCELLED) {
            if (z3) {
                a(2, Long.valueOf(j4), Long.valueOf(j5));
            } else {
                long uptimeMillis = SystemClock.uptimeMillis();
                long j6 = uptimeMillis - this.f56537s;
                int i2 = this.f56531m.f56633a;
                if (i2 < 200) {
                    i2 = 200;
                }
                if (j6 >= i2) {
                    this.f56537s = uptimeMillis;
                    a(2, Long.valueOf(j4), Long.valueOf(j5));
                }
            }
        }
        return this.f56534p != a.CANCELLED;
    }
}
