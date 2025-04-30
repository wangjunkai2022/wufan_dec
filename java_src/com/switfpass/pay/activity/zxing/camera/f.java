package com.switfpass.pay.activity.zxing.camera;

import android.graphics.Point;
import android.hardware.Camera;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class f implements Camera.PreviewCallback {

    /* renamed from: e  reason: collision with root package name */
    private static final String f58758e = f.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private final d f58759a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f58760b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f58761c;

    /* renamed from: d  reason: collision with root package name */
    private int f58762d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(d dVar, boolean z3) {
        this.f58759a = dVar;
        this.f58760b = z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Handler handler, int i2) {
        this.f58761c = handler;
        this.f58762d = i2;
    }

    @Override // android.hardware.Camera.PreviewCallback
    public final void onPreviewFrame(byte[] bArr, Camera camera) {
        Point f4 = this.f58759a.f();
        if (!this.f58760b) {
            camera.setPreviewCallback(null);
        }
        Handler handler = this.f58761c;
        if (handler != null) {
            handler.obtainMessage(this.f58762d, f4.x, f4.y, bArr).sendToTarget();
            this.f58761c = null;
        }
    }
}
