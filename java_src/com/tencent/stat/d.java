package com.tencent.stat;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.tencent.stat.common.StatConstants;
import com.tencent.stat.common.StatLogger;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.List;
import java.util.zip.GZIPOutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class d {

    /* renamed from: c  reason: collision with root package name */
    private static StatLogger f60098c = com.tencent.stat.common.k.b();

    /* renamed from: d  reason: collision with root package name */
    private static long f60099d = -1;

    /* renamed from: e  reason: collision with root package name */
    private static d f60100e = null;

    /* renamed from: f  reason: collision with root package name */
    private static Context f60101f = null;

    /* renamed from: a  reason: collision with root package name */
    DefaultHttpClient f60102a;

    /* renamed from: b  reason: collision with root package name */
    Handler f60103b;

    private d() {
        this.f60102a = null;
        this.f60103b = null;
        try {
            HandlerThread handlerThread = new HandlerThread("StatDispatcher");
            handlerThread.start();
            f60099d = handlerThread.getId();
            this.f60103b = new Handler(handlerThread.getLooper());
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, 10000);
            HttpConnectionParams.setSoTimeout(basicHttpParams, 10000);
            DefaultHttpClient defaultHttpClient = new DefaultHttpClient(basicHttpParams);
            this.f60102a = defaultHttpClient;
            defaultHttpClient.setKeepAliveStrategy(new e(this));
            if (StatConfig.b() != null) {
                this.f60102a.getParams().setParameter("http.route.default-proxy", StatConfig.b());
            }
        } catch (Throwable th) {
            f60098c.e(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Context a() {
        return f60101f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context) {
        f60101f = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized d b() {
        d dVar;
        synchronized (d.class) {
            if (f60100e == null) {
                f60100e = new d();
            }
            dVar = f60100e;
        }
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.tencent.stat.a.e eVar, c cVar) {
        b(Arrays.asList(eVar.d()), cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(List<String> list, c cVar) {
        boolean z3;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            int i2 = 0;
            while (true) {
                z3 = true;
                if (i2 >= list.size()) {
                    break;
                }
                sb.append(list.get(i2));
                if (i2 != list.size() - 1) {
                    sb.append(",");
                }
                i2++;
            }
            sb.append("]");
            String statReportUrl = StatConfig.getStatReportUrl();
            StatLogger statLogger = f60098c;
            statLogger.i("[" + statReportUrl + "]Send request(" + sb.toString().length() + "bytes):" + sb.toString());
            HttpPost httpPost = new HttpPost(statReportUrl);
            httpPost.addHeader("Accept-Encoding", "gzip");
            httpPost.setHeader("Connection", "Keep-Alive");
            httpPost.removeHeaders("Cache-Control");
            HttpHost a4 = com.tencent.stat.common.k.a(f60101f);
            if (a4 != null) {
                this.f60102a.getParams().setParameter("http.route.default-proxy", com.tencent.stat.common.k.a(f60101f));
                httpPost.addHeader("X-Online-Host", StatConstants.MTA_SERVER);
                httpPost.addHeader("Accept", "*/*");
                httpPost.addHeader("Content-Type", "json");
            } else {
                z3 = false;
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bytes = sb.toString().getBytes("UTF-8");
            int length = bytes.length;
            if (sb.length() >= 256) {
                if (a4 == null) {
                    httpPost.addHeader("Content-Encoding", "rc4,gzip");
                } else {
                    httpPost.addHeader("X-Content-Encoding", "rc4,gzip");
                }
                byteArrayOutputStream.write(new byte[4]);
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                gZIPOutputStream.write(bytes);
                gZIPOutputStream.close();
                bytes = byteArrayOutputStream.toByteArray();
                ByteBuffer.wrap(bytes, 0, 4).putInt(length);
                StatLogger statLogger2 = f60098c;
                statLogger2.d("before Gzip:" + length + " bytes, after Gzip:" + bytes.length + " bytes");
            } else if (a4 == null) {
                httpPost.addHeader("Content-Encoding", "rc4");
            } else {
                httpPost.addHeader("X-Content-Encoding", "rc4");
            }
            httpPost.setEntity(new ByteArrayEntity(com.tencent.stat.common.e.a(bytes)));
            HttpResponse execute = this.f60102a.execute(httpPost);
            if (z3) {
                this.f60102a.getParams().removeParameter("http.route.default-proxy");
            }
            HttpEntity entity = execute.getEntity();
            int statusCode = execute.getStatusLine().getStatusCode();
            long contentLength = entity.getContentLength();
            StatLogger statLogger3 = f60098c;
            statLogger3.i("recv response status code:" + statusCode + ", content length:" + contentLength);
            if (contentLength == 0) {
                EntityUtils.toString(entity);
                if (statusCode != 200) {
                    StatLogger statLogger4 = f60098c;
                    statLogger4.error("Server response error code:" + statusCode);
                } else if (cVar != null) {
                    cVar.a();
                }
            } else if (contentLength > 0) {
                InputStream content = entity.getContent();
                DataInputStream dataInputStream = new DataInputStream(content);
                byte[] bArr = new byte[(int) entity.getContentLength()];
                dataInputStream.readFully(bArr);
                content.close();
                dataInputStream.close();
                Header firstHeader = execute.getFirstHeader("Content-Encoding");
                if (firstHeader != null) {
                    if (firstHeader.getValue().equalsIgnoreCase("gzip,rc4")) {
                        bArr = com.tencent.stat.common.e.b(com.tencent.stat.common.k.a(bArr));
                    } else if (firstHeader.getValue().equalsIgnoreCase("rc4,gzip")) {
                        bArr = com.tencent.stat.common.k.a(com.tencent.stat.common.e.b(bArr));
                    } else if (firstHeader.getValue().equalsIgnoreCase("gzip")) {
                        bArr = com.tencent.stat.common.k.a(bArr);
                    } else if (firstHeader.getValue().equalsIgnoreCase("rc4")) {
                        bArr = com.tencent.stat.common.e.b(bArr);
                    }
                }
                if (statusCode == 200) {
                    String str = new String(bArr, "UTF-8");
                    f60098c.d(str);
                    JSONObject jSONObject = new JSONObject(str);
                    if (!jSONObject.isNull("cfg")) {
                        StatConfig.a(jSONObject.getJSONObject("cfg"));
                    }
                    if (!jSONObject.isNull("et") && !jSONObject.isNull("st")) {
                        StatLogger statLogger5 = f60098c;
                        statLogger5.d("get mid respone:" + str);
                        if (jSONObject.getInt("et") == com.tencent.stat.a.f.SESSION_ENV.a()) {
                            int i4 = jSONObject.getInt("st");
                            if (i4 != -1 && i4 != 0) {
                                StatLogger statLogger6 = f60098c;
                                statLogger6.e("error type for st:" + i4);
                            } else if (!jSONObject.isNull(DeviceInfo.TAG_MID)) {
                                StatMid.updateDeviceInfo(f60101f, jSONObject.getString(DeviceInfo.TAG_MID));
                            }
                        }
                    }
                    if (cVar != null) {
                        cVar.a();
                    }
                } else {
                    StatLogger statLogger7 = f60098c;
                    statLogger7.error("Server response error code:" + statusCode + ", error:" + new String(bArr, "UTF-8"));
                }
                content.close();
            } else {
                EntityUtils.toString(entity);
            }
            byteArrayOutputStream.close();
        } catch (Throwable th) {
            f60098c.e(th);
            if (cVar != null) {
                cVar.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(List<String> list, c cVar) {
        Handler handler;
        if (list.isEmpty() || (handler = this.f60103b) == null) {
            return;
        }
        handler.post(new f(this, list, cVar));
    }
}
