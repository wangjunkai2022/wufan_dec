package com.xinzhu.overmind.server.os;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: IMindDeviceInfoService.java */
/* loaded from: classes3.dex */
public interface a extends IInterface {

    /* compiled from: IMindDeviceInfoService.java */
    /* renamed from: com.xinzhu.overmind.server.os.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0431a implements a {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.server.os.a
        public MindDeviceInfo getDeviceInfo() throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.os.a
        public void setVirtualDeviceStatus(boolean enable) throws RemoteException {
        }
    }

    /* compiled from: IMindDeviceInfoService.java */
    /* loaded from: classes3.dex */
    public static abstract class b extends Binder implements a {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.server.os.IMindDeviceInfoService";
        static final int TRANSACTION_getDeviceInfo = 1;
        static final int TRANSACTION_setVirtualDeviceStatus = 2;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IMindDeviceInfoService.java */
        /* renamed from: com.xinzhu.overmind.server.os.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static class C0432a implements a {

            /* renamed from: b  reason: collision with root package name */
            public static a f64500b;

            /* renamed from: a  reason: collision with root package name */
            private IBinder f64501a;

            C0432a(IBinder remote) {
                this.f64501a = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f64501a;
            }

            @Override // com.xinzhu.overmind.server.os.a
            public MindDeviceInfo getDeviceInfo() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (!this.f64501a.transact(1, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getDeviceInfo();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? MindDeviceInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String m() {
                return b.DESCRIPTOR;
            }

            @Override // com.xinzhu.overmind.server.os.a
            public void setVirtualDeviceStatus(boolean enable) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeInt(enable ? 1 : 0);
                    if (!this.f64501a.transact(2, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().setVirtualDeviceStatus(enable);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public b() {
            attachInterface(this, DESCRIPTOR);
        }

        public static a asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0432a(obj);
        }

        public static a getDefaultImpl() {
            return C0432a.f64500b;
        }

        public static boolean setDefaultImpl(a impl) {
            if (C0432a.f64500b == null) {
                if (impl != null) {
                    C0432a.f64500b = impl;
                    return true;
                }
                return false;
            }
            throw new IllegalStateException("setDefaultImpl() called twice");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code == 1) {
                data.enforceInterface(DESCRIPTOR);
                MindDeviceInfo deviceInfo = getDeviceInfo();
                reply.writeNoException();
                if (deviceInfo != null) {
                    reply.writeInt(1);
                    deviceInfo.writeToParcel(reply, 1);
                } else {
                    reply.writeInt(0);
                }
                return true;
            } else if (code != 2) {
                if (code != 1598968902) {
                    return super.onTransact(code, data, reply, flags);
                }
                reply.writeString(DESCRIPTOR);
                return true;
            } else {
                data.enforceInterface(DESCRIPTOR);
                setVirtualDeviceStatus(data.readInt() != 0);
                reply.writeNoException();
                return true;
            }
        }
    }

    MindDeviceInfo getDeviceInfo() throws RemoteException;

    void setVirtualDeviceStatus(boolean enable) throws RemoteException;
}
