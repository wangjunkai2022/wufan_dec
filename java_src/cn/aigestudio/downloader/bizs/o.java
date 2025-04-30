package cn.aigestudio.downloader.bizs;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
/* compiled from: TaskDAO.java */
/* loaded from: classes2.dex */
class o implements m {

    /* renamed from: a  reason: collision with root package name */
    private final b f8429a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(Context context) {
        this.f8429a = new b(context);
    }

    @Override // cn.aigestudio.downloader.bizs.m
    public f b(String str) {
        f fVar;
        SQLiteDatabase writableDatabase = this.f8429a.getWritableDatabase();
        Cursor rawQuery = writableDatabase.rawQuery("SELECT base_url, real_url, file_path, file_name, mime_type, e_tag, disposition, location, currentBytes, totalBytes FROM task_info WHERE base_url=?", new String[]{str});
        if (rawQuery.moveToFirst()) {
            fVar = new f();
            fVar.f8375e = rawQuery.getString(0);
            fVar.f8376f = rawQuery.getString(1);
            fVar.f8374d = rawQuery.getString(2);
            fVar.f8373c = rawQuery.getString(3);
            fVar.f8381k = rawQuery.getString(4);
            fVar.f8382l = rawQuery.getString(5);
            fVar.f8383m = rawQuery.getString(6);
            fVar.f8384n = rawQuery.getString(7);
            fVar.f8372b.set(rawQuery.getInt(8));
            fVar.f8371a.set(rawQuery.getInt(9));
        } else {
            fVar = null;
        }
        rawQuery.close();
        writableDatabase.close();
        return fVar;
    }

    @Override // cn.aigestudio.downloader.bizs.m
    public void d(f fVar) {
        SQLiteDatabase writableDatabase = this.f8429a.getWritableDatabase();
        writableDatabase.execSQL("UPDATE task_info SET disposition=?,location=?,mime_type=?,totalBytes=?,file_name=?,currentBytes=? WHERE base_url=?", new Object[]{fVar.f8383m, fVar.f8384n, fVar.f8381k, Long.valueOf(fVar.f8371a.get()), fVar.f8373c, Long.valueOf(fVar.f8372b.get()), fVar.f8375e});
        writableDatabase.close();
    }

    @Override // cn.aigestudio.downloader.bizs.m
    public void e(f fVar) {
        SQLiteDatabase writableDatabase = this.f8429a.getWritableDatabase();
        writableDatabase.execSQL("INSERT INTO task_info(base_url, real_url, file_path, file_name, mime_type, e_tag, disposition, location, currentBytes, totalBytes) values (?,?,?,?,?,?,?,?,?,?)", new Object[]{fVar.f8375e, fVar.f8376f, fVar.f8374d, fVar.f8373c, fVar.f8381k, fVar.f8382l, fVar.f8383m, fVar.f8384n, Long.valueOf(fVar.f8372b.get()), Long.valueOf(fVar.f8371a.get())});
        writableDatabase.close();
    }

    @Override // cn.aigestudio.downloader.bizs.m
    public void h(String str) {
        SQLiteDatabase writableDatabase = this.f8429a.getWritableDatabase();
        writableDatabase.execSQL("DELETE FROM task_info WHERE base_url=?", new String[]{str});
        writableDatabase.close();
    }
}
