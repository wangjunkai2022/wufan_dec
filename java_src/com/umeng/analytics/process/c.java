package com.umeng.analytics.process;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.umeng.commonsdk.service.UMGlobalContext;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: UMProcessDBManager.java */
/* loaded from: classes4.dex */
class c {

    /* renamed from: a  reason: collision with root package name */
    private static c f60955a;

    /* renamed from: b  reason: collision with root package name */
    private ConcurrentHashMap<String, a> f60956b = new ConcurrentHashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private Context f60957c;

    private c() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c a(Context context) {
        if (f60955a == null) {
            synchronized (c.class) {
                if (f60955a == null) {
                    f60955a = new c();
                }
            }
        }
        c cVar = f60955a;
        cVar.f60957c = context;
        return cVar;
    }

    private a c(String str) {
        if (this.f60956b.get(str) == null) {
            a a4 = a.a(this.f60957c, str);
            this.f60956b.put(str, a4);
            return a4;
        }
        return this.f60956b.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void b(String str) {
        c(str).b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UMProcessDBManager.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private AtomicInteger f60958a = new AtomicInteger();

        /* renamed from: b  reason: collision with root package name */
        private SQLiteOpenHelper f60959b;

        /* renamed from: c  reason: collision with root package name */
        private SQLiteDatabase f60960c;

        private a() {
        }

        static a a(Context context, String str) {
            Context appContext = UMGlobalContext.getAppContext(context);
            a aVar = new a();
            aVar.f60959b = b.a(appContext, str);
            return aVar;
        }

        synchronized void b() {
            try {
                if (this.f60958a.decrementAndGet() == 0) {
                    this.f60960c.close();
                }
            } catch (Throwable unused) {
            }
        }

        synchronized SQLiteDatabase a() {
            if (this.f60958a.incrementAndGet() == 1) {
                this.f60960c = this.f60959b.getWritableDatabase();
            }
            return this.f60960c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized SQLiteDatabase a(String str) {
        return c(str).a();
    }
}
