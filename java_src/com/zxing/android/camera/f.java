package com.zxing.android.camera;

import android.graphics.Point;
import android.hardware.Camera;
import android.os.Handler;
/* compiled from: PreviewCallback.java */
/* loaded from: classes3.dex */
final class f implements Camera.PreviewCallback {

    /* renamed from: d  reason: collision with root package name */
    private static final String f65044d = f.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private final b f65045a;

    /* renamed from: b  reason: collision with root package name */
    private Handler f65046b;

    /* renamed from: c  reason: collision with root package name */
    private int f65047c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(b bVar) {
        this.f65045a = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Handler handler, int i2) {
        this.f65046b = handler;
        this.f65047c = i2;
    }

    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(byte[] bArr, Camera camera) {
        Point d4 = this.f65045a.d();
        Handler handler = this.f65046b;
        if (handler != null) {
            handler.obtainMessage(this.f65047c, d4.x, d4.y, bArr).sendToTarget();
            this.f65046b = null;
        }
    }
}
