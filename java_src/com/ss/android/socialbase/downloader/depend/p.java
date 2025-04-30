package com.ss.android.socialbase.downloader.depend;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.ss.android.socialbase.downloader.depend.o;
/* compiled from: IDownloadDiskSpaceAidlHandler.java */
/* loaded from: classes4.dex */
public interface p extends IInterface {
    boolean a(long j4, long j5, o oVar) throws RemoteException;

    /* compiled from: IDownloadDiskSpaceAidlHandler.java */
    /* loaded from: classes4.dex */
    public static abstract class a extends Binder implements p {

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IDownloadDiskSpaceAidlHandler.java */
        /* renamed from: com.ss.android.socialbase.downloader.depend.p$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static class C0323a implements p {

            /* renamed from: a  reason: collision with root package name */
            public static p f57923a;

            /* renamed from: b  reason: collision with root package name */
            private IBinder f57924b;

            C0323a(IBinder iBinder) {
                this.f57924b = iBinder;
            }

            @Override // com.ss.android.socialbase.downloader.depend.p
            public boolean a(long j4, long j5, o oVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlHandler");
                    obtain.writeLong(j4);
                    obtain.writeLong(j5);
                    obtain.writeStrongBinder(oVar != null ? oVar.asBinder() : null);
                    if (!this.f57924b.transact(1, obtain, obtain2, 0) && a.a() != null) {
                        return a.a().a(j4, j5, oVar);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f57924b;
            }
        }

        public a() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlHandler");
        }

        public static p a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlHandler");
            if (queryLocalInterface != null && (queryLocalInterface instanceof p)) {
                return (p) queryLocalInterface;
            }
            return new C0323a(iBinder);
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
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlHandler");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlHandler");
            boolean a4 = a(parcel.readLong(), parcel.readLong(), o.a.a(parcel.readStrongBinder()));
            parcel2.writeNoException();
            parcel2.writeInt(a4 ? 1 : 0);
            return true;
        }

        public static p a() {
            return C0323a.f57923a;
        }
    }
}
