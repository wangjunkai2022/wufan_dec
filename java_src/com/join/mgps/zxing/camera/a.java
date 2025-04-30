package com.join.mgps.zxing.camera;

import android.hardware.Camera;
import android.os.Handler;
/* compiled from: AutoFocusCallback.java */
/* loaded from: classes4.dex */
final class a implements Camera.AutoFocusCallback {

    /* renamed from: c  reason: collision with root package name */
    private static final String f52439c = a.class.getSimpleName();

    /* renamed from: d  reason: collision with root package name */
    private static final long f52440d = 1500;

    /* renamed from: a  reason: collision with root package name */
    private Handler f52441a;

    /* renamed from: b  reason: collision with root package name */
    private int f52442b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Handler handler, int i2) {
        this.f52441a = handler;
        this.f52442b = i2;
    }

    @Override // android.hardware.Camera.AutoFocusCallback
    public void onAutoFocus(boolean z3, Camera camera) {
        Handler handler = this.f52441a;
        if (handler != null) {
            this.f52441a.sendMessageDelayed(handler.obtainMessage(this.f52442b, Boolean.valueOf(z3)), f52440d);
            this.f52441a = null;
        }
    }
}
