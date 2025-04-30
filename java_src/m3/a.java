package m3;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* compiled from: IOpenID.java */
/* loaded from: classes5.dex */
public interface a extends IInterface {

    /* compiled from: IOpenID.java */
    /* renamed from: m3.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static abstract class AbstractBinderC0481a extends Binder implements a {

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IOpenID.java */
        /* renamed from: m3.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public static class C0482a implements a {

            /* renamed from: a  reason: collision with root package name */
            public IBinder f72590a;

            public C0482a(IBinder iBinder) {
                this.f72590a = iBinder;
            }

            public String a(String str, String str2, String str3) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.heytap.openid.IOpenID");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.f72590a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f72590a;
            }
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.heytap.openid.IOpenID");
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0482a(iBinder);
        }
    }
}
