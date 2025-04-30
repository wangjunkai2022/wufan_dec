package com.ss.android.socialbase.downloader.depend;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.ss.android.socialbase.downloader.depend.t;
/* compiled from: IDownloadForbiddenAidlHandler.java */
/* loaded from: classes4.dex */
public interface u extends IInterface {
    boolean a(t tVar) throws RemoteException;

    /* compiled from: IDownloadForbiddenAidlHandler.java */
    /* loaded from: classes4.dex */
    public static abstract class a extends Binder implements u {

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IDownloadForbiddenAidlHandler.java */
        /* renamed from: com.ss.android.socialbase.downloader.depend.u$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static class C0325a implements u {

            /* renamed from: a  reason: collision with root package name */
            public static u f57927a;

            /* renamed from: b  reason: collision with root package name */
            private IBinder f57928b;

            C0325a(IBinder iBinder) {
                this.f57928b = iBinder;
            }

            @Override // com.ss.android.socialbase.downloader.depend.u
            public boolean a(t tVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlHandler");
                    obtain.writeStrongBinder(tVar != null ? tVar.asBinder() : null);
                    if (!this.f57928b.transact(1, obtain, obtain2, 0) && a.a() != null) {
                        return a.a().a(tVar);
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
                return this.f57928b;
            }
        }

        public a() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlHandler");
        }

        public static u a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlHandler");
            if (queryLocalInterface != null && (queryLocalInterface instanceof u)) {
                return (u) queryLocalInterface;
            }
            return new C0325a(iBinder);
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
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlHandler");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlHandler");
            boolean a4 = a(t.a.a(parcel.readStrongBinder()));
            parcel2.writeNoException();
            parcel2.writeInt(a4 ? 1 : 0);
            return true;
        }

        public static u a() {
            return C0325a.f57927a;
        }
    }
}
