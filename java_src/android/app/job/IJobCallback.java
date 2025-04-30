package android.app.job;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes.dex */
public interface IJobCallback extends IInterface {

    /* loaded from: classes.dex */
    public static class Default implements IJobCallback {
        @Override // android.app.job.IJobCallback
        public void acknowledgeStartMessage(int jobId, boolean ongoing) throws RemoteException {
        }

        @Override // android.app.job.IJobCallback
        public void acknowledgeStopMessage(int jobId, boolean reschedule) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.app.job.IJobCallback
        public boolean completeWork(int jobId, int workId) throws RemoteException {
            return false;
        }

        @Override // android.app.job.IJobCallback
        public JobWorkItem dequeueWork(int jobId) throws RemoteException {
            return null;
        }

        @Override // android.app.job.IJobCallback
        public void jobFinished(int jobId, boolean reschedule) throws RemoteException {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IJobCallback {
        private static final String DESCRIPTOR = "android.app.job.IJobCallback";
        static final int TRANSACTION_acknowledgeStartMessage = 1;
        static final int TRANSACTION_acknowledgeStopMessage = 2;
        static final int TRANSACTION_completeWork = 4;
        static final int TRANSACTION_dequeueWork = 3;
        static final int TRANSACTION_jobFinished = 5;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class Proxy implements IJobCallback {
            public static IJobCallback sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.app.job.IJobCallback
            public void acknowledgeStartMessage(int jobId, boolean ongoing) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(jobId);
                    obtain.writeInt(ongoing ? 1 : 0);
                    if (!this.mRemote.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().acknowledgeStartMessage(jobId, ongoing);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.app.job.IJobCallback
            public void acknowledgeStopMessage(int jobId, boolean reschedule) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(jobId);
                    obtain.writeInt(reschedule ? 1 : 0);
                    if (!this.mRemote.transact(2, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().acknowledgeStopMessage(jobId, reschedule);
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
                return this.mRemote;
            }

            @Override // android.app.job.IJobCallback
            public boolean completeWork(int jobId, int workId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(jobId);
                    obtain.writeInt(workId);
                    if (!this.mRemote.transact(4, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().completeWork(jobId, workId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.app.job.IJobCallback
            public JobWorkItem dequeueWork(int jobId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(jobId);
                    if (!this.mRemote.transact(3, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().dequeueWork(jobId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (JobWorkItem) JobWorkItem.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.app.job.IJobCallback
            public void jobFinished(int jobId, boolean reschedule) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(jobId);
                    obtain.writeInt(reschedule ? 1 : 0);
                    if (!this.mRemote.transact(5, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().jobFinished(jobId, reschedule);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IJobCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IJobCallback)) {
                return (IJobCallback) queryLocalInterface;
            }
            return new Proxy(obj);
        }

        public static IJobCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IJobCallback impl) {
            if (Proxy.sDefaultImpl == null) {
                if (impl != null) {
                    Proxy.sDefaultImpl = impl;
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
                acknowledgeStartMessage(data.readInt(), data.readInt() != 0);
                reply.writeNoException();
                return true;
            } else if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                acknowledgeStopMessage(data.readInt(), data.readInt() != 0);
                reply.writeNoException();
                return true;
            } else if (code == 3) {
                data.enforceInterface(DESCRIPTOR);
                JobWorkItem dequeueWork = dequeueWork(data.readInt());
                reply.writeNoException();
                if (dequeueWork != null) {
                    reply.writeInt(1);
                    dequeueWork.writeToParcel(reply, 1);
                } else {
                    reply.writeInt(0);
                }
                return true;
            } else if (code == 4) {
                data.enforceInterface(DESCRIPTOR);
                boolean completeWork = completeWork(data.readInt(), data.readInt());
                reply.writeNoException();
                reply.writeInt(completeWork ? 1 : 0);
                return true;
            } else if (code != 5) {
                if (code != 1598968902) {
                    return super.onTransact(code, data, reply, flags);
                }
                reply.writeString(DESCRIPTOR);
                return true;
            } else {
                data.enforceInterface(DESCRIPTOR);
                jobFinished(data.readInt(), data.readInt() != 0);
                reply.writeNoException();
                return true;
            }
        }
    }

    void acknowledgeStartMessage(int jobId, boolean ongoing) throws RemoteException;

    void acknowledgeStopMessage(int jobId, boolean reschedule) throws RemoteException;

    boolean completeWork(int jobId, int workId) throws RemoteException;

    JobWorkItem dequeueWork(int jobId) throws RemoteException;

    void jobFinished(int jobId, boolean reschedule) throws RemoteException;
}
