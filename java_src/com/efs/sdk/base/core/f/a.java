package com.efs.sdk.base.core.f;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.NonNull;
import com.efs.sdk.base.core.controller.ControllerCenter;
/* loaded from: classes2.dex */
public abstract class a extends Handler {

    /* renamed from: a  reason: collision with root package name */
    public ControllerCenter f11363a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a() {
        super(com.efs.sdk.base.core.util.a.a.f11388a.getLooper());
        sendEmptyMessageDelayed(0, 60000L);
    }

    abstract void a();

    @Override // android.os.Handler
    public void handleMessage(@NonNull Message message) {
        super.handleMessage(message);
        a();
        sendEmptyMessageDelayed(0, 60000L);
    }
}
