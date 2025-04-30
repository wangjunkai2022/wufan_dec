package android.content.pm;

import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes.dex */
public interface IPackageDeleteObserver2 extends IInterface {

    /* loaded from: classes.dex */
    public static class Default implements IPackageDeleteObserver2 {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.content.pm.IPackageDeleteObserver2
        public void onPackageDeleted(String packageName, int returnCode, String msg) throws RemoteException {
        }

        @Override // android.content.pm.IPackageDeleteObserver2
        public void onUserActionRequired(Intent intent) throws RemoteException {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IPackageDeleteObserver2 {
        private static final String DESCRIPTOR = "android.content.pm.IPackageDeleteObserver2";
        static final int TRANSACTION_onPackageDeleted = 2;
        static final int TRANSACTION_onUserActionRequired = 1;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class Proxy implements IPackageDeleteObserver2 {
            public static IPackageDeleteObserver2 sDefaultImpl;
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

            @Override // android.content.pm.IPackageDeleteObserver2
            public void onPackageDeleted(String packageName, int returnCode, String msg) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(packageName);
                    obtain.writeInt(returnCode);
                    obtain.writeString(msg);
                    if (!this.mRemote.transact(2, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onPackageDeleted(packageName, returnCode, msg);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageDeleteObserver2
            public void onUserActionRequired(Intent intent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intent != null) {
                        obtain.writeInt(1);
                        intent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onUserActionRequired(intent);
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

        public static IPackageDeleteObserver2 asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IPackageDeleteObserver2)) {
                return (IPackageDeleteObserver2) queryLocalInterface;
            }
            return new Proxy(obj);
        }

        public static IPackageDeleteObserver2 getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IPackageDeleteObserver2 impl) {
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
                onUserActionRequired(data.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(data) : null);
                reply.writeNoException();
                return true;
            } else if (code != 2) {
                if (code != 1598968902) {
                    return super.onTransact(code, data, reply, flags);
                }
                reply.writeString(DESCRIPTOR);
                return true;
            } else {
                data.enforceInterface(DESCRIPTOR);
                onPackageDeleted(data.readString(), data.readInt(), data.readString());
                reply.writeNoException();
                return true;
            }
        }
    }

    void onPackageDeleted(String packageName, int returnCode, String msg) throws RemoteException;

    void onUserActionRequired(Intent intent) throws RemoteException;
}
