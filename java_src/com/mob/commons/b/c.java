package com.mob.commons.b;

import com.mob.tools.MobLog;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final c f52846a = new c();

    private c() {
    }

    public static c a() {
        return f52846a;
    }

    private void b(Object obj) {
        try {
            if (obj instanceof Throwable) {
                MobLog.getInstance().d((Throwable) obj);
            } else {
                MobLog.getInstance().d(obj, new Object[0]);
            }
        } catch (Throwable unused) {
        }
    }

    public void a(Object obj) {
        b(obj);
    }
}
