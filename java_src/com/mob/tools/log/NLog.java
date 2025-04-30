package com.mob.tools.log;

import android.os.Process;
import android.util.Log;
import com.mob.commons.j;
import com.mob.commons.m;
import com.mob.tools.b;
import com.mob.tools.proguard.ClassKeeper;
import com.mob.tools.proguard.PublicMemberKeeper;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes4.dex */
public class NLog implements ClassKeeper, PublicMemberKeeper {

    /* renamed from: a  reason: collision with root package name */
    private static final HashMap<String, NLog> f53852a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private static final HashMap<String, String> f53853b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private String f53854c;

    /* renamed from: d  reason: collision with root package name */
    private int f53855d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f53856e;

    static {
        b.a();
    }

    public NLog() {
        this.f53856e = false;
        this.f53854c = null;
        this.f53855d = -1;
    }

    private String a(Throwable th) {
        try {
            return Log.getStackTraceString(th);
        } catch (Throwable th2) {
            if (th2 instanceof OutOfMemoryError) {
                return j.a("023<ddDgb,cf<bIbdbebhcgbfbdbe[g.cf;bFbfbcbiddgacacaCj");
            }
            return th2.getMessage();
        }
    }

    public static NLog getInstance(String str, int i2, String str2) {
        NLog nLog;
        HashMap<String, NLog> hashMap = f53852a;
        synchronized (hashMap) {
            nLog = hashMap.get(str);
            if (nLog == null) {
                nLog = new NLog(str, i2);
                f53853b.put(str, str2);
                hashMap.put(str, nLog);
            }
        }
        return nLog;
    }

    public static NLog getInstanceForSDK(String str, boolean z3) {
        return getInstance(str);
    }

    public static void setCollector(String str, LogCollector logCollector) {
        getInstance(str).setCollector(logCollector);
    }

    public final void crash(Throwable th) {
        a(6, 1, a(th));
    }

    public final int d(Throwable th) {
        return log(3, th);
    }

    public final void dg() {
        this.f53856e = true;
    }

    public final int e(Throwable th) {
        return log(6, th);
    }

    public final void error(Throwable th) {
        error(a(th));
    }

    public final int i(Throwable th) {
        return log(4, th);
    }

    public final int log(int i2, Throwable th) {
        return a(i2, 0, a(th));
    }

    public NLog setCollector(LogCollector logCollector) {
        return this;
    }

    public final int v(Throwable th) {
        return log(2, th);
    }

    public final int w(Throwable th) {
        return log(5, th);
    }

    public final int d(Object obj, Object... objArr) {
        return log(3, obj, objArr);
    }

    public final int e(Throwable th, Object obj, Object... objArr) {
        return log(6, th, obj, objArr);
    }

    public final void error(String str) {
        a(6, 2, str);
    }

    public final int i(Throwable th, Object obj, Object... objArr) {
        return log(4, th, obj, objArr);
    }

    public final int log(int i2, Object obj, Object... objArr) {
        String obj2 = obj.toString();
        if (objArr.length > 0) {
            obj2 = String.format(obj2, objArr);
        }
        return a(i2, 0, obj2);
    }

    public final int v(Object obj, Object... objArr) {
        return log(2, obj, objArr);
    }

    public final int w(Object obj, Object... objArr) {
        return log(5, obj, objArr);
    }

    public final int d(Throwable th, Object obj, Object... objArr) {
        return log(3, th, obj, objArr);
    }

    public final int e(Object obj, Object... objArr) {
        return log(6, obj, objArr);
    }

    public final int i(Object obj, Object... objArr) {
        return log(4, obj, objArr);
    }

    public final int v(Throwable th, Object obj, Object... objArr) {
        return log(2, th, obj, objArr);
    }

    public final int w(Throwable th, Object obj, Object... objArr) {
        return log(5, th, obj, objArr);
    }

    public final int e(String str) {
        return log(6, str, new Object[0]);
    }

    public final int i(String str) {
        return log(4, str, new Object[0]);
    }

    public final int w(String str) {
        return log(5, str, new Object[0]);
    }

    private NLog(String str, int i2) {
        this.f53856e = false;
        this.f53854c = str;
        this.f53855d = i2;
    }

    private int a(int i2, int i4, String str) {
        String str2;
        try {
            str2 = Process.myPid() + "-" + Process.myTid() + "(" + Thread.currentThread().getName() + ") " + str;
        } catch (Throwable unused) {
            str2 = str;
        }
        try {
            if (i4 == 1) {
                String str3 = this.f53854c;
                int i5 = this.f53855d;
                HashMap<String, String> hashMap = f53853b;
                if (!hashMap.isEmpty()) {
                    NLog nLog = null;
                    Iterator<Map.Entry<String, String>> it2 = hashMap.entrySet().iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        Map.Entry<String, String> next = it2.next();
                        if (next.getValue() != null && str.contains(next.getValue())) {
                            nLog = f53852a.get(next.getKey());
                            break;
                        }
                    }
                    if (nLog != null) {
                        str3 = nLog.f53854c;
                        i5 = nLog.f53855d;
                    }
                }
                m.a().a(1, str3, i5, str2);
            } else if (i4 == 2) {
                m.a().a(2, this.f53854c, this.f53855d, str2);
            }
            m.a().a(i2, str2);
            return 0;
        } catch (Throwable unused2) {
            return 0;
        }
    }

    public final int log(int i2, Throwable th, Object obj, Object... objArr) {
        String obj2 = obj.toString();
        StringBuilder sb = new StringBuilder();
        if (objArr.length > 0) {
            obj2 = String.format(obj2, objArr);
        }
        sb.append(obj2);
        sb.append('\n');
        sb.append(a(th));
        return a(i2, 0, sb.toString());
    }

    @Deprecated
    public static NLog getInstance(String str) {
        NLog nLog;
        HashMap<String, NLog> hashMap = f53852a;
        synchronized (hashMap) {
            nLog = hashMap.get(str);
            if (nLog == null) {
                nLog = new NLog(str, -1);
                f53853b.put(str, null);
                hashMap.put(str, nLog);
            }
        }
        return nLog;
    }
}
