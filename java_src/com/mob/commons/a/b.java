package com.mob.commons.a;

import com.mob.MobSDK;
import com.mob.tools.MobLog;
import com.mob.tools.utils.DeviceHelper;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class b extends c {
    public b() {
        super(com.mob.commons.i.a("002Qhehi"), 0L, com.mob.commons.i.a("005[hehihhfh9g"), 86400L);
        c();
    }

    private void n() {
        int i2;
        DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
        try {
            i2 = Integer.parseInt(deviceHelper.getCarrier());
        } catch (Throwable unused) {
            i2 = -1;
        }
        int cellLac = deviceHelper.getCellLac();
        int cellId = deviceHelper.getCellId();
        int psc = deviceHelper.getPsc();
        HashMap<String, Object> hashMap = null;
        if (i2 != -1 && cellLac != -1 && cellId != -1) {
            hashMap = new HashMap<>();
            hashMap.put(com.mob.commons.i.a("003%gffhfi"), Integer.valueOf(cellLac));
            hashMap.put(com.mob.commons.i.a("004Qfi;kYgfgf"), Integer.valueOf(cellId));
            if (psc != -1) {
                hashMap.put(com.mob.commons.i.a("003g[hifi"), Integer.valueOf(psc));
            }
        }
        int cdmaBid = deviceHelper.getCdmaBid();
        int cdmaSid = deviceHelper.getCdmaSid();
        int cdmaNid = deviceHelper.getCdmaNid();
        int cdmaLat = deviceHelper.getCdmaLat();
        int cdmaLon = deviceHelper.getCdmaLon();
        if (i2 != -1 && cdmaBid != -1 && cdmaSid != -1 && cdmaNid != -1) {
            if (hashMap == null) {
                hashMap = new HashMap<>();
            }
            hashMap.put(com.mob.commons.i.a("003WhefgZj"), Integer.valueOf(cdmaBid));
            hashMap.put(com.mob.commons.i.a("0035hifg j"), Integer.valueOf(cdmaSid));
            hashMap.put(com.mob.commons.i.a("003UfmfgTj"), Integer.valueOf(cdmaNid));
            if (cdmaLat != -1) {
                hashMap.put(com.mob.commons.i.a("0034gffhVf"), Integer.valueOf(cdmaLat));
            }
            if (cdmaLon != -1) {
                hashMap.put(com.mob.commons.i.a("003Ggfgefm"), Integer.valueOf(cdmaLon));
            }
        }
        if (hashMap != null) {
            hashMap.put(com.mob.commons.i.a("007<fifhfjfjfg)k_fj"), Integer.valueOf(i2));
            hashMap.put(com.mob.commons.i.a("009UhifgOn@ge@g-fmfhZnk"), deviceHelper.getCarrierName());
            ArrayList<HashMap<String, Object>> neighboringCellInfo = deviceHelper.getNeighboringCellInfo();
            if (neighboringCellInfo != null && neighboringCellInfo.size() > 0) {
                hashMap.put(com.mob.commons.i.a("006$fm!kSfhfjhefk"), neighboringCellInfo);
            }
            a("BSIOMT", hashMap, true);
        }
    }

    @Override // com.mob.commons.a.c
    protected void a() {
        try {
            n();
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
        }
    }

    @Override // com.mob.commons.a.c
    protected void b() {
        a(k());
    }
}
