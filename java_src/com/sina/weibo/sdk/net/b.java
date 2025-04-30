package com.sina.weibo.sdk.net;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
/* loaded from: classes4.dex */
public final class b implements a {
    @Override // com.sina.weibo.sdk.net.a
    public final f a(d dVar) {
        InputStream errorStream;
        String url = dVar.getUrl();
        Bundle params = dVar.getParams();
        if (params != null && params.size() != 0 && !TextUtils.isEmpty(url)) {
            Uri parse = Uri.parse(url);
            if (!params.isEmpty()) {
                Uri.Builder buildUpon = parse.buildUpon();
                for (String str : params.keySet()) {
                    buildUpon.appendQueryParameter(str, String.valueOf(params.get(str)));
                }
                parse = buildUpon.build();
            }
            if (parse != null) {
                url = parse.toString();
            }
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(url).openConnection();
        try {
            try {
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
                httpURLConnection.setRequestProperty("Charset", "UTF-8");
                Bundle bundle = new Bundle();
                bundle.putString("Content-Type", "application/x-www-form-urlencoded");
                a(httpURLConnection, bundle);
                httpURLConnection.setDoInput(true);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setReadTimeout(dVar.getReadTimeout());
                httpURLConnection.setConnectTimeout(dVar.getConnectTimeout());
                httpURLConnection.connect();
                a(httpURLConnection.getOutputStream(), dVar);
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 200) {
                    errorStream = httpURLConnection.getInputStream();
                } else {
                    errorStream = httpURLConnection.getErrorStream();
                }
                g gVar = new g(responseCode, errorStream);
                httpURLConnection.disconnect();
                return gVar;
            } catch (Exception e4) {
                throw new Throwable(e4.getMessage());
            }
        } catch (Throwable th) {
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    private static void a(HttpURLConnection httpURLConnection, Bundle bundle) {
        for (String str : bundle.keySet()) {
            httpURLConnection.addRequestProperty(str, String.valueOf(bundle.get(str)));
        }
    }

    private static void a(OutputStream outputStream, d dVar) {
        Bundle d4 = dVar.d();
        StringBuilder sb = new StringBuilder();
        boolean z3 = true;
        for (String str : d4.keySet()) {
            if (z3) {
                z3 = false;
            } else {
                sb.append(m.a.f72566d);
            }
            String valueOf = String.valueOf(d4.get(str));
            try {
                sb.append(URLEncoder.encode(str, "UTF-8"));
                sb.append(SimpleComparison.EQUAL_TO_OPERATION);
                sb.append(URLEncoder.encode(valueOf, "UTF-8"));
            } catch (UnsupportedEncodingException e4) {
                e4.printStackTrace();
            }
        }
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
            dataOutputStream.write(sb.toString().getBytes("UTF-8"));
            dataOutputStream.close();
        } catch (IOException e5) {
            e5.printStackTrace();
        }
    }
}
