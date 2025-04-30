package com.sdk.a;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import com.sdk.a.g;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static long f56524a = 60000;

    /* renamed from: b  reason: collision with root package name */
    public static final ConcurrentHashMap<String, Boolean> f56525b;

    /* renamed from: c  reason: collision with root package name */
    public final com.sdk.b.c<String, String> f56526c;

    /* renamed from: d  reason: collision with root package name */
    public int f56527d;

    static {
        ConcurrentHashMap<String, Boolean> concurrentHashMap = new ConcurrentHashMap<>(10);
        f56525b = concurrentHashMap;
        concurrentHashMap.put(g.a.GET.f56569l, Boolean.TRUE);
        new ConcurrentHashMap(10);
    }

    public d() {
        this.f56527d = 102400;
        this.f56527d = 102400;
        f56524a = 60000L;
        this.f56526c = new c(this, 102400);
    }

    public String a(String str) {
        if (str != null) {
            return this.f56526c.a((com.sdk.b.c<String, String>) str);
        }
        return null;
    }

    public void a(String str, String str2, long j4) {
        if (str == null || str2 == null || j4 < 1) {
            return;
        }
        this.f56526c.a(str, str2, System.currentTimeMillis() + j4);
    }

    @SuppressLint({"DefaultLocale"})
    public boolean b(String str) {
        Boolean bool;
        if (TextUtils.isEmpty(str) || (bool = f56525b.get(str.toUpperCase())) == null) {
            return false;
        }
        return bool.booleanValue();
    }
}
