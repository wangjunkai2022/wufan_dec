package cn.sharesdk.framework.a.a;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import cn.sharesdk.framework.utils.SSDKLog;
/* compiled from: DBProvider.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private static b f8731b;

    /* renamed from: a  reason: collision with root package name */
    private a f8732a = new a();

    private b() {
    }

    public static synchronized b a() {
        b bVar;
        synchronized (b.class) {
            if (f8731b == null) {
                f8731b = new b();
            }
            bVar = f8731b;
        }
        return bVar;
    }

    public Cursor a(String str, String[] strArr, String str2, String[] strArr2, String str3) {
        SQLiteDatabase writableDatabase = this.f8732a.getWritableDatabase();
        SSDKLog.b().a("Query table: %s", str);
        try {
            return writableDatabase.query(str, strArr, str2, strArr2, null, null, str3);
        } catch (Exception e4) {
            SSDKLog.b().b(e4, "when query database occur error table:%s,", str);
            return null;
        }
    }

    public long a(String str, ContentValues contentValues) {
        try {
            return this.f8732a.getWritableDatabase().replace(str, null, contentValues);
        } catch (Exception e4) {
            SSDKLog.b().b(e4, "when insert database occur error table:%s,", str);
            return -1L;
        }
    }

    public int a(String str, String str2, String[] strArr) {
        int i2;
        try {
            i2 = this.f8732a.getWritableDatabase().delete(str, str2, strArr);
        } catch (Exception e4) {
            e = e4;
            i2 = 0;
        }
        try {
            SSDKLog.b().a("Deleted %d rows from table: %s", Integer.valueOf(i2), str);
        } catch (Exception e5) {
            e = e5;
            SSDKLog.b().b(e, "when delete database occur error table:%s,", str);
            return i2;
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v5, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v8, types: [android.database.Cursor] */
    public int a(String str) {
        Throwable th;
        Cursor cursor;
        Exception e4;
        ?? sb = new StringBuilder("select ");
        sb.append("count(*) from ");
        sb.append(str);
        int i2 = 0;
        try {
            try {
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) this.f8732a.getClass().getMethod("getWritableDatabase", new Class[0]).invoke(this.f8732a, new Object[0]);
                cursor = (Cursor) sQLiteDatabase.getClass().getDeclaredMethod("rawQuery", String.class, String[].class).invoke(sQLiteDatabase, sb.toString(), null);
                try {
                    boolean moveToNext = cursor.moveToNext();
                    sb = cursor;
                    if (moveToNext) {
                        i2 = cursor.getInt(0);
                        sb = cursor;
                    }
                } catch (Exception e5) {
                    e4 = e5;
                    SSDKLog.b().b(e4);
                    sb = cursor;
                    sb.close();
                    return i2;
                }
            } catch (Throwable th2) {
                th = th2;
                sb.close();
                throw th;
            }
        } catch (Exception e6) {
            cursor = null;
            e4 = e6;
        } catch (Throwable th3) {
            sb = 0;
            th = th3;
            sb.close();
            throw th;
        }
        sb.close();
        return i2;
    }
}
