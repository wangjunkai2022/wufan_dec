package org.greenrobot.eventbus.util;

import java.util.HashMap;
import java.util.Map;
/* compiled from: ExceptionToResourceMapping.java */
/* loaded from: classes5.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public final Map<Class<? extends Throwable>, Integer> f73338a = new HashMap();

    public d a(Class<? extends Throwable> cls, int i2) {
        this.f73338a.put(cls, Integer.valueOf(i2));
        return this;
    }

    public Integer b(Throwable th) {
        int i2 = 20;
        Throwable th2 = th;
        do {
            Integer c4 = c(th2);
            if (c4 == null) {
                th2 = th2.getCause();
                i2--;
                if (i2 <= 0 || th2 == th) {
                    break;
                }
            } else {
                return c4;
            }
        } while (th2 != null);
        String str = org.greenrobot.eventbus.c.f73209q;
        StringBuilder sb = new StringBuilder();
        sb.append("No specific message ressource ID found for ");
        sb.append(th);
        return null;
    }

    protected Integer c(Throwable th) {
        Class<?> cls = th.getClass();
        Integer num = this.f73338a.get(cls);
        if (num == null) {
            Class<? extends Throwable> cls2 = null;
            for (Map.Entry<Class<? extends Throwable>, Integer> entry : this.f73338a.entrySet()) {
                Class<? extends Throwable> key = entry.getKey();
                if (key.isAssignableFrom(cls) && (cls2 == null || cls2.isAssignableFrom(key))) {
                    num = entry.getValue();
                    cls2 = key;
                }
            }
        }
        return num;
    }
}
