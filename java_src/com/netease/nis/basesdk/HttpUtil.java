package com.netease.nis.basesdk;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.RequiresApi;
import com.j256.ormlite.stmt.query.SimpleComparison;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes4.dex */
public class HttpUtil {

    /* renamed from: a  reason: collision with root package name */
    private static final Handler f54006a = new Handler(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    private static final ExecutorService f54007b = Executors.newSingleThreadExecutor();

    /* loaded from: classes4.dex */
    public interface ResponseCallBack {
        void onError(int i2, String str);

        void onSuccess(String str);
    }

    /* loaded from: classes4.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f54008a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ResponseCallBack f54009b;

        /* renamed from: com.netease.nis.basesdk.HttpUtil$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class C0247a implements ResponseCallBack {

            /* renamed from: com.netease.nis.basesdk.HttpUtil$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes4.dex */
            class RunnableC0248a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ String f54011a;

                RunnableC0248a(String str) {
                    this.f54011a = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    a.this.f54009b.onSuccess(this.f54011a);
                }
            }

            /* renamed from: com.netease.nis.basesdk.HttpUtil$a$a$b */
            /* loaded from: classes4.dex */
            class b implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ int f54013a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ String f54014b;

                b(int i2, String str) {
                    this.f54013a = i2;
                    this.f54014b = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    a.this.f54009b.onError(this.f54013a, this.f54014b);
                }
            }

            C0247a() {
            }

            @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
            public void onError(int i2, String str) {
                HttpUtil.f54006a.post(new b(i2, str));
            }

            @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
            public void onSuccess(String str) {
                HttpUtil.f54006a.post(new RunnableC0248a(str));
            }
        }

        a(String str, ResponseCallBack responseCallBack) {
            this.f54008a = str;
            this.f54009b = responseCallBack;
        }

        @Override // java.lang.Runnable
        public void run() {
            HttpUtil.doHttpRequest(this.f54008a, false, false, null, null, null, new C0247a());
        }
    }

    /* loaded from: classes4.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f54016a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ResponseCallBack f54017b;

        /* loaded from: classes4.dex */
        class a implements ResponseCallBack {

            /* renamed from: com.netease.nis.basesdk.HttpUtil$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes4.dex */
            class RunnableC0249a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ String f54019a;

                RunnableC0249a(String str) {
                    this.f54019a = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    b.this.f54017b.onSuccess(this.f54019a);
                }
            }

            /* renamed from: com.netease.nis.basesdk.HttpUtil$b$a$b  reason: collision with other inner class name */
            /* loaded from: classes4.dex */
            class RunnableC0250b implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ int f54021a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ String f54022b;

                RunnableC0250b(int i2, String str) {
                    this.f54021a = i2;
                    this.f54022b = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    b.this.f54017b.onError(this.f54021a, this.f54022b);
                }
            }

            a() {
            }

            @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
            public void onError(int i2, String str) {
                HttpUtil.f54006a.post(new RunnableC0250b(i2, str));
            }

            @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
            public void onSuccess(String str) {
                HttpUtil.f54006a.post(new RunnableC0249a(str));
            }
        }

        b(String str, ResponseCallBack responseCallBack) {
            this.f54016a = str;
            this.f54017b = responseCallBack;
        }

        @Override // java.lang.Runnable
        public void run() {
            HttpUtil.doHttpRequest(this.f54016a, false, true, null, null, null, new a());
        }
    }

    /* loaded from: classes4.dex */
    class c extends ConnectivityManager.NetworkCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Timer f54024a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean[] f54025b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f54026c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ ResponseCallBack f54027d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ ConnectivityManager f54028e;

        c(Timer timer, boolean[] zArr, String str, ResponseCallBack responseCallBack, ConnectivityManager connectivityManager) {
            this.f54024a = timer;
            this.f54025b = zArr;
            this.f54026c = str;
            this.f54027d = responseCallBack;
            this.f54028e = connectivityManager;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        @TargetApi(21)
        public void onAvailable(Network network) {
            super.onAvailable(network);
            Logger.d("切换网络成功");
            this.f54024a.cancel();
            this.f54024a.purge();
            if (!this.f54025b[0]) {
                HttpUtil.doHttpRequest(this.f54026c, false, false, null, null, network, this.f54027d);
                this.f54025b[0] = true;
            }
            this.f54028e.unregisterNetworkCallback(this);
        }
    }

    /* loaded from: classes4.dex */
    class d extends TimerTask {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ConnectivityManager f54029a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ConnectivityManager.NetworkCallback f54030b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ResponseCallBack f54031c;

        d(ConnectivityManager connectivityManager, ConnectivityManager.NetworkCallback networkCallback, ResponseCallBack responseCallBack) {
            this.f54029a = connectivityManager;
            this.f54030b = networkCallback;
            this.f54031c = responseCallBack;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        @RequiresApi(api = 21)
        public void run() {
            this.f54029a.unregisterNetworkCallback(this.f54030b);
            this.f54031c.onError(10002, "当前状态为wifi和数据流量同时开启，切换到数据流量超时，请重试");
        }
    }

    /* loaded from: classes4.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f54032a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f54033b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ResponseCallBack f54034c;

        /* loaded from: classes4.dex */
        class a implements ResponseCallBack {

            /* renamed from: com.netease.nis.basesdk.HttpUtil$e$a$a  reason: collision with other inner class name */
            /* loaded from: classes4.dex */
            class RunnableC0251a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ String f54036a;

                RunnableC0251a(String str) {
                    this.f54036a = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    e.this.f54034c.onSuccess(this.f54036a);
                }
            }

            /* loaded from: classes4.dex */
            class b implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ int f54038a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ String f54039b;

                b(int i2, String str) {
                    this.f54038a = i2;
                    this.f54039b = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    e.this.f54034c.onError(this.f54038a, this.f54039b);
                }
            }

            a() {
            }

            @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
            public void onError(int i2, String str) {
                HttpUtil.f54006a.post(new b(i2, str));
            }

            @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
            public void onSuccess(String str) {
                HttpUtil.f54006a.post(new RunnableC0251a(str));
            }
        }

        e(String str, String str2, ResponseCallBack responseCallBack) {
            this.f54032a = str;
            this.f54033b = str2;
            this.f54034c = responseCallBack;
        }

        @Override // java.lang.Runnable
        public void run() {
            HttpUtil.doHttpRequest(this.f54032a, true, true, this.f54033b, null, null, new a());
        }
    }

    /* loaded from: classes4.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f54041a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Map f54042b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Map f54043c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ ResponseCallBack f54044d;

        /* loaded from: classes4.dex */
        class a implements ResponseCallBack {

            /* renamed from: com.netease.nis.basesdk.HttpUtil$f$a$a  reason: collision with other inner class name */
            /* loaded from: classes4.dex */
            class RunnableC0252a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ String f54046a;

                RunnableC0252a(String str) {
                    this.f54046a = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    f.this.f54044d.onSuccess(this.f54046a);
                }
            }

            /* loaded from: classes4.dex */
            class b implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ int f54048a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ String f54049b;

                b(int i2, String str) {
                    this.f54048a = i2;
                    this.f54049b = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    f.this.f54044d.onError(this.f54048a, this.f54049b);
                }
            }

            a() {
            }

            @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
            public void onError(int i2, String str) {
                HttpUtil.f54006a.post(new b(i2, str));
            }

            @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
            public void onSuccess(String str) {
                HttpUtil.f54006a.post(new RunnableC0252a(str));
            }
        }

        f(String str, Map map, Map map2, ResponseCallBack responseCallBack) {
            this.f54041a = str;
            this.f54042b = map;
            this.f54043c = map2;
            this.f54044d = responseCallBack;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Logger.i("post request url:" + this.f54041a + " args:" + HttpUtil.map2Form(this.f54042b, "utf-8"));
                HttpUtil.doHttpRequest(this.f54041a, true, false, HttpUtil.map2Form(this.f54042b, "utf-8"), this.f54043c, null, new a());
            } catch (Exception e4) {
                Logger.e(e4.getMessage());
                ResponseCallBack responseCallBack = this.f54044d;
                responseCallBack.onError(10001, "网络请求出现异常:" + e4.toString());
            }
        }
    }

    public static void doGetRequestByForm(String str, ResponseCallBack responseCallBack) {
        Logger.i("get request url:" + str);
        f54007b.execute(new a(str, responseCallBack));
    }

    public static void doGetRequestByJson(String str, ResponseCallBack responseCallBack) {
        Logger.i("get request url:" + str);
        f54007b.execute(new b(str, responseCallBack));
    }

    public static void doGetRequestByMobileNet(Context context, String str, ResponseCallBack responseCallBack) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (Build.VERSION.SDK_INT >= 21) {
            Logger.d("system api version >= 21");
            NetworkRequest.Builder builder = new NetworkRequest.Builder();
            builder.addCapability(12);
            builder.addTransportType(0);
            NetworkRequest build = builder.build();
            Timer timer = new Timer();
            c cVar = new c(timer, new boolean[]{false}, str, responseCallBack, connectivityManager);
            connectivityManager.requestNetwork(build, cVar);
            timer.schedule(new d(connectivityManager, cVar, responseCallBack), 7000L);
            return;
        }
        Logger.d("system api version < 21");
        if (connectivityManager != null) {
            try {
                connectivityManager.getClass().getMethod("startUsingNetworkFeature", Integer.TYPE, String.class).invoke(0, "enableHIPRI");
            } catch (Exception unused) {
            }
        }
        for (int i2 = 0; i2 < 20; i2++) {
            if (connectivityManager != null) {
                if (connectivityManager.getNetworkInfo(5).getState().compareTo(NetworkInfo.State.CONNECTED) == 0) {
                    break;
                }
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException e4) {
                    Logger.e(e4.getMessage());
                }
            }
        }
        int lookupHost = NetworkUtil.lookupHost(NetworkUtil.extractAddressFromUrl(str));
        try {
            if (connectivityManager != null) {
                Class<?> cls = connectivityManager.getClass();
                Class<?> cls2 = Integer.TYPE;
                if (((Boolean) cls.getMethod("requestRouteToHost", cls2, cls2).invoke(5, Integer.valueOf(lookupHost))).booleanValue()) {
                    doHttpRequest(str, false, false, null, null, null, responseCallBack);
                } else {
                    responseCallBack.onError(7000, "当前状态为wifi和数据流量同时开启，切换到数据流量超时,请重试");
                    Logger.d("当前状态为wifi和数据流量同时开启，切换到数据流量失败,系统API < 21");
                }
            } else {
                responseCallBack.onError(7000, "当前状态为wifi和数据流量同时开启，切换到数据流量超时,请重试");
                Logger.d("当前状态为wifi和数据流量同时开启，切换到数据流量失败,系统API < 21");
            }
        } catch (Exception unused2) {
        }
    }

    public static void doHttpRequest(String str, boolean z3, boolean z4, String str2, Map<String, String> map, Network network, ResponseCallBack responseCallBack) {
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                URL url = new URL(str);
                if (network != null && Build.VERSION.SDK_INT >= 21) {
                    httpURLConnection = (HttpURLConnection) network.openConnection(url);
                } else {
                    httpURLConnection = (HttpURLConnection) url.openConnection();
                }
                httpURLConnection2 = httpURLConnection;
                httpURLConnection2.setConnectTimeout(10000);
                httpURLConnection2.setReadTimeout(10000);
                httpURLConnection2.setDoInput(true);
                if (z3) {
                    httpURLConnection2.setRequestMethod("POST");
                    httpURLConnection2.setDoOutput(true);
                } else {
                    httpURLConnection2.setRequestMethod("GET");
                    httpURLConnection2.setDoOutput(false);
                }
                httpURLConnection2.setUseCaches(false);
                httpURLConnection2.setInstanceFollowRedirects(true);
                if (z4) {
                    httpURLConnection2.setRequestProperty("Content-Type", HttpHeaders.Values.APPLICATION_JSON);
                } else {
                    httpURLConnection2.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                }
                httpURLConnection2.setRequestProperty("connection", "Keep-Alive");
                if (map != null) {
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        httpURLConnection2.setRequestProperty(entry.getKey(), entry.getValue());
                    }
                }
                if (str2 != null) {
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection2.getOutputStream());
                    byte[] bytes = str2.getBytes("UTF-8");
                    dataOutputStream.write(bytes, 0, bytes.length);
                    dataOutputStream.flush();
                    dataOutputStream.close();
                }
                httpURLConnection2.connect();
                if (httpURLConnection2.getResponseCode() == 200) {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection2.getInputStream()));
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        sb.append(new String(readLine.getBytes("UTF-8")));
                    }
                    String sb2 = sb.toString();
                    bufferedReader.close();
                    responseCallBack.onSuccess(sb2);
                } else if (httpURLConnection2.getResponseCode() == 302) {
                    String headerField = httpURLConnection2.getHeaderField("Location");
                    if (headerField != null && !headerField.isEmpty()) {
                        httpURLConnection2.disconnect();
                        doHttpRequest(headerField, z3, z4, str2, null, network, responseCallBack);
                    } else {
                        responseCallBack.onError(httpURLConnection2.getResponseCode(), "获取重定向url失败");
                    }
                } else {
                    responseCallBack.onError(httpURLConnection2.getResponseCode(), "与服务端建立连接失败");
                }
            } catch (Exception e4) {
                Logger.e(e4.getMessage());
                responseCallBack.onError(10001, "网络连接出现异常:" + e4.toString());
                if (0 == 0) {
                    return;
                }
            }
            httpURLConnection2.disconnect();
        } catch (Throwable th) {
            if (0 != 0) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
    }

    public static void doPostRequestByForm(String str, Map<String, String> map, Map<String, String> map2, ResponseCallBack responseCallBack) {
        f54007b.execute(new f(str, map, map2, responseCallBack));
    }

    public static void doPostRequestByJson(String str, String str2, ResponseCallBack responseCallBack) {
        Logger.i("post request url:" + str + " args:" + str2);
        f54007b.execute(new e(str, str2, responseCallBack));
    }

    public static String map2Form(Map<String, String> map, String str) {
        StringBuilder sb = new StringBuilder();
        if (map != null && map.size() != 0) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                sb.append(entry.getKey());
                sb.append(SimpleComparison.EQUAL_TO_OPERATION);
                sb.append(URLEncoder.encode(entry.getValue(), str));
                sb.append(m.a.f72566d);
            }
            return sb.substring(0, sb.length() - 1);
        }
        return sb.toString();
    }
}
