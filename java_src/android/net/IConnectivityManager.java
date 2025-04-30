package android.net;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes.dex */
public interface IConnectivityManager extends IInterface {

    /* loaded from: classes.dex */
    public static class Default implements IConnectivityManager {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.net.IConnectivityManager
        public LinkProperties getActiveLinkProperties() throws RemoteException {
            return null;
        }

        @Override // android.net.IConnectivityManager
        public NetworkInfo getActiveNetworkInfo() throws RemoteException {
            return null;
        }

        @Override // android.net.IConnectivityManager
        public NetworkInfo getActiveNetworkInfoForUid(int uid, boolean ignoreBlocked) throws RemoteException {
            return null;
        }

        @Override // android.net.IConnectivityManager
        public NetworkInfo[] getAllNetworkInfo() throws RemoteException {
            return null;
        }

        @Override // android.net.IConnectivityManager
        public LinkProperties getLinkProperties(int networkType) throws RemoteException {
            return null;
        }

        @Override // android.net.IConnectivityManager
        public NetworkInfo getNetworkInfo(int networkType) throws RemoteException {
            return null;
        }

        @Override // android.net.IConnectivityManager
        public boolean isActiveNetworkMetered() throws RemoteException {
            return false;
        }

        @Override // android.net.IConnectivityManager
        public boolean requestRouteToHostAddress(int networkType, int address) throws RemoteException {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IConnectivityManager {
        private static final String DESCRIPTOR = "android.net.IConnectivityManager";
        static final int TRANSACTION_getActiveLinkProperties = 7;
        static final int TRANSACTION_getActiveNetworkInfo = 1;
        static final int TRANSACTION_getActiveNetworkInfoForUid = 2;
        static final int TRANSACTION_getAllNetworkInfo = 4;
        static final int TRANSACTION_getLinkProperties = 8;
        static final int TRANSACTION_getNetworkInfo = 3;
        static final int TRANSACTION_isActiveNetworkMetered = 5;
        static final int TRANSACTION_requestRouteToHostAddress = 6;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class Proxy implements IConnectivityManager {
            public static IConnectivityManager sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.net.IConnectivityManager
            public LinkProperties getActiveLinkProperties() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(7, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getActiveLinkProperties();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (LinkProperties) LinkProperties.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.net.IConnectivityManager
            public NetworkInfo getActiveNetworkInfo() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getActiveNetworkInfo();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (NetworkInfo) NetworkInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.net.IConnectivityManager
            public NetworkInfo getActiveNetworkInfoForUid(int uid, boolean ignoreBlocked) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(uid);
                    obtain.writeInt(ignoreBlocked ? 1 : 0);
                    if (!this.mRemote.transact(2, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getActiveNetworkInfoForUid(uid, ignoreBlocked);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (NetworkInfo) NetworkInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.net.IConnectivityManager
            public NetworkInfo[] getAllNetworkInfo() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(4, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAllNetworkInfo();
                    }
                    obtain2.readException();
                    return (NetworkInfo[]) obtain2.createTypedArray(NetworkInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.net.IConnectivityManager
            public LinkProperties getLinkProperties(int networkType) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(networkType);
                    if (!this.mRemote.transact(8, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getLinkProperties(networkType);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (LinkProperties) LinkProperties.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.net.IConnectivityManager
            public NetworkInfo getNetworkInfo(int networkType) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(networkType);
                    if (!this.mRemote.transact(3, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getNetworkInfo(networkType);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (NetworkInfo) NetworkInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.net.IConnectivityManager
            public boolean isActiveNetworkMetered() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(5, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isActiveNetworkMetered();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.net.IConnectivityManager
            public boolean requestRouteToHostAddress(int networkType, int address) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(networkType);
                    obtain.writeInt(address);
                    if (!this.mRemote.transact(6, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().requestRouteToHostAddress(networkType, address);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IConnectivityManager asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IConnectivityManager)) {
                return (IConnectivityManager) queryLocalInterface;
            }
            return new Proxy(obj);
        }

        public static IConnectivityManager getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IConnectivityManager impl) {
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
                        NetworkInfo activeNetworkInfo = getActiveNetworkInfo();
                        reply.writeNoException();
                        if (activeNetworkInfo != null) {
                            reply.writeInt(1);
                            activeNetworkInfo.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 2:
                        data.enforceInterface(DESCRIPTOR);
                        NetworkInfo activeNetworkInfoForUid = getActiveNetworkInfoForUid(data.readInt(), data.readInt() != 0);
                        reply.writeNoException();
                        if (activeNetworkInfoForUid != null) {
                            reply.writeInt(1);
                            activeNetworkInfoForUid.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 3:
                        data.enforceInterface(DESCRIPTOR);
                        NetworkInfo networkInfo = getNetworkInfo(data.readInt());
                        reply.writeNoException();
                        if (networkInfo != null) {
                            reply.writeInt(1);
                            networkInfo.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 4:
                        data.enforceInterface(DESCRIPTOR);
                        NetworkInfo[] allNetworkInfo = getAllNetworkInfo();
                        reply.writeNoException();
                        reply.writeTypedArray(allNetworkInfo, 1);
                        return true;
                    case 5:
                        data.enforceInterface(DESCRIPTOR);
                        boolean isActiveNetworkMetered = isActiveNetworkMetered();
                        reply.writeNoException();
                        reply.writeInt(isActiveNetworkMetered ? 1 : 0);
                        return true;
                    case 6:
                        data.enforceInterface(DESCRIPTOR);
                        boolean requestRouteToHostAddress = requestRouteToHostAddress(data.readInt(), data.readInt());
                        reply.writeNoException();
                        reply.writeInt(requestRouteToHostAddress ? 1 : 0);
                        return true;
                    case 7:
                        data.enforceInterface(DESCRIPTOR);
                        LinkProperties activeLinkProperties = getActiveLinkProperties();
                        reply.writeNoException();
                        if (activeLinkProperties != null) {
                            reply.writeInt(1);
                            activeLinkProperties.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 8:
                        data.enforceInterface(DESCRIPTOR);
                        LinkProperties linkProperties = getLinkProperties(data.readInt());
                        reply.writeNoException();
                        if (linkProperties != null) {
                            reply.writeInt(1);
                            linkProperties.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    default:
                        return super.onTransact(code, data, reply, flags);
                }
            }
            reply.writeString(DESCRIPTOR);
            return true;
        }
    }

    LinkProperties getActiveLinkProperties() throws RemoteException;

    NetworkInfo getActiveNetworkInfo() throws RemoteException;

    NetworkInfo getActiveNetworkInfoForUid(int uid, boolean ignoreBlocked) throws RemoteException;

    NetworkInfo[] getAllNetworkInfo() throws RemoteException;

    LinkProperties getLinkProperties(int networkType) throws RemoteException;

    NetworkInfo getNetworkInfo(int networkType) throws RemoteException;

    boolean isActiveNetworkMetered() throws RemoteException;

    boolean requestRouteToHostAddress(int networkType, int address) throws RemoteException;
}
