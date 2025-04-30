package com.xinzhu.overmind.server.os;

import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.storage.StorageVolume;
/* compiled from: IMindStorageManagerService.java */
/* loaded from: classes.dex */
public interface d extends IInterface {

    /* compiled from: IMindStorageManagerService.java */
    /* loaded from: classes3.dex */
    public static class a implements d {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.server.os.d
        public Uri getUriForFile(String file) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.os.d
        public StorageVolume[] getVolumeList(int uid, String packageName, int flags, int userId) throws RemoteException {
            return null;
        }
    }

    /* compiled from: IMindStorageManagerService.java */
    /* loaded from: classes.dex */
    public static abstract class b extends Binder implements d {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.server.os.IMindStorageManagerService";
        static final int TRANSACTION_getUriForFile = 2;
        static final int TRANSACTION_getVolumeList = 1;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IMindStorageManagerService.java */
        /* loaded from: classes3.dex */
        public static class a implements d {

            /* renamed from: b  reason: collision with root package name */
            public static d f64506b;

            /* renamed from: a  reason: collision with root package name */
            private IBinder f64507a;

            a(IBinder remote) {
                this.f64507a = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f64507a;
            }

            @Override // com.xinzhu.overmind.server.os.d
            public Uri getUriForFile(String file) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(file);
                    if (!this.f64507a.transact(2, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getUriForFile(file);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.os.d
            public StorageVolume[] getVolumeList(int uid, String packageName, int flags, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeInt(uid);
                    obtain.writeString(packageName);
                    obtain.writeInt(flags);
                    obtain.writeInt(userId);
                    if (!this.f64507a.transact(1, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getVolumeList(uid, packageName, flags, userId);
                    }
                    obtain2.readException();
                    return (StorageVolume[]) obtain2.createTypedArray(StorageVolume.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String m() {
                return b.DESCRIPTOR;
            }
        }

        public b() {
            attachInterface(this, DESCRIPTOR);
        }

        public static d asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof d)) {
                return (d) queryLocalInterface;
            }
            return new a(obj);
        }

        public static d getDefaultImpl() {
            return a.f64506b;
        }

        public static boolean setDefaultImpl(d impl) {
            if (a.f64506b == null) {
                if (impl != null) {
                    a.f64506b = impl;
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
                StorageVolume[] volumeList = getVolumeList(data.readInt(), data.readString(), data.readInt(), data.readInt());
                reply.writeNoException();
                reply.writeTypedArray(volumeList, 1);
                return true;
            } else if (code != 2) {
                if (code != 1598968902) {
                    return super.onTransact(code, data, reply, flags);
                }
                reply.writeString(DESCRIPTOR);
                return true;
            } else {
                data.enforceInterface(DESCRIPTOR);
                Uri uriForFile = getUriForFile(data.readString());
                reply.writeNoException();
                if (uriForFile != null) {
                    reply.writeInt(1);
                    uriForFile.writeToParcel(reply, 1);
                } else {
                    reply.writeInt(0);
                }
                return true;
            }
        }
    }

    Uri getUriForFile(String file) throws RemoteException;

    StorageVolume[] getVolumeList(int uid, String packageName, int flags, int userId) throws RemoteException;
}
