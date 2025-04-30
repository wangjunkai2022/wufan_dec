package com.mob.commons.a;

import android.os.Build;
import com.mob.MobSDK;
import com.mob.commons.w;
import com.mob.tools.MobLog;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.HashonHelper;
import com.mob.tools.utils.ResHelper;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class d extends c {
    public d() {
        super(com.mob.commons.o.a("003iRdlGd"), null);
    }

    private void n() {
        try {
            DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put("pmmt", deviceHelper.getBluetoothName());
            hashMap.put(com.mob.commons.o.a("007YfgdeffdkXlhNhe"), deviceHelper.getSignMD5());
            hashMap.put(com.mob.commons.o.a("009Ffcecdfdh?hGdkdfSli"), deviceHelper.getBoard());
            hashMap.put(com.mob.commons.o.a("010hij_dedgJiBdkdfHli"), deviceHelper.getDeviceName());
            hashMap.put(com.mob.commons.o.a("009hFdefg)e+eddfdideLh"), deviceHelper.getDisplayId());
            hashMap.put(com.mob.commons.o.a("011Cfhdedkff>i2dh6eQdhdedk3d"), deviceHelper.getFingerprint());
            if (Build.VERSION.SDK_INT >= 14) {
                hashMap.put(com.mob.commons.o.a("008Qdhdf2hLdeecJjiAdh"), deviceHelper.getRadioVersion());
            } else {
                hashMap.put(com.mob.commons.o.a("008?dhdfHhPdeec@ji9dh"), null);
            }
            hashMap.put(com.mob.commons.o.a("007hi8dkfgdeUd+di"), Float.valueOf(ResHelper.getDensity(MobSDK.getContext())));
            hashMap.put(com.mob.commons.o.a("010hi]dkfgdeLd*di^he.de"), Integer.valueOf(ResHelper.getDensityDpi(MobSDK.getContext())));
            hashMap.put(com.mob.commons.o.a("008dPdeBli gcecdkQi"), deviceHelper.getTimezone());
            hashMap.put(com.mob.commons.o.a("007%dgQeLdceidi)ei"), deviceHelper.getCPUType());
            hashMap.put(com.mob.commons.o.a("006Cfheddf+jYecdh"), deviceHelper.getFlavor());
            hashMap.put(com.mob.commons.o.a("008Nfh<iBdf%d2dcdh?i6fg"), deviceHelper.getSupport());
            hashMap.put(com.mob.commons.o.a("018hi fhdfdced8dNegdkLe*dcVd4giSidcXecKh"), deviceHelper.getDefaultIM());
            hashMap.put(com.mob.commons.o.a("012.dedk)e<dcYdPgiJidcZec(h+fg"), deviceHelper.getIMList());
            hashMap.put(com.mob.commons.o.a("005+fcdhdfdkHh"), deviceHelper.getBrand());
            hashMap.put(com.mob.commons.o.a("011^defgehdeTlIdceddf9d6ecdh"), Boolean.valueOf(deviceHelper.isSmlt()));
            String MD5 = Data.MD5(HashonHelper.fromHashMap(hashMap));
            w a4 = w.a();
            String str = w.f53136k;
            String b4 = a4.b(str, (String) null);
            w a5 = w.a();
            String str2 = w.f53137l;
            boolean z3 = System.currentTimeMillis() - 2592000000L >= a5.b(str2, 0L);
            if (b4 == null || !b4.equals(MD5) || z3) {
                a("DEXTMT", hashMap);
                w.a().a(str, MD5);
                w.a().a(str2, System.currentTimeMillis());
            }
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
        }
    }

    @Override // com.mob.commons.a.c
    protected void a() {
        n();
    }
}
