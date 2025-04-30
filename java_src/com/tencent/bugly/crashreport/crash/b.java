package com.tencent.bugly.crashreport.crash;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.common.info.PlugInBean;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import com.tencent.bugly.proguard.ah;
import com.tencent.bugly.proguard.aj;
import com.tencent.bugly.proguard.ak;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.p;
import com.tencent.bugly.proguard.r;
import com.tencent.bugly.proguard.u;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.z;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static int f59496a;

    /* renamed from: b  reason: collision with root package name */
    private Context f59497b;

    /* renamed from: c  reason: collision with root package name */
    private u f59498c;

    /* renamed from: d  reason: collision with root package name */
    private p f59499d;

    /* renamed from: e  reason: collision with root package name */
    private com.tencent.bugly.crashreport.common.strategy.a f59500e;

    /* renamed from: f  reason: collision with root package name */
    private o f59501f;

    /* renamed from: g  reason: collision with root package name */
    private BuglyStrategy.a f59502g;

    public b(int i2, Context context, u uVar, p pVar, com.tencent.bugly.crashreport.common.strategy.a aVar, BuglyStrategy.a aVar2, o oVar) {
        f59496a = i2;
        this.f59497b = context;
        this.f59498c = uVar;
        this.f59499d = pVar;
        this.f59500e = aVar;
        this.f59502g = aVar2;
        this.f59501f = oVar;
    }

    private static List<a> a(List<a> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        for (a aVar : list) {
            if (aVar.f59457d && aVar.f59455b <= currentTimeMillis - 86400000) {
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    private static ContentValues f(CrashDetailBean crashDetailBean) {
        if (crashDetailBean == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            long j4 = crashDetailBean.f59428a;
            if (j4 > 0) {
                contentValues.put("_id", Long.valueOf(j4));
            }
            contentValues.put("_tm", Long.valueOf(crashDetailBean.f59445r));
            contentValues.put("_s1", crashDetailBean.f59448u);
            int i2 = 1;
            contentValues.put("_up", Integer.valueOf(crashDetailBean.f59431d ? 1 : 0));
            if (!crashDetailBean.f59437j) {
                i2 = 0;
            }
            contentValues.put("_me", Integer.valueOf(i2));
            contentValues.put("_uc", Integer.valueOf(crashDetailBean.f59439l));
            contentValues.put("_dt", z.a(crashDetailBean));
            return contentValues;
        } catch (Throwable th) {
            if (!x.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public final boolean b(CrashDetailBean crashDetailBean) {
        if (crashDetailBean == null) {
            return true;
        }
        String str = c.f59518n;
        if (str != null && !str.isEmpty()) {
            x.c("Crash filter for crash stack is: %s", c.f59518n);
            if (crashDetailBean.f59444q.contains(c.f59518n)) {
                x.d("This crash contains the filter string set. It will not be record and upload.", new Object[0]);
                return true;
            }
        }
        String str2 = c.f59519o;
        if (str2 != null && !str2.isEmpty()) {
            x.c("Crash regular filter for crash stack is: %s", c.f59519o);
            if (Pattern.compile(c.f59519o).matcher(crashDetailBean.f59444q).find()) {
                x.d("This crash matches the regular filter string set. It will not be record and upload.", new Object[0]);
                return true;
            }
        }
        if (crashDetailBean.f59429b != 2) {
            r rVar = new r();
            rVar.f59798b = 1;
            rVar.f59799c = crashDetailBean.A;
            rVar.f59800d = crashDetailBean.B;
            rVar.f59801e = crashDetailBean.f59445r;
            this.f59499d.b(1);
            this.f59499d.a(rVar);
            x.b("[crash] a crash occur, handling...", new Object[0]);
        } else {
            x.b("[crash] a caught exception occur, handling...", new Object[0]);
        }
        List<a> b4 = b();
        ArrayList arrayList = null;
        if (b4 != null && b4.size() > 0) {
            arrayList = new ArrayList(10);
            ArrayList arrayList2 = new ArrayList(10);
            arrayList.addAll(a(b4));
            b4.removeAll(arrayList);
            if (b4.size() > 20) {
                StringBuilder sb = new StringBuilder();
                sb.append("_id in ");
                sb.append("(");
                sb.append("SELECT _id");
                sb.append(" FROM t_cr");
                sb.append(" order by _id");
                sb.append(" limit 5");
                sb.append(")");
                String sb2 = sb.toString();
                sb.setLength(0);
                try {
                    x.c("deleted first record %s data %d", "t_cr", Integer.valueOf(p.a().a("t_cr", sb2, (String[]) null, (o) null, true)));
                } catch (Throwable th) {
                    if (!x.a(th)) {
                        th.printStackTrace();
                    }
                }
            }
            int i2 = crashDetailBean.f59429b;
            if (!com.tencent.bugly.b.f59304c && (!((i2 == 3) || (i2 == 0 || i2 == 1)) || c.f59508d)) {
                boolean z3 = false;
                for (a aVar : b4) {
                    if (crashDetailBean.f59448u.equals(aVar.f59456c)) {
                        if (aVar.f59458e) {
                            z3 = true;
                        }
                        arrayList2.add(aVar);
                    }
                }
                if (z3 || arrayList2.size() >= c.f59507c) {
                    x.a("same crash occur too much do merged!", new Object[0]);
                    CrashDetailBean a4 = a(arrayList2, crashDetailBean);
                    for (a aVar2 : arrayList2) {
                        if (aVar2.f59454a != a4.f59428a) {
                            arrayList.add(aVar2);
                        }
                    }
                    e(a4);
                    c(arrayList);
                    x.b("[crash] save crash success. For this device crash many times, it will not upload crashes immediately", new Object[0]);
                    return true;
                }
            }
        }
        e(crashDetailBean);
        if (arrayList != null && !arrayList.isEmpty()) {
            c(arrayList);
        }
        x.b("[crash] save crash success", new Object[0]);
        return false;
    }

    public final void c(CrashDetailBean crashDetailBean) {
        int i2 = crashDetailBean.f59429b;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 3 && !c.a().r()) {
                    return;
                }
            } else if (!c.a().q()) {
                return;
            }
        } else if (!c.a().q()) {
            return;
        }
        if (this.f59501f != null) {
            x.c("Calling 'onCrashHandleEnd' of RQD crash listener.", new Object[0]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00a6 A[Catch: all -> 0x01db, TryCatch #0 {all -> 0x01db, blocks: (B:10:0x000e, B:11:0x0011, B:35:0x0062, B:37:0x0067, B:39:0x007d, B:46:0x00a6, B:48:0x00ac, B:49:0x00bf, B:51:0x00c5, B:53:0x00d7, B:55:0x00e5, B:56:0x00f8, B:58:0x0104, B:60:0x0110, B:62:0x0147, B:61:0x0135, B:63:0x0161, B:65:0x016c, B:69:0x0191, B:71:0x0195, B:73:0x0198, B:74:0x01b2, B:75:0x01c0, B:77:0x01c4, B:79:0x01d3, B:66:0x017a, B:68:0x017e, B:40:0x0088, B:42:0x008c, B:14:0x0017, B:17:0x0023, B:20:0x002f, B:23:0x003b, B:27:0x0049, B:31:0x0056), top: B:86:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c5 A[Catch: all -> 0x01db, TryCatch #0 {all -> 0x01db, blocks: (B:10:0x000e, B:11:0x0011, B:35:0x0062, B:37:0x0067, B:39:0x007d, B:46:0x00a6, B:48:0x00ac, B:49:0x00bf, B:51:0x00c5, B:53:0x00d7, B:55:0x00e5, B:56:0x00f8, B:58:0x0104, B:60:0x0110, B:62:0x0147, B:61:0x0135, B:63:0x0161, B:65:0x016c, B:69:0x0191, B:71:0x0195, B:73:0x0198, B:74:0x01b2, B:75:0x01c0, B:77:0x01c4, B:79:0x01d3, B:66:0x017a, B:68:0x017e, B:40:0x0088, B:42:0x008c, B:14:0x0017, B:17:0x0023, B:20:0x002f, B:23:0x003b, B:27:0x0049, B:31:0x0056), top: B:86:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x016c A[Catch: all -> 0x01db, TryCatch #0 {all -> 0x01db, blocks: (B:10:0x000e, B:11:0x0011, B:35:0x0062, B:37:0x0067, B:39:0x007d, B:46:0x00a6, B:48:0x00ac, B:49:0x00bf, B:51:0x00c5, B:53:0x00d7, B:55:0x00e5, B:56:0x00f8, B:58:0x0104, B:60:0x0110, B:62:0x0147, B:61:0x0135, B:63:0x0161, B:65:0x016c, B:69:0x0191, B:71:0x0195, B:73:0x0198, B:74:0x01b2, B:75:0x01c0, B:77:0x01c4, B:79:0x01d3, B:66:0x017a, B:68:0x017e, B:40:0x0088, B:42:0x008c, B:14:0x0017, B:17:0x0023, B:20:0x002f, B:23:0x003b, B:27:0x0049, B:31:0x0056), top: B:86:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x017a A[Catch: all -> 0x01db, TryCatch #0 {all -> 0x01db, blocks: (B:10:0x000e, B:11:0x0011, B:35:0x0062, B:37:0x0067, B:39:0x007d, B:46:0x00a6, B:48:0x00ac, B:49:0x00bf, B:51:0x00c5, B:53:0x00d7, B:55:0x00e5, B:56:0x00f8, B:58:0x0104, B:60:0x0110, B:62:0x0147, B:61:0x0135, B:63:0x0161, B:65:0x016c, B:69:0x0191, B:71:0x0195, B:73:0x0198, B:74:0x01b2, B:75:0x01c0, B:77:0x01c4, B:79:0x01d3, B:66:0x017a, B:68:0x017e, B:40:0x0088, B:42:0x008c, B:14:0x0017, B:17:0x0023, B:20:0x002f, B:23:0x003b, B:27:0x0049, B:31:0x0056), top: B:86:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0195 A[Catch: all -> 0x01db, TryCatch #0 {all -> 0x01db, blocks: (B:10:0x000e, B:11:0x0011, B:35:0x0062, B:37:0x0067, B:39:0x007d, B:46:0x00a6, B:48:0x00ac, B:49:0x00bf, B:51:0x00c5, B:53:0x00d7, B:55:0x00e5, B:56:0x00f8, B:58:0x0104, B:60:0x0110, B:62:0x0147, B:61:0x0135, B:63:0x0161, B:65:0x016c, B:69:0x0191, B:71:0x0195, B:73:0x0198, B:74:0x01b2, B:75:0x01c0, B:77:0x01c4, B:79:0x01d3, B:66:0x017a, B:68:0x017e, B:40:0x0088, B:42:0x008c, B:14:0x0017, B:17:0x0023, B:20:0x002f, B:23:0x003b, B:27:0x0049, B:31:0x0056), top: B:86:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01c4 A[Catch: all -> 0x01db, TryCatch #0 {all -> 0x01db, blocks: (B:10:0x000e, B:11:0x0011, B:35:0x0062, B:37:0x0067, B:39:0x007d, B:46:0x00a6, B:48:0x00ac, B:49:0x00bf, B:51:0x00c5, B:53:0x00d7, B:55:0x00e5, B:56:0x00f8, B:58:0x0104, B:60:0x0110, B:62:0x0147, B:61:0x0135, B:63:0x0161, B:65:0x016c, B:69:0x0191, B:71:0x0195, B:73:0x0198, B:74:0x01b2, B:75:0x01c0, B:77:0x01c4, B:79:0x01d3, B:66:0x017a, B:68:0x017e, B:40:0x0088, B:42:0x008c, B:14:0x0017, B:17:0x0023, B:20:0x002f, B:23:0x003b, B:27:0x0049, B:31:0x0056), top: B:86:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:93:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(com.tencent.bugly.crashreport.crash.CrashDetailBean r13) {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.crash.b.d(com.tencent.bugly.crashreport.crash.CrashDetailBean):void");
    }

    public final void e(CrashDetailBean crashDetailBean) {
        ContentValues f4;
        if (crashDetailBean == null || (f4 = f(crashDetailBean)) == null) {
            return;
        }
        long a4 = p.a().a("t_cr", f4, (o) null, true);
        if (a4 >= 0) {
            x.c("insert %s success!", "t_cr");
            crashDetailBean.f59428a = a4;
        }
    }

    private static void c(List<a> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("_id in ");
        sb.append("(");
        for (a aVar : list) {
            sb.append(aVar.f59454a);
            sb.append(",");
        }
        StringBuilder sb2 = new StringBuilder(sb.substring(0, sb.lastIndexOf(",")));
        sb2.append(")");
        String sb3 = sb2.toString();
        sb2.setLength(0);
        try {
            x.c("deleted %s data %d", "t_cr", Integer.valueOf(p.a().a("t_cr", sb3, (String[]) null, (o) null, true)));
        } catch (Throwable th) {
            if (x.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private CrashDetailBean a(List<a> list, CrashDetailBean crashDetailBean) {
        List<CrashDetailBean> b4;
        String[] split;
        if (list == null || list.size() == 0) {
            return crashDetailBean;
        }
        CrashDetailBean crashDetailBean2 = null;
        ArrayList arrayList = new ArrayList(10);
        for (a aVar : list) {
            if (aVar.f59458e) {
                arrayList.add(aVar);
            }
        }
        if (arrayList.size() > 0 && (b4 = b(arrayList)) != null && b4.size() > 0) {
            Collections.sort(b4);
            for (int i2 = 0; i2 < b4.size(); i2++) {
                CrashDetailBean crashDetailBean3 = b4.get(i2);
                if (i2 == 0) {
                    crashDetailBean2 = crashDetailBean3;
                } else {
                    String str = crashDetailBean3.f59446s;
                    if (str != null && (split = str.split("\n")) != null) {
                        for (String str2 : split) {
                            if (!crashDetailBean2.f59446s.contains(str2)) {
                                crashDetailBean2.f59447t++;
                                crashDetailBean2.f59446s += str2 + "\n";
                            }
                        }
                    }
                }
            }
        }
        if (crashDetailBean2 == null) {
            crashDetailBean.f59437j = true;
            crashDetailBean.f59447t = 0;
            crashDetailBean.f59446s = "";
            crashDetailBean2 = crashDetailBean;
        }
        for (a aVar2 : list) {
            if (!aVar2.f59458e && !aVar2.f59457d) {
                String str3 = crashDetailBean2.f59446s;
                StringBuilder sb = new StringBuilder();
                sb.append(aVar2.f59455b);
                if (!str3.contains(sb.toString())) {
                    crashDetailBean2.f59447t++;
                    crashDetailBean2.f59446s += aVar2.f59455b + "\n";
                }
            }
        }
        if (crashDetailBean2.f59445r != crashDetailBean.f59445r) {
            String str4 = crashDetailBean2.f59446s;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(crashDetailBean.f59445r);
            if (!str4.contains(sb2.toString())) {
                crashDetailBean2.f59447t++;
                crashDetailBean2.f59446s += crashDetailBean.f59445r + "\n";
            }
        }
        return crashDetailBean2;
    }

    public final boolean a(CrashDetailBean crashDetailBean) {
        return b(crashDetailBean);
    }

    public final List<CrashDetailBean> a() {
        StrategyBean c4 = com.tencent.bugly.crashreport.common.strategy.a.a().c();
        if (c4 == null) {
            x.d("have not synced remote!", new Object[0]);
            return null;
        } else if (!c4.f59394e) {
            x.d("Crashreport remote closed, please check your APP ID correct and Version available, then uninstall and reinstall your app.", new Object[0]);
            x.b("[init] WARNING! Crashreport closed by server, please check your APP ID correct and Version available, then uninstall and reinstall your app.", new Object[0]);
            return null;
        } else {
            long currentTimeMillis = System.currentTimeMillis();
            long b4 = z.b();
            List<a> b5 = b();
            x.c("Size of crash list loaded from DB: %s", Integer.valueOf(b5.size()));
            if (b5.size() <= 0) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(a(b5));
            b5.removeAll(arrayList);
            Iterator<a> it2 = b5.iterator();
            while (it2.hasNext()) {
                a next = it2.next();
                long j4 = next.f59455b;
                if (j4 < b4 - c.f59511g) {
                    it2.remove();
                    arrayList.add(next);
                } else if (next.f59457d) {
                    if (j4 >= currentTimeMillis - 86400000) {
                        it2.remove();
                    } else if (!next.f59458e) {
                        it2.remove();
                        arrayList.add(next);
                    }
                } else if (next.f59459f >= 3 && j4 < currentTimeMillis - 86400000) {
                    it2.remove();
                    arrayList.add(next);
                }
            }
            if (arrayList.size() > 0) {
                c(arrayList);
            }
            ArrayList arrayList2 = new ArrayList();
            List<CrashDetailBean> b6 = b(b5);
            if (b6 != null && b6.size() > 0) {
                String str = com.tencent.bugly.crashreport.common.info.a.b().f59370j;
                Iterator<CrashDetailBean> it3 = b6.iterator();
                while (it3.hasNext()) {
                    CrashDetailBean next2 = it3.next();
                    if (!str.equals(next2.f59433f)) {
                        it3.remove();
                        arrayList2.add(next2);
                    }
                }
            }
            if (arrayList2.size() > 0) {
                d(arrayList2);
            }
            return b6;
        }
    }

    private List<CrashDetailBean> b(List<a> list) {
        Cursor cursor;
        if (list == null || list.size() == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("_id in ");
        sb.append("(");
        for (a aVar : list) {
            sb.append(aVar.f59454a);
            sb.append(",");
        }
        if (sb.toString().contains(",")) {
            sb = new StringBuilder(sb.substring(0, sb.lastIndexOf(",")));
        }
        sb.append(")");
        String sb2 = sb.toString();
        sb.setLength(0);
        try {
            cursor = p.a().a("t_cr", null, sb2, null, null, true);
            if (cursor == null) {
                return null;
            }
            try {
                ArrayList arrayList = new ArrayList();
                sb.append("_id in ");
                sb.append("(");
                int i2 = 0;
                while (cursor.moveToNext()) {
                    CrashDetailBean a4 = a(cursor);
                    if (a4 != null) {
                        arrayList.add(a4);
                    } else {
                        sb.append(cursor.getLong(cursor.getColumnIndex("_id")));
                        sb.append(",");
                        i2++;
                    }
                }
                if (sb.toString().contains(",")) {
                    sb = new StringBuilder(sb.substring(0, sb.lastIndexOf(",")));
                }
                sb.append(")");
                String sb3 = sb.toString();
                if (i2 > 0) {
                    x.d("deleted %s illegal data %d", "t_cr", Integer.valueOf(p.a().a("t_cr", sb3, (String[]) null, (o) null, true)));
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

    private static void d(List<CrashDetailBean> list) {
        if (list != null) {
            try {
                if (list.size() == 0) {
                    return;
                }
                StringBuilder sb = new StringBuilder();
                for (CrashDetailBean crashDetailBean : list) {
                    sb.append(" or _id");
                    sb.append(" = ");
                    sb.append(crashDetailBean.f59428a);
                }
                String sb2 = sb.toString();
                if (sb2.length() > 0) {
                    sb2 = sb2.substring(4);
                }
                sb.setLength(0);
                x.c("deleted %s data %d", "t_cr", Integer.valueOf(p.a().a("t_cr", sb2, (String[]) null, (o) null, true)));
            } catch (Throwable th) {
                if (x.a(th)) {
                    return;
                }
                th.printStackTrace();
            }
        }
    }

    private static a b(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            a aVar = new a();
            aVar.f59454a = cursor.getLong(cursor.getColumnIndex("_id"));
            aVar.f59455b = cursor.getLong(cursor.getColumnIndex("_tm"));
            aVar.f59456c = cursor.getString(cursor.getColumnIndex("_s1"));
            aVar.f59457d = cursor.getInt(cursor.getColumnIndex("_up")) == 1;
            aVar.f59458e = cursor.getInt(cursor.getColumnIndex("_me")) == 1;
            aVar.f59459f = cursor.getInt(cursor.getColumnIndex("_uc"));
            return aVar;
        } catch (Throwable th) {
            if (!x.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public final void a(CrashDetailBean crashDetailBean, long j4, boolean z3) {
        if (c.f59516l) {
            x.a("try to upload right now", new Object[0]);
            ArrayList arrayList = new ArrayList();
            arrayList.add(crashDetailBean);
            a(arrayList, 3000L, z3, crashDetailBean.f59429b == 7, z3);
            return;
        }
        x.a("do not upload spot crash right now, crash would be uploaded when app next start", new Object[0]);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x009b A[Catch: all -> 0x00df, TryCatch #0 {all -> 0x00df, blocks: (B:23:0x0056, B:25:0x0062, B:29:0x006b, B:30:0x007b, B:32:0x0081, B:35:0x009b, B:37:0x00a3, B:39:0x00a9, B:41:0x00b1, B:43:0x00bb, B:45:0x00c3, B:47:0x00ca, B:48:0x00d6, B:33:0x0091), top: B:57:0x0056 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a3 A[Catch: all -> 0x00df, TryCatch #0 {all -> 0x00df, blocks: (B:23:0x0056, B:25:0x0062, B:29:0x006b, B:30:0x007b, B:32:0x0081, B:35:0x009b, B:37:0x00a3, B:39:0x00a9, B:41:0x00b1, B:43:0x00bb, B:45:0x00c3, B:47:0x00ca, B:48:0x00d6, B:33:0x0091), top: B:57:0x0056 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(final java.util.List<com.tencent.bugly.crashreport.crash.CrashDetailBean> r15, long r16, boolean r18, boolean r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.crash.b.a(java.util.List, long, boolean, boolean, boolean):void");
    }

    private List<a> b() {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            Cursor a4 = p.a().a("t_cr", new String[]{"_id", "_tm", "_s1", "_up", "_me", "_uc"}, null, null, null, true);
            if (a4 == null) {
                if (a4 != null) {
                    a4.close();
                }
                return null;
            }
            try {
                if (a4.getCount() <= 0) {
                    a4.close();
                    return arrayList;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("_id in ");
                sb.append("(");
                int i2 = 0;
                while (a4.moveToNext()) {
                    a b4 = b(a4);
                    if (b4 != null) {
                        arrayList.add(b4);
                    } else {
                        sb.append(a4.getLong(a4.getColumnIndex("_id")));
                        sb.append(",");
                        i2++;
                    }
                }
                if (sb.toString().contains(",")) {
                    sb = new StringBuilder(sb.substring(0, sb.lastIndexOf(",")));
                }
                sb.append(")");
                String sb2 = sb.toString();
                sb.setLength(0);
                if (i2 > 0) {
                    x.d("deleted %s illegal data %d", "t_cr", Integer.valueOf(p.a().a("t_cr", sb2, (String[]) null, (o) null, true)));
                }
                a4.close();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursor = a4;
                try {
                    if (!x.a(th)) {
                        th.printStackTrace();
                    }
                    return arrayList;
                } finally {
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void a(boolean z3, List<CrashDetailBean> list) {
        if (list != null && list.size() > 0) {
            x.c("up finish update state %b", Boolean.valueOf(z3));
            for (CrashDetailBean crashDetailBean : list) {
                x.c("pre uid:%s uc:%d re:%b me:%b", crashDetailBean.f59430c, Integer.valueOf(crashDetailBean.f59439l), Boolean.valueOf(crashDetailBean.f59431d), Boolean.valueOf(crashDetailBean.f59437j));
                int i2 = crashDetailBean.f59439l + 1;
                crashDetailBean.f59439l = i2;
                crashDetailBean.f59431d = z3;
                x.c("set uid:%s uc:%d re:%b me:%b", crashDetailBean.f59430c, Integer.valueOf(i2), Boolean.valueOf(crashDetailBean.f59431d), Boolean.valueOf(crashDetailBean.f59437j));
            }
            for (CrashDetailBean crashDetailBean2 : list) {
                c.a().a(crashDetailBean2);
            }
            x.c("update state size %d", Integer.valueOf(list.size()));
        }
        if (z3) {
            return;
        }
        x.b("[crash] upload fail.", new Object[0]);
    }

    private static CrashDetailBean a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            byte[] blob = cursor.getBlob(cursor.getColumnIndex("_dt"));
            if (blob == null) {
                return null;
            }
            long j4 = cursor.getLong(cursor.getColumnIndex("_id"));
            CrashDetailBean crashDetailBean = (CrashDetailBean) z.a(blob, CrashDetailBean.CREATOR);
            if (crashDetailBean != null) {
                crashDetailBean.f59428a = j4;
            }
            return crashDetailBean;
        } catch (Throwable th) {
            if (!x.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    private static ak a(Context context, CrashDetailBean crashDetailBean, com.tencent.bugly.crashreport.common.info.a aVar) {
        aj a4;
        aj a5;
        aj ajVar;
        if (context != null && crashDetailBean != null && aVar != null) {
            ak akVar = new ak();
            int i2 = crashDetailBean.f59429b;
            switch (i2) {
                case 0:
                    akVar.f59634a = crashDetailBean.f59437j ? "200" : "100";
                    break;
                case 1:
                    akVar.f59634a = crashDetailBean.f59437j ? "201" : "101";
                    break;
                case 2:
                    akVar.f59634a = crashDetailBean.f59437j ? "202" : "102";
                    break;
                case 3:
                    akVar.f59634a = crashDetailBean.f59437j ? "203" : "103";
                    break;
                case 4:
                    akVar.f59634a = crashDetailBean.f59437j ? "204" : "104";
                    break;
                case 5:
                    akVar.f59634a = crashDetailBean.f59437j ? "207" : "107";
                    break;
                case 6:
                    akVar.f59634a = crashDetailBean.f59437j ? "206" : "106";
                    break;
                case 7:
                    akVar.f59634a = crashDetailBean.f59437j ? "208" : "108";
                    break;
                default:
                    x.e("crash type error! %d", Integer.valueOf(i2));
                    break;
            }
            akVar.f59635b = crashDetailBean.f59445r;
            akVar.f59636c = crashDetailBean.f59441n;
            akVar.f59637d = crashDetailBean.f59442o;
            akVar.f59638e = crashDetailBean.f59443p;
            akVar.f59640g = crashDetailBean.f59444q;
            akVar.f59641h = crashDetailBean.f59453z;
            akVar.f59642i = crashDetailBean.f59430c;
            akVar.f59643j = null;
            akVar.f59645l = crashDetailBean.f59440m;
            akVar.f59646m = crashDetailBean.f59432e;
            akVar.f59639f = crashDetailBean.B;
            akVar.f59647n = null;
            x.c("libInfo %s", akVar.f59648o);
            Map<String, PlugInBean> map = crashDetailBean.f59435h;
            if (map != null && map.size() > 0) {
                akVar.f59649p = new ArrayList<>();
                for (Map.Entry<String, PlugInBean> entry : crashDetailBean.f59435h.entrySet()) {
                    ah ahVar = new ah();
                    ahVar.f59617a = entry.getValue().f59358a;
                    ahVar.f59618b = entry.getValue().f59360c;
                    ahVar.f59619c = entry.getValue().f59359b;
                    akVar.f59649p.add(ahVar);
                }
            }
            if (crashDetailBean.f59437j) {
                akVar.f59644k = crashDetailBean.f59447t;
                String str = crashDetailBean.f59446s;
                if (str != null && str.length() > 0) {
                    if (akVar.f59650q == null) {
                        akVar.f59650q = new ArrayList<>();
                    }
                    try {
                        akVar.f59650q.add(new aj((byte) 1, "alltimes.txt", crashDetailBean.f59446s.getBytes("utf-8")));
                    } catch (UnsupportedEncodingException e4) {
                        e4.printStackTrace();
                        akVar.f59650q = null;
                    }
                }
                Object[] objArr = new Object[2];
                objArr[0] = Integer.valueOf(akVar.f59644k);
                ArrayList<aj> arrayList = akVar.f59650q;
                objArr[1] = Integer.valueOf(arrayList != null ? arrayList.size() : 0);
                x.c("crashcount:%d sz:%d", objArr);
            }
            if (crashDetailBean.f59450w != null) {
                if (akVar.f59650q == null) {
                    akVar.f59650q = new ArrayList<>();
                }
                try {
                    akVar.f59650q.add(new aj((byte) 1, "log.txt", crashDetailBean.f59450w.getBytes("utf-8")));
                } catch (UnsupportedEncodingException e5) {
                    e5.printStackTrace();
                    akVar.f59650q = null;
                }
            }
            if (crashDetailBean.f59451x != null) {
                if (akVar.f59650q == null) {
                    akVar.f59650q = new ArrayList<>();
                }
                try {
                    akVar.f59650q.add(new aj((byte) 1, "jniLog.txt", crashDetailBean.f59451x.getBytes("utf-8")));
                } catch (UnsupportedEncodingException e6) {
                    e6.printStackTrace();
                    akVar.f59650q = null;
                }
            }
            if (!z.a(crashDetailBean.V)) {
                if (akVar.f59650q == null) {
                    akVar.f59650q = new ArrayList<>();
                }
                try {
                    ajVar = new aj((byte) 1, "crashInfos.txt", crashDetailBean.V.getBytes("utf-8"));
                } catch (UnsupportedEncodingException e7) {
                    e7.printStackTrace();
                    ajVar = null;
                }
                if (ajVar != null) {
                    x.c("attach crash infos", new Object[0]);
                    akVar.f59650q.add(ajVar);
                }
            }
            if (crashDetailBean.W != null) {
                if (akVar.f59650q == null) {
                    akVar.f59650q = new ArrayList<>();
                }
                aj a6 = a("backupRecord.zip", context, crashDetailBean.W);
                if (a6 != null) {
                    x.c("attach backup record", new Object[0]);
                    akVar.f59650q.add(a6);
                }
            }
            byte[] bArr = crashDetailBean.f59452y;
            if (bArr != null && bArr.length > 0) {
                aj ajVar2 = new aj((byte) 2, "buglylog.zip", bArr);
                x.c("attach user log", new Object[0]);
                if (akVar.f59650q == null) {
                    akVar.f59650q = new ArrayList<>();
                }
                akVar.f59650q.add(ajVar2);
            }
            if (crashDetailBean.f59429b == 3) {
                if (akVar.f59650q == null) {
                    akVar.f59650q = new ArrayList<>();
                }
                x.c("crashBean.anrMessages:%s", crashDetailBean.P);
                Map<String, String> map2 = crashDetailBean.P;
                if (map2 != null && map2.containsKey("BUGLY_CR_01")) {
                    try {
                        if (!TextUtils.isEmpty(crashDetailBean.P.get("BUGLY_CR_01"))) {
                            akVar.f59650q.add(new aj((byte) 1, "anrMessage.txt", crashDetailBean.P.get("BUGLY_CR_01").getBytes("utf-8")));
                            x.c("attach anr message", new Object[0]);
                        }
                    } catch (UnsupportedEncodingException e8) {
                        e8.printStackTrace();
                        akVar.f59650q = null;
                    }
                    crashDetailBean.P.remove("BUGLY_CR_01");
                }
                if (crashDetailBean.f59449v != null && NativeCrashHandler.getInstance().isEnableCatchAnrTrace() && (a5 = a("trace.zip", context, crashDetailBean.f59449v)) != null) {
                    x.c("attach traces", new Object[0]);
                    akVar.f59650q.add(a5);
                }
            }
            if (crashDetailBean.f59429b == 1) {
                if (akVar.f59650q == null) {
                    akVar.f59650q = new ArrayList<>();
                }
                String str2 = crashDetailBean.f59449v;
                if (str2 != null && (a4 = a("tomb.zip", context, str2)) != null) {
                    x.c("attach tombs", new Object[0]);
                    akVar.f59650q.add(a4);
                }
            }
            List<String> list = aVar.C;
            if (list != null && !list.isEmpty()) {
                if (akVar.f59650q == null) {
                    akVar.f59650q = new ArrayList<>();
                }
                StringBuilder sb = new StringBuilder();
                for (String str3 : aVar.C) {
                    sb.append(str3);
                }
                try {
                    akVar.f59650q.add(new aj((byte) 1, "martianlog.txt", sb.toString().getBytes("utf-8")));
                    x.c("attach pageTracingList", new Object[0]);
                } catch (UnsupportedEncodingException e9) {
                    e9.printStackTrace();
                }
            }
            byte[] bArr2 = crashDetailBean.U;
            if (bArr2 != null && bArr2.length > 0) {
                if (akVar.f59650q == null) {
                    akVar.f59650q = new ArrayList<>();
                }
                akVar.f59650q.add(new aj((byte) 1, "userExtraByteData", crashDetailBean.U));
                x.c("attach extraData", new Object[0]);
            }
            HashMap hashMap = new HashMap();
            akVar.f59651r = hashMap;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(crashDetailBean.C);
            hashMap.put("A9", sb2.toString());
            Map<String, String> map3 = akVar.f59651r;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(crashDetailBean.D);
            map3.put("A11", sb3.toString());
            Map<String, String> map4 = akVar.f59651r;
            StringBuilder sb4 = new StringBuilder();
            sb4.append(crashDetailBean.E);
            map4.put("A10", sb4.toString());
            akVar.f59651r.put("A23", crashDetailBean.f59433f);
            akVar.f59651r.put("A7", aVar.f59367g);
            akVar.f59651r.put("A6", aVar.o());
            akVar.f59651r.put("A5", aVar.n());
            akVar.f59651r.put("A22", aVar.h());
            Map<String, String> map5 = akVar.f59651r;
            StringBuilder sb5 = new StringBuilder();
            sb5.append(crashDetailBean.G);
            map5.put("A2", sb5.toString());
            Map<String, String> map6 = akVar.f59651r;
            StringBuilder sb6 = new StringBuilder();
            sb6.append(crashDetailBean.F);
            map6.put("A1", sb6.toString());
            akVar.f59651r.put("A24", aVar.f59368h);
            Map<String, String> map7 = akVar.f59651r;
            StringBuilder sb7 = new StringBuilder();
            sb7.append(crashDetailBean.H);
            map7.put("A17", sb7.toString());
            akVar.f59651r.put("A25", aVar.h());
            akVar.f59651r.put("A15", aVar.r());
            Map<String, String> map8 = akVar.f59651r;
            StringBuilder sb8 = new StringBuilder();
            sb8.append(aVar.s());
            map8.put("A13", sb8.toString());
            akVar.f59651r.put("A34", crashDetailBean.A);
            if (aVar.f59384x != null) {
                akVar.f59651r.put("productIdentify", aVar.f59384x);
            }
            try {
                akVar.f59651r.put("A26", URLEncoder.encode(crashDetailBean.I, "utf-8"));
            } catch (UnsupportedEncodingException e10) {
                e10.printStackTrace();
            }
            if (crashDetailBean.f59429b == 1) {
                akVar.f59651r.put("A27", crashDetailBean.K);
                akVar.f59651r.put("A28", crashDetailBean.J);
                Map<String, String> map9 = akVar.f59651r;
                StringBuilder sb9 = new StringBuilder();
                sb9.append(crashDetailBean.f59438k);
                map9.put("A29", sb9.toString());
            }
            akVar.f59651r.put("A30", crashDetailBean.L);
            Map<String, String> map10 = akVar.f59651r;
            StringBuilder sb10 = new StringBuilder();
            sb10.append(crashDetailBean.M);
            map10.put("A18", sb10.toString());
            Map<String, String> map11 = akVar.f59651r;
            StringBuilder sb11 = new StringBuilder();
            sb11.append(!crashDetailBean.N);
            map11.put("A36", sb11.toString());
            Map<String, String> map12 = akVar.f59651r;
            StringBuilder sb12 = new StringBuilder();
            sb12.append(aVar.f59377q);
            map12.put("F02", sb12.toString());
            Map<String, String> map13 = akVar.f59651r;
            StringBuilder sb13 = new StringBuilder();
            sb13.append(aVar.f59378r);
            map13.put("F03", sb13.toString());
            akVar.f59651r.put("F04", aVar.e());
            Map<String, String> map14 = akVar.f59651r;
            StringBuilder sb14 = new StringBuilder();
            sb14.append(aVar.f59379s);
            map14.put("F05", sb14.toString());
            akVar.f59651r.put("F06", aVar.f59376p);
            akVar.f59651r.put("F08", aVar.f59382v);
            akVar.f59651r.put("F09", aVar.f59383w);
            Map<String, String> map15 = akVar.f59651r;
            StringBuilder sb15 = new StringBuilder();
            sb15.append(aVar.f59380t);
            map15.put("F10", sb15.toString());
            if (crashDetailBean.Q >= 0) {
                Map<String, String> map16 = akVar.f59651r;
                StringBuilder sb16 = new StringBuilder();
                sb16.append(crashDetailBean.Q);
                map16.put("C01", sb16.toString());
            }
            if (crashDetailBean.R >= 0) {
                Map<String, String> map17 = akVar.f59651r;
                StringBuilder sb17 = new StringBuilder();
                sb17.append(crashDetailBean.R);
                map17.put("C02", sb17.toString());
            }
            Map<String, String> map18 = crashDetailBean.S;
            if (map18 != null && map18.size() > 0) {
                for (Map.Entry<String, String> entry2 : crashDetailBean.S.entrySet()) {
                    akVar.f59651r.put("C03_" + entry2.getKey(), entry2.getValue());
                }
            }
            Map<String, String> map19 = crashDetailBean.T;
            if (map19 != null && map19.size() > 0) {
                for (Map.Entry<String, String> entry3 : crashDetailBean.T.entrySet()) {
                    akVar.f59651r.put("C04_" + entry3.getKey(), entry3.getValue());
                }
            }
            akVar.f59652s = null;
            Map<String, String> map20 = crashDetailBean.O;
            if (map20 != null && map20.size() > 0) {
                Map<String, String> map21 = crashDetailBean.O;
                akVar.f59652s = map21;
                x.a("setted message size %d", Integer.valueOf(map21.size()));
            }
            Object[] objArr2 = new Object[12];
            objArr2[0] = crashDetailBean.f59441n;
            objArr2[1] = crashDetailBean.f59430c;
            objArr2[2] = aVar.e();
            objArr2[3] = Long.valueOf((crashDetailBean.f59445r - crashDetailBean.M) / 1000);
            objArr2[4] = Boolean.valueOf(crashDetailBean.f59438k);
            objArr2[5] = Boolean.valueOf(crashDetailBean.N);
            objArr2[6] = Boolean.valueOf(crashDetailBean.f59437j);
            objArr2[7] = Boolean.valueOf(crashDetailBean.f59429b == 1);
            objArr2[8] = Integer.valueOf(crashDetailBean.f59447t);
            objArr2[9] = crashDetailBean.f59446s;
            objArr2[10] = Boolean.valueOf(crashDetailBean.f59431d);
            objArr2[11] = Integer.valueOf(akVar.f59651r.size());
            x.c("%s rid:%s sess:%s ls:%ds isR:%b isF:%b isM:%b isN:%b mc:%d ,%s ,isUp:%b ,vm:%d", objArr2);
            return akVar;
        }
        x.d("enExp args == null", new Object[0]);
        return null;
    }

    private static aj a(String str, Context context, String str2) {
        FileInputStream fileInputStream;
        if (str2 != null && context != null) {
            x.c("zip %s", str2);
            File file = new File(str2);
            File file2 = new File(context.getCacheDir(), str);
            if (!z.a(file, file2, 5000)) {
                x.d("zip fail!", new Object[0]);
                return null;
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                fileInputStream = new FileInputStream(file2);
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (read <= 0) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, read);
                        byteArrayOutputStream.flush();
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    x.c("read bytes :%d", Integer.valueOf(byteArray.length));
                    aj ajVar = new aj((byte) 2, file2.getName(), byteArray);
                    try {
                        fileInputStream.close();
                    } catch (IOException e4) {
                        if (!x.a(e4)) {
                            e4.printStackTrace();
                        }
                    }
                    if (file2.exists()) {
                        x.c("del tmp", new Object[0]);
                        file2.delete();
                    }
                    return ajVar;
                } catch (Throwable th) {
                    th = th;
                    try {
                        if (!x.a(th)) {
                            th.printStackTrace();
                        }
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e5) {
                                if (!x.a(e5)) {
                                    e5.printStackTrace();
                                }
                            }
                        }
                        if (file2.exists()) {
                            x.c("del tmp", new Object[0]);
                            file2.delete();
                        }
                        return null;
                    } catch (Throwable th2) {
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e6) {
                                if (!x.a(e6)) {
                                    e6.printStackTrace();
                                }
                            }
                        }
                        if (file2.exists()) {
                            x.c("del tmp", new Object[0]);
                            file2.delete();
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                fileInputStream = null;
            }
        } else {
            x.d("rqdp{  createZipAttachment sourcePath == null || context == null ,pls check}", new Object[0]);
            return null;
        }
    }

    public static void a(String str, String str2, String str3, String str4, String str5, CrashDetailBean crashDetailBean) {
        String str6;
        com.tencent.bugly.crashreport.common.info.a b4 = com.tencent.bugly.crashreport.common.info.a.b();
        if (b4 == null) {
            return;
        }
        x.e("#++++++++++Record By Bugly++++++++++#", new Object[0]);
        x.e("# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!", new Object[0]);
        x.e("# PKG NAME: %s", b4.f59363c);
        x.e("# APP VER: %s", b4.f59370j);
        x.e("# SDK VER: %s", b4.f59366f);
        x.e("# LAUNCH TIME: %s", z.a(new Date(com.tencent.bugly.crashreport.common.info.a.b().f59361a)));
        x.e("# CRASH TYPE: %s", str);
        x.e("# CRASH TIME: %s", str2);
        x.e("# CRASH PROCESS: %s", str3);
        x.e("# CRASH THREAD: %s", str4);
        if (crashDetailBean != null) {
            x.e("# REPORT ID: %s", crashDetailBean.f59430c);
            Object[] objArr = new Object[2];
            objArr[0] = b4.i();
            objArr[1] = b4.s().booleanValue() ? "ROOTED" : "UNROOT";
            x.e("# CRASH DEVICE: %s %s", objArr);
            x.e("# RUNTIME AVAIL RAM:%d ROM:%d SD:%d", Long.valueOf(crashDetailBean.C), Long.valueOf(crashDetailBean.D), Long.valueOf(crashDetailBean.E));
            x.e("# RUNTIME TOTAL RAM:%d ROM:%d SD:%d", Long.valueOf(crashDetailBean.F), Long.valueOf(crashDetailBean.G), Long.valueOf(crashDetailBean.H));
            if (!z.a(crashDetailBean.K)) {
                x.e("# EXCEPTION FIRED BY %s %s", crashDetailBean.K, crashDetailBean.J);
            } else if (crashDetailBean.f59429b == 3) {
                Object[] objArr2 = new Object[1];
                if (crashDetailBean.P == null) {
                    str6 = "null";
                } else {
                    str6 = crashDetailBean.P.get("BUGLY_CR_01");
                }
                objArr2[0] = str6;
                x.e("# EXCEPTION ANR MESSAGE:\n %s", objArr2);
            }
        }
        if (!z.a(str5)) {
            x.e("# CRASH STACK: ", new Object[0]);
            x.e(str5, new Object[0]);
        }
        x.e("#++++++++++++++++++++++++++++++++++++++++++#", new Object[0]);
    }
}
