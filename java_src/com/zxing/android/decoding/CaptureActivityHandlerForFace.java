package com.zxing.android.decoding;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.join.mgps.activity.FaceTransferScanQrCodeActivity;
import java.util.Vector;
/* loaded from: classes3.dex */
public final class CaptureActivityHandlerForFace extends Handler {

    /* renamed from: d  reason: collision with root package name */
    private static final String f65052d = CaptureActivityHandlerForFace.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private final FaceTransferScanQrCodeActivity f65053a;

    /* renamed from: b  reason: collision with root package name */
    private final f f65054b;

    /* renamed from: c  reason: collision with root package name */
    private State f65055c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum State {
        PREVIEW,
        SUCCESS,
        DONE
    }

    public CaptureActivityHandlerForFace(FaceTransferScanQrCodeActivity faceTransferScanQrCodeActivity, Vector<BarcodeFormat> vector, String str) {
        this.f65053a = faceTransferScanQrCodeActivity;
        f fVar = new f(faceTransferScanQrCodeActivity, vector, str, new com.zxing.android.view.a(faceTransferScanQrCodeActivity.S0()));
        this.f65054b = fVar;
        fVar.start();
        this.f65055c = State.SUCCESS;
        faceTransferScanQrCodeActivity.P0().k();
        b();
    }

    private void b() {
        if (this.f65055c == State.SUCCESS) {
            this.f65055c = State.PREVIEW;
            this.f65053a.P0().i(this.f65054b.a(), 2);
            this.f65053a.P0().h(this, 1);
            this.f65053a.O0();
        }
    }

    public void a() {
        this.f65055c = State.DONE;
        this.f65053a.P0().l();
        Message.obtain(this.f65054b.a(), 8).sendToTarget();
        try {
            this.f65054b.join();
        } catch (InterruptedException unused) {
        }
        removeMessages(4);
        removeMessages(3);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == 1) {
            if (this.f65055c == State.PREVIEW) {
                this.f65053a.P0().h(this, 1);
            }
        } else if (i2 == 3) {
            this.f65055c = State.PREVIEW;
            this.f65053a.P0().i(this.f65054b.a(), 2);
        } else if (i2 == 4) {
            this.f65055c = State.SUCCESS;
            Bundle data = message.getData();
            this.f65053a.U0((Result) message.obj, data == null ? null : (Bitmap) data.getParcelable("barcode_bitmap"));
        } else if (i2 == 7) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse((String) message.obj));
            intent.addFlags(524288);
            this.f65053a.startActivity(intent);
        } else if (i2 == 8) {
            b();
        } else if (i2 != 9) {
        } else {
            this.f65053a.setResult(-1, (Intent) message.obj);
            this.f65053a.finish();
        }
    }
}
