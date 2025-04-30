package cn.com.chinatelecom.account.api.d;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import cn.com.chinatelecom.account.api.CtAuth;
import java.io.BufferedOutputStream;
import java.io.DataOutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
/* loaded from: classes2.dex */
public abstract class f implements e {

    /* renamed from: b  reason: collision with root package name */
    private static final String f8590b = "f";

    /* renamed from: a  reason: collision with root package name */
    protected Context f8591a;

    public f(Context context) {
        this.f8591a = context;
    }

    public static void a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager.getNetworkInfo(5).getState().compareTo(NetworkInfo.State.CONNECTED) == 0) {
                int a4 = cn.com.chinatelecom.account.api.c.c.a(cn.com.chinatelecom.account.api.c.c.b(str));
                Class<?> cls = Class.forName("android.net.ConnectivityManager");
                Class<?> cls2 = Integer.TYPE;
                ((Boolean) cls.getMethod("requestRouteToHost", cls2, cls2).invoke(connectivityManager, 5, Integer.valueOf(a4))).booleanValue();
            }
        } catch (Throwable th) {
            CtAuth.warn(f8590b, "http doPost > requestUrlToRoute error", th);
        }
    }

    private boolean b() {
        return cn.com.chinatelecom.account.api.e.g.c(this.f8591a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a() {
        return Build.VERSION.SDK_INT >= 21;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(String str) {
        return str.startsWith("https");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(boolean z3, String str) {
        return z3 && str != null && Build.VERSION.SDK_INT >= 17;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public HttpURLConnection d(String str, String str2, int i2, g gVar) {
        URL url = new URL(str);
        HttpURLConnection httpURLConnection = (HttpURLConnection) ((gVar.f8592a == null || !a()) ? url.openConnection() : gVar.f8592a.openConnection(url));
        httpURLConnection.setRequestProperty("accept", "*/*");
        if (i2 == 0) {
            httpURLConnection.setRequestMethod("GET");
        } else {
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
        }
        httpURLConnection.setConnectTimeout(gVar.a());
        httpURLConnection.setReadTimeout(gVar.b());
        httpURLConnection.setUseCaches(false);
        if (!b() && !a()) {
            httpURLConnection.setInstanceFollowRedirects(false);
        }
        httpURLConnection.addRequestProperty("Accept-Charset", "UTF-8");
        httpURLConnection.addRequestProperty("reqId", gVar.f8595d);
        httpURLConnection.addRequestProperty("deviceId", cn.com.chinatelecom.account.api.e.d.a(this.f8591a));
        if (TextUtils.isEmpty(str2)) {
            httpURLConnection.connect();
        } else {
            DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(httpURLConnection.getOutputStream()));
            dataOutputStream.write(str2.getBytes("UTF-8"));
            dataOutputStream.flush();
            dataOutputStream.close();
        }
        return httpURLConnection;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public HttpsURLConnection e(String str, String str2, int i2, g gVar) {
        URL url = new URL(str);
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) ((gVar.f8592a == null || !a()) ? url.openConnection() : gVar.f8592a.openConnection(url));
        httpsURLConnection.setRequestProperty("accept", "*/*");
        if (i2 == 0) {
            httpsURLConnection.setRequestMethod("GET");
        } else {
            httpsURLConnection.setRequestMethod("POST");
            httpsURLConnection.setDoOutput(true);
            httpsURLConnection.setDoInput(true);
        }
        httpsURLConnection.setConnectTimeout(gVar.a());
        httpsURLConnection.setReadTimeout(gVar.b());
        httpsURLConnection.setUseCaches(false);
        if (!b() && !a()) {
            httpsURLConnection.setInstanceFollowRedirects(false);
        }
        httpsURLConnection.addRequestProperty("Accept-Charset", "UTF-8");
        httpsURLConnection.addRequestProperty("reqId", gVar.f8595d);
        httpsURLConnection.addRequestProperty("deviceId", cn.com.chinatelecom.account.api.e.d.a(this.f8591a));
        Map<String, String> map = gVar.f8600i;
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<String, String> entry : gVar.f8600i.entrySet()) {
                httpsURLConnection.addRequestProperty(entry.getKey(), entry.getValue());
            }
        }
        if (TextUtils.isEmpty(str2)) {
            httpsURLConnection.connect();
        } else {
            DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(httpsURLConnection.getOutputStream()));
            dataOutputStream.write(str2.getBytes("UTF-8"));
            dataOutputStream.flush();
            dataOutputStream.close();
        }
        return httpsURLConnection;
    }
}
