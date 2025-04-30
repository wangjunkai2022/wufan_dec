package com.mob.commons.a;

import com.umeng.analytics.pro.ai;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class l extends c {

    /* renamed from: c  reason: collision with root package name */
    private static com.mob.commons.h f52806c;

    public l() {
        super(ai.av, 0L, null, 0L);
        a(0);
        c();
    }

    private static synchronized boolean n() {
        synchronized (l.class) {
            if (f52806c == null) {
                f52806c = new com.mob.commons.h() { // from class: com.mob.commons.a.l.1
                    @Override // com.mob.commons.h
                    public void a(boolean z3, boolean z4, long j4) {
                        if (z3) {
                            o.a().a(0L, l.class, new Object[]{-1, Long.valueOf(System.currentTimeMillis())}, 0);
                        }
                    }
                };
                com.mob.commons.i.a().a(f52806c);
                return true;
            }
            return false;
        }
    }

    @Override // com.mob.commons.a.c
    protected void a() {
        if (f()) {
            n();
            return;
        }
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put(com.mob.commons.o.a("004d?diDei"), "PVMT");
        hashMap.put(com.mob.commons.o.a("008h-dfZdidQdeFli"), this.f52783a);
        com.mob.commons.d.a().a(System.currentTimeMillis(), hashMap);
    }
}
