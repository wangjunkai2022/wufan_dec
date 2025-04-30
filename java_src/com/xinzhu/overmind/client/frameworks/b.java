package com.xinzhu.overmind.client.frameworks;

import android.os.RemoteException;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.server.os.MindDeviceInfo;
import com.xinzhu.overmind.server.os.a;
/* compiled from: MindDeviceManager.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private static b f64055b = new b();

    /* renamed from: a  reason: collision with root package name */
    private com.xinzhu.overmind.server.os.a f64056a;

    public static b a() {
        return f64055b;
    }

    private com.xinzhu.overmind.server.os.a c() {
        com.xinzhu.overmind.server.os.a aVar = this.f64056a;
        if (aVar != null && aVar.asBinder().isBinderAlive()) {
            return this.f64056a;
        }
        this.f64056a = a.b.asInterface(Overmind.get().getService(com.xinzhu.overmind.server.g.f64486m));
        return c();
    }

    public MindDeviceInfo b() {
        try {
            if (Overmind.get().isVirtualProcess()) {
                String vPackageName = com.xinzhu.overmind.client.e.getVPackageName();
                int userId = com.xinzhu.overmind.client.e.getUserId();
                if (vPackageName == null || Overmind.get().ifDisableVirtualDeviceForPackage(vPackageName, userId)) {
                    return null;
                }
                return c().getDeviceInfo();
            }
            return c().getDeviceInfo();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public void d(boolean enable) {
        try {
            c().setVirtualDeviceStatus(enable);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }
}
