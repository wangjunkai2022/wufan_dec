package android.accounts;

import android.accounts.IAccountAuthenticatorResponse;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes.dex */
public interface IAccountAuthenticator extends IInterface {

    /* loaded from: classes.dex */
    public static class Default implements IAccountAuthenticator {
        @Override // android.accounts.IAccountAuthenticator
        public void addAccount(IAccountAuthenticatorResponse response, String accountType, String authTokenType, String[] requiredFeatures, Bundle options) throws RemoteException {
        }

        @Override // android.accounts.IAccountAuthenticator
        public void addAccountFromCredentials(IAccountAuthenticatorResponse response, Account account, Bundle accountCredentials) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.accounts.IAccountAuthenticator
        public void confirmCredentials(IAccountAuthenticatorResponse response, Account account, Bundle options) throws RemoteException {
        }

        @Override // android.accounts.IAccountAuthenticator
        public void editProperties(IAccountAuthenticatorResponse response, String accountType) throws RemoteException {
        }

        @Override // android.accounts.IAccountAuthenticator
        public void finishSession(IAccountAuthenticatorResponse response, String accountType, Bundle sessionBundle) throws RemoteException {
        }

        @Override // android.accounts.IAccountAuthenticator
        public void getAccountCredentialsForCloning(IAccountAuthenticatorResponse response, Account account) throws RemoteException {
        }

        @Override // android.accounts.IAccountAuthenticator
        public void getAccountRemovalAllowed(IAccountAuthenticatorResponse response, Account account) throws RemoteException {
        }

        @Override // android.accounts.IAccountAuthenticator
        public void getAuthToken(IAccountAuthenticatorResponse response, Account account, String authTokenType, Bundle options) throws RemoteException {
        }

        @Override // android.accounts.IAccountAuthenticator
        public void getAuthTokenLabel(IAccountAuthenticatorResponse response, String authTokenType) throws RemoteException {
        }

        @Override // android.accounts.IAccountAuthenticator
        public void hasFeatures(IAccountAuthenticatorResponse response, Account account, String[] features) throws RemoteException {
        }

        @Override // android.accounts.IAccountAuthenticator
        public void isCredentialsUpdateSuggested(IAccountAuthenticatorResponse response, Account account, String statusToken) throws RemoteException {
        }

        @Override // android.accounts.IAccountAuthenticator
        public void startAddAccountSession(IAccountAuthenticatorResponse response, String accountType, String authTokenType, String[] requiredFeatures, Bundle options) throws RemoteException {
        }

        @Override // android.accounts.IAccountAuthenticator
        public void startUpdateCredentialsSession(IAccountAuthenticatorResponse response, Account account, String authTokenType, Bundle options) throws RemoteException {
        }

