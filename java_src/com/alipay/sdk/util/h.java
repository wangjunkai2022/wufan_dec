package com.alipay.sdk.util;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import com.alipay.android.app.IRemoteServiceCallback;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class h extends IRemoteServiceCallback.Stub {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f f9849a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(f fVar) {
        this.f9849a = fVar;
    }

    @Override // com.alipay.android.app.IRemoteServiceCallback
    public final boolean isHideLoadingScreen() throws RemoteException {
        return false;
    }

    @Override // com.alipay.android.app.IRemoteServiceCallback
    public final void payEnd(boolean z3, String str) throws RemoteException {
    }

    @Override // com.alipay.android.app.IRemoteServiceCallback
    public final void startActivity(String str, String str2, int i2, Bundle bundle) throws RemoteException {
        Activity activity;
        Activity activity2;
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        if (bundle == null) {
            bundle = new Bundle();
        }
        try {
            bundle.putInt("CallingPid", i2);
            intent.putExtras(bundle);
        } catch (Exception unused) {
        }
        intent.setClassName(str, str2);
        activity = this.f9849a.f9841a;
        if (activity != null) {
            activity2 = this.f9849a.f9841a;
            activity2.startActivity(intent);
        }
    }
}
