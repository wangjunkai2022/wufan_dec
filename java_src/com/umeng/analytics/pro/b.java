package com.umeng.analytics.pro;

import android.content.Context;
import android.content.ContextWrapper;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import java.io.File;
/* compiled from: UMDBCreater.java */
/* loaded from: classes4.dex */
class b extends ContextWrapper {

    /* renamed from: a  reason: collision with root package name */
    private String f60513a;

    public b(Context context, String str) {
        super(context);
        this.f60513a = str;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getDatabasePath(String str) {
        File file = new File(this.f60513a + str);
        if (!file.getParentFile().exists() && !file.getParentFile().isDirectory()) {
            file.getParentFile().mkdirs();
        }
        return file;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SQLiteDatabase openOrCreateDatabase(String str, int i2, SQLiteDatabase.CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
        return SQLiteDatabase.openDatabase(getDatabasePath(str).getAbsolutePath(), cursorFactory, 268435472);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SQLiteDatabase openOrCreateDatabase(String str, int i2, SQLiteDatabase.CursorFactory cursorFactory) {
        return SQLiteDatabase.openDatabase(getDatabasePath(str).getAbsolutePath(), cursorFactory, 268435472);
    }
}
