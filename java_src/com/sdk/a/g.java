package com.sdk.a;

import android.content.Context;
import com.sdk.Unicorn.base.module.manager.SDKManager;
import java.util.UUID;
import javax.net.ssl.HostnameVerifier;
import org.apache.http.client.methods.HttpDeleteHC4;
import org.apache.http.client.methods.HttpHeadHC4;
import org.apache.http.client.methods.HttpOptionsHC4;
import org.apache.http.client.methods.HttpPutHC4;
import org.apache.http.client.methods.HttpTraceHC4;
/* loaded from: classes4.dex */
public class g<T> {

    /* renamed from: a  reason: collision with root package name */
    public static final String f56552a = "g";

    /* renamed from: b  reason: collision with root package name */
    public static boolean f56553b = com.sdk.f.g.f56647b;

    /* renamed from: c  reason: collision with root package name */
    public static final String f56554c = UUID.randomUUID().toString();

    /* renamed from: d  reason: collision with root package name */
    public static final HostnameVerifier f56555d = new f();

    /* renamed from: e  reason: collision with root package name */
    public Context f56556e;

    /* renamed from: f  reason: collision with root package name */
    public h<T> f56557f;

    /* loaded from: classes4.dex */
    public enum a {
        GET("GET"),
        POST("POST"),
        PUT(HttpPutHC4.METHOD_NAME),
        HEAD(HttpHeadHC4.METHOD_NAME),
        MOVE("MOVE"),
        COPY("COPY"),
        DELETE(HttpDeleteHC4.METHOD_NAME),
        OPTIONS(HttpOptionsHC4.METHOD_NAME),
        TRACE(HttpTraceHC4.METHOD_NAME),
        CONNECT("CONNECT");
        

        /* renamed from: l  reason: collision with root package name */
        public final String f56569l;

        a(String str) {
            this.f56569l = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f56569l;
        }
    }

    public g(Context context, h<T> hVar) {
        this.f56556e = context;
        this.f56557f = hVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x008a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008b  */
    @android.annotation.SuppressLint({"DefaultLocale"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.net.HttpURLConnection a(java.lang.String r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sdk.a.g.a(java.lang.String, boolean):java.net.HttpURLConnection");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.net.HttpURLConnection a(java.net.HttpURLConnection r12) {
        /*
            Method dump skipped, instructions count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sdk.a.g.a(java.net.HttpURLConnection):java.net.HttpURLConnection");
    }

    public String a() {
        StringBuilder sb;
        try {
            h<T> hVar = this.f56557f;
            if (hVar != null) {
                String str = hVar.f56572c;
                String str2 = hVar.f56573d;
                if (str.equals(a.GET.f56569l)) {
                    h<T> hVar2 = this.f56557f;
                    String a4 = hVar2.a(hVar2.f56575f);
                    if (!com.sdk.o.b.b(a4).booleanValue()) {
                        return str2;
                    }
                    sb = new StringBuilder();
                    sb.append(str2);
                    sb.append("?");
                    sb.append(a4);
                } else {
                    String str3 = this.f56557f.f56574e;
                    if (!com.sdk.o.b.b(str3).booleanValue()) {
                        return str2;
                    }
                    sb = new StringBuilder();
                    sb.append(str2);
                    sb.append("?unikey=");
                    sb.append(str3);
                }
                return sb.toString();
            }
            return null;
        } catch (Exception e4) {
            com.sdk.o.b.a(f56552a, e4.getMessage(), Boolean.valueOf(f56553b));
            return null;
        }
    }

    public final boolean a(String str) {
        return (!SDKManager.isStrong || str.contains("/api/netm/v1.0/qhbt") || str.contains("/api/netm/v1.0/qhbv") || str.contains("/st/api/v1.0/ses")) ? false : true;
    }
}
