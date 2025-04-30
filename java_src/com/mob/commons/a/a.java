package com.mob.commons.a;

import com.mob.commons.w;
import com.mob.tools.MobLog;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class a extends c {

    /* renamed from: c  reason: collision with root package name */
    private static volatile long f52765c;

    /* renamed from: d  reason: collision with root package name */
    private static volatile HashMap<Long, Long> f52766d;

    public a() {
        super(o.a("002!eg8e"), 0L, o.a("0058eg<e<ggeg<f"), 900L);
        c();
        if (f52766d == null) {
            f52765c = System.currentTimeMillis();
            f52766d = w.a().c();
        }
    }

    private void n() {
        try {
            HashMap<String, Object> hashMap = new HashMap<>();
            for (Map.Entry<Long, Long> entry : f52766d.entrySet()) {
                if (entry != null) {
                    hashMap.put(o.a("0080feegedelehPdCfk*e"), entry.getKey());
                    hashMap.put(o.a("008iBedeiegUe$effdel"), entry.getValue());
                }
            }
            a("ARSTAMT", hashMap);
            w.a().a(w.f53135j, System.currentTimeMillis());
            if (f52766d != null) {
                f52766d.clear();
            }
            w.a().a((HashMap<Long, Long>) null);
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
        }
    }

    @Override // com.mob.commons.a.c
    protected void a() {
        if (f52766d == null) {
            f52766d = new HashMap<>();
        }
        for (Map.Entry<Long, Long> entry : f52766d.entrySet()) {
            if (entry != null && entry.getKey().longValue() != f52765c) {
                n();
            }
        }
        long currentTimeMillis = System.currentTimeMillis() - f52765c;
        f52766d.put(Long.valueOf(f52765c), Long.valueOf(currentTimeMillis));
        w.a().a(f52766d);
        long b4 = w.a().b(w.f53135j, 0L);
        long k4 = k() * 1000;
        if (currentTimeMillis < k4 || System.currentTimeMillis() - b4 <= k4) {
            return;
        }
        n();
    }

    @Override // com.mob.commons.a.c
    protected void b() {
        a(((Long) a(d(), (String) 0L)).longValue());
    }
}
