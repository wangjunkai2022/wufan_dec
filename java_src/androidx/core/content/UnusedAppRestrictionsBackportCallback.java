package androidx.core.content;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback;
/* loaded from: classes.dex */
public class UnusedAppRestrictionsBackportCallback {

    /* renamed from: a  reason: collision with root package name */
    private IUnusedAppRestrictionsBackportCallback f4127a;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public UnusedAppRestrictionsBackportCallback(@NonNull IUnusedAppRestrictionsBackportCallback iUnusedAppRestrictionsBackportCallback) {
        this.f4127a = iUnusedAppRestrictionsBackportCallback;
    }

    public void onResult(boolean z3, boolean z4) throws RemoteException {
        this.f4127a.onIsPermissionRevocationEnabledForAppResult(z3, z4);
    }
}
