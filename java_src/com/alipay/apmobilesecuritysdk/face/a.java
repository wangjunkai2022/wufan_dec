package com.alipay.apmobilesecuritysdk.face;

import android.content.Context;
import com.umeng.analytics.pro.ai;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: e  reason: collision with root package name */
    private static a f9548e;

    /* renamed from: f  reason: collision with root package name */
    private static Object f9549f = new Object();

    /* renamed from: a  reason: collision with root package name */
    private Context f9550a;

    /* renamed from: c  reason: collision with root package name */
    private Thread f9552c;

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f9551b = false;

    /* renamed from: d  reason: collision with root package name */
    private LinkedList<b> f9553d = new LinkedList<>();

    /* renamed from: com.alipay.apmobilesecuritysdk.face.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0024a {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        int f9554a = 0;

        /* renamed from: b  reason: collision with root package name */
        String f9555b;

        /* renamed from: c  reason: collision with root package name */
        String f9556c;

        /* renamed from: d  reason: collision with root package name */
        String f9557d;

        /* renamed from: e  reason: collision with root package name */
        InterfaceC0024a f9558e;

        public b(String str, String str2, String str3) {
            this.f9557d = str3;
            if (com.alipay.security.mobile.module.commonutils.a.b(str)) {
                this.f9555b = com.alipay.apmobilesecuritysdk.d.b.a(a.this.f9550a);
            } else {
                this.f9555b = str;
            }
            this.f9556c = str2;
            this.f9558e = null;
        }

        private void a() {
            if (a.this.f9551b) {
                return;
            }
            a.this.f9551b = true;
            try {
                com.alipay.apmobilesecuritysdk.d.a.a(a.this.f9550a);
                com.alipay.apmobilesecuritysdk.d.a.c();
                HashMap hashMap = new HashMap();
                hashMap.put(com.alipay.sdk.cons.b.f9718c, this.f9556c);
                hashMap.put(com.alipay.sdk.cons.b.f9722g, this.f9555b);
                com.alipay.apmobilesecuritysdk.d.a.a(a.this.f9550a);
                hashMap.put(ai.f60407g, com.alipay.apmobilesecuritysdk.d.a.b());
                hashMap.put("userId", this.f9557d);
                e.a(a.this.f9550a, hashMap);
                if (this.f9558e != null) {
                    c cVar = new c();
                    cVar.f9562c = com.alipay.apmobilesecuritysdk.a.a.f(a.this.f9550a);
                    cVar.f9561b = com.alipay.apmobilesecuritysdk.a.a.a(a.this.f9550a);
                    com.alipay.apmobilesecuritysdk.d.a.a(a.this.f9550a);
                    cVar.f9560a = com.alipay.apmobilesecuritysdk.d.a.b();
                    cVar.f9563d = com.alipay.apmobilesecuritysdk.f.b.a(a.this.f9550a);
                }
            } catch (Throwable unused) {
            }
            a.this.f9551b = false;
        }
    }

    /* loaded from: classes2.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        public String f9560a;

        /* renamed from: b  reason: collision with root package name */
        public String f9561b;

        /* renamed from: c  reason: collision with root package name */
        public String f9562c;

        /* renamed from: d  reason: collision with root package name */
        public String f9563d;

        public c() {
        }
    }

    private a(Context context) {
        this.f9550a = context;
    }

    public static a a(Context context) {
        a aVar;
        synchronized (f9549f) {
            if (f9548e == null) {
                f9548e = new a(context);
            }
            aVar = f9548e;
        }
        return aVar;
    }

    private String b() {
        return com.alipay.apmobilesecuritysdk.a.a.a(this.f9550a);
    }

    private c f() {
        c cVar = new c();
        try {
            System.currentTimeMillis();
            cVar.f9561b = com.alipay.apmobilesecuritysdk.a.a.a(this.f9550a);
            System.currentTimeMillis();
            cVar.f9562c = com.alipay.apmobilesecuritysdk.a.a.f(this.f9550a);
            com.alipay.apmobilesecuritysdk.d.a.a(this.f9550a);
            cVar.f9560a = com.alipay.apmobilesecuritysdk.d.a.b();
            cVar.f9563d = com.alipay.apmobilesecuritysdk.f.b.a(this.f9550a);
        } catch (Throwable unused) {
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Thread g(a aVar) {
        aVar.f9552c = null;
        return null;
    }

    public final void d(Map<String, String> map) {
        String a4 = com.alipay.security.mobile.module.commonutils.a.a(map, com.alipay.sdk.cons.b.f9722g, "");
        String a5 = com.alipay.security.mobile.module.commonutils.a.a(map, com.alipay.sdk.cons.b.f9718c, "");
        String a6 = com.alipay.security.mobile.module.commonutils.a.a(map, "userId", "");
        com.alipay.security.mobile.module.a.a.a.b("https://mobilegw.alipay.com/mgw.htm");
        this.f9553d.addLast(new b(a4, a5, a6));
        if (this.f9552c == null) {
            Thread thread = new Thread(new com.alipay.apmobilesecuritysdk.face.b(this));
            this.f9552c = thread;
            thread.setUncaughtExceptionHandler(new com.alipay.apmobilesecuritysdk.face.c(this));
            this.f9552c.start();
        }
    }
}
