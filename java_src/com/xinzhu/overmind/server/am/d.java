package com.xinzhu.overmind.server.am;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ProviderInfo;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.xinzhu.overmind.entity.ClientConfig;
import com.xinzhu.overmind.entity.PendingIntentRecord;
import com.xinzhu.overmind.entity.UnbindRecord;
import com.xinzhu.overmind.server.ProcessRecord;
/* compiled from: IMindActivityManagerService.java */
/* loaded from: classes.dex */
public interface d extends IInterface {

    /* compiled from: IMindActivityManagerService.java */
    /* loaded from: classes3.dex */
    public static class a implements d {
        @Override // com.xinzhu.overmind.server.am.d
        public IBinder acquireContentProviderClient(ProviderInfo providerInfo) throws RemoteException {
            return null;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public Intent bindService(Intent service, IBinder binder, String resolvedType, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public PendingIntentRecord findPendingIntent(IBinder intentSender) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public ProcessRecord findProcessRecordByPid(int pid) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public ComponentName getCallingActivity(IBinder token) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public String getCallingPackage(IBinder token) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public String getLaunchedFromPackage(IBinder token) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public int getLaunchedFromUid(IBinder token) throws RemoteException {
            return 0;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public MindTaskInfo getTaskInfo(int taskId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public ClientConfig initProcess(String packageName, String processName, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void onActivityCreated(int taskId, IBinder token, IBinder activityRecord) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void onActivityDestroyed(IBinder token) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void onActivityResumed(IBinder token) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void onFinishActivity(IBinder token) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void onFinishActivityAffinity(IBinder token) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void onServiceDestroy(Intent proxyIntent, int userId) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.d
        public UnbindRecord onServiceUnbind(Intent proxyIntent, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void onStartCommand(Intent proxyIntent, int userId) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.d
        public IBinder peekService(Intent intent, String resolvedType, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void registerPendingIntent(PendingIntentRecord record) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void restartProcess(String packageName, String processName, int userId) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.d
        public Intent sendBroadcast(Intent intent, String resolvedType, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public int startActivities(int userId, String callingPackage, Intent[] intent, String[] resolvedType, IBinder resultTo, Bundle options) throws RemoteException {
            return 0;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void startActivity(Intent intent, int userId) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.d
        public int startActivityAms(int userId, String callingPackage, Intent intent, String resolvedType, IBinder resultTo, String resultWho, int requestCode, int flags, Bundle options) throws RemoteException {
            return 0;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public int startActivityFromExistTask(Intent intent, int userId) throws RemoteException {
            return 0;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public Intent startService(Intent intent, String resolvedType, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void stopPackage(String packageName, int userId) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.d
        public Intent stopService(Intent intent, String resolvedType, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void unbindService(IBinder binder, int userId) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void unregisterPendingIntent(IBinder intentSender) throws RemoteException {
        }
    }

    /* compiled from: IMindActivityManagerService.java */
    /* loaded from: classes.dex */
    public static abstract class b extends Binder implements d {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.server.am.IMindActivityManagerService";
        static final int TRANSACTION_acquireContentProviderClient = 15;
        static final int TRANSACTION_bindService = 10;
        static final int TRANSACTION_findPendingIntent = 27;
        static final int TRANSACTION_findProcessRecordByPid = 28;
        static final int TRANSACTION_getCallingActivity = 23;
        static final int TRANSACTION_getCallingPackage = 24;
        static final int TRANSACTION_getLaunchedFromPackage = 30;
        static final int TRANSACTION_getLaunchedFromUid = 29;
        static final int TRANSACTION_getTaskInfo = 31;
        static final int TRANSACTION_initProcess = 1;
        static final int TRANSACTION_onActivityCreated = 18;
        static final int TRANSACTION_onActivityDestroyed = 20;
        static final int TRANSACTION_onActivityResumed = 19;
        static final int TRANSACTION_onFinishActivity = 21;
        static final int TRANSACTION_onFinishActivityAffinity = 22;
        static final int TRANSACTION_onServiceDestroy = 14;
        static final int TRANSACTION_onServiceUnbind = 13;
        static final int TRANSACTION_onStartCommand = 12;
        static final int TRANSACTION_peekService = 17;
        static final int TRANSACTION_registerPendingIntent = 25;
        static final int TRANSACTION_restartProcess = 2;
        static final int TRANSACTION_sendBroadcast = 16;
        static final int TRANSACTION_startActivities = 6;
        static final int TRANSACTION_startActivity = 3;
        static final int TRANSACTION_startActivityAms = 5;
        static final int TRANSACTION_startActivityFromExistTask = 4;
        static final int TRANSACTION_startService = 8;
        static final int TRANSACTION_stopPackage = 7;
        static final int TRANSACTION_stopService = 9;
        static final int TRANSACTION_unbindService = 11;
        static final int TRANSACTION_unregisterPendingIntent = 26;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IMindActivityManagerService.java */
        /* loaded from: classes3.dex */
        public static class a implements d {

            /* renamed from: b  reason: collision with root package name */
            public static d f64438b;

            /* renamed from: a  reason: collision with root package name */
            private IBinder f64439a;

            a(IBinder remote) {
                this.f64439a = remote;
            }

            @Override // com.xinzhu.overmind.server.am.d
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
                    if (!this.f64439a.transact(15, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
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
                return this.f64439a;
            }

            @Override // com.xinzhu.overmind.server.am.d
            public Intent bindService(Intent service, IBinder binder, String resolvedType, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (service != null) {
                        obtain.writeInt(1);
                        service.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(binder);
                    obtain.writeString(resolvedType);
                    obtain.writeInt(userId);
                    if (!this.f64439a.transact(10, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().bindService(service, binder, resolvedType, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public PendingIntentRecord findPendingIntent(IBinder intentSender) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(intentSender);
                    if (!this.f64439a.transact(27, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().findPendingIntent(intentSender);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? PendingIntentRecord.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public ProcessRecord findProcessRecordByPid(int pid) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeInt(pid);
                    if (!this.f64439a.transact(28, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().findProcessRecordByPid(pid);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? ProcessRecord.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public ComponentName getCallingActivity(IBinder token) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(token);
                    if (!this.f64439a.transact(23, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getCallingActivity(token);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public String getCallingPackage(IBinder token) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(token);
                    if (!this.f64439a.transact(24, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getCallingPackage(token);
                    }
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public String getLaunchedFromPackage(IBinder token) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(token);
                    if (!this.f64439a.transact(30, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getLaunchedFromPackage(token);
                    }
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public int getLaunchedFromUid(IBinder token) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(token);
                    if (!this.f64439a.transact(29, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getLaunchedFromUid(token);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public MindTaskInfo getTaskInfo(int taskId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeInt(taskId);
                    if (!this.f64439a.transact(31, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getTaskInfo(taskId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? MindTaskInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public ClientConfig initProcess(String packageName, String processName, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(packageName);
                    obtain.writeString(processName);
                    obtain.writeInt(userId);
                    if (!this.f64439a.transact(1, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().initProcess(packageName, processName, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? ClientConfig.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String m() {
                return b.DESCRIPTOR;
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void onActivityCreated(int taskId, IBinder token, IBinder activityRecord) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeInt(taskId);
                    obtain.writeStrongBinder(token);
                    obtain.writeStrongBinder(activityRecord);
                    if (!this.f64439a.transact(18, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().onActivityCreated(taskId, token, activityRecord);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void onActivityDestroyed(IBinder token) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(token);
                    if (!this.f64439a.transact(20, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().onActivityDestroyed(token);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void onActivityResumed(IBinder token) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(token);
                    if (!this.f64439a.transact(19, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().onActivityResumed(token);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void onFinishActivity(IBinder token) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(token);
                    if (!this.f64439a.transact(21, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().onFinishActivity(token);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void onFinishActivityAffinity(IBinder token) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(token);
                    if (!this.f64439a.transact(22, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().onFinishActivityAffinity(token);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void onServiceDestroy(Intent proxyIntent, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (proxyIntent != null) {
                        obtain.writeInt(1);
                        proxyIntent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(userId);
                    if (!this.f64439a.transact(14, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().onServiceDestroy(proxyIntent, userId);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public UnbindRecord onServiceUnbind(Intent proxyIntent, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (proxyIntent != null) {
                        obtain.writeInt(1);
                        proxyIntent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(userId);
                    if (!this.f64439a.transact(13, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().onServiceUnbind(proxyIntent, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? UnbindRecord.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void onStartCommand(Intent proxyIntent, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (proxyIntent != null) {
                        obtain.writeInt(1);
                        proxyIntent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(userId);
                    if (!this.f64439a.transact(12, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().onStartCommand(proxyIntent, userId);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public IBinder peekService(Intent intent, String resolvedType, int userId) throws RemoteException {
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
                    obtain.writeInt(userId);
                    if (!this.f64439a.transact(17, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().peekService(intent, resolvedType, userId);
                    }
                    obtain2.readException();
                    return obtain2.readStrongBinder();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void registerPendingIntent(PendingIntentRecord record) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (record != null) {
                        obtain.writeInt(1);
                        record.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f64439a.transact(25, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().registerPendingIntent(record);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void restartProcess(String packageName, String processName, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(packageName);
                    obtain.writeString(processName);
                    obtain.writeInt(userId);
                    if (!this.f64439a.transact(2, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().restartProcess(packageName, processName, userId);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public Intent sendBroadcast(Intent intent, String resolvedType, int userId) throws RemoteException {
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
                    obtain.writeInt(userId);
                    if (!this.f64439a.transact(16, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().sendBroadcast(intent, resolvedType, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public int startActivities(int userId, String callingPackage, Intent[] intent, String[] resolvedType, IBinder resultTo, Bundle options) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeInt(userId);
                    obtain.writeString(callingPackage);
                    obtain.writeTypedArray(intent, 0);
                    obtain.writeStringArray(resolvedType);
                    obtain.writeStrongBinder(resultTo);
                    if (options != null) {
                        obtain.writeInt(1);
                        options.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    try {
                        if (!this.f64439a.transact(6, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                            int startActivities = b.getDefaultImpl().startActivities(userId, callingPackage, intent, resolvedType, resultTo, options);
                            obtain2.recycle();
                            obtain.recycle();
                            return startActivities;
                        }
                        obtain2.readException();
                        int readInt = obtain2.readInt();
                        obtain2.recycle();
                        obtain.recycle();
                        return readInt;
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

            @Override // com.xinzhu.overmind.server.am.d
            public void startActivity(Intent intent, int userId) throws RemoteException {
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
                    obtain.writeInt(userId);
                    if (!this.f64439a.transact(3, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().startActivity(intent, userId);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public int startActivityAms(int userId, String callingPackage, Intent intent, String resolvedType, IBinder resultTo, String resultWho, int requestCode, int flags, Bundle options) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeInt(userId);
                    obtain.writeString(callingPackage);
                    if (intent != null) {
                        obtain.writeInt(1);
                        intent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(resolvedType);
                    obtain.writeStrongBinder(resultTo);
                    obtain.writeString(resultWho);
                    obtain.writeInt(requestCode);
                    obtain.writeInt(flags);
                    if (options != null) {
                        obtain.writeInt(1);
                        options.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    try {
                        if (!this.f64439a.transact(5, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                            int startActivityAms = b.getDefaultImpl().startActivityAms(userId, callingPackage, intent, resolvedType, resultTo, resultWho, requestCode, flags, options);
                            obtain2.recycle();
                            obtain.recycle();
                            return startActivityAms;
                        }
                        obtain2.readException();
                        int readInt = obtain2.readInt();
                        obtain2.recycle();
                        obtain.recycle();
                        return readInt;
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

            @Override // com.xinzhu.overmind.server.am.d
            public int startActivityFromExistTask(Intent intent, int userId) throws RemoteException {
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
                    obtain.writeInt(userId);
                    if (!this.f64439a.transact(4, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().startActivityFromExistTask(intent, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public Intent startService(Intent intent, String resolvedType, int userId) throws RemoteException {
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
                    obtain.writeInt(userId);
                    if (!this.f64439a.transact(8, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().startService(intent, resolvedType, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void stopPackage(String packageName, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(packageName);
                    obtain.writeInt(userId);
                    if (!this.f64439a.transact(7, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().stopPackage(packageName, userId);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public Intent stopService(Intent intent, String resolvedType, int userId) throws RemoteException {
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
                    obtain.writeInt(userId);
                    if (!this.f64439a.transact(9, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().stopService(intent, resolvedType, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void unbindService(IBinder binder, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(binder);
                    obtain.writeInt(userId);
                    if (!this.f64439a.transact(11, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().unbindService(binder, userId);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void unregisterPendingIntent(IBinder intentSender) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(intentSender);
                    if (!this.f64439a.transact(26, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().unregisterPendingIntent(intentSender);
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
            return a.f64438b;
        }

        public static boolean setDefaultImpl(d impl) {
            if (a.f64438b == null) {
                if (impl != null) {
                    a.f64438b = impl;
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
                        ClientConfig initProcess = initProcess(data.readString(), data.readString(), data.readInt());
                        reply.writeNoException();
                        if (initProcess != null) {
                            reply.writeInt(1);
                            initProcess.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 2:
                        data.enforceInterface(DESCRIPTOR);
                        restartProcess(data.readString(), data.readString(), data.readInt());
                        reply.writeNoException();
                        return true;
                    case 3:
                        data.enforceInterface(DESCRIPTOR);
                        startActivity(data.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(data) : null, data.readInt());
                        reply.writeNoException();
                        return true;
                    case 4:
                        data.enforceInterface(DESCRIPTOR);
                        int startActivityFromExistTask = startActivityFromExistTask(data.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(data) : null, data.readInt());
                        reply.writeNoException();
                        reply.writeInt(startActivityFromExistTask);
                        return true;
                    case 5:
                        data.enforceInterface(DESCRIPTOR);
                        int startActivityAms = startActivityAms(data.readInt(), data.readString(), data.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(data) : null, data.readString(), data.readStrongBinder(), data.readString(), data.readInt(), data.readInt(), data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        reply.writeInt(startActivityAms);
                        return true;
                    case 6:
                        data.enforceInterface(DESCRIPTOR);
                        int startActivities = startActivities(data.readInt(), data.readString(), (Intent[]) data.createTypedArray(Intent.CREATOR), data.createStringArray(), data.readStrongBinder(), data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        reply.writeInt(startActivities);
                        return true;
                    case 7:
                        data.enforceInterface(DESCRIPTOR);
                        stopPackage(data.readString(), data.readInt());
                        reply.writeNoException();
                        return true;
                    case 8:
                        data.enforceInterface(DESCRIPTOR);
                        Intent startService = startService(data.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(data) : null, data.readString(), data.readInt());
                        reply.writeNoException();
                        if (startService != null) {
                            reply.writeInt(1);
                            startService.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 9:
                        data.enforceInterface(DESCRIPTOR);
                        Intent stopService = stopService(data.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(data) : null, data.readString(), data.readInt());
                        reply.writeNoException();
                        if (stopService != null) {
                            reply.writeInt(1);
                            stopService.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 10:
                        data.enforceInterface(DESCRIPTOR);
                        Intent bindService = bindService(data.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(data) : null, data.readStrongBinder(), data.readString(), data.readInt());
                        reply.writeNoException();
                        if (bindService != null) {
                            reply.writeInt(1);
                            bindService.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 11:
                        data.enforceInterface(DESCRIPTOR);
                        unbindService(data.readStrongBinder(), data.readInt());
                        reply.writeNoException();
                        return true;
                    case 12:
                        data.enforceInterface(DESCRIPTOR);
                        onStartCommand(data.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(data) : null, data.readInt());
                        reply.writeNoException();
                        return true;
                    case 13:
                        data.enforceInterface(DESCRIPTOR);
                        UnbindRecord onServiceUnbind = onServiceUnbind(data.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(data) : null, data.readInt());
                        reply.writeNoException();
                        if (onServiceUnbind != null) {
                            reply.writeInt(1);
                            onServiceUnbind.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 14:
                        data.enforceInterface(DESCRIPTOR);
                        onServiceDestroy(data.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(data) : null, data.readInt());
                        reply.writeNoException();
                        return true;
                    case 15:
                        data.enforceInterface(DESCRIPTOR);
                        IBinder acquireContentProviderClient = acquireContentProviderClient(data.readInt() != 0 ? (ProviderInfo) ProviderInfo.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        reply.writeStrongBinder(acquireContentProviderClient);
                        return true;
                    case 16:
                        data.enforceInterface(DESCRIPTOR);
                        Intent sendBroadcast = sendBroadcast(data.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(data) : null, data.readString(), data.readInt());
                        reply.writeNoException();
                        if (sendBroadcast != null) {
                            reply.writeInt(1);
                            sendBroadcast.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 17:
                        data.enforceInterface(DESCRIPTOR);
                        IBinder peekService = peekService(data.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(data) : null, data.readString(), data.readInt());
                        reply.writeNoException();
                        reply.writeStrongBinder(peekService);
                        return true;
                    case 18:
                        data.enforceInterface(DESCRIPTOR);
                        onActivityCreated(data.readInt(), data.readStrongBinder(), data.readStrongBinder());
                        reply.writeNoException();
                        return true;
                    case 19:
                        data.enforceInterface(DESCRIPTOR);
                        onActivityResumed(data.readStrongBinder());
                        reply.writeNoException();
                        return true;
                    case 20:
                        data.enforceInterface(DESCRIPTOR);
                        onActivityDestroyed(data.readStrongBinder());
                        reply.writeNoException();
                        return true;
                    case 21:
                        data.enforceInterface(DESCRIPTOR);
                        onFinishActivity(data.readStrongBinder());
                        reply.writeNoException();
                        return true;
                    case 22:
                        data.enforceInterface(DESCRIPTOR);
                        onFinishActivityAffinity(data.readStrongBinder());
                        reply.writeNoException();
                        return true;
                    case 23:
                        data.enforceInterface(DESCRIPTOR);
                        ComponentName callingActivity = getCallingActivity(data.readStrongBinder());
                        reply.writeNoException();
                        if (callingActivity != null) {
                            reply.writeInt(1);
                            callingActivity.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 24:
                        data.enforceInterface(DESCRIPTOR);
                        String callingPackage = getCallingPackage(data.readStrongBinder());
                        reply.writeNoException();
                        reply.writeString(callingPackage);
                        return true;
                    case 25:
                        data.enforceInterface(DESCRIPTOR);
                        registerPendingIntent(data.readInt() != 0 ? PendingIntentRecord.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        return true;
                    case 26:
                        data.enforceInterface(DESCRIPTOR);
                        unregisterPendingIntent(data.readStrongBinder());
                        reply.writeNoException();
                        return true;
                    case 27:
                        data.enforceInterface(DESCRIPTOR);
                        PendingIntentRecord findPendingIntent = findPendingIntent(data.readStrongBinder());
                        reply.writeNoException();
                        if (findPendingIntent != null) {
                            reply.writeInt(1);
                            findPendingIntent.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 28:
                        data.enforceInterface(DESCRIPTOR);
                        ProcessRecord findProcessRecordByPid = findProcessRecordByPid(data.readInt());
                        reply.writeNoException();
                        if (findProcessRecordByPid != null) {
                            reply.writeInt(1);
                            findProcessRecordByPid.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 29:
                        data.enforceInterface(DESCRIPTOR);
                        int launchedFromUid = getLaunchedFromUid(data.readStrongBinder());
                        reply.writeNoException();
                        reply.writeInt(launchedFromUid);
                        return true;
                    case 30:
                        data.enforceInterface(DESCRIPTOR);
                        String launchedFromPackage = getLaunchedFromPackage(data.readStrongBinder());
                        reply.writeNoException();
                        reply.writeString(launchedFromPackage);
                        return true;
                    case 31:
                        data.enforceInterface(DESCRIPTOR);
                        MindTaskInfo taskInfo = getTaskInfo(data.readInt());
                        reply.writeNoException();
                        if (taskInfo != null) {
                            reply.writeInt(1);
                            taskInfo.writeToParcel(reply, 1);
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

    IBinder acquireContentProviderClient(ProviderInfo providerInfo) throws RemoteException;

    Intent bindService(Intent service, IBinder binder, String resolvedType, int userId) throws RemoteException;

    PendingIntentRecord findPendingIntent(IBinder intentSender) throws RemoteException;

    ProcessRecord findProcessRecordByPid(int pid) throws RemoteException;

    ComponentName getCallingActivity(IBinder token) throws RemoteException;

    String getCallingPackage(IBinder token) throws RemoteException;

    String getLaunchedFromPackage(IBinder token) throws RemoteException;

    int getLaunchedFromUid(IBinder token) throws RemoteException;

    MindTaskInfo getTaskInfo(int taskId) throws RemoteException;

    ClientConfig initProcess(String packageName, String processName, int userId) throws RemoteException;

    void onActivityCreated(int taskId, IBinder token, IBinder activityRecord) throws RemoteException;

    void onActivityDestroyed(IBinder token) throws RemoteException;

    void onActivityResumed(IBinder token) throws RemoteException;

    void onFinishActivity(IBinder token) throws RemoteException;

    void onFinishActivityAffinity(IBinder token) throws RemoteException;

    void onServiceDestroy(Intent proxyIntent, int userId) throws RemoteException;

    UnbindRecord onServiceUnbind(Intent proxyIntent, int userId) throws RemoteException;

    void onStartCommand(Intent proxyIntent, int userId) throws RemoteException;

    IBinder peekService(Intent intent, String resolvedType, int userId) throws RemoteException;

    void registerPendingIntent(PendingIntentRecord record) throws RemoteException;

    void restartProcess(String packageName, String processName, int userId) throws RemoteException;

    Intent sendBroadcast(Intent intent, String resolvedType, int userId) throws RemoteException;

    int startActivities(int userId, String callingPackage, Intent[] intent, String[] resolvedType, IBinder resultTo, Bundle options) throws RemoteException;

    void startActivity(Intent intent, int userId) throws RemoteException;

    int startActivityAms(int userId, String callingPackage, Intent intent, String resolvedType, IBinder resultTo, String resultWho, int requestCode, int flags, Bundle options) throws RemoteException;

    int startActivityFromExistTask(Intent intent, int userId) throws RemoteException;

    Intent startService(Intent intent, String resolvedType, int userId) throws RemoteException;

    void stopPackage(String packageName, int userId) throws RemoteException;

    Intent stopService(Intent intent, String resolvedType, int userId) throws RemoteException;

    void unbindService(IBinder binder, int userId) throws RemoteException;

    void unregisterPendingIntent(IBinder intentSender) throws RemoteException;
}
