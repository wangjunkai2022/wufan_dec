package com.switfpass.pay.thread;

import android.net.ConnectivityManager;
import android.text.TextUtils;
import com.switfpass.pay.MainApplication;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.security.KeyStore;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f58911a = "com.switfpass.pay.thread.d";

    /* renamed from: b  reason: collision with root package name */
    private static int f58912b = 6000;

    /* renamed from: c  reason: collision with root package name */
    private static d f58913c;

    public static boolean b() {
        ConnectivityManager connectivityManager = (ConnectivityManager) MainApplication.getContext().getSystemService("connectivity");
        return connectivityManager.getNetworkInfo(1).isAvailable() || connectivityManager.getNetworkInfo(0).isAvailable();
    }

    public static d c() {
        if (f58913c == null) {
            f58913c = new d();
        }
        return f58913c;
    }

    private static DefaultHttpClient e() {
        try {
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, null);
            c cVar = new c(keyStore);
            cVar.setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
            HttpProtocolParams.setContentCharset(basicHttpParams, "UTF-8");
            SchemeRegistry schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme(com.facebook.common.util.f.f11765a, PlainSocketFactory.getSocketFactory(), 80));
            schemeRegistry.register(new Scheme("https", cVar, 443));
            return new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
        } catch (Exception e4) {
            e4.printStackTrace();
            return new DefaultHttpClient();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c9, code lost:
        if (r2 == null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00cb, code lost:
        r2.disconnect();
        r2 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00d3, code lost:
        if (r2 == null) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a(java.lang.String r7, java.lang.String r8) {
        /*
            r6 = this;
            java.lang.String r0 = "gzip"
            java.lang.String r1 = ""
            r2 = 0
            java.net.URL r3 = new java.net.URL     // Catch: java.lang.Throwable -> Lc7 java.io.IOException -> Lc9 java.net.MalformedURLException -> Lcf
            r3.<init>(r7)     // Catch: java.lang.Throwable -> Lc7 java.io.IOException -> Lc9 java.net.MalformedURLException -> Lcf
            java.net.URLConnection r7 = r3.openConnection()     // Catch: java.lang.Throwable -> Lc7 java.io.IOException -> Lc9 java.net.MalformedURLException -> Lcf
            java.net.HttpURLConnection r7 = (java.net.HttpURLConnection) r7     // Catch: java.lang.Throwable -> Lc7 java.io.IOException -> Lc9 java.net.MalformedURLException -> Lcf
            r2 = 1
            r7.setDoInput(r2)     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            r7.setDoOutput(r2)     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            java.lang.String r2 = "Connection"
            java.lang.String r3 = "close"
            r7.setRequestProperty(r2, r3)     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            r2 = 0
            r7.setUseCaches(r2)     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            int r2 = com.switfpass.pay.thread.d.f58912b     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            r7.setConnectTimeout(r2)     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            int r2 = com.switfpass.pay.thread.d.f58912b     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            r7.setReadTimeout(r2)     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            java.lang.String r2 = "POST"
            r7.setRequestMethod(r2)     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            java.lang.String r2 = "User-Agent"
            java.lang.String r3 = "Android/1.0"
            r7.setRequestProperty(r2, r3)     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            java.lang.String r2 = "Accept-Encoding"
            r7.setRequestProperty(r2, r0)     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            java.lang.String r2 = "Content-Type"
            java.lang.String r3 = "application/json;charset=UTF-8"
            r7.setRequestProperty(r2, r3)     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            java.io.OutputStream r2 = r7.getOutputStream()     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            byte[] r8 = r8.getBytes()     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            r2.write(r8)     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            java.io.OutputStream r8 = r7.getOutputStream()     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            r8.flush()     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            java.io.OutputStream r8 = r7.getOutputStream()     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            r8.close()     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            int r8 = r7.getResponseCode()     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            r2 = 200(0xc8, float:2.8E-43)
            if (r8 != r2) goto Lb1
            java.io.InputStream r8 = r7.getInputStream()     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            java.lang.String r2 = r7.getContentEncoding()     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            r3 = 8192(0x2000, float:1.14794E-41)
            java.lang.String r4 = "UTF-8"
            if (r2 == 0) goto L89
            boolean r0 = r2.equalsIgnoreCase(r0)     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            if (r0 == 0) goto L89
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            java.util.zip.GZIPInputStream r5 = new java.util.zip.GZIPInputStream     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            r5.<init>(r8)     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            r2.<init>(r5, r4)     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            r0.<init>(r2, r3)     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            goto L93
        L89:
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            r2.<init>(r8, r4)     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            r0.<init>(r2, r3)     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
        L93:
            java.lang.String r2 = r0.readLine()     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            java.lang.StringBuffer r3 = new java.lang.StringBuffer     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            r3.<init>()     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
        L9c:
            if (r2 != 0) goto La9
            java.lang.String r1 = r3.toString()     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            r0.close()     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            r8.close()     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            goto Lbb
        La9:
            r3.append(r2)     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            java.lang.String r2 = r0.readLine()     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            goto L9c
        Lb1:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            java.lang.String r2 = "Http Response Code:"
            r0.<init>(r2)     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
            r0.append(r8)     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc2 java.net.MalformedURLException -> Lc4
        Lbb:
            r7.disconnect()
            goto Ld6
        Lbf:
            r8 = move-exception
            r2 = r7
            goto Ld7
        Lc2:
            r2 = r7
            goto Lc9
        Lc4:
            r8 = move-exception
            r2 = r7
            goto Ld0
        Lc7:
            r8 = move-exception
            goto Ld7
        Lc9:
            if (r2 == 0) goto Ld6
        Lcb:
            r2.disconnect()
            goto Ld6
        Lcf:
            r8 = move-exception
        Ld0:
            r8.getMessage()     // Catch: java.lang.Throwable -> Lc7
            if (r2 == 0) goto Ld6
            goto Lcb
        Ld6:
            return r1
        Ld7:
            if (r2 == 0) goto Ldc
            r2.disconnect()
        Ldc:
            goto Lde
        Ldd:
            throw r8
        Lde:
            goto Ldd
        */
        throw new UnsupportedOperationException("Method not decompiled: com.switfpass.pay.thread.d.a(java.lang.String, java.lang.String):java.lang.String");
    }

    public f d(String str, JSONObject jSONObject, String str2, String str3, String str4) {
        f fVar = new f();
        if (str4 != null) {
            str = String.valueOf(str) + "?" + str4;
        }
        HttpPost httpPost = new HttpPost(str);
        if (jSONObject != null) {
            try {
                httpPost.setEntity(new StringEntity(jSONObject.toString(), "utf-8"));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        DefaultHttpClient e5 = e();
        try {
            e5.getParams().setParameter("http.connection.timeout", Integer.valueOf((int) com.join.mgps.socket.entity.b.f52083c));
            e5.getParams().setParameter("http.socket.timeout", Integer.valueOf((int) com.join.mgps.socket.entity.b.f52083c));
            try {
                try {
                    HttpResponse execute = e5.execute(httpPost);
                    if (execute == null) {
                        fVar.f58928c = -3;
                        return fVar;
                    }
                    int statusCode = execute.getStatusLine().getStatusCode();
                    String entityUtils = EntityUtils.toString(execute.getEntity());
                    if (statusCode >= 400 && statusCode <= 499) {
                        fVar.f58928c = statusCode;
                        return fVar;
                    } else if (statusCode >= 500 && statusCode <= 599) {
                        fVar.f58928c = statusCode;
                        return fVar;
                    } else if (TextUtils.isEmpty(entityUtils)) {
                        return fVar;
                    } else {
                        try {
                            JSONObject jSONObject2 = new JSONObject(entityUtils);
                            fVar.f58926a = jSONObject2;
                            if (jSONObject2.optInt("Ret") != 1) {
                                fVar.f(fVar.f58926a.optString("ErrInfo"));
                            }
                        } catch (JSONException e6) {
                            new StringBuilder("httpsPost failed ").append(e6.getMessage());
                            fVar.f58928c = -2;
                        }
                        return fVar;
                    }
                } catch (ConnectTimeoutException unused) {
                    fVar.f58928c = -4;
                    return fVar;
                }
            } catch (SocketTimeoutException unused2) {
                fVar.f58928c = -4;
                return fVar;
            } catch (UnknownHostException unused3) {
                fVar.f58928c = -3;
                return fVar;
            }
        } catch (IOException e7) {
            new StringBuilder("httpsPost failed ").append(e7.getMessage());
            fVar.f58928c = -3;
            return fVar;
        }
    }
}
