package com.umeng.umzid;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class ZIDManager {

    /* renamed from: c  reason: collision with root package name */
    public static ZIDManager f61556c;

    /* renamed from: a  reason: collision with root package name */
    public boolean f61557a = false;

    /* renamed from: b  reason: collision with root package name */
    public boolean f61558b = false;

    /* loaded from: classes4.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f61559a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ IZIDCompletionCallback f61560b;

        public a(Context context, IZIDCompletionCallback iZIDCompletionCallback) {
            this.f61559a = context;
            this.f61560b = iZIDCompletionCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            String a4 = ZIDManager.a(ZIDManager.this, this.f61559a);
            if (TextUtils.isEmpty(a4)) {
                IZIDCompletionCallback iZIDCompletionCallback = this.f61560b;
                if (iZIDCompletionCallback != null) {
                    iZIDCompletionCallback.onFailure("1002", "获取zid失败");
                    return;
                }
                return;
            }
            IZIDCompletionCallback iZIDCompletionCallback2 = this.f61560b;
            if (iZIDCompletionCallback2 != null) {
                iZIDCompletionCallback2.onSuccess(a4);
            }
        }
    }

    /* loaded from: classes4.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f61562a;

        public b(Context context) {
            this.f61562a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            ZIDManager.b(ZIDManager.this, this.f61562a);
        }
    }

    /* loaded from: classes4.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f61564a;

        public c(Context context) {
            this.f61564a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            ZIDManager.a(ZIDManager.this, this.f61564a);
        }
    }

    /* loaded from: classes4.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f61566a;

        public d(Context context) {
            this.f61566a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            ZIDManager.b(ZIDManager.this, this.f61566a);
        }
    }

    public static /* synthetic */ String a(ZIDManager zIDManager, Context context) {
        String str = null;
        if (!zIDManager.f61557a) {
            zIDManager.f61557a = true;
            JSONObject jSONObject = new JSONObject();
            try {
                String id = Spy.getID();
                jSONObject.put("zdata", id);
                String c4 = com.umeng.umzid.c.c(context);
                jSONObject.put("mac", c4);
                String d4 = com.umeng.umzid.c.d(context);
                jSONObject.put("oaid", d4);
                zIDManager.a(context, jSONObject);
                String a4 = com.umeng.umzid.a.a("https://aaid.umeng.com/api/postZdata", jSONObject.toString());
                if (!TextUtils.isEmpty(a4)) {
                    JSONObject jSONObject2 = new JSONObject(a4);
                    if (Boolean.valueOf(jSONObject2.optBoolean("suc")).booleanValue()) {
                        com.umeng.umzid.c.f(context, id);
                        com.umeng.umzid.c.a(context, c4);
                        com.umeng.umzid.c.b(context, d4);
                        str = jSONObject2.optString("aaid");
                        if (!TextUtils.isEmpty(str)) {
                            com.umeng.umzid.c.e(context, str);
                        }
                        String string = jSONObject2.getString("uabc");
                        if (!TextUtils.isEmpty(string)) {
                            com.umeng.umzid.c.d(context, string);
                        }
                        String string2 = jSONObject2.getString("resetToken");
                        if (!TextUtils.isEmpty(string2)) {
                            com.umeng.umzid.c.c(context, string2);
                        }
                    }
                }
            } catch (Throwable unused) {
            }
            zIDManager.f61557a = false;
        }
        return str;
    }

    public static /* synthetic */ String b(ZIDManager zIDManager, Context context) {
        String str;
        String str2;
        SharedPreferences a4;
        SharedPreferences a5;
        SharedPreferences a6;
        SharedPreferences a7;
        String str3 = null;
        if (!zIDManager.f61558b) {
            zIDManager.f61558b = true;
            JSONObject jSONObject = new JSONObject();
            try {
                Object b4 = com.umeng.umzid.c.b(context);
                String id = Spy.getID();
                jSONObject.put("zdata", id);
                jSONObject.put("old_zdata", b4);
                String str4 = "";
                if (context == null || (a7 = com.umeng.umzid.a.a(context)) == null) {
                    str = "";
                } else {
                    str = a7.getString("oaid", "");
                    if (com.umeng.umzid.c.c(str)) {
                        str = com.umeng.umzid.c.a(str);
                    }
                }
                String d4 = com.umeng.umzid.c.d(context);
                jSONObject.put("old_oaid", str);
                jSONObject.put("oaid", d4);
                if (context == null || (a6 = com.umeng.umzid.a.a(context)) == null) {
                    str2 = "";
                } else {
                    str2 = a6.getString("mac", "");
                    if (com.umeng.umzid.c.c(str2)) {
                        str2 = com.umeng.umzid.c.a(str2);
                    }
                }
                String c4 = com.umeng.umzid.c.c(context);
                jSONObject.put("mac", c4);
                jSONObject.put("old_mac", str2);
                zIDManager.a(context, jSONObject);
                jSONObject.put("aaid", com.umeng.umzid.c.a(context));
                jSONObject.put("uabc", (context == null || (a5 = com.umeng.umzid.a.a(context)) == null) ? "" : a5.getString("uabc", ""));
                if (context != null && (a4 = com.umeng.umzid.a.a(context)) != null) {
                    str4 = a4.getString("resetToken", "");
                }
                if (!TextUtils.isEmpty(str4)) {
                    jSONObject.put("resetToken", str4);
                }
                String a8 = com.umeng.umzid.a.a("https://aaid.umeng.com/api/updateZdata", jSONObject.toString());
                if (!TextUtils.isEmpty(a8)) {
                    JSONObject jSONObject2 = new JSONObject(a8);
                    if (Boolean.valueOf(jSONObject2.optBoolean("suc")).booleanValue()) {
                        com.umeng.umzid.c.f(context, id);
                        com.umeng.umzid.c.a(context, c4);
                        com.umeng.umzid.c.b(context, d4);
                        str3 = jSONObject2.optString("aaid");
                        if (!TextUtils.isEmpty(str3)) {
                            com.umeng.umzid.c.e(context, str3);
                        }
                        String string = jSONObject2.getString("uabc");
                        if (!TextUtils.isEmpty(string)) {
                            com.umeng.umzid.c.d(context, string);
                        }
                        String string2 = jSONObject2.getString("resetToken");
                        if (!TextUtils.isEmpty(string2)) {
                            com.umeng.umzid.c.c(context, string2);
                        }
                    }
                }
            } catch (Throwable unused) {
            }
            zIDManager.f61558b = false;
        }
        return str3;
    }

    public static synchronized ZIDManager getInstance() {
        ZIDManager zIDManager;
        synchronized (ZIDManager.class) {
            if (f61556c == null) {
                f61556c = new ZIDManager();
            }
            zIDManager = f61556c;
        }
        return zIDManager;
    }

    public static String getSDKVersion() {
        return "1.2.3";
    }

    public synchronized String getZID(Context context) {
        SharedPreferences a4;
        if (context == null) {
            return "";
        }
        Context applicationContext = context.getApplicationContext();
        String a5 = com.umeng.umzid.c.a(applicationContext);
        if (TextUtils.isEmpty(a5)) {
            com.umeng.umzid.b.a(new c(applicationContext));
            return "";
        }
        if (!((applicationContext == null || (a4 = com.umeng.umzid.a.a(applicationContext)) == null) ? "" : a4.getString("zdata", null)).equals(Spy.getID())) {
            com.umeng.umzid.b.a(new d(applicationContext));
        }
        return a5;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x006d A[Catch: all -> 0x009c, TryCatch #1 {, blocks: (B:5:0x0005, B:8:0x000e, B:11:0x0016, B:14:0x001f, B:17:0x0027, B:19:0x002d, B:21:0x0033, B:23:0x0039, B:24:0x0042, B:26:0x0048, B:29:0x004f, B:31:0x0059, B:33:0x0065, B:35:0x006d, B:36:0x0075, B:38:0x007b, B:43:0x008d, B:32:0x005d), top: B:51:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007b A[Catch: all -> 0x009c, TRY_LEAVE, TryCatch #1 {, blocks: (B:5:0x0005, B:8:0x000e, B:11:0x0016, B:14:0x001f, B:17:0x0027, B:19:0x002d, B:21:0x0033, B:23:0x0039, B:24:0x0042, B:26:0x0048, B:29:0x004f, B:31:0x0059, B:33:0x0065, B:35:0x006d, B:36:0x0075, B:38:0x007b, B:43:0x008d, B:32:0x005d), top: B:51:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void init(android.content.Context r4, java.lang.String r5, com.umeng.umzid.IZIDCompletionCallback r6) {
        /*
            r3 = this;
            monitor-enter(r3)
            if (r4 != 0) goto Le
            if (r6 == 0) goto Lc
            java.lang.String r4 = "1001"
            java.lang.String r5 = "传入参数Context为null"
            r6.onFailure(r4, r5)     // Catch: java.lang.Throwable -> L9c
        Lc:
            monitor-exit(r3)
            return
        Le:
            boolean r0 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L9c
            if (r0 == 0) goto L1f
            if (r6 == 0) goto L1d
            java.lang.String r4 = "1003"
            java.lang.String r5 = "传入参数appkey为空"
            r6.onFailure(r4, r5)     // Catch: java.lang.Throwable -> L9c
        L1d:
            monitor-exit(r3)
            return
        L1f:
            android.content.Context r0 = r4.getApplicationContext()     // Catch: java.lang.Throwable -> L9c
            if (r0 == 0) goto L42
            if (r5 == 0) goto L42
            boolean r1 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L9c
            if (r1 != 0) goto L42
            android.content.SharedPreferences r1 = com.umeng.umzid.a.a(r0)     // Catch: java.lang.Throwable -> L9c
            if (r1 == 0) goto L42
            android.content.SharedPreferences$Editor r1 = r1.edit()     // Catch: java.lang.Throwable -> L9c
            if (r1 == 0) goto L42
            java.lang.String r2 = "appkey"
            android.content.SharedPreferences$Editor r5 = r1.putString(r2, r5)     // Catch: java.lang.Throwable -> L9c
            r5.commit()     // Catch: java.lang.Throwable -> L9c
        L42:
            java.lang.String r5 = com.umeng.umzid.c.a(r0)     // Catch: java.lang.Throwable -> L9c
            if (r5 == 0) goto L5d
            boolean r1 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L9c
            if (r1 == 0) goto L4f
            goto L5d
        L4f:
            com.umeng.umzid.ZIDManager$b r1 = new com.umeng.umzid.ZIDManager$b     // Catch: java.lang.Throwable -> L9c
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L9c
            com.umeng.umzid.b.a(r1)     // Catch: java.lang.Throwable -> L9c
            if (r6 == 0) goto L65
            r6.onSuccess(r5)     // Catch: java.lang.Throwable -> L9c
            goto L65
        L5d:
            com.umeng.umzid.ZIDManager$a r5 = new com.umeng.umzid.ZIDManager$a     // Catch: java.lang.Throwable -> L9c
            r5.<init>(r0, r6)     // Catch: java.lang.Throwable -> L9c
            com.umeng.umzid.b.a(r5)     // Catch: java.lang.Throwable -> L9c
        L65:
            java.lang.String r5 = ""
            android.content.SharedPreferences r6 = com.umeng.umzid.a.a(r4)     // Catch: java.lang.Throwable -> L9c
            if (r6 == 0) goto L75
            java.lang.String r5 = "uuid"
            java.lang.String r0 = ""
            java.lang.String r5 = r6.getString(r5, r0)     // Catch: java.lang.Throwable -> L9c
        L75:
            boolean r5 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L9c
            if (r5 == 0) goto L9a
            java.lang.String r5 = ""
            android.content.SharedPreferences r4 = com.umeng.umzid.a.a(r4)     // Catch: java.lang.Throwable -> L9c
            java.util.UUID r6 = java.util.UUID.randomUUID()     // Catch: java.lang.Throwable -> L9c
            java.lang.String r5 = r6.toString()     // Catch: java.lang.Throwable -> L8a
            goto L8b
        L8a:
        L8b:
            if (r4 == 0) goto L9a
            android.content.SharedPreferences$Editor r4 = r4.edit()     // Catch: java.lang.Throwable -> L9c
            java.lang.String r6 = "uuid"
            android.content.SharedPreferences$Editor r4 = r4.putString(r6, r5)     // Catch: java.lang.Throwable -> L9c
            r4.commit()     // Catch: java.lang.Throwable -> L9c
        L9a:
            monitor-exit(r3)
            return
        L9c:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.umzid.ZIDManager.init(android.content.Context, java.lang.String, com.umeng.umzid.IZIDCompletionCallback):void");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(41:1|(4:2|3|4|5)|(2:7|(37:11|12|(1:105)(1:16)|(1:20)|21|(5:93|94|(2:101|102)|96|(31:98|24|25|26|27|28|(2:30|(24:34|35|36|37|38|39|(3:74|75|(5:77|78|(2:81|79)|82|83))|41|(1:43)(1:73)|44|(1:46)|47|48|49|50|51|52|53|54|55|56|(1:60)|61|62))|91|35|36|37|38|39|(0)|41|(0)(0)|44|(0)|47|48|49|50|51|52|53|54|55|56|(2:58|60)|61|62))|23|24|25|26|27|28|(0)|91|35|36|37|38|39|(0)|41|(0)(0)|44|(0)|47|48|49|50|51|52|53|54|55|56|(0)|61|62))|107|12|(1:14)|105|(2:18|20)|21|(0)|23|24|25|26|27|28|(0)|91|35|36|37|38|39|(0)|41|(0)(0)|44|(0)|47|48|49|50|51|52|53|54|55|56|(0)|61|62) */
    /* JADX WARN: Can't wrap try/catch for region: R(44:1|2|3|4|5|(2:7|(37:11|12|(1:105)(1:16)|(1:20)|21|(5:93|94|(2:101|102)|96|(31:98|24|25|26|27|28|(2:30|(24:34|35|36|37|38|39|(3:74|75|(5:77|78|(2:81|79)|82|83))|41|(1:43)(1:73)|44|(1:46)|47|48|49|50|51|52|53|54|55|56|(1:60)|61|62))|91|35|36|37|38|39|(0)|41|(0)(0)|44|(0)|47|48|49|50|51|52|53|54|55|56|(2:58|60)|61|62))|23|24|25|26|27|28|(0)|91|35|36|37|38|39|(0)|41|(0)(0)|44|(0)|47|48|49|50|51|52|53|54|55|56|(0)|61|62))|107|12|(1:14)|105|(2:18|20)|21|(0)|23|24|25|26|27|28|(0)|91|35|36|37|38|39|(0)|41|(0)(0)|44|(0)|47|48|49|50|51|52|53|54|55|56|(0)|61|62) */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x013b, code lost:
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0181, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0182, code lost:
        r0.printStackTrace();
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01a4, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01a5, code lost:
        r0.printStackTrace();
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01bd, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01be, code lost:
        r0.printStackTrace();
        r0 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0104 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0079 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c9 A[Catch: all -> 0x00dd, TryCatch #8 {all -> 0x00dd, blocks: (B:39:0x00b7, B:41:0x00bd, B:43:0x00c9, B:45:0x00d6, B:47:0x00da), top: B:114:0x00b7 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.json.JSONObject a(android.content.Context r9, org.json.JSONObject r10) {
        /*
            Method dump skipped, instructions count: 473
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.umzid.ZIDManager.a(android.content.Context, org.json.JSONObject):org.json.JSONObject");
    }
}
