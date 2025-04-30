package com.xinzhu.overmind.client;

import android.content.Intent;
import android.content.pm.ProviderInfo;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: IOverlord.java */
/* loaded from: classes.dex */
public interface c extends IInterface {

    /* compiled from: IOverlord.java */
    /* loaded from: classes3.dex */
    public static class a implements c {
        @Override // com.xinzhu.overmind.client.c
        public IBinder acquireContentProviderClient(ProviderInfo providerInfo) throws RemoteException {
            return null;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.client.c
        public void bindApplication() throws RemoteException {
        }

        @Override // com.xinzhu.overmind.client.c
        public void finishActivity(IBinder token) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.client.c
        public IBinder getActivityThread() throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.client.c
        public void handleNewIntent(IBinder token, Intent intent) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.client.c
        public IBinder peekService(Intent intent) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.client.c
        public void restartJobService(String selfId) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.client.c
        public void stopService(Intent componentName) throws RemoteException {
        }
    }

    /* compiled from: IOverlord.java */
    /* loaded from: classes.dex */
    public static abstract class b extends Binder implements c {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.client.IOverlord";
        static final int TRANSACTION_acquireContentProviderClient = 5;
        static final int TRANSACTION_bindApplication = 2;
        static final int TRANSACTION_finishActivity = 7;
        static final int TRANSACTION_getActivityThread = 1;
        static final int TRANSACTION_handleNewIntent = 8;
        static final int TRANSACTION_peekService = 6;
        static final int TRANSACTION_restartJobService = 4;
        static final int TRANSACTION_stopService = 3;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IOverlord.java */
        /* loaded from: classes.dex */
        public static class a implements c {

            /* renamed from: b  reason: collision with root package name */
            public static c f63962b;

            /* renamed from: a  reason: collision with root package name */
            private IBinder f63963a;

            a(IBinder remote) {
                this.f63963a = remote;
            }

            @Override // com.xinzhu.overmind.client.c
            public IBinder acquireContentProviderClient(ProviderInfo providerInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (providerInfo != null) {
                        obtain.writeInt(1);
                        providerInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f63963a.transact(5, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().acquireContentProviderClient(providerInfo);
                    }
                    obtain2.readException();
                    return obtain2.readStrongBinder();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f63963a;
            }

            @Override // com.xinzhu.overmind.client.c
            public void bindApplication() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (!this.f63963a.transact(2, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().bindApplication();
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.client.c
            public void finishActivity(IBinder token) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(token);
                    if (!this.f63963a.transact(7, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().finishActivity(token);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.client.c
            public IBinder getActivityThread() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (!this.f63963a.transact(1, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getActivityThread();
                    }
                    obtain2.readException();
                    return obtain2.readStrongBinder();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.client.c
            public void handleNewIntent(IBinder token, Intent intent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(token);
                    if (intent != null) {
                        obtain.writeInt(1);
                        intent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f63963a.transact(8, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().handleNewIntent(token, intent);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String m() {
                return b.DESCRIPTOR;
            }

            @Override // com.xinzhu.overmind.client.c
            public IBinder peekService(Intent intent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (intent != null) {
                        obtain.writeInt(1);
                        intent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f63963a.transact(6, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().peekService(intent);
                    }
                    obtain2.readException();
                    return obtain2.readStrongBinder();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.client.c
            public void restartJobService(String selfId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(selfId);
                    if (!this.f63963a.transact(4, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().restartJobService(selfId);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.client.c
            public void stopService(Intent componentName) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (componentName != null) {
                        obtain.writeInt(1);
                        componentName.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f63963a.transact(3, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().stopService(componentName);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public b() {
            attachInterface(this, DESCRIPTOR);
        }

        public static c asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof c)) {
                return (c) queryLocalInterface;
            }
            return new a(obj);
        }

        public static c getDefaultImpl() {
            return a.f63962b;
        }

        public static boolean setDefaultImpl(c impl) {
            if (a.f63962b == null) {
                if (impl != null) {
                    a.f63962b = impl;
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
            if (code != 1598968902) {
                switch (code) {
                    case 1:
                        data.enforceInterface(DESCRIPTOR);
                        IBinder activityThread = getActivityThread();
                        reply.writeNoException();
                        reply.writeStrongBinder(activityThread);
                        return true;
                    case 2:
                        data.enforceInterface(DESCRIPTOR);
                        bindApplication();
                        reply.writeNoException();
                        return true;
                    case 3:
                        data.enforceInterface(DESCRIPTOR);
                        stopService(data.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        return true;
                    case 4:
                        data.enforceInterface(DESCRIPTOR);
                        restartJobService(data.readString());
                        reply.writeNoException();
                        return true;
                    case 5:
                        data.enforceInterface(DESCRIPTOR);
                        IBinder acquireContentProviderClient = acquireContentProviderClient(data.readInt() != 0 ? (ProviderInfo) ProviderInfo.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        reply.writeStrongBinder(acquireContentProviderClient);
                        return true;
                    case 6:
                        data.enforceInterface(DESCRIPTOR);
                        IBinder peekService = peekService(data.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        reply.writeStrongBinder(peekService);
                        return true;
                    case 7:
                        data.enforceInterface(DESCRIPTOR);
                        finishActivity(data.readStrongBinder());
                        reply.writeNoException();
                        return true;
                    case 8:
                        data.enforceInterface(DESCRIPTOR);
                        handleNewIntent(data.readStrongBinder(), data.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        return true;
                    default:
                        return super.onTransact(code, data, reply, flags);
                }
            }
            reply.writeString(DESCRIPTOR);
            return true;
        }
    }

    IBinder acquireContentProviderClient(ProviderInfo providerInfo) throws RemoteException;

    void bindApplication() throws RemoteException;

    void finishActivity(IBinder token) throws RemoteException;

    IBinder getActivityThread() throws RemoteException;

    void handleNewIntent(IBinder token, Intent intent) throws RemoteException;

    IBinder peekService(Intent intent) throws RemoteException;

    void restartJobService(String selfId) throws RemoteException;

    void stopService(Intent componentName) throws RemoteException;
}
