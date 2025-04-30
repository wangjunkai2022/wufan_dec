package com.mob.commons.a;

import android.text.TextUtils;
import com.mob.MobSDK;
import com.mob.commons.w;
import com.mob.tools.MobLog;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.ResHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes4.dex */
public class k extends c {
    public k() {
        super(com.mob.commons.o.a("003Vfgdifg"), 0L, com.mob.commons.o.a("006,fgdifgffdfKe"), 2592000L);
    }

    @Override // com.mob.commons.a.c
    protected void a() {
        ArrayList<HashMap<String, String>> arrayList;
        boolean z3;
        try {
            arrayList = DeviceHelper.getInstance(MobSDK.getContext()).getSA();
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            arrayList = new ArrayList<>();
        }
        if (arrayList.isEmpty()) {
            return;
        }
        long b4 = w.a().b(w.f53130e, 0L);
        long currentTimeMillis = System.currentTimeMillis();
        boolean z4 = currentTimeMillis - (k() * 1000) >= b4;
        if (!z4) {
            ArrayList<HashMap<String, String>> readArrayListFromFile = ResHelper.readArrayListFromFile(com.mob.commons.j.f53043g, true);
            Iterator<HashMap<String, String>> it2 = arrayList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                String str = it2.next().get(com.mob.commons.o.a("003eGdjff"));
                if (!TextUtils.isEmpty(str)) {
                    Iterator<HashMap<String, String>> it3 = readArrayListFromFile.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            z3 = false;
                            break;
                        } else if (str.equals(it3.next().get(com.mob.commons.o.a("003eRdjff")))) {
                            z3 = true;
                            break;
                        }
                    }
                    if (!z3) {
                        z4 = true;
                        break;
                    }
                }
            }
        }
        if (z4) {
            a(0L, "SALMT", arrayList);
            ResHelper.saveArrayListToFile(arrayList, com.mob.commons.j.f53043g, true);
            w.a().a(w.f53130e, currentTimeMillis);
        }
    }
}
