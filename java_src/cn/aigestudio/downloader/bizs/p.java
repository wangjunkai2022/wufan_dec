package cn.aigestudio.downloader.bizs;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.List;
/* compiled from: ThreadDAO.java */
/* loaded from: classes2.dex */
class p implements n {

    /* renamed from: a  reason: collision with root package name */
    private final b f8430a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(Context context) {
        this.f8430a = new b(context);
    }

    @Override // cn.aigestudio.downloader.bizs.n
    public void a(String str) {
        SQLiteDatabase writableDatabase = this.f8430a.getWritableDatabase();
        writableDatabase.execSQL("DELETE FROM thread_info WHERE id=?", new String[]{str});
        writableDatabase.close();
    }

    @Override // cn.aigestudio.downloader.bizs.n
    public j c(String str) {
        SQLiteDatabase writableDatabase = this.f8430a.getWritableDatabase();
        Cursor rawQuery = writableDatabase.rawQuery("SELECT base_url, start, end FROM thread_info WHERE id=? order by end", new String[]{str});
        j jVar = rawQuery.moveToFirst() ? new j(str, rawQuery.getString(0), rawQuery.getInt(1), rawQuery.getInt(2)) : null;
        rawQuery.close();
        writableDatabase.close();
        return jVar;
    }

    @Override // cn.aigestudio.downloader.bizs.n
    public void f(j jVar) {
        try {
            SQLiteDatabase writableDatabase = this.f8430a.getWritableDatabase();
            writableDatabase.execSQL("UPDATE thread_info SET start=? WHERE base_url=? AND id=?", new Object[]{Long.valueOf(jVar.f8421c), jVar.f8420b, jVar.f8419a});
            writableDatabase.close();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // cn.aigestudio.downloader.bizs.n
    public void g(j jVar) {
        SQLiteDatabase writableDatabase = this.f8430a.getWritableDatabase();
        writableDatabase.execSQL("INSERT INTO thread_info(base_url, start, end, id) VALUES (?,?,?,?)", new Object[]{jVar.f8420b, Long.valueOf(jVar.f8421c), Long.valueOf(jVar.f8422d), jVar.f8419a});
        writableDatabase.close();
    }

    @Override // cn.aigestudio.downloader.bizs.n
    public void i(String str) {
        SQLiteDatabase writableDatabase = this.f8430a.getWritableDatabase();
        writableDatabase.execSQL("DELETE FROM thread_info WHERE base_url=?", new String[]{str});
        writableDatabase.close();
    }

    @Override // cn.aigestudio.downloader.bizs.n
    public List<j> j(String str) {
        ArrayList arrayList = new ArrayList();
        SQLiteDatabase writableDatabase = this.f8430a.getWritableDatabase();
        Cursor rawQuery = writableDatabase.rawQuery("SELECT base_url, start, end, id FROM thread_info WHERE base_url=? order by end", new String[]{str});
        while (rawQuery.moveToNext()) {
            arrayList.add(new j(rawQuery.getString(3), rawQuery.getString(0), rawQuery.getInt(1), rawQuery.getInt(2)));
        }
        rawQuery.close();
        writableDatabase.close();
        return arrayList;
    }
}
