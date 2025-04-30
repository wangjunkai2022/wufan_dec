package com.tencent.stat.common;

import android.content.Context;
/* loaded from: classes4.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    static long f60066a = -1;

    static long a(Context context, String str) {
        return p.a(context, str, f60066a);
    }

    static void a(Context context, String str, long j4) {
        p.b(context, str, j4);
    }

    public static synchronized boolean a(Context context) {
        boolean z3;
        synchronized (f.class) {
            long a4 = a(context, "1.6.2_begin_protection");
            long a5 = a(context, "1.6.2_end__protection");
            if (a4 <= 0 || a5 != f60066a) {
                if (a4 == f60066a) {
                    a(context, "1.6.2_begin_protection", System.currentTimeMillis());
                }
                z3 = true;
            } else {
                z3 = false;
            }
        }
        return z3;
    }

    public static synchronized void b(Context context) {
        synchronized (f.class) {
            if (a(context, "1.6.2_end__protection") == f60066a) {
                a(context, "1.6.2_end__protection", System.currentTimeMillis());
            }
        }
    }
}
