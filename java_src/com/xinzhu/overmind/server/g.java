package com.xinzhu.overmind.server;

import android.os.IBinder;
import com.xinzhu.overmind.server.accounts.MindAccountManagerService;
import java.util.HashMap;
import java.util.Map;
/* compiled from: ServiceManager.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: b  reason: collision with root package name */
    private static g f64475b = null;

    /* renamed from: c  reason: collision with root package name */
    public static final String f64476c = "activity_manager";

    /* renamed from: d  reason: collision with root package name */
    public static final String f64477d = "job_manager";

    /* renamed from: e  reason: collision with root package name */
    public static final String f64478e = "notification_manager";

    /* renamed from: f  reason: collision with root package name */
    public static final String f64479f = "package_manager";

    /* renamed from: g  reason: collision with root package name */
    public static final String f64480g = "storage_manager";

    /* renamed from: h  reason: collision with root package name */
    public static final String f64481h = "user_manager";

    /* renamed from: i  reason: collision with root package name */
    public static final String f64482i = "file_share";

    /* renamed from: j  reason: collision with root package name */
    public static final String f64483j = "Xposed_manager";

    /* renamed from: k  reason: collision with root package name */
    public static final String f64484k = "v_service";

    /* renamed from: l  reason: collision with root package name */
    public static final String f64485l = "account_manager";

    /* renamed from: m  reason: collision with root package name */
    public static final String f64486m = "device_manager";

    /* renamed from: a  reason: collision with root package name */
    private Map<String, IBinder> f64487a;

    private g() {
        HashMap hashMap = new HashMap();
        this.f64487a = hashMap;
        hashMap.put(f64476c, com.xinzhu.overmind.server.am.f.get());
        this.f64487a.put(f64477d, com.xinzhu.overmind.server.am.g.get());
        this.f64487a.put(f64479f, com.xinzhu.overmind.server.pm.h.get());
        this.f64487a.put(f64480g, com.xinzhu.overmind.server.os.h.get());
        this.f64487a.put(f64481h, com.xinzhu.overmind.server.user.c.get());
        this.f64487a.put(f64478e, com.xinzhu.overmind.server.os.g.get());
        this.f64487a.put(f64482i, com.xinzhu.overmind.server.os.f.get());
        this.f64487a.put(f64485l, MindAccountManagerService.get());
        this.f64487a.put(f64486m, com.xinzhu.overmind.server.os.e.get());
    }

    public static g a() {
        if (f64475b == null) {
            synchronized (g.class) {
                if (f64475b == null) {
                    f64475b = new g();
                }
            }
        }
        return f64475b;
    }

    public static IBinder b(String name) {
        return a().c(name);
    }

    public IBinder c(String name) {
        return this.f64487a.get(name);
    }
}
