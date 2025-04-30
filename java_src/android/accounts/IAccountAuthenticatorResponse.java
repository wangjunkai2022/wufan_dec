package android.accounts;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes.dex */
public interface IAccountAuthenticatorResponse extends IInterface {

    /* loaded from: classes.dex */
    public static class Default implements IAccountAuthenticatorResponse {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.accounts.IAccountAuthenticatorResponse
        public void onError(int errorCode, String errorMessage) throws RemoteException {
        }

        @Override // android.accounts.IAccountAuthenticatorResponse
        public void onRequestContinued() throws RemoteException {
        }

        @Override // android.accounts.IAccountAuthenticatorResponse
        public void onResult(Bundle value) throws RemoteException {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IAccountAuthenticatorResponse {
        private static final String DESCRIPTOR = "android.accounts.IAccountAuthenticatorResponse";
        static final int TRANSACTION_onError = 3;
        static final int TRANSACTION_onRequestContinued = 2;
        static final int TRANSACTION_onResult = 1;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class Proxy implements IAccountAuthenticatorResponse {
            public static IAccountAuthenticatorResponse sDefaultImpl;
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

            @Override // android.accounts.IAccountAuthenticatorResponse
            public void onError(int errorCode, String errorMessage) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(errorCode);
                    obtain.writeString(errorMessage);
                    if (!this.mRemote.transact(3, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onError(errorCode, errorMessage);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.accounts.IAccountAuthenticatorResponse
            public void onRequestContinued() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onRequestContinued();
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.accounts.IAccountAuthenticatorResponse
            public void onResult(Bundle value) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (value != null) {
                        obtain.writeInt(1);
                        value.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onResult(value);
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

        public static IAccountAuthenticatorResponse asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IAccountAuthenticatorResponse)) {
                return (IAccountAuthenticatorResponse) queryLocalInterface;
            }
            return new Proxy(obj);
        }

        public static IAccountAuthenticatorResponse getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IAccountAuthenticatorResponse impl) {
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
                onResult(data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null);
                reply.writeNoException();
                return true;
            } else if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                onRequestContinued();
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
                onError(data.readInt(), data.readString());
                reply.writeNoException();
                return true;
            }
        }
    }

    void onError(int errorCode, String errorMessage) throws RemoteException;

    void onRequestContinued() throws RemoteException;

    void onResult(Bundle value) throws RemoteException;
}
