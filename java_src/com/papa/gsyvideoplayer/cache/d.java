package com.papa.gsyvideoplayer.cache;

import java.util.HashMap;
import java.util.Map;
/* compiled from: ProxyCacheUserAgentHeadersInjector.java */
/* loaded from: classes4.dex */
public class d implements w.b {

    /* renamed from: a  reason: collision with root package name */
    public static final Map<String, String> f54959a = new HashMap();

    @Override // w.b
    public Map<String, String> a(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("****** proxy addHeaders ****** ");
        Map<String, String> map = f54959a;
        sb.append(map.size());
        com.papa.gsyvideoplayer.utils.c.h(sb.toString());
        return map;
    }
}
