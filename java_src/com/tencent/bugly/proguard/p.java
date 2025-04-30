package com.tencent.bugly.proguard;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    private static p f59772a;

    /* renamed from: b  reason: collision with root package name */
    private static q f59773b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f59774c;

    private p(Context context, List<com.tencent.bugly.a> list) {
        f59773b = new q(context, list);
    }

    private synchronized boolean b(r rVar) {
        ContentValues d4;
        if (rVar == null) {
            return false;
        }
        try {
            SQLiteDatabase writableDatabase = f59773b.getWritableDatabase();
            if (writableDatabase == null || (d4 = d(rVar)) == null) {
                return false;
            }
            long replace = writableDatabase.replace("t_pf", "_id", d4);
            if (replace >= 0) {
                x.c("[Database] insert %s success.", "t_pf");
                rVar.f59797a = replace;
                return true;
            }
            return false;
        } catch (Throwable th) {
            try {
                if (!x.a(th)) {
                    th.printStackTrace();
                }
                return false;
            } finally {
            }
        }
    }

    private static ContentValues c(r rVar) {
        if (rVar == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            long j4 = rVar.f59797a;
            if (j4 > 0) {
                contentValues.put("_id", Long.valueOf(j4));
            }
            contentValues.put(com.umeng.analytics.pro.am.f60483e, Integer.valueOf(rVar.f59798b));
            contentValues.put("_pc", rVar.f59799c);
            contentValues.put("_th", rVar.f59800d);
            contentValues.put("_tm", Long.valueOf(rVar.f59801e));
            byte[] bArr = rVar.f59803g;
            if (bArr != null) {
                contentValues.put("_dt", bArr);
            }
            return contentValues;
        } catch (Throwable th) {
            if (!x.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    private static ContentValues d(r rVar) {
        if (rVar != null && !z.a(rVar.f59802f)) {
            try {
                ContentValues contentValues = new ContentValues();
                long j4 = rVar.f59797a;
                if (j4 > 0) {
                    contentValues.put("_id", Long.valueOf(j4));
                }
                contentValues.put(com.umeng.analytics.pro.am.f60483e, rVar.f59802f);
                contentValues.put("_tm", Long.valueOf(rVar.f59801e));
                byte[] bArr = rVar.f59803g;
                if (bArr != null) {
                    contentValues.put("_dt", bArr);
                }
                return contentValues;
            } catch (Throwable th) {
                if (!x.a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public static synchronized p a(Context context, List<com.tencent.bugly.a> list) {
        p pVar;
        synchronized (p.class) {
            if (f59772a == null) {
                f59772a = new p(context, list);
            }
            pVar = f59772a;
        }
        return pVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BUGLY */
    /* loaded from: classes4.dex */
    public class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        private int f59775a;

        /* renamed from: b  reason: collision with root package name */
        private o f59776b;

        /* renamed from: c  reason: collision with root package name */
        private String f59777c;

        /* renamed from: d  reason: collision with root package name */
        private ContentValues f59778d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f59779e;

        /* renamed from: f  reason: collision with root package name */
        private String[] f59780f;

        /* renamed from: g  reason: collision with root package name */
        private String f59781g;

        /* renamed from: h  reason: collision with root package name */
        private String[] f59782h;

        /* renamed from: i  reason: collision with root package name */
        private String f59783i;

        /* renamed from: j  reason: collision with root package name */
        private String f59784j;

        /* renamed from: k  reason: collision with root package name */
        private String f59785k;

        /* renamed from: l  reason: collision with root package name */
        private String f59786l;

        /* renamed from: m  reason: collision with root package name */
        private String f59787m;

        /* renamed from: n  reason: collision with root package name */
        private String[] f59788n;

        /* renamed from: o  reason: collision with root package name */
        private int f59789o;

        /* renamed from: p  reason: collision with root package name */
        private String f59790p;

        /* renamed from: q  reason: collision with root package name */
        private byte[] f59791q;

        public a(int i2, o oVar) {
            this.f59775a = i2;
            this.f59776b = oVar;
        }

        public final void a(boolean z3, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
            this.f59779e = z3;
            this.f59777c = str;
            this.f59780f = strArr;
            this.f59781g = str2;
            this.f59782h = strArr2;
            this.f59783i = str3;
            this.f59784j = str4;
            this.f59785k = str5;
            this.f59786l = str6;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            switch (this.f59775a) {
                case 1:
                    p.this.a(this.f59777c, this.f59778d, this.f59776b);
                    return;
                case 2:
                    p.this.a(this.f59777c, this.f59787m, this.f59788n, this.f59776b);
                    return;
                case 3:
                    Cursor a4 = p.this.a(this.f59779e, this.f59777c, this.f59780f, this.f59781g, this.f59782h, this.f59783i, this.f59784j, this.f59785k, this.f59786l, this.f59776b);
                    if (a4 != null) {
                        a4.close();
                        return;
                    }
                    return;
                case 4:
                    p.this.a(this.f59789o, this.f59790p, this.f59791q, this.f59776b);
                    return;
                case 5:
                    p.this.a(this.f59789o, this.f59776b);
                    return;
                case 6:
                    p.this.a(this.f59789o, this.f59790p, this.f59776b);
                    return;
                default:
                    return;
            }
        }

        public final void a(int i2, String str, byte[] bArr) {
            this.f59789o = i2;
            this.f59790p = str;
            this.f59791q = bArr;
        }
    }

    public static synchronized p a() {
        p pVar;
        synchronized (p.class) {
            pVar = f59772a;
        }
        return pVar;
    }

    public final long a(String str, ContentValues contentValues, o oVar, boolean z3) {
        return a(str, contentValues, (o) null);
    }

    private synchronized List<r> c(int i2) {
        Cursor cursor;
        try {
            SQLiteDatabase writableDatabase = f59773b.getWritableDatabase();
            if (writableDatabase != null) {
                String str = "_id = " + i2;
                cursor = writableDatabase.query("t_pf", null, str, null, null, null, null);
                if (cursor == null) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
                try {
                    StringBuilder sb = new StringBuilder();
                    ArrayList arrayList = new ArrayList();
                    while (cursor.moveToNext()) {
                        r b4 = b(cursor);
                        if (b4 != null) {
                            arrayList.add(b4);
                        } else {
                            String string = cursor.getString(cursor.getColumnIndex(com.umeng.analytics.pro.am.f60483e));
                            sb.append(" or _tp");
                            sb.append(" = ");
                            sb.append(string);
                        }
                    }
                    if (sb.length() > 0) {
                        sb.append(" and _id");
                        sb.append(" = ");
                        sb.append(i2);
                        x.d("[Database] deleted %s illegal data %d.", "t_pf", Integer.valueOf(writableDatabase.delete("t_pf", str.substring(4), null)));
                    }
                    cursor.close();
                    return arrayList;
                } catch (Throwable th) {
                    th = th;
                    if (!x.a(th)) {
                        th.printStackTrace();
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
        return null;
    }

    public final Cursor a(String str, String[] strArr, String str2, String[] strArr2, o oVar, boolean z3) {
        return a(false, str, strArr, str2, null, null, null, null, null, null);
    }

    public final int a(String str, String str2, String[] strArr, o oVar, boolean z3) {
        return a(str, str2, (String[]) null, (o) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized long a(String str, ContentValues contentValues, o oVar) {
        long j4;
        j4 = 0;
        try {
            SQLiteDatabase writableDatabase = f59773b.getWritableDatabase();
            if (writableDatabase != null && contentValues != null) {
                long replace = writableDatabase.replace(str, "_id", contentValues);
                if (replace >= 0) {
                    x.c("[Database] insert %s success.", str);
                } else {
                    x.d("[Database] replace %s error.", str);
                }
                j4 = replace;
            }
        } catch (Throwable th) {
            try {
                if (!x.a(th)) {
                    th.printStackTrace();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return j4;
    }

    public final synchronized void b(int i2) {
        String str;
        SQLiteDatabase writableDatabase = f59773b.getWritableDatabase();
        if (writableDatabase != null) {
            if (i2 >= 0) {
                str = "_tp = " + i2;
            } else {
                str = null;
            }
            x.c("[Database] deleted %s data %d", "t_lr", Integer.valueOf(writableDatabase.delete("t_lr", str, null)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized Cursor a(boolean z3, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6, o oVar) {
        Cursor cursor;
        cursor = null;
        try {
            SQLiteDatabase writableDatabase = f59773b.getWritableDatabase();
            if (writableDatabase != null) {
                cursor = writableDatabase.query(z3, str, strArr, str2, strArr2, str3, str4, str5, str6);
            }
        } finally {
            try {
                return cursor;
            } finally {
            }
        }
        return cursor;
    }

    private static r b(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            r rVar = new r();
            rVar.f59797a = cursor.getLong(cursor.getColumnIndex("_id"));
            rVar.f59801e = cursor.getLong(cursor.getColumnIndex("_tm"));
            rVar.f59802f = cursor.getString(cursor.getColumnIndex(com.umeng.analytics.pro.am.f60483e));
            rVar.f59803g = cursor.getBlob(cursor.getColumnIndex("_dt"));
            return rVar;
        } catch (Throwable th) {
            if (!x.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized int a(String str, String str2, String[] strArr, o oVar) {
        int i2;
        i2 = 0;
        try {
            SQLiteDatabase writableDatabase = f59773b.getWritableDatabase();
            if (writableDatabase != null) {
                i2 = writableDatabase.delete(str, str2, strArr);
            }
        } catch (Throwable th) {
            try {
                if (!x.a(th)) {
                    th.printStackTrace();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return i2;
    }

    public final boolean a(int i2, String str, byte[] bArr, o oVar, boolean z3) {
        if (!z3) {
            a aVar = new a(4, null);
            aVar.a(i2, str, bArr);
            w.a().a(aVar);
            return true;
        }
        return a(i2, str, bArr, (o) null);
    }

    public final Map<String, byte[]> a(int i2, o oVar, boolean z3) {
        return a(i2, (o) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i2, String str, byte[] bArr, o oVar) {
        try {
            r rVar = new r();
            rVar.f59797a = i2;
            rVar.f59802f = str;
            rVar.f59801e = System.currentTimeMillis();
            rVar.f59803g = bArr;
            return b(rVar);
        } catch (Throwable th) {
            if (!x.a(th)) {
                th.printStackTrace();
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, byte[]> a(int i2, o oVar) {
        HashMap hashMap = null;
        try {
            List<r> c4 = c(i2);
            if (c4 != null) {
                HashMap hashMap2 = new HashMap();
                try {
                    for (r rVar : c4) {
                        byte[] bArr = rVar.f59803g;
                        if (bArr != null) {
                            hashMap2.put(rVar.f59802f, bArr);
                        }
                    }
                    return hashMap2;
                } catch (Throwable th) {
                    th = th;
                    hashMap = hashMap2;
                    if (x.a(th)) {
                        return hashMap;
                    }
                    th.printStackTrace();
                    return hashMap;
                }
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final synchronized boolean a(r rVar) {
        ContentValues c4;
        if (rVar == null) {
            return false;
        }
        try {
            SQLiteDatabase writableDatabase = f59773b.getWritableDatabase();
            if (writableDatabase == null || (c4 = c(rVar)) == null) {
                return false;
            }
            long replace = writableDatabase.replace("t_lr", "_id", c4);
            if (replace >= 0) {
                x.c("[Database] insert %s success.", "t_lr");
                rVar.f59797a = replace;
                return true;
            }
            return false;
        } catch (Throwable th) {
            try {
                if (!x.a(th)) {
                    th.printStackTrace();
                }
                return false;
            } finally {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00a8 A[Catch: all -> 0x00b1, TRY_LEAVE, TryCatch #2 {, blocks: (B:3:0x0001, B:14:0x0031, B:30:0x0099, B:39:0x00ad, B:35:0x00a2, B:37:0x00a8), top: B:51:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ad A[Catch: all -> 0x00ba, TRY_ENTER, TryCatch #2 {, blocks: (B:3:0x0001, B:14:0x0031, B:30:0x0099, B:39:0x00ad, B:35:0x00a2, B:37:0x00a8), top: B:51:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized java.util.List<com.tencent.bugly.proguard.r> a(int r12) {
        /*
            r11 = this;
            monitor-enter(r11)
            com.tencent.bugly.proguard.q r0 = com.tencent.bugly.proguard.p.f59773b     // Catch: java.lang.Throwable -> Lba
            android.database.sqlite.SQLiteDatabase r0 = r0.getWritableDatabase()     // Catch: java.lang.Throwable -> Lba
            r9 = 0
            if (r0 == 0) goto Lb8
            if (r12 < 0) goto L20
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L1c
            java.lang.String r2 = "_tp = "
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L1c
            r1.append(r12)     // Catch: java.lang.Throwable -> L1c
            java.lang.String r12 = r1.toString()     // Catch: java.lang.Throwable -> L1c
            r4 = r12
            goto L21
        L1c:
            r12 = move-exception
            r0 = r9
            goto La2
        L20:
            r4 = r9
        L21:
            java.lang.String r2 = "t_lr"
            r3 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r1 = r0
            android.database.Cursor r12 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L1c
            if (r12 != 0) goto L36
            if (r12 == 0) goto L34
            r12.close()     // Catch: java.lang.Throwable -> Lba
        L34:
            monitor-exit(r11)
            return r9
        L36:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L9e
            r1.<init>()     // Catch: java.lang.Throwable -> L9e
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L9e
            r2.<init>()     // Catch: java.lang.Throwable -> L9e
        L40:
            boolean r3 = r12.moveToNext()     // Catch: java.lang.Throwable -> L9e
            r4 = 0
            if (r3 == 0) goto L71
            com.tencent.bugly.proguard.r r3 = a(r12)     // Catch: java.lang.Throwable -> L9e
            if (r3 == 0) goto L51
            r2.add(r3)     // Catch: java.lang.Throwable -> L9e
            goto L40
        L51:
            java.lang.String r3 = "_id"
            int r3 = r12.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L69
            long r5 = r12.getLong(r3)     // Catch: java.lang.Throwable -> L69
            java.lang.String r3 = " or _id"
            r1.append(r3)     // Catch: java.lang.Throwable -> L69
            java.lang.String r3 = " = "
            r1.append(r3)     // Catch: java.lang.Throwable -> L69
            r1.append(r5)     // Catch: java.lang.Throwable -> L69
            goto L40
        L69:
            java.lang.String r3 = "[Database] unknown id."
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L9e
            com.tencent.bugly.proguard.x.d(r3, r4)     // Catch: java.lang.Throwable -> L9e
            goto L40
        L71:
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L9e
            int r3 = r1.length()     // Catch: java.lang.Throwable -> L9e
            if (r3 <= 0) goto L99
            r3 = 4
            java.lang.String r1 = r1.substring(r3)     // Catch: java.lang.Throwable -> L9e
            java.lang.String r3 = "t_lr"
            int r0 = r0.delete(r3, r1, r9)     // Catch: java.lang.Throwable -> L9e
            java.lang.String r1 = "[Database] deleted %s illegal data %d"
            r3 = 2
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L9e
            java.lang.String r5 = "t_lr"
            r3[r4] = r5     // Catch: java.lang.Throwable -> L9e
            r4 = 1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L9e
            r3[r4] = r0     // Catch: java.lang.Throwable -> L9e
            com.tencent.bugly.proguard.x.d(r1, r3)     // Catch: java.lang.Throwable -> L9e
        L99:
            r12.close()     // Catch: java.lang.Throwable -> Lba
            monitor-exit(r11)
            return r2
        L9e:
            r0 = move-exception
            r10 = r0
            r0 = r12
            r12 = r10
        La2:
            boolean r1 = com.tencent.bugly.proguard.x.a(r12)     // Catch: java.lang.Throwable -> Lb1
            if (r1 != 0) goto Lab
            r12.printStackTrace()     // Catch: java.lang.Throwable -> Lb1
        Lab:
            if (r0 == 0) goto Lb8
            r0.close()     // Catch: java.lang.Throwable -> Lba
            goto Lb8
        Lb1:
            r12 = move-exception
            if (r0 == 0) goto Lb7
            r0.close()     // Catch: java.lang.Throwable -> Lba
        Lb7:
            throw r12     // Catch: java.lang.Throwable -> Lba
        Lb8:
            monitor-exit(r11)
            return r9
        Lba:
            r12 = move-exception
            monitor-exit(r11)
            goto Lbe
        Lbd:
            throw r12
        Lbe:
            goto Lbd
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.p.a(int):java.util.List");
    }

    public final synchronized void a(List<r> list) {
        if (list != null) {
            if (list.size() != 0) {
                SQLiteDatabase writableDatabase = f59773b.getWritableDatabase();
                if (writableDatabase != null) {
                    StringBuilder sb = new StringBuilder();
                    for (r rVar : list) {
                        sb.append(" or _id");
                        sb.append(" = ");
                        sb.append(rVar.f59797a);
                    }
                    String sb2 = sb.toString();
                    if (sb2.length() > 0) {
                        sb2 = sb2.substring(4);
                    }
                    sb.setLength(0);
                    x.c("[Database] deleted %s data %d", "t_lr", Integer.valueOf(writableDatabase.delete("t_lr", sb2, null)));
                }
            }
        }
    }

    private static r a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            r rVar = new r();
            rVar.f59797a = cursor.getLong(cursor.getColumnIndex("_id"));
            rVar.f59798b = cursor.getInt(cursor.getColumnIndex(com.umeng.analytics.pro.am.f60483e));
            rVar.f59799c = cursor.getString(cursor.getColumnIndex("_pc"));
            rVar.f59800d = cursor.getString(cursor.getColumnIndex("_th"));
            rVar.f59801e = cursor.getLong(cursor.getColumnIndex("_tm"));
            rVar.f59803g = cursor.getBlob(cursor.getColumnIndex("_dt"));
            return rVar;
        } catch (Throwable th) {
            if (!x.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean a(int i2, String str, o oVar) {
        boolean z3;
        String str2;
        z3 = false;
        try {
            SQLiteDatabase writableDatabase = f59773b.getWritableDatabase();
            if (writableDatabase != null) {
                if (z.a(str)) {
                    str2 = "_id = " + i2;
                } else {
                    str2 = "_id = " + i2 + " and _tp = \"" + str + m.a.f72569g;
                }
                int delete = writableDatabase.delete("t_pf", str2, null);
                x.c("[Database] deleted %s data %d", "t_pf", Integer.valueOf(delete));
                if (delete > 0) {
                    z3 = true;
                }
            }
        } catch (Throwable th) {
            try {
                if (!x.a(th)) {
                    th.printStackTrace();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z3;
    }
}
