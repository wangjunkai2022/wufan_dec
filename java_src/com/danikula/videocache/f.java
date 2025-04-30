package com.danikula.videocache;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: GetRequest.java */
/* loaded from: classes2.dex */
class f {

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f11085d = Pattern.compile("[R,r]ange:[ ]?bytes=(\\d*)-");

    /* renamed from: e  reason: collision with root package name */
    private static final Pattern f11086e = Pattern.compile("GET /(.*) HTTP");

    /* renamed from: a  reason: collision with root package name */
    public final String f11087a;

    /* renamed from: b  reason: collision with root package name */
    public final long f11088b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f11089c;

    public f(String str) {
        n.d(str);
        long a4 = a(str);
        this.f11088b = Math.max(0L, a4);
        this.f11089c = a4 >= 0;
        this.f11087a = b(str);
    }

    private long a(String str) {
        Matcher matcher = f11085d.matcher(str);
        if (matcher.find()) {
            return Long.parseLong(matcher.group(1));
        }
        return -1L;
    }

    private String b(String str) {
        Matcher matcher = f11086e.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        throw new IllegalArgumentException("Invalid request `" + str + "`: url not found!");
    }

    public static f c(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (!TextUtils.isEmpty(readLine)) {
                sb.append(readLine);
                sb.append('\n');
            } else {
                return new f(sb.toString());
            }
        }
    }

    public String toString() {
        return "GetRequest{rangeOffset=" + this.f11088b + ", partial=" + this.f11089c + ", uri='" + this.f11087a + "'}";
    }
}
