package com.xinzhu.overmind.server.os;

import android.os.RemoteException;
import com.xinzhu.overmind.server.os.a;
/* compiled from: MindDeviceInfoService.java */
/* loaded from: classes3.dex */
public class e extends a.b implements com.xinzhu.overmind.server.c {
    MindDeviceInfo mDeviceInfo;
    public static final String TAG = e.class.getSimpleName();
    private static e sService = new e();
    private static boolean sEnabled = true;

    public e() {
        MindDeviceInfo mindDeviceInfo = new MindDeviceInfo();
        this.mDeviceInfo = mindDeviceInfo;
        mindDeviceInfo.f64490a = "3541065001663722161";
        mindDeviceInfo.f64491b = "976188710578541";
        mindDeviceInfo.f64492c = "97618871057854142254";
        mindDeviceInfo.f64493d = "stub";
        mindDeviceInfo.f64494e = "stub";
        mindDeviceInfo.f64495f = "2134043431";
    }

    public static e get() {
        return sService;
    }

    @Override // com.xinzhu.overmind.server.os.a
    public MindDeviceInfo getDeviceInfo() throws RemoteException {
        if (sEnabled) {
            return this.mDeviceInfo;
        }
        return null;
    }

    @Override // com.xinzhu.overmind.server.os.a
    public void setVirtualDeviceStatus(boolean enable) throws RemoteException {
        sEnabled = enable;
    }

    @Override // com.xinzhu.overmind.server.c
    public void systemReady() {
    }
}
