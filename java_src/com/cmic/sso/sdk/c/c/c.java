package com.cmic.sso.sdk.c.c;

import android.net.Network;
import com.cmic.sso.sdk.c.b.g;
import com.cmic.sso.sdk.e.e;
import com.qq.e.comm.pi.ACTD;
import io.netty.handler.codec.http.HttpHeaders;
import java.util.HashMap;
import java.util.Map;
/* compiled from: HttpRequest.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    String f10869a;

    /* renamed from: b  reason: collision with root package name */
    private final String f10870b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, String> f10871c;

    /* renamed from: d  reason: collision with root package name */
    private final String f10872d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f10873e;

    /* renamed from: f  reason: collision with root package name */
    private final String f10874f;

    /* renamed from: g  reason: collision with root package name */
    private Network f10875g;

    /* renamed from: h  reason: collision with root package name */
    private long f10876h;

    /* renamed from: i  reason: collision with root package name */
    private final String f10877i;

    /* renamed from: j  reason: collision with root package name */
    private int f10878j;

    /* renamed from: k  reason: collision with root package name */
    private final g f10879k;

    private c(String str, Map<String, String> map, g gVar, String str2, String str3) {
        this.f10873e = false;
        this.f10870b = str;
        this.f10879k = gVar;
        this.f10871c = map == null ? new HashMap<>() : map;
        this.f10869a = gVar == null ? "" : gVar.b().toString();
        this.f10872d = str2;
        this.f10874f = str3;
        this.f10877i = gVar != null ? gVar.a() : "";
        l();
    }

    private void l() {
        this.f10871c.put("sdkVersion", com.cmic.sso.sdk.auth.c.SDK_VERSION);
        this.f10871c.put("Content-Type", HttpHeaders.Values.APPLICATION_JSON);
        this.f10871c.put("CMCC-EncryptType", "STD");
        this.f10871c.put("traceId", this.f10874f);
        this.f10871c.put(ACTD.APPID_KEY, this.f10877i);
        this.f10871c.put("Connection", "close");
    }

    public void a(String str, String str2) {
        this.f10871c.put(str, str2);
    }

    public boolean b() {
        return this.f10873e;
    }

    public Map<String, String> c() {
        return this.f10871c;
    }

    public String d() {
        return this.f10869a;
    }

    public String e() {
        return this.f10872d;
    }

    public String f() {
        return this.f10874f;
    }

    public boolean g() {
        return !e.a(this.f10874f) || this.f10870b.contains("logReport") || this.f10870b.contains("uniConfig");
    }

    public Network h() {
        return this.f10875g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long i() {
        return this.f10876h;
    }

    public boolean j() {
        int i2 = this.f10878j;
        this.f10878j = i2 + 1;
        return i2 < 2;
    }

    public g k() {
        return this.f10879k;
    }

    public String a() {
        return this.f10870b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z3) {
        this.f10873e = z3;
    }

    public void a(Network network) {
        this.f10875g = network;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j4) {
        this.f10876h = j4;
    }

    public c(String str, g gVar, String str2, String str3) {
        this(str, null, gVar, str2, str3);
    }
}
