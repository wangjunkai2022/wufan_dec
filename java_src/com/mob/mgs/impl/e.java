package com.mob.mgs.impl;

import com.mob.tools.MobLog;
import com.mob.tools.log.NLog;
/* loaded from: classes4.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static e f53306a = new e();

    private e() {
    }

    public static e a() {
        return f53306a;
    }

    public void b(String str) {
        NLog mobLog = MobLog.getInstance();
        mobLog.d("[MC][MGS]" + str, new Object[0]);
    }

    public void a(String str) {
        NLog mobLog = MobLog.getInstance();
        mobLog.d("[MC][MGS]" + str, new Object[0]);
    }

    public void b(Throwable th) {
        MobLog.getInstance().e(th, "%s", "[MC][MGS]");
    }

    public void a(Throwable th) {
        MobLog.getInstance().d(th, "%s", "[MC][MGS]");
    }

    public void a(String str, Throwable th) {
        NLog mobLog = MobLog.getInstance();
        mobLog.d(th, "%s", "[MC][MGS] " + str);
    }
}
