package com.mob.apc.a;

import com.mob.tools.MobLog;
import com.mob.tools.log.NLog;
/* loaded from: classes4.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static f f52752a = new f();

    private f() {
    }

    public static f a() {
        return f52752a;
    }

    public void b(String str, Object... objArr) {
        NLog mobLog = MobLog.getInstance();
        mobLog.i("[MC][APC]" + String.format(str, objArr));
    }

    public void a(Throwable th) {
        MobLog.getInstance().d(th, "%s", "[MC][APC]");
    }

    public void a(String str, Object... objArr) {
        NLog mobLog = MobLog.getInstance();
        mobLog.d("[MC][APC]" + String.format(str, objArr), new Object[0]);
    }
}
