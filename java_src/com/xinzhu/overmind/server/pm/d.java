package com.xinzhu.overmind.server.pm;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.xinzhu.overmind.entity.pm.InstallOption;
import com.xinzhu.overmind.entity.pm.InstallResult;
import com.xinzhu.overmind.entity.pm.InstalledPackage;
import java.util.List;
/* compiled from: IMindPackageManagerService.java */
/* loaded from: classes.dex */
public interface d extends IInterface {

    /* compiled from: IMindPackageManagerService.java */
    /* loaded from: classes3.dex */
    public static class a implements d {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public void deleteUser(int userId) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public void doTransferInstalls() throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public void doTransferInstallsOnlyForMainPackage() throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public ActivityInfo getActivityInfo(ComponentName component, int flags, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public ApplicationInfo getApplicationInfo(String packageName, int flags, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public int getComponentEnabledSetting(ComponentName componentName, int userId) throws RemoteException {
            return 0;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public List<ApplicationInfo> getInstalledApplications(int flags, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public List<PackageInfo> getInstalledPackages(int flags, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public List<InstalledPackage> getInstalledPackagesAsUser(int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public MindPackageSettings getMindPackageSettings(String packageName) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public PackageInfo getPackageInfo(String packageName, int flags, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public String[] getPackagesForUid(int uid) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public ProviderInfo getProviderInfo(ComponentName component, int flags, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public ActivityInfo getReceiverInfo(ComponentName component, int flags, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public ServiceInfo getServiceInfo(ComponentName component, int flags, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public InstallResult installPackageAsExist(String packageName, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public InstallResult installPackageAsUser(String file, InstallOption option, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public boolean isInstalled(String packageName, int userId) throws RemoteException {
            return false;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public List<ResolveInfo> queryBroadcastReceivers(Intent intent, int flags, String resolvedType, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public List<ProviderInfo> queryContentProviders(String processName, int uid, int flags, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public List<ResolveInfo> queryIntentActivities(Intent intent, int flags, String resolvedType, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public List<ResolveInfo> queryIntentServices(Intent intent, int flags, String resolvedType, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public ResolveInfo resolveActivity(Intent intent, int flags, String resolvedType, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public ProviderInfo resolveContentProvider(String authority, int flag, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public ResolveInfo resolveIntent(Intent intent, String resolvedType, int flags, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public ResolveInfo resolveService(Intent intent, int flags, String resolvedType, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public void setComponentEnabledSetting(ComponentName componentName, int newState, int flags, int userId) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public void setMindPackageRunWithPlugin(String packageName, boolean runWithPlugin) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public void uninstallPackage(String packageName) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public void uninstallPackageAsUser(String packageName, int userId) throws RemoteException {
        }
    }

    /* compiled from: IMindPackageManagerService.java */
    /* loaded from: classes.dex */
    public static abstract class b extends Binder implements d {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.server.pm.IMindPackageManagerService";
        static final int TRANSACTION_deleteUser = 21;
        static final int TRANSACTION_doTransferInstalls = 28;
        static final int TRANSACTION_doTransferInstallsOnlyForMainPackage = 29;
        static final int TRANSACTION_getActivityInfo = 9;
        static final int TRANSACTION_getApplicationInfo = 5;
        static final int TRANSACTION_getComponentEnabledSetting = 25;
        static final int TRANSACTION_getInstalledApplications = 11;
        static final int TRANSACTION_getInstalledPackages = 12;
        static final int TRANSACTION_getInstalledPackagesAsUser = 23;
        static final int TRANSACTION_getMindPackageSettings = 26;
        static final int TRANSACTION_getPackageInfo = 6;
        static final int TRANSACTION_getPackagesForUid = 30;
        static final int TRANSACTION_getProviderInfo = 10;
        static final int TRANSACTION_getReceiverInfo = 8;
        static final int TRANSACTION_getServiceInfo = 7;
        static final int TRANSACTION_installPackageAsExist = 18;
        static final int TRANSACTION_installPackageAsUser = 17;
        static final int TRANSACTION_isInstalled = 22;
        static final int TRANSACTION_queryBroadcastReceivers = 15;
        static final int TRANSACTION_queryContentProviders = 16;
        static final int TRANSACTION_queryIntentActivities = 13;
        static final int TRANSACTION_queryIntentServices = 14;
        static final int TRANSACTION_resolveActivity = 2;
        static final int TRANSACTION_resolveContentProvider = 3;
        static final int TRANSACTION_resolveIntent = 4;
        static final int TRANSACTION_resolveService = 1;
        static final int TRANSACTION_setComponentEnabledSetting = 24;
        static final int TRANSACTION_setMindPackageRunWithPlugin = 27;
        static final int TRANSACTION_uninstallPackage = 20;
        static final int TRANSACTION_uninstallPackageAsUser = 19;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IMindPackageManagerService.java */
        /* loaded from: classes3.dex */
        public static class a implements d {

            /* renamed from: b  reason: collision with root package name */
            public static d f64592b;

            /* renamed from: a  reason: collision with root package name */
            private IBinder f64593a;

            a(IBinder remote) {
                this.f64593a = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f64593a;
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public void deleteUser(int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeInt(userId);
                    if (!this.f64593a.transact(21, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().deleteUser(userId);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public void doTransferInstalls() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (!this.f64593a.transact(28, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().doTransferInstalls();
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public void doTransferInstallsOnlyForMainPackage() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (!this.f64593a.transact(29, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().doTransferInstallsOnlyForMainPackage();
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public ActivityInfo getActivityInfo(ComponentName component, int flags, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (component != null) {
                        obtain.writeInt(1);
                        component.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(flags);
                    obtain.writeInt(userId);
                    if (!this.f64593a.transact(9, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getActivityInfo(component, flags, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (ActivityInfo) ActivityInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public ApplicationInfo getApplicationInfo(String packageName, int flags, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(packageName);
                    obtain.writeInt(flags);
                    obtain.writeInt(userId);
                    if (!this.f64593a.transact(5, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getApplicationInfo(packageName, flags, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (ApplicationInfo) ApplicationInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public int getComponentEnabledSetting(ComponentName componentName, int userId) throws RemoteException {
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
                    obtain.writeInt(userId);
                    if (!this.f64593a.transact(25, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getComponentEnabledSetting(componentName, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public List<ApplicationInfo> getInstalledApplications(int flags, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeInt(flags);
                    obtain.writeInt(userId);
                    if (!this.f64593a.transact(11, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getInstalledApplications(flags, userId);
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(ApplicationInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public List<PackageInfo> getInstalledPackages(int flags, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeInt(flags);
                    obtain.writeInt(userId);
                    if (!this.f64593a.transact(12, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getInstalledPackages(flags, userId);
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(PackageInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public List<InstalledPackage> getInstalledPackagesAsUser(int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeInt(userId);
                    if (!this.f64593a.transact(23, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getInstalledPackagesAsUser(userId);
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(InstalledPackage.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public MindPackageSettings getMindPackageSettings(String packageName) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(packageName);
                    if (!this.f64593a.transact(26, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getMindPackageSettings(packageName);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? MindPackageSettings.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public PackageInfo getPackageInfo(String packageName, int flags, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(packageName);
                    obtain.writeInt(flags);
                    obtain.writeInt(userId);
                    if (!this.f64593a.transact(6, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getPackageInfo(packageName, flags, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (PackageInfo) PackageInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public String[] getPackagesForUid(int uid) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeInt(uid);
                    if (!this.f64593a.transact(30, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getPackagesForUid(uid);
                    }
                    obtain2.readException();
                    return obtain2.createStringArray();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public ProviderInfo getProviderInfo(ComponentName component, int flags, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (component != null) {
                        obtain.writeInt(1);
                        component.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(flags);
                    obtain.writeInt(userId);
                    if (!this.f64593a.transact(10, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getProviderInfo(component, flags, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (ProviderInfo) ProviderInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public ActivityInfo getReceiverInfo(ComponentName component, int flags, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (component != null) {
                        obtain.writeInt(1);
                        component.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(flags);
                    obtain.writeInt(userId);
                    if (!this.f64593a.transact(8, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getReceiverInfo(component, flags, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (ActivityInfo) ActivityInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public ServiceInfo getServiceInfo(ComponentName component, int flags, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (component != null) {
                        obtain.writeInt(1);
                        component.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(flags);
                    obtain.writeInt(userId);
                    if (!this.f64593a.transact(7, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getServiceInfo(component, flags, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (ServiceInfo) ServiceInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public InstallResult installPackageAsExist(String packageName, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(packageName);
                    obtain.writeInt(userId);
                    if (!this.f64593a.transact(18, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().installPackageAsExist(packageName, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? InstallResult.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public InstallResult installPackageAsUser(String file, InstallOption option, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(file);
                    if (option != null) {
                        obtain.writeInt(1);
                        option.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(userId);
                    if (!this.f64593a.transact(17, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().installPackageAsUser(file, option, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? InstallResult.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public boolean isInstalled(String packageName, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(packageName);
                    obtain.writeInt(userId);
                    if (!this.f64593a.transact(22, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().isInstalled(packageName, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String m() {
                return b.DESCRIPTOR;
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public List<ResolveInfo> queryBroadcastReceivers(Intent intent, int flags, String resolvedType, int userId) throws RemoteException {
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
                    obtain.writeInt(flags);
                    obtain.writeString(resolvedType);
                    obtain.writeInt(userId);
                    if (!this.f64593a.transact(15, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().queryBroadcastReceivers(intent, flags, resolvedType, userId);
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(ResolveInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public List<ProviderInfo> queryContentProviders(String processName, int uid, int flags, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(processName);
                    obtain.writeInt(uid);
                    obtain.writeInt(flags);
                    obtain.writeInt(userId);
                    if (!this.f64593a.transact(16, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().queryContentProviders(processName, uid, flags, userId);
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(ProviderInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public List<ResolveInfo> queryIntentActivities(Intent intent, int flags, String resolvedType, int userId) throws RemoteException {
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
                    obtain.writeInt(flags);
                    obtain.writeString(resolvedType);
                    obtain.writeInt(userId);
                    if (!this.f64593a.transact(13, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().queryIntentActivities(intent, flags, resolvedType, userId);
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(ResolveInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public List<ResolveInfo> queryIntentServices(Intent intent, int flags, String resolvedType, int userId) throws RemoteException {
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
                    obtain.writeInt(flags);
                    obtain.writeString(resolvedType);
                    obtain.writeInt(userId);
                    if (!this.f64593a.transact(14, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().queryIntentServices(intent, flags, resolvedType, userId);
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(ResolveInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public ResolveInfo resolveActivity(Intent intent, int flags, String resolvedType, int userId) throws RemoteException {
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
                    obtain.writeInt(flags);
                    obtain.writeString(resolvedType);
                    obtain.writeInt(userId);
                    if (!this.f64593a.transact(2, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().resolveActivity(intent, flags, resolvedType, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (ResolveInfo) ResolveInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public ProviderInfo resolveContentProvider(String authority, int flag, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(authority);
                    obtain.writeInt(flag);
                    obtain.writeInt(userId);
                    if (!this.f64593a.transact(3, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().resolveContentProvider(authority, flag, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (ProviderInfo) ProviderInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public ResolveInfo resolveIntent(Intent intent, String resolvedType, int flags, int userId) throws RemoteException {
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
                    obtain.writeString(resolvedType);
                    obtain.writeInt(flags);
                    obtain.writeInt(userId);
                    if (!this.f64593a.transact(4, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().resolveIntent(intent, resolvedType, flags, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (ResolveInfo) ResolveInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public ResolveInfo resolveService(Intent intent, int flags, String resolvedType, int userId) throws RemoteException {
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
                    obtain.writeInt(flags);
                    obtain.writeString(resolvedType);
                    obtain.writeInt(userId);
                    if (!this.f64593a.transact(1, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().resolveService(intent, flags, resolvedType, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (ResolveInfo) ResolveInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public void setComponentEnabledSetting(ComponentName componentName, int newState, int flags, int userId) throws RemoteException {
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
                    obtain.writeInt(newState);
                    obtain.writeInt(flags);
                    obtain.writeInt(userId);
                    if (!this.f64593a.transact(24, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().setComponentEnabledSetting(componentName, newState, flags, userId);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public void setMindPackageRunWithPlugin(String packageName, boolean runWithPlugin) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(packageName);
                    obtain.writeInt(runWithPlugin ? 1 : 0);
                    if (!this.f64593a.transact(27, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().setMindPackageRunWithPlugin(packageName, runWithPlugin);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public void uninstallPackage(String packageName) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(packageName);
                    if (!this.f64593a.transact(20, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().uninstallPackage(packageName);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public void uninstallPackageAsUser(String packageName, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(packageName);
                    obtain.writeInt(userId);
                    if (!this.f64593a.transact(19, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().uninstallPackageAsUser(packageName, userId);
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
            return a.f64592b;
        }

        public static boolean setDefaultImpl(d impl) {
            if (a.f64592b == null) {
                if (impl != null) {
                    a.f64592b = impl;
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
                        ResolveInfo resolveService = resolveService(data.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(data) : null, data.readInt(), data.readString(), data.readInt());
                        reply.writeNoException();
                        if (resolveService != null) {
                            reply.writeInt(1);
                            resolveService.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 2:
                        data.enforceInterface(DESCRIPTOR);
                        ResolveInfo resolveActivity = resolveActivity(data.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(data) : null, data.readInt(), data.readString(), data.readInt());
                        reply.writeNoException();
                        if (resolveActivity != null) {
                            reply.writeInt(1);
                            resolveActivity.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 3:
                        data.enforceInterface(DESCRIPTOR);
                        ProviderInfo resolveContentProvider = resolveContentProvider(data.readString(), data.readInt(), data.readInt());
                        reply.writeNoException();
                        if (resolveContentProvider != null) {
                            reply.writeInt(1);
                            resolveContentProvider.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 4:
                        data.enforceInterface(DESCRIPTOR);
                        ResolveInfo resolveIntent = resolveIntent(data.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(data) : null, data.readString(), data.readInt(), data.readInt());
                        reply.writeNoException();
                        if (resolveIntent != null) {
                            reply.writeInt(1);
                            resolveIntent.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 5:
                        data.enforceInterface(DESCRIPTOR);
                        ApplicationInfo applicationInfo = getApplicationInfo(data.readString(), data.readInt(), data.readInt());
                        reply.writeNoException();
                        if (applicationInfo != null) {
                            reply.writeInt(1);
                            applicationInfo.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 6:
                        data.enforceInterface(DESCRIPTOR);
                        PackageInfo packageInfo = getPackageInfo(data.readString(), data.readInt(), data.readInt());
                        reply.writeNoException();
                        if (packageInfo != null) {
                            reply.writeInt(1);
                            packageInfo.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 7:
                        data.enforceInterface(DESCRIPTOR);
                        ServiceInfo serviceInfo = getServiceInfo(data.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(data) : null, data.readInt(), data.readInt());
                        reply.writeNoException();
                        if (serviceInfo != null) {
                            reply.writeInt(1);
                            serviceInfo.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 8:
                        data.enforceInterface(DESCRIPTOR);
                        ActivityInfo receiverInfo = getReceiverInfo(data.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(data) : null, data.readInt(), data.readInt());
                        reply.writeNoException();
                        if (receiverInfo != null) {
                            reply.writeInt(1);
                            receiverInfo.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 9:
                        data.enforceInterface(DESCRIPTOR);
                        ActivityInfo activityInfo = getActivityInfo(data.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(data) : null, data.readInt(), data.readInt());
                        reply.writeNoException();
                        if (activityInfo != null) {
                            reply.writeInt(1);
                            activityInfo.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 10:
                        data.enforceInterface(DESCRIPTOR);
                        ProviderInfo providerInfo = getProviderInfo(data.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(data) : null, data.readInt(), data.readInt());
                        reply.writeNoException();
                        if (providerInfo != null) {
                            reply.writeInt(1);
                            providerInfo.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 11:
                        data.enforceInterface(DESCRIPTOR);
                        List<ApplicationInfo> installedApplications = getInstalledApplications(data.readInt(), data.readInt());
                        reply.writeNoException();
                        reply.writeTypedList(installedApplications);
                        return true;
                    case 12:
                        data.enforceInterface(DESCRIPTOR);
                        List<PackageInfo> installedPackages = getInstalledPackages(data.readInt(), data.readInt());
                        reply.writeNoException();
                        reply.writeTypedList(installedPackages);
                        return true;
                    case 13:
                        data.enforceInterface(DESCRIPTOR);
                        List<ResolveInfo> queryIntentActivities = queryIntentActivities(data.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(data) : null, data.readInt(), data.readString(), data.readInt());
                        reply.writeNoException();
                        reply.writeTypedList(queryIntentActivities);
                        return true;
                    case 14:
                        data.enforceInterface(DESCRIPTOR);
                        List<ResolveInfo> queryIntentServices = queryIntentServices(data.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(data) : null, data.readInt(), data.readString(), data.readInt());
                        reply.writeNoException();
                        reply.writeTypedList(queryIntentServices);
                        return true;
                    case 15:
                        data.enforceInterface(DESCRIPTOR);
                        List<ResolveInfo> queryBroadcastReceivers = queryBroadcastReceivers(data.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(data) : null, data.readInt(), data.readString(), data.readInt());
                        reply.writeNoException();
                        reply.writeTypedList(queryBroadcastReceivers);
                        return true;
                    case 16:
                        data.enforceInterface(DESCRIPTOR);
                        List<ProviderInfo> queryContentProviders = queryContentProviders(data.readString(), data.readInt(), data.readInt(), data.readInt());
                        reply.writeNoException();
                        reply.writeTypedList(queryContentProviders);
                        return true;
                    case 17:
                        data.enforceInterface(DESCRIPTOR);
                        InstallResult installPackageAsUser = installPackageAsUser(data.readString(), data.readInt() != 0 ? InstallOption.CREATOR.createFromParcel(data) : null, data.readInt());
                        reply.writeNoException();
                        if (installPackageAsUser != null) {
                            reply.writeInt(1);
                            installPackageAsUser.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 18:
                        data.enforceInterface(DESCRIPTOR);
                        InstallResult installPackageAsExist = installPackageAsExist(data.readString(), data.readInt());
                        reply.writeNoException();
                        if (installPackageAsExist != null) {
                            reply.writeInt(1);
                            installPackageAsExist.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 19:
                        data.enforceInterface(DESCRIPTOR);
                        uninstallPackageAsUser(data.readString(), data.readInt());
                        reply.writeNoException();
                        return true;
                    case 20:
                        data.enforceInterface(DESCRIPTOR);
                        uninstallPackage(data.readString());
                        reply.writeNoException();
                        return true;
                    case 21:
                        data.enforceInterface(DESCRIPTOR);
                        deleteUser(data.readInt());
                        reply.writeNoException();
                        return true;
                    case 22:
                        data.enforceInterface(DESCRIPTOR);
                        boolean isInstalled = isInstalled(data.readString(), data.readInt());
                        reply.writeNoException();
                        reply.writeInt(isInstalled ? 1 : 0);
                        return true;
                    case 23:
                        data.enforceInterface(DESCRIPTOR);
                        List<InstalledPackage> installedPackagesAsUser = getInstalledPackagesAsUser(data.readInt());
                        reply.writeNoException();
                        reply.writeTypedList(installedPackagesAsUser);
                        return true;
                    case 24:
                        data.enforceInterface(DESCRIPTOR);
                        setComponentEnabledSetting(data.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(data) : null, data.readInt(), data.readInt(), data.readInt());
                        reply.writeNoException();
                        return true;
                    case 25:
                        data.enforceInterface(DESCRIPTOR);
                        int componentEnabledSetting = getComponentEnabledSetting(data.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(data) : null, data.readInt());
                        reply.writeNoException();
                        reply.writeInt(componentEnabledSetting);
                        return true;
                    case 26:
                        data.enforceInterface(DESCRIPTOR);
                        MindPackageSettings mindPackageSettings = getMindPackageSettings(data.readString());
                        reply.writeNoException();
                        if (mindPackageSettings != null) {
                            reply.writeInt(1);
                            mindPackageSettings.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 27:
                        data.enforceInterface(DESCRIPTOR);
                        setMindPackageRunWithPlugin(data.readString(), data.readInt() != 0);
                        reply.writeNoException();
                        return true;
                    case 28:
                        data.enforceInterface(DESCRIPTOR);
                        doTransferInstalls();
                        reply.writeNoException();
                        return true;
                    case 29:
                        data.enforceInterface(DESCRIPTOR);
                        doTransferInstallsOnlyForMainPackage();
                        reply.writeNoException();
                        return true;
                    case 30:
                        data.enforceInterface(DESCRIPTOR);
                        String[] packagesForUid = getPackagesForUid(data.readInt());
                        reply.writeNoException();
                        reply.writeStringArray(packagesForUid);
                        return true;
                    default:
                        return super.onTransact(code, data, reply, flags);
                }
            }
            reply.writeString(DESCRIPTOR);
            return true;
        }
    }

    void deleteUser(int userId) throws RemoteException;

    void doTransferInstalls() throws RemoteException;

    void doTransferInstallsOnlyForMainPackage() throws RemoteException;

    ActivityInfo getActivityInfo(ComponentName component, int flags, int userId) throws RemoteException;

    ApplicationInfo getApplicationInfo(String packageName, int flags, int userId) throws RemoteException;

    int getComponentEnabledSetting(ComponentName componentName, int userId) throws RemoteException;

    List<ApplicationInfo> getInstalledApplications(int flags, int userId) throws RemoteException;

    List<PackageInfo> getInstalledPackages(int flags, int userId) throws RemoteException;

    List<InstalledPackage> getInstalledPackagesAsUser(int userId) throws RemoteException;

    MindPackageSettings getMindPackageSettings(String packageName) throws RemoteException;

    PackageInfo getPackageInfo(String packageName, int flags, int userId) throws RemoteException;

    String[] getPackagesForUid(int uid) throws RemoteException;

    ProviderInfo getProviderInfo(ComponentName component, int flags, int userId) throws RemoteException;

    ActivityInfo getReceiverInfo(ComponentName component, int flags, int userId) throws RemoteException;

    ServiceInfo getServiceInfo(ComponentName component, int flags, int userId) throws RemoteException;

    InstallResult installPackageAsExist(String packageName, int userId) throws RemoteException;

    InstallResult installPackageAsUser(String file, InstallOption option, int userId) throws RemoteException;

    boolean isInstalled(String packageName, int userId) throws RemoteException;

    List<ResolveInfo> queryBroadcastReceivers(Intent intent, int flags, String resolvedType, int userId) throws RemoteException;

    List<ProviderInfo> queryContentProviders(String processName, int uid, int flags, int userId) throws RemoteException;

    List<ResolveInfo> queryIntentActivities(Intent intent, int flags, String resolvedType, int userId) throws RemoteException;

    List<ResolveInfo> queryIntentServices(Intent intent, int flags, String resolvedType, int userId) throws RemoteException;

    ResolveInfo resolveActivity(Intent intent, int flags, String resolvedType, int userId) throws RemoteException;

    ProviderInfo resolveContentProvider(String authority, int flag, int userId) throws RemoteException;

    ResolveInfo resolveIntent(Intent intent, String resolvedType, int flags, int userId) throws RemoteException;

    ResolveInfo resolveService(Intent intent, int flags, String resolvedType, int userId) throws RemoteException;

    void setComponentEnabledSetting(ComponentName componentName, int newState, int flags, int userId) throws RemoteException;

    void setMindPackageRunWithPlugin(String packageName, boolean runWithPlugin) throws RemoteException;

    void uninstallPackage(String packageName) throws RemoteException;

    void uninstallPackageAsUser(String packageName, int userId) throws RemoteException;
}
