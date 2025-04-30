package com.xinzhu.overmind.plugin;

import android.app.ActivityManager;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.xinzhu.overmind.server.os.MindShareFileInfo;
import java.util.List;
/* compiled from: IPluginMonitor.java */
/* loaded from: classes.dex */
public interface a extends IInterface {

    /* compiled from: IPluginMonitor.java */
    /* renamed from: com.xinzhu.overmind.plugin.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0427a implements a {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.plugin.a
        public MindShareFileInfo checkFile(String path) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void copyDir(String from, String target) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void copyFile(String from, String target) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void deleteAllPackages() throws RemoteException {
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void deleteFileOrDir(String target) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void deletePackage(String pkgName, int userId) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void finishPlugin() throws RemoteException {
        }

        @Override // com.xinzhu.overmind.plugin.a
        public List<ActivityManager.RecentTaskInfo> getRecentTasks(int maxNum, int flags) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.plugin.a
        public List<ActivityManager.RunningAppProcessInfo> getRunningAppProcesses() throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.plugin.a
        public int initWorks() throws RemoteException {
            return 0;
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void killProcess(int target) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.plugin.a
        public List<MindShareFileInfo> listFiles(String path) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.plugin.a
        public ParcelFileDescriptor openAsParcelFile(String path) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void syncAllPackages() throws RemoteException {
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void syncPackage(String pkgName, int userId) throws RemoteException {
        }
    }

    /* compiled from: IPluginMonitor.java */
    /* loaded from: classes.dex */
    public static abstract class b extends Binder implements a {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.plugin.IPluginMonitor";
        static final int TRANSACTION_checkFile = 11;
        static final int TRANSACTION_copyDir = 13;
        static final int TRANSACTION_copyFile = 12;
        static final int TRANSACTION_deleteAllPackages = 5;
        static final int TRANSACTION_deleteFileOrDir = 14;
        static final int TRANSACTION_deletePackage = 6;
        static final int TRANSACTION_finishPlugin = 2;
        static final int TRANSACTION_getRecentTasks = 8;
        static final int TRANSACTION_getRunningAppProcesses = 7;
        static final int TRANSACTION_initWorks = 1;
        static final int TRANSACTION_killProcess = 9;
        static final int TRANSACTION_listFiles = 10;
        static final int TRANSACTION_openAsParcelFile = 15;
        static final int TRANSACTION_syncAllPackages = 3;
        static final int TRANSACTION_syncPackage = 4;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IPluginMonitor.java */
        /* renamed from: com.xinzhu.overmind.plugin.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0428a implements a {

            /* renamed from: b  reason: collision with root package name */
            public static a f64334b;

            /* renamed from: a  reason: collision with root package name */
            private IBinder f64335a;

            C0428a(IBinder remote) {
                this.f64335a = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f64335a;
            }

