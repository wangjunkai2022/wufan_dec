package com.mob.commons;

import android.os.Looper;
import android.text.TextUtils;
import com.mob.MobSDK;
import com.mob.tools.MobLog;
import com.mob.tools.utils.DeviceHelper;
import java.net.InetAddress;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static HashMap<String, List<String>> f52904a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    public static final String f52905b;

    /* renamed from: c  reason: collision with root package name */
    public static final String f52906c;

    /* renamed from: d  reason: collision with root package name */
    public static final String f52907d;

    /* renamed from: e  reason: collision with root package name */
    public static final String f52908e;

    /* renamed from: f  reason: collision with root package name */
    public static final String f52909f;

    static {
        String a4 = o.a("0062dgecdkfhdeff");
        f52905b = a4;
        String a5 = o.a("005?dg!hGdf<d'df");
        f52906c = a5;
        String a6 = o.a("005i+dhdhecdh");
        f52907d = a6;
        String a7 = o.a("006hij3dedgYi");
        f52908e = a7;
        String a8 = o.a("003hYeded");
        f52909f = a8;
        try {
            f52904a.put(a6, Arrays.asList(o.a("018;dfSe2dehi+iMdldgelFhWdcTd$deedfgeldgec2l"), o.a("020 dfAe@dehiViAdhdhecdhelIh!dc]d)deedfgeldgec*l")));
            f52904a.put(a7, Arrays.asList(o.a("020hijRfghi!h-df4dXdfel[hGdc1d-deedfgeldgec%l"), o.a("019Qdf:e.dehi2hijVfgel^hPdc<d'deedfgeldgecXl")));
            f52904a.put(a8, Arrays.asList(o.a("015hXfhCi^el'l]dedgel3l9ecfceldgec5l"), o.a("015hXfhCi^el'l]dedgel3l9ecfceldgec5l")));
            f52904a.put(a4, Arrays.asList(o.a("017Idf)e:dehifhdgel0h.dc-dJdeedfgeldgec3l"), o.a("016(df7e+dehidgelDh+dc%dQdeedfgeldgecLl")));
            f52904a.put(a5, Arrays.asList(o.a("016$df+eUdehi'hTelQh dc$dIdeedfgeldgec<l"), o.a("017RdfMeYdehifhNh0el4hOdcKd2deedfgeldgec l")));
            f52904a.put("sdrl", Arrays.asList(o.a("014)df?e(deel'h)fhelTl,ecfceldgecWl"), o.a("014)df?e(deel'h)fhelTl,ecfceldgecWl")));
        } catch (Throwable unused) {
        }
    }

    public static void a() {
        if (DeviceHelper.getInstance(MobSDK.getContext()).checkNetworkAvailable()) {
            HashMap hashMap = (HashMap) b.a(o.a("002FecMc"), (Object) null);
            if (hashMap == null || hashMap.isEmpty()) {
                hashMap = new HashMap();
                hashMap.putAll(f52904a);
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                a((String) entry.getKey(), (List) entry.getValue());
            }
        }
    }

    private static String b(String str, String str2) {
        List<String> list;
        String c4 = w.a().c(str, str2);
        return (!TextUtils.isEmpty(c4) || (list = f52904a.get(str)) == null || list.size() <= 0) ? c4 : list.get(0);
    }

    private static boolean c(String str) {
        if (TextUtils.isEmpty(str) || str.equals("127.0.0.1") || str.startsWith("10.") || str.startsWith("192.168")) {
            return false;
        }
        if (str.startsWith("172.")) {
            String[] split = str.split("\\.");
            if (split.length > 1) {
                try {
                    int parseInt = Integer.parseInt(split[1]);
                    return parseInt < 16 || parseInt > 31;
                } catch (Throwable th) {
                    MobLog.getInstance().d(th);
                }
            }
        }
        return true;
    }

    private static boolean b(String str) {
        if (str != null) {
            try {
                InetAddress[] allByName = InetAddress.getAllByName(str);
                if (allByName != null) {
                    for (InetAddress inetAddress : allByName) {
                        if (!c(inetAddress.getHostAddress())) {
                            return false;
                        }
                    }
                }
                MobLog.getInstance().d("ck ht suc: " + str, new Object[0]);
                return true;
            } catch (Throwable th) {
                MobLog.getInstance().d(th);
            }
        }
        return false;
    }

    public static String a(String str) {
        return r.a(b(str, null));
    }

    public static boolean a(HashMap<String, List<String>> hashMap) {
        if (!DeviceHelper.getInstance(MobSDK.getContext()).checkNetworkAvailable() || hashMap == null || hashMap.isEmpty() || Thread.currentThread().getId() == Looper.getMainLooper().getThread().getId()) {
            return false;
        }
        for (Map.Entry<String, List<String>> entry : hashMap.entrySet()) {
            a(entry.getKey(), entry.getValue());
        }
        return true;
    }

    public static String a(String str, String str2) {
        return r.a(b(str, str2));
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(java.lang.String r3, java.util.List<java.lang.String> r4) {
        /*
            if (r4 == 0) goto L66
            int r0 = r4.size()
            if (r0 != 0) goto L9
            goto L66
        L9:
            r0 = 0
            java.lang.String r0 = b(r3, r0)
            boolean r1 = b(r0)
            if (r1 != 0) goto L66
            boolean r1 = b(r0)
            if (r1 != 0) goto L66
            java.util.Iterator r4 = r4.iterator()
        L1e:
            boolean r1 = r4.hasNext()
            if (r1 == 0) goto L66
            java.lang.Object r1 = r4.next()
            java.lang.String r1 = (java.lang.String) r1
            boolean r2 = b(r1)
            if (r2 != 0) goto L36
            boolean r2 = b(r1)
            if (r2 == 0) goto L1e
        L36:
            boolean r4 = r1.equals(r0)
            if (r4 != 0) goto L66
            com.mob.tools.log.NLog r4 = com.mob.tools.MobLog.getInstance()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "sy dm: "
            r0.append(r2)
            r0.append(r3)
            java.lang.String r2 = ":"
            r0.append(r2)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r4.d(r0, r2)
            com.mob.commons.w r4 = com.mob.commons.w.a()
            r4.d(r3, r1)
        L66:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.commons.c.a(java.lang.String, java.util.List):void");
    }
}
