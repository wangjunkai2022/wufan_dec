package XI.XI.K0;

import a.a;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.Objects;
/* loaded from: classes.dex */
public class K0 implements kM {
    public a K0;

    /* renamed from: XI  reason: collision with root package name */
    public Context f11XI;
    public xo kM;
    public ServiceConnection xo = new XI();

    /* loaded from: classes.dex */
    public class XI implements ServiceConnection {
        public XI() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            a c0005a;
            K0 k02 = K0.this;
            int i2 = a.AbstractBinderC0004a.f19XI;
            if (iBinder == null) {
                c0005a = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.android.creator.IdsSupplier");
                c0005a = (queryLocalInterface == null || !(queryLocalInterface instanceof a)) ? new a.AbstractBinderC0004a.C0005a(iBinder) : (a) queryLocalInterface;
            }
            k02.K0 = c0005a;
            K0.this.kM.connectSuccess(true);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            K0.this.K0 = null;
        }
    }

    public K0(Context context) {
        this.f11XI = context;
    }

    public boolean XI() {
        boolean isSupported;
        a aVar = this.K0;
        if (aVar != null) {
            try {
                isSupported = aVar.isSupported();
            } catch (RemoteException e4) {
                e4.getMessage();
                e4.printStackTrace();
            }
            Objects.toString(this.K0);
            return isSupported;
        }
        isSupported = false;
        Objects.toString(this.K0);
        return isSupported;
    }
}
