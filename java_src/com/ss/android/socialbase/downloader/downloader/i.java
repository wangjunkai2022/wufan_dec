package com.ss.android.socialbase.downloader.downloader;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.ss.android.socialbase.downloader.depend.ae;
import com.ss.android.socialbase.downloader.depend.aj;
import com.ss.android.socialbase.downloader.depend.g;
import com.ss.android.socialbase.downloader.depend.i;
import com.ss.android.socialbase.downloader.depend.y;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.a;
import java.util.List;
/* compiled from: IDownloadAidlService.java */
/* loaded from: classes4.dex */
public interface i extends IInterface {
    int a(String str, String str2) throws RemoteException;

    List<DownloadInfo> a(String str) throws RemoteException;

    void a() throws RemoteException;

    void a(int i2) throws RemoteException;

    void a(int i2, int i4) throws RemoteException;

    void a(int i2, int i4, int i5, int i6) throws RemoteException;

    void a(int i2, int i4, int i5, long j4) throws RemoteException;

    void a(int i2, int i4, long j4) throws RemoteException;

    void a(int i2, int i4, com.ss.android.socialbase.downloader.depend.i iVar, int i5, boolean z3) throws RemoteException;

    void a(int i2, int i4, com.ss.android.socialbase.downloader.depend.i iVar, int i5, boolean z3, boolean z4) throws RemoteException;

    void a(int i2, long j4) throws RemoteException;

    void a(int i2, Notification notification) throws RemoteException;

    void a(int i2, y yVar) throws RemoteException;

    void a(int i2, List<com.ss.android.socialbase.downloader.model.b> list) throws RemoteException;

    void a(int i2, boolean z3) throws RemoteException;

    void a(aj ajVar) throws RemoteException;

    void a(com.ss.android.socialbase.downloader.model.a aVar) throws RemoteException;

    void a(com.ss.android.socialbase.downloader.model.b bVar) throws RemoteException;

    void a(List<String> list) throws RemoteException;

    void a(boolean z3) throws RemoteException;

    boolean a(DownloadInfo downloadInfo) throws RemoteException;

    DownloadInfo b(String str, String str2) throws RemoteException;

    List<DownloadInfo> b() throws RemoteException;

    List<DownloadInfo> b(String str) throws RemoteException;

    void b(int i2, int i4, com.ss.android.socialbase.downloader.depend.i iVar, int i5, boolean z3) throws RemoteException;

    void b(int i2, List<com.ss.android.socialbase.downloader.model.b> list) throws RemoteException;

    void b(int i2, boolean z3) throws RemoteException;

    void b(List<String> list) throws RemoteException;

    boolean b(int i2) throws RemoteException;

    boolean b(DownloadInfo downloadInfo) throws RemoteException;

    List<DownloadInfo> c(String str) throws RemoteException;

    void c(int i2) throws RemoteException;

    void c(int i2, boolean z3) throws RemoteException;

    boolean c() throws RemoteException;

    List<DownloadInfo> d(String str) throws RemoteException;

    void d(int i2) throws RemoteException;

    void d(int i2, boolean z3) throws RemoteException;

    boolean d() throws RemoteException;

    long e(int i2) throws RemoteException;

    List<DownloadInfo> e(String str) throws RemoteException;

    void e() throws RemoteException;

    int f(int i2) throws RemoteException;

    boolean f() throws RemoteException;

    boolean g(int i2) throws RemoteException;

    DownloadInfo h(int i2) throws RemoteException;

    List<com.ss.android.socialbase.downloader.model.b> i(int i2) throws RemoteException;

    void j(int i2) throws RemoteException;

    boolean k(int i2) throws RemoteException;

    void l(int i2) throws RemoteException;

    int m(int i2) throws RemoteException;

    boolean n(int i2) throws RemoteException;

    void o(int i2) throws RemoteException;

    boolean p(int i2) throws RemoteException;

    y q(int i2) throws RemoteException;

    ae r(int i2) throws RemoteException;

    com.ss.android.socialbase.downloader.depend.g s(int i2) throws RemoteException;

