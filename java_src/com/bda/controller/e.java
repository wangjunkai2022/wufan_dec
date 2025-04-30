package com.bda.controller;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: IControllerMonitor.java */
/* loaded from: classes2.dex */
public interface e extends IInterface {

    /* compiled from: IControllerMonitor.java */
    /* loaded from: classes2.dex */
    public static abstract class a extends Binder implements e {
        private static final String DESCRIPTOR = "com.bda.controller.IControllerMonitor";
        static final int TRANSACTION_onLog = 1;

        /* compiled from: IControllerMonitor.java */
        /* renamed from: com.bda.controller.e$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0031a implements e {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f10033a;

            C0031a(IBinder iBinder) {
                this.f10033a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f10033a;
            }

            public String m() {
                return a.DESCRIPTOR;
            }

            @Override // com.bda.controller.e
            public void onLog(int i2, int i4, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.DESCRIPTOR);
                    obtain.writeInt(i2);
                    obtain.writeInt(i4);
                    obtain.writeString(str);
                    this.f10033a.transact(1, obtain, obtain2, 0);
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

        public static e asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof e)) {
                return (e) queryLocalInterface;
            }
            return new C0031a(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i4) throws RemoteException {
            if (i2 != 1) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i4);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            onLog(parcel.readInt(), parcel.readInt(), parcel.readString());
            parcel2.writeNoException();
            return true;
        }
    }

    void onLog(int i2, int i4, String str) throws RemoteException;
}