        @Override // android.accounts.IAccountAuthenticator
        public void updateCredentials(IAccountAuthenticatorResponse response, Account account, String authTokenType, Bundle options) throws RemoteException {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IAccountAuthenticator {
        private static final String DESCRIPTOR = "android.accounts.IAccountAuthenticator";
        static final int TRANSACTION_addAccount = 1;
        static final int TRANSACTION_addAccountFromCredentials = 10;
        static final int TRANSACTION_confirmCredentials = 2;
        static final int TRANSACTION_editProperties = 6;
        static final int TRANSACTION_finishSession = 13;
        static final int TRANSACTION_getAccountCredentialsForCloning = 9;
        static final int TRANSACTION_getAccountRemovalAllowed = 8;
        static final int TRANSACTION_getAuthToken = 3;
        static final int TRANSACTION_getAuthTokenLabel = 4;
        static final int TRANSACTION_hasFeatures = 7;
        static final int TRANSACTION_isCredentialsUpdateSuggested = 14;
        static final int TRANSACTION_startAddAccountSession = 11;
        static final int TRANSACTION_startUpdateCredentialsSession = 12;
        static final int TRANSACTION_updateCredentials = 5;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class Proxy implements IAccountAuthenticator {
            public static IAccountAuthenticator sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.accounts.IAccountAuthenticator
            public void addAccount(IAccountAuthenticatorResponse response, String accountType, String authTokenType, String[] requiredFeatures, Bundle options) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    obtain.writeString(accountType);
                    obtain.writeString(authTokenType);
                    obtain.writeStringArray(requiredFeatures);
                    if (options != null) {
                        obtain.writeInt(1);
                        options.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().addAccount(response, accountType, authTokenType, requiredFeatures, options);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.accounts.IAccountAuthenticator
            public void addAccountFromCredentials(IAccountAuthenticatorResponse response, Account account, Bundle accountCredentials) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (accountCredentials != null) {
                        obtain.writeInt(1);
                        accountCredentials.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(10, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().addAccountFromCredentials(response, account, accountCredentials);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.accounts.IAccountAuthenticator
            public void confirmCredentials(IAccountAuthenticatorResponse response, Account account, Bundle options) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (options != null) {
                        obtain.writeInt(1);
                        options.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(2, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().confirmCredentials(response, account, options);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.accounts.IAccountAuthenticator
            public void editProperties(IAccountAuthenticatorResponse response, String accountType) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    obtain.writeString(accountType);
                    if (!this.mRemote.transact(6, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().editProperties(response, accountType);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.accounts.IAccountAuthenticator
            public void finishSession(IAccountAuthenticatorResponse response, String accountType, Bundle sessionBundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    obtain.writeString(accountType);
                    if (sessionBundle != null) {
                        obtain.writeInt(1);
                        sessionBundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(13, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().finishSession(response, accountType, sessionBundle);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.accounts.IAccountAuthenticator
            public void getAccountCredentialsForCloning(IAccountAuthenticatorResponse response, Account account) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(9, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().getAccountCredentialsForCloning(response, account);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.accounts.IAccountAuthenticator
            public void getAccountRemovalAllowed(IAccountAuthenticatorResponse response, Account account) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(8, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().getAccountRemovalAllowed(response, account);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.accounts.IAccountAuthenticator
            public void getAuthToken(IAccountAuthenticatorResponse response, Account account, String authTokenType, Bundle options) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(authTokenType);
                    if (options != null) {
                        obtain.writeInt(1);
                        options.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(3, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().getAuthToken(response, account, authTokenType, options);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.accounts.IAccountAuthenticator
            public void getAuthTokenLabel(IAccountAuthenticatorResponse response, String authTokenType) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    obtain.writeString(authTokenType);
                    if (!this.mRemote.transact(4, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().getAuthTokenLabel(response, authTokenType);
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

            @Override // android.accounts.IAccountAuthenticator
            public void hasFeatures(IAccountAuthenticatorResponse response, Account account, String[] features) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStringArray(features);
                    if (!this.mRemote.transact(7, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().hasFeatures(response, account, features);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.accounts.IAccountAuthenticator
            public void isCredentialsUpdateSuggested(IAccountAuthenticatorResponse response, Account account, String statusToken) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(statusToken);
                    if (!this.mRemote.transact(14, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().isCredentialsUpdateSuggested(response, account, statusToken);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.accounts.IAccountAuthenticator
            public void startAddAccountSession(IAccountAuthenticatorResponse response, String accountType, String authTokenType, String[] requiredFeatures, Bundle options) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    obtain.writeString(accountType);
                    obtain.writeString(authTokenType);
                    obtain.writeStringArray(requiredFeatures);
                    if (options != null) {
                        obtain.writeInt(1);
                        options.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(11, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().startAddAccountSession(response, accountType, authTokenType, requiredFeatures, options);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.accounts.IAccountAuthenticator
            public void startUpdateCredentialsSession(IAccountAuthenticatorResponse response, Account account, String authTokenType, Bundle options) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(authTokenType);
                    if (options != null) {
                        obtain.writeInt(1);
                        options.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(12, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().startUpdateCredentialsSession(response, account, authTokenType, options);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.accounts.IAccountAuthenticator
            public void updateCredentials(IAccountAuthenticatorResponse response, Account account, String authTokenType, Bundle options) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(authTokenType);
                    if (options != null) {
                        obtain.writeInt(1);
                        options.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(5, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().updateCredentials(response, account, authTokenType, options);
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

        public static IAccountAuthenticator asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IAccountAuthenticator)) {
                return (IAccountAuthenticator) queryLocalInterface;
            }
            return new Proxy(obj);
        }

        public static IAccountAuthenticator getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IAccountAuthenticator impl) {
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
            if (code != 1598968902) {
                switch (code) {
                    case 1:
                        data.enforceInterface(DESCRIPTOR);
                        addAccount(IAccountAuthenticatorResponse.Stub.asInterface(data.readStrongBinder()), data.readString(), data.readString(), data.createStringArray(), data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        return true;
                    case 2:
                        data.enforceInterface(DESCRIPTOR);
                        confirmCredentials(IAccountAuthenticatorResponse.Stub.asInterface(data.readStrongBinder()), data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        return true;
                    case 3:
                        data.enforceInterface(DESCRIPTOR);
                        getAuthToken(IAccountAuthenticatorResponse.Stub.asInterface(data.readStrongBinder()), data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readString(), data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        return true;
                    case 4:
                        data.enforceInterface(DESCRIPTOR);
                        getAuthTokenLabel(IAccountAuthenticatorResponse.Stub.asInterface(data.readStrongBinder()), data.readString());
                        reply.writeNoException();
                        return true;
                    case 5:
                        data.enforceInterface(DESCRIPTOR);
                        updateCredentials(IAccountAuthenticatorResponse.Stub.asInterface(data.readStrongBinder()), data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readString(), data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        return true;
                    case 6:
                        data.enforceInterface(DESCRIPTOR);
                        editProperties(IAccountAuthenticatorResponse.Stub.asInterface(data.readStrongBinder()), data.readString());
                        reply.writeNoException();
                        return true;
                    case 7:
                        data.enforceInterface(DESCRIPTOR);
                        hasFeatures(IAccountAuthenticatorResponse.Stub.asInterface(data.readStrongBinder()), data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.createStringArray());
                        reply.writeNoException();
                        return true;
                    case 8:
                        data.enforceInterface(DESCRIPTOR);
                        getAccountRemovalAllowed(IAccountAuthenticatorResponse.Stub.asInterface(data.readStrongBinder()), data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        return true;
                    case 9:
                        data.enforceInterface(DESCRIPTOR);
                        getAccountCredentialsForCloning(IAccountAuthenticatorResponse.Stub.asInterface(data.readStrongBinder()), data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        return true;
                    case 10:
                        data.enforceInterface(DESCRIPTOR);
                        addAccountFromCredentials(IAccountAuthenticatorResponse.Stub.asInterface(data.readStrongBinder()), data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        return true;
                    case 11:
                        data.enforceInterface(DESCRIPTOR);
                        startAddAccountSession(IAccountAuthenticatorResponse.Stub.asInterface(data.readStrongBinder()), data.readString(), data.readString(), data.createStringArray(), data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        return true;
                    case 12:
                        data.enforceInterface(DESCRIPTOR);
                        startUpdateCredentialsSession(IAccountAuthenticatorResponse.Stub.asInterface(data.readStrongBinder()), data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readString(), data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        return true;
                    case 13:
                        data.enforceInterface(DESCRIPTOR);
                        finishSession(IAccountAuthenticatorResponse.Stub.asInterface(data.readStrongBinder()), data.readString(), data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        return true;
                    case 14:
                        data.enforceInterface(DESCRIPTOR);
                        isCredentialsUpdateSuggested(IAccountAuthenticatorResponse.Stub.asInterface(data.readStrongBinder()), data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readString());
                        reply.writeNoException();
                        return true;
                    default:
                        return super.onTransact(code, data, reply, flags);
                }
            }
            reply.writeString(DESCRIPTOR);
            return true;
        }
    }

    void addAccount(IAccountAuthenticatorResponse response, String accountType, String authTokenType, String[] requiredFeatures, Bundle options) throws RemoteException;

    void addAccountFromCredentials(IAccountAuthenticatorResponse response, Account account, Bundle accountCredentials) throws RemoteException;

    void confirmCredentials(IAccountAuthenticatorResponse response, Account account, Bundle options) throws RemoteException;

    void editProperties(IAccountAuthenticatorResponse response, String accountType) throws RemoteException;

    void finishSession(IAccountAuthenticatorResponse response, String accountType, Bundle sessionBundle) throws RemoteException;

    void getAccountCredentialsForCloning(IAccountAuthenticatorResponse response, Account account) throws RemoteException;

    void getAccountRemovalAllowed(IAccountAuthenticatorResponse response, Account account) throws RemoteException;

    void getAuthToken(IAccountAuthenticatorResponse response, Account account, String authTokenType, Bundle options) throws RemoteException;

    void getAuthTokenLabel(IAccountAuthenticatorResponse response, String authTokenType) throws RemoteException;

    void hasFeatures(IAccountAuthenticatorResponse response, Account account, String[] features) throws RemoteException;

    void isCredentialsUpdateSuggested(IAccountAuthenticatorResponse response, Account account, String statusToken) throws RemoteException;

    void startAddAccountSession(IAccountAuthenticatorResponse response, String accountType, String authTokenType, String[] requiredFeatures, Bundle options) throws RemoteException;

    void startUpdateCredentialsSession(IAccountAuthenticatorResponse response, Account account, String authTokenType, Bundle options) throws RemoteException;

    void updateCredentials(IAccountAuthenticatorResponse response, Account account, String authTokenType, Bundle options) throws RemoteException;
}
