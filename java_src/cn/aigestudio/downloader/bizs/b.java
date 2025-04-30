package cn.aigestudio.downloader.bizs;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* compiled from: DLDBHelper.java */
/* loaded from: classes2.dex */
final class b extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    private static final String f8357a = "dl.db";

    /* renamed from: b  reason: collision with root package name */
    private static final int f8358b = 3;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context) {
        super(context, f8357a, (SQLiteDatabase.CursorFactory) null, 3);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE task_info(_id INTEGER PRIMARY KEY AUTOINCREMENT, base_url CHAR, real_url CHAR, file_path CHAR, file_name CHAR, mime_type CHAR, e_tag CHAR, disposition CHAR, location CHAR, currentBytes INTEGER, totalBytes INTEGER)");
        sQLiteDatabase.execSQL("CREATE TABLE thread_info(_id INTEGER PRIMARY KEY AUTOINCREMENT, base_url CHAR, start BIGINT, end BIGINT, id CHAR)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i4) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS task_info");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS thread_info");
        onCreate(sQLiteDatabase);
    }
}