            @Override // com.xinzhu.overmind.plugin.a
            public MindShareFileInfo checkFile(String path) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(path);
                    if (!this.f64335a.transact(11, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().checkFile(path);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? MindShareFileInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public void copyDir(String from, String target) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(from);
                    obtain.writeString(target);
                    if (!this.f64335a.transact(13, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().copyDir(from, target);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public void copyFile(String from, String target) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(from);
                    obtain.writeString(target);
                    if (!this.f64335a.transact(12, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().copyFile(from, target);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public void deleteAllPackages() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (!this.f64335a.transact(5, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().deleteAllPackages();
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public void deleteFileOrDir(String target) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(target);
                    if (!this.f64335a.transact(14, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().deleteFileOrDir(target);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public void deletePackage(String pkgName, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(pkgName);
                    obtain.writeInt(userId);
                    if (!this.f64335a.transact(6, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().deletePackage(pkgName, userId);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public void finishPlugin() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (!this.f64335a.transact(2, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().finishPlugin();
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public List<ActivityManager.RecentTaskInfo> getRecentTasks(int maxNum, int flags) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeInt(maxNum);
                    obtain.writeInt(flags);
                    if (!this.f64335a.transact(8, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getRecentTasks(maxNum, flags);
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(ActivityManager.RecentTaskInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public List<ActivityManager.RunningAppProcessInfo> getRunningAppProcesses() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (!this.f64335a.transact(7, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getRunningAppProcesses();
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(ActivityManager.RunningAppProcessInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public int initWorks() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (!this.f64335a.transact(1, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().initWorks();
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public void killProcess(int target) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeInt(target);
                    if (!this.f64335a.transact(9, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().killProcess(target);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public List<MindShareFileInfo> listFiles(String path) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(path);
                    if (!this.f64335a.transact(10, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().listFiles(path);
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(MindShareFileInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String m() {
                return b.DESCRIPTOR;
            }

            @Override // com.xinzhu.overmind.plugin.a
            public ParcelFileDescriptor openAsParcelFile(String path) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(path);
                    if (!this.f64335a.transact(15, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().openAsParcelFile(path);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (ParcelFileDescriptor) ParcelFileDescriptor.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public void syncAllPackages() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (!this.f64335a.transact(3, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().syncAllPackages();
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public void syncPackage(String pkgName, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(pkgName);
                    obtain.writeInt(userId);
                    if (!this.f64335a.transact(4, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().syncPackage(pkgName, userId);
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

        public static a asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0428a(obj);
        }

        public static a getDefaultImpl() {
            return C0428a.f64334b;
        }

        public static boolean setDefaultImpl(a impl) {
            if (C0428a.f64334b == null) {
                if (impl != null) {
                    C0428a.f64334b = impl;
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
                        int initWorks = initWorks();
                        reply.writeNoException();
                        reply.writeInt(initWorks);
                        return true;
                    case 2:
                        data.enforceInterface(DESCRIPTOR);
                        finishPlugin();
                        reply.writeNoException();
                        return true;
                    case 3:
                        data.enforceInterface(DESCRIPTOR);
                        syncAllPackages();
                        reply.writeNoException();
                        return true;
                    case 4:
                        data.enforceInterface(DESCRIPTOR);
                        syncPackage(data.readString(), data.readInt());
                        reply.writeNoException();
                        return true;
                    case 5:
                        data.enforceInterface(DESCRIPTOR);
                        deleteAllPackages();
                        reply.writeNoException();
                        return true;
                    case 6:
                        data.enforceInterface(DESCRIPTOR);
                        deletePackage(data.readString(), data.readInt());
                        reply.writeNoException();
                        return true;
                    case 7:
                        data.enforceInterface(DESCRIPTOR);
                        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = getRunningAppProcesses();
                        reply.writeNoException();
                        reply.writeTypedList(runningAppProcesses);
                        return true;
                    case 8:
                        data.enforceInterface(DESCRIPTOR);
                        List<ActivityManager.RecentTaskInfo> recentTasks = getRecentTasks(data.readInt(), data.readInt());
                        reply.writeNoException();
                        reply.writeTypedList(recentTasks);
                        return true;
                    case 9:
                        data.enforceInterface(DESCRIPTOR);
                        killProcess(data.readInt());
                        reply.writeNoException();
                        return true;
                    case 10:
                        data.enforceInterface(DESCRIPTOR);
                        List<MindShareFileInfo> listFiles = listFiles(data.readString());
                        reply.writeNoException();
                        reply.writeTypedList(listFiles);
                        return true;
                    case 11:
                        data.enforceInterface(DESCRIPTOR);
                        MindShareFileInfo checkFile = checkFile(data.readString());
                        reply.writeNoException();
                        if (checkFile != null) {
                            reply.writeInt(1);
                            checkFile.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 12:
                        data.enforceInterface(DESCRIPTOR);
                        copyFile(data.readString(), data.readString());
                        reply.writeNoException();
                        return true;
                    case 13:
                        data.enforceInterface(DESCRIPTOR);
                        copyDir(data.readString(), data.readString());
                        reply.writeNoException();
                        return true;
                    case 14:
                        data.enforceInterface(DESCRIPTOR);
                        deleteFileOrDir(data.readString());
                        reply.writeNoException();
                        return true;
                    case 15:
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
                    default:
                        return super.onTransact(code, data, reply, flags);
                }
            }
            reply.writeString(DESCRIPTOR);
            return true;
        }
    }

    MindShareFileInfo checkFile(String path) throws RemoteException;

    void copyDir(String from, String target) throws RemoteException;

    void copyFile(String from, String target) throws RemoteException;

    void deleteAllPackages() throws RemoteException;

    void deleteFileOrDir(String target) throws RemoteException;

    void deletePackage(String pkgName, int userId) throws RemoteException;

    void finishPlugin() throws RemoteException;

    List<ActivityManager.RecentTaskInfo> getRecentTasks(int maxNum, int flags) throws RemoteException;

    List<ActivityManager.RunningAppProcessInfo> getRunningAppProcesses() throws RemoteException;

    int initWorks() throws RemoteException;

    void killProcess(int target) throws RemoteException;

    List<MindShareFileInfo> listFiles(String path) throws RemoteException;

    ParcelFileDescriptor openAsParcelFile(String path) throws RemoteException;

    void syncAllPackages() throws RemoteException;

    void syncPackage(String pkgName, int userId) throws RemoteException;
}
