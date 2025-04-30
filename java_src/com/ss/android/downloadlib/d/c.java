package com.ss.android.downloadlib.d;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.ss.android.downloadlib.addownload.j;
import org.json.JSONObject;
/* compiled from: ClickEventHelper.java */
/* loaded from: classes4.dex */
public class c {

    /* renamed from: b  reason: collision with root package name */
    private static volatile c f57423b;

    /* renamed from: a  reason: collision with root package name */
    private SQLiteDatabase f57424a;

    private c() {
        try {
            this.f57424a = new b(j.getContext()).getWritableDatabase();
        } catch (Throwable th) {
            com.ss.android.downloadlib.e.c.a().a(th, "ClickEventHelper");
        }
    }

    public static c a() {
        if (f57423b == null) {
            synchronized (c.class) {
                if (f57423b == null) {
                    f57423b = new c();
                }
            }
        }
        return f57423b;
    }

    public boolean b() {
        return com.ss.android.socialbase.downloader.g.a.c().a("click_event_switch", 0) == 1;
    }

    public boolean c() {
        return com.ss.android.socialbase.downloader.g.a.c().a("click_event_switch", 0) == 2;
    }

    private void c(long j4, String str) {
        SQLiteDatabase sQLiteDatabase = this.f57424a;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen() || j4 <= 0 || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            String optString = new JSONObject(str).optString("req_id");
            if (TextUtils.isEmpty(optString)) {
                return;
            }
            this.f57424a.delete("click_event", "time < ? AND ad_id = ? AND req_id = ?", new String[]{String.valueOf(System.currentTimeMillis() - 1209600000), String.valueOf(j4), optString});
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public boolean b(long j4, String str) {
        SQLiteDatabase sQLiteDatabase = this.f57424a;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen() || j4 <= 0 || TextUtils.isEmpty(str)) {
            return false;
        }
        Cursor cursor = null;
        try {
            try {
                String optString = new JSONObject(str).optString("req_id");
                if (TextUtils.isEmpty(optString)) {
                    return false;
                }
                cursor = this.f57424a.query("click_event", b.f57422a, "time > ? AND ad_id = ? AND req_id = ?", new String[]{String.valueOf(System.currentTimeMillis() - 1209600000), String.valueOf(j4), optString}, null, null, null, null);
                boolean z3 = cursor.getCount() > 0;
                cursor.close();
                return z3;
            } catch (Exception e4) {
                e4.printStackTrace();
                if (cursor != null) {
                    cursor.close();
                }
                return false;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public void a(long j4, String str) {
        String optString;
        SQLiteDatabase sQLiteDatabase = this.f57424a;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen() || j4 <= 0 || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            optString = new JSONObject(str).optString("req_id");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (TextUtils.isEmpty(optString)) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("ad_id", Long.valueOf(j4));
        contentValues.put("req_id", optString);
        contentValues.put("time", Long.valueOf(System.currentTimeMillis()));
        this.f57424a.insert("click_event", null, contentValues);
        c(j4, str);
    }
}
