package com.papa.sim.statistic.http;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.join.mgps.Util.a2;
import com.papa.sim.statistic.JsonMapper;
import io.netty.handler.codec.http.multipart.HttpPostBodyUtil;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.URLConnection;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Dispatcher;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
/* compiled from: OkHttpClientManager.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: r  reason: collision with root package name */
    private static final String f55458r = "OkHttpClientManager";

    /* renamed from: s  reason: collision with root package name */
    private static b f55459s;

    /* renamed from: a  reason: collision with root package name */
    private OkHttpClient f55460a;

    /* renamed from: b  reason: collision with root package name */
    private Handler f55461b;

    /* renamed from: c  reason: collision with root package name */
    private JsonMapper f55462c;

    /* renamed from: d  reason: collision with root package name */
    private l f55463d = new l();

    /* renamed from: e  reason: collision with root package name */
    private j f55464e = new j();

    /* renamed from: f  reason: collision with root package name */
    private i f55465f = new i();

    /* renamed from: g  reason: collision with root package name */
    private k f55466g = new k();

    /* renamed from: h  reason: collision with root package name */
    private q f55467h = new q();

    /* renamed from: i  reason: collision with root package name */
    private o f55468i = new o();

    /* renamed from: j  reason: collision with root package name */
    String f55469j = "";

    /* renamed from: k  reason: collision with root package name */
    String f55470k = "";

    /* renamed from: l  reason: collision with root package name */
    String f55471l = "";

    /* renamed from: m  reason: collision with root package name */
    String f55472m = "";

    /* renamed from: n  reason: collision with root package name */
    String f55473n = "";

    /* renamed from: o  reason: collision with root package name */
    String f55474o = "";

    /* renamed from: p  reason: collision with root package name */
    String f55475p = "";

    /* renamed from: q  reason: collision with root package name */
    private final p<String> f55476q = new h();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes4.dex */
    public class a implements HostnameVerifier {
        a() {
        }

        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    /* compiled from: OkHttpClientManager.java */
    /* renamed from: com.papa.sim.statistic.http.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0274b implements X509TrustManager {
        C0274b() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes4.dex */
    class c implements HostnameVerifier {
        c() {
        }

        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes4.dex */
    public class d implements CookieJar {

        /* renamed from: a  reason: collision with root package name */
        private final HashMap<HttpUrl, List<Cookie>> f55478a = new HashMap<>();

        d() {
        }

        @Override // okhttp3.CookieJar
        public List<Cookie> loadForRequest(HttpUrl httpUrl) {
            List<Cookie> list = this.f55478a.get(httpUrl);
            return list != null ? list : new ArrayList();
        }

        @Override // okhttp3.CookieJar
        public void saveFromResponse(HttpUrl httpUrl, List<Cookie> list) {
            this.f55478a.put(httpUrl, list);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes4.dex */
    public class e implements Callback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ p f55480a;

        e(p pVar) {
            this.f55480a = pVar;
        }

        public void a(Request request, IOException iOException) {
            b.this.a0(request, iOException, this.f55480a);
        }

        public void b(Response response) {
            try {
                String string = response.body().string();
                p pVar = this.f55480a;
                Type type = pVar.f55518a;
                if (type == String.class) {
                    b.this.b0(string, pVar);
                } else if (type instanceof ParameterizedType) {
                    Class<?>[] C = b.this.C(type);
                    int length = C.length - 1;
                    Class<?>[] clsArr = new Class[length];
                    System.arraycopy(C, 1, clsArr, 0, length);
                    b.this.b0(b.this.f55462c.fromJson(string, b.this.f55462c.createCollectionType(C[0], clsArr)), this.f55480a);
                } else {
                    b.this.b0(b.this.f55462c.fromJson(string, Class.forName(type.toString().replace("class ", ""))), this.f55480a);
                }
            } catch (Exception e4) {
                b.this.a0(response.request(), e4, this.f55480a);
            }
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException iOException) {
            a(call.request(), iOException);
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) throws IOException {
            b(response);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes4.dex */
    public class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ p f55482a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Request f55483b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Exception f55484c;

        f(p pVar, Request request, Exception exc) {
            this.f55482a = pVar;
            this.f55483b = request;
            this.f55484c = exc;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f55482a.d(this.f55483b, this.f55484c);
            this.f55482a.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes4.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ p f55486a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f55487b;

        g(p pVar, Object obj) {
            this.f55486a = pVar;
            this.f55487b = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f55486a.e(this.f55487b);
            this.f55486a.b();
        }
    }

    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes4.dex */
    class h extends p<String> {
        h() {
        }

        @Override // com.papa.sim.statistic.http.b.p
        public void d(Request request, Exception exc) {
        }

        @Override // com.papa.sim.statistic.http.b.p
        /* renamed from: f */
        public void e(String str) {
        }
    }

    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes4.dex */
    public class i {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: OkHttpClientManager.java */
        /* loaded from: classes4.dex */
        public class a implements Callback {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ImageView f55491a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f55492b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f55493c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ Object f55494d;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: OkHttpClientManager.java */
            /* renamed from: com.papa.sim.statistic.http.b$i$a$a  reason: collision with other inner class name */
            /* loaded from: classes4.dex */
            public class RunnableC0275a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Bitmap f55496a;

                RunnableC0275a(Bitmap bitmap) {
                    this.f55496a = bitmap;
                }

                @Override // java.lang.Runnable
                public void run() {
                    a.this.f55491a.setImageBitmap(this.f55496a);
                }
            }

            a(ImageView imageView, int i2, String str, Object obj) {
                this.f55491a = imageView;
                this.f55492b = i2;
                this.f55493c = str;
                this.f55494d = obj;
            }

            public void a(Request request, IOException iOException) {
                i.this.e(this.f55491a, this.f55492b);
            }

            public void b(Response response) {
                Throwable th;
                InputStream inputStream;
                InputStream inputStream2 = null;
                try {
                    try {
                        try {
                            inputStream = response.body().byteStream();
                        } catch (Exception unused) {
                        }
                    } catch (Throwable th2) {
                        InputStream inputStream3 = inputStream2;
                        th = th2;
                        inputStream = inputStream3;
                    }
                    try {
                        int a4 = m.a(m.d(inputStream), m.f(this.f55491a));
                        try {
                            inputStream.reset();
                        } catch (IOException unused2) {
                            inputStream = b.this.f55466g.c(this.f55493c, this.f55494d).body().byteStream();
                        }
                        BitmapFactory.Options options = new BitmapFactory.Options();
                        options.inJustDecodeBounds = false;
                        options.inSampleSize = a4;
                        b.this.f55461b.post(new RunnableC0275a(BitmapFactory.decodeStream(inputStream, null, options)));
                    } catch (Exception unused3) {
                        inputStream2 = inputStream;
                        i.this.e(this.f55491a, this.f55492b);
                        if (inputStream2 != null) {
                            inputStream2.close();
                        }
                        return;
                    } catch (Throwable th3) {
                        th = th3;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                        throw th;
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }

            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException iOException) {
                a(call.request(), iOException);
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) throws IOException {
                b(response);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: OkHttpClientManager.java */
        /* renamed from: com.papa.sim.statistic.http.b$i$b  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public class RunnableC0276b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ImageView f55498a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f55499b;

            RunnableC0276b(ImageView imageView, int i2) {
                this.f55498a = imageView;
                this.f55499b = i2;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f55498a.setImageResource(this.f55499b);
            }
        }

        public i() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e(ImageView imageView, int i2) {
            b.this.f55461b.post(new RunnableC0276b(imageView, i2));
        }

        public void b(ImageView imageView, String str) {
            c(imageView, str, -1, null);
        }

        public void c(ImageView imageView, String str, int i2, Object obj) {
            b.this.f55460a.newCall(new Request.Builder().url(str).build()).enqueue(new a(imageView, i2, str, obj));
        }

        public void d(ImageView imageView, String str, Object obj) {
            c(imageView, str, -1, obj);
        }
    }

    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes4.dex */
    public class j {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: OkHttpClientManager.java */
        /* loaded from: classes4.dex */
        public class a implements Callback {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ p f55502a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f55503b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f55504c;

            a(p pVar, String str, String str2) {
                this.f55502a = pVar;
                this.f55503b = str;
                this.f55504c = str2;
            }

            public void a(Request request, IOException iOException) {
                b.this.a0(request, iOException, this.f55502a);
            }

            /* JADX WARN: Removed duplicated region for block: B:50:0x0087 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:54:0x0080 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void b(okhttp3.Response r8) {
                /*
                    r7 = this;
                    r0 = 2048(0x800, float:2.87E-42)
                    byte[] r0 = new byte[r0]
                    r1 = 0
                    okhttp3.ResponseBody r2 = r8.body()     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L63
                    java.io.InputStream r2 = r2.byteStream()     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L63
                    java.io.File r3 = new java.io.File     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5c
                    java.lang.String r4 = r7.f55503b     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5c
                    r3.<init>(r4)     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5c
                    boolean r4 = r3.exists()     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5c
                    if (r4 != 0) goto L1d
                    r3.mkdirs()     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5c
                L1d:
                    java.io.File r4 = new java.io.File     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5c
                    com.papa.sim.statistic.http.b$j r5 = com.papa.sim.statistic.http.b.j.this     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5c
                    com.papa.sim.statistic.http.b r5 = com.papa.sim.statistic.http.b.this     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5c
                    java.lang.String r6 = r7.f55504c     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5c
                    java.lang.String r5 = com.papa.sim.statistic.http.b.j(r5, r6)     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5c
                    r4.<init>(r3, r5)     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5c
                    java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5c
                    r3.<init>(r4)     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5c
                L31:
                    int r1 = r2.read(r0)     // Catch: java.lang.Throwable -> L54 java.io.IOException -> L56
                    r5 = -1
                    if (r1 == r5) goto L3d
                    r5 = 0
                    r3.write(r0, r5, r1)     // Catch: java.lang.Throwable -> L54 java.io.IOException -> L56
                    goto L31
                L3d:
                    r3.flush()     // Catch: java.lang.Throwable -> L54 java.io.IOException -> L56
                    com.papa.sim.statistic.http.b$j r0 = com.papa.sim.statistic.http.b.j.this     // Catch: java.lang.Throwable -> L54 java.io.IOException -> L56
                    com.papa.sim.statistic.http.b r0 = com.papa.sim.statistic.http.b.this     // Catch: java.lang.Throwable -> L54 java.io.IOException -> L56
                    java.lang.String r1 = r4.getAbsolutePath()     // Catch: java.lang.Throwable -> L54 java.io.IOException -> L56
                    com.papa.sim.statistic.http.b$p r4 = r7.f55502a     // Catch: java.lang.Throwable -> L54 java.io.IOException -> L56
                    com.papa.sim.statistic.http.b.g(r0, r1, r4)     // Catch: java.lang.Throwable -> L54 java.io.IOException -> L56
                    r2.close()     // Catch: java.io.IOException -> L50
                L50:
                    r3.close()     // Catch: java.io.IOException -> L7c
                    goto L7c
                L54:
                    r8 = move-exception
                    goto L5a
                L56:
                    r0 = move-exception
                    goto L5e
                L58:
                    r8 = move-exception
                    r3 = r1
                L5a:
                    r1 = r2
                    goto L7e
                L5c:
                    r0 = move-exception
                    r3 = r1
                L5e:
                    r1 = r2
                    goto L65
                L60:
                    r8 = move-exception
                    r3 = r1
                    goto L7e
                L63:
                    r0 = move-exception
                    r3 = r1
                L65:
                    com.papa.sim.statistic.http.b$j r2 = com.papa.sim.statistic.http.b.j.this     // Catch: java.lang.Throwable -> L7d
                    com.papa.sim.statistic.http.b r2 = com.papa.sim.statistic.http.b.this     // Catch: java.lang.Throwable -> L7d
                    okhttp3.Request r8 = r8.request()     // Catch: java.lang.Throwable -> L7d
                    com.papa.sim.statistic.http.b$p r4 = r7.f55502a     // Catch: java.lang.Throwable -> L7d
                    com.papa.sim.statistic.http.b.f(r2, r8, r0, r4)     // Catch: java.lang.Throwable -> L7d
                    if (r1 == 0) goto L79
                    r1.close()     // Catch: java.io.IOException -> L78
                    goto L79
                L78:
                L79:
                    if (r3 == 0) goto L7c
                    goto L50
                L7c:
                    return
                L7d:
                    r8 = move-exception
                L7e:
                    if (r1 == 0) goto L85
                    r1.close()     // Catch: java.io.IOException -> L84
                    goto L85
                L84:
                L85:
                    if (r3 == 0) goto L8a
                    r3.close()     // Catch: java.io.IOException -> L8a
                L8a:
                    goto L8c
                L8b:
                    throw r8
                L8c:
                    goto L8b
                */
                throw new UnsupportedOperationException("Method not decompiled: com.papa.sim.statistic.http.b.j.a.b(okhttp3.Response):void");
            }

            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException iOException) {
                a(call.request(), iOException);
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) throws IOException {
                b(response);
            }
        }

        public j() {
        }

        public void a(String str, String str2, p pVar) {
            b(str, str2, pVar, null);
        }

        public void b(String str, String str2, p pVar, Object obj) {
            b.this.f55460a.newCall(new Request.Builder().url(str).tag(obj).build()).enqueue(new a(pVar, str2, str));
        }
    }

    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes4.dex */
    public class k {
        public k() {
        }

        private Request a(String str, Object obj) {
            Request.Builder url = new Request.Builder().url(str);
            if (obj != null) {
                url.tag(obj);
            }
            return url.build();
        }

        public Response b(String str) throws IOException {
            return c(str, null);
        }

        public Response c(String str, Object obj) throws IOException {
            return d(a(str, obj));
        }

        public Response d(Request request) throws IOException {
            return b.this.f55460a.newCall(request).execute();
        }

        public String e(String str) throws IOException {
            return f(str, null);
        }

        public String f(String str, Object obj) throws IOException {
            return c(str, obj).body().string();
        }

        public void g(String str, p pVar) {
            h(str, pVar, null);
        }

        public void h(String str, p pVar, Object obj) {
            i(a(str, obj), pVar);
        }

        public void i(Request request, p pVar) {
            b.this.w(pVar, request);
        }
    }

    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes4.dex */
    public class l {

        /* compiled from: OkHttpClientManager.java */
        /* loaded from: classes4.dex */
        public class a implements X509TrustManager {

            /* renamed from: a  reason: collision with root package name */
            private X509TrustManager f55508a;

            /* renamed from: b  reason: collision with root package name */
            private X509TrustManager f55509b;

            public a(X509TrustManager x509TrustManager) throws NoSuchAlgorithmException, KeyStoreException {
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                trustManagerFactory.init((KeyStore) null);
                this.f55508a = l.this.b(trustManagerFactory.getTrustManagers());
                this.f55509b = x509TrustManager;
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                try {
                    this.f55508a.checkServerTrusted(x509CertificateArr, str);
                } catch (CertificateException unused) {
                    this.f55509b.checkServerTrusted(x509CertificateArr, str);
                }
            }

            @Override // javax.net.ssl.X509TrustManager
            public X509Certificate[] getAcceptedIssuers() {
                return new X509Certificate[0];
            }
        }

        public l() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public X509TrustManager b(TrustManager[] trustManagerArr) {
            for (TrustManager trustManager : trustManagerArr) {
                if (trustManager instanceof X509TrustManager) {
                    return (X509TrustManager) trustManager;
                }
            }
            return null;
        }

        public KeyManager[] c(InputStream inputStream, String str) {
            if (inputStream != null && str != null) {
                try {
                    KeyStore keyStore = KeyStore.getInstance("BKS");
                    keyStore.load(inputStream, str.toCharArray());
                    KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
                    keyManagerFactory.init(keyStore, str.toCharArray());
                    return keyManagerFactory.getKeyManagers();
                } catch (IOException e4) {
                    e4.printStackTrace();
                } catch (KeyStoreException e5) {
                    e5.printStackTrace();
                } catch (NoSuchAlgorithmException e6) {
                    e6.printStackTrace();
                } catch (UnrecoverableKeyException e7) {
                    e7.printStackTrace();
                } catch (CertificateException e8) {
                    e8.printStackTrace();
                } catch (Exception e9) {
                    e9.printStackTrace();
                }
            }
            return null;
        }

        public TrustManager[] d(InputStream... inputStreamArr) {
            if (inputStreamArr != null && inputStreamArr.length > 0) {
                try {
                    CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                    KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
                    keyStore.load(null);
                    int length = inputStreamArr.length;
                    int i2 = 0;
                    int i4 = 0;
                    while (i2 < length) {
                        InputStream inputStream = inputStreamArr[i2];
                        int i5 = i4 + 1;
                        keyStore.setCertificateEntry(Integer.toString(i4), certificateFactory.generateCertificate(inputStream));
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException unused) {
                            }
                        }
                        i2++;
                        i4 = i5;
                    }
                    TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                    trustManagerFactory.init(keyStore);
                    return trustManagerFactory.getTrustManagers();
                } catch (KeyStoreException e4) {
                    e4.printStackTrace();
                } catch (NoSuchAlgorithmException e5) {
                    e5.printStackTrace();
                } catch (CertificateException e6) {
                    e6.printStackTrace();
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
            }
            return null;
        }

        public void e(InputStream... inputStreamArr) {
            f(inputStreamArr, null, null);
        }

        public void f(InputStream[] inputStreamArr, InputStream inputStream, String str) {
            try {
                TrustManager[] d4 = d(inputStreamArr);
                KeyManager[] c4 = c(inputStream, str);
                SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
                sSLContext.init(c4, new TrustManager[]{new a(b(d4))}, new SecureRandom());
                b.this.f55460a.newBuilder().sslSocketFactory(sSLContext.getSocketFactory());
            } catch (KeyManagementException e4) {
                e4.printStackTrace();
            } catch (KeyStoreException e5) {
                e5.printStackTrace();
            } catch (NoSuchAlgorithmException e6) {
                e6.printStackTrace();
            }
        }
    }

    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes4.dex */
    public static class m {

        /* compiled from: OkHttpClientManager.java */
        /* loaded from: classes4.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            int f55511a;

            /* renamed from: b  reason: collision with root package name */
            int f55512b;

            public a() {
            }

            public String toString() {
                return "ImageSize{width=" + this.f55511a + ", height=" + this.f55512b + '}';
            }

            public a(int i2, int i4) {
                this.f55511a = i2;
                this.f55512b = i4;
            }
        }

        public static int a(a aVar, a aVar2) {
            int i2 = aVar.f55511a;
            int i4 = aVar.f55512b;
            int i5 = aVar2.f55511a;
            int i6 = aVar2.f55512b;
            if (i2 <= i5 || i4 <= i6) {
                return 1;
            }
            return Math.max(Math.round(i2 / i5), Math.round(i4 / i6));
        }

        private static int b(View view) {
            int i2 = 0;
            if (view == null) {
                return 0;
            }
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams != null && layoutParams.height != -2) {
                i2 = view.getWidth();
            }
            if (i2 <= 0 && layoutParams != null) {
                i2 = layoutParams.height;
            }
            if (i2 <= 0) {
                i2 = e(view, "mMaxHeight");
            }
            return i2 <= 0 ? view.getContext().getResources().getDisplayMetrics().heightPixels : i2;
        }

        private static int c(View view) {
            int i2 = 0;
            if (view == null) {
                return 0;
            }
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams != null && layoutParams.width != -2) {
                i2 = view.getWidth();
            }
            if (i2 <= 0 && layoutParams != null) {
                i2 = layoutParams.width;
            }
            if (i2 <= 0) {
                i2 = e(view, "mMaxWidth");
            }
            return i2 <= 0 ? view.getContext().getResources().getDisplayMetrics().widthPixels : i2;
        }

        public static a d(InputStream inputStream) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(inputStream, null, options);
            return new a(options.outWidth, options.outHeight);
        }

        private static int e(Object obj, String str) {
            try {
                Field declaredField = ImageView.class.getDeclaredField(str);
                declaredField.setAccessible(true);
                int i2 = declaredField.getInt(obj);
                if (i2 <= 0 || i2 >= Integer.MAX_VALUE) {
                    return 0;
                }
                return i2;
            } catch (Exception unused) {
                return 0;
            }
        }

        public static a f(View view) {
            a aVar = new a();
            aVar.f55511a = c(view);
            aVar.f55512b = b(view);
            return aVar;
        }
    }

    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes4.dex */
    public static class n {

        /* renamed from: a  reason: collision with root package name */
        String f55513a;

        /* renamed from: b  reason: collision with root package name */
        String f55514b;

        public n() {
        }

        public n(String str, String str2) {
            this.f55513a = str;
            this.f55514b = str2;
        }
    }

    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes4.dex */
    public class o {

        /* renamed from: a  reason: collision with root package name */
        private final MediaType f55515a = MediaType.parse("application/octet-stream;charset=utf-8");

        /* renamed from: b  reason: collision with root package name */
        private final MediaType f55516b = MediaType.parse("text/plain;charset=utf-8");

        public o() {
        }

        private Request a(String str, RequestBody requestBody, Object obj) {
            Request.Builder post = new Request.Builder().header("wufankey", b.this.P()).header("wf-d", b.this.L()).header("wf-a", b.this.J()).header("wf-ad", b.this.K()).header("wf-m", b.this.N()).header("wf-i", b.this.M()).header("wf-pm", b.this.O()).url(str).post(requestBody);
            if (obj != null) {
                post.tag(obj);
            }
            return post.build();
        }

        public Response b(String str, File file) throws IOException {
            return c(str, file, null);
        }

        public Response c(String str, File file, Object obj) throws IOException {
            return b.this.f55460a.newCall(a(str, RequestBody.create(this.f55515a, file), obj)).execute();
        }

        public Response d(String str, String str2) throws IOException {
            return e(str, str2, null);
        }

        public Response e(String str, String str2, Object obj) throws IOException {
            return b.this.f55460a.newCall(a(str, RequestBody.create(this.f55516b, str2), obj)).execute();
        }

        public Response f(String str, byte[] bArr) throws IOException {
            return g(str, bArr, null);
        }

        public Response g(String str, byte[] bArr, Object obj) throws IOException {
            return b.this.f55460a.newCall(a(str, RequestBody.create(this.f55515a, bArr), obj)).execute();
        }

        public Response h(String str, n[] nVarArr) throws IOException {
            return i(str, nVarArr, null);
        }

        public Response i(String str, n[] nVarArr, Object obj) throws IOException {
            return b.this.f55460a.newCall(b.this.s(str, nVarArr, obj)).execute();
        }

        public String j(String str, n[] nVarArr) throws IOException {
            return k(str, nVarArr, null);
        }

        public String k(String str, n[] nVarArr, Object obj) throws IOException {
            return i(str, nVarArr, obj).body().string();
        }

        public void l(String str, File file, p pVar) {
            m(str, file, pVar, null);
        }

        public void m(String str, File file, p pVar, Object obj) {
            v(str, file, MediaType.parse("application/octet-stream;charset=utf-8"), pVar, obj);
        }

        public void n(String str, String str2, p pVar) {
            o(str, str2, pVar, null);
        }

        public void o(String str, String str2, p pVar, Object obj) {
            w(str, str2, MediaType.parse("application/json;charset=utf-8"), pVar, obj);
        }

        public void p(String str, Map<String, String> map, p pVar) {
            q(str, map, pVar, null);
        }

        public void q(String str, Map<String, String> map, p pVar, Object obj) {
            u(str, b.this.T(map), pVar, obj);
        }

        public void r(String str, byte[] bArr, p pVar) {
            s(str, bArr, pVar, null);
        }

        public void s(String str, byte[] bArr, p pVar, Object obj) {
            x(str, bArr, MediaType.parse("application/octet-stream;charset=utf-8"), pVar, obj);
        }

        public void t(String str, n[] nVarArr, p pVar) {
            u(str, nVarArr, pVar, null);
        }

        public void u(String str, n[] nVarArr, p pVar, Object obj) {
            b.this.w(pVar, b.this.s(str, nVarArr, obj));
        }

        public void v(String str, File file, MediaType mediaType, p pVar, Object obj) {
            b.this.w(pVar, a(str, RequestBody.create(mediaType, file), obj));
        }

        public void w(String str, String str2, MediaType mediaType, p pVar, Object obj) {
            b.this.w(pVar, a(str, RequestBody.create(mediaType, str2), obj));
        }

        public void x(String str, byte[] bArr, MediaType mediaType, p pVar, Object obj) {
            b.this.w(pVar, a(str, RequestBody.create(mediaType, bArr), obj));
        }
    }

    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes4.dex */
    public static abstract class p<T> {

        /* renamed from: a  reason: collision with root package name */
        Type f55518a = a(getClass());

        static Type a(Class<?> cls) {
            Type genericSuperclass = cls.getGenericSuperclass();
            if (!(genericSuperclass instanceof Class)) {
                return ((ParameterizedType) genericSuperclass).getActualTypeArguments()[0];
            }
            throw new RuntimeException("Missing type parameter.");
        }

        public void b() {
        }

        public void c(Request request) {
        }

        public abstract void d(Request request, Exception exc);

        public abstract void e(T t3);
    }

    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes4.dex */
    public class q {
        public q() {
        }

        private Request a(String str, File[] fileArr, String[] strArr, n[] nVarArr, Object obj) {
            n[] m02 = b.this.m0(nVarArr);
            MultipartBody.Builder type = new MultipartBody.Builder().setType(MultipartBody.FORM);
            for (n nVar : m02) {
                type.addPart(Headers.of("Content-Disposition", "form-data; name=\"" + nVar.f55513a + m.a.f72569g), RequestBody.create((MediaType) null, nVar.f55514b));
            }
            if (fileArr != null) {
                for (int i2 = 0; i2 < fileArr.length; i2++) {
                    File file = fileArr[i2];
                    String name = file.getName();
                    type.addPart(Headers.of("Content-Disposition", "form-data; name=\"" + strArr[i2] + "\"; filename=\"" + name + m.a.f72569g), RequestBody.create(MediaType.parse(b.this.Q(name)), file));
                }
            }
            return new Request.Builder().url(str).post(type.build()).tag(obj).build();
        }

        public Response b(String str, String str2, File file, Object obj) throws IOException {
            return d(str, new String[]{str2}, new File[]{file}, null, obj);
        }

        public Response c(String str, String str2, File file, n[] nVarArr, Object obj) throws IOException {
            return d(str, new String[]{str2}, new File[]{file}, nVarArr, obj);
        }

        public Response d(String str, String[] strArr, File[] fileArr, n[] nVarArr, Object obj) throws IOException {
            return b.this.f55460a.newCall(a(str, fileArr, strArr, nVarArr, obj)).execute();
        }

        public void e(String str, String str2, File file, p pVar, Object obj) throws IOException {
            g(str, new String[]{str2}, new File[]{file}, null, pVar, obj);
        }

        public void f(String str, String str2, File file, n[] nVarArr, p pVar, Object obj) {
            g(str, new String[]{str2}, new File[]{file}, nVarArr, pVar, obj);
        }

        public void g(String str, String[] strArr, File[] fileArr, n[] nVarArr, p pVar, Object obj) {
            b.this.w(pVar, a(str, fileArr, strArr, nVarArr, obj));
        }
    }

    private b() {
        S();
        this.f55461b = new Handler(Looper.getMainLooper());
        this.f55462c = JsonMapper.e();
    }

    public static i A() {
        return G().b();
    }

    public static j B() {
        return G().c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Class<?>[] C(Type type) {
        Class<?>[] clsArr = new Class[1];
        try {
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                Type type2 = parameterizedType.getActualTypeArguments()[0];
                String obj = parameterizedType.getRawType().toString();
                if (obj.startsWith("class ")) {
                    obj = obj.replace("class ", "");
                } else if (obj.startsWith("interface ")) {
                    obj = obj.replace("interface ", "");
                }
                clsArr[0] = Class.forName(obj);
                return v(clsArr, C(type2));
            }
            String obj2 = type.toString();
            if (obj2.startsWith("class ")) {
                obj2 = obj2.replace("class ", "");
            } else if (obj2.startsWith("interface ")) {
                obj2 = obj2.replace("interface ", "");
            }
            clsArr[0] = Class.forName(obj2);
            return clsArr;
        } catch (ClassNotFoundException e4) {
            e4.printStackTrace();
            return clsArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String D(String str) {
        int lastIndexOf = str.lastIndexOf(net.lingala.zip4j.util.e.F0);
        return lastIndexOf < 0 ? str : str.substring(lastIndexOf + 1, str.length());
    }

    public static l F() {
        return G().d();
    }

    public static b G() {
        if (f55459s == null) {
            synchronized (b.class) {
                if (f55459s == null) {
                    f55459s = new b();
                }
            }
        }
        return f55459s;
    }

    public static q I() {
        return G().e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String Q(String str) {
        String contentTypeFor = URLConnection.getFileNameMap().getContentTypeFor(str);
        return contentTypeFor == null ? HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE : contentTypeFor;
    }

    private void R() {
    }

    private void S() {
        OkHttpClient.Builder a4 = a2.a(c0(new OkHttpClient.Builder()));
        a4.hostnameVerifier(new a());
        this.f55460a = a4.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public n[] T(Map<String, String> map) {
        int i2 = 0;
        if (map == null) {
            return new n[0];
        }
        n[] nVarArr = new n[map.size()];
        for (Map.Entry<String, String> entry : map.entrySet()) {
            nVarArr[i2] = new n(entry.getKey(), entry.getValue());
            i2++;
        }
        return nVarArr;
    }

    public static void U(String str, String str2, p pVar) {
        G().H().o(str, str2, pVar, null);
    }

    public static void V(String str, String str2, p pVar, Object obj) {
        G().H().o(str, str2, pVar, obj);
    }

    public static void W(String str, Map<String, String> map, p pVar) {
        G().H().q(str, map, pVar, null);
    }

    public static void X(String str, Map<String, String> map, p pVar, Object obj) {
        G().H().q(str, map, pVar, obj);
    }

    public static void Y(String str, n[] nVarArr, p pVar) {
        G().H().u(str, nVarArr, pVar, null);
    }

    public static void Z(String str, n[] nVarArr, p pVar, Object obj) {
        G().H().u(str, nVarArr, pVar, obj);
    }

    private void a(Object obj) {
        Dispatcher dispatcher = this.f55460a.dispatcher();
        synchronized (dispatcher) {
            for (Call call : dispatcher.queuedCalls()) {
                if (obj.equals(call.request().tag())) {
                    call.cancel();
                }
            }
            for (Call call2 : dispatcher.runningCalls()) {
                if (obj.equals(call2.request().tag())) {
                    call2.cancel();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0(Request request, Exception exc, p pVar) {
        this.f55461b.post(new f(pVar, request, exc));
    }

    private i b() {
        return this.f55465f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b0(Object obj, p pVar) {
        this.f55461b.post(new g(pVar, obj));
    }

    private j c() {
        return this.f55464e;
    }

    private OkHttpClient.Builder c0(OkHttpClient.Builder builder) {
        return builder.cookieJar(new d());
    }

    private l d() {
        return this.f55463d;
    }

    private q e() {
        return this.f55467h;
    }

    public static OkHttpClient e0() throws Exception {
        C0274b c0274b = new C0274b();
        SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.SSL);
        sSLContext.init(null, new TrustManager[]{c0274b}, new SecureRandom());
        return new OkHttpClient.Builder().sslSocketFactory(sSLContext.getSocketFactory(), c0274b).hostnameVerifier(new c()).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public n[] m0(n[] nVarArr) {
        return nVarArr == null ? new n[0] : nVarArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Request s(String str, n[] nVarArr, Object obj) {
        if (nVarArr == null) {
            nVarArr = new n[0];
        }
        FormBody.Builder builder = new FormBody.Builder();
        for (n nVar : nVarArr) {
            try {
                builder.add(nVar.f55513a, nVar.f55514b);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        FormBody build = builder.build();
        Request.Builder builder2 = new Request.Builder();
        builder2.url(str).post(build);
        if (obj != null) {
            builder2.tag(obj);
        }
        return builder2.build();
    }

    public static void t(Object obj) {
        G().a(obj);
    }

    private Class<?>[] v(Class<?>[] clsArr, Class<?>[] clsArr2) {
        Class<?>[] clsArr3 = new Class[clsArr.length + clsArr2.length];
        System.arraycopy(clsArr, 0, clsArr3, 0, clsArr.length);
        System.arraycopy(clsArr2, 0, clsArr3, clsArr.length, clsArr2.length);
        return clsArr3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(p pVar, Request request) {
        if (pVar == null) {
            pVar = this.f55476q;
        }
        pVar.c(request);
        this.f55460a.newCall(request).enqueue(new e(pVar));
    }

    public static void x(String str, p pVar) {
        G().E().h(str, pVar, null);
    }

    public static void y(String str, p pVar, Object obj) {
        G().E().h(str, pVar, obj);
    }

    public static OkHttpClient z() {
        return G().u();
    }

    public k E() {
        return this.f55466g;
    }

    public o H() {
        return this.f55468i;
    }

    public String J() {
        String str = this.f55471l;
        return str == null ? "" : str;
    }

    public String K() {
        String str = this.f55472m;
        return str == null ? "" : str;
    }

    public String L() {
        String str = this.f55470k;
        return str == null ? "" : str;
    }

    public String M() {
        String str = this.f55474o;
        return str == null ? "" : str;
    }

    public String N() {
        String str = this.f55473n;
        return str == null ? "" : str;
    }

    public String O() {
        String str = this.f55475p;
        return str == null ? "" : str;
    }

    public String P() {
        String str = this.f55469j;
        return str == null ? "" : str;
    }

    public void d0(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.f55469j = str;
        this.f55470k = str2;
        this.f55471l = str3;
        this.f55472m = str4;
        this.f55473n = str5;
        this.f55474o = str6;
        this.f55475p = str7;
    }

    public void f0(String str) {
        this.f55471l = str;
    }

    public void g0(String str) {
        this.f55472m = str;
    }

    public void h0(String str) {
        this.f55470k = str;
    }

    public void i0(String str) {
        this.f55474o = str;
    }

    public void j0(String str) {
        this.f55473n = str;
    }

    public void k0(String str) {
        this.f55475p = str;
    }

    public void l0(String str) {
        this.f55469j = str;
    }

    public OkHttpClient u() {
        return this.f55460a;
    }
}
