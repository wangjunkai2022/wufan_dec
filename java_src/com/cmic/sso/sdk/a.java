package com.cmic.sso.sdk;

import com.cmic.sso.sdk.a.a;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: ConcurrentBundle.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private ConcurrentHashMap<String, Object> f10690a;

    public a(int i2) {
        this.f10690a = new ConcurrentHashMap<>(i2);
    }

    public void a(String str, byte[] bArr) {
        if (str == null || bArr == null) {
            return;
        }
        this.f10690a.put(str, bArr);
    }

    public String b(String str) {
        return b(str, "");
    }

    public int c(String str) {
        return b(str, 0);
    }

    public byte[] a(String str) {
        if (str != null) {
            return (byte[]) this.f10690a.get(str);
        }
        return null;
    }

    public String b(String str, String str2) {
        return (str == null || !this.f10690a.containsKey(str)) ? str2 : (String) this.f10690a.get(str);
    }

    public void a(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        this.f10690a.put(str, str2);
    }

    public void a(String str, boolean z3) {
        if (str != null) {
            this.f10690a.put(str, Boolean.valueOf(z3));
        }
    }

    public boolean b(String str, boolean z3) {
        return (str == null || !this.f10690a.containsKey(str)) ? z3 : ((Boolean) this.f10690a.get(str)).booleanValue();
    }

    public void a(String str, int i2) {
        if (str != null) {
            this.f10690a.put(str, Integer.valueOf(i2));
        }
    }

    public void a(String str, long j4) {
        if (str != null) {
            this.f10690a.put(str, Long.valueOf(j4));
        }
    }

    public int b(String str, int i2) {
        return (str == null || !this.f10690a.containsKey(str)) ? i2 : ((Integer) this.f10690a.get(str)).intValue();
    }

    public void a(com.cmic.sso.sdk.d.b bVar) {
        if (bVar != null) {
            this.f10690a.put("logBean", bVar);
        }
    }

    public com.cmic.sso.sdk.d.b a() {
        com.cmic.sso.sdk.d.b bVar = (com.cmic.sso.sdk.d.b) this.f10690a.get("logBean");
        return bVar != null ? bVar : new com.cmic.sso.sdk.d.b();
    }

    public long b(String str, long j4) {
        return (str == null || !this.f10690a.containsKey(str)) ? j4 : ((Long) this.f10690a.get(str)).longValue();
    }

    public void a(com.cmic.sso.sdk.a.a aVar) {
        if (aVar != null) {
            this.f10690a.put("current_config", aVar);
        }
    }

    public com.cmic.sso.sdk.a.a b() {
        com.cmic.sso.sdk.a.a aVar = (com.cmic.sso.sdk.a.a) this.f10690a.get("current_config");
        if (aVar != null) {
            return aVar;
        }
        com.cmic.sso.sdk.e.c.a("UmcConfigBean为空", "请核查");
        return new a.C0047a().a();
    }
}
