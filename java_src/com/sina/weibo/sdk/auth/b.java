package com.sina.weibo.sdk.auth;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: e  reason: collision with root package name */
    private Map<String, WbAuthListener> f56724e;

    /* loaded from: classes4.dex */
    static class a {

        /* renamed from: f  reason: collision with root package name */
        private static final b f56725f = new b((byte) 0);
    }

    /* synthetic */ b(byte b4) {
        this();
    }

    public static synchronized b b() {
        b bVar;
        synchronized (b.class) {
            bVar = a.f56725f;
        }
        return bVar;
    }

    public final synchronized void a(String str, WbAuthListener wbAuthListener) {
        if (!TextUtils.isEmpty(str) && wbAuthListener != null) {
            this.f56724e.put(str, wbAuthListener);
        }
    }

    private b() {
        this.f56724e = new HashMap();
    }

    public final synchronized void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f56724e.remove(str);
    }

    public final synchronized WbAuthListener a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f56724e.get(str);
    }
}
