package com.umeng.analytics.pro;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.umeng.analytics.pro.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UMDBCreater.java */
/* loaded from: classes4.dex */
public class e extends SQLiteOpenHelper {

    /* renamed from: b  reason: collision with root package name */
    private static Context f60729b;

    /* renamed from: a  reason: collision with root package name */
    private String f60730a;

    /* compiled from: UMDBCreater.java */
    /* loaded from: classes4.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final e f60731a = new e(e.f60729b, g.b(e.f60729b), d.f60663b, null, 2);

        private a() {
        }
    }

    public static e a(Context context) {
        if (f60729b == null) {
            f60729b = context.getApplicationContext();
        }
        return a.f60731a;
    }

    private void c(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f60730a = "create table if not exists __sd(id INTEGER primary key autoincrement, __ii TEXT unique, __a TEXT, __b TEXT, __c TEXT, __d TEXT, __e TEXT, __f TEXT, __g TEXT, __sp TEXT, __pp TEXT, __av TEXT, __vc TEXT)";
            sQLiteDatabase.execSQL("create table if not exists __sd(id INTEGER primary key autoincrement, __ii TEXT unique, __a TEXT, __b TEXT, __c TEXT, __d TEXT, __e TEXT, __f TEXT, __g TEXT, __sp TEXT, __pp TEXT, __av TEXT, __vc TEXT)");
        } catch (SQLException unused) {
        }
    }

    private void d(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f60730a = "create table if not exists __is(id INTEGER primary key autoincrement, __ii TEXT unique, __e TEXT, __sp TEXT, __pp TEXT, __av TEXT, __vc TEXT)";
            sQLiteDatabase.execSQL("create table if not exists __is(id INTEGER primary key autoincrement, __ii TEXT unique, __e TEXT, __sp TEXT, __pp TEXT, __av TEXT, __vc TEXT)");
        } catch (SQLException unused) {
        }
    }

    private void e(SQLiteDatabase sQLiteDatabase) {
        if (!g.a(sQLiteDatabase, d.C0351d.f60704a, "__av")) {
            g.a(sQLiteDatabase, d.C0351d.f60704a, "__sp", "TEXT");
            g.a(sQLiteDatabase, d.C0351d.f60704a, "__pp", "TEXT");
            g.a(sQLiteDatabase, d.C0351d.f60704a, "__av", "TEXT");
            g.a(sQLiteDatabase, d.C0351d.f60704a, "__vc", "TEXT");
        }
        if (!g.a(sQLiteDatabase, d.b.f60678a, "__av")) {
            g.a(sQLiteDatabase, d.b.f60678a, "__av", "TEXT");
            g.a(sQLiteDatabase, d.b.f60678a, "__vc", "TEXT");
        }
        if (g.a(sQLiteDatabase, d.a.f60667a, "__av")) {
            return;
        }
        g.a(sQLiteDatabase, d.a.f60667a, "__av", "TEXT");
        g.a(sQLiteDatabase, d.a.f60667a, "__vc", "TEXT");
    }

    private void f(SQLiteDatabase sQLiteDatabase) {
        a(sQLiteDatabase, d.C0351d.f60704a);
        a(sQLiteDatabase, d.b.f60678a);
        a(sQLiteDatabase, d.a.f60667a);
        a();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            try {
                sQLiteDatabase.beginTransaction();
                c(sQLiteDatabase);
                d(sQLiteDatabase);
                b(sQLiteDatabase);
                a(sQLiteDatabase);
                sQLiteDatabase.setTransactionSuccessful();
            } catch (Throwable th) {
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable unused) {
                    }
                }
                throw th;
            }
        } catch (SQLiteDatabaseCorruptException unused2) {
            g.a(f60729b);
            if (sQLiteDatabase == null) {
                return;
            }
        } catch (Throwable unused3) {
            if (sQLiteDatabase == null) {
                return;
            }
        }
        try {
            sQLiteDatabase.endTransaction();
        } catch (Throwable unused4) {
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i4) {
        if (i4 <= i2 || i2 != 1) {
            return;
        }
        try {
            try {
                e(sQLiteDatabase);
            } catch (Exception unused) {
                f(sQLiteDatabase);
            }
        } catch (Exception unused2) {
            e(sQLiteDatabase);
        }
    }

    private e(Context context, String str, String str2, SQLiteDatabase.CursorFactory cursorFactory, int i2) {
        this(new b(context, str), str2, cursorFactory, i2);
    }

    private void b(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f60730a = "create table if not exists __et(id INTEGER primary key autoincrement, __i TEXT, __e TEXT, __s TEXT, __t INTEGER, __av TEXT, __vc TEXT)";
            sQLiteDatabase.execSQL("create table if not exists __et(id INTEGER primary key autoincrement, __i TEXT, __e TEXT, __s TEXT, __t INTEGER, __av TEXT, __vc TEXT)");
        } catch (SQLException unused) {
        }
    }

    private e(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i2) {
        super(context, TextUtils.isEmpty(str) ? d.f60663b : str, cursorFactory, i2);
        this.f60730a = null;
        a();
    }

    public void a() {
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (!g.a(d.C0351d.f60704a, writableDatabase)) {
                c(writableDatabase);
            }
            if (!g.a(d.c.f60691a, writableDatabase)) {
                d(writableDatabase);
            }
            if (!g.a(d.b.f60678a, writableDatabase)) {
                b(writableDatabase);
            }
            if (g.a(d.a.f60667a, writableDatabase)) {
                return;
            }
            a(writableDatabase);
        } catch (Exception unused) {
        }
    }

    private void a(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f60730a = "create table if not exists __er(id INTEGER primary key autoincrement, __i TEXT, __a TEXT, __t INTEGER, __av TEXT, __vc TEXT)";
            sQLiteDatabase.execSQL("create table if not exists __er(id INTEGER primary key autoincrement, __i TEXT, __a TEXT, __t INTEGER, __av TEXT, __vc TEXT)");
        } catch (SQLException unused) {
        }
    }

    private void a(SQLiteDatabase sQLiteDatabase, String str) {
        try {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
        } catch (SQLException unused) {
        }
    }
}
