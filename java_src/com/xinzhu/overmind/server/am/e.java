package com.xinzhu.overmind.server.am;

import android.app.job.JobInfo;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.xinzhu.overmind.entity.JobRecord;
/* compiled from: IMindJobManagerService.java */
/* loaded from: classes.dex */
public interface e extends IInterface {

    /* compiled from: IMindJobManagerService.java */
    /* loaded from: classes3.dex */
    public static class a implements e {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.e
        public int cancel(String processName, int jobId, int userId) throws RemoteException {
            return 0;
        }

        @Override // com.xinzhu.overmind.server.am.e
        public void cancelAll(String processName, int userId) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.e
        public JobRecord queryJobRecord(String processName, int jobId, int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.e
        public JobInfo schedule(JobInfo info, int userId) throws RemoteException {
            return null;
        }
    }

    /* compiled from: IMindJobManagerService.java */
    /* loaded from: classes.dex */
    public static abstract class b extends Binder implements e {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.server.am.IMindJobManagerService";
        static final int TRANSACTION_cancel = 4;
        static final int TRANSACTION_cancelAll = 3;
        static final int TRANSACTION_queryJobRecord = 2;
        static final int TRANSACTION_schedule = 1;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IMindJobManagerService.java */
        /* loaded from: classes3.dex */
        public static class a implements e {

            /* renamed from: b  reason: collision with root package name */
            public static e f64440b;

            /* renamed from: a  reason: collision with root package name */
            private IBinder f64441a;

            a(IBinder remote) {
                this.f64441a = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f64441a;
            }

            @Override // com.xinzhu.overmind.server.am.e
            public int cancel(String processName, int jobId, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(processName);
                    obtain.writeInt(jobId);
                    obtain.writeInt(userId);
                    if (!this.f64441a.transact(4, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().cancel(processName, jobId, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.e
            public void cancelAll(String processName, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(processName);
                    obtain.writeInt(userId);
                    if (!this.f64441a.transact(3, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().cancelAll(processName, userId);
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

            @Override // com.xinzhu.overmind.server.am.e
            public JobRecord queryJobRecord(String processName, int jobId, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(processName);
                    obtain.writeInt(jobId);
                    obtain.writeInt(userId);
                    if (!this.f64441a.transact(2, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().queryJobRecord(processName, jobId, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? JobRecord.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.e
            public JobInfo schedule(JobInfo info, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (info != null) {
                        obtain.writeInt(1);
                        info.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(userId);
                    if (!this.f64441a.transact(1, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().schedule(info, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (JobInfo) JobInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public b() {
            attachInterface(this, DESCRIPTOR);
        }

        public static e asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof e)) {
                return (e) queryLocalInterface;
            }
            return new a(obj);
        }

        public static e getDefaultImpl() {
            return a.f64440b;
        }

        public static boolean setDefaultImpl(e impl) {
            if (a.f64440b == null) {
                if (impl != null) {
                    a.f64440b = impl;
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
                JobInfo schedule = schedule(data.readInt() != 0 ? (JobInfo) JobInfo.CREATOR.createFromParcel(data) : null, data.readInt());
                reply.writeNoException();
                if (schedule != null) {
                    reply.writeInt(1);
                    schedule.writeToParcel(reply, 1);
                } else {
                    reply.writeInt(0);
                }
                return true;
            } else if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                JobRecord queryJobRecord = queryJobRecord(data.readString(), data.readInt(), data.readInt());
                reply.writeNoException();
                if (queryJobRecord != null) {
                    reply.writeInt(1);
                    queryJobRecord.writeToParcel(reply, 1);
                } else {
                    reply.writeInt(0);
                }
                return true;
            } else if (code == 3) {
                data.enforceInterface(DESCRIPTOR);
                cancelAll(data.readString(), data.readInt());
                reply.writeNoException();
                return true;
            } else if (code != 4) {
                if (code != 1598968902) {
                    return super.onTransact(code, data, reply, flags);
                }
                reply.writeString(DESCRIPTOR);
                return true;
            } else {
                data.enforceInterface(DESCRIPTOR);
                int cancel = cancel(data.readString(), data.readInt(), data.readInt());
                reply.writeNoException();
                reply.writeInt(cancel);
                return true;
            }
        }
    }

    int cancel(String processName, int jobId, int userId) throws RemoteException;

    void cancelAll(String processName, int userId) throws RemoteException;

    JobRecord queryJobRecord(String processName, int jobId, int userId) throws RemoteException;

    JobInfo schedule(JobInfo info, int userId) throws RemoteException;
}
