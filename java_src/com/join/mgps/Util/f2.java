package com.join.mgps.Util;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.SparseArray;
import java.util.Locale;
/* compiled from: TagAliasOperatorHelper.java */
/* loaded from: classes3.dex */
public class f2 {

    /* renamed from: d  reason: collision with root package name */
    private static final String f27553d = "JIGUANG-TagAliasHelper";

    /* renamed from: e  reason: collision with root package name */
    public static int f27554e = 1;

    /* renamed from: f  reason: collision with root package name */
    public static final int f27555f = 1;

    /* renamed from: g  reason: collision with root package name */
    public static final int f27556g = 2;

    /* renamed from: h  reason: collision with root package name */
    public static final int f27557h = 3;

    /* renamed from: i  reason: collision with root package name */
    public static final int f27558i = 4;

    /* renamed from: j  reason: collision with root package name */
    public static final int f27559j = 5;

    /* renamed from: k  reason: collision with root package name */
    public static final int f27560k = 6;

    /* renamed from: l  reason: collision with root package name */
    public static final int f27561l = 1;

    /* renamed from: m  reason: collision with root package name */
    public static final int f27562m = 2;

    /* renamed from: n  reason: collision with root package name */
    private static f2 f27563n;

    /* renamed from: a  reason: collision with root package name */
    private Context f27564a;

    /* renamed from: b  reason: collision with root package name */
    private SparseArray<Object> f27565b = new SparseArray<>();

    /* renamed from: c  reason: collision with root package name */
    private Handler f27566c = new a();

    /* compiled from: TagAliasOperatorHelper.java */
    /* loaded from: classes3.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 2) {
                return;
            }
            Object obj = message.obj;
            if (obj != null && (obj instanceof String)) {
                u0.d(f2.f27553d, "retry set mobile number");
                f2.f27554e++;
                String str = (String) message.obj;
                f2.this.f27565b.put(f2.f27554e, str);
                if (f2.this.f27564a != null) {
                    f2 f2Var = f2.this;
                    f2Var.h(f2Var.f27564a, f2.f27554e, str);
                    return;
                }
                u0.c(f2.f27553d, "#unexcepted - context was null");
                return;
            }
            u0.c(f2.f27553d, "#unexcepted - msg obj was incorrect");
        }
    }

    private f2() {
    }

    private boolean a(int i2, String str) {
        if (!d0.e(this.f27564a)) {
            u0.c(f27553d, "no network");
            return false;
        } else if (i2 == 6002 || i2 == 6024) {
            u0.a(f27553d, "need retry");
            Message message = new Message();
            message.what = 2;
            message.obj = str;
            this.f27566c.sendMessageDelayed(message, 60000L);
            Locale locale = Locale.ENGLISH;
            Object[] objArr = new Object[1];
            objArr[0] = i2 == 6002 ? "timeout" : "server internal error”";
            d0.j(String.format(locale, "Failed to set mobile number due to %s. Try again after 60s.", objArr), this.f27564a);
            return true;
        } else {
            return false;
        }
    }

    private String e(int i2) {
        switch (i2) {
            case 1:
                return "add";
            case 2:
                return "set";
            case 3:
                return "delete";
            case 4:
                return "clean";
            case 5:
                return "get";
            case 6:
                return "check";
            default:
                return "unkonw operation";
        }
    }

    public static f2 f() {
        if (f27563n == null) {
            synchronized (f2.class) {
                if (f27563n == null) {
                    f27563n = new f2();
                }
            }
        }
        return f27563n;
    }

    private String g(boolean z3, int i2, int i4) {
        Locale locale = Locale.ENGLISH;
        Object[] objArr = new Object[3];
        objArr[0] = e(i2);
        objArr[1] = z3 ? "alias" : " tags";
        objArr[2] = i4 == 6002 ? "timeout" : "server too busy";
        return String.format(locale, "Failed to %s %s due to %s. Try again after 60s.", objArr);
    }

    public Object d(int i2) {
        return this.f27565b.get(i2);
    }

    public void h(Context context, int i2, String str) {
    }

    public void i(Context context) {
        if (context != null) {
            this.f27564a = context.getApplicationContext();
        }
    }

    public void j(int i2, Object obj) {
        this.f27565b.put(i2, obj);
    }

    public Object k(int i2) {
        return this.f27565b.get(i2);
    }
}
