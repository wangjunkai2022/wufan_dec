package com.mob.mgs.impl;

import com.mob.MobSDK;
import com.mob.tools.utils.DeviceHelper;
/* loaded from: classes4.dex */
public class b {
    public static void a() {
        new h() { // from class: com.mob.mgs.impl.b.1
            @Override // com.mob.mgs.impl.h
            protected void a() throws Throwable {
                boolean isInMainProcess = DeviceHelper.getInstance(MobSDK.getContext()).isInMainProcess();
                e a4 = e.a();
                a4.a("mgs init, main p: " + isInMainProcess);
                if (isInMainProcess && !MobSDK.isForb()) {
                    f.a().b();
                    c.a().b();
                }
            }
        }.start();
    }

    public static boolean b() {
        Boolean c4 = c();
        if (c4 == null) {
            c4 = Boolean.TRUE;
        }
        return c4.booleanValue();
    }

    private static Boolean c() {
        Boolean a4 = i.a();
        Boolean b4 = i.b();
        if (a4 != null && (b4 == null || a4 != b4)) {
            a(a4.booleanValue(), false);
        }
        return a4;
    }

    public static void a(final boolean z3, final boolean z4) {
        new h() { // from class: com.mob.mgs.impl.b.2
            @Override // com.mob.mgs.impl.h
            protected void a() throws Throwable {
                d.a(z3, z4);
                i.b(z3);
                String f4 = f.a().f();
                String a4 = com.mob.mcl.b.a.a();
                e a5 = e.a();
                a5.a("[setDS] save buff DId: " + f4 + ", GId: " + a4);
                i.a(f4);
                i.b(a4);
            }
        }.start();
    }

    public static void a(final boolean z3) {
        new h() { // from class: com.mob.mgs.impl.b.3
            @Override // com.mob.mgs.impl.h
            protected void a() throws Throwable {
                Boolean b4 = i.b();
                if (b4 == null) {
                    b.a(z3, false);
                    return;
                }
                String f4 = f.a().f();
                String c4 = i.c();
                String a4 = com.mob.mcl.b.a.a();
                String d4 = i.d();
                e a5 = e.a();
                a5.a("[setDS] currDId: " + f4 + ", buffDId: " + c4);
                e a6 = e.a();
                a6.a("[setDS] currGId: " + a4 + ", buffGId: " + d4);
                if (!c4.equals(f4) || !d4.equals(a4)) {
                    b.a(z3, true);
                }
                if (z3 != b4.booleanValue()) {
                    b.a(z3, false);
                }
            }
        }.start();
        i.a(z3);
    }
}
