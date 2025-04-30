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
import com.join.mgps.zxing.CaptureActivity;
import java.util.Vector;
/* loaded from: classes4.dex */
public final class CaptureActivityHandler extends Handler {

    /* renamed from: d  reason: collision with root package name */
    private static final String f52494d = CaptureActivityHandler.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private final CaptureActivity f52495a;

    /* renamed from: b  reason: collision with root package name */
    private final c f52496b;

    /* renamed from: c  reason: collision with root package name */
    private State f52497c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public enum State {
        PREVIEW,
        SUCCESS,
        DONE
    }

    public CaptureActivityHandler(CaptureActivity captureActivity, Vector<BarcodeFormat> vector, String str) {
        this.f52495a = captureActivity;
        c cVar = new c(captureActivity, vector, str, new com.join.mgps.zxing.view.b(captureActivity.G0()));
        this.f52496b = cVar;
        cVar.start();
        this.f52497c = State.SUCCESS;
        com.join.mgps.zxing.camera.c.c().l();
        b();
    }

    private void b() {
        if (this.f52497c == State.SUCCESS) {
            this.f52497c = State.PREVIEW;
            com.join.mgps.zxing.camera.c.c().k(this.f52496b.a(), R.id.decode);
            com.join.mgps.zxing.camera.c.c().j(this, R.id.auto_focus);
            this.f52495a.E0();
        }
    }

    public void a() {
        this.f52497c = State.DONE;
        com.join.mgps.zxing.camera.c.c().m();
        Message.obtain(this.f52496b.a(), (int) R.id.quit).sendToTarget();
        try {
            this.f52496b.join();
        } catch (InterruptedException unused) {
        }
        removeMessages(R.id.decode_succeeded);
        removeMessages(R.id.decode_failed);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == R.id.auto_focus) {
            if (this.f52497c == State.PREVIEW) {
                com.join.mgps.zxing.camera.c.c().j(this, R.id.auto_focus);
            }
        } else if (i2 == R.id.restart_preview) {
            b();
        } else if (i2 == R.id.decode_succeeded) {
            this.f52497c = State.SUCCESS;
            Bundle data = message.getData();
            this.f52495a.H0((Result) message.obj, data == null ? null : (Bitmap) data.getParcelable("barcode_bitmap"));
        } else if (i2 == R.id.decode_failed) {
            this.f52497c = State.PREVIEW;
            com.join.mgps.zxing.camera.c.c().k(this.f52496b.a(), R.id.decode);
        } else if (i2 == R.id.return_scan_result) {
            this.f52495a.setResult(-1, (Intent) message.obj);
            this.f52495a.finish();
        } else if (i2 == R.id.launch_product_query) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse((String) message.obj));
            intent.addFlags(524288);
            this.f52495a.startActivity(intent);
        }
    }
}
