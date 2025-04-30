package com.umeng.analytics.pro;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* compiled from: UMDBUtils.java */
/* loaded from: classes4.dex */
public class g {
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0032, code lost:
        if (r1 == null) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.lang.String r5, android.database.sqlite.SQLiteDatabase r6) {
        /*
            r0 = 0
            if (r5 != 0) goto L4
            return r0
        L4:
            r1 = 0
            java.lang.String r2 = "select count(*) as c from sqlite_master where type=? and name=?"
            r3 = 2
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L31
            java.lang.String r4 = "table"
            r3[r0] = r4     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L31
            java.lang.String r5 = r5.trim()     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L31
            r4 = 1
            r3[r4] = r5     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L31
            android.database.Cursor r1 = r6.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L31
            boolean r5 = r1.moveToNext()     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L31
            if (r5 == 0) goto L26
            int r5 = r1.getInt(r0)     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L31
            if (r5 <= 0) goto L26
            r0 = 1
        L26:
            r1.close()
            goto L35
        L2a:
            r5 = move-exception
            if (r1 == 0) goto L30
            r1.close()
        L30:
            throw r5
        L31:
            if (r1 == 0) goto L35
            goto L26
        L35:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.a(java.lang.String, android.database.sqlite.SQLiteDatabase):boolean");
    }

    public static String b(Context context) {
        File databasePath = context.getDatabasePath(d.f60663b);
        return databasePath.getParent() + File.separator;
    }

    public static String c(Context context) {
        return b(context) + "subprocess/";
    }

    public static List<String> b(List<String> list) {
        ArrayList arrayList = new ArrayList();
        try {
            for (String str : list) {
                if (Collections.frequency(arrayList, str) < 1) {
                    arrayList.add(str);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return arrayList;
    }

    public static void a(Context context) {
        if (context == null) {
            return;
        }
        try {
            File databasePath = context.getDatabasePath(d.f60663b);
            if (databasePath != null && databasePath.exists()) {
                databasePath.delete();
            }
            e.a(context).a();
        } catch (Throwable unused) {
        }
    }

    public static String a(List<String> list) {
        return TextUtils.join("!", list);
    }

    public static List<String> a(String str) {
        return new ArrayList(Arrays.asList(str.split("!")));
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
        if (r0.isClosed() == false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002f, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0047, code lost:
        if (r0.isClosed() == false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(android.database.sqlite.SQLiteDatabase r4, java.lang.String r5, java.lang.String r6) {
        /*
            r0 = 0
            r1 = 0
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L40
            r2.<init>()     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L40
            java.lang.String r3 = "SELECT * FROM "
            r2.append(r3)     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L40
            r2.append(r5)     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L40
            java.lang.String r5 = " LIMIT 0"
            r2.append(r5)     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L40
            java.lang.String r5 = r2.toString()     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L40
            android.database.Cursor r0 = r4.rawQuery(r5, r0)     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L40
            if (r0 == 0) goto L27
            int r4 = r0.getColumnIndex(r6)     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L40
            r5 = -1
            if (r4 == r5) goto L27
            r4 = 1
            r1 = 1
        L27:
            if (r0 == 0) goto L4a
            boolean r4 = r0.isClosed()
            if (r4 != 0) goto L4a
        L2f:
            r0.close()
            goto L4a
        L33:
            r4 = move-exception
            if (r0 == 0) goto L3f
            boolean r5 = r0.isClosed()
            if (r5 != 0) goto L3f
            r0.close()
        L3f:
            throw r4
        L40:
            if (r0 == 0) goto L4a
            boolean r4 = r0.isClosed()
            if (r4 != 0) goto L4a
            goto L2f
        L4a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.a(android.database.sqlite.SQLiteDatabase, java.lang.String, java.lang.String):boolean");
    }

    public static void a(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3) {
        sQLiteDatabase.execSQL("alter table " + str + " add " + str2 + " " + str3);
    }
}
