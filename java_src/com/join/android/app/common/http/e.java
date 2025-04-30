package com.join.android.app.common.http;

import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.dto.PayCenterOrderRequest;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;
/* compiled from: OkHttpUtil.java */
/* loaded from: classes.dex */
public class e<E> {

    /* renamed from: a  reason: collision with root package name */
    private static final OkHttpClient f17062a = new OkHttpClient.Builder().connectTimeout(5, TimeUnit.SECONDS).retryOnConnectionFailure(true).build();

    /* renamed from: b  reason: collision with root package name */
    private static final String f17063b = "UTF-8";

    /* compiled from: OkHttpUtil.java */
    /* loaded from: classes.dex */
    class a implements Callback {
        a() {
        }

        public void a(Request request, IOException iOException) {
        }

        public void b(Response response) throws IOException {
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

    static {
        System.setProperty("http.maxConnections", PayCenterOrderRequest.PAY_TYPE_RECHARGE);
    }

    public static String a(String str, String str2, String str3) {
        return str + "?" + str2 + SimpleComparison.EQUAL_TO_OPERATION + str3;
    }

    public static String b(String str, List<BasicNameValuePair> list) {
        return str + "?" + e(list);
    }

    public static void c(Request request) {
        f17062a.newCall(request).enqueue(new a());
    }

    public static Response d(Request request) throws IOException {
        return f17062a.newCall(request).execute();
    }

    public static String e(List<BasicNameValuePair> list) {
        return URLEncodedUtils.format(list, "UTF-8");
    }

    public static void f(String str, Callback callback) {
        f17062a.newCall(new Request.Builder().url(str).build()).enqueue(callback);
    }

    public static OkHttpClient g() {
        return f17062a;
    }

    public static String h(String str) throws IOException {
        Response d4 = d(new Request.Builder().url(str).build());
        if (d4.isSuccessful()) {
            return d4.body().string();
        }
        throw new IOException("Unexpected code " + d4);
    }
}
