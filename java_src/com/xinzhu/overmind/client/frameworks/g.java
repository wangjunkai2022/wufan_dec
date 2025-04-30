package com.xinzhu.overmind.client.frameworks;

import android.net.Uri;
import android.os.RemoteException;
import android.os.storage.StorageVolume;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.server.os.d;
/* compiled from: MindStorageManager.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: b  reason: collision with root package name */
    private static g f64067b = new g();

    /* renamed from: a  reason: collision with root package name */
    private com.xinzhu.overmind.server.os.d f64068a;

    public static g a() {
        return f64067b;
    }

    private com.xinzhu.overmind.server.os.d b() {
        com.xinzhu.overmind.server.os.d dVar = this.f64068a;
        if (dVar != null && dVar.asBinder().isBinderAlive()) {
            return this.f64068a;
        }
        this.f64068a = d.b.asInterface(Overmind.get().getService(com.xinzhu.overmind.server.g.f64480g));
        return b();
    }

    public Uri c(String file) {
        try {
            return b().getUriForFile(file);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public StorageVolume[] d(int uid, String packageName, int flags, int userId) {
        try {
            return b().getVolumeList(uid, packageName, flags, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return new StorageVolume[0];
        }
    }
}
