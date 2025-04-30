package com.tencent.stat;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteException;
import android.os.Handler;
import android.os.HandlerThread;
import com.tencent.stat.common.StatLogger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes4.dex */
public class n {

    /* renamed from: e  reason: collision with root package name */
    private static StatLogger f60118e = com.tencent.stat.common.k.b();

    /* renamed from: f  reason: collision with root package name */
    private static n f60119f = null;

    /* renamed from: a  reason: collision with root package name */
    Handler f60120a;

    /* renamed from: d  reason: collision with root package name */
    private w f60123d;

    /* renamed from: b  reason: collision with root package name */
    volatile int f60121b = 0;

    /* renamed from: c  reason: collision with root package name */
    DeviceInfo f60122c = null;

    /* renamed from: g  reason: collision with root package name */
    private HashMap<String, String> f60124g = new HashMap<>();

    private n(Context context) {
        this.f60120a = null;
        try {
            HandlerThread handlerThread = new HandlerThread("StatStore");
            handlerThread.start();
            StatLogger statLogger = f60118e;
            statLogger.w("Launch store thread:" + handlerThread);
            this.f60120a = new Handler(handlerThread.getLooper());
            Context applicationContext = context.getApplicationContext();
            w wVar = new w(applicationContext);
            this.f60123d = wVar;
            wVar.getWritableDatabase();
            this.f60123d.getReadableDatabase();
            b(applicationContext);
            c();
            f();
            this.f60120a.post(new o(this));
        } catch (Throwable th) {
            f60118e.e(th);
        }
    }

    public static synchronized n a(Context context) {
        n nVar;
        synchronized (n.class) {
            if (f60119f == null) {
                f60119f = new n(context);
            }
            nVar = f60119f;
        }
        return nVar;
    }

