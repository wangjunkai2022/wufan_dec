package com.sdk.o;

import android.net.Uri;
import com.sdk.f.b;
import com.sdk.r.d;
import io.netty.handler.codec.rtsp.RtspHeaders;
import java.util.List;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static com.sdk.f.b f56676a;

    public static com.sdk.f.b a() {
        if (f56676a == null) {
            b();
        }
        return f56676a;
    }

    public static void a(String str) {
        if (b.b(str).booleanValue() && b.a(f56676a.f56639c).booleanValue()) {
            Uri parse = Uri.parse(str);
            String queryParameter = parse.getQueryParameter("sequenceNumber");
            String queryParameter2 = parse.getQueryParameter("ret_url");
            if (b.b(queryParameter2).booleanValue()) {
                queryParameter = Uri.parse(d.a(queryParameter2)).getQueryParameter(RtspHeaders.Values.SEQ);
            }
            f56676a.f56639c = queryParameter;
        }
    }

    public static void b() {
        f56676a = new com.sdk.f.b();
    }

    public static void b(String str) {
        try {
            List<String> list = f56676a.f56638b.f56641b;
            list.add(str);
            f56676a.f56638b.f56641b = list;
        } catch (Throwable unused) {
        }
    }

    public static void c(String str) {
        try {
            List<String> list = f56676a.f56638b.f56642c;
            list.add(str);
            f56676a.f56638b.f56642c = list;
        } catch (Throwable unused) {
        }
    }

    public static void d(String str) {
        try {
            f56676a.f56638b.f56643d = str;
        } catch (Throwable unused) {
        }
    }

    public static void a(String str, long j4) {
        try {
            a(str);
            List<b.a.C0284a> list = f56676a.f56638b.f56640a;
            b.a.C0284a c0284a = new b.a.C0284a();
            c0284a.f56644a = str;
            c0284a.f56645b = j4;
            list.add(c0284a);
            f56676a.f56638b.f56640a = list;
        } catch (Throwable unused) {
        }
    }
}
