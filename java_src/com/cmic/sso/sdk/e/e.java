package com.cmic.sso.sdk.e;

import com.cmic.sso.sdk.auth.TokenListener;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: OverTimeUtils.java */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static ConcurrentHashMap<String, TokenListener> f10920a = new ConcurrentHashMap<>(16);

    /* renamed from: b  reason: collision with root package name */
    private static ConcurrentHashMap<String, com.cmic.sso.sdk.a> f10921b = new ConcurrentHashMap<>();

    public static boolean a(String str) {
        return !f10920a.containsKey(str);
    }

    public static void b(String str) {
        f10920a.remove(str);
    }

    public static TokenListener c(String str) {
        return f10920a.get(str);
    }

    public static com.cmic.sso.sdk.a d(String str) {
        if (str != null) {
            return f10921b.get(str);
        }
        return new com.cmic.sso.sdk.a(0);
    }

    public static void a(String str, TokenListener tokenListener) {
        f10920a.put(str, tokenListener);
    }

    public static boolean a() {
        return f10920a.isEmpty();
    }

    public static void a(String str, com.cmic.sso.sdk.a aVar) {
        if (str == null || aVar == null) {
            return;
        }
        f10921b.put(str, aVar);
    }
}
