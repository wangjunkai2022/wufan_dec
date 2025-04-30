package com.ss.android.socialbase.downloader.model;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.ss.android.socialbase.downloader.depend.ae;
import com.ss.android.socialbase.downloader.depend.ah;
import com.ss.android.socialbase.downloader.depend.e;
import com.ss.android.socialbase.downloader.depend.f;
import com.ss.android.socialbase.downloader.depend.g;
import com.ss.android.socialbase.downloader.depend.h;
import com.ss.android.socialbase.downloader.depend.i;
import com.ss.android.socialbase.downloader.depend.j;
import com.ss.android.socialbase.downloader.depend.l;
import com.ss.android.socialbase.downloader.depend.p;
import com.ss.android.socialbase.downloader.depend.u;
import com.ss.android.socialbase.downloader.depend.y;
/* compiled from: DownloadAidlTask.java */
/* loaded from: classes4.dex */
public interface a extends IInterface {
    int a(int i2) throws RemoteException;

    i a(int i2, int i4) throws RemoteException;

    DownloadInfo a() throws RemoteException;

    com.ss.android.socialbase.downloader.depend.e b() throws RemoteException;

    i b(int i2) throws RemoteException;

    l c(int i2) throws RemoteException;

    y c() throws RemoteException;

    ae d() throws RemoteException;

    h e() throws RemoteException;

    f f() throws RemoteException;

    u g() throws RemoteException;

    ah h() throws RemoteException;

    p i() throws RemoteException;

    j j() throws RemoteException;

    g k() throws RemoteException;

    int l() throws RemoteException;

    /* compiled from: DownloadAidlTask.java */
    /* renamed from: com.ss.android.socialbase.downloader.model.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static abstract class AbstractBinderC0332a extends Binder implements a {
        public AbstractBinderC0332a() {
            attachInterface(this, "com.ss.android.socialbase.downloader.model.DownloadAidlTask");
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0333a(iBinder);
        }

        public static a m() {
            return C0333a.f58459a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i4) throws RemoteException {
            if (i2 != 1598968902) {
                switch (i2) {
                    case 1:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                        DownloadInfo a4 = a();
                        parcel2.writeNoException();
                        if (a4 != null) {
                            parcel2.writeInt(1);
                            a4.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 2:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                        com.ss.android.socialbase.downloader.depend.e b4 = b();
                        parcel2.writeNoException();
                        parcel2.writeStrongBinder(b4 != null ? b4.asBinder() : null);
                        return true;
                    case 3:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                        int a5 = a(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(a5);
                        return true;
                    case 4:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                        i a6 = a(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeStrongBinder(a6 != null ? a6.asBinder() : null);
                        return true;
                    case 5:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                        i b5 = b(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeStrongBinder(b5 != null ? b5.asBinder() : null);
                        return true;
                    case 6:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                        y c4 = c();
                        parcel2.writeNoException();
                        parcel2.writeStrongBinder(c4 != null ? c4.asBinder() : null);
                        return true;
                    case 7:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                        ae d4 = d();
                        parcel2.writeNoException();
                        parcel2.writeStrongBinder(d4 != null ? d4.asBinder() : null);
                        return true;
                    case 8:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                        h e4 = e();
                        parcel2.writeNoException();
                        parcel2.writeStrongBinder(e4 != null ? e4.asBinder() : null);
                        return true;
                    case 9:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                        f f4 = f();
                        parcel2.writeNoException();
                        parcel2.writeStrongBinder(f4 != null ? f4.asBinder() : null);
                        return true;
                    case 10:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                        u g4 = g();
                        parcel2.writeNoException();
                        parcel2.writeStrongBinder(g4 != null ? g4.asBinder() : null);
                        return true;
                    case 11:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                        ah h4 = h();
                        parcel2.writeNoException();
                        parcel2.writeStrongBinder(h4 != null ? h4.asBinder() : null);
                        return true;
                    case 12:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                        p i5 = i();
                        parcel2.writeNoException();
                        parcel2.writeStrongBinder(i5 != null ? i5.asBinder() : null);
                        return true;
                    case 13:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                        j j4 = j();
                        parcel2.writeNoException();
                        parcel2.writeStrongBinder(j4 != null ? j4.asBinder() : null);
                        return true;
                    case 14:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                        g k4 = k();
                        parcel2.writeNoException();
                        parcel2.writeStrongBinder(k4 != null ? k4.asBinder() : null);
                        return true;
                    case 15:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                        int l4 = l();
                        parcel2.writeNoException();
                        parcel2.writeInt(l4);
                        return true;
                    case 16:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                        l c5 = c(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeStrongBinder(c5 != null ? c5.asBinder() : null);
                        return true;
                    default:
                        return super.onTransact(i2, parcel, parcel2, i4);
                }
            }
            parcel2.writeString("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: DownloadAidlTask.java */
        /* renamed from: com.ss.android.socialbase.downloader.model.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static class C0333a implements a {

            /* renamed from: a  reason: collision with root package name */
            public static a f58459a;

