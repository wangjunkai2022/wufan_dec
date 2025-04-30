package com.mob.mcl.d;

import com.mob.MobSDK;
import com.mob.tools.utils.SharePrefrenceHelper;
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static SharePrefrenceHelper f53259a;

    public static synchronized void a(String str) {
        synchronized (d.class) {
            e();
            f53259a.putString("tcp_config", str);
        }
    }

    public static synchronized boolean b() {
        boolean z3;
        synchronized (d.class) {
            e();
            z3 = f53259a.getBoolean("use_config", true);
        }
        return z3;
    }

    public static synchronized String c() {
        String string;
        synchronized (d.class) {
            e();
            string = f53259a.getString("suid");
        }
        return string;
    }

    public static synchronized long d() {
        long j4;
        synchronized (d.class) {
            e();
            j4 = f53259a.getLong("create_suid_time");
        }
        return j4;
    }

    private static void e() {
        if (f53259a == null) {
            SharePrefrenceHelper sharePrefrenceHelper = new SharePrefrenceHelper(MobSDK.getContext().getApplicationContext());
            f53259a = sharePrefrenceHelper;
            sharePrefrenceHelper.open("mcl", 0);
        }
    }

    public static synchronized void b(String str) {
        synchronized (d.class) {
            e();
            f53259a.putString("suid", str);
        }
    }

    public static synchronized String a() {
        String string;
        synchronized (d.class) {
            e();
            string = f53259a.getString("tcp_config");
        }
        return string;
    }

    public static synchronized void a(boolean z3) {
        synchronized (d.class) {
            e();
            f53259a.putBoolean("use_config", Boolean.valueOf(z3));
        }
    }

    public static synchronized void a(long j4) {
        synchronized (d.class) {
            e();
            f53259a.putLong("create_suid_time", Long.valueOf(j4));
        }
    }
}
