package com.mob.commons;

import android.text.TextUtils;
import com.mob.MobSDK;
import com.mob.tools.MobLog;
import com.mob.tools.utils.DeviceHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static g f53028a = new g();

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f53029b = false;

    /* renamed from: c  reason: collision with root package name */
    private volatile long f53030c = 0;

    private g() {
    }

    public static g a() {
        return f53028a;
    }

    private synchronized boolean c() {
        try {
            long longValue = ((Long) b.a(i.a("004k[fiWk7fn"), 5L)).longValue() * 1000;
            if (this.f53030c != 0 && System.currentTimeMillis() - this.f53030c <= longValue) {
                return this.f53029b;
            }
            boolean a4 = a((String) b.a(i.a("002]fiEj"), i.a("006Iimiminininin")));
            if (this.f53030c == 0 || a4 != this.f53029b) {
                a(a4);
            }
            this.f53030c = System.currentTimeMillis();
            this.f53029b = a4;
            return a4;
        } catch (Throwable th) {
            MobLog.getInstance().e(th);
            return true;
        }
    }

    public synchronized boolean b() {
        return !c();
    }

    private boolean a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return true;
            }
            char[] charArray = str.toCharArray();
            HashMap hashMap = new HashMap();
            boolean z3 = false;
            for (int i2 = 0; i2 < charArray.length; i2++) {
                if (charArray[i2] == '1') {
                    z3 |= a(i2);
                } else if (charArray[i2] != '0') {
                    List list = (List) hashMap.get(Character.valueOf(charArray[i2]));
                    if (list == null) {
                        list = new ArrayList();
                    }
                    list.add(Integer.valueOf(i2));
                    hashMap.put(Character.valueOf(charArray[i2]), list);
                }
                if (z3) {
                    return true;
                }
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                boolean z4 = true;
                for (Integer num : (List) entry.getValue()) {
                    z4 &= a(num.intValue());
                }
                z3 |= z4;
                if (z3) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            MobLog.getInstance().e(th);
            return true;
        }
    }

    private boolean a(int i2) {
        DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
        if (deviceHelper == null) {
            return true;
        }
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            if (i2 != 5) {
                                return true;
                            }
                            return deviceHelper.cx();
                        }
                        return deviceHelper.isRooted();
                    }
                    return deviceHelper.isWifiProxy();
                }
                return deviceHelper.vpn();
            }
            return deviceHelper.usbEnable();
        }
        return deviceHelper.checkUA();
    }

    private void a(boolean z3) {
        HashMap hashMap = new HashMap();
        hashMap.put(i.a("005_figf]kTfhfj"), Integer.valueOf(!z3 ? 1 : 0));
        hashMap.put(i.a("002Qfefi"), Integer.valueOf(a(0) ? 1 : 0));
        hashMap.put(i.a("002IfeXj"), Integer.valueOf(a(1) ? 1 : 0));
        hashMap.put(i.a("002lg"), Integer.valueOf(a(2) ? 1 : 0));
        hashMap.put(i.a("0027hfZg"), Integer.valueOf(a(3) ? 1 : 0));
        hashMap.put(i.a("002AfjBf"), Integer.valueOf(a(4) ? 1 : 0));
        hashMap.put(i.a("002-fnMg"), Integer.valueOf(a(5) ? 1 : 0));
        long currentTimeMillis = System.currentTimeMillis();
        HashMap<String, Object> hashMap2 = new HashMap<>();
        hashMap2.put(i.a("004fKfkSgk"), "ECMT");
        hashMap2.put(i.a("004j.fhQf!fh"), hashMap);
        hashMap2.put(i.a("008j:fh@fkfJfgBnk"), Long.valueOf(currentTimeMillis));
        d.a().a(currentTimeMillis, hashMap2);
    }
}
