package com.ss.android.socialbase.downloader.depend;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: IChunkCntAidlCalculator.java */
/* loaded from: classes4.dex */
public interface e extends IInterface {
    int a(long j4) throws RemoteException;

    /* compiled from: IChunkCntAidlCalculator.java */
    /* loaded from: classes4.dex */
    public static abstract class a extends Binder implements e {

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IChunkCntAidlCalculator.java */
        /* renamed from: com.ss.android.socialbase.downloader.depend.e$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static class C0315a implements e {

            /* renamed from: a  reason: collision with root package name */
            public static e f57907a;

            /* renamed from: b  reason: collision with root package name */
            private IBinder f57908b;

            C0315a(IBinder iBinder) {
                this.f57908b = iBinder;
            }

            @Override // com.ss.android.socialbase.downloader.depend.e
            public int a(long j4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IChunkCntAidlCalculator");
                    obtain.writeLong(j4);
                    if (!this.f57908b.transact(1, obtain, obtain2, 0) && a.a() != null) {
                        return a.a().a(j4);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f57908b;
            }
        }

        public a() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.IChunkCntAidlCalculator");
        }

        public static e a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.IChunkCntAidlCalculator");
            if (queryLocalInterface != null && (queryLocalInterface instanceof e)) {
                return (e) queryLocalInterface;
            }
            return new C0315a(iBinder);
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
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.IChunkCntAidlCalculator");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IChunkCntAidlCalculator");
            int a4 = a(parcel.readLong());
            parcel2.writeNoException();
            parcel2.writeInt(a4);
            return true;
        }

        public static e a() {
            return C0315a.f57907a;
        }
    }
}
