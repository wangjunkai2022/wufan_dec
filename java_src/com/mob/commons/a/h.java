package com.mob.commons.a;

import android.location.Location;
import android.text.TextUtils;
import com.mob.MobSDK;
import com.mob.commons.w;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.DeviceHelper;
import java.util.HashMap;
import java.util.TreeMap;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class h extends c {
    public h() {
        super(com.mob.commons.o.a("002=eced"), 0L, com.mob.commons.o.a("006;ecedffdfLec"), 60L);
        c();
    }

    private void n() {
        HashMap<String, Object> a4;
        Location location = DeviceHelper.getInstance(MobSDK.getContext()).getLocation(0, 0, true);
        if (location == null || (a4 = a(location, false)) == null || a4.isEmpty()) {
            return;
        }
        TreeMap treeMap = new TreeMap();
        treeMap.put("ltdmt", Double.valueOf(location.getLatitude()));
        treeMap.put("lndmt", Double.valueOf(location.getLongitude()));
        String MD5 = Data.MD5(new JSONObject(treeMap).toString());
        w a5 = w.a();
        String str = w.f53139n;
        String b4 = a5.b(str, (String) null);
        w a6 = w.a();
        String str2 = w.f53140o;
        long b5 = a6.b(str2, 0L);
        long longValue = ((Long) a(com.mob.commons.o.a("0060ecedffdf,e=ed"), (String) 3600L)).longValue() * 1000;
        long currentTimeMillis = System.currentTimeMillis();
        if (TextUtils.isEmpty(b4) || !b4.equals(MD5) || currentTimeMillis - b5 >= longValue) {
            a("O_LCMT", a4);
            w.a().a(str, MD5);
            w.a().a(str2, currentTimeMillis);
        }
    }

    @Override // com.mob.commons.a.c
    protected void a() {
        n();
    }
}
