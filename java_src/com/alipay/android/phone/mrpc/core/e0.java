package com.alipay.android.phone.mrpc.core;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.net.URL;
import java.util.HashMap;
import java.util.concurrent.Callable;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.CookieStore;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.AbstractHttpEntity;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
/* loaded from: classes2.dex */
public final class e0 implements Callable<e> {

    /* renamed from: q  reason: collision with root package name */
    private static final HttpRequestRetryHandler f9445q = new o();

    /* renamed from: a  reason: collision with root package name */
    protected z f9446a;

    /* renamed from: b  reason: collision with root package name */
    protected Context f9447b;

    /* renamed from: c  reason: collision with root package name */
    protected c0 f9448c;

    /* renamed from: d  reason: collision with root package name */
    private HttpUriRequest f9449d;

    /* renamed from: g  reason: collision with root package name */
    private CookieManager f9452g;

    /* renamed from: h  reason: collision with root package name */
    private AbstractHttpEntity f9453h;

    /* renamed from: i  reason: collision with root package name */
    private HttpHost f9454i;

    /* renamed from: j  reason: collision with root package name */
    private URL f9455j;

    /* renamed from: k  reason: collision with root package name */
    String f9456k;

    /* renamed from: p  reason: collision with root package name */
    private String f9461p;

    /* renamed from: e  reason: collision with root package name */
    private HttpContext f9450e = new BasicHttpContext();

    /* renamed from: f  reason: collision with root package name */
    private CookieStore f9451f = new BasicCookieStore();

    /* renamed from: l  reason: collision with root package name */
    private int f9457l = 0;

    /* renamed from: m  reason: collision with root package name */
    private boolean f9458m = false;

    /* renamed from: n  reason: collision with root package name */
    private boolean f9459n = false;

    /* renamed from: o  reason: collision with root package name */
    private String f9460o = null;

    public e0(z zVar, c0 c0Var) {
        this.f9446a = zVar;
        this.f9447b = zVar.f9507a;
        this.f9448c = c0Var;
    }

