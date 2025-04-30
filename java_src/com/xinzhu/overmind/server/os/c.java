package com.xinzhu.overmind.server.os;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: IMindNotificationManagerService.java */
/* loaded from: classes.dex */
public interface c extends IInterface {

    /* compiled from: IMindNotificationManagerService.java */
    /* loaded from: classes3.dex */
    public static class a implements c {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.server.os.c
        public String solveAddNotification(String pkgName, int userId, int id, String tag) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.os.c
        public void solveCancelAllNotifications(String pkgName, int userId) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.os.c
        public String solveCancelNotification(String pkgName, int userId, int id, String tag) throws RemoteException {
            return null;
        }
    }

    /* compiled from: IMindNotificationManagerService.java */
    /* loaded from: classes.dex */
    public static abstract class b extends Binder implements c {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.server.os.IMindNotificationManagerService";
        static final int TRANSACTION_solveAddNotification = 1;
        static final int TRANSACTION_solveCancelAllNotifications = 3;
        static final int TRANSACTION_solveCancelNotification = 2;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IMindNotificationManagerService.java */
        /* loaded from: classes3.dex */
        public static class a implements c {

            /* renamed from: b  reason: collision with root package name */
            public static c f64504b;

            /* renamed from: a  reason: collision with root package name */
            private IBinder f64505a;

            a(IBinder remote) {
                this.f64505a = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f64505a;
            }

            public String m() {
                return b.DESCRIPTOR;
            }

            @Override // com.xinzhu.overmind.server.os.c
            public String solveAddNotification(String pkgName, int userId, int id, String tag) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(pkgName);
                    obtain.writeInt(userId);
                    obtain.writeInt(id);
                    obtain.writeString(tag);
                    if (!this.f64505a.transact(1, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().solveAddNotification(pkgName, userId, id, tag);
                    }
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.os.c
            public void solveCancelAllNotifications(String pkgName, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(pkgName);
                    obtain.writeInt(userId);
                    if (!this.f64505a.transact(3, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().solveCancelAllNotifications(pkgName, userId);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.os.c
            public String solveCancelNotification(String pkgName, int userId, int id, String tag) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(pkgName);
                    obtain.writeInt(userId);
                    obtain.writeInt(id);
                    obtain.writeString(tag);
                    if (!this.f64505a.transact(2, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().solveCancelNotification(pkgName, userId, id, tag);
                    }
                    obtain2.readException();
                    return obtain2.readString();
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
            return a.f64504b;
        }

        public static boolean setDefaultImpl(c impl) {
            if (a.f64504b == null) {
                if (impl != null) {
                    a.f64504b = impl;
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
                String solveAddNotification = solveAddNotification(data.readString(), data.readInt(), data.readInt(), data.readString());
                reply.writeNoException();
                reply.writeString(solveAddNotification);
                return true;
            } else if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                String solveCancelNotification = solveCancelNotification(data.readString(), data.readInt(), data.readInt(), data.readString());
                reply.writeNoException();
                reply.writeString(solveCancelNotification);
                return true;
            } else if (code != 3) {
                if (code != 1598968902) {
                    return super.onTransact(code, data, reply, flags);
                }
                reply.writeString(DESCRIPTOR);
                return true;
            } else {
                data.enforceInterface(DESCRIPTOR);
                solveCancelAllNotifications(data.readString(), data.readInt());
                reply.writeNoException();
                return true;
            }
        }
    }

    String solveAddNotification(String pkgName, int userId, int id, String tag) throws RemoteException;

    void solveCancelAllNotifications(String pkgName, int userId) throws RemoteException;

    String solveCancelNotification(String pkgName, int userId, int id, String tag) throws RemoteException;
}
