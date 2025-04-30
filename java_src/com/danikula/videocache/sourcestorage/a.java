package com.danikula.videocache.sourcestorage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.danikula.videocache.n;
import com.danikula.videocache.r;
/* compiled from: DatabaseSourceInfoStorage.java */
/* loaded from: classes2.dex */
class a extends SQLiteOpenHelper implements c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f11168a = "SourceInfo";

    /* renamed from: b  reason: collision with root package name */
    private static final String f11169b = "_id";

    /* renamed from: c  reason: collision with root package name */
    private static final String f11170c = "url";

    /* renamed from: e  reason: collision with root package name */
    private static final String f11172e = "mime";

    /* renamed from: g  reason: collision with root package name */
    private static final String f11174g = "CREATE TABLE SourceInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,url TEXT NOT NULL,mime TEXT,length INTEGER);";

    /* renamed from: d  reason: collision with root package name */
    private static final String f11171d = "length";

    /* renamed from: f  reason: collision with root package name */
    private static final String[] f11173f = {"_id", "url", f11171d, "mime"};

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Context context) {
        super(context, "AndroidVideoCache.db", (SQLiteDatabase.CursorFactory) null, 1);
        n.d(context);
    }

    private ContentValues b(r rVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("url", rVar.f11164a);
        contentValues.put(f11171d, Long.valueOf(rVar.f11165b));
        contentValues.put("mime", rVar.f11166c);
        return contentValues;
    }

    private r d(Cursor cursor) {
        return new r(cursor.getString(cursor.getColumnIndexOrThrow("url")), cursor.getLong(cursor.getColumnIndexOrThrow(f11171d)), cursor.getString(cursor.getColumnIndexOrThrow("mime")));
    }

    @Override // com.danikula.videocache.sourcestorage.c
    public void a(String str, r rVar) {
        n.a(str, rVar);
        boolean z3 = get(str) != null;
        ContentValues b4 = b(rVar);
        if (z3) {
            getWritableDatabase().update(f11168a, b4, "url=?", new String[]{str});
        } else {
            getWritableDatabase().insert(f11168a, null, b4);
        }
    }

    @Override // com.danikula.videocache.sourcestorage.c
    public r get(String str) {
        Throwable th;
        Cursor cursor;
        n.d(str);
        r rVar = null;
        try {
            cursor = getReadableDatabase().query(f11168a, f11173f, "url=?", new String[]{str}, null, null, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        rVar = d(cursor);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return rVar;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        n.d(sQLiteDatabase);
        sQLiteDatabase.execSQL(f11174g);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i4) {
        throw new IllegalStateException("Should not be called. There is no any migration");
    }

    @Override // com.danikula.videocache.sourcestorage.c
    public void release() {
        close();
    }
}
