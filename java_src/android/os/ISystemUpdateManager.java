package android.os;
/* loaded from: classes.dex */
public interface ISystemUpdateManager extends IInterface {

    /* loaded from: classes.dex */
    public static class Default implements ISystemUpdateManager {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.os.ISystemUpdateManager
        public Bundle retrieveSystemUpdateInfo() throws RemoteException {
            return null;
        }

        @Override // android.os.ISystemUpdateManager
        public void updateSystemUpdateInfo(PersistableBundle data) throws RemoteException {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ISystemUpdateManager {
        private static final String DESCRIPTOR = "android.os.ISystemUpdateManager";
        static final int TRANSACTION_retrieveSystemUpdateInfo = 1;
        static final int TRANSACTION_updateSystemUpdateInfo = 2;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class Proxy implements ISystemUpdateManager {
            public static ISystemUpdateManager sDefaultImpl;
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

            @Override // android.os.ISystemUpdateManager
            public Bundle retrieveSystemUpdateInfo() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().retrieveSystemUpdateInfo();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.ISystemUpdateManager
            public void updateSystemUpdateInfo(PersistableBundle data) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (data != null) {
                        obtain.writeInt(1);
                        data.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(2, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().updateSystemUpdateInfo(data);
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

        public static ISystemUpdateManager asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ISystemUpdateManager)) {
                return (ISystemUpdateManager) queryLocalInterface;
            }
            return new Proxy(obj);
        }

        public static ISystemUpdateManager getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ISystemUpdateManager impl) {
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
                Bundle retrieveSystemUpdateInfo = retrieveSystemUpdateInfo();
                reply.writeNoException();
                if (retrieveSystemUpdateInfo != null) {
                    reply.writeInt(1);
                    retrieveSystemUpdateInfo.writeToParcel(reply, 1);
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
                updateSystemUpdateInfo(data.readInt() != 0 ? (PersistableBundle) PersistableBundle.CREATOR.createFromParcel(data) : null);
                reply.writeNoException();
                return true;
            }
        }
    }

    Bundle retrieveSystemUpdateInfo() throws RemoteException;

    void updateSystemUpdateInfo(PersistableBundle data) throws RemoteException;
}
