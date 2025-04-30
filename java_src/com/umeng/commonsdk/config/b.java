package com.umeng.commonsdk.config;

import java.util.HashMap;
import java.util.Map;
/* compiled from: CollectController.java */
/* loaded from: classes4.dex */
public class b implements f {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, Boolean> f61000a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static Object f61001b = new Object();

    /* compiled from: CollectController.java */
    /* loaded from: classes4.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final b f61002a = new b();

        private a() {
        }
    }

    public static b b() {
        return a.f61002a;
    }

    public void a() {
        synchronized (f61001b) {
            f61000a.clear();
        }
    }

    private b() {
    }

    public static boolean a(String str) {
        if (d.a(str)) {
            synchronized (f61001b) {
                if (f61000a.containsKey(str)) {
                    return f61000a.get(str).booleanValue();
                }
                return true;
            }
        }
        return false;
    }

    @Override // com.umeng.commonsdk.config.f
    public void a(String str, Boolean bool) {
        if (d.a(str)) {
            synchronized (f61001b) {
                Map<String, Boolean> map = f61000a;
                if (map != null) {
                    map.put(str, bool);
                }
            }
        }
    }
}
