package com.umeng.commonsdk.statistics.common;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
/* compiled from: AdvertisingId.java */
/* loaded from: classes4.dex */
public class a {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AdvertisingId.java */
    /* renamed from: com.umeng.commonsdk.statistics.common.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0356a {

        /* renamed from: a  reason: collision with root package name */
        private final String f61308a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f61309b;

        C0356a(String str, boolean z3) {
            this.f61308a = str;
            this.f61309b = z3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String b() {
            return this.f61308a;
        }

        public boolean a() {
            return this.f61309b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AdvertisingId.java */
    /* loaded from: classes4.dex */
    public static final class b implements ServiceConnection {

        /* renamed from: a  reason: collision with root package name */
        boolean f61310a;

        /* renamed from: b  reason: collision with root package name */
        private final LinkedBlockingQueue<IBinder> f61311b;

        private b() {
            this.f61310a = false;
            this.f61311b = new LinkedBlockingQueue<>(1);
        }

        public IBinder a() throws InterruptedException {
            if (!this.f61310a) {
                this.f61310a = true;
                return this.f61311b.take();
            }
            throw new IllegalStateException();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f61311b.put(iBinder);
            } catch (InterruptedException unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public static String a(Context context) {
        try {
            C0356a c4 = c(context);
            if (c4 != null && !c4.a()) {
                return c4.b();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static String b(Context context) {
        try {
            C0356a c4 = c(context);
            if (c4 == null) {
                return null;
            }
            return c4.b();
        } catch (Exception unused) {
            return null;
        }
    }

    private static C0356a c(Context context) throws Exception {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return null;
        }
        try {
            context.getPackageManager().getPackageInfo(com.xinzhu.overmind.client.hook.env.b.f64119e, 0);
            b bVar = new b();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage(com.xinzhu.overmind.client.hook.env.b.f64117c);
            if (context.bindService(intent, bVar, 1)) {
                try {
                    try {
                        c cVar = new c(bVar.a());
                        boolean a4 = cVar.a(true);
                        return new C0356a(a4 ? "" : cVar.a(), a4);
                    } catch (Exception e4) {
                        throw e4;
                    }
                } finally {
                    context.unbindService(bVar);
                }
            }
            throw new IOException("Google Play connection failed");
        } catch (Exception e5) {
            throw e5;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AdvertisingId.java */
    /* loaded from: classes4.dex */
    public static final class c implements IInterface {

        /* renamed from: a  reason: collision with root package name */
        private IBinder f61312a;

        public c(IBinder iBinder) {
            this.f61312a = iBinder;
        }

        public String a() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f61312a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f61312a;
        }

        public boolean a(boolean z3) throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                obtain.writeInt(z3 ? 1 : 0);
                this.f61312a.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() != 0;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }
}
