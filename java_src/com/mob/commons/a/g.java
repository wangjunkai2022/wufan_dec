package com.mob.commons.a;

import android.location.Location;
import com.mob.MobSDK;
import com.mob.tools.MobLog;
import com.mob.tools.utils.DeviceHelper;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class g extends c {
    public g() {
        super("l", 0L, com.mob.commons.i.a("004=gfhhfh>g"), 86400L);
    }

    @Override // com.mob.commons.a.c
    protected void a() {
        DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
        ArrayList<HashMap<String, Object>> arrayList = null;
        try {
            if (deviceHelper.checkPermission("android.permission.CHANGE_WIFI_STATE") && deviceHelper.checkPermission("android.permission.ACCESS_WIFI_STATE")) {
                arrayList = com.mob.commons.r.d();
            }
            a(arrayList);
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
    }

    private void a(ArrayList<HashMap<String, Object>> arrayList) {
        try {
            if (e()) {
                a(arrayList, 2);
                a(arrayList, 1);
            }
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
        }
    }

    private void a(ArrayList<HashMap<String, Object>> arrayList, int i2) {
        Location location;
        HashMap<String, Object> a4;
        DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
        if (i2 == 1) {
            location = deviceHelper.getLocation(30, 0, true);
        } else {
            location = deviceHelper.getLocation(0, 15, true);
        }
        if (location == null || (a4 = a(location, false)) == null || a4.isEmpty()) {
            return;
        }
        a4.put("lctpmt", Integer.valueOf(i2));
        if (arrayList != null && !arrayList.isEmpty()) {
            a4.put("wilmt", arrayList);
        }
        a("LCMT", a4);
    }
}
