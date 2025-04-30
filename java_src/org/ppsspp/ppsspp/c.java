package org.ppsspp.ppsspp;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.graphics.YuvImage;
import android.hardware.Camera;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;
/* compiled from: CameraHelper.java */
@TargetApi(23)
/* loaded from: classes5.dex */
class c {

    /* renamed from: g  reason: collision with root package name */
    private static final String f73840g = "CameraHelper";

    /* renamed from: a  reason: collision with root package name */
    private Camera f73841a = null;

    /* renamed from: b  reason: collision with root package name */
    private int f73842b = 0;

    /* renamed from: c  reason: collision with root package name */
    private int f73843c = 0;

    /* renamed from: d  reason: collision with root package name */
    private long f73844d = 0;

    /* renamed from: f  reason: collision with root package name */
    private Camera.PreviewCallback f73846f = new a();

    /* renamed from: e  reason: collision with root package name */
    private SurfaceTexture f73845e = new SurfaceTexture(10);

    /* compiled from: CameraHelper.java */
    /* loaded from: classes5.dex */
    class a implements Camera.PreviewCallback {
        a() {
        }

        @Override // android.hardware.Camera.PreviewCallback
        public void onPreviewFrame(byte[] bArr, Camera camera) {
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - c.this.f73844d < 100) {
                return;
            }
            c.this.f73844d = currentTimeMillis;
            YuvImage yuvImage = new YuvImage(bArr, 17, c.this.f73842b, c.this.f73843c, null);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            yuvImage.compressToJpeg(new Rect((c.this.f73842b - 480) / 2, (c.this.f73843c - 272) / 2, c.this.f73842b - ((c.this.f73842b - 480) / 2), c.this.f73843c - ((c.this.f73843c - 272) / 2)), 80, byteArrayOutputStream);
            NativeApp.pushCameraImage(byteArrayOutputStream.toByteArray());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        try {
            Camera open = Camera.open();
            this.f73841a = open;
            Camera.Parameters parameters = open.getParameters();
            List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
            this.f73842b = supportedPreviewSizes.get(0).width;
            this.f73843c = supportedPreviewSizes.get(0).height;
            int i2 = 0;
            while (true) {
                if (i2 >= supportedPreviewSizes.size()) {
                    break;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("getSupportedPreviewSizes[");
                sb.append(i2);
                sb.append("]: ");
                sb.append(supportedPreviewSizes.get(i2).height);
                sb.append(" ");
                sb.append(supportedPreviewSizes.get(i2).width);
                if (supportedPreviewSizes.get(i2).width <= 640 && supportedPreviewSizes.get(i2).height <= 480) {
                    this.f73842b = supportedPreviewSizes.get(i2).width;
                    this.f73843c = supportedPreviewSizes.get(i2).height;
                    break;
                }
                i2++;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("setPreviewSize(");
            sb2.append(this.f73842b);
            sb2.append(", ");
            sb2.append(this.f73843c);
            sb2.append(")");
            parameters.setPreviewSize(this.f73842b, this.f73843c);
            List<int[]> supportedPreviewFpsRange = parameters.getSupportedPreviewFpsRange();
            int[] iArr = supportedPreviewFpsRange.get(0);
            for (int i4 = 0; i4 < supportedPreviewFpsRange.size(); i4++) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("getSupportedPreviewFpsRange[");
                sb3.append(i4);
                sb3.append("]: ");
                sb3.append(supportedPreviewFpsRange.get(i4)[0]);
                sb3.append(" ");
                sb3.append(supportedPreviewFpsRange.get(i4)[1]);
                if (supportedPreviewFpsRange.get(i4)[0] <= iArr[0] && supportedPreviewFpsRange.get(i4)[1] <= iArr[1]) {
                    iArr = supportedPreviewFpsRange.get(i4);
                }
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append("setPreviewFpsRange(");
            sb4.append(iArr[0]);
            sb4.append(", ");
            sb4.append(iArr[1]);
            sb4.append(")");
            parameters.setPreviewFpsRange(iArr[0], iArr[1]);
            this.f73841a.setParameters(parameters);
            this.f73841a.setPreviewTexture(this.f73845e);
            this.f73841a.setPreviewCallback(this.f73846f);
            this.f73841a.startPreview();
        } catch (IOException e4) {
            StringBuilder sb5 = new StringBuilder();
            sb5.append("Cannot start camera: ");
            sb5.append(e4.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        Camera camera = this.f73841a;
        if (camera != null) {
            camera.setPreviewCallback(null);
            this.f73841a.stopPreview();
            this.f73841a.release();
            this.f73841a = null;
        }
    }
}