            /* renamed from: b  reason: collision with root package name */
            private IBinder f58460b;

            C0333a(IBinder iBinder) {
                this.f58460b = iBinder;
            }

            @Override // com.ss.android.socialbase.downloader.model.a
            public DownloadInfo a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (!this.f58460b.transact(1, obtain, obtain2, 0) && AbstractBinderC0332a.m() != null) {
                        return AbstractBinderC0332a.m().a();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f58460b;
            }

            @Override // com.ss.android.socialbase.downloader.model.a
            public com.ss.android.socialbase.downloader.depend.e b() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (!this.f58460b.transact(2, obtain, obtain2, 0) && AbstractBinderC0332a.m() != null) {
                        return AbstractBinderC0332a.m().b();
                    }
                    obtain2.readException();
                    return e.a.a(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.a
            public y c() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (!this.f58460b.transact(6, obtain, obtain2, 0) && AbstractBinderC0332a.m() != null) {
                        return AbstractBinderC0332a.m().c();
                    }
                    obtain2.readException();
                    return y.a.a(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.a
            public ae d() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (!this.f58460b.transact(7, obtain, obtain2, 0) && AbstractBinderC0332a.m() != null) {
                        return AbstractBinderC0332a.m().d();
                    }
                    obtain2.readException();
                    return ae.a.a(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.a
            public h e() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (!this.f58460b.transact(8, obtain, obtain2, 0) && AbstractBinderC0332a.m() != null) {
                        return AbstractBinderC0332a.m().e();
                    }
                    obtain2.readException();
                    return h.a.a(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.a
            public f f() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (!this.f58460b.transact(9, obtain, obtain2, 0) && AbstractBinderC0332a.m() != null) {
                        return AbstractBinderC0332a.m().f();
                    }
                    obtain2.readException();
                    return f.a.a(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.a
            public u g() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (!this.f58460b.transact(10, obtain, obtain2, 0) && AbstractBinderC0332a.m() != null) {
                        return AbstractBinderC0332a.m().g();
                    }
                    obtain2.readException();
                    return u.a.a(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.a
            public ah h() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (!this.f58460b.transact(11, obtain, obtain2, 0) && AbstractBinderC0332a.m() != null) {
                        return AbstractBinderC0332a.m().h();
                    }
                    obtain2.readException();
                    return ah.a.a(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.a
            public p i() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (!this.f58460b.transact(12, obtain, obtain2, 0) && AbstractBinderC0332a.m() != null) {
                        return AbstractBinderC0332a.m().i();
                    }
                    obtain2.readException();
                    return p.a.a(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.a
            public j j() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (!this.f58460b.transact(13, obtain, obtain2, 0) && AbstractBinderC0332a.m() != null) {
                        return AbstractBinderC0332a.m().j();
                    }
                    obtain2.readException();
                    return j.a.a(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.a
            public g k() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (!this.f58460b.transact(14, obtain, obtain2, 0) && AbstractBinderC0332a.m() != null) {
                        return AbstractBinderC0332a.m().k();
                    }
                    obtain2.readException();
                    return g.a.a(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.a
            public int l() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (!this.f58460b.transact(15, obtain, obtain2, 0) && AbstractBinderC0332a.m() != null) {
                        return AbstractBinderC0332a.m().l();
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.a
            public i b(int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    obtain.writeInt(i2);
                    if (!this.f58460b.transact(5, obtain, obtain2, 0) && AbstractBinderC0332a.m() != null) {
                        return AbstractBinderC0332a.m().b(i2);
                    }
                    obtain2.readException();
                    return i.a.a(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.a
            public l c(int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    obtain.writeInt(i2);
                    if (!this.f58460b.transact(16, obtain, obtain2, 0) && AbstractBinderC0332a.m() != null) {
                        return AbstractBinderC0332a.m().c(i2);
                    }
                    obtain2.readException();
                    return l.a.a(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.a
            public int a(int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    obtain.writeInt(i2);
                    if (!this.f58460b.transact(3, obtain, obtain2, 0) && AbstractBinderC0332a.m() != null) {
                        return AbstractBinderC0332a.m().a(i2);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.a
            public i a(int i2, int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    obtain.writeInt(i2);
                    obtain.writeInt(i4);
                    if (!this.f58460b.transact(4, obtain, obtain2, 0) && AbstractBinderC0332a.m() != null) {
                        return AbstractBinderC0332a.m().a(i2, i4);
                    }
                    obtain2.readException();
                    return i.a.a(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
