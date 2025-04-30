package com.mob.commons.a;

import android.text.TextUtils;
import com.mob.commons.w;
import com.mob.tools.MobLog;
import com.mob.tools.utils.Data;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes4.dex */
public class r extends c {
    public r() {
        super(com.mob.commons.o.a("002Qfded"), 0L, com.mob.commons.o.a("0048fdedfgdh"), 300L);
        c();
    }

    private void n() {
        try {
            ArrayList<HashMap<String, Object>> d4 = com.mob.commons.r.d();
            if (d4 == null || d4.isEmpty()) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<HashMap<String, Object>> it2 = d4.iterator();
            while (it2.hasNext()) {
                Object obj = it2.next().get(com.mob.commons.o.a("005>fjehehegfi"));
                if (obj != null) {
                    arrayList.add(String.valueOf(obj));
                }
            }
            Collections.sort(arrayList);
            String MD5 = Data.MD5(TextUtils.join("", arrayList));
            w a4 = w.a();
            String str = w.f53143r;
            String b4 = a4.b(str, (String) null);
            long currentTimeMillis = System.currentTimeMillis();
            w a5 = w.a();
            String str2 = w.f53144s;
            long b5 = a5.b(str2, 0L);
            long intValue = ((Integer) a(com.mob.commons.o.a("005?fdedffdf.e"), (String) 7200)).intValue() * 1000;
            if (b4 == null || !b4.equals(MD5) || currentTimeMillis - intValue >= b5) {
                a(0L, "WLMT", (Object) d4, true);
                w.a().a(str, MD5);
                w.a().a(str2, currentTimeMillis);
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
