package com.bda.controller;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: IControllerListener.java */
/* loaded from: classes2.dex */
public interface d extends IInterface {

    /* compiled from: IControllerListener.java */
    /* loaded from: classes2.dex */
    public static abstract class a extends Binder implements d {
        private static final String DESCRIPTOR = "com.bda.controller.IControllerListener";
        static final int TRANSACTION_onKeyEvent = 1;
        static final int TRANSACTION_onMotionEvent = 2;
        static final int TRANSACTION_onStateEvent = 3;

        /* compiled from: IControllerListener.java */
        /* renamed from: com.bda.controller.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0030a implements d {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f10032a;

            C0030a(IBinder iBinder) {
                this.f10032a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f10032a;
            }

            public String m() {
                return a.DESCRIPTOR;
            }

            @Override // com.bda.controller.d
            public void onKeyEvent(KeyEvent keyEvent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.DESCRIPTOR);
                    if (keyEvent != null) {
                        obtain.writeInt(1);
                        keyEvent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f10032a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bda.controller.d
            public void onMotionEvent(MotionEvent motionEvent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.DESCRIPTOR);
                    if (motionEvent != null) {
                        obtain.writeInt(1);
                        motionEvent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f10032a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bda.controller.d
            public void onStateEvent(StateEvent stateEvent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.DESCRIPTOR);
                    if (stateEvent != null) {
                        obtain.writeInt(1);
                        stateEvent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f10032a.transact(3, obtain, obtain2, 0);
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

        public static d asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof d)) {
                return (d) queryLocalInterface;
            }
            return new C0030a(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i4) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onKeyEvent(parcel.readInt() != 0 ? KeyEvent.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            } else if (i2 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onMotionEvent(parcel.readInt() != 0 ? MotionEvent.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            } else if (i2 != 3) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i4);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            } else {
                parcel.enforceInterface(DESCRIPTOR);
                onStateEvent(parcel.readInt() != 0 ? StateEvent.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            }
        }
    }

    void onKeyEvent(KeyEvent keyEvent) throws RemoteException;

    void onMotionEvent(MotionEvent motionEvent) throws RemoteException;

    void onStateEvent(StateEvent stateEvent) throws RemoteException;
}
