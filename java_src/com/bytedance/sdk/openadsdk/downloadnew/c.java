package com.bytedance.sdk.openadsdk.downloadnew;

import android.text.TextUtils;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
/* compiled from: TTDownloadLibUrlConnection4DZ.java */
/* loaded from: classes2.dex */
public class c {

    /* compiled from: TTDownloadLibUrlConnection4DZ.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public InputStream f10632a;

        /* renamed from: b  reason: collision with root package name */
        public Map<String, String> f10633b;

        /* renamed from: c  reason: collision with root package name */
        public int f10634c;

        /* renamed from: d  reason: collision with root package name */
        public HttpURLConnection f10635d;

        public a(InputStream inputStream, Map<String, String> map, int i2, HttpURLConnection httpURLConnection) {
            this.f10632a = inputStream;
            this.f10633b = map;
            this.f10634c = i2;
            this.f10635d = httpURLConnection;
        }
    }

    public static HttpURLConnection a(String str, Map<String, String> map) {
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2;
        HttpURLConnection httpURLConnection3 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        } catch (Exception unused) {
        }
        try {
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setRequestProperty("accept", "*/*");
            httpURLConnection.setRequestProperty("connection", "Keep-Alive");
            if (map != null && !map.isEmpty()) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                }
            }
            httpURLConnection.connect();
            int responseCode = httpURLConnection.getResponseCode();
            return ((responseCode < 200 || responseCode >= 300) && responseCode >= 300 && responseCode < 400) ? a(httpURLConnection.getHeaderField("Location"), map) : httpURLConnection;
        } catch (Exception unused2) {
            httpURLConnection3 = httpURLConnection2;
            return httpURLConnection3;
        }
    }

    public static Map<String, String> a(HttpURLConnection httpURLConnection) {
        HashMap hashMap = new HashMap();
        int size = httpURLConnection.getHeaderFields().size();
        for (int i2 = 0; i2 < size; i2++) {
            hashMap.put(httpURLConnection.getHeaderFieldKey(i2), httpURLConnection.getHeaderField(i2));
        }
        return hashMap;
    }

    public static a a(String str, List<com.ss.android.socialbase.downloader.model.c> list) throws IOException {
        int responseCode;
        HashMap hashMap = new HashMap();
        if (list != null && !list.isEmpty()) {
            for (com.ss.android.socialbase.downloader.model.c cVar : list) {
                hashMap.put(cVar.a(), cVar.b());
            }
        }
        HttpURLConnection a4 = a(str, hashMap);
        if (a4 != null && (responseCode = a4.getResponseCode()) >= 200 && responseCode < 300) {
            Map<String, String> a5 = a(a4);
            InputStream inputStream = a4.getInputStream();
            String contentEncoding = a4.getContentEncoding();
            if (!TextUtils.isEmpty(contentEncoding) && contentEncoding.contains("gzip")) {
                inputStream = new GZIPInputStream(inputStream);
            }
            return new a(inputStream, a5, responseCode, a4);
        }
        return null;
    }
}
