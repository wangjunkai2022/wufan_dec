package com.join.android.app.common.http;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
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
/* loaded from: classes.dex */
public class d {

    /* renamed from: k  reason: collision with root package name */
    private static final String f17007k = "OkHttpClientManager";

    /* renamed from: l  reason: collision with root package name */
    private static d f17008l;

    /* renamed from: a  reason: collision with root package name */
    private OkHttpClient f17009a;

    /* renamed from: b  reason: collision with root package name */
    private Handler f17010b;

    /* renamed from: c  reason: collision with root package name */
    private JsonMapper f17011c;

    /* renamed from: d  reason: collision with root package name */
    private l f17012d = new l();

    /* renamed from: e  reason: collision with root package name */
    private j f17013e = new j();

    /* renamed from: f  reason: collision with root package name */
    private i f17014f = new i();

    /* renamed from: g  reason: collision with root package name */
    private k f17015g = new k();

    /* renamed from: h  reason: collision with root package name */
    private q f17016h = new q();

    /* renamed from: i  reason: collision with root package name */
    private o f17017i = new o();

    /* renamed from: j  reason: collision with root package name */
    private final p<String> f17018j = new h();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes.dex */
    public class a implements HostnameVerifier {
        a() {
        }

        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes.dex */
    class b implements X509TrustManager {
        b() {
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
    /* loaded from: classes.dex */
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
    /* renamed from: com.join.android.app.common.http.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0128d implements CookieJar {

        /* renamed from: a  reason: collision with root package name */
        private final HashMap<HttpUrl, List<Cookie>> f17020a = new HashMap<>();

        C0128d() {
        }

        @Override // okhttp3.CookieJar
        public List<Cookie> loadForRequest(HttpUrl httpUrl) {
            List<Cookie> list = this.f17020a.get(httpUrl);
            return list != null ? list : new ArrayList();
        }

        @Override // okhttp3.CookieJar
        public void saveFromResponse(HttpUrl httpUrl, List<Cookie> list) {
            this.f17020a.put(httpUrl, list);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes.dex */
    public class e implements Callback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ p f17022a;

        e(p pVar) {
            this.f17022a = pVar;
        }

        public void a(Request request, IOException iOException) {
            d.this.T(request, iOException, this.f17022a);
        }

        public void b(Response response) {
            try {
                String string = response.body().string();
                p pVar = this.f17022a;
                Type type = pVar.f17060a;
                if (type == String.class) {
                    d.this.U(string, pVar);
                } else if (type instanceof ParameterizedType) {
                    Class<?>[] C = d.this.C(type);
                    int length = C.length - 1;
                    Class<?>[] clsArr = new Class[length];
                    System.arraycopy(C, 1, clsArr, 0, length);
                    d.this.U(d.this.f17011c.fromJson(string, d.this.f17011c.createCollectionType(C[0], clsArr)), this.f17022a);
                } else {
                    d.this.U(d.this.f17011c.fromJson(string, Class.forName(type.toString().replace("class ", ""))), this.f17022a);
                }
            } catch (Exception e4) {
                d.this.T(response.request(), e4, this.f17022a);
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
    /* loaded from: classes.dex */
    public class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ p f17024a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Request f17025b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Exception f17026c;

        f(p pVar, Request request, Exception exc) {
            this.f17024a = pVar;
            this.f17025b = request;
            this.f17026c = exc;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f17024a.d(this.f17025b, this.f17026c);
            this.f17024a.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ p f17028a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f17029b;

        g(p pVar, Object obj) {
            this.f17028a = pVar;
            this.f17029b = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f17028a.e(this.f17029b);
            this.f17028a.b();
        }
    }

    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes.dex */
    class h extends p<String> {
        h() {
        }

        @Override // com.join.android.app.common.http.d.p
        public void d(Request request, Exception exc) {
        }

        @Override // com.join.android.app.common.http.d.p
        /* renamed from: f */
        public void e(String str) {
        }
    }

    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes.dex */
    public class i {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: OkHttpClientManager.java */
        /* loaded from: classes.dex */
        public class a implements Callback {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ImageView f17033a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f17034b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f17035c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ Object f17036d;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: OkHttpClientManager.java */
            /* renamed from: com.join.android.app.common.http.d$i$a$a  reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public class RunnableC0129a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Bitmap f17038a;

                RunnableC0129a(Bitmap bitmap) {
                    this.f17038a = bitmap;
                }

                @Override // java.lang.Runnable
                public void run() {
                    a.this.f17033a.setImageBitmap(this.f17038a);
                }
            }

            a(ImageView imageView, int i2, String str, Object obj) {
                this.f17033a = imageView;
                this.f17034b = i2;
                this.f17035c = str;
                this.f17036d = obj;
            }

            public void a(Request request, IOException iOException) {
                i.this.e(this.f17033a, this.f17034b);
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
                        int a4 = m.a(m.d(inputStream), m.f(this.f17033a));
                        try {
                            inputStream.reset();
                        } catch (IOException unused2) {
                            inputStream = d.this.f17015g.c(this.f17035c, this.f17036d).body().byteStream();
                        }
                        BitmapFactory.Options options = new BitmapFactory.Options();
                        options.inJustDecodeBounds = false;
                        options.inSampleSize = a4;
                        d.this.f17010b.post(new RunnableC0129a(BitmapFactory.decodeStream(inputStream, null, options)));
                    } catch (Exception unused3) {
                        inputStream2 = inputStream;
                        i.this.e(this.f17033a, this.f17034b);
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
        /* loaded from: classes.dex */
        public class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ImageView f17040a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f17041b;

            b(ImageView imageView, int i2) {
                this.f17040a = imageView;
                this.f17041b = i2;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f17040a.setImageResource(this.f17041b);
            }
        }

        public i() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e(ImageView imageView, int i2) {
            d.this.f17010b.post(new b(imageView, i2));
        }

        public void b(ImageView imageView, String str) {
            c(imageView, str, -1, null);
        }

        public void c(ImageView imageView, String str, int i2, Object obj) {
            d.this.f17009a.newCall(new Request.Builder().url(str).build()).enqueue(new a(imageView, i2, str, obj));
        }

        public void d(ImageView imageView, String str, Object obj) {
            c(imageView, str, -1, obj);
        }
    }

    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes.dex */
    public class j {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: OkHttpClientManager.java */
        /* loaded from: classes.dex */
        public class a implements Callback {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ p f17044a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f17045b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f17046c;

            a(p pVar, String str, String str2) {
                this.f17044a = pVar;
                this.f17045b = str;
                this.f17046c = str2;
            }

            public void a(Request request, IOException iOException) {
                d.this.T(request, iOException, this.f17044a);
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
                    java.lang.String r4 = r7.f17045b     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5c
                    r3.<init>(r4)     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5c
                    boolean r4 = r3.exists()     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5c
                    if (r4 != 0) goto L1d
                    r3.mkdirs()     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5c
                L1d:
                    java.io.File r4 = new java.io.File     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5c
                    com.join.android.app.common.http.d$j r5 = com.join.android.app.common.http.d.j.this     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5c
                    com.join.android.app.common.http.d r5 = com.join.android.app.common.http.d.this     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5c
                    java.lang.String r6 = r7.f17046c     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5c
                    java.lang.String r5 = com.join.android.app.common.http.d.j(r5, r6)     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5c
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
                    com.join.android.app.common.http.d$j r0 = com.join.android.app.common.http.d.j.this     // Catch: java.lang.Throwable -> L54 java.io.IOException -> L56
                    com.join.android.app.common.http.d r0 = com.join.android.app.common.http.d.this     // Catch: java.lang.Throwable -> L54 java.io.IOException -> L56
                    java.lang.String r1 = r4.getAbsolutePath()     // Catch: java.lang.Throwable -> L54 java.io.IOException -> L56
                    com.join.android.app.common.http.d$p r4 = r7.f17044a     // Catch: java.lang.Throwable -> L54 java.io.IOException -> L56
                    com.join.android.app.common.http.d.g(r0, r1, r4)     // Catch: java.lang.Throwable -> L54 java.io.IOException -> L56
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
                    com.join.android.app.common.http.d$j r2 = com.join.android.app.common.http.d.j.this     // Catch: java.lang.Throwable -> L7d
                    com.join.android.app.common.http.d r2 = com.join.android.app.common.http.d.this     // Catch: java.lang.Throwable -> L7d
                    okhttp3.Request r8 = r8.request()     // Catch: java.lang.Throwable -> L7d
                    com.join.android.app.common.http.d$p r4 = r7.f17044a     // Catch: java.lang.Throwable -> L7d
                    com.join.android.app.common.http.d.f(r2, r8, r0, r4)     // Catch: java.lang.Throwable -> L7d
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
                throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.common.http.d.j.a.b(okhttp3.Response):void");
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
            d.this.f17009a.newCall(new Request.Builder().url(str).tag(obj).build()).enqueue(new a(pVar, str2, str));
        }
    }

    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes.dex */
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
            return d.this.f17009a.newCall(request).execute();
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
            d.this.w(pVar, request);
        }
    }

    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes.dex */
    public class l {

        /* compiled from: OkHttpClientManager.java */
        /* loaded from: classes.dex */
        public class a implements X509TrustManager {

            /* renamed from: a  reason: collision with root package name */
            private X509TrustManager f17050a;

            /* renamed from: b  reason: collision with root package name */
            private X509TrustManager f17051b;

            public a(X509TrustManager x509TrustManager) throws NoSuchAlgorithmException, KeyStoreException {
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                trustManagerFactory.init((KeyStore) null);
                this.f17050a = l.this.b(trustManagerFactory.getTrustManagers());
                this.f17051b = x509TrustManager;
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                try {
                    this.f17050a.checkServerTrusted(x509CertificateArr, str);
                } catch (CertificateException unused) {
                    this.f17051b.checkServerTrusted(x509CertificateArr, str);
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
                d.this.f17009a.newBuilder().sslSocketFactory(sSLContext.getSocketFactory());
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
    /* loaded from: classes.dex */
    public static class m {

        /* compiled from: OkHttpClientManager.java */
        /* loaded from: classes.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            int f17053a;

            /* renamed from: b  reason: collision with root package name */
            int f17054b;

            public a() {
            }

            public String toString() {
                return "ImageSize{width=" + this.f17053a + ", height=" + this.f17054b + '}';
            }

            public a(int i2, int i4) {
                this.f17053a = i2;
                this.f17054b = i4;
            }
        }

        public static int a(a aVar, a aVar2) {
            int i2 = aVar.f17053a;
            int i4 = aVar.f17054b;
            int i5 = aVar2.f17053a;
            int i6 = aVar2.f17054b;
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
            aVar.f17053a = c(view);
            aVar.f17054b = b(view);
            return aVar;
        }
    }

    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes.dex */
    public static class n {

        /* renamed from: a  reason: collision with root package name */
        String f17055a;

        /* renamed from: b  reason: collision with root package name */
        String f17056b;

        public n() {
        }

        public n(String str, String str2) {
            this.f17055a = str;
            this.f17056b = str2;
        }
    }

    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes.dex */
    public class o {

        /* renamed from: a  reason: collision with root package name */
        private final MediaType f17057a = MediaType.parse("application/octet-stream;charset=utf-8");

        /* renamed from: b  reason: collision with root package name */
        private final MediaType f17058b = MediaType.parse("text/plain;charset=utf-8");

        public o() {
        }

        private Request a(String str, RequestBody requestBody, Object obj) {
            Request.Builder post = new Request.Builder().url(str).post(requestBody);
            if (obj != null) {
                post.tag(obj);
            }
            return post.build();
        }

        public Response b(String str, File file) throws IOException {
            return c(str, file, null);
        }

        public Response c(String str, File file, Object obj) throws IOException {
            return d.this.f17009a.newCall(a(str, RequestBody.create(this.f17057a, file), obj)).execute();
        }

        public Response d(String str, String str2) throws IOException {
            return e(str, str2, null);
        }

        public Response e(String str, String str2, Object obj) throws IOException {
            return d.this.f17009a.newCall(a(str, RequestBody.create(this.f17058b, str2), obj)).execute();
        }

        public Response f(String str, byte[] bArr) throws IOException {
            return g(str, bArr, null);
        }

        public Response g(String str, byte[] bArr, Object obj) throws IOException {
            return d.this.f17009a.newCall(a(str, RequestBody.create(this.f17057a, bArr), obj)).execute();
        }

        public Response h(String str, n[] nVarArr) throws IOException {
            return i(str, nVarArr, null);
        }

        public Response i(String str, n[] nVarArr, Object obj) throws IOException {
            return d.this.f17009a.newCall(d.this.s(str, nVarArr, obj)).execute();
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
            u(str, d.this.M(map), pVar, obj);
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
            d.this.w(pVar, d.this.s(str, nVarArr, obj));
        }

        public void v(String str, File file, MediaType mediaType, p pVar, Object obj) {
            d.this.w(pVar, a(str, RequestBody.create(mediaType, file), obj));
        }

        public void w(String str, String str2, MediaType mediaType, p pVar, Object obj) {
            d.this.w(pVar, a(str, RequestBody.create(mediaType, str2), obj));
        }

        public void x(String str, byte[] bArr, MediaType mediaType, p pVar, Object obj) {
            d.this.w(pVar, a(str, RequestBody.create(mediaType, bArr), obj));
        }
    }

    /* compiled from: OkHttpClientManager.java */
    /* loaded from: classes.dex */
    public static abstract class p<T> {

        /* renamed from: a  reason: collision with root package name */
        Type f17060a = a(getClass());

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
    /* loaded from: classes.dex */
    public class q {
        public q() {
        }

        private Request a(String str, File[] fileArr, String[] strArr, n[] nVarArr, Object obj) {
            n[] X = d.this.X(nVarArr);
            MultipartBody.Builder type = new MultipartBody.Builder().setType(MultipartBody.FORM);
            for (n nVar : X) {
                type.addPart(Headers.of("Content-Disposition", "form-data; name=\"" + nVar.f17055a + m.a.f72569g), RequestBody.create((MediaType) null, nVar.f17056b));
            }
            if (fileArr != null) {
                for (int i2 = 0; i2 < fileArr.length; i2++) {
                    File file = fileArr[i2];
                    String name = file.getName();
                    type.addPart(Headers.of("Content-Disposition", "form-data; name=\"" + strArr[i2] + "\"; filename=\"" + name + m.a.f72569g), RequestBody.create(MediaType.parse(d.this.J(name)), file));
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
            return d.this.f17009a.newCall(a(str, fileArr, strArr, nVarArr, obj)).execute();
        }

        public void e(String str, String str2, File file, p pVar, Object obj) throws IOException {
            g(str, new String[]{str2}, new File[]{file}, null, pVar, obj);
        }

        public void f(String str, String str2, File file, n[] nVarArr, p pVar, Object obj) {
            g(str, new String[]{str2}, new File[]{file}, nVarArr, pVar, obj);
        }

        public void g(String str, String[] strArr, File[] fileArr, n[] nVarArr, p pVar, Object obj) {
            d.this.w(pVar, a(str, fileArr, strArr, nVarArr, obj));
        }
    }

    private d() {
        L();
        this.f17010b = new Handler(Looper.getMainLooper());
        this.f17011c = JsonMapper.e();
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

    public static d G() {
        if (f17008l == null) {
            synchronized (d.class) {
                if (f17008l == null) {
                    f17008l = new d();
                }
            }
        }
        return f17008l;
    }

    public static q I() {
        return G().e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String J(String str) {
        String contentTypeFor = URLConnection.getFileNameMap().getContentTypeFor(str);
        return contentTypeFor == null ? HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE : contentTypeFor;
    }

    private void K() {
    }

    private void L() {
        OkHttpClient.Builder V = V(new OkHttpClient.Builder());
        V.hostnameVerifier(new a());
        this.f17009a = V.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public n[] M(Map<String, String> map) {
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

    public static void N(String str, String str2, p pVar) {
        G().H().o(str, str2, pVar, null);
    }

    public static void O(String str, String str2, p pVar, Object obj) {
        G().H().o(str, str2, pVar, obj);
    }

    public static void P(String str, Map<String, String> map, p pVar) {
        G().H().q(str, map, pVar, null);
    }

    public static void Q(String str, Map<String, String> map, p pVar, Object obj) {
        G().H().q(str, map, pVar, obj);
    }

    public static void R(String str, n[] nVarArr, p pVar) {
        G().H().u(str, nVarArr, pVar, null);
    }

    public static void S(String str, n[] nVarArr, p pVar, Object obj) {
        G().H().u(str, nVarArr, pVar, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T(Request request, Exception exc, p pVar) {
        this.f17010b.post(new f(pVar, request, exc));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U(Object obj, p pVar) {
        this.f17010b.post(new g(pVar, obj));
    }

    private OkHttpClient.Builder V(OkHttpClient.Builder builder) {
        return builder.cookieJar(new C0128d());
    }

    public static OkHttpClient W() throws Exception {
        b bVar = new b();
        SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.SSL);
        sSLContext.init(null, new TrustManager[]{bVar}, new SecureRandom());
        return new OkHttpClient.Builder().sslSocketFactory(sSLContext.getSocketFactory(), bVar).hostnameVerifier(new c()).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public n[] X(n[] nVarArr) {
        return nVarArr == null ? new n[0] : nVarArr;
    }

    private void a(Object obj) {
        Dispatcher dispatcher = this.f17009a.dispatcher();
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

    private i b() {
        return this.f17014f;
    }

    private j c() {
        return this.f17013e;
    }

    private l d() {
        return this.f17012d;
    }

    private q e() {
        return this.f17016h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Request s(String str, n[] nVarArr, Object obj) {
        if (nVarArr == null) {
            nVarArr = new n[0];
        }
        FormBody.Builder builder = new FormBody.Builder();
        for (n nVar : nVarArr) {
            try {
                builder.add(nVar.f17055a, nVar.f17056b);
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
            pVar = this.f17018j;
        }
        pVar.c(request);
        this.f17009a.newCall(request).enqueue(new e(pVar));
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
        return this.f17015g;
    }

    public o H() {
        return this.f17017i;
    }

    public OkHttpClient u() {
        return this.f17009a;
    }
}
