package com.umeng.analytics.pro;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* compiled from: HuaweiDeviceIdSupplier.java */
/* loaded from: classes4.dex */
class ab implements y {

    /* renamed from: a  reason: collision with root package name */
    private static final String f60385a = "com.uodis.opendevice.aidl.OpenDeviceIdentifierService";

    /* renamed from: b  reason: collision with root package name */
    private static final int f60386b = 1;

    /* renamed from: c  reason: collision with root package name */
    private static final int f60387c = 2;

    /* compiled from: HuaweiDeviceIdSupplier.java */
    /* loaded from: classes4.dex */
    private static final class a implements ServiceConnection {

        /* renamed from: a  reason: collision with root package name */
        boolean f60388a;

        /* renamed from: b  reason: collision with root package name */
        private final LinkedBlockingQueue<IBinder> f60389b;

        private a() {
            this.f60388a = false;
            this.f60389b = new LinkedBlockingQueue<>();
        }

        public IBinder a() throws InterruptedException {
            if (!this.f60388a) {
                this.f60388a = true;
                return this.f60389b.poll(5L, TimeUnit.SECONDS);
            }
            throw new IllegalStateException();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f60389b.put(iBinder);
            } catch (InterruptedException unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* compiled from: HuaweiDeviceIdSupplier.java */
    /* loaded from: classes4.dex */
    private static final class b implements IInterface {

        /* renamed from: a  reason: collision with root package name */
        private IBinder f60390a;

        public b(IBinder iBinder) {
            this.f60390a = iBinder;
        }

        public String a() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken(ab.f60385a);
                this.f60390a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f60390a;
        }

        public boolean b() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken(ab.f60385a);
                this.f60390a.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() != 0;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }

    @Override // com.umeng.analytics.pro.y
    public String a(Context context) {
        a aVar = new a();
        Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
        intent.setPackage("com.huawei.hwid");
        if (context.bindService(intent, aVar, 1)) {
            try {
                return new b(aVar.a()).a();
            } catch (Exception unused) {
            } finally {
                context.unbindService(aVar);
            }
        }
        return null;
    }
}
