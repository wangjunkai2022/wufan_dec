package com.umeng.commonsdk.config;

import android.content.Context;
import android.util.Pair;
import com.umeng.commonsdk.config.d;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public class FieldManager {

    /* renamed from: a  reason: collision with root package name */
    private static final String f60995a = "cfgfd";

    /* renamed from: b  reason: collision with root package name */
    private static b f60996b = b.b();

    /* renamed from: c  reason: collision with root package name */
    private static boolean f60997c = false;

    /* renamed from: d  reason: collision with root package name */
    private static Object f60998d = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final FieldManager f60999a = new FieldManager();

        private a() {
        }
    }

    public static FieldManager a() {
        return a.f60999a;
    }

    public static boolean allow(String str) {
        synchronized (f60998d) {
            if (f60997c) {
                return b.a(str);
            }
            return false;
        }
    }

    public static boolean b() {
        boolean z3;
        synchronized (f60998d) {
            z3 = f60997c;
        }
        return z3;
    }

    private FieldManager() {
    }

    public void a(Context context) {
        String str;
        String str2 = "1001@3758096383,2147483647,262143,2047";
        String[] strArr = {d.a.class.getName(), d.b.class.getName(), d.c.class.getName(), d.EnumC0353d.class.getName()};
        String imprintProperty = UMEnvelopeBuild.imprintProperty(context, "cfgfd", "1001@3758096383,2147483647,262143,2047");
        synchronized (f60998d) {
            Pair<Long, String> a4 = a(imprintProperty);
            if (((Long) a4.first).longValue() > 1000 && (str = (String) a4.second) != null && str.length() > 0) {
                str2 = str;
            }
            String[] split = str2.split(",");
            int length = split.length;
            if (length > 0) {
                ArrayList arrayList = new ArrayList();
                g gVar = new g();
                for (int i2 = 0; i2 < length; i2++) {
                    arrayList.add(gVar);
                    ((e) arrayList.get(i2)).a(split[i2], f60996b, d.b(strArr[i2]));
                }
            }
            f60997c = true;
        }
    }

    public void a(Context context, String str) {
        String str2;
        String str3 = "1001@3758096383,2147483647,262143,2047";
        String[] strArr = {d.a.class.getName(), d.b.class.getName(), d.c.class.getName(), d.EnumC0353d.class.getName()};
        synchronized (f60998d) {
            f60996b.a();
            if (str != null) {
                Pair<Long, String> a4 = a(str);
                if (((Long) a4.first).longValue() > 1000 && (str2 = (String) a4.second) != null && str2.length() > 0) {
                    str3 = str2;
                }
            }
            String[] split = str3.split(",");
            int length = split.length;
            if (length > 0) {
                ArrayList arrayList = new ArrayList();
                g gVar = new g();
                for (int i2 = 0; i2 < length; i2++) {
                    arrayList.add(gVar);
                    ((e) arrayList.get(i2)).a(split[i2], f60996b, d.b(strArr[i2]));
                }
            }
            f60997c = true;
        }
    }

    private static Pair<Long, String> a(String str) {
        Pair<Long, String> pair = new Pair<>(-1L, null);
        if (str != null && str.length() >= 2) {
            String[] split = str.split("@");
            if (split.length < 2) {
                return pair;
            }
            try {
                long parseLong = Long.parseLong(split[0]);
                return new Pair<>(Long.valueOf(parseLong), split[1]);
            } catch (Throwable unused) {
            }
        }
        return pair;
    }
}
