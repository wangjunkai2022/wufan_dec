package com.bda.controller;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.bda.controller.d;
import com.bda.controller.e;
/* compiled from: IControllerService.java */
/* loaded from: classes2.dex */
public interface f extends IInterface {

    /* compiled from: IControllerService.java */
    /* loaded from: classes2.dex */
    public static abstract class a extends Binder implements f {
        private static final String DESCRIPTOR = "com.bda.controller.IControllerService";
        static final int TRANSACTION_allowNewConnections = 12;
        static final int TRANSACTION_disallowNewConnections = 13;
        static final int TRANSACTION_getAxisValue = 7;
        static final int TRANSACTION_getInfo = 5;
        static final int TRANSACTION_getKeyCode = 6;
        static final int TRANSACTION_getKeyCode2 = 11;
        static final int TRANSACTION_getState = 8;
        static final int TRANSACTION_isAllowingNewConnections = 14;
        static final int TRANSACTION_registerListener = 1;
        static final int TRANSACTION_registerListener2 = 10;
        static final int TRANSACTION_registerMonitor = 3;
        static final int TRANSACTION_sendMessage = 9;
        static final int TRANSACTION_unregisterListener = 2;
        static final int TRANSACTION_unregisterMonitor = 4;

        /* compiled from: IControllerService.java */
        /* renamed from: com.bda.controller.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0032a implements f {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f10034a;

            C0032a(IBinder iBinder) {
                this.f10034a = iBinder;
            }

            @Override // com.bda.controller.f
            public int A(int i2, int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.DESCRIPTOR);
                    obtain.writeInt(i2);
                    obtain.writeInt(i4);
                    this.f10034a.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bda.controller.f
            public void B(d dVar, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.DESCRIPTOR);
                    obtain.writeStrongBinder(dVar != null ? dVar.asBinder() : null);
                    obtain.writeInt(i2);
                    this.f10034a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bda.controller.f
            public void C(e eVar, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.DESCRIPTOR);
                    obtain.writeStrongBinder(eVar != null ? eVar.asBinder() : null);
                    obtain.writeInt(i2);
                    this.f10034a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bda.controller.f
            public int D(int i2, int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.DESCRIPTOR);
                    obtain.writeInt(i2);
                    obtain.writeInt(i4);
                    this.f10034a.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bda.controller.f
            public boolean E() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.DESCRIPTOR);
                    this.f10034a.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bda.controller.f
            public void F() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.DESCRIPTOR);
                    this.f10034a.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bda.controller.f
            public void G(d dVar, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.DESCRIPTOR);
                    obtain.writeStrongBinder(dVar != null ? dVar.asBinder() : null);
                    obtain.writeInt(i2);
                    this.f10034a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f10034a;
            }

            public String m() {
                return a.DESCRIPTOR;
            }

            @Override // com.bda.controller.f
            public int t(int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.DESCRIPTOR);
                    obtain.writeInt(i2);
                    this.f10034a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bda.controller.f
            public int u(int i2, int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.DESCRIPTOR);
                    obtain.writeInt(i2);
                    obtain.writeInt(i4);
                    this.f10034a.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bda.controller.f
            public void v() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.DESCRIPTOR);
                    this.f10034a.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bda.controller.f
            public void w(d dVar, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.DESCRIPTOR);
                    obtain.writeStrongBinder(dVar != null ? dVar.asBinder() : null);
                    obtain.writeInt(i2);
                    this.f10034a.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bda.controller.f
            public void x(int i2, int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.DESCRIPTOR);
                    obtain.writeInt(i2);
                    obtain.writeInt(i4);
                    this.f10034a.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bda.controller.f
            public float y(int i2, int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.DESCRIPTOR);
                    obtain.writeInt(i2);
                    obtain.writeInt(i4);
                    this.f10034a.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readFloat();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bda.controller.f
            public void z(e eVar, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.DESCRIPTOR);
                    obtain.writeStrongBinder(eVar != null ? eVar.asBinder() : null);
                    obtain.writeInt(i2);
                    this.f10034a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, DESCRIPTOR);
        }

        public static f asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof f)) {
                return (f) queryLocalInterface;
            }
            return new C0032a(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i4) throws RemoteException {
            if (i2 != 1598968902) {
                switch (i2) {
                    case 1:
                        parcel.enforceInterface(DESCRIPTOR);
                        G(d.a.asInterface(parcel.readStrongBinder()), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 2:
                        parcel.enforceInterface(DESCRIPTOR);
                        B(d.a.asInterface(parcel.readStrongBinder()), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 3:
                        parcel.enforceInterface(DESCRIPTOR);
                        C(e.a.asInterface(parcel.readStrongBinder()), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 4:
                        parcel.enforceInterface(DESCRIPTOR);
                        z(e.a.asInterface(parcel.readStrongBinder()), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 5:
                        parcel.enforceInterface(DESCRIPTOR);
                        int t3 = t(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(t3);
                        return true;
                    case 6:
                        parcel.enforceInterface(DESCRIPTOR);
                        int A = A(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(A);
                        return true;
                    case 7:
                        parcel.enforceInterface(DESCRIPTOR);
                        float y3 = y(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeFloat(y3);
                        return true;
                    case 8:
                        parcel.enforceInterface(DESCRIPTOR);
                        int u3 = u(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(u3);
                        return true;
                    case 9:
                        parcel.enforceInterface(DESCRIPTOR);
                        x(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 10:
                        parcel.enforceInterface(DESCRIPTOR);
                        w(d.a.asInterface(parcel.readStrongBinder()), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 11:
                        parcel.enforceInterface(DESCRIPTOR);
                        int D = D(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(D);
                        return true;
                    case 12:
                        parcel.enforceInterface(DESCRIPTOR);
                        F();
                        parcel2.writeNoException();
                        return true;
                    case 13:
                        parcel.enforceInterface(DESCRIPTOR);
                        v();
                        parcel2.writeNoException();
                        return true;
                    case 14:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean E = E();
                        parcel2.writeNoException();
                        parcel2.writeInt(E ? 1 : 0);
                        return true;
                    default:
                        return super.onTransact(i2, parcel, parcel2, i4);
                }
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    int A(int i2, int i4) throws RemoteException;

    void B(d dVar, int i2) throws RemoteException;

    void C(e eVar, int i2) throws RemoteException;

    int D(int i2, int i4) throws RemoteException;

    boolean E() throws RemoteException;

    void F() throws RemoteException;

    void G(d dVar, int i2) throws RemoteException;

    int t(int i2) throws RemoteException;

    int u(int i2, int i4) throws RemoteException;

    void v() throws RemoteException;

    void w(d dVar, int i2) throws RemoteException;

    void x(int i2, int i4) throws RemoteException;

    float y(int i2, int i4) throws RemoteException;

    void z(e eVar, int i2) throws RemoteException;
}
