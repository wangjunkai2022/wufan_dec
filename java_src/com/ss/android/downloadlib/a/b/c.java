package com.ss.android.downloadlib.a.b;

import android.annotation.SuppressLint;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import com.ss.android.downloadlib.a.b.d;
import com.ss.android.downloadlib.addownload.j;
import com.umeng.analytics.pro.ai;
import net.lingala.zip4j.util.e;
import org.json.JSONObject;
/* compiled from: IAidlService.java */
/* loaded from: classes4.dex */
public interface c extends IInterface {

    /* compiled from: IAidlService.java */
    /* loaded from: classes4.dex */
    public static abstract class a extends Binder implements c {

        /* renamed from: a  reason: collision with root package name */
        private static String f57053a = "";

        /* compiled from: IAidlService.java */
        /* renamed from: com.ss.android.downloadlib.a.b.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        private static class C0293a implements c {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f57054a;

            C0293a(IBinder iBinder) {
                if (TextUtils.isEmpty(a.f57053a)) {
                    JSONObject i2 = j.i();
                    String unused = a.f57053a = com.ss.android.socialbase.appdownloader.f.c.a(i2.optString(e.f73017f0), i2.optString(ai.az));
                }
                this.f57054a = iBinder;
            }

            @Override // com.ss.android.downloadlib.a.b.c
            public void a(b bVar, d dVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.f57053a);
                    if (bVar != null) {
                        obtain.writeInt(1);
                        bVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(dVar != null ? dVar.asBinder() : null);
                    this.f57054a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f57054a;
            }
        }

        @Override // android.os.Binder
        @SuppressLint({"WrongConstant"})
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i4) throws RemoteException {
            if (i2 == 1598968902) {
                parcel2.writeString(f57053a);
                return true;
            }
            if (i2 != 1) {
                return super.onTransact(i2, parcel, parcel2, i4);
            }
            parcel.enforceInterface(f57053a);
            a(parcel.readInt() != 0 ? b.CREATOR.createFromParcel(parcel) : null, d.a.a(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }

        public static c a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(f57053a);
            if (queryLocalInterface != null && (queryLocalInterface instanceof c)) {
                return (c) queryLocalInterface;
            }
            return new C0293a(iBinder);
        }
    }

    void a(b bVar, d dVar) throws RemoteException;
}
