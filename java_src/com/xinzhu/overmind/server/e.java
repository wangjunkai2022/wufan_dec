package com.xinzhu.overmind.server;

import android.content.pm.PackageManager;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.pm.InstallOption;
import com.xinzhu.overmind.server.accounts.MindAccountManagerService;
/* compiled from: MindSystem.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static e f64461a;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f64462b;

    public static e a() {
        if (f64461a == null) {
            synchronized (e.class) {
                if (f64461a == null) {
                    f64461a = new e();
                }
            }
        }
        return f64461a;
    }

    public void b() {
        com.xinzhu.overmind.a.W();
        com.xinzhu.overmind.server.pm.h.get().systemReady();
        com.xinzhu.overmind.server.user.c.get().systemReady();
        com.xinzhu.overmind.server.am.f.get().systemReady();
        com.xinzhu.overmind.server.am.g.get().systemReady();
        com.xinzhu.overmind.server.os.h.get().systemReady();
        com.xinzhu.overmind.server.pm.g.get().systemReady();
        com.xinzhu.overmind.server.os.g.get().systemReady();
        MindAccountManagerService.get().systemReady();
        f64462b = true;
        for (String str : com.xinzhu.overmind.client.hook.env.a.a()) {
            try {
                com.xinzhu.overmind.server.pm.h.get().installPackageAsUser(Overmind.getContext().getPackageManager().getPackageInfo(str, 0).applicationInfo.sourceDir, InstallOption.b(), -1);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        f64462b = false;
    }
}
