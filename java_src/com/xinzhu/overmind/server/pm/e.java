package com.xinzhu.overmind.server.pm;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.xinzhu.overmind.entity.pm.InstalledModule;
import java.util.List;
/* compiled from: IMindXposedManagerService.java */
/* loaded from: classes3.dex */
public interface e extends IInterface {

    /* compiled from: IMindXposedManagerService.java */
    /* loaded from: classes3.dex */
    public static class a implements e {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public boolean f(String packageName) throws RemoteException {
            return false;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public boolean n() throws RemoteException {
            return false;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public List<InstalledModule> o() throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public void p(String packageName, boolean enable) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.pm.e
        public void q(boolean enable) throws RemoteException {
        }
    }

    /* compiled from: IMindXposedManagerService.java */
    /* loaded from: classes3.dex */
    public static abstract class b extends Binder implements e {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.server.pm.IMindXposedManagerService";
        static final int TRANSACTION_getInstalledModules = 5;
        static final int TRANSACTION_isModuleEnable = 3;
        static final int TRANSACTION_isXPEnable = 1;
        static final int TRANSACTION_setModuleEnable = 4;
        static final int TRANSACTION_setXPEnable = 2;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IMindXposedManagerService.java */
        /* loaded from: classes3.dex */
        public static class a implements e {

            /* renamed from: b  reason: collision with root package name */
            public static e f64594b;

            /* renamed from: a  reason: collision with root package name */
            private IBinder f64595a;

            a(IBinder remote) {
                this.f64595a = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f64595a;
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public boolean f(String packageName) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(packageName);
                    if (!this.f64595a.transact(3, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().f(packageName);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String m() {
                return b.DESCRIPTOR;
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public boolean n() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (!this.f64595a.transact(1, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().n();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public List<InstalledModule> o() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (!this.f64595a.transact(5, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().o();
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(InstalledModule.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public void p(String packageName, boolean enable) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(packageName);
                    obtain.writeInt(enable ? 1 : 0);
                    if (!this.f64595a.transact(4, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().p(packageName, enable);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.e
            public void q(boolean enable) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeInt(enable ? 1 : 0);
                    if (!this.f64595a.transact(2, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().q(enable);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public b() {
            attachInterface(this, DESCRIPTOR);
        }

        public static e asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof e)) {
                return (e) queryLocalInterface;
            }
            return new a(obj);
        }

        public static e getDefaultImpl() {
            return a.f64594b;
        }

        public static boolean setDefaultImpl(e impl) {
            if (a.f64594b == null) {
                if (impl != null) {
                    a.f64594b = impl;
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
                boolean n4 = n();
                reply.writeNoException();
                reply.writeInt(n4 ? 1 : 0);
                return true;
            }
            if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                q(data.readInt() != 0);
                reply.writeNoException();
                return true;
            } else if (code == 3) {
                data.enforceInterface(DESCRIPTOR);
                boolean f4 = f(data.readString());
                reply.writeNoException();
                reply.writeInt(f4 ? 1 : 0);
                return true;
            } else if (code == 4) {
                data.enforceInterface(DESCRIPTOR);
                p(data.readString(), data.readInt() != 0);
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
                List<InstalledModule> o3 = o();
                reply.writeNoException();
                reply.writeTypedList(o3);
                return true;
            }
        }
    }

    boolean f(String packageName) throws RemoteException;

    boolean n() throws RemoteException;

    List<InstalledModule> o() throws RemoteException;

    void p(String packageName, boolean enable) throws RemoteException;

    void q(boolean enable) throws RemoteException;
}
