package com.xinzhu.overmind.server.os;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import java.util.List;
/* compiled from: IMindFileShareService.java */
/* loaded from: classes3.dex */
public interface b extends IInterface {

    /* compiled from: IMindFileShareService.java */
    /* loaded from: classes3.dex */
    public static class a implements b {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.server.os.b
        public List<MindShareFileInfo> listFiles(String path) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.os.b
        public ParcelFileDescriptor openAsParcelFile(String path) throws RemoteException {
            return null;
        }
    }

    /* compiled from: IMindFileShareService.java */
    /* renamed from: com.xinzhu.overmind.server.os.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static abstract class AbstractBinderC0433b extends Binder implements b {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.server.os.IMindFileShareService";
        static final int TRANSACTION_listFiles = 1;
        static final int TRANSACTION_openAsParcelFile = 2;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IMindFileShareService.java */
        /* renamed from: com.xinzhu.overmind.server.os.b$b$a */
        /* loaded from: classes3.dex */
        public static class a implements b {

            /* renamed from: b  reason: collision with root package name */
            public static b f64502b;

            /* renamed from: a  reason: collision with root package name */
            private IBinder f64503a;

            a(IBinder remote) {
                this.f64503a = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f64503a;
            }

            @Override // com.xinzhu.overmind.server.os.b
            public List<MindShareFileInfo> listFiles(String path) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0433b.DESCRIPTOR);
                    obtain.writeString(path);
                    if (!this.f64503a.transact(1, obtain, obtain2, 0) && AbstractBinderC0433b.getDefaultImpl() != null) {
                        return AbstractBinderC0433b.getDefaultImpl().listFiles(path);
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(MindShareFileInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String m() {
                return AbstractBinderC0433b.DESCRIPTOR;
            }

            @Override // com.xinzhu.overmind.server.os.b
            public ParcelFileDescriptor openAsParcelFile(String path) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0433b.DESCRIPTOR);
                    obtain.writeString(path);
                    if (!this.f64503a.transact(2, obtain, obtain2, 0) && AbstractBinderC0433b.getDefaultImpl() != null) {
                        return AbstractBinderC0433b.getDefaultImpl().openAsParcelFile(path);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (ParcelFileDescriptor) ParcelFileDescriptor.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC0433b() {
            attachInterface(this, DESCRIPTOR);
        }

        public static b asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof b)) {
                return (b) queryLocalInterface;
            }
            return new a(obj);
        }

        public static b getDefaultImpl() {
            return a.f64502b;
        }

        public static boolean setDefaultImpl(b impl) {
            if (a.f64502b == null) {
                if (impl != null) {
                    a.f64502b = impl;
                    return true;
                }
                return false;
            }
            throw new IllegalStateException("setDefaultImpl() called twice");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code == 1) {
                data.enforceInterface(DESCRIPTOR);
                List<MindShareFileInfo> listFiles = listFiles(data.readString());
                reply.writeNoException();
                reply.writeTypedList(listFiles);
                return true;
            } else if (code != 2) {
                if (code != 1598968902) {
                    return super.onTransact(code, data, reply, flags);
                }
                reply.writeString(DESCRIPTOR);
                return true;
            } else {
                data.enforceInterface(DESCRIPTOR);
                ParcelFileDescriptor openAsParcelFile = openAsParcelFile(data.readString());
                reply.writeNoException();
                if (openAsParcelFile != null) {
                    reply.writeInt(1);
                    openAsParcelFile.writeToParcel(reply, 1);
                } else {
                    reply.writeInt(0);
                }
                return true;
            }
        }
    }

    List<MindShareFileInfo> listFiles(String path) throws RemoteException;

    ParcelFileDescriptor openAsParcelFile(String path) throws RemoteException;
}