    /* compiled from: IDownloadAidlService.java */
    /* loaded from: classes4.dex */
    public static abstract class a extends Binder implements i {
        public a() {
            attachInterface(this, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
        }

        public static i a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
            if (queryLocalInterface != null && (queryLocalInterface instanceof i)) {
                return (i) queryLocalInterface;
            }
            return new C0328a(iBinder);
        }

        public static i g() {
            return C0328a.f58030a;
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
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        a(a.AbstractBinderC0332a.a(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 2:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        a(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 3:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        a(parcel.readInt(), parcel.readInt() != 0);
                        parcel2.writeNoException();
                        return true;
                    case 4:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        boolean b4 = b(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(b4 ? 1 : 0);
                        return true;
                    case 5:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        c(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 6:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        d(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 7:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        a();
                        parcel2.writeNoException();
                        return true;
                    case 8:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        long e4 = e(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeLong(e4);
                        return true;
                    case 9:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        int f4 = f(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(f4);
                        return true;
                    case 10:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        boolean g4 = g(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(g4 ? 1 : 0);
                        return true;
                    case 11:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        DownloadInfo h4 = h(parcel.readInt());
                        parcel2.writeNoException();
                        if (h4 != null) {
                            parcel2.writeInt(1);
                            h4.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 12:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        List<DownloadInfo> a4 = a(parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeTypedList(a4);
                        return true;
                    case 13:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        List<com.ss.android.socialbase.downloader.model.b> i5 = i(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeTypedList(i5);
                        return true;
                    case 14:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        int a5 = a(parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeInt(a5);
                        return true;
                    case 15:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        DownloadInfo b5 = b(parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        if (b5 != null) {
                            parcel2.writeInt(1);
                            b5.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 16:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        List<DownloadInfo> b6 = b(parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeTypedList(b6);
                        return true;
                    case 17:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        List<DownloadInfo> c4 = c(parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeTypedList(c4);
                        return true;
                    case 18:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        List<DownloadInfo> d4 = d(parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeTypedList(d4);
                        return true;
                    case 19:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        List<DownloadInfo> b7 = b();
                        parcel2.writeNoException();
                        parcel2.writeTypedList(b7);
                        return true;
                    case 20:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        a(parcel.createStringArrayList());
                        parcel2.writeNoException();
                        return true;
                    case 21:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        b(parcel.createStringArrayList());
                        parcel2.writeNoException();
                        return true;
                    case 22:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        b(parcel.readInt(), parcel.readInt() != 0);
                        parcel2.writeNoException();
                        return true;
                    case 23:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        c(parcel.readInt(), parcel.readInt() != 0);
                        parcel2.writeNoException();
                        return true;
                    case 24:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        j(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 25:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        a(parcel.readInt(), parcel.readInt(), i.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0);
                        parcel2.writeNoException();
                        return true;
                    case 26:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        b(parcel.readInt(), parcel.readInt(), i.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0);
                        parcel2.writeNoException();
                        return true;
                    case 27:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        a(parcel.readInt(), parcel.readInt(), i.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0);
                        parcel2.writeNoException();
                        return true;
                    case 28:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        boolean a6 = a(parcel.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        parcel2.writeInt(a6 ? 1 : 0);
                        return true;
                    case 29:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        a(parcel.readInt(), parcel.readInt() != 0 ? (Notification) Notification.CREATOR.createFromParcel(parcel) : null);
                        return true;
                    case 30:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        a(parcel.readInt() != 0);
                        return true;
                    case 31:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        boolean c5 = c();
                        parcel2.writeNoException();
                        parcel2.writeInt(c5 ? 1 : 0);
                        return true;
                    case 32:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        List<DownloadInfo> e5 = e(parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeTypedList(e5);
                        return true;
                    case 33:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        boolean k4 = k(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(k4 ? 1 : 0);
                        return true;
                    case 34:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        l(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 35:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        boolean d5 = d();
                        parcel2.writeNoException();
                        parcel2.writeInt(d5 ? 1 : 0);
                        return true;
                    case 36:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        d(parcel.readInt(), parcel.readInt() != 0);
                        parcel2.writeNoException();
                        return true;
                    case 37:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        int m4 = m(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(m4);
                        return true;
                    case 38:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        a(parcel.readInt() != 0 ? com.ss.android.socialbase.downloader.model.b.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 39:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        boolean b8 = b(parcel.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        parcel2.writeInt(b8 ? 1 : 0);
                        return true;
                    case 40:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        boolean n4 = n(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(n4 ? 1 : 0);
                        return true;
                    case 41:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        o(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 42:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        a(parcel.readInt(), parcel.readInt(), parcel.readLong());
                        parcel2.writeNoException();
                        return true;
                    case 43:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        a(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readLong());
                        parcel2.writeNoException();
                        return true;
                    case 44:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        a(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 45:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        boolean p3 = p(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(p3 ? 1 : 0);
                        return true;
                    case 46:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        e();
                        parcel2.writeNoException();
                        return true;
                    case 47:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        a(parcel.readInt(), parcel.createTypedArrayList(com.ss.android.socialbase.downloader.model.b.CREATOR));
                        parcel2.writeNoException();
                        return true;
                    case 48:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        b(parcel.readInt(), parcel.createTypedArrayList(com.ss.android.socialbase.downloader.model.b.CREATOR));
                        parcel2.writeNoException();
                        return true;
                    case 49:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        a(aj.a.a(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 50:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        a(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 51:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        y q3 = q(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeStrongBinder(q3 != null ? q3.asBinder() : null);
                        return true;
                    case 52:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        ae r3 = r(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeStrongBinder(r3 != null ? r3.asBinder() : null);
                        return true;
                    case 53:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        a(parcel.readInt(), y.a.a(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 54:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        com.ss.android.socialbase.downloader.depend.g s3 = s(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeStrongBinder(s3 != null ? s3.asBinder() : null);
                        return true;
                    case 55:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        boolean f5 = f();
                        parcel2.writeNoException();
                        parcel2.writeInt(f5 ? 1 : 0);
                        return true;
                    case 56:
                        parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                        a(parcel.readInt(), parcel.readLong());
                        parcel2.writeNoException();
                        return true;
                    default:
                        return super.onTransact(i2, parcel, parcel2, i4);
                }
            }
            parcel2.writeString("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IDownloadAidlService.java */
        /* renamed from: com.ss.android.socialbase.downloader.downloader.i$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static class C0328a implements i {

            /* renamed from: a  reason: collision with root package name */
            public static i f58030a;

            /* renamed from: b  reason: collision with root package name */
            private IBinder f58031b;

            C0328a(IBinder iBinder) {
                this.f58031b = iBinder;
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void a(com.ss.android.socialbase.downloader.model.a aVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    if (!this.f58031b.transact(1, obtain, obtain2, 0) && a.g() != null) {
                        a.g().a(aVar);
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
                return this.f58031b;
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public boolean b(int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    if (!this.f58031b.transact(4, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().b(i2);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void c(int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    if (!this.f58031b.transact(5, obtain, obtain2, 0) && a.g() != null) {
                        a.g().c(i2);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void d(int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    if (!this.f58031b.transact(6, obtain, obtain2, 0) && a.g() != null) {
                        a.g().d(i2);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public long e(int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    if (!this.f58031b.transact(8, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().e(i2);
                    }
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public int f(int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    if (!this.f58031b.transact(9, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().f(i2);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public boolean g(int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    if (!this.f58031b.transact(10, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().g(i2);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public DownloadInfo h(int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    if (!this.f58031b.transact(11, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().h(i2);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public List<com.ss.android.socialbase.downloader.model.b> i(int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    if (!this.f58031b.transact(13, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().i(i2);
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(com.ss.android.socialbase.downloader.model.b.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void j(int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    if (!this.f58031b.transact(24, obtain, obtain2, 0) && a.g() != null) {
                        a.g().j(i2);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public boolean k(int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    if (!this.f58031b.transact(33, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().k(i2);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void l(int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    if (!this.f58031b.transact(34, obtain, obtain2, 0) && a.g() != null) {
                        a.g().l(i2);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public int m(int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    if (!this.f58031b.transact(37, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().m(i2);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public boolean n(int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    if (!this.f58031b.transact(40, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().n(i2);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void o(int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    if (!this.f58031b.transact(41, obtain, obtain2, 0) && a.g() != null) {
                        a.g().o(i2);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public boolean p(int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    if (!this.f58031b.transact(45, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().p(i2);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public y q(int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    if (!this.f58031b.transact(51, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().q(i2);
                    }
                    obtain2.readException();
                    return y.a.a(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public ae r(int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    if (!this.f58031b.transact(52, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().r(i2);
                    }
                    obtain2.readException();
                    return ae.a.a(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public com.ss.android.socialbase.downloader.depend.g s(int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    if (!this.f58031b.transact(54, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().s(i2);
                    }
                    obtain2.readException();
                    return g.a.a(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void a(int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    if (!this.f58031b.transact(2, obtain, obtain2, 0) && a.g() != null) {
                        a.g().a(i2);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public List<DownloadInfo> c(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeString(str);
                    if (!this.f58031b.transact(17, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().c(str);
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(DownloadInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public List<DownloadInfo> d(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeString(str);
                    if (!this.f58031b.transact(18, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().d(str);
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(DownloadInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public DownloadInfo b(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (!this.f58031b.transact(15, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().b(str, str2);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public List<DownloadInfo> e(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeString(str);
                    if (!this.f58031b.transact(32, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().e(str);
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(DownloadInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public boolean f() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (!this.f58031b.transact(55, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().f();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void a(int i2, boolean z3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    obtain.writeInt(z3 ? 1 : 0);
                    if (!this.f58031b.transact(3, obtain, obtain2, 0) && a.g() != null) {
                        a.g().a(i2, z3);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void c(int i2, boolean z3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    obtain.writeInt(z3 ? 1 : 0);
                    if (!this.f58031b.transact(23, obtain, obtain2, 0) && a.g() != null) {
                        a.g().c(i2, z3);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public boolean d() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (!this.f58031b.transact(35, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().d();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void e() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (!this.f58031b.transact(46, obtain, obtain2, 0) && a.g() != null) {
                        a.g().e();
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public List<DownloadInfo> b(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeString(str);
                    if (!this.f58031b.transact(16, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().b(str);
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(DownloadInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (!this.f58031b.transact(7, obtain, obtain2, 0) && a.g() != null) {
                        a.g().a();
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void d(int i2, boolean z3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    obtain.writeInt(z3 ? 1 : 0);
                    if (!this.f58031b.transact(36, obtain, obtain2, 0) && a.g() != null) {
                        a.g().d(i2, z3);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public boolean c() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (!this.f58031b.transact(31, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().c();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public List<DownloadInfo> b() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (!this.f58031b.transact(19, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().b();
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(DownloadInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public List<DownloadInfo> a(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeString(str);
                    if (!this.f58031b.transact(12, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().a(str);
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(DownloadInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void b(List<String> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeStringList(list);
                    if (!this.f58031b.transact(21, obtain, obtain2, 0) && a.g() != null) {
                        a.g().b(list);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public int a(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (!this.f58031b.transact(14, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().a(str, str2);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void b(int i2, boolean z3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    obtain.writeInt(z3 ? 1 : 0);
                    if (!this.f58031b.transact(22, obtain, obtain2, 0) && a.g() != null) {
                        a.g().b(i2, z3);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void a(List<String> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeStringList(list);
                    if (!this.f58031b.transact(20, obtain, obtain2, 0) && a.g() != null) {
                        a.g().a(list);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void b(int i2, int i4, com.ss.android.socialbase.downloader.depend.i iVar, int i5, boolean z3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    obtain.writeInt(i4);
                    obtain.writeStrongBinder(iVar != null ? iVar.asBinder() : null);
                    obtain.writeInt(i5);
                    obtain.writeInt(z3 ? 1 : 0);
                    if (!this.f58031b.transact(26, obtain, obtain2, 0) && a.g() != null) {
                        a.g().b(i2, i4, iVar, i5, z3);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void a(int i2, int i4, com.ss.android.socialbase.downloader.depend.i iVar, int i5, boolean z3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    obtain.writeInt(i4);
                    obtain.writeStrongBinder(iVar != null ? iVar.asBinder() : null);
                    obtain.writeInt(i5);
                    obtain.writeInt(z3 ? 1 : 0);
                    if (!this.f58031b.transact(25, obtain, obtain2, 0) && a.g() != null) {
                        a.g().a(i2, i4, iVar, i5, z3);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public boolean b(DownloadInfo downloadInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (downloadInfo != null) {
                        obtain.writeInt(1);
                        downloadInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f58031b.transact(39, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().b(downloadInfo);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void a(int i2, int i4, com.ss.android.socialbase.downloader.depend.i iVar, int i5, boolean z3, boolean z4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    obtain.writeInt(i4);
                    obtain.writeStrongBinder(iVar != null ? iVar.asBinder() : null);
                    obtain.writeInt(i5);
                    int i6 = 1;
                    obtain.writeInt(z3 ? 1 : 0);
                    if (!z4) {
                        i6 = 0;
                    }
                    obtain.writeInt(i6);
                    try {
                        if (!this.f58031b.transact(27, obtain, obtain2, 0) && a.g() != null) {
                            a.g().a(i2, i4, iVar, i5, z3, z4);
                            obtain2.recycle();
                            obtain.recycle();
                            return;
                        }
                        obtain2.readException();
                        obtain2.recycle();
                        obtain.recycle();
                    } catch (Throwable th) {
                        th = th;
                        obtain2.recycle();
                        obtain.recycle();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void b(int i2, List<com.ss.android.socialbase.downloader.model.b> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    obtain.writeTypedList(list);
                    if (!this.f58031b.transact(48, obtain, obtain2, 0) && a.g() != null) {
                        a.g().b(i2, list);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public boolean a(DownloadInfo downloadInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (downloadInfo != null) {
                        obtain.writeInt(1);
                        downloadInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f58031b.transact(28, obtain, obtain2, 0) && a.g() != null) {
                        return a.g().a(downloadInfo);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void a(int i2, Notification notification) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    if (notification != null) {
                        obtain.writeInt(1);
                        notification.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f58031b.transact(29, obtain, null, 1) || a.g() == null) {
                        return;
                    }
                    a.g().a(i2, notification);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void a(boolean z3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(z3 ? 1 : 0);
                    if (this.f58031b.transact(30, obtain, null, 1) || a.g() == null) {
                        return;
                    }
                    a.g().a(z3);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void a(com.ss.android.socialbase.downloader.model.b bVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (bVar != null) {
                        obtain.writeInt(1);
                        bVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f58031b.transact(38, obtain, obtain2, 0) && a.g() != null) {
                        a.g().a(bVar);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void a(int i2, int i4, long j4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    obtain.writeInt(i4);
                    obtain.writeLong(j4);
                    if (!this.f58031b.transact(42, obtain, obtain2, 0) && a.g() != null) {
                        a.g().a(i2, i4, j4);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void a(int i2, int i4, int i5, long j4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    obtain.writeLong(j4);
                    if (!this.f58031b.transact(43, obtain, obtain2, 0) && a.g() != null) {
                        a.g().a(i2, i4, i5, j4);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void a(int i2, int i4, int i5, int i6) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    obtain.writeInt(i6);
                    if (!this.f58031b.transact(44, obtain, obtain2, 0) && a.g() != null) {
                        a.g().a(i2, i4, i5, i6);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void a(int i2, List<com.ss.android.socialbase.downloader.model.b> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    obtain.writeTypedList(list);
                    if (!this.f58031b.transact(47, obtain, obtain2, 0) && a.g() != null) {
                        a.g().a(i2, list);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void a(aj ajVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeStrongBinder(ajVar != null ? ajVar.asBinder() : null);
                    if (!this.f58031b.transact(49, obtain, obtain2, 0) && a.g() != null) {
                        a.g().a(ajVar);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void a(int i2, int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    obtain.writeInt(i4);
                    if (!this.f58031b.transact(50, obtain, obtain2, 0) && a.g() != null) {
                        a.g().a(i2, i4);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void a(int i2, y yVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    if (!this.f58031b.transact(53, obtain, obtain2, 0) && a.g() != null) {
                        a.g().a(i2, yVar);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.i
            public void a(int i2, long j4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i2);
                    obtain.writeLong(j4);
                    if (!this.f58031b.transact(56, obtain, obtain2, 0) && a.g() != null) {
                        a.g().a(i2, j4);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
