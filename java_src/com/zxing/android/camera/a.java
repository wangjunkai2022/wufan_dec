package com.zxing.android.camera;

import android.hardware.Camera;
import android.os.Handler;
/* compiled from: AutoFocusCallback.java */
/* loaded from: classes3.dex */
final class a implements Camera.AutoFocusCallback {

    /* renamed from: c  reason: collision with root package name */
    private static final String f65007c = a.class.getSimpleName();

    /* renamed from: d  reason: collision with root package name */
    private static final long f65008d = 1500;

    /* renamed from: a  reason: collision with root package name */
    private Handler f65009a;

    /* renamed from: b  reason: collision with root package name */
    private int f65010b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Handler handler, int i2) {
        this.f65009a = handler;
        this.f65010b = i2;
    }

    @Override // android.hardware.Camera.AutoFocusCallback
    public void onAutoFocus(boolean z3, Camera camera) {
        Handler handler = this.f65009a;
        if (handler != null) {
            this.f65009a.sendMessageDelayed(handler.obtainMessage(this.f65010b, Boolean.valueOf(z3)), f65008d);
            this.f65009a = null;
        }
    }
}
