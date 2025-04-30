package com.mob.commons.a;

import com.mob.MobSDK;
import com.mob.commons.w;
import com.mob.tools.MobLog;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.ResHelper;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class e extends c {
    public e() {
        super(com.mob.commons.o.a("002hj"), 0L, com.mob.commons.o.a("004hj1dgTc"), 3600L);
    }

    private HashMap<String, Object> n() {
        HashMap<String, Object> hashMap = new HashMap<>();
        DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
        hashMap.putAll(deviceHelper.getCPUFreq());
        hashMap.put(com.mob.commons.o.a("010ecLec.dMecggecdcdkAd"), Integer.valueOf(deviceHelper.getAlbumCount()));
        hashMap.putAll(deviceHelper.getTraffic());
        hashMap.putAll(deviceHelper.getDeviceMemUsage());
        hashMap.put(com.mob.commons.o.a("010Xdgdh)i:dfGdi_eideYli"), Long.valueOf(System.currentTimeMillis()));
        return hashMap;
    }

    @Override // com.mob.commons.a.c
    protected void a() {
        try {
            String str = com.mob.commons.j.f53039c;
            HashMap hashMap = (HashMap) ResHelper.readEncodedData(str, HashMap.class);
            if (hashMap == null) {
                hashMap = new HashMap();
            }
            HashMap<String, Object> n4 = n();
            ArrayList arrayList = (ArrayList) hashMap.get(com.mob.commons.o.a("004]eddefgOd"));
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            arrayList.add(n4);
            hashMap.put(com.mob.commons.o.a("004Reddefg3d"), arrayList);
            ResHelper.saveAndEncodeData(str, hashMap);
            w a4 = w.a();
            String str2 = w.f53138m;
            long b4 = a4.b(str2, 0L);
            long longValue = ((Long) a(com.mob.commons.o.a("004hj+dcEc"), (String) 3600L)).longValue() * 1000;
            if (b4 == 0 || System.currentTimeMillis() - longValue >= b4) {
                HashMap<String, Object> hashMap2 = new HashMap<>();
                hashMap2.putAll(hashMap);
                a("DEXTVARMT", hashMap2);
                ResHelper.saveAndEncodeData(str, null);
                w.a().a(str2, System.currentTimeMillis());
            }
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
    }
}
