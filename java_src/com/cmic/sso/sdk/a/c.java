package com.cmic.sso.sdk.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import com.cmic.sso.sdk.a.b;
import com.cmic.sso.sdk.e.k;
/* compiled from: UmcConfigManager.java */
/* loaded from: classes2.dex */
public class c implements b.a {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: a  reason: collision with root package name */
    private static c f10712a;

    /* renamed from: b  reason: collision with root package name */
    private a f10713b;

    /* renamed from: c  reason: collision with root package name */
    private a f10714c;

    /* renamed from: d  reason: collision with root package name */
    private b f10715d;

    /* renamed from: e  reason: collision with root package name */
    private Context f10716e;

    private c(Context context) {
        this.f10716e = context;
        b();
    }

    public static c a(Context context) {
        if (f10712a == null) {
            synchronized (c.class) {
                if (f10712a == null) {
                    f10712a = new c(context);
                }
            }
        }
        return f10712a;
    }

    private void b() {
        String b4 = k.b("sdk_config_version", "");
        if (!TextUtils.isEmpty(b4) && com.cmic.sso.sdk.auth.c.SDK_VERSION.equals(b4)) {
            b a4 = b.a(false);
            this.f10715d = a4;
            this.f10713b = a4.b();
        } else {
            b a5 = b.a(true);
            this.f10715d = a5;
            this.f10713b = a5.a();
            if (!TextUtils.isEmpty(b4)) {
                c();
            }
        }
        this.f10715d.a(this);
        this.f10714c = this.f10715d.a();
    }

    private void c() {
        com.cmic.sso.sdk.e.c.b("UmcConfigManager", "delete localConfig");
        this.f10715d.c();
    }

    public a a() {
        try {
            return this.f10713b.clone();
        } catch (CloneNotSupportedException unused) {
            return this.f10714c;
        }
    }

    @Override // com.cmic.sso.sdk.a.b.a
    public void a(a aVar) {
        this.f10713b = aVar;
    }

    public void a(com.cmic.sso.sdk.a aVar) {
        this.f10715d.a(aVar);
    }
}
