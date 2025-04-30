package com.facebook.rebound;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: SpringConfigRegistry.java */
/* loaded from: classes2.dex */
public class l {

    /* renamed from: b  reason: collision with root package name */
    private static final l f13472b = new l(true);

    /* renamed from: a  reason: collision with root package name */
    private final Map<k, String> f13473a = new HashMap();

    l(boolean z3) {
        if (z3) {
            a(k.f13469c, "default config");
        }
    }

    public static l c() {
        return f13472b;
    }

    public boolean a(k kVar, String str) {
        if (kVar != null) {
            if (str != null) {
                if (this.f13473a.containsKey(kVar)) {
                    return false;
                }
                this.f13473a.put(kVar, str);
                return true;
            }
            throw new IllegalArgumentException("configName is required");
        }
        throw new IllegalArgumentException("springConfig is required");
    }

    public Map<k, String> b() {
        return Collections.unmodifiableMap(this.f13473a);
    }

    public void d() {
        this.f13473a.clear();
    }

    public boolean e(k kVar) {
        if (kVar != null) {
            return this.f13473a.remove(kVar) != null;
        }
        throw new IllegalArgumentException("springConfig is required");
    }
}