    private static long a(String[] strArr) {
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if ("max-age".equalsIgnoreCase(strArr[i2])) {
                int i4 = i2 + 1;
                if (strArr[i4] != null) {
                    try {
                        return Long.parseLong(strArr[i4]);
                    } catch (Exception unused) {
                        continue;
                    }
                } else {
                    continue;
                }
            }
        }
        return 0L;
    }

    private e b(HttpResponse httpResponse, int i2, String str) {
        String str2;
        Thread.currentThread().getId();
        HttpEntity entity = httpResponse.getEntity();
        ByteArrayOutputStream byteArrayOutputStream = null;
        String str3 = null;
        if (entity == null || httpResponse.getStatusLine().getStatusCode() != 200) {
            if (entity == null) {
                httpResponse.getStatusLine().getStatusCode();
                return null;
            }
            return null;
        }
        Thread.currentThread().getId();
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            try {
                long currentTimeMillis = System.currentTimeMillis();
                f(entity, byteArrayOutputStream2);
                byte[] byteArray = byteArrayOutputStream2.toByteArray();
                this.f9459n = false;
                this.f9446a.g(System.currentTimeMillis() - currentTimeMillis);
                this.f9446a.d(byteArray.length);
                d0 d0Var = new d0(c(httpResponse), i2, str, byteArray);
                long g4 = g(httpResponse);
                Header contentType = httpResponse.getEntity().getContentType();
                if (contentType != null) {
                    HashMap<String, String> e4 = e(contentType.getValue());
                    str3 = e4.get("Content-Type");
                    str2 = e4.get("charset");
                } else {
                    str2 = null;
                }
                d0Var.a(str3);
                d0Var.f9441g = str2;
                d0Var.f9439e = System.currentTimeMillis();
                d0Var.f9440f = g4;
                try {
                    byteArrayOutputStream2.close();
                    return d0Var;
                } catch (IOException e5) {
                    throw new RuntimeException("ArrayOutputStream close error!", e5.getCause());
                }
            } catch (Throwable th) {
                th = th;
                byteArrayOutputStream = byteArrayOutputStream2;
                if (byteArrayOutputStream != null) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e6) {
                        throw new RuntimeException("ArrayOutputStream close error!", e6.getCause());
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static b c(HttpResponse httpResponse) {
        Header[] allHeaders;
        b bVar = new b();
        for (Header header : httpResponse.getAllHeaders()) {
            bVar.c(header.getName(), header.getValue());
        }
        return bVar;
    }

    private static HashMap<String, String> e(String str) {
        String[] split;
        HashMap<String, String> hashMap = new HashMap<>();
        for (String str2 : str.split(";")) {
            String[] split2 = str2.indexOf(61) == -1 ? new String[]{"Content-Type", str2} : str2.split(SimpleComparison.EQUAL_TO_OPERATION);
            hashMap.put(split2[0], split2[1]);
        }
        return hashMap;
    }

    private void f(HttpEntity httpEntity, OutputStream outputStream) {
        InputStream c4 = p.c(httpEntity);
        long contentLength = httpEntity.getContentLength();
        try {
            try {
                byte[] bArr = new byte[2048];
                while (true) {
                    int read = c4.read(bArr);
                    if (read == -1 || this.f9448c.f9435a) {
                        break;
                    }
                    outputStream.write(bArr, 0, read);
                    if (this.f9448c.a() != null && contentLength > 0) {
                        this.f9448c.a();
                    }
                }
                outputStream.flush();
            } catch (Exception e4) {
                e4.getCause();
                throw new IOException("HttpWorker Request Error!" + e4.getLocalizedMessage());
            }
        } finally {
            f0.a(c4);
        }
    }

    private static long g(HttpResponse httpResponse) {
        Header firstHeader = httpResponse.getFirstHeader("Cache-Control");
        if (firstHeader != null) {
            String[] split = firstHeader.getValue().split(SimpleComparison.EQUAL_TO_OPERATION);
            if (split.length >= 2) {
                try {
                    return a(split);
                } catch (NumberFormatException unused) {
                }
            }
        }
        Header firstHeader2 = httpResponse.getFirstHeader("Expires");
        if (firstHeader2 != null) {
            return p.i(firstHeader2.getValue()) - System.currentTimeMillis();
        }
        return 0L;
    }

    private URI h() {
        String str = this.f9448c.f9429c;
        String str2 = this.f9456k;
        if (str2 != null) {
            str = str2;
        }
        if (str != null) {
            return new URI(str);
        }
        throw new RuntimeException("url should not be null");
    }

    private HttpUriRequest i() {
        HttpUriRequest httpUriRequest = this.f9449d;
        if (httpUriRequest != null) {
            return httpUriRequest;
        }
        if (this.f9453h == null) {
            c0 c0Var = this.f9448c;
            byte[] bArr = c0Var.f9430d;
            String d4 = c0Var.d("gzip");
            if (bArr != null) {
                this.f9453h = TextUtils.equals(d4, "true") ? p.f(bArr) : new ByteArrayEntity(bArr);
                this.f9453h.setContentType(this.f9448c.f9431e);
            }
        }
        AbstractHttpEntity abstractHttpEntity = this.f9453h;
        if (abstractHttpEntity != null) {
            HttpPost httpPost = new HttpPost(h());
            httpPost.setEntity(abstractHttpEntity);
            this.f9449d = httpPost;
        } else {
            this.f9449d = new HttpGet(h());
        }
        return this.f9449d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00fc A[Catch: Exception -> 0x023c, NullPointerException -> 0x025e, IOException -> 0x027d, UnknownHostException -> 0x02a2, HttpHostConnectException -> 0x02c9, NoHttpResponseException -> 0x02ed, SocketTimeoutException -> 0x0313, ConnectTimeoutException -> 0x0339, ConnectionPoolTimeoutException -> 0x035e, SSLException -> 0x0383, SSLPeerUnverifiedException -> 0x03a8, SSLHandshakeException -> 0x03cd, URISyntaxException -> 0x03f2, a -> 0x03ff, TryCatch #3 {ConnectionPoolTimeoutException -> 0x035e, HttpHostConnectException -> 0x02c9, a -> 0x03ff, NullPointerException -> 0x025e, SocketTimeoutException -> 0x0313, URISyntaxException -> 0x03f2, UnknownHostException -> 0x02a2, SSLHandshakeException -> 0x03cd, SSLPeerUnverifiedException -> 0x03a8, SSLException -> 0x0383, NoHttpResponseException -> 0x02ed, ConnectTimeoutException -> 0x0339, IOException -> 0x027d, Exception -> 0x023c, blocks: (B:4:0x0006, B:18:0x0032, B:20:0x003a, B:21:0x003f, B:23:0x0045, B:25:0x004b, B:26:0x004f, B:28:0x0055, B:29:0x0063, B:31:0x00c5, B:33:0x00cb, B:35:0x00d5, B:38:0x00de, B:40:0x00ea, B:44:0x00f4, B:48:0x0114, B:50:0x011c, B:51:0x0129, B:53:0x014d, B:54:0x0154, B:56:0x015a, B:57:0x015e, B:59:0x0164, B:61:0x0170, B:65:0x019f, B:66:0x01b9, B:74:0x01d6, B:75:0x01ef, B:76:0x01f0, B:78:0x01f8, B:80:0x01fe, B:84:0x020a, B:86:0x020e, B:88:0x021c, B:90:0x0222, B:92:0x022c, B:47:0x00fc, B:94:0x0230, B:95:0x023b, B:7:0x0017, B:9:0x001b, B:11:0x001f, B:13:0x0025, B:16:0x002d), top: B:181:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x011c A[Catch: Exception -> 0x023c, NullPointerException -> 0x025e, IOException -> 0x027d, UnknownHostException -> 0x02a2, HttpHostConnectException -> 0x02c9, NoHttpResponseException -> 0x02ed, SocketTimeoutException -> 0x0313, ConnectTimeoutException -> 0x0339, ConnectionPoolTimeoutException -> 0x035e, SSLException -> 0x0383, SSLPeerUnverifiedException -> 0x03a8, SSLHandshakeException -> 0x03cd, URISyntaxException -> 0x03f2, a -> 0x03ff, TryCatch #3 {ConnectionPoolTimeoutException -> 0x035e, HttpHostConnectException -> 0x02c9, a -> 0x03ff, NullPointerException -> 0x025e, SocketTimeoutException -> 0x0313, URISyntaxException -> 0x03f2, UnknownHostException -> 0x02a2, SSLHandshakeException -> 0x03cd, SSLPeerUnverifiedException -> 0x03a8, SSLException -> 0x0383, NoHttpResponseException -> 0x02ed, ConnectTimeoutException -> 0x0339, IOException -> 0x027d, Exception -> 0x023c, blocks: (B:4:0x0006, B:18:0x0032, B:20:0x003a, B:21:0x003f, B:23:0x0045, B:25:0x004b, B:26:0x004f, B:28:0x0055, B:29:0x0063, B:31:0x00c5, B:33:0x00cb, B:35:0x00d5, B:38:0x00de, B:40:0x00ea, B:44:0x00f4, B:48:0x0114, B:50:0x011c, B:51:0x0129, B:53:0x014d, B:54:0x0154, B:56:0x015a, B:57:0x015e, B:59:0x0164, B:61:0x0170, B:65:0x019f, B:66:0x01b9, B:74:0x01d6, B:75:0x01ef, B:76:0x01f0, B:78:0x01f8, B:80:0x01fe, B:84:0x020a, B:86:0x020e, B:88:0x021c, B:90:0x0222, B:92:0x022c, B:47:0x00fc, B:94:0x0230, B:95:0x023b, B:7:0x0017, B:9:0x001b, B:11:0x001f, B:13:0x0025, B:16:0x002d), top: B:181:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x014d A[Catch: Exception -> 0x023c, NullPointerException -> 0x025e, IOException -> 0x027d, UnknownHostException -> 0x02a2, HttpHostConnectException -> 0x02c9, NoHttpResponseException -> 0x02ed, SocketTimeoutException -> 0x0313, ConnectTimeoutException -> 0x0339, ConnectionPoolTimeoutException -> 0x035e, SSLException -> 0x0383, SSLPeerUnverifiedException -> 0x03a8, SSLHandshakeException -> 0x03cd, URISyntaxException -> 0x03f2, a -> 0x03ff, TryCatch #3 {ConnectionPoolTimeoutException -> 0x035e, HttpHostConnectException -> 0x02c9, a -> 0x03ff, NullPointerException -> 0x025e, SocketTimeoutException -> 0x0313, URISyntaxException -> 0x03f2, UnknownHostException -> 0x02a2, SSLHandshakeException -> 0x03cd, SSLPeerUnverifiedException -> 0x03a8, SSLException -> 0x0383, NoHttpResponseException -> 0x02ed, ConnectTimeoutException -> 0x0339, IOException -> 0x027d, Exception -> 0x023c, blocks: (B:4:0x0006, B:18:0x0032, B:20:0x003a, B:21:0x003f, B:23:0x0045, B:25:0x004b, B:26:0x004f, B:28:0x0055, B:29:0x0063, B:31:0x00c5, B:33:0x00cb, B:35:0x00d5, B:38:0x00de, B:40:0x00ea, B:44:0x00f4, B:48:0x0114, B:50:0x011c, B:51:0x0129, B:53:0x014d, B:54:0x0154, B:56:0x015a, B:57:0x015e, B:59:0x0164, B:61:0x0170, B:65:0x019f, B:66:0x01b9, B:74:0x01d6, B:75:0x01ef, B:76:0x01f0, B:78:0x01f8, B:80:0x01fe, B:84:0x020a, B:86:0x020e, B:88:0x021c, B:90:0x0222, B:92:0x022c, B:47:0x00fc, B:94:0x0230, B:95:0x023b, B:7:0x0017, B:9:0x001b, B:11:0x001f, B:13:0x0025, B:16:0x002d), top: B:181:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x015a A[Catch: Exception -> 0x023c, NullPointerException -> 0x025e, IOException -> 0x027d, UnknownHostException -> 0x02a2, HttpHostConnectException -> 0x02c9, NoHttpResponseException -> 0x02ed, SocketTimeoutException -> 0x0313, ConnectTimeoutException -> 0x0339, ConnectionPoolTimeoutException -> 0x035e, SSLException -> 0x0383, SSLPeerUnverifiedException -> 0x03a8, SSLHandshakeException -> 0x03cd, URISyntaxException -> 0x03f2, a -> 0x03ff, TryCatch #3 {ConnectionPoolTimeoutException -> 0x035e, HttpHostConnectException -> 0x02c9, a -> 0x03ff, NullPointerException -> 0x025e, SocketTimeoutException -> 0x0313, URISyntaxException -> 0x03f2, UnknownHostException -> 0x02a2, SSLHandshakeException -> 0x03cd, SSLPeerUnverifiedException -> 0x03a8, SSLException -> 0x0383, NoHttpResponseException -> 0x02ed, ConnectTimeoutException -> 0x0339, IOException -> 0x027d, Exception -> 0x023c, blocks: (B:4:0x0006, B:18:0x0032, B:20:0x003a, B:21:0x003f, B:23:0x0045, B:25:0x004b, B:26:0x004f, B:28:0x0055, B:29:0x0063, B:31:0x00c5, B:33:0x00cb, B:35:0x00d5, B:38:0x00de, B:40:0x00ea, B:44:0x00f4, B:48:0x0114, B:50:0x011c, B:51:0x0129, B:53:0x014d, B:54:0x0154, B:56:0x015a, B:57:0x015e, B:59:0x0164, B:61:0x0170, B:65:0x019f, B:66:0x01b9, B:74:0x01d6, B:75:0x01ef, B:76:0x01f0, B:78:0x01f8, B:80:0x01fe, B:84:0x020a, B:86:0x020e, B:88:0x021c, B:90:0x0222, B:92:0x022c, B:47:0x00fc, B:94:0x0230, B:95:0x023b, B:7:0x0017, B:9:0x001b, B:11:0x001f, B:13:0x0025, B:16:0x002d), top: B:181:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01cd  */
    @Override // java.util.concurrent.Callable
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.alipay.android.phone.mrpc.core.e call() {
        /*
            Method dump skipped, instructions count: 1052
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.android.phone.mrpc.core.e0.call():com.alipay.android.phone.mrpc.core.e");
    }

    private void k() {
        HttpUriRequest httpUriRequest = this.f9449d;
        if (httpUriRequest != null) {
            httpUriRequest.abort();
        }
    }

    private String l() {
        if (TextUtils.isEmpty(this.f9461p)) {
            String d4 = this.f9448c.d("operationType");
            this.f9461p = d4;
            return d4;
        }
        return this.f9461p;
    }

    private int m() {
        URL n4 = n();
        return n4.getPort() == -1 ? n4.getDefaultPort() : n4.getPort();
    }

    private URL n() {
        URL url = this.f9455j;
        if (url != null) {
            return url;
        }
        URL url2 = new URL(this.f9448c.f9429c);
        this.f9455j = url2;
        return url2;
    }

    private CookieManager o() {
        CookieManager cookieManager = this.f9452g;
        if (cookieManager != null) {
            return cookieManager;
        }
        CookieManager cookieManager2 = CookieManager.getInstance();
        this.f9452g = cookieManager2;
        return cookieManager2;
    }

    public final c0 d() {
        return this.f9448c;
    }
}
