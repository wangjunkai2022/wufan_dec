package com.join.mgps.zxing.camera;

import android.graphics.Point;
import android.hardware.Camera;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PreviewCallback.java */
/* loaded from: classes4.dex */
public final class g implements Camera.PreviewCallback {

    /* renamed from: e  reason: collision with root package name */
    private static final String f52489e = g.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private final b f52490a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f52491b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f52492c;

    /* renamed from: d  reason: collision with root package name */
    private int f52493d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(b bVar, boolean z3) {
        this.f52490a = bVar;
        this.f52491b = z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Handler handler, int i2) {
        this.f52492c = handler;
        this.f52493d = i2;
    }

    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(byte[] bArr, Camera camera) {
        Point c4 = this.f52490a.c();
        if (!this.f52491b) {
            camera.setPreviewCallback(null);
        }
        Handler handler = this.f52492c;
        if (handler != null) {
            handler.obtainMessage(this.f52493d, c4.x, c4.y, bArr).sendToTarget();
            this.f52492c = null;
        }
    }
}
