package com.ss.android.socialbase.downloader.depend;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* compiled from: IDownloadForbiddenAidlCallback.java */
/* loaded from: classes4.dex */
public interface t extends IInterface {
    void a(List<String> list) throws RemoteException;

    boolean a() throws RemoteException;

    /* compiled from: IDownloadForbiddenAidlCallback.java */
    /* loaded from: classes4.dex */
    public static abstract class a extends Binder implements t {
        public a() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback");
        }

        public static t a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback");
            if (queryLocalInterface != null && (queryLocalInterface instanceof t)) {
                return (t) queryLocalInterface;
            }
            return new C0324a(iBinder);
        }

        public static t b() {
            return C0324a.f57925a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i4) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback");
                a(parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            } else if (i2 != 2) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i4);
                }
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback");
                return true;
            } else {
                parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback");
                boolean a4 = a();
                parcel2.writeNoException();
                parcel2.writeInt(a4 ? 1 : 0);
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IDownloadForbiddenAidlCallback.java */
        /* renamed from: com.ss.android.socialbase.downloader.depend.t$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static class C0324a implements t {

            /* renamed from: a  reason: collision with root package name */
            public static t f57925a;

            /* renamed from: b  reason: collision with root package name */
            private IBinder f57926b;

            C0324a(IBinder iBinder) {
                this.f57926b = iBinder;
            }

            @Override // com.ss.android.socialbase.downloader.depend.t
            public void a(List<String> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback");
                    obtain.writeStringList(list);
                    if (!this.f57926b.transact(1, obtain, obtain2, 0) && a.b() != null) {
                        a.b().a(list);
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
                return this.f57926b;
            }

            @Override // com.ss.android.socialbase.downloader.depend.t
            public boolean a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback");
                    if (!this.f57926b.transact(2, obtain, obtain2, 0) && a.b() != null) {
                        return a.b().a();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
