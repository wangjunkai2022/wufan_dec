package com.mob.mcl.d;

import com.mob.tools.MobLog;
import com.mob.tools.log.NLog;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static b f53257a = new b();

    private b() {
    }

    public static b a() {
        return f53257a;
    }

    public void b(String str) {
        NLog mobLog = MobLog.getInstance();
        mobLog.d("[MC][MCL]" + str, new Object[0]);
    }

    public void a(String str) {
        NLog mobLog = MobLog.getInstance();
        mobLog.d("[MC][MCL]" + str, new Object[0]);
    }

    public void a(Throwable th) {
        MobLog.getInstance().d(th, "%s", "[MC][MCL]");
    }

    public void a(String str, Throwable th) {
        NLog mobLog = MobLog.getInstance();
        mobLog.d(th, "%s", "[MC][MCL] " + str);
    }
}
