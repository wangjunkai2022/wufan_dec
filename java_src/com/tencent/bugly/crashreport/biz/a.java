package com.tencent.bugly.crashreport.biz;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.p;
import com.tencent.bugly.proguard.w;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.z;
import com.umeng.analytics.pro.am;
import java.util.ArrayList;
import java.util.List;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private Context f59329a;

    /* renamed from: b  reason: collision with root package name */
    private long f59330b;

    /* renamed from: c  reason: collision with root package name */
    private int f59331c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f59332d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BUGLY */
    /* renamed from: com.tencent.bugly.crashreport.biz.a$2  reason: invalid class name */
    /* loaded from: classes4.dex */
    public final class AnonymousClass2 implements Runnable {
        /* JADX INFO: Access modifiers changed from: package-private */
        public AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                a.this.c();
            } catch (Throwable th) {
                x.a(th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BUGLY */
    /* renamed from: com.tencent.bugly.crashreport.biz.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class RunnableC0342a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private boolean f59336a;

        /* renamed from: b  reason: collision with root package name */
        private UserInfoBean f59337b;

        public RunnableC0342a(UserInfoBean userInfoBean, boolean z3) {
            this.f59337b = userInfoBean;
            this.f59336a = z3;
        }

        @Override // java.lang.Runnable
        public final void run() {
            com.tencent.bugly.crashreport.common.info.a b4;
            try {
                UserInfoBean userInfoBean = this.f59337b;
                if (userInfoBean != null) {
                    if (userInfoBean != null && (b4 = com.tencent.bugly.crashreport.common.info.a.b()) != null) {
                        userInfoBean.f59319j = b4.e();
                    }
                    x.c("[UserInfo] Record user info.", new Object[0]);
                    a.a(a.this, this.f59337b, false);
                }
                if (this.f59336a) {
                    a aVar = a.this;
                    w a4 = w.a();
                    if (a4 != null) {
                        a4.a(new AnonymousClass2());
                    }
                }
            } catch (Throwable th) {
                if (x.a(th)) {
                    return;
                }
                th.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BUGLY */
    /* loaded from: classes4.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis < a.this.f59330b) {
                w.a().a(new b(), (a.this.f59330b - currentTimeMillis) + 5000);
                return;
            }
            a.this.a(3, false, 0L);
            a.this.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BUGLY */
    /* loaded from: classes4.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private long f59340a;

        public c(long j4) {
            this.f59340a = 21600000L;
            this.f59340a = j4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            a aVar = a.this;
            w a4 = w.a();
            if (a4 != null) {
                a4.a(new AnonymousClass2());
            }
            a aVar2 = a.this;
            long j4 = this.f59340a;
            w.a().a(new c(j4), j4);
        }
    }

    public a(Context context, boolean z3) {
        this.f59332d = true;
        this.f59329a = context;
        this.f59332d = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00ee A[Catch: all -> 0x016f, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0007, B:11:0x000f, B:15:0x0017, B:17:0x001d, B:21:0x0027, B:23:0x003c, B:26:0x0045, B:28:0x004c, B:29:0x004f, B:31:0x0055, B:33:0x0069, B:34:0x0079, B:38:0x0081, B:39:0x008b, B:40:0x0090, B:42:0x0096, B:44:0x00a4, B:46:0x00b1, B:47:0x00b4, B:49:0x00c2, B:55:0x00cc, B:58:0x00d3, B:61:0x00e8, B:63:0x00ee, B:65:0x00f3, B:68:0x00fa, B:72:0x0112, B:74:0x0118, B:77:0x0121, B:79:0x0127, B:82:0x0130, B:84:0x013a, B:87:0x0143, B:91:0x0161, B:94:0x0166, B:59:0x00e2), top: B:102:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0118 A[Catch: all -> 0x016f, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0007, B:11:0x000f, B:15:0x0017, B:17:0x001d, B:21:0x0027, B:23:0x003c, B:26:0x0045, B:28:0x004c, B:29:0x004f, B:31:0x0055, B:33:0x0069, B:34:0x0079, B:38:0x0081, B:39:0x008b, B:40:0x0090, B:42:0x0096, B:44:0x00a4, B:46:0x00b1, B:47:0x00b4, B:49:0x00c2, B:55:0x00cc, B:58:0x00d3, B:61:0x00e8, B:63:0x00ee, B:65:0x00f3, B:68:0x00fa, B:72:0x0112, B:74:0x0118, B:77:0x0121, B:79:0x0127, B:82:0x0130, B:84:0x013a, B:87:0x0143, B:91:0x0161, B:94:0x0166, B:59:0x00e2), top: B:102:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0121 A[Catch: all -> 0x016f, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0007, B:11:0x000f, B:15:0x0017, B:17:0x001d, B:21:0x0027, B:23:0x003c, B:26:0x0045, B:28:0x004c, B:29:0x004f, B:31:0x0055, B:33:0x0069, B:34:0x0079, B:38:0x0081, B:39:0x008b, B:40:0x0090, B:42:0x0096, B:44:0x00a4, B:46:0x00b1, B:47:0x00b4, B:49:0x00c2, B:55:0x00cc, B:58:0x00d3, B:61:0x00e8, B:63:0x00ee, B:65:0x00f3, B:68:0x00fa, B:72:0x0112, B:74:0x0118, B:77:0x0121, B:79:0x0127, B:82:0x0130, B:84:0x013a, B:87:0x0143, B:91:0x0161, B:94:0x0166, B:59:0x00e2), top: B:102:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void c() {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.biz.a.c():void");
    }

    static /* synthetic */ void a(a aVar, UserInfoBean userInfoBean, boolean z3) {
        List<UserInfoBean> a4;
        if (userInfoBean != null) {
            if (!z3 && userInfoBean.f59311b != 1 && (a4 = aVar.a(com.tencent.bugly.crashreport.common.info.a.a(aVar.f59329a).f59364d)) != null && a4.size() >= 20) {
                x.a("[UserInfo] There are too many user info in local: %d", Integer.valueOf(a4.size()));
                return;
            }
            long a5 = p.a().a("t_ui", a(userInfoBean), (o) null, true);
            if (a5 >= 0) {
                x.c("[Database] insert %s success with ID: %d", "t_ui", Long.valueOf(a5));
                userInfoBean.f59310a = a5;
            }
        }
    }

    public final void b() {
        w a4 = w.a();
        if (a4 != null) {
            a4.a(new AnonymousClass2());
        }
    }

    public final void a(int i2, boolean z3, long j4) {
        com.tencent.bugly.crashreport.common.strategy.a a4 = com.tencent.bugly.crashreport.common.strategy.a.a();
        if (a4 != null && !a4.c().f59395f && i2 != 1 && i2 != 3) {
            x.e("UserInfo is disable", new Object[0]);
            return;
        }
        if (i2 == 1 || i2 == 3) {
            this.f59331c++;
        }
        com.tencent.bugly.crashreport.common.info.a a5 = com.tencent.bugly.crashreport.common.info.a.a(this.f59329a);
        UserInfoBean userInfoBean = new UserInfoBean();
        userInfoBean.f59311b = i2;
        userInfoBean.f59312c = a5.f59364d;
        userInfoBean.f59313d = a5.g();
        userInfoBean.f59314e = System.currentTimeMillis();
        userInfoBean.f59315f = -1L;
        userInfoBean.f59323n = a5.f59370j;
        userInfoBean.f59324o = i2 == 1 ? 1 : 0;
        userInfoBean.f59321l = a5.a();
        userInfoBean.f59322m = a5.f59376p;
        userInfoBean.f59316g = a5.f59377q;
        userInfoBean.f59317h = a5.f59378r;
        userInfoBean.f59318i = a5.f59379s;
        userInfoBean.f59320k = a5.f59380t;
        userInfoBean.f59327r = a5.u();
        userInfoBean.f59328s = a5.z();
        userInfoBean.f59325p = a5.A();
        userInfoBean.f59326q = a5.B();
        w.a().a(new RunnableC0342a(userInfoBean, z3), 0L);
    }

    public final void a() {
        this.f59330b = z.b() + 86400000;
        w.a().a(new b(), (this.f59330b - System.currentTimeMillis()) + 5000);
    }

    public final List<UserInfoBean> a(String str) {
        Cursor cursor;
        String str2;
        try {
            if (z.a(str)) {
                str2 = null;
            } else {
                str2 = "_pc = '" + str + "'";
            }
            cursor = p.a().a("t_ui", null, str2, null, null, true);
            if (cursor == null) {
                return null;
            }
            try {
                StringBuilder sb = new StringBuilder();
                ArrayList arrayList = new ArrayList();
                while (cursor.moveToNext()) {
                    UserInfoBean a4 = a(cursor);
                    if (a4 != null) {
                        arrayList.add(a4);
                    } else {
                        long j4 = cursor.getLong(cursor.getColumnIndex("_id"));
                        sb.append(" or _id");
                        sb.append(" = ");
                        sb.append(j4);
                    }
                }
                String sb2 = sb.toString();
                if (sb2.length() > 0) {
                    x.d("[Database] deleted %s error data %d", "t_ui", Integer.valueOf(p.a().a("t_ui", sb2.substring(4), (String[]) null, (o) null, true)));
                }
                cursor.close();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                try {
                    if (!x.a(th)) {
                        th.printStackTrace();
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                } finally {
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    private static void a(List<UserInfoBean> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < list.size() && i2 < 50; i2++) {
            sb.append(" or _id");
            sb.append(" = ");
            sb.append(list.get(i2).f59310a);
        }
        String sb2 = sb.toString();
        if (sb2.length() > 0) {
            sb2 = sb2.substring(4);
        }
        String str = sb2;
        sb.setLength(0);
        try {
            x.c("[Database] deleted %s data %d", "t_ui", Integer.valueOf(p.a().a("t_ui", str, (String[]) null, (o) null, true)));
        } catch (Throwable th) {
            if (x.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private static ContentValues a(UserInfoBean userInfoBean) {
        if (userInfoBean == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            long j4 = userInfoBean.f59310a;
            if (j4 > 0) {
                contentValues.put("_id", Long.valueOf(j4));
            }
            contentValues.put("_tm", Long.valueOf(userInfoBean.f59314e));
            contentValues.put("_ut", Long.valueOf(userInfoBean.f59315f));
            contentValues.put(am.f60483e, Integer.valueOf(userInfoBean.f59311b));
            contentValues.put("_pc", userInfoBean.f59312c);
            contentValues.put("_dt", z.a(userInfoBean));
            return contentValues;
        } catch (Throwable th) {
            if (!x.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    private static UserInfoBean a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            byte[] blob = cursor.getBlob(cursor.getColumnIndex("_dt"));
            if (blob == null) {
                return null;
            }
            long j4 = cursor.getLong(cursor.getColumnIndex("_id"));
            UserInfoBean userInfoBean = (UserInfoBean) z.a(blob, UserInfoBean.CREATOR);
            if (userInfoBean != null) {
                userInfoBean.f59310a = j4;
            }
            return userInfoBean;
        } catch (Throwable th) {
            if (!x.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }
}
