package com.mob.commons.b;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class d {
    public static synchronized HashMap<String, Object> a(Context context) {
        synchronized (d.class) {
            HashMap<String, Object> hashMap = new HashMap<>();
            b a4 = b.a(context);
            HashMap<String, Object> a5 = a4.a();
            boolean z3 = a5 != null && a5.size() > 0;
            if (z3) {
                HashMap hashMap2 = new HashMap();
                if (a5.containsKey(com.mob.commons.a.o.a("004 ed iTef'i"))) {
                    a5.put(com.mob.commons.a.o.a("005JegedCiQefWi"), a5.remove(com.mob.commons.a.o.a("004=edIi0efBi")));
                }
                if (a5.containsKey(com.mob.commons.a.o.a("009Oghed0ff fdeiAeji"))) {
                    a5.put(com.mob.commons.a.o.a("011LefUiZfied9ffTfdei]eji"), a5.remove(com.mob.commons.a.o.a("0097ghedFffYfdei.eji")));
                }
                hashMap2.putAll(a5);
                hashMap.put(com.mob.commons.a.o.a("0097gief'iAghhhegehNdj"), hashMap2);
            }
            String c4 = c(context);
            String e4 = e(context);
            String g4 = g(context);
            String f4 = f(context);
            if (!z3 && TextUtils.isEmpty(c4) && TextUtils.isEmpty(f4)) {
                return null;
            }
            boolean b4 = b(context);
            hashMap.put(com.mob.commons.a.o.a("004VegegefCi"), e4);
            hashMap.put(com.mob.commons.a.o.a("004Gfdegef-i"), c4);
            hashMap.put(com.mob.commons.a.o.a("004kDegefGi"), g4);
            hashMap.put(com.mob.commons.a.o.a("005=egedNi:efFi"), f4);
            hashMap.put(com.mob.commons.a.o.a("011]efYi0fiedKffUfdei+eji"), Boolean.valueOf(b4));
            a4.a(c4, e4, g4, f4, b4);
            return hashMap;
        }
    }

    public static boolean b(Context context) {
        return e.b(context);
    }

    public static String c(Context context) {
        return e.c(context);
    }

    public static String d(Context context) {
        return e.d(context);
    }

    public static String e(Context context) {
        return e.e(context);
    }

    public static String f(Context context) {
        return e.f(context);
    }

    public static String g(Context context) {
        return e.g(context);
    }
}
