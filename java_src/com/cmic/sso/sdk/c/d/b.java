package com.cmic.sso.sdk.c.d;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: HttpSuccessResponse.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private int f10882a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, List<String>> f10883b;

    /* renamed from: c  reason: collision with root package name */
    private String f10884c;

    public b(int i2, Map<String, List<String>> map, String str) {
        this.f10882a = i2;
        this.f10883b = map;
        this.f10884c = str;
    }

    public int a() {
        return this.f10882a;
    }

    public Map<String, List<String>> b() {
        Map<String, List<String>> map = this.f10883b;
        return map == null ? new HashMap() : map;
    }

    public String c() {
        String str = this.f10884c;
        return str == null ? "" : str;
    }

    public boolean d() {
        int i2 = this.f10882a;
        return i2 == 302 || i2 == 301;
    }
}
