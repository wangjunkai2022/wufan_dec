package com.mob.mcl.d;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.lang.reflect.Method;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private a f53258a;

    public c(Context context) {
        this.f53258a = new a(context.getApplicationContext());
    }

    public void a(String str, long j4) {
        try {
            SQLiteDatabase writableDatabase = this.f53258a.getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put("workId", str);
            contentValues.put("expireTime", Long.valueOf(j4));
            writableDatabase.replace("msg", null, contentValues);
            writableDatabase.close();
        } catch (Throwable th) {
            b.a().a(th);
        }
    }

    public void b(String str) {
        try {
            SQLiteDatabase writableDatabase = this.f53258a.getWritableDatabase();
            SQLiteDatabase.class.getDeclaredMethod("execSQL", String.class, Object[].class).invoke(writableDatabase, "delete from msg where workId = ?", new String[]{str});
            writableDatabase.close();
        } catch (Throwable th) {
            b.a().a(th);
        }
    }

    public long a(String str) {
        try {
            SQLiteDatabase readableDatabase = this.f53258a.getReadableDatabase();
            Cursor cursor = (Cursor) SQLiteDatabase.class.getMethod("rawQuery", String.class, String[].class).invoke(readableDatabase, "select expireTime from msg where workId = ?", new String[]{str});
            if (cursor.moveToFirst()) {
                return cursor.getLong(cursor.getColumnIndex("expireTime"));
            }
            cursor.close();
            readableDatabase.close();
            return 0L;
        } catch (Throwable th) {
            b.a().a(th);
            return 0L;
        }
    }

    public void a() {
        try {
            SQLiteDatabase writableDatabase = this.f53258a.getWritableDatabase();
            Method declaredMethod = SQLiteDatabase.class.getDeclaredMethod("execSQL", String.class, Object[].class);
            declaredMethod.invoke(writableDatabase, "delete from msg where expireTime < ?", new String[]{System.currentTimeMillis() + ""});
            writableDatabase.close();
        } catch (Throwable th) {
            b.a().a(th);
        }
    }
}
