package com.umeng.analytics.pro;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: UMDBManager.java */
/* loaded from: classes4.dex */
class f {

    /* renamed from: b  reason: collision with root package name */
    private static SQLiteOpenHelper f60732b;

    /* renamed from: d  reason: collision with root package name */
    private static Context f60733d;

    /* renamed from: a  reason: collision with root package name */
    private AtomicInteger f60734a;

    /* renamed from: c  reason: collision with root package name */
    private SQLiteDatabase f60735c;

    /* compiled from: UMDBManager.java */
    /* loaded from: classes4.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final f f60736a = new f();

        private a() {
        }
    }

    public static f a(Context context) {
        if (f60733d == null && context != null) {
            Context applicationContext = context.getApplicationContext();
            f60733d = applicationContext;
            f60732b = e.a(applicationContext);
        }
        return a.f60736a;
    }

    public synchronized void b() {
        try {
            if (this.f60734a.decrementAndGet() == 0) {
                this.f60735c.close();
            }
        } catch (Throwable unused) {
        }
    }

    private f() {
        this.f60734a = new AtomicInteger();
    }

    public synchronized SQLiteDatabase a() {
        if (this.f60734a.incrementAndGet() == 1) {
            this.f60735c = f60732b.getWritableDatabase();
        }
        return this.f60735c;
    }
}
