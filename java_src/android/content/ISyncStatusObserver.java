package android.content;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes.dex */
public interface ISyncStatusObserver extends IInterface {

    /* loaded from: classes.dex */
    public static class Default implements ISyncStatusObserver {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.content.ISyncStatusObserver
        public void onStatusChanged(int which) throws RemoteException {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ISyncStatusObserver {
        private static final String DESCRIPTOR = "android.content.ISyncStatusObserver";
        static final int TRANSACTION_onStatusChanged = 1;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class Proxy implements ISyncStatusObserver {
            public static ISyncStatusObserver sDefaultImpl;
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

            @Override // android.content.ISyncStatusObserver
            public void onStatusChanged(int which) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(which);
                    if (!this.mRemote.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onStatusChanged(which);
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

        public static ISyncStatusObserver asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ISyncStatusObserver)) {
                return (ISyncStatusObserver) queryLocalInterface;
            }
            return new Proxy(obj);
        }

        public static ISyncStatusObserver getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ISyncStatusObserver impl) {
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
            if (code != 1) {
                if (code != 1598968902) {
                    return super.onTransact(code, data, reply, flags);
                }
                reply.writeString(DESCRIPTOR);
                return true;
            }
            data.enforceInterface(DESCRIPTOR);
            onStatusChanged(data.readInt());
            reply.writeNoException();
            return true;
        }
    }

    void onStatusChanged(int which) throws RemoteException;
}
