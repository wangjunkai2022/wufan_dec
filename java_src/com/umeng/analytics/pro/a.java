package com.umeng.analytics.pro;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: IDeviceIdService.java */
/* loaded from: classes4.dex */
public interface a extends IInterface {
    String a() throws RemoteException;

    String a(String str) throws RemoteException;

    String b(String str) throws RemoteException;

    /* compiled from: IDeviceIdService.java */
    /* renamed from: com.umeng.analytics.pro.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static abstract class AbstractBinderC0347a extends Binder implements a {

        /* renamed from: a  reason: collision with root package name */
        static final int f60380a = 1;

        /* renamed from: b  reason: collision with root package name */
        static final int f60381b = 2;

        /* renamed from: c  reason: collision with root package name */
        static final int f60382c = 3;

        /* renamed from: d  reason: collision with root package name */
        private static final String f60383d = "com.samsung.android.deviceidservice.IDeviceIdService";

        public AbstractBinderC0347a() {
            attachInterface(this, f60383d);
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(f60383d);
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0348a(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i4) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface(f60383d);
                String a4 = a();
                parcel2.writeNoException();
                parcel2.writeString(a4);
                return true;
            } else if (i2 == 2) {
                parcel.enforceInterface(f60383d);
                String a5 = a(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(a5);
                return true;
            } else if (i2 != 3) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i4);
                }
                parcel2.writeString(f60383d);
                return true;
            } else {
                parcel.enforceInterface(f60383d);
                String b4 = b(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(b4);
                return true;
            }
        }

        /* compiled from: IDeviceIdService.java */
        /* renamed from: com.umeng.analytics.pro.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        private static class C0348a implements a {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f60384a;

            C0348a(IBinder iBinder) {
                this.f60384a = iBinder;
            }

            @Override // com.umeng.analytics.pro.a
            public String a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0347a.f60383d);
                    this.f60384a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f60384a;
            }

            public String b() {
                return AbstractBinderC0347a.f60383d;
            }

            @Override // com.umeng.analytics.pro.a
            public String b(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0347a.f60383d);
                    obtain.writeString(str);
                    this.f60384a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.umeng.analytics.pro.a
            public String a(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0347a.f60383d);
                    obtain.writeString(str);
                    this.f60384a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
