package com.xinzhu.overmind.client.frameworks;

import android.os.RemoteException;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.server.os.c;
/* compiled from: MindNotificationManager.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: b  reason: collision with root package name */
    private static e f64062b = new e();

    /* renamed from: a  reason: collision with root package name */
    private com.xinzhu.overmind.server.os.c f64063a;

    public static e a() {
        return f64062b;
    }

    private com.xinzhu.overmind.server.os.c b() {
        com.xinzhu.overmind.server.os.c cVar = this.f64063a;
        if (cVar != null && cVar.asBinder().isBinderAlive()) {
            return this.f64063a;
        }
        this.f64063a = c.b.asInterface(Overmind.get().getService(com.xinzhu.overmind.server.g.f64478e));
        return b();
    }

    public String c(String pkgName, int userId, int id, String tag) {
        try {
            return b().solveAddNotification(pkgName, userId, id, tag);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public void d(String pkgName, int userId) {
        try {
            b().solveCancelAllNotifications(pkgName, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    public String e(String pkgName, int userId, int id, String tag) {
        try {
            return b().solveCancelNotification(pkgName, userId, id, tag);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
