package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.util.ArrayList;
import java.util.List;
/* compiled from: SessionIdManager.java */
/* loaded from: classes4.dex */
public class x {

    /* renamed from: c  reason: collision with root package name */
    private static volatile x f60912c;

    /* renamed from: a  reason: collision with root package name */
    private v f60913a = new w();

    /* renamed from: b  reason: collision with root package name */
    private String f60914b;

    /* renamed from: d  reason: collision with root package name */
    private List<a> f60915d;

    /* renamed from: e  reason: collision with root package name */
    private String f60916e;

    /* compiled from: SessionIdManager.java */
    /* loaded from: classes4.dex */
    public interface a {
        void a(String str, long j4, long j5, long j6);

        void a(String str, String str2, long j4, long j5, long j6);
    }

    private x() {
    }

    public static x a() {
        if (f60912c == null) {
            synchronized (x.class) {
                if (f60912c == null) {
                    f60912c = new x();
                }
            }
        }
        return f60912c;
    }

    private String f(Context context) {
        try {
            SharedPreferences.Editor edit = PreferenceWrapper.getDefault(context).edit();
            edit.putString(t.f60894d, d(context));
            edit.commit();
        } catch (Exception unused) {
        }
        long h4 = h(context);
        long i2 = i(context);
        String str = this.f60914b;
        long a4 = t.a(context);
        long j4 = a4 * 5000;
        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>*** 读取 foreground count 值完成，count次数：" + a4);
        if (FieldManager.allow(com.umeng.commonsdk.utils.b.E)) {
            if (UMWorkDispatch.eventHasExist()) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>*** 读取 foreground count druation值完成，终止checker timer.");
                UMWorkDispatch.removeEvent();
            } else {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>*** 读取 foreground count druation值完成，无未处理check timer事件。");
            }
        } else {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>*** foreground count druation云控参数关闭。");
        }
        a(i2, h4, j4, str, false);
        this.f60914b = this.f60913a.a(context);
        a(i2, h4, j4, str, true);
        this.f60913a.a(context, this.f60914b);
        return this.f60914b;
    }

    private boolean g(Context context) {
        return !TextUtils.isEmpty(this.f60914b) && h.a(context).a(this.f60914b) > 0;
    }

    private long h(Context context) {
        return a(context, t.f60896f);
    }

    private long i(Context context) {
        return a(context, t.f60891a);
    }

    private boolean j(Context context) {
        Context appContext = UMGlobalContext.getAppContext(context);
        try {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(appContext);
            long j4 = sharedPreferences.getLong(t.f60895e, 0L);
            long j5 = sharedPreferences.getLong(t.f60896f, 0L);
            if (FieldManager.allow(com.umeng.commonsdk.utils.b.E) && j4 > 0 && j5 == 0) {
                long a4 = t.a(appContext);
                if (a4 > 0) {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> last session end time stamp = 0, reconstruct it by foreground count value.");
                    j5 = j4 + (a4 * 5000);
                }
            }
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> interval of last session is: " + (j5 - j4));
            return this.f60913a.a(j4, j5);
        } catch (Exception unused) {
            return false;
        }
    }

    public long b() {
        return this.f60913a.a();
    }

    public String c(Context context) {
        Context appContext = UMGlobalContext.getAppContext(context);
        if (appContext == null) {
            return "";
        }
        try {
            this.f60914b = f(appContext);
        } catch (Exception unused) {
        }
        return this.f60914b;
    }

    public String d(Context context) {
        if (TextUtils.isEmpty(this.f60914b)) {
            try {
                this.f60914b = PreferenceWrapper.getDefault(context).getString("session_id", null);
            } catch (Exception unused) {
            }
        }
        return this.f60914b;
    }

    public boolean e(Context context) {
        if (TextUtils.isEmpty(this.f60914b)) {
            this.f60914b = d(context);
        }
        return TextUtils.isEmpty(this.f60914b) || j(context) || g(context);
    }

    public synchronized String b(Context context) {
        Context appContext = UMGlobalContext.getAppContext(context);
        if (appContext == null) {
            return "";
        }
        this.f60914b = d(appContext);
        if (e(appContext)) {
            try {
                this.f60914b = f(appContext);
            } catch (Exception unused) {
            }
        }
        return this.f60914b;
    }

    public void a(long j4) {
        this.f60913a.a(j4);
    }

    public String a(Context context) {
        Context appContext = UMGlobalContext.getAppContext(context);
        if (appContext == null) {
            return "";
        }
        String str = "";
        try {
            synchronized (x.class) {
                str = PreferenceWrapper.getDefault(appContext).getString(t.f60894d, "");
            }
        } catch (Exception unused) {
        }
        return str;
    }

    public void b(a aVar) {
        List<a> list;
        if (aVar == null || (list = this.f60915d) == null || list.size() == 0) {
            return;
        }
        this.f60915d.remove(aVar);
    }

    public String a(Context context, long j4) {
        if (TextUtils.isEmpty(this.f60916e)) {
            String str = "SUB" + j4;
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(String.format("%0" + (32 - str.length()) + com.xinzhu.overmind.utils.helpers.d.f64708a, 0));
            this.f60916e = sb.toString();
        }
        return this.f60916e;
    }

    private long a(Context context, String str) {
        long j4;
        try {
            j4 = PreferenceWrapper.getDefault(context).getLong(str, 0L);
        } catch (Exception unused) {
            j4 = 0;
        }
        return j4 <= 0 ? System.currentTimeMillis() : j4;
    }

    private void a(long j4, long j5, long j6, String str, boolean z3) {
        List<a> list = this.f60915d;
        if (list != null) {
            for (a aVar : list) {
                if (z3) {
                    try {
                        aVar.a(str, this.f60914b, j4, j5, j6);
                    } catch (Exception unused) {
                    }
                } else {
                    aVar.a(this.f60914b, j4, j5, j6);
                }
            }
        }
    }

    public void a(a aVar) {
        if (aVar == null) {
            return;
        }
        if (this.f60915d == null) {
            this.f60915d = new ArrayList();
        }
        if (this.f60915d.contains(aVar)) {
            return;
        }
        this.f60915d.add(aVar);
    }
}
