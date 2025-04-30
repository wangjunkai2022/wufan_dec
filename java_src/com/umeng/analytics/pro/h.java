package com.umeng.analytics.pro;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.analytics.pro.d;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: UMStoreManager.java */
/* loaded from: classes4.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    public static final int f60737a = 2049;

    /* renamed from: b  reason: collision with root package name */
    public static final int f60738b = 2050;

    /* renamed from: c  reason: collision with root package name */
    private static final int f60739c = 1000;

    /* renamed from: d  reason: collision with root package name */
    private static Context f60740d = null;

    /* renamed from: e  reason: collision with root package name */
    private static String f60741e = null;

    /* renamed from: f  reason: collision with root package name */
    private static final String f60742f = "umeng+";

    /* renamed from: g  reason: collision with root package name */
    private static final String f60743g = "ek__id";

    /* renamed from: h  reason: collision with root package name */
    private static final String f60744h = "ek_key";

    /* renamed from: i  reason: collision with root package name */
    private List<String> f60745i;

    /* renamed from: j  reason: collision with root package name */
    private List<Integer> f60746j;

    /* renamed from: k  reason: collision with root package name */
    private String f60747k;

    /* renamed from: l  reason: collision with root package name */
    private List<String> f60748l;

    /* compiled from: UMStoreManager.java */
    /* loaded from: classes4.dex */
    public enum a {
        AUTOPAGE,
        PAGE,
        BEGIN,
        END,
        NEWSESSION,
        INSTANTSESSIONBEGIN
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UMStoreManager.java */
    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private static final h f60756a = new h();

        private b() {
        }
    }

    public static h a(Context context) {
        h hVar = b.f60756a;
        if (f60740d == null && context != null) {
            f60740d = context.getApplicationContext();
            hVar.k();
        }
        return hVar;
    }

    private void k() {
        synchronized (this) {
            l();
            this.f60745i.clear();
            this.f60748l.clear();
            this.f60746j.clear();
        }
    }

    private void l() {
        try {
            if (TextUtils.isEmpty(f60741e)) {
                String multiProcessSP = UMUtils.getMultiProcessSP(f60740d, f60743g);
                if (TextUtils.isEmpty(multiProcessSP)) {
                    multiProcessSP = PreferenceWrapper.getDefault(f60740d).getString(f60743g, null);
                    if (TextUtils.isEmpty(multiProcessSP)) {
                        multiProcessSP = UMUtils.genId();
                    }
                    if (!TextUtils.isEmpty(multiProcessSP)) {
                        UMUtils.setMultiProcessSP(f60740d, f60743g, multiProcessSP);
                    }
                }
                if (!TextUtils.isEmpty(multiProcessSP)) {
                    String substring = multiProcessSP.substring(1, 9);
                    StringBuilder sb = new StringBuilder();
                    for (int i2 = 0; i2 < substring.length(); i2++) {
                        char charAt = substring.charAt(i2);
                        if (Character.isDigit(charAt)) {
                            if (Integer.parseInt(Character.toString(charAt)) == 0) {
                                sb.append(0);
                            } else {
                                sb.append(10 - Integer.parseInt(Character.toString(charAt)));
                            }
                        } else {
                            sb.append(charAt);
                        }
                    }
                    f60741e = sb.toString();
                }
                if (TextUtils.isEmpty(f60741e)) {
                    return;
                }
                f60741e += new StringBuilder(f60741e).reverse().toString();
                String multiProcessSP2 = UMUtils.getMultiProcessSP(f60740d, f60744h);
                if (TextUtils.isEmpty(multiProcessSP2)) {
                    UMUtils.setMultiProcessSP(f60740d, f60744h, c(f60742f));
                } else if (!f60742f.equals(d(multiProcessSP2))) {
                    b(true, false);
                    a(true, false);
                    h();
                    i();
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void b() {
        this.f60748l.clear();
    }

    public boolean c() {
        return this.f60748l.isEmpty();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x007d, code lost:
        if (r0 == null) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void d() {
        /*
            r7 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            r0.beginTransaction()     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            com.umeng.analytics.pro.t r1 = com.umeng.analytics.pro.t.a()     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            java.lang.String r1 = r1.c()     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            if (r2 == 0) goto L29
            r0.endTransaction()     // Catch: java.lang.Throwable -> L1f
        L1f:
            android.content.Context r0 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            return
        L29:
            r2 = 2
            java.lang.String r3 = ""
            java.lang.String r4 = "-1"
            java.lang.String[] r3 = new java.lang.String[]{r3, r4}     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            r4 = 0
        L33:
            if (r4 >= r2) goto L65
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            r5.<init>()     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            java.lang.String r6 = "update __et set __i=\""
            r5.append(r6)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            r5.append(r1)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            java.lang.String r6 = "\" where "
            r5.append(r6)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            java.lang.String r6 = "__i"
            r5.append(r6)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            java.lang.String r6 = "=\""
            r5.append(r6)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            r6 = r3[r4]     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            r5.append(r6)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            java.lang.String r6 = "\""
            r5.append(r6)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            r0.execSQL(r5)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            int r4 = r4 + 1
            goto L33
        L65:
            r0.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            goto L6b
        L69:
            if (r0 == 0) goto L6e
        L6b:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L6e
        L6e:
            android.content.Context r0 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            goto L80
        L78:
            android.content.Context r1 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L81
            com.umeng.analytics.pro.g.a(r1)     // Catch: java.lang.Throwable -> L81
            if (r0 == 0) goto L6e
            goto L6b
        L80:
            return
        L81:
            r1 = move-exception
            if (r0 == 0) goto L87
            r0.endTransaction()     // Catch: java.lang.Throwable -> L87
        L87:
            android.content.Context r0 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            goto L92
        L91:
            throw r1
        L92:
            goto L91
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.d():void");
    }

    public boolean e() {
        return this.f60745i.isEmpty();
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0079, code lost:
        if (r2 != null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007b, code lost:
        r2.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0095, code lost:
        if (r2 != null) goto L30;
     */
    /* JADX WARN: Finally extract failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject f() {
        /*
            r8 = this;
            java.lang.String r0 = "__vc"
            java.lang.String r1 = "__av"
            java.util.List<java.lang.String> r2 = r8.f60748l
            boolean r2 = r2.isEmpty()
            r3 = 0
            if (r2 == 0) goto Le
            return r3
        Le:
            android.content.Context r2 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L72 android.database.sqlite.SQLiteDatabaseCorruptException -> L89
            com.umeng.analytics.pro.f r2 = com.umeng.analytics.pro.f.a(r2)     // Catch: java.lang.Throwable -> L72 android.database.sqlite.SQLiteDatabaseCorruptException -> L89
            android.database.sqlite.SQLiteDatabase r2 = r2.a()     // Catch: java.lang.Throwable -> L72 android.database.sqlite.SQLiteDatabaseCorruptException -> L89
            r2.beginTransaction()     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            java.util.List<java.lang.String> r4 = r8.f60748l     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            r5 = 0
            java.lang.Object r4 = r4.get(r5)     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            java.lang.String r6 = "select *  from __is where __ii=?"
            r7 = 1
            java.lang.String[] r7 = new java.lang.String[r7]     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            r7[r5] = r4     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            android.database.Cursor r4 = r2.rawQuery(r6, r7)     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            if (r4 == 0) goto L53
            boolean r5 = r4.moveToNext()     // Catch: java.lang.Throwable -> L68 android.database.sqlite.SQLiteDatabaseCorruptException -> L6b
            if (r5 == 0) goto L53
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L68 android.database.sqlite.SQLiteDatabaseCorruptException -> L6b
            r5.<init>()     // Catch: java.lang.Throwable -> L68 android.database.sqlite.SQLiteDatabaseCorruptException -> L6b
            int r3 = r4.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L6c
            java.lang.String r3 = r4.getString(r3)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L6c
            int r6 = r4.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L6c
            java.lang.String r6 = r4.getString(r6)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L6c
            r5.put(r1, r3)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L6c
            r5.put(r0, r6)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L6c
            r3 = r5
        L53:
            r2.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L68 android.database.sqlite.SQLiteDatabaseCorruptException -> L6b
            if (r4 == 0) goto L5b
            r4.close()
        L5b:
            r2.endTransaction()     // Catch: java.lang.Throwable -> L5e
        L5e:
            android.content.Context r0 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            goto L98
        L68:
            r5 = r3
        L69:
            r3 = r4
            goto L74
        L6b:
            r5 = r3
        L6c:
            r3 = r4
            goto L8b
        L6e:
            r5 = r3
            goto L74
        L70:
            r5 = r3
            goto L8b
        L72:
            r2 = r3
            r5 = r2
        L74:
            if (r3 == 0) goto L79
            r3.close()
        L79:
            if (r2 == 0) goto L7e
        L7b:
            r2.endTransaction()     // Catch: java.lang.Throwable -> L7e
        L7e:
            android.content.Context r0 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            r3 = r5
            goto L98
        L89:
            r2 = r3
            r5 = r2
        L8b:
            android.content.Context r0 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L99
            com.umeng.analytics.pro.g.a(r0)     // Catch: java.lang.Throwable -> L99
            if (r3 == 0) goto L95
            r3.close()
        L95:
            if (r2 == 0) goto L7e
            goto L7b
        L98:
            return r3
        L99:
            r0 = move-exception
            if (r3 == 0) goto L9f
            r3.close()
        L9f:
            if (r2 == 0) goto La4
            r2.endTransaction()     // Catch: java.lang.Throwable -> La4
        La4:
            android.content.Context r1 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)
            r1.b()
            goto Laf
        Lae:
            throw r0
        Laf:
            goto Lae
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.f():org.json.JSONObject");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0079, code lost:
        if (r2 != null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007b, code lost:
        r2.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0095, code lost:
        if (r2 != null) goto L30;
     */
    /* JADX WARN: Finally extract failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject g() {
        /*
            r8 = this;
            java.lang.String r0 = "__vc"
            java.lang.String r1 = "__av"
            java.util.List<java.lang.String> r2 = r8.f60745i
            boolean r2 = r2.isEmpty()
            r3 = 0
            if (r2 == 0) goto Le
            return r3
        Le:
            android.content.Context r2 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L72 android.database.sqlite.SQLiteDatabaseCorruptException -> L89
            com.umeng.analytics.pro.f r2 = com.umeng.analytics.pro.f.a(r2)     // Catch: java.lang.Throwable -> L72 android.database.sqlite.SQLiteDatabaseCorruptException -> L89
            android.database.sqlite.SQLiteDatabase r2 = r2.a()     // Catch: java.lang.Throwable -> L72 android.database.sqlite.SQLiteDatabaseCorruptException -> L89
            r2.beginTransaction()     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            java.util.List<java.lang.String> r4 = r8.f60745i     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            r5 = 0
            java.lang.Object r4 = r4.get(r5)     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            java.lang.String r6 = "select *  from __sd where __ii=?"
            r7 = 1
            java.lang.String[] r7 = new java.lang.String[r7]     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            r7[r5] = r4     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            android.database.Cursor r4 = r2.rawQuery(r6, r7)     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            if (r4 == 0) goto L53
            boolean r5 = r4.moveToNext()     // Catch: java.lang.Throwable -> L68 android.database.sqlite.SQLiteDatabaseCorruptException -> L6b
            if (r5 == 0) goto L53
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L68 android.database.sqlite.SQLiteDatabaseCorruptException -> L6b
            r5.<init>()     // Catch: java.lang.Throwable -> L68 android.database.sqlite.SQLiteDatabaseCorruptException -> L6b
            int r3 = r4.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L6c
            java.lang.String r3 = r4.getString(r3)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L6c
            int r6 = r4.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L6c
            java.lang.String r6 = r4.getString(r6)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L6c
            r5.put(r1, r3)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L6c
            r5.put(r0, r6)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L6c
            r3 = r5
        L53:
            r2.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L68 android.database.sqlite.SQLiteDatabaseCorruptException -> L6b
            if (r4 == 0) goto L5b
            r4.close()
        L5b:
            r2.endTransaction()     // Catch: java.lang.Throwable -> L5e
        L5e:
            android.content.Context r0 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            goto L98
        L68:
            r5 = r3
        L69:
            r3 = r4
            goto L74
        L6b:
            r5 = r3
        L6c:
            r3 = r4
            goto L8b
        L6e:
            r5 = r3
            goto L74
        L70:
            r5 = r3
            goto L8b
        L72:
            r2 = r3
            r5 = r2
        L74:
            if (r3 == 0) goto L79
            r3.close()
        L79:
            if (r2 == 0) goto L7e
        L7b:
            r2.endTransaction()     // Catch: java.lang.Throwable -> L7e
        L7e:
            android.content.Context r0 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            r3 = r5
            goto L98
        L89:
            r2 = r3
            r5 = r2
        L8b:
            android.content.Context r0 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L99
            com.umeng.analytics.pro.g.a(r0)     // Catch: java.lang.Throwable -> L99
            if (r3 == 0) goto L95
            r3.close()
        L95:
            if (r2 == 0) goto L7e
            goto L7b
        L98:
            return r3
        L99:
            r0 = move-exception
            if (r3 == 0) goto L9f
            r3.close()
        L9f:
            if (r2 == 0) goto La4
            r2.endTransaction()     // Catch: java.lang.Throwable -> La4
        La4:
            android.content.Context r1 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)
            r1.b()
            goto Laf
        Lae:
            throw r0
        Laf:
            goto Lae
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.g():org.json.JSONObject");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0059, code lost:
        if (r0 == null) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void h() {
        /*
            r4 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r0.beginTransaction()     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.util.List<java.lang.Integer> r1 = r4.f60746j     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            int r1 = r1.size()     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            if (r1 <= 0) goto L3c
            r1 = 0
        L17:
            java.util.List<java.lang.Integer> r2 = r4.f60746j     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            int r2 = r2.size()     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            if (r1 >= r2) goto L3c
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r2.<init>()     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r3 = "delete from __et where rowid="
            r2.append(r3)     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.util.List<java.lang.Integer> r3 = r4.f60746j     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.Object r3 = r3.get(r1)     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r2.append(r3)     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r0.execSQL(r2)     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            int r1 = r1 + 1
            goto L17
        L3c:
            java.util.List<java.lang.Integer> r1 = r4.f60746j     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r1.clear()     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r0.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            goto L47
        L45:
            if (r0 == 0) goto L4a
        L47:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L4a
        L4a:
            android.content.Context r0 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            goto L5c
        L54:
            android.content.Context r1 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L5d
            com.umeng.analytics.pro.g.a(r1)     // Catch: java.lang.Throwable -> L5d
            if (r0 == 0) goto L4a
            goto L47
        L5c:
            return
        L5d:
            r1 = move-exception
            if (r0 == 0) goto L63
            r0.endTransaction()     // Catch: java.lang.Throwable -> L63
        L63:
            android.content.Context r0 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            goto L6e
        L6d:
            throw r1
        L6e:
            goto L6d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.h():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002b, code lost:
        if (r0 == null) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void i() {
        /*
            r2 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L17 android.database.sqlite.SQLiteDatabaseCorruptException -> L26
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)     // Catch: java.lang.Throwable -> L17 android.database.sqlite.SQLiteDatabaseCorruptException -> L26
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: java.lang.Throwable -> L17 android.database.sqlite.SQLiteDatabaseCorruptException -> L26
            r0.beginTransaction()     // Catch: java.lang.Throwable -> L17 android.database.sqlite.SQLiteDatabaseCorruptException -> L26
            java.lang.String r1 = "delete from __er"
            r0.execSQL(r1)     // Catch: java.lang.Throwable -> L17 android.database.sqlite.SQLiteDatabaseCorruptException -> L26
            r0.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L17 android.database.sqlite.SQLiteDatabaseCorruptException -> L26
            goto L19
        L17:
            if (r0 == 0) goto L1c
        L19:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L1c
        L1c:
            android.content.Context r0 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            goto L2e
        L26:
            android.content.Context r1 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L2f
            com.umeng.analytics.pro.g.a(r1)     // Catch: java.lang.Throwable -> L2f
            if (r0 == 0) goto L1c
            goto L19
        L2e:
            return
        L2f:
            r1 = move-exception
            if (r0 == 0) goto L35
            r0.endTransaction()     // Catch: java.lang.Throwable -> L35
        L35:
            android.content.Context r0 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            goto L40
        L3f:
            throw r1
        L40:
            goto L3f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.i():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0064, code lost:
        if (r1 == null) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void j() {
        /*
            r5 = this;
            java.lang.String r0 = "\""
            java.lang.String r1 = r5.f60747k
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            r2 = 0
            if (r1 != 0) goto L77
            android.content.Context r1 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L4e android.database.sqlite.SQLiteDatabaseCorruptException -> L5e
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)     // Catch: java.lang.Throwable -> L4e android.database.sqlite.SQLiteDatabaseCorruptException -> L5e
            android.database.sqlite.SQLiteDatabase r1 = r1.a()     // Catch: java.lang.Throwable -> L4e android.database.sqlite.SQLiteDatabaseCorruptException -> L5e
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r3.<init>()     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.String r4 = "delete from __er where __i=\""
            r3.append(r4)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.String r4 = r5.f60747k     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r3.append(r4)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r3.append(r0)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r1.execSQL(r3)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r3.<init>()     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.String r4 = "delete from __et where __i=\""
            r3.append(r4)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.String r4 = r5.f60747k     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r3.append(r4)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r3.append(r0)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r1.execSQL(r0)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            goto L51
        L4e:
            r1 = r2
        L4f:
            if (r1 == 0) goto L54
        L51:
            r1.endTransaction()     // Catch: java.lang.Throwable -> L54
        L54:
            android.content.Context r0 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            goto L77
        L5e:
            r1 = r2
        L5f:
            android.content.Context r0 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L67
            com.umeng.analytics.pro.g.a(r0)     // Catch: java.lang.Throwable -> L67
            if (r1 == 0) goto L54
            goto L51
        L67:
            r0 = move-exception
            if (r1 == 0) goto L6d
            r1.endTransaction()     // Catch: java.lang.Throwable -> L6d
        L6d:
            android.content.Context r1 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)
            r1.b()
            throw r0
        L77:
            r5.f60747k = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.j():void");
    }

    private h() {
        this.f60745i = new ArrayList();
        this.f60746j = new ArrayList();
        this.f60747k = null;
        this.f60748l = new ArrayList();
    }

    private void b(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase) {
        try {
            long longValue = ((Long) jSONObject.get("__e")).longValue();
            JSONObject optJSONObject = jSONObject.optJSONObject("__sp");
            JSONObject optJSONObject2 = jSONObject.optJSONObject("__pp");
            String str2 = "";
            String c4 = (optJSONObject == null || optJSONObject.length() <= 0) ? "" : c(optJSONObject.toString());
            if (optJSONObject2 != null && optJSONObject2.length() > 0) {
                str2 = c(optJSONObject2.toString());
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("__ii", str);
            contentValues.put("__e", String.valueOf(longValue));
            contentValues.put("__sp", c4);
            contentValues.put("__pp", str2);
            contentValues.put("__av", UMGlobalContext.getInstance(f60740d).getAppVersion());
            contentValues.put("__vc", UMUtils.getAppVersionCode(f60740d));
            sQLiteDatabase.insert(d.c.f60691a, null, contentValues);
        } catch (Throwable unused) {
        }
    }

    private void c(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        Cursor cursor2 = null;
        r1 = null;
        r1 = null;
        String str2 = null;
        try {
            JSONObject optJSONObject = jSONObject.optJSONObject(d.C0351d.a.f60709e);
            if (optJSONObject != null) {
                cursor = sQLiteDatabase.rawQuery("select __d from __sd where __ii=?", new String[]{str});
                if (cursor != null) {
                    while (cursor.moveToNext()) {
                        try {
                            str2 = d(cursor.getString(cursor.getColumnIndex(d.C0351d.a.f60709e)));
                        } catch (Throwable unused) {
                            cursor2 = cursor;
                            if (cursor2 != null) {
                                cursor2.close();
                                return;
                            }
                            return;
                        }
                    }
                }
            } else {
                cursor = null;
            }
            if (optJSONObject != null) {
                JSONArray jSONArray = new JSONArray();
                if (!TextUtils.isEmpty(str2)) {
                    jSONArray = new JSONArray(str2);
                }
                jSONArray.put(optJSONObject);
                String c4 = c(jSONArray.toString());
                if (!TextUtils.isEmpty(c4)) {
                    sQLiteDatabase.execSQL("update  __sd set __d=\"" + c4 + "\" where __ii=\"" + str + m.a.f72569g);
                }
            }
            JSONObject optJSONObject2 = jSONObject.optJSONObject(d.C0351d.a.f60708d);
            if (optJSONObject2 != null) {
                String c5 = c(optJSONObject2.toString());
                if (!TextUtils.isEmpty(c5)) {
                    sQLiteDatabase.execSQL("update  __sd set __c=\"" + c5 + "\" where __ii=\"" + str + m.a.f72569g);
                }
            }
            long optLong = jSONObject.optLong(d.C0351d.a.f60711g);
            sQLiteDatabase.execSQL("update  __sd set __f=\"" + String.valueOf(optLong) + "\" where __ii=\"" + str + m.a.f72569g);
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable unused2) {
        }
    }

    public void a() {
        this.f60745i.clear();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0098, code lost:
        if (r2 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x009a, code lost:
        r2.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ac, code lost:
        if (r2 == null) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(org.json.JSONArray r11) {
        /*
            r10 = this;
            java.lang.String r0 = "__t"
            java.lang.String r1 = "__i"
            r2 = 0
            android.content.Context r3 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L98 android.database.sqlite.SQLiteDatabaseCorruptException -> La7
            com.umeng.analytics.pro.f r3 = com.umeng.analytics.pro.f.a(r3)     // Catch: java.lang.Throwable -> L98 android.database.sqlite.SQLiteDatabaseCorruptException -> La7
            android.database.sqlite.SQLiteDatabase r3 = r3.a()     // Catch: java.lang.Throwable -> L98 android.database.sqlite.SQLiteDatabaseCorruptException -> La7
            r3.beginTransaction()     // Catch: java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            r4 = 0
        L13:
            int r5 = r11.length()     // Catch: java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            if (r4 >= r5) goto L8d
            org.json.JSONObject r5 = r11.getJSONObject(r4)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            android.content.ContentValues r6 = new android.content.ContentValues     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r6.<init>()     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r7 = r5.optString(r1)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            boolean r8 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r9 = "-1"
            if (r8 != 0) goto L34
            boolean r8 = r9.equals(r7)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            if (r8 == 0) goto L43
        L34:
            com.umeng.analytics.pro.t r7 = com.umeng.analytics.pro.t.a()     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r7 = r7.b()     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            boolean r8 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            if (r8 == 0) goto L43
            r7 = r9
        L43:
            r6.put(r1, r7)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r7 = "__e"
            java.lang.String r8 = "id"
            java.lang.String r8 = r5.optString(r8)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r6.put(r7, r8)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            int r7 = r5.optInt(r0)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r6.put(r0, r7)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r7 = "__av"
            android.content.Context r8 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(r8)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r6.put(r7, r8)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r7 = "__vc"
            android.content.Context r8 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(r8)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r6.put(r7, r8)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r5.remove(r1)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r5.remove(r0)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r7 = "__s"
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r5 = r10.c(r5)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r6.put(r7, r5)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r5 = "__et"
            r3.insert(r5, r2, r6)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
        L8a:
            int r4 = r4 + 1
            goto L13
        L8d:
            r3.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            r3.endTransaction()     // Catch: java.lang.Throwable -> L9d
            goto L9d
        L94:
            r2 = r3
            goto L98
        L96:
            r2 = r3
            goto La7
        L98:
            if (r2 == 0) goto L9d
        L9a:
            r2.endTransaction()     // Catch: java.lang.Throwable -> L9d
        L9d:
            android.content.Context r11 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r11 = com.umeng.analytics.pro.f.a(r11)
            r11.b()
            goto Laf
        La7:
            android.content.Context r11 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> Lb0
            com.umeng.analytics.pro.g.a(r11)     // Catch: java.lang.Throwable -> Lb0
            if (r2 == 0) goto L9d
            goto L9a
        Laf:
            return
        Lb0:
            r11 = move-exception
            if (r2 == 0) goto Lb6
            r2.endTransaction()     // Catch: java.lang.Throwable -> Lb6
        Lb6:
            android.content.Context r0 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            goto Lc1
        Lc0:
            throw r11
        Lc1:
            goto Lc0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.a(org.json.JSONArray):void");
    }

    public String d(String str) {
        try {
            return TextUtils.isEmpty(f60741e) ? str : new String(DataHelper.decrypt(Base64.decode(str.getBytes(), 0), f60741e.getBytes()));
        } catch (Exception unused) {
            if (Build.VERSION.SDK_INT >= 29 && !TextUtils.isEmpty(str)) {
                try {
                    new JSONObject(str);
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> UMStoreManager decrypt failed, return origin data.");
                    return str;
                } catch (Throwable unused2) {
                    return null;
                }
            }
            return null;
        }
    }

    public JSONObject b(boolean z3) {
        JSONObject jSONObject = new JSONObject();
        b(jSONObject, z3);
        return jSONObject;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0071, code lost:
        if (r1 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007f, code lost:
        if (r1 != null) goto L27;
     */
    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0094: IF  (r1 I:??[int, boolean, OBJECT, ARRAY, byte, short, char]) == (0 ??[int, boolean, OBJECT, ARRAY, byte, short, char])  -> B:41:0x0099, block:B:39:0x0094 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(org.json.JSONObject r6, java.lang.String r7) {
        /*
            r5 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L66 android.database.sqlite.SQLiteDatabaseCorruptException -> L74
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)     // Catch: java.lang.Throwable -> L66 android.database.sqlite.SQLiteDatabaseCorruptException -> L74
            android.database.sqlite.SQLiteDatabase r1 = r1.a()     // Catch: java.lang.Throwable -> L66 android.database.sqlite.SQLiteDatabaseCorruptException -> L74
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            java.lang.String r2 = "select *  from __er"
            boolean r3 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            if (r3 != 0) goto L23
            java.lang.String r2 = "select *  from __er where __i=?"
            r3 = 1
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            r4 = 0
            r3[r4] = r7     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            android.database.Cursor r7 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            goto L27
        L23:
            android.database.Cursor r7 = r1.rawQuery(r2, r0)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
        L27:
            r0 = r7
            if (r0 == 0) goto L5d
            org.json.JSONArray r7 = new org.json.JSONArray     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            r7.<init>()     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
        L2f:
            boolean r2 = r0.moveToNext()     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            if (r2 == 0) goto L52
            java.lang.String r2 = "__a"
            int r2 = r0.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            java.lang.String r2 = r0.getString(r2)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            if (r3 != 0) goto L2f
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            java.lang.String r2 = r5.d(r2)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            r7.put(r3)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            goto L2f
        L52:
            int r2 = r7.length()     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            if (r2 <= 0) goto L5d
            java.lang.String r2 = "error"
            r6.put(r2, r7)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
        L5d:
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            if (r0 == 0) goto L81
            r0.close()
            goto L81
        L66:
            r1 = r0
        L67:
            android.content.Context r6 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L8e
            com.umeng.analytics.pro.g.a(r6)     // Catch: java.lang.Throwable -> L8e
            if (r0 == 0) goto L71
            r0.close()
        L71:
            if (r1 == 0) goto L84
            goto L81
        L74:
            r1 = r0
        L75:
            android.content.Context r6 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L8e
            com.umeng.analytics.pro.g.a(r6)     // Catch: java.lang.Throwable -> L8e
            if (r0 == 0) goto L7f
            r0.close()
        L7f:
            if (r1 == 0) goto L84
        L81:
            r1.endTransaction()     // Catch: java.lang.Throwable -> L84
        L84:
            android.content.Context r6 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r6 = com.umeng.analytics.pro.f.a(r6)
            r6.b()
            return
        L8e:
            r6 = move-exception
            if (r0 == 0) goto L94
            r0.close()
        L94:
            if (r1 == 0) goto L99
            r1.endTransaction()     // Catch: java.lang.Throwable -> L99
        L99:
            android.content.Context r7 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r7 = com.umeng.analytics.pro.f.a(r7)
            r7.b()
            goto La4
        La3:
            throw r6
        La4:
            goto La3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.b(org.json.JSONObject, java.lang.String):void");
    }

    public String c(String str) {
        try {
            return TextUtils.isEmpty(f60741e) ? str : Base64.encodeToString(DataHelper.encrypt(str.getBytes(), f60741e.getBytes()), 0);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0056, code lost:
        if (r0 == null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0058, code lost:
        r0.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x006a, code lost:
        if (r0 == null) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(java.lang.String r5, java.lang.String r6, int r7) {
        /*
            r4 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L56 android.database.sqlite.SQLiteDatabaseCorruptException -> L65
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)     // Catch: java.lang.Throwable -> L56 android.database.sqlite.SQLiteDatabaseCorruptException -> L65
            android.database.sqlite.SQLiteDatabase r1 = r1.a()     // Catch: java.lang.Throwable -> L56 android.database.sqlite.SQLiteDatabaseCorruptException -> L65
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            android.content.ContentValues r2 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r2.<init>()     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r3 = "__i"
            r2.put(r3, r5)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r5 = r4.c(r6)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            boolean r6 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            if (r6 != 0) goto L4b
            java.lang.String r6 = "__a"
            r2.put(r6, r5)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r5 = "__t"
            java.lang.Integer r6 = java.lang.Integer.valueOf(r7)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r2.put(r5, r6)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r5 = "__av"
            android.content.Context r6 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r6 = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(r6)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r2.put(r5, r6)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r5 = "__vc"
            android.content.Context r6 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r6 = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(r6)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r2.put(r5, r6)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r5 = "__er"
            r1.insert(r5, r0, r2)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
        L4b:
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r1.endTransaction()     // Catch: java.lang.Throwable -> L5b
            goto L5b
        L52:
            r0 = r1
            goto L56
        L54:
            r0 = r1
            goto L65
        L56:
            if (r0 == 0) goto L5b
        L58:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L5b
        L5b:
            android.content.Context r5 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r5 = com.umeng.analytics.pro.f.a(r5)
            r5.b()
            goto L6d
        L65:
            android.content.Context r5 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L6f
            com.umeng.analytics.pro.g.a(r5)     // Catch: java.lang.Throwable -> L6f
            if (r0 == 0) goto L5b
            goto L58
        L6d:
            r5 = 0
            return r5
        L6f:
            r5 = move-exception
            if (r0 == 0) goto L75
            r0.endTransaction()     // Catch: java.lang.Throwable -> L75
        L75:
            android.content.Context r6 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r6 = com.umeng.analytics.pro.f.a(r6)
            r6.b()
            goto L80
        L7f:
            throw r5
        L80:
            goto L7f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.a(java.lang.String, java.lang.String, int):boolean");
    }

    private JSONArray b(JSONArray jSONArray) {
        JSONArray jSONArray2 = new JSONArray();
        int length = jSONArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i2);
            if (optJSONObject != null && optJSONObject.optLong("duration") > 0) {
                jSONArray2.put(optJSONObject);
            }
        }
        return jSONArray2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00cc, code lost:
        if (r1 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00db, code lost:
        if (r1 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00dd, code lost:
        r1.endTransaction();
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r11v0, types: [org.json.JSONObject] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String b(org.json.JSONObject r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.b(org.json.JSONObject, boolean):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0085, code lost:
        if (r2 == null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0087, code lost:
        r2.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0099, code lost:
        if (r2 == null) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(java.lang.String r7, org.json.JSONObject r8, com.umeng.analytics.pro.h.a r9) {
        /*
            r6 = this;
            java.lang.String r0 = "__e"
            r1 = 0
            if (r8 != 0) goto L6
            return r1
        L6:
            r2 = 0
            android.content.Context r3 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L85 android.database.sqlite.SQLiteDatabaseCorruptException -> L94
            com.umeng.analytics.pro.f r3 = com.umeng.analytics.pro.f.a(r3)     // Catch: java.lang.Throwable -> L85 android.database.sqlite.SQLiteDatabaseCorruptException -> L94
            android.database.sqlite.SQLiteDatabase r3 = r3.a()     // Catch: java.lang.Throwable -> L85 android.database.sqlite.SQLiteDatabaseCorruptException -> L94
            r3.beginTransaction()     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            com.umeng.analytics.pro.h$a r4 = com.umeng.analytics.pro.h.a.BEGIN     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            if (r9 != r4) goto L4f
            java.lang.Object r8 = r8.opt(r0)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            java.lang.Long r8 = (java.lang.Long) r8     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            long r8 = r8.longValue()     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            android.content.ContentValues r4 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            r4.<init>()     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            java.lang.String r5 = "__ii"
            r4.put(r5, r7)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            java.lang.String r7 = java.lang.String.valueOf(r8)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            r4.put(r0, r7)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            java.lang.String r7 = "__av"
            android.content.Context r8 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(r8)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            r4.put(r7, r8)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            java.lang.String r7 = "__vc"
            android.content.Context r8 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(r8)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            r4.put(r7, r8)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            java.lang.String r7 = "__sd"
            r3.insert(r7, r2, r4)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            goto L7a
        L4f:
            com.umeng.analytics.pro.h$a r0 = com.umeng.analytics.pro.h.a.INSTANTSESSIONBEGIN     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            if (r9 != r0) goto L57
            r6.b(r7, r8, r3)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            goto L7a
        L57:
            com.umeng.analytics.pro.h$a r0 = com.umeng.analytics.pro.h.a.END     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            if (r9 != r0) goto L5f
            r6.a(r7, r8, r3)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            goto L7a
        L5f:
            com.umeng.analytics.pro.h$a r0 = com.umeng.analytics.pro.h.a.PAGE     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            if (r9 != r0) goto L69
            java.lang.String r9 = "__a"
            r6.a(r7, r8, r3, r9)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            goto L7a
        L69:
            com.umeng.analytics.pro.h$a r0 = com.umeng.analytics.pro.h.a.AUTOPAGE     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            if (r9 != r0) goto L73
            java.lang.String r9 = "__b"
            r6.a(r7, r8, r3, r9)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            goto L7a
        L73:
            com.umeng.analytics.pro.h$a r0 = com.umeng.analytics.pro.h.a.NEWSESSION     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            if (r9 != r0) goto L7a
            r6.c(r7, r8, r3)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
        L7a:
            r3.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            r3.endTransaction()     // Catch: java.lang.Throwable -> L8a
            goto L8a
        L81:
            r2 = r3
            goto L85
        L83:
            r2 = r3
            goto L94
        L85:
            if (r2 == 0) goto L8a
        L87:
            r2.endTransaction()     // Catch: java.lang.Throwable -> L8a
        L8a:
            android.content.Context r7 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r7 = com.umeng.analytics.pro.f.a(r7)
            r7.b()
            goto L9c
        L94:
            android.content.Context r7 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L9d
            com.umeng.analytics.pro.g.a(r7)     // Catch: java.lang.Throwable -> L9d
            if (r2 == 0) goto L8a
            goto L87
        L9c:
            return r1
        L9d:
            r7 = move-exception
            if (r2 == 0) goto La3
            r2.endTransaction()     // Catch: java.lang.Throwable -> La3
        La3:
            android.content.Context r8 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r8 = com.umeng.analytics.pro.f.a(r8)
            r8.b()
            goto Lae
        Lad:
            throw r7
        Lae:
            goto Lad
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.a(java.lang.String, org.json.JSONObject, com.umeng.analytics.pro.h$a):boolean");
    }

    private void a(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase) {
        try {
            long longValue = ((Long) jSONObject.opt(d.C0351d.a.f60711g)).longValue();
            long j4 = 0;
            Object opt = jSONObject.opt(d.C0351d.a.f60712h);
            if (opt != null && (opt instanceof Long)) {
                j4 = ((Long) opt).longValue();
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("__sp");
            JSONObject optJSONObject2 = jSONObject.optJSONObject("__pp");
            String str2 = "";
            String c4 = (optJSONObject == null || optJSONObject.length() <= 0) ? "" : c(optJSONObject.toString());
            if (optJSONObject2 != null && optJSONObject2.length() > 0) {
                str2 = c(optJSONObject2.toString());
            }
            sQLiteDatabase.execSQL("update __sd set __f=\"" + longValue + "\", " + d.C0351d.a.f60712h + "=\"" + j4 + "\", __sp=\"" + c4 + "\", __pp=\"" + str2 + "\" where __ii=\"" + str + m.a.f72569g);
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0065, code lost:
        if (r0 == null) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(boolean r3, boolean r4) {
        /*
            r2 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            r0.beginTransaction()     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            if (r4 == 0) goto L18
            if (r3 == 0) goto L4d
            java.lang.String r3 = "delete from __sd"
            r0.execSQL(r3)     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            goto L4d
        L18:
            java.util.List<java.lang.String> r3 = r2.f60745i     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            int r3 = r3.size()     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            if (r3 <= 0) goto L4d
            r3 = 0
        L21:
            java.util.List<java.lang.String> r4 = r2.f60745i     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            int r4 = r4.size()     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            if (r3 >= r4) goto L4d
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            r4.<init>()     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            java.lang.String r1 = "delete from __sd where __ii=\""
            r4.append(r1)     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            java.util.List<java.lang.String> r1 = r2.f60745i     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            java.lang.Object r1 = r1.get(r3)     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            r4.append(r1)     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            java.lang.String r1 = "\""
            r4.append(r1)     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            r0.execSQL(r4)     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            int r3 = r3 + 1
            goto L21
        L4d:
            r0.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            goto L53
        L51:
            if (r0 == 0) goto L56
        L53:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L56
        L56:
            android.content.Context r3 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r3 = com.umeng.analytics.pro.f.a(r3)
            r3.b()
            goto L68
        L60:
            android.content.Context r3 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L69
            com.umeng.analytics.pro.g.a(r3)     // Catch: java.lang.Throwable -> L69
            if (r0 == 0) goto L56
            goto L53
        L68:
            return
        L69:
            r3 = move-exception
            if (r0 == 0) goto L6f
            r0.endTransaction()     // Catch: java.lang.Throwable -> L6f
        L6f:
            android.content.Context r4 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r4 = com.umeng.analytics.pro.f.a(r4)
            r4.b()
            goto L7a
        L79:
            throw r3
        L7a:
            goto L79
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.b(boolean, boolean):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x004f, code lost:
        if (r4 != null) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long a(java.lang.String r8) {
        /*
            r7 = this;
            java.lang.String r0 = "select __f from __sd where __ii=?"
            r1 = 0
            r2 = 0
            android.content.Context r4 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L49
            com.umeng.analytics.pro.f r4 = com.umeng.analytics.pro.f.a(r4)     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L49
            android.database.sqlite.SQLiteDatabase r4 = r4.a()     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L49
            r4.beginTransaction()     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L4a
            r5 = 1
            java.lang.String[] r5 = new java.lang.String[r5]     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L4a
            r6 = 0
            r5[r6] = r8     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L4a
            android.database.Cursor r1 = r4.rawQuery(r0, r5)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L4a
            if (r1 == 0) goto L2b
            r1.moveToFirst()     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L4a
            java.lang.String r8 = "__f"
            int r8 = r1.getColumnIndex(r8)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L4a
            long r2 = r1.getLong(r8)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L4a
        L2b:
            if (r1 == 0) goto L51
            r1.close()     // Catch: java.lang.Exception -> L54
            goto L51
        L31:
            r8 = move-exception
            goto L35
        L33:
            r8 = move-exception
            r4 = r1
        L35:
            if (r1 == 0) goto L3a
            r1.close()     // Catch: java.lang.Exception -> L3f
        L3a:
            if (r4 == 0) goto L3f
            r4.endTransaction()     // Catch: java.lang.Exception -> L3f
        L3f:
            android.content.Context r0 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            throw r8
        L49:
            r4 = r1
        L4a:
            if (r1 == 0) goto L4f
            r1.close()     // Catch: java.lang.Exception -> L54
        L4f:
            if (r4 == 0) goto L54
        L51:
            r4.endTransaction()     // Catch: java.lang.Exception -> L54
        L54:
            android.content.Context r8 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r8 = com.umeng.analytics.pro.f.a(r8)
            r8.b()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.a(java.lang.String):long");
    }

    private void a(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase, String str2) throws JSONException {
        JSONArray jSONArray;
        Cursor cursor = null;
        r4 = null;
        String str3 = null;
        try {
            if ("__a".equals(str2)) {
                jSONArray = jSONObject.optJSONArray("__a");
                if (jSONArray == null || jSONArray.length() <= 0) {
                    return;
                }
            } else if (d.C0351d.a.f60707c.equals(str2)) {
                jSONArray = jSONObject.optJSONArray(d.C0351d.a.f60707c);
                if (jSONArray == null || jSONArray.length() <= 0) {
                    return;
                }
            } else {
                jSONArray = null;
            }
            Cursor rawQuery = sQLiteDatabase.rawQuery("select " + str2 + " from " + d.C0351d.f60704a + " where __ii=?", new String[]{str});
            if (rawQuery != null) {
                while (rawQuery.moveToNext()) {
                    try {
                        str3 = d(rawQuery.getString(rawQuery.getColumnIndex(str2)));
                    } catch (Throwable unused) {
                        cursor = rawQuery;
                        if (cursor != null) {
                            cursor.close();
                            return;
                        }
                        return;
                    }
                }
            }
            JSONArray jSONArray2 = new JSONArray();
            if (!TextUtils.isEmpty(str3)) {
                jSONArray2 = new JSONArray(str3);
            }
            if (jSONArray2.length() > 1000) {
                if (rawQuery != null) {
                    rawQuery.close();
                    return;
                }
                return;
            }
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                try {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                    if (jSONObject2 != null) {
                        jSONArray2.put(jSONObject2);
                    }
                } catch (JSONException unused2) {
                }
            }
            String c4 = c(jSONArray2.toString());
            if (!TextUtils.isEmpty(c4)) {
                sQLiteDatabase.execSQL("update __sd set " + str2 + "=\"" + c4 + "\" where __ii=\"" + str + m.a.f72569g);
            }
            if (rawQuery != null) {
                rawQuery.close();
            }
        } catch (Throwable unused3) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0045, code lost:
        if (r0 == null) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(java.lang.String r4) {
        /*
            r3 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            r0.beginTransaction()     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            boolean r1 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            if (r1 != 0) goto L2d
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            r1.<init>()     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            java.lang.String r2 = "delete from __is where __ii=\""
            r1.append(r2)     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            r1.append(r4)     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            java.lang.String r4 = "\""
            r1.append(r4)     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            java.lang.String r4 = r1.toString()     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            r0.execSQL(r4)     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
        L2d:
            r0.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            goto L33
        L31:
            if (r0 == 0) goto L36
        L33:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L36
        L36:
            android.content.Context r4 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r4 = com.umeng.analytics.pro.f.a(r4)
            r4.b()
            goto L48
        L40:
            android.content.Context r4 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L49
            com.umeng.analytics.pro.g.a(r4)     // Catch: java.lang.Throwable -> L49
            if (r0 == 0) goto L36
            goto L33
        L48:
            return
        L49:
            r4 = move-exception
            if (r0 == 0) goto L4f
            r0.endTransaction()     // Catch: java.lang.Throwable -> L4f
        L4f:
            android.content.Context r0 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            goto L5a
        L59:
            throw r4
        L5a:
            goto L59
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.b(java.lang.String):void");
    }

    public JSONObject a(boolean z3) {
        a();
        this.f60746j.clear();
        JSONObject jSONObject = new JSONObject();
        if (!z3) {
            a(jSONObject, z3);
            b(jSONObject, (String) null);
            a(jSONObject, (String) null);
        } else {
            String a4 = a(jSONObject, z3);
            if (!TextUtils.isEmpty(a4)) {
                b(jSONObject, a4);
                a(jSONObject, a4);
            }
        }
        return jSONObject;
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x016e, code lost:
        if (r1 != null) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x017c, code lost:
        if (r1 != null) goto L91;
     */
    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0191: IF  (r1 I:??[int, boolean, OBJECT, ARRAY, byte, short, char]) == (0 ??[int, boolean, OBJECT, ARRAY, byte, short, char])  -> B:83:0x0196, block:B:81:0x0191 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(org.json.JSONObject r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.a(org.json.JSONObject, java.lang.String):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:87:0x021e, code lost:
        if (r12 == null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x022e, code lost:
        if (r12 == null) goto L13;
     */
    /* JADX WARN: Not initialized variable reg: 12, insn: 0x0243: IF  (r12 I:??[int, boolean, OBJECT, ARRAY, byte, short, char]) == (0 ??[int, boolean, OBJECT, ARRAY, byte, short, char])  -> B:102:0x0248, block:B:100:0x0243 */
    /* JADX WARN: Not initialized variable reg: 16, insn: 0x023e: IF  (r16 I:??[int, boolean, OBJECT, ARRAY, byte, short, char]) == (0 ??[int, boolean, OBJECT, ARRAY, byte, short, char])  -> B:100:0x0243, block:B:98:0x023e */
    /* JADX WARN: Removed duplicated region for block: B:86:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x022b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String a(org.json.JSONObject r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 596
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.a(org.json.JSONObject, boolean):java.lang.String");
    }

    public void a(boolean z3, boolean z4) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                sQLiteDatabase = f.a(f60740d).a();
                sQLiteDatabase.beginTransaction();
                if (!z4) {
                    int size = this.f60748l.size();
                    int i2 = 0;
                    if (size > 0) {
                        int i4 = 0;
                        while (i2 < size) {
                            String str = this.f60748l.get(i2);
                            if (str == null) {
                                i4 = 1;
                            }
                            sQLiteDatabase.execSQL("delete from __is where __ii=\"" + str + m.a.f72569g);
                            i2++;
                        }
                        i2 = i4;
                    }
                    if (i2 != 0) {
                        sQLiteDatabase.execSQL("delete from __is where __ii is null");
                    }
                } else if (z3) {
                    sQLiteDatabase.execSQL("delete from __is");
                }
                sQLiteDatabase.setTransactionSuccessful();
            } catch (SQLiteDatabaseCorruptException unused) {
                g.a(f60740d);
            }
        } finally {
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable unused2) {
                }
            }
            f.a(f60740d).b();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0078, code lost:
        if (r0 == null) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(boolean r4, java.lang.String r5) {
        /*
            r3 = this;
            java.lang.String r4 = "\""
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r0.beginTransaction()     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            boolean r1 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            if (r1 != 0) goto L60
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r1.<init>()     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            java.lang.String r2 = "delete from __er where __i=\""
            r1.append(r2)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r1.append(r5)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r1.append(r4)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r0.execSQL(r1)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r1.<init>()     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            java.lang.String r2 = "delete from __et where __i=\""
            r1.append(r2)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r1.append(r5)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r1.append(r4)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r0.execSQL(r1)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            java.util.List<java.lang.Integer> r1 = r3.f60746j     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r1.clear()     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r1.<init>()     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            java.lang.String r2 = "delete from __sd where __ii=\""
            r1.append(r2)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r1.append(r5)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r1.append(r4)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            java.lang.String r4 = r1.toString()     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r0.execSQL(r4)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
        L60:
            r0.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            goto L66
        L64:
            if (r0 == 0) goto L69
        L66:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L69
        L69:
            android.content.Context r4 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r4 = com.umeng.analytics.pro.f.a(r4)
            r4.b()
            goto L7b
        L73:
            android.content.Context r4 = com.umeng.analytics.pro.h.f60740d     // Catch: java.lang.Throwable -> L7c
            com.umeng.analytics.pro.g.a(r4)     // Catch: java.lang.Throwable -> L7c
            if (r0 == 0) goto L69
            goto L66
        L7b:
            return
        L7c:
            r4 = move-exception
            if (r0 == 0) goto L82
            r0.endTransaction()     // Catch: java.lang.Throwable -> L82
        L82:
            android.content.Context r5 = com.umeng.analytics.pro.h.f60740d
            com.umeng.analytics.pro.f r5 = com.umeng.analytics.pro.f.a(r5)
            r5.b()
            goto L8d
        L8c:
            throw r4
        L8d:
            goto L8c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.a(boolean, java.lang.String):void");
    }
}
