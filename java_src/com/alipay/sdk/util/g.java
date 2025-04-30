package com.alipay.sdk.util;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.alipay.android.app.IAlixPay;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class g implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f f9848a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(f fVar) {
        this.f9848a = fVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Object obj;
        Object obj2;
        obj = this.f9848a.f9843c;
        synchronized (obj) {
            this.f9848a.f9842b = IAlixPay.Stub.asInterface(iBinder);
            obj2 = this.f9848a.f9843c;
            obj2.notify();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f9848a.f9842b = null;
    }
}
