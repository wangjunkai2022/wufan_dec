package com.ss.android.downloadlib.a.b;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import com.ss.android.downloadlib.addownload.j;
import com.umeng.analytics.pro.ai;
import org.json.JSONObject;
/* compiled from: ICallback.java */
/* loaded from: classes4.dex */
public interface d extends IInterface {

    /* compiled from: ICallback.java */
    /* loaded from: classes4.dex */
    public static abstract class a extends Binder implements d {

        /* renamed from: a  reason: collision with root package name */
        private static String f57055a = "";

        /* compiled from: ICallback.java */
        /* renamed from: com.ss.android.downloadlib.a.b.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        private static class C0294a implements d {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f57056a;

            C0294a(IBinder iBinder) {
                if (TextUtils.isEmpty(a.f57055a)) {
                    JSONObject i2 = j.i();
                    String unused = a.f57055a = com.ss.android.socialbase.appdownloader.f.c.a(i2.optString(ai.aF), i2.optString(ai.az));
                }
                this.f57056a = iBinder;
            }

            @Override // com.ss.android.downloadlib.a.b.d
            public void a(b bVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.f57055a);
                    if (bVar != null) {
                        obtain.writeInt(1);
                        bVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f57056a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f57056a;
            }
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i4) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface(f57055a);
                a(parcel.readInt() != 0 ? b.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            } else if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i4);
            } else {
                parcel2.writeString(f57055a);
                return true;
            }
        }

        public static d a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(f57055a);
            if (queryLocalInterface != null && (queryLocalInterface instanceof d)) {
                return (d) queryLocalInterface;
            }
            return new C0294a(iBinder);
        }
    }

    void a(b bVar) throws RemoteException;
}
