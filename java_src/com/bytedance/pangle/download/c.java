package com.bytedance.pangle.download;

import android.os.Handler;
import android.os.Looper;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public class c {

    /* renamed from: e  reason: collision with root package name */
    private static volatile c f10184e;

    /* renamed from: a  reason: collision with root package name */
    final Map<String, Long> f10185a = new ConcurrentHashMap();

    /* renamed from: b  reason: collision with root package name */
    public final Handler f10186b = new Handler(Looper.getMainLooper());

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, Runnable> f10187c = new ConcurrentHashMap();

    /* renamed from: d  reason: collision with root package name */
    final Map<String, Runnable> f10188d = new ConcurrentHashMap();

    private c() {
    }

    public static c a() {
        if (f10184e == null) {
            synchronized (c.class) {
                if (f10184e == null) {
                    f10184e = new c();
                }
            }
        }
        return f10184e;
    }
}
