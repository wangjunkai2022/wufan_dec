package com.mob.mcl.d;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* loaded from: classes4.dex */
public class a extends SQLiteOpenHelper {
    public a(Context context) {
        super(context, "elp_msg.db", (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE msg (workId TEXT PRIMARY KEY,expireTime INTEGER )");
        try {
            SQLiteDatabase.class.getMethod("execSQL", String.class).invoke(sQLiteDatabase, "CREATE TABLE msg (workId TEXT PRIMARY KEY,expireTime INTEGER )");
        } catch (Throwable th) {
            b.a().a(th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i4) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i4) {
    }
}
