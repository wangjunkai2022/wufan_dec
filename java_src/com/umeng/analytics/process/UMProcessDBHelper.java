package com.umeng.analytics.process;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.umeng.analytics.process.DBFileTraversalUtil;
import com.umeng.analytics.process.a;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.utils.FileLockCallback;
import com.umeng.commonsdk.utils.FileLockUtil;
import com.umeng.commonsdk.utils.UMUtils;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class UMProcessDBHelper {
    private static UMProcessDBHelper mInstance;
    private Context mContext;
    private FileLockUtil mFileLock = new FileLockUtil();
    private InsertEventCallback ekvCallBack = new InsertEventCallback();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class InsertEventCallback implements FileLockCallback {
        private InsertEventCallback() {
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(File file, int i2) {
            return false;
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(String str) {
            return false;
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(String str, Object obj) {
            if (TextUtils.isEmpty(str)) {
                return true;
            }
            if (str.startsWith(com.umeng.analytics.process.a.f60941c)) {
                str = str.replaceFirst(com.umeng.analytics.process.a.f60941c, "");
            }
            UMProcessDBHelper.this.insertEvents(str.replace(com.umeng.analytics.process.a.f60942d, ""), (JSONArray) obj);
            return true;
        }
    }

    /* loaded from: classes4.dex */
    private class ProcessToMainCallback implements FileLockCallback {
        private ProcessToMainCallback() {
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(File file, int i2) {
            return false;
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(String str) {
            if (TextUtils.isEmpty(str)) {
                return true;
            }
            if (str.startsWith(com.umeng.analytics.process.a.f60941c)) {
                str = str.replaceFirst(com.umeng.analytics.process.a.f60941c, "");
            }
            UMProcessDBHelper.this.processToMain(str.replace(com.umeng.analytics.process.a.f60942d, ""));
            return true;
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(String str, Object obj) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class a implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        int f60930a;

        /* renamed from: b  reason: collision with root package name */
        String f60931b;

        /* renamed from: c  reason: collision with root package name */
        String f60932c;

        /* renamed from: d  reason: collision with root package name */
        String f60933d;

        /* renamed from: e  reason: collision with root package name */
        int f60934e;

        /* renamed from: f  reason: collision with root package name */
        String f60935f;

        /* renamed from: g  reason: collision with root package name */
        String f60936g;

        /* renamed from: h  reason: collision with root package name */
        String f60937h;

        private a() {
        }
    }

    private UMProcessDBHelper() {
    }

    private List<a> datasAdapter(String str, JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return arrayList;
        }
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                a aVar = new a();
                aVar.f60932c = jSONObject.optString("id");
                aVar.f60936g = UMUtils.getAppVersionName(this.mContext);
                aVar.f60937h = UMUtils.getAppVersionCode(this.mContext);
                aVar.f60931b = jSONObject.optString("__i");
                aVar.f60934e = jSONObject.optInt("__t");
                aVar.f60935f = str;
                if (jSONObject.has("ds")) {
                    jSONObject.remove("ds");
                }
                jSONObject.put("ds", getDataSource());
                jSONObject.remove("__i");
                jSONObject.remove("__t");
                aVar.f60933d = com.umeng.common.a.a().a(jSONObject.toString());
                jSONObject.remove("ds");
                arrayList.add(aVar);
            } catch (Exception unused) {
            }
        }
        return arrayList;
    }

    private boolean dbIsExists(String str) {
        try {
            return new File(b.b(this.mContext, str)).exists();
        } catch (Throwable unused) {
            return false;
        }
    }

    private int getDataSource() {
        return 0;
    }

    public static UMProcessDBHelper getInstance(Context context) {
        if (mInstance == null) {
            synchronized (UMProcessDBHelper.class) {
                if (mInstance == null) {
                    mInstance = new UMProcessDBHelper(context);
                }
            }
        }
        UMProcessDBHelper uMProcessDBHelper = mInstance;
        uMProcessDBHelper.mContext = context;
        return uMProcessDBHelper;
    }

    private boolean insertEvents_(String str, List<a> list) {
        if (TextUtils.isEmpty(str) || list == null || list.isEmpty()) {
            return true;
        }
        SQLiteDatabase sQLiteDatabase = null;
        try {
            SQLiteDatabase a4 = c.a(this.mContext).a(str);
            try {
                try {
                    a4.beginTransaction();
                    for (a aVar : list) {
                        try {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("__i", aVar.f60931b);
                            contentValues.put("__e", aVar.f60932c);
                            contentValues.put("__t", Integer.valueOf(aVar.f60934e));
                            contentValues.put(a.InterfaceC0352a.f60952f, aVar.f60935f);
                            contentValues.put("__av", aVar.f60936g);
                            contentValues.put("__vc", aVar.f60937h);
                            contentValues.put("__s", aVar.f60933d);
                            a4.insert(a.InterfaceC0352a.f60947a, null, contentValues);
                        } catch (Exception unused) {
                        }
                    }
                    a4.setTransactionSuccessful();
                    try {
                        a4.endTransaction();
                    } catch (Throwable unused2) {
                    }
                    c.a(this.mContext).b(str);
                    return true;
                } catch (Exception unused3) {
                    sQLiteDatabase = a4;
                    if (sQLiteDatabase != null) {
                        try {
                            sQLiteDatabase.endTransaction();
                        } catch (Throwable unused4) {
                        }
                    }
                    c.a(this.mContext).b(str);
                    return false;
                }
            } catch (Throwable th) {
                th = th;
                sQLiteDatabase = a4;
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable unused5) {
                    }
                }
                c.a(this.mContext).b(str);
                throw th;
            }
        } catch (Exception unused6) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private boolean processIsService(Context context) {
        return context.getPackageManager().getServiceInfo(new ComponentName(context, this.mContext.getClass()), 0) != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processToMain(String str) {
        if (dbIsExists(str)) {
            List<a> readEventByProcess = readEventByProcess(str);
            if (!readEventByProcess.isEmpty() && insertEvents_(com.umeng.analytics.process.a.f60946h, readEventByProcess)) {
                deleteEventDatas(str, null, readEventByProcess);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a3, code lost:
        if (r3 != null) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<com.umeng.analytics.process.UMProcessDBHelper.a> readEventByProcess(java.lang.String r8) {
        /*
            r7 = this;
            java.lang.String r0 = "select *  from __et_p"
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            android.content.Context r3 = r7.mContext     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L97
            com.umeng.analytics.process.c r3 = com.umeng.analytics.process.c.a(r3)     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L97
            android.database.sqlite.SQLiteDatabase r3 = r3.a(r8)     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L97
            r3.beginTransaction()     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L8f
            android.database.Cursor r0 = r3.rawQuery(r0, r2)     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L8f
            if (r0 == 0) goto L87
        L1b:
            boolean r4 = r0.moveToNext()     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            if (r4 == 0) goto L87
            com.umeng.analytics.process.UMProcessDBHelper$a r4 = new com.umeng.analytics.process.UMProcessDBHelper$a     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            r4.<init>()     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            r5 = 0
            int r5 = r0.getInt(r5)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            r4.f60930a = r5     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            java.lang.String r5 = "__i"
            int r5 = r0.getColumnIndex(r5)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            java.lang.String r5 = r0.getString(r5)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            r4.f60931b = r5     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            java.lang.String r5 = "__e"
            int r5 = r0.getColumnIndex(r5)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            java.lang.String r5 = r0.getString(r5)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            r4.f60932c = r5     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            java.lang.String r5 = "__s"
            int r5 = r0.getColumnIndex(r5)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            java.lang.String r5 = r0.getString(r5)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            r4.f60933d = r5     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            java.lang.String r5 = "__t"
            int r5 = r0.getColumnIndex(r5)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            int r5 = r0.getInt(r5)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            r4.f60934e = r5     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            java.lang.String r5 = "__pn"
            int r5 = r0.getColumnIndex(r5)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            java.lang.String r5 = r0.getString(r5)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            r4.f60935f = r5     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            java.lang.String r5 = "__av"
            int r5 = r0.getColumnIndex(r5)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            java.lang.String r5 = r0.getString(r5)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            r4.f60936g = r5     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            java.lang.String r5 = "__vc"
            int r5 = r0.getColumnIndex(r5)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            java.lang.String r5 = r0.getString(r5)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            r4.f60937h = r5     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            r1.add(r4)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> Lb2
            goto L1b
        L85:
            r2 = move-exception
            goto L9b
        L87:
            if (r0 == 0) goto La5
            r0.close()     // Catch: java.lang.Exception -> La8
            goto La5
        L8d:
            r1 = move-exception
            goto Lb4
        L8f:
            r0 = move-exception
            r6 = r2
            r2 = r0
            r0 = r6
            goto L9b
        L94:
            r1 = move-exception
            r3 = r2
            goto Lb4
        L97:
            r0 = move-exception
            r3 = r2
            r2 = r0
            r0 = r3
        L9b:
            r2.printStackTrace()     // Catch: java.lang.Throwable -> Lb2
            if (r0 == 0) goto La3
            r0.close()     // Catch: java.lang.Exception -> La8
        La3:
            if (r3 == 0) goto La8
        La5:
            r3.endTransaction()     // Catch: java.lang.Exception -> La8
        La8:
            android.content.Context r0 = r7.mContext
            com.umeng.analytics.process.c r0 = com.umeng.analytics.process.c.a(r0)
            r0.b(r8)
            return r1
        Lb2:
            r1 = move-exception
            r2 = r0
        Lb4:
            if (r2 == 0) goto Lb9
            r2.close()     // Catch: java.lang.Exception -> Lbe
        Lb9:
            if (r3 == 0) goto Lbe
            r3.endTransaction()     // Catch: java.lang.Exception -> Lbe
        Lbe:
            android.content.Context r0 = r7.mContext
            com.umeng.analytics.process.c r0 = com.umeng.analytics.process.c.a(r0)
            r0.b(r8)
            goto Lc9
        Lc8:
            throw r1
        Lc9:
            goto Lc8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.process.UMProcessDBHelper.readEventByProcess(java.lang.String):java.util.List");
    }

    public void createDBByProcess(String str) {
        try {
            c.a(this.mContext).a(str);
            c.a(this.mContext).b(str);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void deleteEventDatas(String str, String str2, List<a> list) {
        SQLiteDatabase sQLiteDatabase;
        Throwable th;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        SQLiteDatabase sQLiteDatabase2 = null;
        try {
            sQLiteDatabase = c.a(this.mContext).a(str);
        } catch (Exception unused) {
        } catch (Throwable th2) {
            sQLiteDatabase = null;
            th = th2;
        }
        try {
            sQLiteDatabase.beginTransaction();
            int size = list.size();
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    sQLiteDatabase.execSQL("delete from __et_p where rowid=" + list.get(i2).f60930a);
                }
            } else {
                sQLiteDatabase.delete(a.InterfaceC0352a.f60947a, null, null);
            }
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
        } catch (Exception unused2) {
            sQLiteDatabase2 = sQLiteDatabase;
            if (sQLiteDatabase2 != null) {
                sQLiteDatabase2.endTransaction();
            }
            c.a(this.mContext).b(str);
        } catch (Throwable th3) {
            th = th3;
            if (sQLiteDatabase != null) {
                sQLiteDatabase.endTransaction();
            }
            c.a(this.mContext).b(str);
            throw th;
        }
        c.a(this.mContext).b(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0047, code lost:
        if (r1 == null) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void deleteMainProcessEventDatasByIds(java.util.List<java.lang.Integer> r8) {
        /*
            r7 = this;
            java.lang.String r0 = "_main_"
            r1 = 0
            android.content.Context r2 = r7.mContext     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L46
            com.umeng.analytics.process.c r2 = com.umeng.analytics.process.c.a(r2)     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L46
            android.database.sqlite.SQLiteDatabase r1 = r2.a(r0)     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L46
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L46
            java.util.Iterator r8 = r8.iterator()     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L46
        L14:
            boolean r2 = r8.hasNext()     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L46
            if (r2 == 0) goto L32
            java.lang.Object r2 = r8.next()     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L46
            java.lang.Integer r2 = (java.lang.Integer) r2     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L46
            java.lang.String r3 = "__et_p"
            java.lang.String r4 = "id=?"
            r5 = 1
            java.lang.String[] r5 = new java.lang.String[r5]     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L46
            r6 = 0
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L46
            r5[r6] = r2     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L46
            r1.delete(r3, r4, r5)     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L46
            goto L14
        L32:
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L46
            goto L49
        L36:
            r8 = move-exception
            if (r1 == 0) goto L3c
            r1.endTransaction()
        L3c:
            android.content.Context r1 = r7.mContext
            com.umeng.analytics.process.c r1 = com.umeng.analytics.process.c.a(r1)
            r1.b(r0)
            throw r8
        L46:
            if (r1 == 0) goto L4c
        L49:
            r1.endTransaction()
        L4c:
            android.content.Context r8 = r7.mContext
            com.umeng.analytics.process.c r8 = com.umeng.analytics.process.c.a(r8)
            r8.b(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.process.UMProcessDBHelper.deleteMainProcessEventDatasByIds(java.util.List):void");
    }

    public void insertEvents(String str, JSONArray jSONArray) {
        if (AnalyticsConstants.SUB_PROCESS_EVENT && !TextUtils.isEmpty(str)) {
            insertEvents_(str, datasAdapter(str, jSONArray));
        }
    }

    public void insertEventsInSubProcess(String str, JSONArray jSONArray) {
        if (AnalyticsConstants.SUB_PROCESS_EVENT && !TextUtils.isEmpty(str)) {
            File file = new File(b.b(this.mContext, str));
            if (file.exists()) {
                this.mFileLock.doFileOperateion(file, this.ekvCallBack, jSONArray);
            } else {
                insertEvents(str, jSONArray);
            }
        }
    }

    public void processDBToMain() {
        try {
            DBFileTraversalUtil.traverseDBFiles(b.a(this.mContext), new ProcessToMainCallback(), new DBFileTraversalUtil.a() { // from class: com.umeng.analytics.process.UMProcessDBHelper.1
                @Override // com.umeng.analytics.process.DBFileTraversalUtil.a
                public void a() {
                    if (AnalyticsConstants.SUB_PROCESS_EVENT) {
                        UMWorkDispatch.sendEvent(UMProcessDBHelper.this.mContext, UMProcessDBDatasSender.UM_PROCESS_CONSTRUCTMESSAGE, UMProcessDBDatasSender.getInstance(UMProcessDBHelper.this.mContext), null);
                    }
                }
            });
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0180 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject readMainEvents(long r20, java.util.List<java.lang.Integer> r22) {
        /*
            Method dump skipped, instructions count: 399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.process.UMProcessDBHelper.readMainEvents(long, java.util.List):org.json.JSONObject");
    }

    public JSONObject readVersionInfoFromColumId(Integer num) {
        SQLiteDatabase sQLiteDatabase;
        JSONObject jSONObject;
        String str = "select *  from __et_p where rowid=" + num;
        Cursor cursor = null;
        r3 = null;
        JSONObject jSONObject2 = null;
        cursor = null;
        cursor = null;
        cursor = null;
        try {
            sQLiteDatabase = c.a(this.mContext).a(com.umeng.analytics.process.a.f60946h);
            try {
                try {
                    sQLiteDatabase.beginTransaction();
                    Cursor rawQuery = sQLiteDatabase.rawQuery(str, null);
                    if (rawQuery != null) {
                        try {
                            try {
                                if (rawQuery.moveToNext()) {
                                    jSONObject = new JSONObject();
                                    try {
                                        String string = rawQuery.getString(rawQuery.getColumnIndex("__av"));
                                        String string2 = rawQuery.getString(rawQuery.getColumnIndex("__vc"));
                                        if (!TextUtils.isEmpty(string)) {
                                            jSONObject.put("__av", string);
                                        }
                                        if (!TextUtils.isEmpty(string2)) {
                                            jSONObject.put("__vc", string2);
                                        }
                                        jSONObject2 = jSONObject;
                                    } catch (Exception e4) {
                                        e = e4;
                                        cursor = rawQuery;
                                        e.printStackTrace();
                                        if (cursor != null) {
                                            try {
                                                cursor.close();
                                            } catch (Exception unused) {
                                                c.a(this.mContext).b(com.umeng.analytics.process.a.f60946h);
                                                return jSONObject;
                                            }
                                        }
                                        if (sQLiteDatabase != null) {
                                            sQLiteDatabase.endTransaction();
                                        }
                                        c.a(this.mContext).b(com.umeng.analytics.process.a.f60946h);
                                        return jSONObject;
                                    }
                                }
                            } catch (Exception e5) {
                                e = e5;
                                jSONObject = null;
                            }
                        } catch (Throwable th) {
                            th = th;
                            cursor = rawQuery;
                            if (cursor != null) {
                                try {
                                    cursor.close();
                                } catch (Exception unused2) {
                                    c.a(this.mContext).b(com.umeng.analytics.process.a.f60946h);
                                    throw th;
                                }
                            }
                            if (sQLiteDatabase != null) {
                                sQLiteDatabase.endTransaction();
                            }
                            c.a(this.mContext).b(com.umeng.analytics.process.a.f60946h);
                            throw th;
                        }
                    }
                    if (rawQuery != null) {
                        try {
                            rawQuery.close();
                        } catch (Exception unused3) {
                        }
                    }
                    sQLiteDatabase.endTransaction();
                    c.a(this.mContext).b(com.umeng.analytics.process.a.f60946h);
                    return jSONObject2;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e6) {
                e = e6;
                jSONObject = null;
            }
        } catch (Exception e7) {
            e = e7;
            sQLiteDatabase = null;
            jSONObject = null;
        } catch (Throwable th3) {
            th = th3;
            sQLiteDatabase = null;
        }
    }

    private UMProcessDBHelper(Context context) {
        com.umeng.common.a.a().a(context);
    }
}
