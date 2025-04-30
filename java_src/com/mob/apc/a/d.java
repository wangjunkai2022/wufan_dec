package com.mob.apc.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes4.dex */
public abstract class d extends Binder implements IInterface {

    /* loaded from: classes4.dex */
    private static class a extends d {

        /* renamed from: a  reason: collision with root package name */
        private IBinder f52746a;

        a(IBinder iBinder) {
            this.f52746a = iBinder;
        }

        @Override // com.mob.apc.a.d
        public e a(e eVar) throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.mob.apc.impl.IAidlInterface");
                if (eVar != null) {
                    eVar.a(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.f52746a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return e.a(obtain2);
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // com.mob.apc.a.d, android.os.IInterface
        public IBinder asBinder() {
            return this.f52746a;
        }

        @Override // android.os.Binder, android.os.IBinder
        public String getInterfaceDescriptor() {
            return "com.mob.apc.impl.IAidlInterface";
        }
    }

    public d() {
        attachInterface(this, "com.mob.apc.impl.IAidlInterface");
    }

    public static d a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.mob.apc.impl.IAidlInterface");
        if (queryLocalInterface != null && (queryLocalInterface instanceof d)) {
            return (d) queryLocalInterface;
        }
        return new a(iBinder);
    }

    public abstract e a(e eVar) throws RemoteException;

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
            parcel2.writeString("com.mob.apc.impl.IAidlInterface");
            return true;
        }
        parcel.enforceInterface("com.mob.apc.impl.IAidlInterface");
        e a4 = a(e.a(parcel));
        parcel2.writeNoException();
        if (a4 != null) {
            a4.a(parcel2, 1);
        } else {
            parcel2.writeInt(0);
        }
        return true;
    }
}
