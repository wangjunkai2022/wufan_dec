package com.papa.sim.statistic.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* compiled from: DatabaseHelper.java */
/* loaded from: classes4.dex */
public class c extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    public static String f55432a = c.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private static final String f55433b = "papa_stat.db";

    /* renamed from: c  reason: collision with root package name */
    public static final String f55434c = "StatisticTable";

    /* renamed from: d  reason: collision with root package name */
    public static final String f55435d = "EMUApkTable";

    /* renamed from: e  reason: collision with root package name */
    public static final String f55436e = "BossTable";

    /* renamed from: f  reason: collision with root package name */
    private static c f55437f;

    public c(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i2) {
        super(context, str, cursorFactory, i2);
    }

    public static c a(Context context) {
        c cVar = f55437f;
        if (cVar == null && cVar == null) {
            f55437f = new c(context, f55433b);
        }
        return f55437f;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            try {
                sQLiteDatabase.beginTransaction();
                stringBuffer.append("CREATE TABLE [StatisticTable] (");
                stringBuffer.append("[id] INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, ");
                stringBuffer.append("[uid] TEXT,");
                stringBuffer.append("[type] TEXT,");
                stringBuffer.append("[args1] TEXT,");
                stringBuffer.append("[args2] TEXT,");
                stringBuffer.append("[time] TEXT,");
                stringBuffer.append("[ad] TEXT,");
                stringBuffer.append("[countType] TEXT,");
                stringBuffer.append("[send] INTEGER,");
                stringBuffer.append("[newData] INTEGER,");
                stringBuffer.append("[isdirect] INTEGER)");
                sQLiteDatabase.execSQL(stringBuffer.toString());
                sQLiteDatabase.setTransactionSuccessful();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            sQLiteDatabase.endTransaction();
            try {
                try {
                    sQLiteDatabase.beginTransaction();
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("CREATE TABLE [EMUApkTable] (");
                    stringBuffer2.append("[id] INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, ");
                    stringBuffer2.append("[apk_name] TEXT,");
                    stringBuffer2.append("[logo] TEXT,");
                    stringBuffer2.append("[package_name] TEXT,");
                    stringBuffer2.append("[launch_name] TEXT,");
                    stringBuffer2.append("[team_info] TEXT,");
                    stringBuffer2.append("[ver_info] TEXT,");
                    stringBuffer2.append("[down_url] TEXT,");
                    stringBuffer2.append("[size] TEXT,");
                    stringBuffer2.append("[release_date] TEXT,");
                    stringBuffer2.append("[ver] TEXT,");
                    stringBuffer2.append("[ver_compatible] TEXT,");
                    stringBuffer2.append("[tag_id] TEXT,");
                    stringBuffer2.append("[apkPath] TEXT,");
                    stringBuffer2.append("[downloadFinish] INTEGER)");
                    sQLiteDatabase.execSQL(stringBuffer2.toString());
                    sQLiteDatabase.setTransactionSuccessful();
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
                sQLiteDatabase.endTransaction();
                try {
                    try {
                        StringBuffer stringBuffer3 = new StringBuffer();
                        sQLiteDatabase.beginTransaction();
                        stringBuffer3.append("CREATE TABLE [BossTable] (");
                        stringBuffer3.append("[id] INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, ");
                        stringBuffer3.append("[uid] TEXT,");
                        stringBuffer3.append("[type] TEXT,");
                        stringBuffer3.append("[args1] TEXT,");
                        stringBuffer3.append("[args2] TEXT,");
                        stringBuffer3.append("[time] TEXT,");
                        stringBuffer3.append("[ad] TEXT,");
                        stringBuffer3.append("[countType] TEXT)");
                        sQLiteDatabase.execSQL(stringBuffer3.toString());
                        sQLiteDatabase.setTransactionSuccessful();
                    } catch (Exception e6) {
                        e6.printStackTrace();
                    }
                } finally {
                }
            } finally {
            }
        } finally {
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i4) {
        try {
            try {
                sQLiteDatabase.beginTransaction();
                sQLiteDatabase.execSQL("DROP TABLE StatisticTable");
                sQLiteDatabase.setTransactionSuccessful();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            sQLiteDatabase.endTransaction();
            try {
                sQLiteDatabase.beginTransaction();
                sQLiteDatabase.execSQL("DROP TABLE EMUApkTable");
                sQLiteDatabase.setTransactionSuccessful();
            } catch (Exception e5) {
                e5.printStackTrace();
            }
            sQLiteDatabase.endTransaction();
            try {
                sQLiteDatabase.beginTransaction();
                sQLiteDatabase.execSQL("DROP TABLE BossTable");
                sQLiteDatabase.setTransactionSuccessful();
            } catch (Exception e6) {
                e6.printStackTrace();
            }
            sQLiteDatabase.endTransaction();
            onCreate(sQLiteDatabase);
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public c(Context context, String str) {
        this(context, str, null, 4);
    }
}
