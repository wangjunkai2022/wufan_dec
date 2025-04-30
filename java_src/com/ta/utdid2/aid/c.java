package com.ta.utdid2.aid;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.ta.utdid2.android.utils.d;
import com.ta.utdid2.android.utils.h;
import com.ta.utdid2.android.utils.i;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f59129a = "com.ta.utdid2.aid.c";

    /* renamed from: b  reason: collision with root package name */
    private static final String f59130b = "OfJbkLdFbPOMbGyP";

    /* renamed from: c  reason: collision with root package name */
    private static final String f59131c = "EvQwnbilKezpOJey";

    /* renamed from: d  reason: collision with root package name */
    private static final String f59132d = "rKrMJgyAEbVtSQGi";

    /* renamed from: e  reason: collision with root package name */
    private static Map<String, String> f59133e = new ConcurrentHashMap();

    /* renamed from: f  reason: collision with root package name */
    private static Map<String, Long> f59134f = new ConcurrentHashMap();

    public static long a(Context context, String str, String str2) {
        if (context == null) {
            return 0L;
        }
        String c4 = c(str, str2);
        Long valueOf = Long.valueOf(f59134f.containsKey(c4) ? f59134f.get(c4).longValue() : 0L);
        if (d.f59161b) {
            new StringBuilder("cache AIDGenTime:").append(valueOf);
        }
        if (valueOf.longValue() == 0) {
            valueOf = Long.valueOf(context.getSharedPreferences(f59130b, 0).getLong(f59132d.concat(c4), 0L));
            f59134f.put(c4, valueOf);
        }
        return valueOf.longValue();
    }

    public static String b(Context context, String str, String str2) {
        if (context == null) {
            return "";
        }
        String c4 = c(str, str2);
        String str3 = f59133e.get(c4);
        if (d.f59161b) {
            new StringBuilder("cache AID:").append(str3);
        }
        if (i.c(str3)) {
            String string = context.getSharedPreferences(f59130b, 0).getString(f59131c.concat(c4), "");
            f59133e.put(c4, string);
            return string;
        }
        return str3;
    }

    private static String c(String str, String str2) {
        String f4;
        if (Build.VERSION.SDK_INT >= 8) {
            f4 = com.ta.utdid2.android.utils.c.a(str.concat(str2).getBytes(), 2);
        } else {
            f4 = com.ta.utdid2.android.utils.b.f(str.concat(str2).getBytes(), 2);
        }
        if (d.f59161b) {
            new StringBuilder("encodedName:").append(f4);
        }
        return f4;
    }

    public static void d(Context context, String str, String str2, String str3) {
        if (context == null) {
            return;
        }
        String c4 = c(str, str3);
        long currentTimeMillis = System.currentTimeMillis();
        f59133e.put(c4, str2);
        f59134f.put(c4, Long.valueOf(currentTimeMillis));
        SharedPreferences sharedPreferences = context.getSharedPreferences(f59130b, 0);
        if (Build.VERSION.SDK_INT >= 9) {
            h.a(sharedPreferences.edit().putString(f59131c.concat(c4), str2));
            h.a(sharedPreferences.edit().putLong(f59132d.concat(c4), currentTimeMillis));
            return;
        }
        sharedPreferences.edit().putString(f59131c.concat(c4), str2).commit();
        sharedPreferences.edit().putLong(f59132d.concat(c4), currentTimeMillis).commit();
    }
}
