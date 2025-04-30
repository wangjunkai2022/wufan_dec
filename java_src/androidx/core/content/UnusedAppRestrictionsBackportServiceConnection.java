package androidx.core.content;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback;
import androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class UnusedAppRestrictionsBackportServiceConnection implements ServiceConnection {
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    ResolvableFuture<Integer> f4130b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f4131c;
    @Nullable
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    IUnusedAppRestrictionsBackportService f4129a = null;

    /* renamed from: d  reason: collision with root package name */
    private boolean f4132d = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UnusedAppRestrictionsBackportServiceConnection(@NonNull Context context) {
        this.f4131c = context;
    }

    private IUnusedAppRestrictionsBackportCallback a() {
        return new IUnusedAppRestrictionsBackportCallback.Stub() { // from class: androidx.core.content.UnusedAppRestrictionsBackportServiceConnection.1
            @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback
            public void onIsPermissionRevocationEnabledForAppResult(boolean z3, boolean z4) throws RemoteException {
                if (!z3) {
                    UnusedAppRestrictionsBackportServiceConnection.this.f4130b.set(0);
                } else if (z4) {
                    UnusedAppRestrictionsBackportServiceConnection.this.f4130b.set(3);
                } else {
                    UnusedAppRestrictionsBackportServiceConnection.this.f4130b.set(2);
                }
            }
        };
    }

    public void connectAndFetchResult(@NonNull ResolvableFuture<Integer> resolvableFuture) {
        if (!this.f4132d) {
            this.f4132d = true;
            this.f4130b = resolvableFuture;
            this.f4131c.bindService(new Intent(UnusedAppRestrictionsBackportService.ACTION_UNUSED_APP_RESTRICTIONS_BACKPORT_CONNECTION).setPackage(PackageManagerCompat.getPermissionRevocationVerifierApp(this.f4131c.getPackageManager())), this, 1);
            return;
        }
        throw new IllegalStateException("Each UnusedAppRestrictionsBackportServiceConnection can only be bound once.");
    }

    public void disconnectFromService() {
        if (this.f4132d) {
            this.f4132d = false;
            this.f4131c.unbindService(this);
            return;
        }
        throw new IllegalStateException("bindService must be called before unbind");
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        IUnusedAppRestrictionsBackportService asInterface = IUnusedAppRestrictionsBackportService.Stub.asInterface(iBinder);
        this.f4129a = asInterface;
        try {
            asInterface.isPermissionRevocationEnabledForApp(a());
        } catch (RemoteException unused) {
            this.f4130b.set(0);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f4129a = null;
    }
}
