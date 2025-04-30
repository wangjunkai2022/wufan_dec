package com.xinzhu.overmind.client.hook.delegate;

import android.app.IServiceConnection;
import android.content.ComponentName;
import android.os.IBinder;
import android.os.RemoteException;
import com.xinzhu.haunted.android.app.q;
import com.xinzhu.overmind.utils.e;
import java.util.HashMap;
import java.util.Map;
/* compiled from: ServiceConnectionDelegate.java */
/* loaded from: classes.dex */
public class d extends IServiceConnection.Stub {

    /* renamed from: m  reason: collision with root package name */
    private static final Map<IBinder, d> f64104m = new HashMap();
    private ComponentName mComponentName;
    private IServiceConnection mConn;

    /* compiled from: ServiceConnectionDelegate.java */
    /* loaded from: classes3.dex */
    class a implements IBinder.DeathRecipient {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ IBinder f64105a;

        a(final IBinder val$iBinder) {
            this.f64105a = val$iBinder;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            d.f64104m.remove(this.f64105a);
            this.f64105a.unlinkToDeath(this, 0);
        }
    }

    private d(IServiceConnection mConn, ComponentName targetComponent) {
        this.mConn = mConn;
        this.mComponentName = targetComponent;
    }

    public static IServiceConnection createProxy(IServiceConnection base, ComponentName componentName) {
        IBinder asBinder = base.asBinder();
        d dVar = f64104m.get(asBinder);
        if (dVar == null) {
            try {
                asBinder.linkToDeath(new a(asBinder), 0);
            } catch (RemoteException e4) {
                e4.printStackTrace();
            }
            d dVar2 = new d(base, componentName);
            f64104m.put(asBinder, dVar2);
            return dVar2;
        }
        return dVar;
    }

    public static d getDelegate(IBinder iBinder) {
        return f64104m.get(iBinder);
    }

    @Override // android.app.IServiceConnection
    public void connected(ComponentName name, IBinder service) throws RemoteException {
        connected(name, service, false);
    }

    public void connected(ComponentName name, IBinder service, boolean dead) throws RemoteException {
        if (e.v()) {
            new q(this.mConn).b(this.mComponentName, service, dead);
        } else {
            this.mConn.connected(name, service);
        }
    }
}
