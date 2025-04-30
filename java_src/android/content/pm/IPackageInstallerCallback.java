package android.content.pm;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes.dex */
public interface IPackageInstallerCallback extends IInterface {

    /* loaded from: classes.dex */
    public static class Default implements IPackageInstallerCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.content.pm.IPackageInstallerCallback
        public void onSessionActiveChanged(int sessionId, boolean active) throws RemoteException {
        }

        @Override // android.content.pm.IPackageInstallerCallback
        public void onSessionBadgingChanged(int sessionId) throws RemoteException {
        }

        @Override // android.content.pm.IPackageInstallerCallback
        public void onSessionCreated(int sessionId) throws RemoteException {
        }

        @Override // android.content.pm.IPackageInstallerCallback
        public void onSessionFinished(int sessionId, boolean success) throws RemoteException {
        }

        @Override // android.content.pm.IPackageInstallerCallback
        public void onSessionProgressChanged(int sessionId, float progress) throws RemoteException {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IPackageInstallerCallback {
        private static final String DESCRIPTOR = "android.content.pm.IPackageInstallerCallback";
        static final int TRANSACTION_onSessionActiveChanged = 3;
        static final int TRANSACTION_onSessionBadgingChanged = 2;
        static final int TRANSACTION_onSessionCreated = 1;
        static final int TRANSACTION_onSessionFinished = 5;
        static final int TRANSACTION_onSessionProgressChanged = 4;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class Proxy implements IPackageInstallerCallback {
            public static IPackageInstallerCallback sDefaultImpl;
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

            @Override // android.content.pm.IPackageInstallerCallback
            public void onSessionActiveChanged(int sessionId, boolean active) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(sessionId);
                    obtain.writeInt(active ? 1 : 0);
                    if (!this.mRemote.transact(3, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onSessionActiveChanged(sessionId, active);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageInstallerCallback
            public void onSessionBadgingChanged(int sessionId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(sessionId);
                    if (!this.mRemote.transact(2, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onSessionBadgingChanged(sessionId);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageInstallerCallback
            public void onSessionCreated(int sessionId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(sessionId);
                    if (!this.mRemote.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onSessionCreated(sessionId);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageInstallerCallback
            public void onSessionFinished(int sessionId, boolean success) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(sessionId);
                    obtain.writeInt(success ? 1 : 0);
                    if (!this.mRemote.transact(5, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onSessionFinished(sessionId, success);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageInstallerCallback
            public void onSessionProgressChanged(int sessionId, float progress) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(sessionId);
                    obtain.writeFloat(progress);
                    if (!this.mRemote.transact(4, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onSessionProgressChanged(sessionId, progress);
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

        public static IPackageInstallerCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IPackageInstallerCallback)) {
                return (IPackageInstallerCallback) queryLocalInterface;
            }
            return new Proxy(obj);
        }

        public static IPackageInstallerCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IPackageInstallerCallback impl) {
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
                onSessionCreated(data.readInt());
                reply.writeNoException();
                return true;
            } else if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                onSessionBadgingChanged(data.readInt());
                reply.writeNoException();
                return true;
            } else {
                if (code == 3) {
                    data.enforceInterface(DESCRIPTOR);
                    onSessionActiveChanged(data.readInt(), data.readInt() != 0);
                    reply.writeNoException();
                    return true;
                } else if (code == 4) {
                    data.enforceInterface(DESCRIPTOR);
                    onSessionProgressChanged(data.readInt(), data.readFloat());
                    reply.writeNoException();
                    return true;
                } else if (code != 5) {
                    if (code != 1598968902) {
                        return super.onTransact(code, data, reply, flags);
                    }
                    reply.writeString(DESCRIPTOR);
                    return true;
                } else {
                    data.enforceInterface(DESCRIPTOR);
                    onSessionFinished(data.readInt(), data.readInt() != 0);
                    reply.writeNoException();
                    return true;
                }
            }
        }
    }

    void onSessionActiveChanged(int sessionId, boolean active) throws RemoteException;

    void onSessionBadgingChanged(int sessionId) throws RemoteException;

    void onSessionCreated(int sessionId) throws RemoteException;

    void onSessionFinished(int sessionId, boolean success) throws RemoteException;

    void onSessionProgressChanged(int sessionId, float progress) throws RemoteException;
}
