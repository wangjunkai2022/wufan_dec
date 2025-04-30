package android.location;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes.dex */
public interface ILocationListener extends IInterface {

    /* loaded from: classes.dex */
    public static class Default implements ILocationListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.location.ILocationListener
        public void onLocationChanged(Location location) throws RemoteException {
        }

        @Override // android.location.ILocationListener
        public void onProviderDisabled(String provider) throws RemoteException {
        }

        @Override // android.location.ILocationListener
        public void onProviderEnabled(String provider) throws RemoteException {
        }

        @Override // android.location.ILocationListener
        public void onStatusChanged(String provider, int status, Bundle extras) throws RemoteException {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ILocationListener {
        private static final String DESCRIPTOR = "android.location.ILocationListener";
        static final int TRANSACTION_onLocationChanged = 1;
        static final int TRANSACTION_onProviderDisabled = 4;
        static final int TRANSACTION_onProviderEnabled = 3;
        static final int TRANSACTION_onStatusChanged = 2;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class Proxy implements ILocationListener {
            public static ILocationListener sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.location.ILocationListener
            public void onLocationChanged(Location location) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (location != null) {
                        obtain.writeInt(1);
                        location.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onLocationChanged(location);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.location.ILocationListener
            public void onProviderDisabled(String provider) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(provider);
                    if (!this.mRemote.transact(4, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onProviderDisabled(provider);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.location.ILocationListener
            public void onProviderEnabled(String provider) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(provider);
                    if (!this.mRemote.transact(3, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onProviderEnabled(provider);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.location.ILocationListener
            public void onStatusChanged(String provider, int status, Bundle extras) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(provider);
                    obtain.writeInt(status);
                    if (extras != null) {
                        obtain.writeInt(1);
                        extras.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(2, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onStatusChanged(provider, status, extras);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ILocationListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ILocationListener)) {
                return (ILocationListener) queryLocalInterface;
            }
            return new Proxy(obj);
        }

        public static ILocationListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ILocationListener impl) {
            if (Proxy.sDefaultImpl == null) {
                if (impl != null) {
                    Proxy.sDefaultImpl = impl;
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
                onLocationChanged(data.readInt() != 0 ? (Location) Location.CREATOR.createFromParcel(data) : null);
                reply.writeNoException();
                return true;
            } else if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                onStatusChanged(data.readString(), data.readInt(), data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null);
                reply.writeNoException();
                return true;
            } else if (code == 3) {
                data.enforceInterface(DESCRIPTOR);
                onProviderEnabled(data.readString());
                reply.writeNoException();
                return true;
            } else if (code != 4) {
                if (code != 1598968902) {
                    return super.onTransact(code, data, reply, flags);
                }
                reply.writeString(DESCRIPTOR);
                return true;
            } else {
                data.enforceInterface(DESCRIPTOR);
                onProviderDisabled(data.readString());
                reply.writeNoException();
                return true;
            }
        }
    }

    void onLocationChanged(Location location) throws RemoteException;

    void onProviderDisabled(String provider) throws RemoteException;

    void onProviderEnabled(String provider) throws RemoteException;

    void onStatusChanged(String provider, int status, Bundle extras) throws RemoteException;
}
