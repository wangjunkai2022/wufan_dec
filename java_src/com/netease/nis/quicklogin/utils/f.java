package com.netease.nis.quicklogin.utils;

import android.annotation.SuppressLint;
import android.content.Context;
/* compiled from: StatisticsUploader.java */
/* loaded from: classes4.dex */
public class f {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: b  reason: collision with root package name */
    private static volatile f f54310b;

    /* renamed from: a  reason: collision with root package name */
    private final a f54311a = new a();

    /* compiled from: StatisticsUploader.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        String f54312a;
    }

    private f() {
    }

    public static f a() {
        if (f54310b == null) {
            synchronized (g.class) {
                if (f54310b == null) {
                    f54310b = new f();
                }
            }
        }
        return f54310b;
    }

    public void a(String str) {
        this.f54311a.f54312a = str;
    }

    public f a(Context context) {
        context.getApplicationContext();
        return this;
    }
}
