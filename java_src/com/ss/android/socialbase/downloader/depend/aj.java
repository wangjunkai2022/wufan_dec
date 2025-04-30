package com.ss.android.socialbase.downloader.depend;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: ProcessAidlCallback.java */
/* loaded from: classes4.dex */
public interface aj extends IInterface {
    void a(int i2, int i4) throws RemoteException;

    /* compiled from: ProcessAidlCallback.java */
    /* loaded from: classes4.dex */
    public static abstract class a extends Binder implements aj {

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: ProcessAidlCallback.java */
        /* renamed from: com.ss.android.socialbase.downloader.depend.aj$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static class C0314a implements aj {

            /* renamed from: a  reason: collision with root package name */
            public static aj f57904a;

            /* renamed from: b  reason: collision with root package name */
            private IBinder f57905b;

            C0314a(IBinder iBinder) {
                this.f57905b = iBinder;
            }

            @Override // com.ss.android.socialbase.downloader.depend.aj
            public void a(int i2, int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.ProcessAidlCallback");
                    obtain.writeInt(i2);
                    obtain.writeInt(i4);
                    if (!this.f57905b.transact(1, obtain, obtain2, 0) && a.a() != null) {
                        a.a().a(i2, i4);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f57905b;
            }
        }

        public a() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.ProcessAidlCallback");
        }

        public static aj a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.ProcessAidlCallback");
            if (queryLocalInterface != null && (queryLocalInterface instanceof aj)) {
                return (aj) queryLocalInterface;
            }
            return new C0314a(iBinder);
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
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.ProcessAidlCallback");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.ProcessAidlCallback");
            a(parcel.readInt(), parcel.readInt());
            parcel2.writeNoException();
            return true;
        }

        public static aj a() {
            return C0314a.f57904a;
        }
    }
}
