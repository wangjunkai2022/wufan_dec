package com.mob.commons;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes4.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private static o f53092a;

    /* renamed from: b  reason: collision with root package name */
    private HashMap<String, Object> f53093b;

    private o() {
        HashMap<String, Object> c4 = c();
        this.f53093b = c4;
        if (c4 == null) {
            this.f53093b = new HashMap<>();
        }
        ArrayList<MobProduct> b4 = v.b();
        if (b4 == null || b4.isEmpty()) {
            return;
        }
        Iterator<MobProduct> it2 = b4.iterator();
        while (it2.hasNext()) {
            MobProduct next = it2.next();
            if (!this.f53093b.containsKey(next.getProductTag())) {
                this.f53093b.put(next.getProductTag(), 0);
            }
        }
    }

    public static o a() {
        if (f53092a == null) {
            synchronized (o.class) {
                if (f53092a == null) {
                    f53092a = new o();
                }
            }
        }
        return f53092a;
    }

    private HashMap<String, Object> c() {
        try {
            return w.a().d();
        } catch (Throwable unused) {
            return null;
        }
    }

    public HashMap<String, Object> b() {
        return this.f53093b;
    }

    public void a(MobProduct mobProduct, int i2) {
        if (mobProduct != null) {
            this.f53093b.put(mobProduct.getProductTag(), Integer.valueOf(i2));
            a(this.f53093b);
        }
    }

    private void a(HashMap<String, Object> hashMap) {
        try {
            w.a().b(hashMap);
        } catch (Throwable unused) {
        }
    }

    public static String a(String str) {
        return r.a(str, 99);
    }
}
