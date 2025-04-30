package com.switfpass.pay.activity.zxing.camera;

import android.hardware.Camera;
import android.os.Handler;
/* loaded from: classes4.dex */
final class c implements Camera.AutoFocusCallback {

    /* renamed from: c  reason: collision with root package name */
    private static final String f58745c = c.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private Handler f58746a;

    /* renamed from: b  reason: collision with root package name */
    private int f58747b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Handler handler, int i2) {
        this.f58746a = handler;
        this.f58747b = i2;
    }

    @Override // android.hardware.Camera.AutoFocusCallback
    public final void onAutoFocus(boolean z3, Camera camera) {
        Handler handler = this.f58746a;
        if (handler != null) {
            this.f58746a.sendMessageDelayed(handler.obtainMessage(this.f58747b, Boolean.valueOf(z3)), 1500L);
            this.f58746a = null;
        }
    }
}
