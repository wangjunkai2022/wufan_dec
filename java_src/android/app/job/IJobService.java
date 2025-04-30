package android.app.job;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes.dex */
public interface IJobService extends IInterface {

    /* loaded from: classes.dex */
    public static class Default implements IJobService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.app.job.IJobService
        public void startJob(JobParameters jobParams) throws RemoteException {
        }

        @Override // android.app.job.IJobService
        public void stopJob(JobParameters jobParams) throws RemoteException {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IJobService {
        private static final String DESCRIPTOR = "android.app.job.IJobService";
        static final int TRANSACTION_startJob = 1;
        static final int TRANSACTION_stopJob = 2;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class Proxy implements IJobService {
            public static IJobService sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.app.job.IJobService
            public void startJob(JobParameters jobParams) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (jobParams != null) {
                        obtain.writeInt(1);
                        jobParams.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().startJob(jobParams);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.app.job.IJobService
            public void stopJob(JobParameters jobParams) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (jobParams != null) {
                        obtain.writeInt(1);
                        jobParams.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(2, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().stopJob(jobParams);
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

        public static IJobService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IJobService)) {
                return (IJobService) queryLocalInterface;
            }
            return new Proxy(obj);
        }

        public static IJobService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IJobService impl) {
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
                startJob(data.readInt() != 0 ? (JobParameters) JobParameters.CREATOR.createFromParcel(data) : null);
                reply.writeNoException();
                return true;
            } else if (code != 2) {
                if (code != 1598968902) {
                    return super.onTransact(code, data, reply, flags);
                }
                reply.writeString(DESCRIPTOR);
                return true;
            } else {
                data.enforceInterface(DESCRIPTOR);
                stopJob(data.readInt() != 0 ? (JobParameters) JobParameters.CREATOR.createFromParcel(data) : null);
                reply.writeNoException();
                return true;
            }
        }
    }

    void startJob(JobParameters jobParams) throws RemoteException;

    void stopJob(JobParameters jobParams) throws RemoteException;
}
