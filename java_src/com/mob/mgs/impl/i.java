package com.mob.mgs.impl;

import com.mob.MobSDK;
import com.mob.tools.utils.SharePrefrenceHelper;
/* loaded from: classes4.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static SharePrefrenceHelper f53329a;

    public static synchronized void a(boolean z3) {
        synchronized (i.class) {
            e();
            f53329a.putInt("device_switch_local_cache", Integer.valueOf(z3 ? 1 : 0));
        }
    }

    public static synchronized void b(boolean z3) {
        synchronized (i.class) {
            e();
            f53329a.putInt("device_switch_remote_cache", Integer.valueOf(z3 ? 1 : 0));
        }
    }

    public static synchronized String c() {
        String string;
        synchronized (i.class) {
            e();
            string = f53329a.getString("duid_remote_cache", "");
        }
        return string;
    }

    public static synchronized String d() {
        String string;
        synchronized (i.class) {
            e();
            string = f53329a.getString("guard_id_remote_cache", "");
        }
        return string;
    }

    private static void e() {
        if (f53329a == null) {
            SharePrefrenceHelper sharePrefrenceHelper = new SharePrefrenceHelper(MobSDK.getContext());
            f53329a = sharePrefrenceHelper;
            sharePrefrenceHelper.open("gu", 0);
        }
    }

    public static synchronized Boolean a() {
        Boolean bool;
        synchronized (i.class) {
            e();
            int i2 = f53329a.getInt("device_switch_local_cache", -1);
            if (i2 == 1) {
                bool = Boolean.TRUE;
            } else {
                bool = i2 == 0 ? Boolean.FALSE : null;
            }
        }
        return bool;
    }

    public static synchronized Boolean b() {
        Boolean bool;
        synchronized (i.class) {
            e();
            int i2 = f53329a.getInt("device_switch_remote_cache", -1);
            if (i2 == 1) {
                bool = Boolean.TRUE;
            } else {
                bool = i2 == 0 ? Boolean.FALSE : null;
            }
        }
        return bool;
    }

    public static synchronized void a(String str) {
        synchronized (i.class) {
            e();
            f53329a.putString("duid_remote_cache", str);
        }
    }

    public static synchronized void b(String str) {
        synchronized (i.class) {
            e();
            f53329a.putString("guard_id_remote_cache", str);
        }
    }
}
