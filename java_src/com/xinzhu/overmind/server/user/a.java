package com.xinzhu.overmind.server.user;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* compiled from: IMindUserManagerService.java */
/* loaded from: classes.dex */
public interface a extends IInterface {

    /* compiled from: IMindUserManagerService.java */
    /* renamed from: com.xinzhu.overmind.server.user.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0435a implements a {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.server.user.a
        public MindUserInfo createUser(int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.user.a
        public void deleteUser(int userId) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.user.a
        public boolean exists(int userId) throws RemoteException {
            return false;
        }

        @Override // com.xinzhu.overmind.server.user.a
        public MindUserInfo getUserInfo(int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.user.a
        public List<MindUserInfo> getUsers() throws RemoteException {
            return null;
        }
    }

    /* compiled from: IMindUserManagerService.java */
    /* loaded from: classes.dex */
    public static abstract class b extends Binder implements a {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.server.user.IMindUserManagerService";
        static final int TRANSACTION_createUser = 3;
        static final int TRANSACTION_deleteUser = 5;
        static final int TRANSACTION_exists = 2;
        static final int TRANSACTION_getUserInfo = 1;
        static final int TRANSACTION_getUsers = 4;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IMindUserManagerService.java */
        /* renamed from: com.xinzhu.overmind.server.user.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static class C0436a implements a {

            /* renamed from: b  reason: collision with root package name */
            public static a f64674b;

            /* renamed from: a  reason: collision with root package name */
            private IBinder f64675a;

            C0436a(IBinder remote) {
                this.f64675a = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f64675a;
            }

            @Override // com.xinzhu.overmind.server.user.a
            public MindUserInfo createUser(int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeInt(userId);
                    if (!this.f64675a.transact(3, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().createUser(userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? MindUserInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.user.a
            public void deleteUser(int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeInt(userId);
                    if (!this.f64675a.transact(5, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().deleteUser(userId);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.user.a
            public boolean exists(int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeInt(userId);
                    if (!this.f64675a.transact(2, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().exists(userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.user.a
            public MindUserInfo getUserInfo(int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeInt(userId);
                    if (!this.f64675a.transact(1, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getUserInfo(userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? MindUserInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.user.a
            public List<MindUserInfo> getUsers() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (!this.f64675a.transact(4, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getUsers();
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(MindUserInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String m() {
                return b.DESCRIPTOR;
            }
        }

        public b() {
            attachInterface(this, DESCRIPTOR);
        }

        public static a asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0436a(obj);
        }

        public static a getDefaultImpl() {
            return C0436a.f64674b;
        }

        public static boolean setDefaultImpl(a impl) {
            if (C0436a.f64674b == null) {
                if (impl != null) {
                    C0436a.f64674b = impl;
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
                MindUserInfo userInfo = getUserInfo(data.readInt());
                reply.writeNoException();
                if (userInfo != null) {
                    reply.writeInt(1);
                    userInfo.writeToParcel(reply, 1);
                } else {
                    reply.writeInt(0);
                }
                return true;
            } else if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                boolean exists = exists(data.readInt());
                reply.writeNoException();
                reply.writeInt(exists ? 1 : 0);
                return true;
            } else if (code == 3) {
                data.enforceInterface(DESCRIPTOR);
                MindUserInfo createUser = createUser(data.readInt());
                reply.writeNoException();
                if (createUser != null) {
                    reply.writeInt(1);
                    createUser.writeToParcel(reply, 1);
                } else {
                    reply.writeInt(0);
                }
                return true;
            } else if (code == 4) {
                data.enforceInterface(DESCRIPTOR);
                List<MindUserInfo> users = getUsers();
                reply.writeNoException();
                reply.writeTypedList(users);
                return true;
            } else if (code != 5) {
                if (code != 1598968902) {
                    return super.onTransact(code, data, reply, flags);
                }
                reply.writeString(DESCRIPTOR);
                return true;
            } else {
                data.enforceInterface(DESCRIPTOR);
                deleteUser(data.readInt());
                reply.writeNoException();
                return true;
            }
        }
    }

    MindUserInfo createUser(int userId) throws RemoteException;

    void deleteUser(int userId) throws RemoteException;

    boolean exists(int userId) throws RemoteException;

    MindUserInfo getUserInfo(int userId) throws RemoteException;

    List<MindUserInfo> getUsers() throws RemoteException;
}