    public static n b() {
        return f60119f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(int i2) {
        try {
        } finally {
        }
        if (this.f60121b > 0 && i2 > 0) {
            f60118e.i("Load " + Integer.toString(this.f60121b) + " unsent events");
            ArrayList arrayList = new ArrayList();
            ArrayList<x> arrayList2 = new ArrayList();
            if (i2 == -1 || i2 > StatConfig.a()) {
                i2 = StatConfig.a();
            }
            this.f60121b -= i2;
            c(arrayList2, i2);
            f60118e.i("Peek " + Integer.toString(arrayList2.size()) + " unsent events.");
            if (!arrayList2.isEmpty()) {
                b(arrayList2, 2);
                for (x xVar : arrayList2) {
                    arrayList.add(xVar.f60143b);
                }
                d.b().b(arrayList, new u(this, arrayList2, i2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(com.tencent.stat.a.e eVar, c cVar) {
        if (StatConfig.getMaxStoreEventCount() <= 0) {
            return;
        }
        this.f60123d.getWritableDatabase().beginTransaction();
        if (this.f60121b > StatConfig.getMaxStoreEventCount()) {
            f60118e.warn("Too many events stored in db.");
            this.f60121b -= this.f60123d.getWritableDatabase().delete(com.umeng.analytics.pro.c.ar, "event_id in (select event_id from events where timestamp in (select min(timestamp) from events) limit 1)", null);
        }
        ContentValues contentValues = new ContentValues();
        String c4 = com.tencent.stat.common.k.c(eVar.d());
        contentValues.put("content", c4);
        contentValues.put("send_count", "0");
        contentValues.put("status", Integer.toString(1));
        contentValues.put("timestamp", Long.valueOf(eVar.b()));
        if (this.f60123d.getWritableDatabase().insert(com.umeng.analytics.pro.c.ar, null, contentValues) == -1) {
            f60118e.error("Failed to store event:" + c4);
        } else {
            this.f60121b++;
            this.f60123d.getWritableDatabase().setTransactionSuccessful();
            if (cVar != null) {
                cVar.a();
            }
        }
        try {
            this.f60123d.getWritableDatabase().endTransaction();
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(b bVar) {
        boolean z3;
        long insert;
        Cursor cursor = null;
        try {
            String a4 = bVar.a();
            String a5 = com.tencent.stat.common.k.a(a4);
            ContentValues contentValues = new ContentValues();
            contentValues.put("content", bVar.f60035b.toString());
            contentValues.put("md5sum", a5);
            bVar.f60036c = a5;
            contentValues.put("version", Integer.valueOf(bVar.f60037d));
            Cursor query = this.f60123d.getReadableDatabase().query("config", null, null, null, null, null, null);
            while (true) {
                try {
                    if (!query.moveToNext()) {
                        z3 = false;
                        break;
                    } else if (query.getInt(0) == bVar.f60034a) {
                        z3 = true;
                        break;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = query;
                    f60118e.e(th);
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            }
            if (true == z3) {
                insert = this.f60123d.getWritableDatabase().update("config", contentValues, "type=?", new String[]{Integer.toString(bVar.f60034a)});
            } else {
                contentValues.put("type", Integer.valueOf(bVar.f60034a));
                insert = this.f60123d.getWritableDatabase().insert("config", null, contentValues);
            }
            if (insert == -1) {
                f60118e.e("Failed to store cfg:" + a4);
            } else {
                f60118e.d("Sucessed to store cfg:" + a4);
            }
            query.close();
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(List<x> list) {
        f60118e.i("Delete " + list.size() + " sent events in thread:" + Thread.currentThread());
        this.f60123d.getWritableDatabase().beginTransaction();
        Iterator<x> it2 = list.iterator();
        while (it2.hasNext()) {
            this.f60121b -= this.f60123d.getWritableDatabase().delete(com.umeng.analytics.pro.c.ar, "event_id = ?", new String[]{Long.toString(it2.next().f60142a)});
        }
        this.f60123d.getWritableDatabase().setTransactionSuccessful();
        this.f60121b = (int) DatabaseUtils.queryNumEntries(this.f60123d.getReadableDatabase(), com.umeng.analytics.pro.c.ar);
        try {
            this.f60123d.getWritableDatabase().endTransaction();
        } catch (SQLiteException e4) {
            f60118e.e((Exception) e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(List<x> list, int i2) {
        int update;
        f60118e.i("Update " + list.size() + " sending events to status:" + i2 + " in thread:" + Thread.currentThread());
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", Integer.toString(i2));
        this.f60123d.getWritableDatabase().beginTransaction();
        for (x xVar : list) {
            if (xVar.f60145d + 1 > StatConfig.getMaxSendRetryCount()) {
                this.f60121b -= this.f60123d.getWritableDatabase().delete(com.umeng.analytics.pro.c.ar, "event_id=?", new String[]{Long.toString(xVar.f60142a)});
            } else {
                contentValues.put("send_count", Integer.valueOf(xVar.f60145d + 1));
                f60118e.i("Update event:" + xVar.f60142a + " for content:" + contentValues);
                if (this.f60123d.getWritableDatabase().update(com.umeng.analytics.pro.c.ar, contentValues, "event_id=?", new String[]{Long.toString(xVar.f60142a)}) <= 0) {
                    f60118e.e("Failed to update db, error code:" + Integer.toString(update));
                }
            }
        }
        this.f60123d.getWritableDatabase().setTransactionSuccessful();
        this.f60121b = (int) DatabaseUtils.queryNumEntries(this.f60123d.getReadableDatabase(), com.umeng.analytics.pro.c.ar);
        try {
            this.f60123d.getWritableDatabase().endTransaction();
        } catch (SQLiteException e4) {
            f60118e.e((Exception) e4);
        }
    }

    private void c(List<x> list, int i2) {
        Cursor cursor = null;
        try {
            cursor = this.f60123d.getReadableDatabase().query(com.umeng.analytics.pro.c.ar, null, "status=?", new String[]{Integer.toString(1)}, null, null, "event_id", Integer.toString(i2));
            while (cursor.moveToNext()) {
                list.add(new x(cursor.getLong(0), com.tencent.stat.common.k.d(cursor.getString(1)), cursor.getInt(2), cursor.getInt(3)));
            }
        } catch (Throwable th) {
            try {
                f60118e.e(th);
            } finally {
                if (cursor != null) {
                    cursor.close();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("status", (Integer) 1);
            this.f60123d.getWritableDatabase().update(com.umeng.analytics.pro.c.ar, contentValues, "status=?", new String[]{Long.toString(2L)});
            this.f60121b = (int) DatabaseUtils.queryNumEntries(this.f60123d.getReadableDatabase(), com.umeng.analytics.pro.c.ar);
            StatLogger statLogger = f60118e;
            statLogger.i("Total " + this.f60121b + " unsent events.");
        } catch (Throwable th) {
            f60118e.e(th);
        }
    }

    private void f() {
        Cursor cursor = null;
        try {
            cursor = this.f60123d.getReadableDatabase().query("keyvalues", null, null, null, null, null, null);
            while (cursor.moveToNext()) {
                this.f60124g.put(cursor.getString(0), cursor.getString(1));
            }
        } catch (Throwable th) {
            try {
                f60118e.e(th);
            } finally {
                if (cursor != null) {
                    cursor.close();
                }
            }
        }
    }

    public int a() {
        return this.f60121b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2) {
        this.f60120a.post(new v(this, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.tencent.stat.a.e eVar, c cVar) {
        if (StatConfig.isEnableStatService()) {
            try {
                if (Thread.currentThread().getId() == this.f60120a.getLooper().getThread().getId()) {
                    b(eVar, cVar);
                } else {
                    this.f60120a.post(new r(this, eVar, cVar));
                }
            } catch (Throwable th) {
                f60118e.e(th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(b bVar) {
        if (bVar == null) {
            return;
        }
        this.f60120a.post(new s(this, bVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(List<x> list) {
        try {
            if (Thread.currentThread().getId() == this.f60120a.getLooper().getThread().getId()) {
                b(list);
            } else {
                this.f60120a.post(new q(this, list));
            }
        } catch (SQLiteException e4) {
            f60118e.e((Exception) e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(List<x> list, int i2) {
        try {
            if (Thread.currentThread().getId() == this.f60120a.getLooper().getThread().getId()) {
                b(list, i2);
            } else {
                this.f60120a.post(new p(this, list, i2));
            }
        } catch (Throwable th) {
            f60118e.e(th);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0096 A[Catch: all -> 0x0193, TryCatch #0 {all -> 0x0193, blocks: (B:9:0x001c, B:11:0x0026, B:13:0x0043, B:17:0x0058, B:19:0x0062, B:20:0x0064, B:22:0x006c, B:24:0x006f, B:26:0x0073, B:38:0x0096, B:40:0x0099, B:46:0x00d1, B:48:0x0103, B:50:0x0116, B:53:0x0126, B:55:0x0130, B:57:0x0136, B:59:0x014c, B:41:0x00b0, B:43:0x00b6, B:45:0x00bc, B:30:0x007e, B:32:0x0084, B:35:0x008e), top: B:81:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b6 A[Catch: all -> 0x0193, TryCatch #0 {all -> 0x0193, blocks: (B:9:0x001c, B:11:0x0026, B:13:0x0043, B:17:0x0058, B:19:0x0062, B:20:0x0064, B:22:0x006c, B:24:0x006f, B:26:0x0073, B:38:0x0096, B:40:0x0099, B:46:0x00d1, B:48:0x0103, B:50:0x0116, B:53:0x0126, B:55:0x0130, B:57:0x0136, B:59:0x014c, B:41:0x00b0, B:43:0x00b6, B:45:0x00bc, B:30:0x007e, B:32:0x0084, B:35:0x008e), top: B:81:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0103 A[Catch: all -> 0x0193, TryCatch #0 {all -> 0x0193, blocks: (B:9:0x001c, B:11:0x0026, B:13:0x0043, B:17:0x0058, B:19:0x0062, B:20:0x0064, B:22:0x006c, B:24:0x006f, B:26:0x0073, B:38:0x0096, B:40:0x0099, B:46:0x00d1, B:48:0x0103, B:50:0x0116, B:53:0x0126, B:55:0x0130, B:57:0x0136, B:59:0x014c, B:41:0x00b0, B:43:0x00b6, B:45:0x00bc, B:30:0x007e, B:32:0x0084, B:35:0x008e), top: B:81:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0116 A[Catch: all -> 0x0193, TryCatch #0 {all -> 0x0193, blocks: (B:9:0x001c, B:11:0x0026, B:13:0x0043, B:17:0x0058, B:19:0x0062, B:20:0x0064, B:22:0x006c, B:24:0x006f, B:26:0x0073, B:38:0x0096, B:40:0x0099, B:46:0x00d1, B:48:0x0103, B:50:0x0116, B:53:0x0126, B:55:0x0130, B:57:0x0136, B:59:0x014c, B:41:0x00b0, B:43:0x00b6, B:45:0x00bc, B:30:0x007e, B:32:0x0084, B:35:0x008e), top: B:81:0x001c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized com.tencent.stat.DeviceInfo b(android.content.Context r19) {
        /*
            Method dump skipped, instructions count: 435
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.stat.n.b(android.content.Context):com.tencent.stat.DeviceInfo");
    }

    void c() {
        this.f60120a.post(new t(this));
    }
}
