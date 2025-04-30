package com.cmic.sso.sdk.a;

import android.text.TextUtils;
import com.cmic.sso.sdk.a.a;
import com.cmic.sso.sdk.e.k;
import com.cmic.sso.sdk.e.n;
import com.j256.ormlite.stmt.query.SimpleComparison;
import org.json.JSONObject;
/* compiled from: UmcConfigHandle.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: c  reason: collision with root package name */
    private static b f10704c;

    /* renamed from: a  reason: collision with root package name */
    private com.cmic.sso.sdk.a.a f10705a;

    /* renamed from: b  reason: collision with root package name */
    private final com.cmic.sso.sdk.a.a f10706b;

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f10707d = false;

    /* renamed from: e  reason: collision with root package name */
    private a f10708e;

    /* compiled from: UmcConfigHandle.java */
    /* loaded from: classes2.dex */
    interface a {
        void a(com.cmic.sso.sdk.a.a aVar);
    }

    private b(boolean z3) {
        com.cmic.sso.sdk.a.a a4 = new a.C0047a().a();
        this.f10706b = a4;
        if (!z3) {
            this.f10705a = d();
        } else {
            this.f10705a = a4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.cmic.sso.sdk.a.a d() {
        return new a.C0047a().a(d.b(this.f10706b.a())).c(d.a(this.f10706b.c())).b(d.b(this.f10706b.b())).d(d.c(this.f10706b.d())).d(d.a(this.f10706b.h())).e(d.b(this.f10706b.i())).a(d.e(this.f10706b.e())).b(d.d(this.f10706b.f())).c(d.c(this.f10706b.g())).f(d.f(this.f10706b.j())).a(d.a(this.f10706b.k())).b(d.b(this.f10706b.l())).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.cmic.sso.sdk.a aVar) {
        if (this.f10707d) {
            com.cmic.sso.sdk.e.c.a("UmcConfigHandle", "正在获取配置中...");
            return;
        }
        this.f10707d = true;
        com.cmic.sso.sdk.c.c.a.a().a(false, aVar, new com.cmic.sso.sdk.c.c.d() { // from class: com.cmic.sso.sdk.a.b.1
            @Override // com.cmic.sso.sdk.c.c.d
            public void a(String str, String str2, JSONObject jSONObject) {
                try {
                    if ("103000".equals(str)) {
                        b.this.a(jSONObject);
                        k.a("sdk_config_version", com.cmic.sso.sdk.auth.c.SDK_VERSION);
                        b bVar = b.this;
                        bVar.f10705a = bVar.d();
                        if (b.this.f10708e != null) {
                            b.this.f10708e.a(b.this.f10705a);
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                b.this.f10707d = false;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        k.a b4 = k.b("sso_config_xf");
        b4.c();
        b4.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(a aVar) {
        this.f10708e = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.cmic.sso.sdk.a.a b() {
        return this.f10705a;
    }

    public static b a(boolean z3) {
        if (f10704c == null) {
            synchronized (b.class) {
                if (f10704c == null) {
                    f10704c = new b(z3);
                }
            }
        }
        return f10704c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.cmic.sso.sdk.a.a a() {
        return this.f10706b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject) {
        k.a b4 = k.b("sso_config_xf");
        try {
            if (jSONObject.has("client_valid")) {
                b4.a("client_valid", System.currentTimeMillis() + (Integer.parseInt(jSONObject.getString("client_valid")) * 60 * 60 * 1000));
            }
            if (jSONObject.has("Configlist")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("Configlist");
                if (jSONObject2.has("CHANGE_HOST")) {
                    String string = jSONObject2.getString("CHANGE_HOST");
                    if (string.contains("M007")) {
                        String a4 = a(string, "M007");
                        if (!TextUtils.isEmpty(a4)) {
                            b4.a("logHost", a4);
                        }
                    }
                    if (string.contains("M008")) {
                        String a5 = a(string, "M008");
                        if (!TextUtils.isEmpty(a5)) {
                            b4.a("https_get_phone_scrip_host", a5);
                        }
                    }
                    if (string.contains("M009")) {
                        String a6 = a(string, "M009");
                        if (!TextUtils.isEmpty(a6)) {
                            b4.a("config_host", a6);
                        }
                    }
                } else {
                    b4.a("logHost");
                    b4.a("https_get_phone_scrip_host");
                    b4.a("config_host");
                }
                a(jSONObject2, "CLOSE_FRIEND_WAPKS", "0", b4);
                a(jSONObject2, "CLOSE_LOGS_VERSION", "0", b4);
                a(jSONObject2, "CLOSE_IPV4_LIST", "0", b4);
                a(jSONObject2, "CLOSE_IPV6_LIST", "0", b4);
                a(jSONObject2, "CLOSE_M008_SDKVERSION_LIST", "0", b4);
                a(jSONObject2, "CLOSE_M008_APPID_LIST", "0", b4);
                if (jSONObject2.has("LOGS_CONTROL")) {
                    String[] split = jSONObject2.getString("LOGS_CONTROL").replace("h", "").split(m.a.f72566d);
                    if (split.length == 2 && !TextUtils.isEmpty(split[0]) && !TextUtils.isEmpty(split[1])) {
                        try {
                            int parseInt = Integer.parseInt(split[0]);
                            int parseInt2 = Integer.parseInt(split[1]);
                            b4.a("maxFailedLogTimes", parseInt);
                            b4.a("pauseTime", parseInt2);
                        } catch (Exception unused) {
                            com.cmic.sso.sdk.e.c.a("UmcConfigHandle", "解析日志上报限制时间次数异常");
                        }
                    }
                } else {
                    b4.a("maxFailedLogTimes");
                    b4.a("pauseTime");
                }
            }
            b4.b();
        } catch (Exception e4) {
            com.cmic.sso.sdk.e.c.a("UmcConfigHandle", "配置项异常，配置失效");
            e4.printStackTrace();
        }
    }

    private String a(String str, String str2) {
        String str3;
        String[] split = str.split(m.a.f72566d);
        int length = split.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                str3 = "";
                break;
            }
            str3 = split[i2];
            if (str3.contains(str2)) {
                break;
            }
            i2++;
        }
        return !TextUtils.isEmpty(str3) ? str3.substring(str3.lastIndexOf(SimpleComparison.EQUAL_TO_OPERATION) + 1) : str3;
    }

    private void a(JSONObject jSONObject, String str, String str2, k.a aVar) {
        if (jSONObject.has(str)) {
            String optString = jSONObject.optString(str, str2);
            if (!"CLOSE_FRIEND_WAPKS".equals(str)) {
                if (!"0".equals(optString) && !"1".equals(optString)) {
                    return;
                }
            } else if (TextUtils.isEmpty(optString)) {
                return;
            } else {
                if (!optString.contains("CU") && !optString.contains("CT") && !optString.contains("CM")) {
                    return;
                }
            }
            aVar.a(str, jSONObject.optString(str, str2));
            return;
        }
        aVar.a(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final com.cmic.sso.sdk.a aVar) {
        if (d.a()) {
            n.a(new n.a() { // from class: com.cmic.sso.sdk.a.b.2
                @Override // com.cmic.sso.sdk.e.n.a
                protected void a() {
                    com.cmic.sso.sdk.e.c.b("UmcConfigHandle", "开始拉取配置..");
                    b.this.b(aVar);
                }
            });
        }
    }
}
