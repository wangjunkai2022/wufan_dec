package com.papa.sim.statistic.db;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.papa.sim.statistic.Event;
import com.papa91.common.BaseAppConfig;
import com.tencent.stat.DeviceInfo;
import com.umeng.analytics.pro.ai;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Semaphore;
/* compiled from: DBManager.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: e  reason: collision with root package name */
    private static String f55426e = "b";

    /* renamed from: f  reason: collision with root package name */
    private static b f55427f;

    /* renamed from: a  reason: collision with root package name */
    private Semaphore f55428a = new Semaphore(1);

    /* renamed from: b  reason: collision with root package name */
    private c f55429b;

    /* renamed from: c  reason: collision with root package name */
    private SQLiteDatabase f55430c;

    /* renamed from: d  reason: collision with root package name */
    private Context f55431d;

    private b(Context context) {
        this.f55429b = c.a(context);
        try {
            p();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        this.f55431d = context;
    }

    public static b o(Context context) {
        b bVar = f55427f;
        if (bVar == null) {
            b bVar2 = new b(context);
            f55427f = bVar2;
            return bVar2;
        }
        SQLiteDatabase sQLiteDatabase = bVar.f55430c;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
            f55427f = new b(context);
        }
        return f55427f;
    }

    private synchronized void p() {
        SQLiteDatabase sQLiteDatabase = this.f55430c;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
            c cVar = this.f55429b;
            if (cVar != null) {
                this.f55430c = cVar.getWritableDatabase();
            }
            SQLiteDatabase sQLiteDatabase2 = this.f55430c;
            if (sQLiteDatabase2 != null) {
                sQLiteDatabase2.enableWriteAheadLogging();
            }
        }
    }

    private Cursor q() {
        return this.f55430c.rawQuery("SELECT * FROM BossTable limit 50", null);
    }

    public void a() {
        p();
        this.f55430c.delete(c.f55435d, null, null);
    }

    public void b() {
        try {
            this.f55430c.close();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void c(Event event) {
        try {
            p();
            this.f55430c.delete(c.f55436e, "type = ?", new String[]{event.name()});
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void d(a aVar) {
        try {
            p();
            SQLiteDatabase sQLiteDatabase = this.f55430c;
            sQLiteDatabase.delete(c.f55436e, "id = ?", new String[]{aVar.e() + ""});
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void delete(Event event) {
        p();
        this.f55430c.delete(c.f55434c, "type = ?", new String[]{event.name()});
    }

    public void e(d dVar) {
        try {
            try {
                this.f55428a.acquire();
                p();
                this.f55430c.beginTransaction();
                SQLiteDatabase sQLiteDatabase = this.f55430c;
                sQLiteDatabase.execSQL("update StatisticTable set send=3 where id=?", new String[]{dVar.e() + ""});
                this.f55430c.setTransactionSuccessful();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } finally {
            this.f55428a.release();
            this.f55430c.endTransaction();
        }
    }

    public void f(String str, String str2) {
        p();
        this.f55430c.delete(c.f55434c, "type = ? and time =?", new String[]{str, str2});
    }

    public void g() throws IllegalStateException {
        p();
        int delete = this.f55430c.delete(c.f55434c, "send =?", new String[]{"3"});
        StringBuilder sb = new StringBuilder();
        sb.append("deletDBNumber = ");
        sb.append(delete);
        sb.append("");
    }

    public boolean h(Event event) {
        p();
        Cursor rawQuery = this.f55430c.rawQuery("SELECT * FROM StatisticTable where type=? ", new String[]{event.name()});
        boolean z3 = !rawQuery.isAfterLast();
        rawQuery.close();
        return z3;
    }

    public boolean i(Event event, String str) {
        p();
        Cursor rawQuery = this.f55430c.rawQuery("SELECT * FROM StatisticTable where type=? and args2=?", new String[]{event.name(), str});
        boolean isAfterLast = rawQuery.isAfterLast();
        rawQuery.close();
        return true ^ isAfterLast;
    }

    public boolean j(String str) {
        p();
        Cursor rawQuery = this.f55430c.rawQuery("SELECT * FROM EMUApkTable where package_name=? ", new String[]{str});
        boolean isAfterLast = rawQuery.isAfterLast();
        rawQuery.close();
        return !isAfterLast;
    }

    public List<d> k() {
        p();
        ArrayList arrayList = new ArrayList();
        Cursor rawQuery = this.f55430c.rawQuery("SELECT * FROM StatisticTable  order by id limit 50", null);
        while (rawQuery.moveToNext()) {
            try {
                try {
                    d dVar = new d();
                    dVar.o(rawQuery.getInt(rawQuery.getColumnIndex("id")));
                    dVar.u(rawQuery.getString(rawQuery.getColumnIndex("uid")));
                    dVar.t(rawQuery.getString(rawQuery.getColumnIndex("type")));
                    dVar.l(rawQuery.getString(rawQuery.getColumnIndex("args1")));
                    dVar.m(rawQuery.getString(rawQuery.getColumnIndex("args2")));
                    dVar.s(rawQuery.getString(rawQuery.getColumnIndex("time")));
                    dVar.k(rawQuery.getString(rawQuery.getColumnIndex(ai.au)));
                    dVar.n(rawQuery.getString(rawQuery.getColumnIndex("countType")));
                    dVar.r(rawQuery.getInt(rawQuery.getColumnIndex("send")));
                    dVar.q(rawQuery.getInt(rawQuery.getColumnIndex("newData")));
                    dVar.p(rawQuery.getInt(rawQuery.getColumnIndex("isdirect")));
                    arrayList.add(dVar);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            } finally {
                rawQuery.close();
            }
        }
        return arrayList;
    }

    public List<a> l() {
        p();
        ArrayList arrayList = new ArrayList();
        Cursor q3 = q();
        while (q3.moveToNext()) {
            try {
                try {
                    a aVar = new a();
                    aVar.l(q3.getInt(q3.getColumnIndex("id")));
                    aVar.o(q3.getString(q3.getColumnIndex("uid")));
                    aVar.n(q3.getString(q3.getColumnIndex("type")));
                    aVar.i(q3.getString(q3.getColumnIndex("args1")));
                    aVar.j(q3.getString(q3.getColumnIndex("args2")));
                    aVar.m(q3.getString(q3.getColumnIndex("time")));
                    aVar.h(q3.getString(q3.getColumnIndex(ai.au)));
                    aVar.k(q3.getString(q3.getColumnIndex("countType")));
                    arrayList.add(aVar);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            } finally {
                q3.close();
            }
        }
        return arrayList;
    }

    public List<EMUApkTable> m() {
        p();
        ArrayList arrayList = new ArrayList(0);
        Cursor rawQuery = this.f55430c.rawQuery("SELECT * FROM EMUApkTable", null);
        while (rawQuery.moveToNext()) {
            EMUApkTable eMUApkTable = new EMUApkTable();
            eMUApkTable.t(rawQuery.getInt(rawQuery.getColumnIndex("id")));
            eMUApkTable.q(rawQuery.getString(rawQuery.getColumnIndex("apk_name")));
            eMUApkTable.v(rawQuery.getString(rawQuery.getColumnIndex("logo")));
            eMUApkTable.w(rawQuery.getString(rawQuery.getColumnIndex(ai.f60415o)));
            eMUApkTable.u(rawQuery.getString(rawQuery.getColumnIndex("launch_name")));
            eMUApkTable.A(rawQuery.getString(rawQuery.getColumnIndex("team_info")));
            eMUApkTable.D(rawQuery.getString(rawQuery.getColumnIndex("ver_info")));
            eMUApkTable.r(rawQuery.getString(rawQuery.getColumnIndex("down_url")));
            eMUApkTable.y(rawQuery.getString(rawQuery.getColumnIndex("size")));
            eMUApkTable.x(rawQuery.getString(rawQuery.getColumnIndex("release_date")));
            eMUApkTable.B(rawQuery.getString(rawQuery.getColumnIndex(DeviceInfo.TAG_VERSION)));
            eMUApkTable.C(rawQuery.getString(rawQuery.getColumnIndex("ver_compatible")));
            eMUApkTable.z(rawQuery.getString(rawQuery.getColumnIndex("tag_id")));
            eMUApkTable.p(rawQuery.getString(rawQuery.getColumnIndex(BaseAppConfig.KEY_APK_PATH)));
            eMUApkTable.s(rawQuery.getInt(rawQuery.getColumnIndex("downloadFinish")));
            arrayList.add(eMUApkTable);
        }
        rawQuery.close();
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x00d1, code lost:
        if (r6 == null) goto L14;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e0  */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.papa.sim.statistic.db.d n(java.lang.String r6, java.lang.String r7) throws java.lang.IllegalStateException {
        /*
            r5 = this;
            r0 = 0
            java.util.concurrent.Semaphore r1 = r5.f55428a     // Catch: java.lang.Throwable -> Lc5 java.lang.Exception -> Lc7
            r1.acquire()     // Catch: java.lang.Throwable -> Lc5 java.lang.Exception -> Lc7
            r5.p()     // Catch: java.lang.Throwable -> Lc5 java.lang.Exception -> Lc7
            android.database.sqlite.SQLiteDatabase r1 = r5.f55430c     // Catch: java.lang.Throwable -> Lc5 java.lang.Exception -> Lc7
            java.lang.String r2 = "SELECT * FROM StatisticTable where type=? and time=?"
            r3 = 2
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> Lc5 java.lang.Exception -> Lc7
            r4 = 0
            r3[r4] = r6     // Catch: java.lang.Throwable -> Lc5 java.lang.Exception -> Lc7
            r6 = 1
            r3[r6] = r7     // Catch: java.lang.Throwable -> Lc5 java.lang.Exception -> Lc7
            android.database.Cursor r6 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> Lc5 java.lang.Exception -> Lc7
            boolean r7 = r6.moveToNext()     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            if (r7 == 0) goto Lbd
            com.papa.sim.statistic.db.d r7 = new com.papa.sim.statistic.db.d     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            r7.<init>()     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            java.lang.String r1 = "id"
            int r1 = r6.getColumnIndex(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            int r1 = r6.getInt(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            r7.o(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            java.lang.String r1 = "uid"
            int r1 = r6.getColumnIndex(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            java.lang.String r1 = r6.getString(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            r7.u(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            java.lang.String r1 = "type"
            int r1 = r6.getColumnIndex(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            java.lang.String r1 = r6.getString(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            r7.t(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            java.lang.String r1 = "args1"
            int r1 = r6.getColumnIndex(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            java.lang.String r1 = r6.getString(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            r7.l(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            java.lang.String r1 = "args2"
            int r1 = r6.getColumnIndex(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            java.lang.String r1 = r6.getString(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            r7.m(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            java.lang.String r1 = "time"
            int r1 = r6.getColumnIndex(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            java.lang.String r1 = r6.getString(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            r7.s(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            java.lang.String r1 = "ad"
            int r1 = r6.getColumnIndex(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            java.lang.String r1 = r6.getString(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            r7.k(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            java.lang.String r1 = "countType"
            int r1 = r6.getColumnIndex(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            java.lang.String r1 = r6.getString(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            r7.n(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            java.lang.String r1 = "send"
            int r1 = r6.getColumnIndex(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            int r1 = r6.getInt(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            r7.r(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            java.lang.String r1 = "newData"
            int r1 = r6.getColumnIndex(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            int r1 = r6.getInt(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            r7.q(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            java.lang.String r1 = "isdirect"
            int r1 = r6.getColumnIndex(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            int r1 = r6.getInt(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            r7.p(r1)     // Catch: java.lang.Exception -> Lc3 java.lang.Throwable -> Ld7
            java.util.concurrent.Semaphore r0 = r5.f55428a
            r0.release()
            r6.close()
            return r7
        Lbd:
            java.util.concurrent.Semaphore r7 = r5.f55428a
            r7.release()
            goto Ld3
        Lc3:
            r7 = move-exception
            goto Lc9
        Lc5:
            r7 = move-exception
            goto Ld9
        Lc7:
            r7 = move-exception
            r6 = r0
        Lc9:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> Ld7
            java.util.concurrent.Semaphore r7 = r5.f55428a
            r7.release()
            if (r6 == 0) goto Ld6
        Ld3:
            r6.close()
        Ld6:
            return r0
        Ld7:
            r7 = move-exception
            r0 = r6
        Ld9:
            java.util.concurrent.Semaphore r6 = r5.f55428a
            r6.release()
            if (r0 == 0) goto Le3
            r0.close()
        Le3:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.papa.sim.statistic.db.b.n(java.lang.String, java.lang.String):com.papa.sim.statistic.db.d");
    }

    public void r(d dVar) {
        try {
            try {
                try {
                    this.f55428a.acquire();
                    p();
                    this.f55430c.beginTransaction();
                    if (dVar.e() != 0) {
                        this.f55430c.execSQL("INSERT INTO StatisticTable (id, uid,type, args1, args2,time,ad,countType,send,newData,isdirect) VALUES(?, ?,?, ?, ?,?,?,?,?,?,?)", new Object[]{Integer.valueOf(dVar.e()), dVar.j(), dVar.getType(), dVar.b(), dVar.c(), dVar.i(), dVar.a(), dVar.d(), Integer.valueOf(dVar.h()), Integer.valueOf(dVar.g()), Integer.valueOf(dVar.f())});
                    } else {
                        this.f55430c.execSQL("INSERT INTO StatisticTable (id, uid,type, args1, args2,time,ad,countType,send,newData,isdirect) VALUES(null, ?,?, ?, ?,?,?,?,?,?,?)", new Object[]{dVar.j(), dVar.getType(), dVar.b(), dVar.c(), dVar.i(), dVar.a(), dVar.d(), Integer.valueOf(dVar.h()), Integer.valueOf(dVar.g()), Integer.valueOf(dVar.f())});
                    }
                    this.f55430c.setTransactionSuccessful();
                    this.f55428a.release();
                    this.f55430c.endTransaction();
                } catch (Exception e4) {
                    e4.printStackTrace();
                    this.f55428a.release();
                    this.f55430c.endTransaction();
                }
            } catch (Throwable th) {
                try {
                    this.f55428a.release();
                    this.f55430c.endTransaction();
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
                throw th;
            }
        } catch (Exception e6) {
            e6.printStackTrace();
        }
    }

    public void s(List<d> list) {
        try {
            this.f55428a.acquire();
            p();
            this.f55430c.beginTransaction();
            for (d dVar : list) {
                if (dVar.e() != 0) {
                    this.f55430c.execSQL("INSERT INTO StatisticTable (id, uid,type, args1, args2,time,ad,countType,send,newData,isdirect) VALUES(?, ?,?, ?, ?,?,?,?,?,?,?)", new Object[]{Integer.valueOf(dVar.e()), dVar.j(), dVar.getType(), dVar.b(), dVar.c(), dVar.i(), dVar.a(), dVar.d(), Integer.valueOf(dVar.h()), Integer.valueOf(dVar.g()), Integer.valueOf(dVar.f())});
                } else {
                    this.f55430c.execSQL("INSERT INTO StatisticTable (id, uid,type, args1, args2,time,ad,countType,send,newData,isdirect) VALUES(null,?, ?, ?, ?,?,?,?,?,?,?)", new Object[]{dVar.j(), dVar.getType(), dVar.b(), dVar.c(), dVar.i(), dVar.a(), dVar.d(), Integer.valueOf(dVar.h()), Integer.valueOf(dVar.g()), Integer.valueOf(dVar.f())});
                }
            }
            this.f55430c.setTransactionSuccessful();
        } catch (Exception unused) {
        } catch (Throwable th) {
            this.f55428a.release();
            this.f55430c.endTransaction();
            throw th;
        }
        this.f55428a.release();
        this.f55430c.endTransaction();
    }

    public void t(a aVar) {
        try {
            try {
                try {
                    this.f55428a.acquire();
                    p();
                    this.f55430c.beginTransaction();
                    if (aVar.e() != 0) {
                        this.f55430c.execSQL("INSERT INTO BossTable VALUES(?, ?,?, ?, ?,?,?,?)", new Object[]{Integer.valueOf(aVar.e()), aVar.g(), aVar.getType(), aVar.b(), aVar.c(), aVar.f(), aVar.a(), aVar.d()});
                    } else {
                        this.f55430c.execSQL("INSERT INTO BossTable VALUES(null, ?,?, ?, ?,?,?,?)", new Object[]{aVar.g(), aVar.getType(), aVar.b(), aVar.c(), aVar.f(), aVar.a(), aVar.d()});
                    }
                    this.f55430c.setTransactionSuccessful();
                    this.f55428a.release();
                    this.f55430c.endTransaction();
                } catch (Exception e4) {
                    e4.printStackTrace();
                    this.f55428a.release();
                    this.f55430c.endTransaction();
                }
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        } catch (Throwable th) {
            try {
                this.f55428a.release();
                this.f55430c.endTransaction();
            } catch (Exception e6) {
                e6.printStackTrace();
            }
            throw th;
        }
    }

    public void u(List<EMUApkTable> list) {
        try {
            try {
                this.f55428a.acquire();
                p();
                this.f55430c.beginTransaction();
                for (EMUApkTable eMUApkTable : list) {
                    this.f55430c.execSQL("INSERT INTO EMUApkTable VALUES(?,?, ?, ?, ?,?,?,?,?,?,?,?,?,?,?)", new Object[]{Integer.valueOf(eMUApkTable.e()), eMUApkTable.b(), eMUApkTable.g(), eMUApkTable.h(), eMUApkTable.f(), eMUApkTable.l(), eMUApkTable.o(), eMUApkTable.c(), eMUApkTable.j(), eMUApkTable.i(), eMUApkTable.m(), eMUApkTable.n(), eMUApkTable.k(), eMUApkTable.a(), Integer.valueOf(eMUApkTable.d())});
                }
                this.f55430c.setTransactionSuccessful();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } finally {
            this.f55428a.release();
            this.f55430c.endTransaction();
        }
    }

    public void v(String str, String str2) {
        try {
            try {
                this.f55428a.acquire();
                p();
                this.f55430c.beginTransaction();
                this.f55430c.execSQL("update StatisticTable set send=1,isdirect=1 where type=? and time=?", new String[]{str, str2});
                this.f55430c.setTransactionSuccessful();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } finally {
            this.f55428a.release();
            this.f55430c.endTransaction();
        }
    }

    public void delete(d dVar) {
        try {
            try {
                this.f55428a.acquire();
                p();
                SQLiteDatabase sQLiteDatabase = this.f55430c;
                sQLiteDatabase.delete(c.f55434c, "id = ?", new String[]{dVar.e() + ""});
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } finally {
            this.f55428a.release();
        }
    }

    public void delete(int i2) {
        p();
        SQLiteDatabase sQLiteDatabase = this.f55430c;
        sQLiteDatabase.delete(c.f55434c, "id = ?", new String[]{i2 + ""});
    }
}
