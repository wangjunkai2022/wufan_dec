package com.ss.android.socialbase.downloader.depend;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: IRetryDelayTimeAidlCalculator.java */
/* loaded from: classes4.dex */
public interface ah extends IInterface {
    long a(int i2, int i4) throws RemoteException;

    /* compiled from: IRetryDelayTimeAidlCalculator.java */
    /* loaded from: classes4.dex */
    public static abstract class a extends Binder implements ah {

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IRetryDelayTimeAidlCalculator.java */
        /* renamed from: com.ss.android.socialbase.downloader.depend.ah$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static class C0313a implements ah {

            /* renamed from: a  reason: collision with root package name */
            public static ah f57902a;

            /* renamed from: b  reason: collision with root package name */
            private IBinder f57903b;

            C0313a(IBinder iBinder) {
                this.f57903b = iBinder;
            }

            @Override // com.ss.android.socialbase.downloader.depend.ah
            public long a(int i2, int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IRetryDelayTimeAidlCalculator");
                    obtain.writeInt(i2);
                    obtain.writeInt(i4);
                    if (!this.f57903b.transact(1, obtain, obtain2, 0) && a.a() != null) {
                        return a.a().a(i2, i4);
                    }
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f57903b;
            }
        }

        public a() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.IRetryDelayTimeAidlCalculator");
        }

        public static ah a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.IRetryDelayTimeAidlCalculator");
            if (queryLocalInterface != null && (queryLocalInterface instanceof ah)) {
                return (ah) queryLocalInterface;
            }
            return new C0313a(iBinder);
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
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.IRetryDelayTimeAidlCalculator");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IRetryDelayTimeAidlCalculator");
            long a4 = a(parcel.readInt(), parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeLong(a4);
            return true;
        }

        public static ah a() {
            return C0313a.f57902a;
        }
    }
}
