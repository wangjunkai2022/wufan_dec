package android.content;

import android.accounts.Account;
import android.content.ISyncContext;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes.dex */
public interface ISyncAdapter extends IInterface {

    /* loaded from: classes.dex */
    public static class Default implements ISyncAdapter {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.content.ISyncAdapter
        public void cancelSync(ISyncContext syncContext) throws RemoteException {
        }

        @Override // android.content.ISyncAdapter
        public void initialize(Account account, String authority) throws RemoteException {
        }

        @Override // android.content.ISyncAdapter
        public void startSync(ISyncContext syncContext, String authority, Account account, Bundle extras) throws RemoteException {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ISyncAdapter {
        private static final String DESCRIPTOR = "android.content.ISyncAdapter";
        static final int TRANSACTION_cancelSync = 2;
        static final int TRANSACTION_initialize = 3;
        static final int TRANSACTION_startSync = 1;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class Proxy implements ISyncAdapter {
            public static ISyncAdapter sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.content.ISyncAdapter
            public void cancelSync(ISyncContext syncContext) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(syncContext != null ? syncContext.asBinder() : null);
                    if (!this.mRemote.transact(2, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().cancelSync(syncContext);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.content.ISyncAdapter
            public void initialize(Account account, String authority) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(authority);
                    if (!this.mRemote.transact(3, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().initialize(account, authority);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.content.ISyncAdapter
            public void startSync(ISyncContext syncContext, String authority, Account account, Bundle extras) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(syncContext != null ? syncContext.asBinder() : null);
                    obtain.writeString(authority);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (extras != null) {
                        obtain.writeInt(1);
                        extras.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().startSync(syncContext, authority, account, extras);
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

        public static ISyncAdapter asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ISyncAdapter)) {
                return (ISyncAdapter) queryLocalInterface;
            }
            return new Proxy(obj);
        }

        public static ISyncAdapter getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ISyncAdapter impl) {
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
                startSync(ISyncContext.Stub.asInterface(data.readStrongBinder()), data.readString(), data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null);
                reply.writeNoException();
                return true;
            } else if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                cancelSync(ISyncContext.Stub.asInterface(data.readStrongBinder()));
                reply.writeNoException();
                return true;
            } else if (code != 3) {
                if (code != 1598968902) {
                    return super.onTransact(code, data, reply, flags);
                }
                reply.writeString(DESCRIPTOR);
                return true;
            } else {
                data.enforceInterface(DESCRIPTOR);
                initialize(data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readString());
                reply.writeNoException();
                return true;
            }
        }
    }

    void cancelSync(ISyncContext syncContext) throws RemoteException;

    void initialize(Account account, String authority) throws RemoteException;

    void startSync(ISyncContext syncContext, String authority, Account account, Bundle extras) throws RemoteException;
}
