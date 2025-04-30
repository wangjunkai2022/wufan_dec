package com.alipay.android.phone.mrpc.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.Header;
/* loaded from: classes2.dex */
public final class c0 extends d {

    /* renamed from: c  reason: collision with root package name */
    String f9429c;

    /* renamed from: d  reason: collision with root package name */
    byte[] f9430d;

    /* renamed from: h  reason: collision with root package name */
    boolean f9434h;

    /* renamed from: f  reason: collision with root package name */
    ArrayList<Header> f9432f = new ArrayList<>();

    /* renamed from: g  reason: collision with root package name */
    private Map<String, String> f9433g = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    String f9431e = "application/x-www-form-urlencoded";

    public c0(String str) {
        this.f9429c = str;
    }

    private void g(boolean z3) {
        this.f9434h = z3;
    }

    private void h(byte[] bArr) {
        this.f9430d = bArr;
    }

    private String i() {
        return this.f9429c;
    }

    private void j(String str) {
        this.f9431e = str;
    }

    private byte[] k() {
        return this.f9430d;
    }

    private String l() {
        return this.f9431e;
    }

    private ArrayList<Header> m() {
        return this.f9432f;
    }

    private boolean n() {
        return this.f9434h;
    }

    public final String d(String str) {
        Map<String, String> map = this.f9433g;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    public final void e(String str, String str2) {
        if (this.f9433g == null) {
            this.f9433g = new HashMap();
        }
        this.f9433g.put(str, str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && c0.class == obj.getClass()) {
            c0 c0Var = (c0) obj;
            byte[] bArr = this.f9430d;
            if (bArr == null) {
                if (c0Var.f9430d != null) {
                    return false;
                }
            } else if (!bArr.equals(c0Var.f9430d)) {
                return false;
            }
            String str = this.f9429c;
            String str2 = c0Var.f9429c;
            if (str == null) {
                if (str2 != null) {
                    return false;
                }
            } else if (!str.equals(str2)) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final void f(Header header) {
        this.f9432f.add(header);
    }

    public final int hashCode() {
        Map<String, String> map = this.f9433g;
        int hashCode = ((map == null || !map.containsKey("id")) ? 1 : this.f9433g.get("id").hashCode() + 31) * 31;
        String str = this.f9429c;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return String.format("Url : %s,HttpHeader: %s", this.f9429c, this.f9432f);
    }
}
