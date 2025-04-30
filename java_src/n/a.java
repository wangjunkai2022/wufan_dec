package n;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public final class a extends SQLiteOpenHelper {

    /* renamed from: b  reason: collision with root package name */
    private static final String f72746b = "msp.db";

    /* renamed from: c  reason: collision with root package name */
    private static final int f72747c = 1;

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<Context> f72748a;

    public a(Context context) {
        super(context, f72746b, (SQLiteDatabase.CursorFactory) null, 1);
        this.f72748a = new WeakReference<>(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
        if (r2.isOpen() != false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0063, code lost:
        if (r2.isOpen() != false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0065, code lost:
        r2.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<java.lang.String> a() {
        /*
            r6 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            android.database.sqlite.SQLiteDatabase r2 = r6.getReadableDatabase()     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L57
            java.lang.String r3 = "select tid from tb_tid"
            android.database.Cursor r1 = r2.rawQuery(r3, r1)     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
        L10:
            boolean r3 = r1.moveToNext()     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            if (r3 == 0) goto L36
            r3 = 0
            java.lang.String r3 = r1.getString(r3)     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            boolean r4 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            if (r4 != 0) goto L10
            java.lang.ref.WeakReference<android.content.Context> r4 = r6.f72748a     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            java.lang.Object r4 = r4.get()     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            android.content.Context r4 = (android.content.Context) r4     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            java.lang.String r4 = com.alipay.sdk.util.b.h(r4)     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            r5 = 2
            java.lang.String r3 = com.alipay.sdk.encrypt.b.a(r5, r3, r4)     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            r0.add(r3)     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            goto L10
        L36:
            r1.close()
            boolean r1 = r2.isOpen()
            if (r1 == 0) goto L68
            goto L65
        L40:
            r0 = move-exception
            goto L46
        L42:
            goto L58
        L44:
            r0 = move-exception
            r2 = r1
        L46:
            if (r1 == 0) goto L4b
            r1.close()
        L4b:
            if (r2 == 0) goto L56
            boolean r1 = r2.isOpen()
            if (r1 == 0) goto L56
            r2.close()
        L56:
            throw r0
        L57:
            r2 = r1
        L58:
            if (r1 == 0) goto L5d
            r1.close()
        L5d:
            if (r2 == 0) goto L68
            boolean r1 = r2.isOpen()
            if (r1 == 0) goto L68
        L65:
            r2.close()
        L68:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: n.a.a():java.util.List");
    }

    private static void b(SQLiteDatabase sQLiteDatabase) {
        Cursor rawQuery = sQLiteDatabase.rawQuery("select name from tb_tid where tid!='' order by dt asc", null);
        if (rawQuery.getCount() <= 14) {
            rawQuery.close();
            return;
        }
        int count = rawQuery.getCount() - 14;
        String[] strArr = new String[count];
        if (rawQuery.moveToFirst()) {
            int i2 = 0;
            do {
                strArr[i2] = rawQuery.getString(0);
                i2++;
                if (!rawQuery.moveToNext()) {
                    break;
                }
            } while (count > i2);
        }
        rawQuery.close();
        for (int i4 = 0; i4 < count; i4++) {
            if (!TextUtils.isEmpty(strArr[i4])) {
                d(sQLiteDatabase, strArr[i4]);
            }
        }
    }

    private static void d(SQLiteDatabase sQLiteDatabase, String str) {
        try {
            sQLiteDatabase.delete("tb_tid", "name=?", new String[]{str});
        } catch (Exception unused) {
        }
    }

    private void e(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String str4) {
        String a4 = com.alipay.sdk.encrypt.b.a(1, str3, com.alipay.sdk.util.b.h(this.f72748a.get()));
        String p3 = p(str, str2);
        sQLiteDatabase.execSQL("insert into tb_tid (name, tid, key_tid, dt) values (?, ?, ?, datetime('now', 'localtime'))", new Object[]{p3, a4, str4});
        Cursor rawQuery = sQLiteDatabase.rawQuery("select name from tb_tid where tid!='' order by dt asc", null);
        if (rawQuery.getCount() <= 14) {
            rawQuery.close();
            return;
        }
        int count = rawQuery.getCount() - 14;
        String[] strArr = new String[count];
        if (rawQuery.moveToFirst()) {
            int i2 = 0;
            do {
                strArr[i2] = rawQuery.getString(0);
                i2++;
                if (!rawQuery.moveToNext()) {
                    break;
                }
            } while (count > i2);
        }
        rawQuery.close();
        for (int i4 = 0; i4 < count; i4++) {
            if (!TextUtils.isEmpty(strArr[i4])) {
                d(sQLiteDatabase, strArr[i4]);
            }
        }
    }

    private static boolean i(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        int i2;
        Cursor cursor = null;
        try {
            cursor = sQLiteDatabase.rawQuery("select count(*) from tb_tid where name=?", new String[]{p(str, str2)});
            i2 = cursor.moveToFirst() ? cursor.getInt(0) : 0;
            cursor.close();
        } catch (Exception unused) {
            if (cursor != null) {
                cursor.close();
            }
            i2 = 0;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        return i2 > 0;
    }

    private void m(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String str4) {
        sQLiteDatabase.execSQL("update tb_tid set tid=?, key_tid=?, dt=datetime('now', 'localtime') where name=?", new Object[]{com.alipay.sdk.encrypt.b.a(1, str3, com.alipay.sdk.util.b.h(this.f72748a.get())), str4, p(str, str2)});
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003d, code lost:
        if (r4.isOpen() != false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003f, code lost:
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0066, code lost:
        if (r4.isOpen() != false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long o(java.lang.String r7, java.lang.String r8) {
        /*
            r6 = this;
            java.lang.String r0 = "select dt from tb_tid where name=?"
            r1 = 0
            r2 = 0
            android.database.sqlite.SQLiteDatabase r4 = r6.getReadableDatabase()     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L5a
            r5 = 1
            java.lang.String[] r5 = new java.lang.String[r5]     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L45
            java.lang.String r7 = p(r7, r8)     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L45
            r8 = 0
            r5[r8] = r7     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L45
            android.database.Cursor r1 = r4.rawQuery(r0, r5)     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L45
            boolean r7 = r1.moveToFirst()     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L45
            if (r7 == 0) goto L36
            java.text.SimpleDateFormat r7 = new java.text.SimpleDateFormat     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L45
            java.lang.String r0 = "yyyy-MM-dd HH:mm:ss"
            java.util.Locale r5 = java.util.Locale.getDefault()     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L45
            r7.<init>(r0, r5)     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L45
            java.lang.String r8 = r1.getString(r8)     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L45
            java.util.Date r7 = r7.parse(r8)     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L45
            long r7 = r7.getTime()     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L45
            r2 = r7
        L36:
            r1.close()
            boolean r7 = r4.isOpen()
            if (r7 == 0) goto L69
        L3f:
            r4.close()
            goto L69
        L43:
            goto L5b
        L45:
            r7 = move-exception
            goto L49
        L47:
            r7 = move-exception
            r4 = r1
        L49:
            if (r1 == 0) goto L4e
            r1.close()
        L4e:
            if (r4 == 0) goto L59
            boolean r8 = r4.isOpen()
            if (r8 == 0) goto L59
            r4.close()
        L59:
            throw r7
        L5a:
            r4 = r1
        L5b:
            if (r1 == 0) goto L60
            r1.close()
        L60:
            if (r4 == 0) goto L69
            boolean r7 = r4.isOpen()
            if (r7 == 0) goto L69
            goto L3f
        L69:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: n.a.o(java.lang.String, java.lang.String):long");
    }

    private static String p(String str, String str2) {
        return str + str2;
    }

    public final void g(String str, String str2) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabase = getWritableDatabase();
            m(sQLiteDatabase, str, str2, "", "");
            d(sQLiteDatabase, p(str, str2));
            if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
                return;
            }
            sQLiteDatabase.close();
        } catch (Exception unused) {
            if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
                return;
            }
            sQLiteDatabase.close();
        } catch (Throwable th) {
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                sQLiteDatabase.close();
            }
            throw th;
        }
    }

    public final void h(String str, String str2, String str3, String str4) {
        SQLiteDatabase writableDatabase;
        SQLiteDatabase sQLiteDatabase = null;
        try {
            writableDatabase = getWritableDatabase();
        } catch (Exception unused) {
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (i(writableDatabase, str, str2)) {
                m(writableDatabase, str, str2, str3, str4);
            } else {
                String a4 = com.alipay.sdk.encrypt.b.a(1, str3, com.alipay.sdk.util.b.h(this.f72748a.get()));
                String p3 = p(str, str2);
                writableDatabase.execSQL("insert into tb_tid (name, tid, key_tid, dt) values (?, ?, ?, datetime('now', 'localtime'))", new Object[]{p3, a4, str4});
                Cursor rawQuery = writableDatabase.rawQuery("select name from tb_tid where tid!='' order by dt asc", null);
                if (rawQuery.getCount() <= 14) {
                    rawQuery.close();
                } else {
                    int count = rawQuery.getCount() - 14;
                    String[] strArr = new String[count];
                    if (rawQuery.moveToFirst()) {
                        int i2 = 0;
                        do {
                            strArr[i2] = rawQuery.getString(0);
                            i2++;
                            if (!rawQuery.moveToNext()) {
                                break;
                            }
                        } while (count > i2);
                    }
                    rawQuery.close();
                    for (int i4 = 0; i4 < count; i4++) {
                        if (!TextUtils.isEmpty(strArr[i4])) {
                            d(writableDatabase, strArr[i4]);
                        }
                    }
                }
            }
            if (writableDatabase == null || !writableDatabase.isOpen()) {
                return;
            }
            writableDatabase.close();
        } catch (Exception unused2) {
            sQLiteDatabase = writableDatabase;
            if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
                return;
            }
            sQLiteDatabase.close();
        } catch (Throwable th2) {
            th = th2;
            sQLiteDatabase = writableDatabase;
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                sQLiteDatabase.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
        if (r2.isOpen() != false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0055, code lost:
        if (r2.isOpen() != false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String k(java.lang.String r5, java.lang.String r6) {
        /*
            r4 = this;
            java.lang.String r0 = "select tid from tb_tid where name=?"
            r1 = 0
            android.database.sqlite.SQLiteDatabase r2 = r4.getReadableDatabase()     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L48
            r3 = 1
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            java.lang.String r5 = p(r5, r6)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            r6 = 0
            r3[r6] = r5     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            android.database.Cursor r5 = r2.rawQuery(r0, r3)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            boolean r0 = r5.moveToFirst()     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2f
            if (r0 == 0) goto L1f
            java.lang.String r1 = r5.getString(r6)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2f
        L1f:
            r5.close()
            boolean r5 = r2.isOpen()
            if (r5 == 0) goto L58
        L28:
            r2.close()
            goto L58
        L2c:
            r6 = move-exception
            r1 = r5
            goto L37
        L2f:
            goto L4a
        L31:
            r6 = move-exception
            goto L37
        L33:
            r5 = r1
            goto L4a
        L35:
            r6 = move-exception
            r2 = r1
        L37:
            if (r1 == 0) goto L3c
            r1.close()
        L3c:
            if (r2 == 0) goto L47
            boolean r5 = r2.isOpen()
            if (r5 == 0) goto L47
            r2.close()
        L47:
            throw r6
        L48:
            r5 = r1
            r2 = r5
        L4a:
            if (r5 == 0) goto L4f
            r5.close()
        L4f:
            if (r2 == 0) goto L58
            boolean r5 = r2.isOpen()
            if (r5 == 0) goto L58
            goto L28
        L58:
            boolean r5 = android.text.TextUtils.isEmpty(r1)
            if (r5 != 0) goto L6f
            java.lang.ref.WeakReference<android.content.Context> r5 = r4.f72748a
            java.lang.Object r5 = r5.get()
            android.content.Context r5 = (android.content.Context) r5
            java.lang.String r5 = com.alipay.sdk.util.b.h(r5)
            r6 = 2
            java.lang.String r1 = com.alipay.sdk.encrypt.b.a(r6, r1, r5)
        L6f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: n.a.k(java.lang.String, java.lang.String):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
        if (r2.isOpen() != false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0055, code lost:
        if (r2.isOpen() != false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String n(java.lang.String r5, java.lang.String r6) {
        /*
            r4 = this;
            java.lang.String r0 = "select key_tid from tb_tid where name=?"
            r1 = 0
            android.database.sqlite.SQLiteDatabase r2 = r4.getReadableDatabase()     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L48
            r3 = 1
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            java.lang.String r5 = p(r5, r6)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            r6 = 0
            r3[r6] = r5     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            android.database.Cursor r5 = r2.rawQuery(r0, r3)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            boolean r0 = r5.moveToFirst()     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2f
            if (r0 == 0) goto L1f
            java.lang.String r1 = r5.getString(r6)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2f
        L1f:
            r5.close()
            boolean r5 = r2.isOpen()
            if (r5 == 0) goto L58
        L28:
            r2.close()
            goto L58
        L2c:
            r6 = move-exception
            r1 = r5
            goto L37
        L2f:
            goto L4a
        L31:
            r6 = move-exception
            goto L37
        L33:
            r5 = r1
            goto L4a
        L35:
            r6 = move-exception
            r2 = r1
        L37:
            if (r1 == 0) goto L3c
            r1.close()
        L3c:
            if (r2 == 0) goto L47
            boolean r5 = r2.isOpen()
            if (r5 == 0) goto L47
            r2.close()
        L47:
            throw r6
        L48:
            r5 = r1
            r2 = r5
        L4a:
            if (r5 == 0) goto L4f
            r5.close()
        L4f:
            if (r2 == 0) goto L58
            boolean r5 = r2.isOpen()
            if (r5 == 0) goto L58
            goto L28
        L58:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: n.a.n(java.lang.String, java.lang.String):java.lang.String");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("create table if not exists tb_tid (name text primary key, tid text, key_tid text, dt datetime);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i4) {
        sQLiteDatabase.execSQL("drop table if exists tb_tid");
        sQLiteDatabase.execSQL("create table if not exists tb_tid (name text primary key, tid text, key_tid text, dt datetime);");
    }
}
