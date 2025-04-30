package com.bytedance.pangle;

import android.content.ComponentName;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes2.dex */
public interface f extends IInterface {
    int a();

    void a(ComponentName componentName, IBinder iBinder);

    /* loaded from: classes2.dex */
    public static abstract class a extends Binder implements f {
        public a() {
            attachInterface(this, "com.bytedance.pangle.ServiceConnection");
        }

        public static f a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.bytedance.pangle.ServiceConnection");
            if (queryLocalInterface != null && (queryLocalInterface instanceof f)) {
                return (f) queryLocalInterface;
            }
            return new C0037a(iBinder);
        }

        public static f b() {
            return C0037a.f10214a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i4) {
            if (i2 == 1) {
                parcel.enforceInterface("com.bytedance.pangle.ServiceConnection");
                a(parcel.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readStrongBinder());
                parcel2.writeNoException();
                return true;
            } else if (i2 != 2) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i4);
                }
                parcel2.writeString("com.bytedance.pangle.ServiceConnection");
                return true;
            } else {
                parcel.enforceInterface("com.bytedance.pangle.ServiceConnection");
                int a4 = a();
                parcel2.writeNoException();
                parcel2.writeInt(a4);
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.bytedance.pangle.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0037a implements f {

            /* renamed from: a  reason: collision with root package name */
            public static f f10214a;

            /* renamed from: b  reason: collision with root package name */
            private IBinder f10215b;

            C0037a(IBinder iBinder) {
                this.f10215b = iBinder;
            }

            @Override // com.bytedance.pangle.f
            public final void a(ComponentName componentName, IBinder iBinder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.pangle.ServiceConnection");
                    if (componentName != null) {
                        obtain.writeInt(1);
                        componentName.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iBinder);
                    if (!this.f10215b.transact(1, obtain, obtain2, 0) && a.b() != null) {
                        a.b().a(componentName, iBinder);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f10215b;
            }

            @Override // com.bytedance.pangle.f
            public final int a() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.pangle.ServiceConnection");
                    if (!this.f10215b.transact(2, obtain, obtain2, 0) && a.b() != null) {
                        return a.b().a();
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
