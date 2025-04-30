package com.mob.tools.utils;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.mob.tools.proguard.PublicMemberKeeper;
import java.util.HashMap;
import java.util.LinkedHashMap;
/* loaded from: classes4.dex */
public class SQLiteHelper implements PublicMemberKeeper {

    /* loaded from: classes4.dex */
    public static class SingleTableDB implements PublicMemberKeeper {

        /* renamed from: a  reason: collision with root package name */
        private String f53956a;

        /* renamed from: b  reason: collision with root package name */
        private String f53957b;

        /* renamed from: c  reason: collision with root package name */
        private SQLiteDatabase f53958c;

        /* renamed from: d  reason: collision with root package name */
        private LinkedHashMap<String, String> f53959d;

        /* renamed from: e  reason: collision with root package name */
        private HashMap<String, Boolean> f53960e;

        /* renamed from: f  reason: collision with root package name */
        private String f53961f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f53962g;

        public void addField(String str, String str2, boolean z3) {
            if (this.f53958c == null) {
                this.f53959d.put(str, str2);
                this.f53960e.put(str, Boolean.valueOf(z3));
            }
        }

        private SingleTableDB(String str, String str2) {
            this.f53956a = str;
            this.f53957b = str2;
            this.f53959d = new LinkedHashMap<>();
            this.f53960e = new HashMap<>();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0096 A[DONT_GENERATE] */
        /* JADX WARN: Removed duplicated region for block: B:38:0x009b  */
        /* JADX WARN: Removed duplicated region for block: B:77:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a() throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 315
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mob.tools.utils.SQLiteHelper.SingleTableDB.a():void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            SQLiteDatabase sQLiteDatabase = this.f53958c;
            if (sQLiteDatabase != null) {
                sQLiteDatabase.close();
                this.f53958c = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String c() {
            return this.f53957b;
        }
    }

    public static void close(SingleTableDB singleTableDB) {
        singleTableDB.b();
    }

    public static int delete(SingleTableDB singleTableDB, String str, String[] strArr) throws Throwable {
        singleTableDB.a();
        return singleTableDB.f53958c.delete(singleTableDB.c(), str, strArr);
    }

    public static SingleTableDB getDatabase(Context context, String str) {
        return getDatabase(context != null ? context.getDatabasePath(str).getPath() : null, str);
    }

    public static long insert(SingleTableDB singleTableDB, ContentValues contentValues) throws Throwable {
        singleTableDB.a();
        return singleTableDB.f53958c.replace(singleTableDB.c(), null, contentValues);
    }

    public static Cursor query(SingleTableDB singleTableDB, String[] strArr, String str, String[] strArr2, String str2) throws Throwable {
        singleTableDB.a();
        return singleTableDB.f53958c.query(singleTableDB.c(), strArr, str, strArr2, null, null, str2);
    }

    public static int update(SingleTableDB singleTableDB, ContentValues contentValues, String str, String[] strArr) throws Throwable {
        singleTableDB.a();
        return singleTableDB.f53958c.update(singleTableDB.c(), contentValues, str, strArr);
    }

    public static SingleTableDB getDatabase(String str, String str2) {
        return new SingleTableDB(str, str2);
    }
}
