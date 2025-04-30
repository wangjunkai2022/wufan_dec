package com.join.mgps.zxing.decoding;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.FaceTransferScanQrCodeActivity;
import java.util.Vector;
/* loaded from: classes4.dex */
public class FaceTransferScanQrCodeActivityHandler extends Handler {

    /* renamed from: d  reason: collision with root package name */
    private static final String f52498d = FaceTransferScanQrCodeActivityHandler.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private final FaceTransferScanQrCodeActivity f52499a;

    /* renamed from: b  reason: collision with root package name */
    private final e f52500b;

    /* renamed from: c  reason: collision with root package name */
    private State f52501c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public enum State {
        PREVIEW,
        SUCCESS,
        DONE
    }

    public FaceTransferScanQrCodeActivityHandler(FaceTransferScanQrCodeActivity faceTransferScanQrCodeActivity, Vector<BarcodeFormat> vector, String str) {
        this.f52499a = faceTransferScanQrCodeActivity;
        e eVar = new e(faceTransferScanQrCodeActivity, vector, str, new com.join.mgps.zxing.view.a(faceTransferScanQrCodeActivity.S0()));
        this.f52500b = eVar;
        eVar.start();
        this.f52501c = State.SUCCESS;
        com.join.mgps.zxing.camera.c.c().l();
        b();
    }

    private void b() {
        if (this.f52501c == State.SUCCESS) {
            this.f52501c = State.PREVIEW;
            com.join.mgps.zxing.camera.c.c().k(this.f52500b.a(), R.id.decode);
            com.join.mgps.zxing.camera.c.c().j(this, R.id.auto_focus);
            this.f52499a.O0();
        }
    }

    public void a() {
        this.f52501c = State.DONE;
        com.join.mgps.zxing.camera.c.c().m();
        Message.obtain(this.f52500b.a(), (int) R.id.quit).sendToTarget();
        try {
            this.f52500b.join();
        } catch (InterruptedException unused) {
        }
        removeMessages(R.id.decode_succeeded);
        removeMessages(R.id.decode_failed);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == R.id.auto_focus) {
            if (this.f52501c == State.PREVIEW) {
                com.join.mgps.zxing.camera.c.c().j(this, R.id.auto_focus);
            }
        } else if (i2 == R.id.restart_preview) {
            b();
        } else if (i2 == R.id.decode_succeeded) {
            this.f52501c = State.SUCCESS;
            Bundle data = message.getData();
            this.f52499a.U0((Result) message.obj, data == null ? null : (Bitmap) data.getParcelable("barcode_bitmap"));
        } else if (i2 == R.id.decode_failed) {
            this.f52501c = State.PREVIEW;
            com.join.mgps.zxing.camera.c.c().k(this.f52500b.a(), R.id.decode);
        } else if (i2 == R.id.return_scan_result) {
            this.f52499a.setResult(-1, (Intent) message.obj);
            this.f52499a.finish();
        } else if (i2 == R.id.launch_product_query) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse((String) message.obj));
            intent.addFlags(524288);
            this.f52499a.startActivity(intent);
        }
    }
}
