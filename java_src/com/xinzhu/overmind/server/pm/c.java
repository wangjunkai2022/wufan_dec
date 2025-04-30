package com.xinzhu.overmind.server.pm;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: IMindPackageInstallerService.java */
/* loaded from: classes.dex */
public interface c extends IInterface {

    /* compiled from: IMindPackageInstallerService.java */
    /* loaded from: classes3.dex */
    public static class a implements c {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.c
        public int installPackageAsExist(MindPackageSettings file, int userId) throws RemoteException {
            return 0;
        }

        @Override // com.xinzhu.overmind.server.pm.c
        public int installPackageAsUser(MindPackageSettings file, int userId) throws RemoteException {
            return 0;
        }

        @Override // com.xinzhu.overmind.server.pm.c
        public int uninstallPackageAsUser(MindPackageSettings file, boolean removeApp, int userId) throws RemoteException {
            return 0;
        }

        @Override // com.xinzhu.overmind.server.pm.c
        public int updatePackage(MindPackageSettings file) throws RemoteException {
            return 0;
        }
    }

    /* compiled from: IMindPackageInstallerService.java */
    /* loaded from: classes.dex */
    public static abstract class b extends Binder implements c {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.server.pm.IMindPackageInstallerService";
        static final int TRANSACTION_installPackageAsExist = 2;
        static final int TRANSACTION_installPackageAsUser = 1;
        static final int TRANSACTION_uninstallPackageAsUser = 3;
        static final int TRANSACTION_updatePackage = 4;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IMindPackageInstallerService.java */
        /* loaded from: classes3.dex */
        public static class a implements c {

            /* renamed from: b  reason: collision with root package name */
            public static c f64590b;

            /* renamed from: a  reason: collision with root package name */
            private IBinder f64591a;

            a(IBinder remote) {
                this.f64591a = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f64591a;
            }

            @Override // com.xinzhu.overmind.server.pm.c
            public int installPackageAsExist(MindPackageSettings file, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (file != null) {
                        obtain.writeInt(1);
                        file.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(userId);
                    if (!this.f64591a.transact(2, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().installPackageAsExist(file, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.c
            public int installPackageAsUser(MindPackageSettings file, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (file != null) {
                        obtain.writeInt(1);
                        file.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(userId);
                    if (!this.f64591a.transact(1, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().installPackageAsUser(file, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String m() {
                return b.DESCRIPTOR;
            }

            @Override // com.xinzhu.overmind.server.pm.c
            public int uninstallPackageAsUser(MindPackageSettings file, boolean removeApp, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    int i2 = 1;
                    if (file != null) {
                        obtain.writeInt(1);
                        file.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!removeApp) {
                        i2 = 0;
                    }
                    obtain.writeInt(i2);
                    obtain.writeInt(userId);
                    if (!this.f64591a.transact(3, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().uninstallPackageAsUser(file, removeApp, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.c
            public int updatePackage(MindPackageSettings file) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (file != null) {
                        obtain.writeInt(1);
                        file.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f64591a.transact(4, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().updatePackage(file);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public b() {
            attachInterface(this, DESCRIPTOR);
        }

        public static c asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof c)) {
                return (c) queryLocalInterface;
            }
            return new a(obj);
        }

        public static c getDefaultImpl() {
            return a.f64590b;
        }

        public static boolean setDefaultImpl(c impl) {
            if (a.f64590b == null) {
                if (impl != null) {
                    a.f64590b = impl;
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
                int installPackageAsUser = installPackageAsUser(data.readInt() != 0 ? MindPackageSettings.CREATOR.createFromParcel(data) : null, data.readInt());
                reply.writeNoException();
                reply.writeInt(installPackageAsUser);
                return true;
            } else if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                int installPackageAsExist = installPackageAsExist(data.readInt() != 0 ? MindPackageSettings.CREATOR.createFromParcel(data) : null, data.readInt());
                reply.writeNoException();
                reply.writeInt(installPackageAsExist);
                return true;
            } else if (code == 3) {
                data.enforceInterface(DESCRIPTOR);
                int uninstallPackageAsUser = uninstallPackageAsUser(data.readInt() != 0 ? MindPackageSettings.CREATOR.createFromParcel(data) : null, data.readInt() != 0, data.readInt());
                reply.writeNoException();
                reply.writeInt(uninstallPackageAsUser);
                return true;
            } else if (code != 4) {
                if (code != 1598968902) {
                    return super.onTransact(code, data, reply, flags);
                }
                reply.writeString(DESCRIPTOR);
                return true;
            } else {
                data.enforceInterface(DESCRIPTOR);
                int updatePackage = updatePackage(data.readInt() != 0 ? MindPackageSettings.CREATOR.createFromParcel(data) : null);
                reply.writeNoException();
                reply.writeInt(updatePackage);
                return true;
            }
        }
    }

    int installPackageAsExist(MindPackageSettings file, int userId) throws RemoteException;

    int installPackageAsUser(MindPackageSettings file, int userId) throws RemoteException;

    int uninstallPackageAsUser(MindPackageSettings file, boolean removeApp, int userId) throws RemoteException;

    int updatePackage(MindPackageSettings file) throws RemoteException;
}
